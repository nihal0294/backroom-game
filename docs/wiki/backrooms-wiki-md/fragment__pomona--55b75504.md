---
title: "Pomona"
source: "https://backrooms-wiki.wikidot.com/fragment:pomona"
retrieved_at: "2026-08-23T23:42:35+00:00"
license: CC-BY-SA-3.0
---

# Pomona

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
/* Caslon OS font import */
@import url('https://fontlibrary.org/en/face/caslon-os');
/* Neo Euler font import */
@import url('https://fontlibrary.org/en/face/euler-otf'); 
/* Libre Baskerville font import */
@import url('https://fontlibrary.org/en/face/libre-baskerville');
 
:root {
    /* Header */
    --logo-image: url("http://backrooms-wiki.wdfiles.com/local--files/theme%3Apomona/pomona_header");
 
    /* Typefaces */
    --body-font: 'LibreBaskervilleRegular', serif;
    --UI-font: var(--body-font);
    --header-font: 'Caslon OS', serif;
    --title-font: 'NeoEulerMedium', serif;
    --mono-font: Courier, Consolas, monaco, monospace;
 
    /* Colors */
    --pale-gray-monochrome: 240, 233, 227; /* EDITED */
    --gray-monochrome: var(--leaf); /* EDITED */
    --pale-accent: var(--cherry); /* EDITED */
    --bright-accent: var(--leaf-light); /* EDITED */
    --medium-accent: var(--leaf); /* EDITED */
    --alt-accent: var(--peach); /* EDITED */
 
    /* extra colors, ADDED */
    --leaf: 67, 99, 23;
    --leaf-light: 128, 155, 75;
    --cherry: 194, 36, 55;
    --grape: 99, 21, 44;
    --peach: 239, 125, 85;
    --wood: 157, 128, 97;
 
    /* Swatches */
    --hover-link-color: var(--grape);
 
}
 
/* top bar */
#top-bar {
  --dropdown-bg-color: var(--gray-monochrome), 0.9; /* EDITED*/
}
 
/* tabview tab colors, ADDED */
#main-content {
    --tabs-hover-bg: var(--leaf-light);
    --tabs-selected-bg: var(--medium-accent);
    --tabs-selected-outline: var(--medium-accent);
    --tabs-bottom-border-color: var(--wood);
    --footnotes-footer-colorbar-color: var(--peach);
    --footnotes-footer-title-bg-color: var(--peach);
}
 
/* Dots */
#skrollr-body, #container {
    background-image: none; /* EDITED, dots removed */
}
 
/* Header Image */
#header::before {
    background-size: auto 10rem; /* EDITED, usually 16rem */
    background-position: center;
    background-repeat: no-repeat;
    opacity: 0.8; /* EDITED, usually 0.4 */
}
 
/* Div Quotes */
.styled-quote {
    border-left: solid 6px rgb(var(--leaf));/* EDITED */
}
 
.dark-styled-quote {
    background: rgb(var(--dark-gray-monochrome));/* EDITED */
    border-left: solid 6px rgb(var(--leaf-light)); /* EDITED */
}
 
/* custom divs, ADDED */
.cherry-box {
    color: rgb(var(--black-monochrome));
    background: rgba(var(--cherry), 0.2);
    padding: 0.01rem 1rem;
    margin: 0.5rem 0;
    box-shadow: var(--quote-shadow);
    border: 4px rgb(var(--cherry)) solid;
}
 
.grape-box {
    color: rgb(var(--black-monochrome));
    background: rgba(var(--grape), 0.2);
    padding: 0.01rem 1rem;
    margin: 0.5rem 0;
    box-shadow: var(--quote-shadow);
    border: 4px rgb(var(--grape)) solid;
}
 
.peach-box {
    color: rgb(var(--black-monochrome));
    background: rgba(var(--peach), 0.2);
    padding: 0.01rem 1rem;
    margin: 0.5rem 0;
    box-shadow: var(--quote-shadow);
    border: 4px rgb(var(--peach)) solid;
}
 
.wood-frame {
    color: rgb(var(--black-monochrome));
    background: rgb(var(--white-monochrome));
    padding: 0.01rem 1rem;
    margin: 0.5rem 0;
    box-shadow: var(--quote-shadow);
    border: 0.8rem rgb(var(--wood)) ridge;
}
 
/* Tab Gap */
.yui-navset .yui-nav {
    column-gap: 2px; /* EDITED */
}
 
/* image block borders, ADDED */
div.scp-image-block img.image {
   border: 0.8rem rgb(var(--wood)) ridge;
   box-sizing: border-box;
}
 
div.scp-image-caption {
    margin: 0.5rem;
    padding: 0.5rem !important; /* why is the padding not even across the whole thing? */
}
```

[- Close](javascript:;)

---

Source: [https://backrooms-wiki.wikidot.com/fragment:pomona](https://backrooms-wiki.wikidot.com/fragment:pomona)
