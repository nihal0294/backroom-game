#!/usr/bin/env python3
"""Download the Backrooms Wikidot wiki and convert each page to Markdown.

Examples:
  py download_backrooms_wiki.py
  py download_backrooms_wiki.py --scope core --images
  py download_backrooms_wiki.py --output D:\\BackroomsWiki --workers 8
"""

from __future__ import annotations

import argparse
import hashlib
import json
import mimetypes
import os
import re
import sys
import threading
import time
import xml.etree.ElementTree as ET
from concurrent.futures import ThreadPoolExecutor, as_completed
from datetime import datetime, timezone
from pathlib import Path
from urllib.parse import unquote, urljoin, urlparse, urlunparse

try:
    import requests
    from bs4 import BeautifulSoup
    from markdownify import markdownify as html_to_markdown
except ImportError:
    print("Dipendenze mancanti. Esegui:")
    print("  py -m pip install requests beautifulsoup4 markdownify")
    raise SystemExit(2)


BASE_URL = "https://backrooms-wiki.wikidot.com/"
SITEMAP_URL = urljoin(BASE_URL, "sitemap.xml")
USER_AGENT = "BackroomsMarkdownBackup/1.0 (personal offline archive)"
CORE_RE = re.compile(
    r"^(?:level(?:-|$)|entity(?:-|$)|object(?:-|$)|"
    r"normal-levels|unnumbered-levels|unnumbered-entities|entities$|objects$)"
)
INVALID_WINDOWS_CHARS = re.compile(r'[<>:"/\\|?*\x00-\x1f]')
MULTIPLE_BLANK_LINES = re.compile(r"\n{3,}")


class RateLimiter:
    def __init__(self, interval: float) -> None:
        self.interval = max(0.0, interval)
        self.lock = threading.Lock()
        self.next_allowed = 0.0

    def wait(self) -> None:
        if not self.interval:
            return
        with self.lock:
            now = time.monotonic()
            delay = self.next_allowed - now
            if delay > 0:
                time.sleep(delay)
            self.next_allowed = time.monotonic() + self.interval


thread_local = threading.local()


def get_session() -> requests.Session:
    session = getattr(thread_local, "session", None)
    if session is None:
        session = requests.Session()
        session.headers.update({"User-Agent": USER_AGENT})
        thread_local.session = session
    return session


def canonical_url(url: str) -> str:
    parsed = urlparse(urljoin(BASE_URL, url))
    path = re.sub(r"/+", "/", parsed.path or "/")
    if path != "/":
        path = path.rstrip("/")
    return urlunparse(("https", "backrooms-wiki.wikidot.com", path, "", "", ""))


def slug_from_url(url: str) -> str:
    path = unquote(urlparse(url).path.strip("/"))
    return path or "index"


def safe_stem(slug: str) -> str:
    stem = INVALID_WINDOWS_CHARS.sub("__", slug).strip(" .")
    if stem != slug:
        digest = hashlib.sha1(slug.encode("utf-8")).hexdigest()[:8]
        stem = f"{stem}--{digest}"
    if not stem:
        stem = "page"
    # Windows has a 260-character legacy path limit. Keep names compact and stable.
    if len(stem) > 180:
        digest = hashlib.sha1(slug.encode("utf-8")).hexdigest()[:12]
        stem = f"{stem[:160]}--{digest}"
    return stem


def filename_for_url(url: str) -> str:
    return safe_stem(slug_from_url(url)) + ".md"


def load_sitemap(timeout: int) -> list[str]:
    response = get_session().get(SITEMAP_URL, timeout=timeout)
    response.raise_for_status()
    root = ET.fromstring(response.content)
    urls: list[str] = []
    seen: set[str] = set()
    for loc in root.findall("{http://www.sitemaps.org/schemas/sitemap/0.9}url/{http://www.sitemaps.org/schemas/sitemap/0.9}loc"):
        if not loc.text:
            continue
        url = canonical_url(loc.text)
        if url not in seen:
            seen.add(url)
            urls.append(url)
    return urls


