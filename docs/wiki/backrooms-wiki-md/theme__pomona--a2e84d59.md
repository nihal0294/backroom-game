---
title: "Pomona"
source: "https://backrooms-wiki.wikidot.com/theme:pomona"
retrieved_at: "2026-08-23T23:39:09+00:00"
license: CC-BY-SA-3.0
---

# Pomona

rating: +26[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

--leaf  
67, 99, 23

--leaf-light  
128, 155, 76

--cherry  
194, 36, 55

--grape  
99, 21, 44

--peach  
239, 125, 85

--wood  
157, 128, 97

This theme was created by , inspired by scientific botanical artwork and named after the book *[Pomona Italiana](https://digitalcollections.nypl.org/collections/pomona-italiana-trattato-degli-alberi-fruttiferi-conteneate-la-descrizione-delle#/?tab=about)*. Many of the colors in this theme were color-picked from images in the book.

To import this theme to your page, put the following text anywhere inside it:

[[include :backrooms-wiki:theme:pomona]]

# Examples

![Missing alt text.](http://backrooms-wiki.wdfiles.com/local--files/theme%3Apomona/pomona_imageblock)

This is the [Image Block](component__image-block--eb47f2b7.md) component.

A horizontal rule can be created with 5 hyphens "-----" and extends across the whole page if it's not placed inside anything (e.g. a blockquote). The lines separating sections of this document are horizontal rules.

---

- [*Tabulator*](javascript:;)
- [*Tabulation*](javascript:;)
- [*Long Tab*](javascript:;)
- [*This empty tab has a really long name for some odd reason. I wonder why?*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)

This is a tab view.

Hey look, more text here.

How quaint.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

> This is a blockquote, created by putting "> " at the start of each line.  
> More text
>
> ---
>
> That's a horizontal rule
>
> > Nested blockquotes

| This is a | table |
| --- | --- |
| You should know | how to make these |
| already | |

---

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

# Heading 1

## Heading 2

### Heading 3

#### Heading 4

##### Heading 5

###### Heading 6

**Bold**  
*Italic*  
Underline  
Strikethrough  
Superscript  
Subscript  
Teletype

- Bulleted list

Foot[1](javascript:;)  
[Valid link](level-0.md)  
[Invalid link](https://backrooms-wiki.wikidot.com/invalid-link)

[+ Collapsible link](javascript:;)

[- Hide](javascript:;)

Collapsible text

---

[[div class="lightblock"]]

[[/div]]

[[div class="styled-quote"]]

[[/div]]

[[div class="darkblock"]]

[[/div]]

[[div class="dark-styled-quote"]]

[[/div]]

[[div class="cherry-box"]]

[[/div]]

[[div class="grape-box"]]

[[/div]]

[[div class="peach-box"]]

[[/div]]

[[div class="wood-frame"]]

[[/div]]

---

The header font is [Caslon OS](https://fontlibrary.org/en/font/caslon-os) by [Hanken Design Co.](index.md), released under [OFL (SIL Open Font License)](http://scripts.sil.org/OFL).

The title font is [Neo Euler Medium](https://fontlibrary.org/en/font/euler-otf) by Hermann Zapf, released under [OFL (SIL Open Font License)](http://scripts.sil.org/OFL).

The body font is [Libre Baskerville](https://fontlibrary.org/en/font/libre-baskerville) by [Pablo Impallari, Rodrigo Fuenzalida](index.md), released under [OFL (SIL Open Font License)](http://scripts.sil.org/OFL).

The header image is [Floral wreath png illustration, transparent background](https://www.rawpixel.com/image/7647633/png-frame-plant) by Unknown Creator from rawpixel, released under [Public Domain/CC0](https://creativecommons.org/publicdomain/zero/1.0/).

The image block image is [Peach bough (Prunus Persica) (1918)](https://www.rawpixel.com/image/2278368/free-illustration-image-fruit-botanical-peach) by Royal Charles Steadman and digitally enhanced by rawpixel, released under [Public Domain/CC0](https://creativecommons.org/publicdomain/zero/1.0/).

---

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

Footnotes

[1](javascript:;). note

---

Source: [https://backrooms-wiki.wikidot.com/theme:pomona](https://backrooms-wiki.wikidot.com/theme:pomona)
