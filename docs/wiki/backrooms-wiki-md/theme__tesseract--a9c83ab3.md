---
title: "Tesseract"
source: "https://backrooms-wiki.wikidot.com/theme:tesseract"
retrieved_at: "2026-08-23T23:40:23+00:00"
license: CC-BY-SA-3.0
---

# Tesseract

rating: +16[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

This theme was created by and inspired by [Tesseract](art__tesseract--7a9923e1.md) by and !

To use this theme, put the following text in your page:

> [[include :backrooms-wiki:theme:tesseract]]

# Examples

![Missing alt text.](http://reyday.wikidot.com/local--files/component-hub/TessCoding)

This is the [Image Block](component__image-block--eb47f2b7.md) component.

A horizontal rule can be created with 5 hyphens "-----" and extends across the whole page if it's not placed inside anything (eg a blockquote). The lines separating sections of this document are horizontal rules.

---

Titles can be created by putting between one and six plus "+" at the start of the line

[+ Titles](javascript:;)

[- Titles](javascript:;)

# First Title

## Second Title

### Third Title

#### Fourth Title

##### Fifth Title

###### Sixth Title

Footnote.[1](javascript:;)  
**Bold**  
*Italic*  
Underline  
Strikethrough  
Superscript  
Subscript  
Teletype

- Bulleted list

[Links that don’t exist](https://backrooms-wiki.wikidot.com/links-that-dont-exist)  
[Links that do exist!](level-1.md)

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

[[div class="darkblock"]]

[[/div]]

[[div class="dark-styled-quote"]]

[[/div]]

[[div class="lightblock"]]

[[/div]]

[[div class="styled-quote"]]

[[/div]]

[[div class="redblock"]]

[[/div]]

[[div class="styled-red"]]

[[/div]]

[[div class="yellowblock"]]

[[/div]]

[[div class="styled-yellow"]]

[[/div]]

[[div class="blueblock"]]

[[/div]]

[[div class="styled-blue"]]

[[/div]]

  
  
  
  
  
  
  
  
  

Note: The “With Tess” div was made by and can be paired with any of the other divs!

[[div class="blockquote with-tess"]]

[[/div]]

**To add a title which looks like a page title, use:**

[[div class="meta-title"]]

[+ Theme Code](javascript:;)

[- Hide](javascript:;)

```
:root {
 
    /* Variables */
    --light-red: 192, 127, 127;
    --dark-red: 88, 18, 14;
    --light-yellow: 218, 210, 175;
    --dark-yellow: 117, 102, 67;
    --light-blue: 151, 161, 197;
    --dark-blue: 49, 69, 130;
    --gold-accent: 231, 213, 185;
    --beige-accent: 244, 242, 229;
    --light-grey: 204, 204, 204;
    --dark-grey: 54, 54, 54;
    --full-black: 0, 0, 0;
    --full-white: 255, 255, 255;
 
    --theme-base: "black-highlighter";
    --theme-id: "nuliminal";
    --theme-name: "NuLiminal Theme";
 
    /* Header */
     --logo-image: url("http://backrooms-wiki.wdfiles.com/local--files/component%3Atheme/logo.svg");
     --header-title: "The Backrooms";
     --header-subtitle: "You've been here before.";
     --swatch-headerh1-color: var(--white-monochrome);
     --swatch-headerh2-color: var(--white-monochrome);
 
    /* Typefaces */
     --body-font: 'Public Sans', Inter, Verdana, Geneva, "Helvetica Neue", "Helvetica", sans-serif;
     --UI-font: "Fantasque Sans Mono", Courier New, Ubuntu Mono, Consolas, monospace, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
     --header-font: 'Fantasque Sans Mono', Courier New, Ubuntu Mono, Consolas, monospace;
     --title-font: var(--header-font);
     --mono-font: 'Fantasque Sans Mono', Recursive, Consolas, monaco, monospace;
    /* MOST THEMES SHOULDN'T CHANGE THIS: makes editing consistent across themes, adds programming ligatures */
     --editor-font: 'Fantasque Sans Mono', Recursive, Consolas, monaco, monospace;
 
    /* Colors */
    --white-monochrome: var(--full-white);
    --pale-gray-monochrome: var(--beige-accent);
    --light-gray-monochrome: var(--light-grey);
    --dark-gray-monochrome: var(--dark-grey);
    --gray-monochrome: var(--dark-blue);
    --black-monochrome: var(--dark-grey);
    --bright-accent: var(--dark-blue);
    --medium-accent: var(--light-blue);
    --dark-accent: var(--dark-red);
    --pale-accent: var(--light-red);
    --link-color: var(--dark-blue);
    --visited-link-color: var(--dark-red);
    --alt-accent: var(--dark-grey);
    --hover-link-color: var(--dark-blue);
 
   /* Liminal Variables */
    --header-text-shadow: 0px 2px 3px rgba(0,0,0,0.8);
    --header-text-shadow-hover: 0px 5px 3px rgba(0,0,0,0.3);
    --quote-shadow: 0 2px 4px rgba(var(--black-monochrome),0.25);
    --footer-message: var(--header-subtitle);
 
   /* Swatches */
    --swatch-background: var(--beige-accent);
    --swatch-primary: var(--dark-blue);
    --swatch-secondary-color: var(--light-yellow);
 
    --swatch-text-general: var(--full-black);
    --swatch-important-text: var(--full-white);
 
    --swatch-menubg-color: var(--light-grey);
    --swatch-menubg-medium-color: var(--gold-accent);
    --swatch-menubg-dark-color: var(--dark-blue);
    --swatch-menubg-hover-color: var(--dark-grey);
    --swatch-menutxt-dark-color: var(--dark-grey);
    --swatch-menutxt-general-color: var(--full-black);
    --swatch-border-color: var(--dark-grey);
 
    --swatch-topmenu-border-color: var(--dark-red);
    --swatch-topmenu-bg-color: var(--gold-accent);
    --swatch-topmenu-txt-color: var(--dark-grey);
 
    --swatch-sidebar-collapsible-tab-bg: var(--dark-grey);
 
    --gradient-header: linear-gradient( to bottom, rgb(var(--medium-accent)) 0%, rgb(var(--bright-accent)) 100%);
     --gradient-background: linear-gradient( to bottom, rgb(var(--swatch-background)), rgb(var(--swatch-background)));
     --diagonal-stripes: transparent;
     --background-gradient-distance: 40rem; /* will not go further than 100vh */
     --background-gradient-color: var(--dark-yellow); /* This will display at low opacity */
     --banner-gradient-color: var(--dark-blue);
 
    /* Measurements */
     --scrollbar-width: 0.7rem;
     --sidebar-width-on-desktop: calc(var(--base-font-size) * (266 / 15));
     --body-width-on-desktop: 45.75rem;
     --header-height-on-desktop: 9rem;
     --header-height-on-mobile: 9rem;
 
    /* Rating Module */
     --rating-module-bg-color: var(--light-gray-monochrome);
}
 
/* Main Content */
#main-content {
    --tabs-bg: var(--bright-accent);
    --tabs-txt: var(--swatch-important-text);
    --tabs-hover-bg: var(--swatch-topmenu-bg-color);
    --tabs-hover-txt: var(--swatch-text-general);
    --tabs-selected-bg: var(--light-gray-monochrome);
    --tabs-selected-txt: var(--swatch-text-general);
    --tabs-selected-outline: var(--dark-gray-monochrome);
    --tabs-bottom-border-color: var(--swatch-topmenu-bg-color);
    --tabs-content-bg-color: var(--medium-accent), 0.25;
    --tabs-content-border-color: var(--bright-accent);
 
    --tables-header-bg: var(--dark-accent);
    --tables-header-txt: var(--swatch-text-secondary-color);
    --tables-border: var(--dark-gray-monochrome);
    --tables-body-bg: var(--pale-accent);
    --tables-body-txt: var(--swatch-text-general);
 
    --footnotes-footer-bg-color: var(--swatch-secondary-color);
    --footnotes-footer-colorbar-color: var(--dark-accent);
    --footnotes-footer-title-bg-color: var(--swatch-primary);
 
    --blockquote-bg-color: var(--light-gray-monochrome), 0.25;
    --blockquote-border-color: var(--dark-gray-monochrome);
 
    --toc-body-bg-color: var(--light-gray-monochrome);
 
}
 
#top-bar {
    --dropdown-bg-color: var(--dark-accent), 0.9;
    --dropdown-border-color: var(--pale-accent);
    --topmenu-category-color: var(--dark-grey);
    --topmenu-category-hover-bg: var(--dark-grey);
}
 
#side-bar, #interwiki {
    --sidebar-collapsible-fld-link-bg: var(--dark-gray-monochrome);
    --sidebar-collapsible-fld-link-color: var(--light-gray-monochrome);
}
 
#side-bar div.collapsible-block div.collapsible-block-unfolded-link>a.collapsible-block-link {
    color: rgb(var(--light-gray-monochrome));
}
 
/* Scrollbar */
html, body {
    color: rgb(var(--full-black));
    font-variant-ligatures: none;
    scrollbar-color: rgb(54, 54, 54) rgb(204, 204, 204);
    margin: 0;
    padding: 0;
}
 
/* Wallpaper */
/* Header Wallpaper */
 #skrollr-body::before {
     background-color: rgba(var(--banner-gradient-color),0.2);
}
 #skrollr-body::before {
     background-color: rgba(var(--banner-gradient-color),0.2);
}
 
 #container-wrap-wrap::before {
     background: linear-gradient(
         to bottom,
         rgba(var(--banner-gradient-color), 0) 0%,
         rgba(var(--banner-gradient-color), 0.013) 5%,
         rgba(var(--banner-gradient-color), 0.049) 10.1%,
         rgba(var(--banner-gradient-color), 0.104) 15.2%,
         rgba(var(--banner-gradient-color), 0.175) 20.5%,
         rgba(var(--banner-gradient-color), 0.259) 25.9%,
         rgba(var(--banner-gradient-color), 0.352) 31.6%,
         rgba(var(--banner-gradient-color), 0.45) 37.5%,
         rgba(var(--banner-gradient-color), 0.55) 43.8%,
         rgba(var(--banner-gradient-color), 0.648) 50.4%,
         rgba(var(--banner-gradient-color), 0.741) 57.4%,
         rgba(var(--banner-gradient-color), 0.825) 64.9%,
         rgba(var(--banner-gradient-color), 0.896) 72.8%,
         rgba(var(--banner-gradient-color), 0.951) 81.3%,
         rgba(var(--banner-gradient-color), 0.987) 90.3%,
         rgb(var(--banner-gradient-color)) 100%
     );
     z-index: -1;
     content: "";
     top: 0;
     left: 0;
     position: absolute;
     width: 100%;
     height: var(--header-height-on-desktop);
}
 
/* Div Boxes */
 .darkblock {
     color: rgb(var(--white-monochrome));
     background: rgb(var(--dark-gray-monochrome));
     padding: 0.01rem 1rem;
     margin: 0.5rem 0;
     box-shadow: var(--quote-shadow);
}
 .lightblock {
     color: rgb(var(--full-black));
     background: rgb(var(--light-gray-monochrome));
     padding: 0.01rem 1rem;
     margin: 0.5rem 0;
     box-shadow: var(--quote-shadow);
}
 
 .redblock {
    color: rgb(var(--full-black));
    background: rgb(var(--light-red));
    padding: 0.01rem 1rem;
    margin: 0.5rem 0;
    box-shadow: var(--quote-shadow);
}
 
 .yellowblock {
    color: rgb(var(--full-black));
    background: rgb(var(--light-yellow));
    padding: 0.01rem 1rem;
    margin: 0.5rem 0;
    box-shadow: var(--quote-shadow);
}
 
 .blueblock {
    color: rgb(var(--full-black));
    background: rgb(var(--light-blue));
    padding: 0.01rem 1rem;
    margin: 0.5rem 0;
    box-shadow: var(--quote-shadow);
}
 
/* Div Quotes */
 .styled-quote {
     color: rgb(var(--full-black));
     background: rgb(var(--light-gray-monochrome));
     padding: 0.01rem 1rem;
     margin: 0.5rem 0;
     box-shadow: var(--quote-shadow);
     border-left: solid 6px rgb(var(--dark-gray-monochrome));
}
 
 .dark-styled-quote {
     color: rgb(var(--white-monochrome));
     background: rgb(var(--dark-gray-monochrome));
     padding: 0.01rem 1rem;
     margin: 0.5rem 0;
     box-shadow: var(--quote-shadow);
     border-left: solid 6px rgb(var(--light-gray-monochrome));
}
 
 .styled-red {
     color: rgb(var(--full-black));
     background: rgb(var(--light-red));
     padding: 0.01rem 1rem;
     margin: 0.5rem 0;
     box-shadow: var(--quote-shadow);
     border-left: solid 6px rgb(var(--dark-red));
}
 
 .styled-yellow {
     color: rgb(var(--full-black));
     background: rgb(var(--light-yellow));
     padding: 0.01rem 1rem;
     margin: 0.5rem 0;
     box-shadow: var(--quote-shadow);
     border-left: solid 6px rgb(var(--dark-yellow));
}
 
 .styled-blue {
     color: rgb(var(--full-black));
     background: rgb(var(--light-blue));
     padding: 0.01rem 1rem;
     margin: 0.5rem 0;
     box-shadow: var(--quote-shadow);
     border-left: solid 6px rgb(var(--dark-blue));
}
 
/* Tess Div by Ambersight */
 
:is(.with-tess) {
    margin-top: 18rem;
    padding-top: 1.2rem;
    position: relative;
}
 
:is(.with-tess.no-padding) {
    padding-top: 0.5rem;
    min-height: 1rem;
}
 
.with-tess::before {
    content: "";
    display: block;
    height: 20rem;
    width: 23rem;
    background: url(https://s2.loli.net/2024/11/19/REebTS8UZjvnfJC.png);
    background-repeat: no-repeat;
    background-size: contain;
    background-position: center;
    position: absolute;
    top: -18.06rem;
    right: 2rem;
}
 
.with-tess::after {
    content: "";
    display: block;
    height: 6rem;
    width: 10rem;
    background: url(https://s2.loli.net/2024/11/20/9KYzVHiUAOJnyeS.png);
    background-repeat: no-repeat;
    background-size: contain;
    background-position: center;
    position: absolute;
    top: -4rem;
    left: 1rem;
}
 
@media only screen and (max-width: 590px) {
    .with-tess::after {
        display: none;
    }
}
 
@media only screen and (max-width: 520px) {
    .with-tess::before {
        right: 0.5rem;
    }
}
 
/* Header Text */
 #header h1 {
     width: 100%;
}
 #header h1 a, #header h1 a:before {
     width: fit-content;
     transition: 0.2s;
     position: relative;
     bottom: 0;
     color: rgb(var(--swatch-headerh1-color));
}
 #header h1 a:hover:before {
     text-shadow: var(--header-text-shadow-hover);
     bottom: 3px;
}
 #header h1, #header h1 a {
     position: absolute;
     top: 1.4rem;
     margin: 0;
     display: flex;
     justify-content: center;
     z-index: 0;
     height: 1.5rem;
}
 #header h2, #header h2 span, #header h2 span::before {
     position: absolute;
     top: 2.05rem;
     margin: 0;
     width: 100%;
     display: flex;
     justify-content: center;
     font-weight: bold;
}
 #header h2 span::before {
     color: rgb(var(--swatch-headerh2-color));
}
 #header h1 a::before, #header h2 span::before {
     text-shadow: var(--header-text-shadow);
}
 
/* License Box */
 #page-content .licensebox .collapsible-block-link {
     margin-left: .25em;
     padding: .25em;
     font-weight: 700;
     opacity: .5;
     color: rgb(var(--dark-gray-monochrome));
     -webkit-transition: opacity .5s ease-in-out;
     -moz-transition: opacity .5s ease-in-out;
     transition: opacity .5s ease-in-out;
}
 #page-content .licensebox .collapsible-block-link:hover {
     color: rgb(var(--black-monochrome));
}
```

Footnotes

[1](javascript:;). weeeee

---

Source: [https://backrooms-wiki.wikidot.com/theme:tesseract](https://backrooms-wiki.wikidot.com/theme:tesseract)