def content_type_extension(response: requests.Response, url: str) -> str:
    content_type = response.headers.get("Content-Type", "").split(";", 1)[0].strip()
    extension = mimetypes.guess_extension(content_type) or Path(urlparse(url).path).suffix
    if not extension or len(extension) > 8:
        extension = ".bin"
    if extension == ".jpe":
        extension = ".jpg"
    return extension


def download_asset(
    src: str,
    output_dir: Path,
    timeout: int,
    asset_lock: threading.Lock,
) -> str:
    absolute = urljoin(BASE_URL, src)
    parsed = urlparse(absolute)
    if parsed.scheme not in {"http", "https"}:
        return src

    digest = hashlib.sha1(absolute.encode("utf-8")).hexdigest()[:16]
    guessed = Path(parsed.path).suffix
    if not guessed or len(guessed) > 8:
        guessed = ""
    relative_without_ext = Path("assets") / digest

    with asset_lock:
        matches = list((output_dir / "assets").glob(digest + ".*"))
        if matches:
            return matches[0].relative_to(output_dir).as_posix()

    response = get_session().get(absolute, timeout=timeout)
    response.raise_for_status()
    extension = guessed or content_type_extension(response, absolute)
    relative = relative_without_ext.with_suffix(extension.lower())
    destination = output_dir / relative
    temporary = destination.with_suffix(destination.suffix + f".{threading.get_ident()}.tmp")
    temporary.write_bytes(response.content)
    with asset_lock:
        if not destination.exists():
            os.replace(temporary, destination)
        elif temporary.exists():
            temporary.unlink()
    return relative.as_posix()


def rewrite_links(
    content: BeautifulSoup,
    known_urls: set[str],
    output_dir: Path,
    include_images: bool,
    timeout: int,
    asset_lock: threading.Lock,
) -> None:
    for anchor in content.select("a[href]"):
        href = anchor.get("href", "")
        absolute = canonical_url(href)
        if absolute in known_urls:
            anchor["href"] = filename_for_url(absolute)
        elif href.startswith("/"):
            anchor["href"] = urljoin(BASE_URL, href)

    for image in content.select("img[src]"):
        src = image.get("src", "")
        absolute = urljoin(BASE_URL, src)
        if include_images:
            try:
                image["src"] = download_asset(absolute, output_dir, timeout, asset_lock)
            except Exception:
                image["src"] = absolute
        else:
            image["src"] = absolute


def page_to_markdown(
    url: str,
    known_urls: set[str],
    output_dir: Path,
    include_images: bool,
    timeout: int,
    limiter: RateLimiter,
    asset_lock: threading.Lock,
) -> tuple[str, str]:
    destination = output_dir / filename_for_url(url)
    if destination.exists() and destination.stat().st_size > 100:
        return "skipped", url

    limiter.wait()
    response = get_session().get(url, timeout=timeout)
    response.raise_for_status()
    response.encoding = response.apparent_encoding or response.encoding
    soup = BeautifulSoup(response.text, "html.parser")
    content = soup.select_one("#page-content")
    if content is None:
        raise ValueError("#page-content non trovato")

    for element in content.select(
        "script, style, noscript, iframe, form, button, object, embed, .printuser"
    ):
        element.decompose()

    title_node = soup.select_one("#page-title")
    title = title_node.get_text(" ", strip=True) if title_node else slug_from_url(url)
    rewrite_links(content, known_urls, output_dir, include_images, timeout, asset_lock)

    markdown = html_to_markdown(
        str(content),
        heading_style="ATX",
        bullets="-",
        strip=["span"],
    )
    markdown = MULTIPLE_BLANK_LINES.sub("\n\n", markdown).strip()
    retrieved = datetime.now(timezone.utc).isoformat(timespec="seconds")
    frontmatter = (
        "---\n"
        f"title: {json.dumps(title, ensure_ascii=False)}\n"
        f"source: {json.dumps(url, ensure_ascii=False)}\n"
        f"retrieved_at: {json.dumps(retrieved)}\n"
        "license: CC-BY-SA-3.0\n"
        "---\n\n"
    )
    body = f"# {title}\n\n{markdown}\n\n---\n\nSource: [{url}]({url})\n"
    temporary = destination.with_suffix(".md.tmp")
    temporary.write_text(frontmatter + body, encoding="utf-8", newline="\n")
    os.replace(temporary, destination)
    return "downloaded", url


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Scarica Backrooms Wiki e converte ogni pagina in Markdown."
    )
    parser.add_argument("--output", default="backrooms-wiki-md", help="Cartella di destinazione")
    parser.add_argument(
        "--scope",
        choices=("all", "core"),
        default="all",
        help="all=tutta la wiki; core=Levels, Entities e Objects",
    )
    parser.add_argument("--images", action="store_true", help="Scarica anche le immagini")
    parser.add_argument("--workers", type=int, default=8, help="Download paralleli (default: 8)")
    parser.add_argument(
        "--delay",
        type=float,
        default=0.15,
        help="Pausa globale minima fra richieste HTML, in secondi",
    )
    parser.add_argument("--timeout", type=int, default=45, help="Timeout HTTP in secondi")
    parser.add_argument("--limit", type=int, default=0, help="Solo per test: massimo numero di pagine")
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    output_dir = Path(args.output).expanduser().resolve()
    output_dir.mkdir(parents=True, exist_ok=True)
    if args.images:
        (output_dir / "assets").mkdir(exist_ok=True)

    print("Lettura sitemap ufficiale...")
    all_urls = load_sitemap(args.timeout)
    urls = all_urls
    if args.scope == "core":
        urls = [url for url in urls if CORE_RE.match(slug_from_url(url))]
    if args.limit > 0:
        urls = urls[: args.limit]
    known_urls = set(all_urls)
    print(f"Pagine selezionate: {len(urls):,}".replace(",", "."))
    print(f"Destinazione: {output_dir}")

    readme = output_dir / "_ARCHIVE_README.md"
    if not readme.exists():
        readme.write_text(
            "# Backrooms Wiki — archivio Markdown\n\n"
            f"Fonte: {BASE_URL}\n\n"
            "Contenuti originali distribuiti con licenza CC BY-SA 3.0, salvo diversa indicazione nelle singole pagine. "
            "Ogni file conserva l'URL sorgente nei metadati e in fondo alla pagina.\n",
            encoding="utf-8",
            newline="\n",
        )

    limiter = RateLimiter(args.delay)
    asset_lock = threading.Lock()
    counts = {"downloaded": 0, "skipped": 0, "failed": 0}
    errors: list[tuple[str, str]] = []
    started = time.monotonic()
    worker_count = max(1, min(args.workers, 32))

    with ThreadPoolExecutor(max_workers=worker_count) as executor:
        futures = {
            executor.submit(
                page_to_markdown,
                url,
                known_urls,
                output_dir,
                args.images,
                args.timeout,
                limiter,
                asset_lock,
            ): url
            for url in urls
        }
        for index, future in enumerate(as_completed(futures), 1):
            url = futures[future]
            try:
                status, _ = future.result()
                counts[status] += 1
            except Exception as exc:
                counts["failed"] += 1
                errors.append((url, str(exc).replace("\t", " ").replace("\n", " ")))
            if index % 50 == 0 or index == len(futures):
                elapsed = max(time.monotonic() - started, 0.001)
                rate = index / elapsed
                remaining = (len(futures) - index) / rate if rate else 0
                print(
                    f"[{index}/{len(futures)}] scaricate={counts['downloaded']} "
                    f"già presenti={counts['skipped']} errori={counts['failed']} "
                    f"ETA={remaining / 60:.1f} min"
                )

    errors_path = output_dir / "errors.tsv"
    if errors:
        errors_path.write_text(
            "url\terror\n" + "\n".join(f"{url}\t{error}" for url, error in errors) + "\n",
            encoding="utf-8",
            newline="\n",
        )
        print(f"Errori salvati in: {errors_path}")
    elif errors_path.exists():
        errors_path.unlink()

    print(
        f"Completato: {counts['downloaded']} scaricate, "
        f"{counts['skipped']} già presenti, {counts['failed']} errori."
    )
    return 1 if counts["failed"] else 0


if __name__ == "__main__":
    raise SystemExit(main())
