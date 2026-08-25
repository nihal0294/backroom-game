---
title: "Morgana Council Theme"
source: "https://backrooms-wiki.wikidot.com/theme:old-morgana-council"
retrieved_at: "2026-08-23T23:35:18+00:00"
license: CC-BY-SA-3.0
---

# Morgana Council Theme

rating: +9[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

This theme was created by [etoisle](etoisle.md), with edits by .

To import this theme to your page, put the following text anywhere inside it:

[[include :backrooms-wiki:theme:old-morgana-council]]

# Examples

![Missing alt text.](http://backrooms-sandbox.wikidot.com/local--files/yellowislol/MorganaLogo.png)

The Morgana Council (Logo designed by )

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

- [*Tabulator*](javascript:;)
- [*Tabulation*](javascript:;)
- [*Long Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)

Just use your imagination and pretend there's Lorem Ipsum here.

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

you expected a empty tab but it was me dio

> This is a blockquote, created by putting "> " at the start of each line.  
> More text
>
> ---
>
> That's a horizontal rule
>
> > Nested blockquotes
> >
> > > And another[1](javascript:;)

| This is a | table |
| --- | --- |
| You should know | how to make these |
| already | |

---

The Body font is Sansita  
The Title and Header font is Sansita Swashed  
The monospace font used is PT Mono.

---

Foot[2](javascript:;)

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
@import url(https://backrooms-wiki.wdfiles.com/local--code/component%3Apatch/1);
 
/* -- Font Imports-- */
 
@import url('https://fonts.googleapis.com/css2?family=Atomic+Age&display=swap');
 
:root {
    --title-font: 'Atomic Age', cursive;
    --header-font: 'Atomic Age', cursive;
 
    /* S-CSS-P Integration */
    /* If you're making a new CSS theme, please include the following three variables at minimum. */
    --theme-base: "black-highlighter";
    /* must be either "black-highlighter" or "sigma9" */
    --theme-id: "morgana-council";
    /* set this to the URL of your theme's page - eg for "component:ar-theme", set it to "ar-theme" */
    --theme-name: "Morgana Council Theme";
    /* set this to your theme's full name */
 
    /* Header */
    --logo-image: url("http://backrooms-sandbox.wikidot.com/local--files/yellowislol/MorganaLogo.png");
    --header-title: "The Morgana Council";
    --header-subtitle: "Always take your risk";
 
    /* Standard Colors */
    --white-monochrome: 255, 255, 255;
    /* white */
    --pale-gray-monochrome: 255, 255, 255;
    /* v light gray for blockquotes and stuff */
    --light-pale-gray-monochrome: 237, 193, 50;
    /* accent color */
    --very-light-gray-monochrome: 215, 215, 215;
    /* very light accent gray for misc. use */
    --light-gray-monochrome: 160, 160, 160;
    /* light accent gray for login status */
    --gray-monochrome: 66, 66, 72;
    /* gray */
    --dark-gray-monochrome: 48, 48, 52;
    /* dark accent gray for sidebar background */
    --black-monochrome: 20, 20, 20;
    /* black */
    --pale-accent: 36, 17, 46;
    /* bright gold */
    --bright-accent: 108, 53, 150;
    /* bright purple*/
    --medium-accent: 135, 100, 158;
    /* medium purple - the "default" accent color */
    --dark-accent: 179, 157, 52;
    /* gold */
    --alt-accent: 58, 201, 190;
    /* greenish, for newpage links */
 
    /* Background and Header Colors */
    --background-gradient-color: var(--very-light-gray-monochrome);
    --header-gradient-color-bottom: var(--medium-accent);
    --header-gradient-color-middle: var(--black-monochrome);
    --header-gradient-color-top: var(--black-monochrome);
 
    /* Primary Theme Colors */
    --swatch-background: var(--black-monochrome);
    --swatch-primary: var(--bright-accent);
    --swatch-primary-darker: var(--medium-accent);
    --swatch-primary-darkest: var(--dark-accent);
    /* Primary Text Colors */
    --swatch-text-dark: var(--white-monochrome);
    --swatch-text-light: var(--white-monochrome);
    --swatch-important-text: var(--bright-accent);
    --barColour: var(--dark-accent);
    --linkColour: var(--medium-accent);
 
    /* Primary Menu Colors */
    --swatch-menubg-color: var(--pale-gray-monochrome);
    --swatch-menubg-light-color: var(--pale-gray-monochrome);
    --swatch-menubg-medium-color: var(--light-gray-monochrome);
    --swatch-menubg-medium-dark-color: var(--gray-monochrome);
    --swatch-menubg-dark-color: var(--dark-gray-monochrome);
    --swatch-menubg-black-color: var(--dark-gray-monochrome);
    --swatch-menubg-hover-color: var(--black-monochrome);
    --swatch-menutxt-dark-color: var(--dark-accent);
    --swatch-menutxt-light-color: var(--white-monochrome);
    --swatch-border-color: var(--black-monochrome);
    /* Primary Header Colors */
    --swatch-headerh1-color: var(--white-monochrome);
    --swatch-headerh2-color: var(--white-monochrome);
    --swatch-topmenu-border-color: var(--dark-gray-monochrome);
    --swatch-topmenu-bg-color: var(--dark-gray-monochrome);
 
    /* Link Colors */
    --link-color: var(--medium-accent);
    --visited-link-color: var(--swatch-primary);
    --hover-link-color: var(--swatch-primary);
    --newpage-color: var(--alt-accent);
    --sidebar-links-text: var(--swatch-menutxt-dark-color);
    --link-color-bright: var(--medium-accent);
 
/* Rating Module Colors */
    --rating-module-button-color: var(--black-monochrome);
    --rating-module-button-plus-color: 0, 200, 0;
    --rating-module-button-negative-color: 200, 0, 0;
    --rating-module-button-cancel-color: 200, 200, 200;
    --rating-module-button-credit-color: 50, 50, 50;
    --rating-module-text-color: var(--swatch-menutxt-dark-color);
    --rating-module-text-hover-color: var(--swatch-menutxt-light-color);
 
/* Header Gradients */
 
/* HEADER */
#header {
    background-image: url(http://backrooms-sandbox.wikidot.com/local--files/yellowislol/MorganaLogo.png);
}
 
    --gradient-header: linear-gradient(
     to top,
     rgb(var(--header-gradient-color-bottom)) 0%,
     rgb(var(--header-gradient-color-middle)) 90%,
     rgb(var(--header-gradient-color-top)) 100%
    );
    --gradient-topmenu: linear-gradient(
     to bottom,
     rgba(255, 255, 255, 0) 0%,
     rgba(255, 255, 255, 0) var(--header-height-on-desktop),
     rgba(var(--swatch-topmenu-border-color),1) var(--header-height-on-desktop),
     rgba(var(--swatch-topmenu-bg-color), 1) calc(var(--header-height-on-desktop) + 0.125rem),
     rgba(var(--swatch-topmenu-bg-color), 0.95) calc(100% - 0.125rem),
     rgba(var(--swatch-topmenu-bg-color), 1) calc(100% - 0.125rem),
     rgba(var(--swatch-topmenu-border-color), 1) 100%);
    --gradient-topmenu-mobile: linear-gradient(
     to bottom,
     rgba(var(--swatch-topmenu-border-color),1) 0,
     rgba(var(--swatch-topmenu-bg-color), 1) 0.125rem,
     rgba(var(--swatch-topmenu-bg-color), 1) calc(var(--topbar-height-on-mobile) - 0.125rem),
     rgba(var(--swatch-topmenu-bg-color), 1) calc(var(--topbar-height-on-mobile) - 0.125rem),
     rgba(var(--swatch-topmenu-border-color),1) var(--topbar-height-on-mobile));
    --diagonal-stripes: repeating-linear-gradient(
     45deg,
     hsla(0, 0%, 100%, 0),
     hsla(0, 0%, 100%, 0) 0.25vh,
     rgba(88, 88, 88, 0.1) 0.35vh,
     rgba(88, 88, 88, 0.2) 0.5vh
    );
    --gradient-sidemenu-header: linear-gradient(10deg,
     rgba(var(--medium-accent), 0.45) 0%,
     rgba(var(--medium-accent), 0.55) 100%
    );
    --background-gradient-distance: 40rem;
    --gradient-background: linear-gradient(
     to bottom,
     rgba(var(--background-gradient-color),1) 0,
     rgba(var(--background-gradient-color),0.987) calc(0.008 * var(--background-gradient-distance)),
     rgba(var(--background-gradient-color),0.951) calc(0.029 * var(--background-gradient-distance)),
     rgba(var(--background-gradient-color),0.896) calc(0.064 * var(--background-gradient-distance)),
     rgba(var(--background-gradient-color),0.825) calc(0.110 * var(--background-gradient-distance)),
     rgba(var(--background-gradient-color),0.741) calc(0.166 * var(--background-gradient-distance)),
     rgba(var(--background-gradient-color),0.648) calc(0.231 * var(--background-gradient-distance)),
     rgba(var(--background-gradient-color),0.550) calc(0.304 * var(--background-gradient-distance)),
     rgba(var(--background-gradient-color),0.450) calc(0.383 * var(--background-gradient-distance)),
     rgba(var(--background-gradient-color),0.352) calc(0.467 * var(--background-gradient-distance)),
     rgba(var(--background-gradient-color),0.259) calc(0.554 * var(--background-gradient-distance)),
     rgba(var(--background-gradient-color),0.175) calc(0.644 * var(--background-gradient-distance)),
     rgba(var(--background-gradient-color),0.104) calc(0.735 * var(--background-gradient-distance)),
     rgba(var(--background-gradient-color),0.049) calc(0.825 * var(--background-gradient-distance)),
     rgba(var(--background-gradient-color),0.013) calc(0.914 * var(--background-gradient-distance)),
     rgba(var(--background-gradient-color),0) var(--background-gradient-distance));
}
 
#page-title {
    border-color: rgb(var(--bright-accent));
    color: rgb(var(--dark-accent))!important;
}
body, #skrollr-body {
color: var(--white-monochrome) !important;
    background-image: var(--black-monochrome) !important;
    background-size:
     100% 7.5rem,
     100% 9.375rem,
     100% 40rem;
    background-size:
     var(--header-background-image-size),
     100% var(--final-header-height-on-desktop),
     100% var(--background-gradient-distance);
    /* 120px, 150px */
    background-repeat: repeat-x;
}
 
/* RATING AND INFO MODULES */
.page-rate-widget-box {
     box-shadow: 0px 0px 0px 2px rgb(var(--light-pale-gray-monochrome));
    background: rgb(var(--bright-accent));
     padding: .1em;
     border-radius: 0px 10px 0px 10px;
}
 
.page-rate-widget-box .rate-points {
    background-color: rgb(var(--bright-accent)) !important;
    border: none;
    color: rgb(var(--black-monochrome)) !important;
}
.page-rate-widget-box .rateup,
.page-rate-widget-box .ratedown {
    background-color: rgb(var(--bright-accent));
    border-top: none;
    border-bottom: none;
}
.page-rate-widget-box .rateup a,
.page-rate-widget-box .ratedown a {
    background: transparent;
    color: rgb(var(--black-monochrome));
}
.page-rate-widget-box .cancel {
    background: transparent;
    background-color: rgb(var(--bright-accent));
    border: none;
}
 
.page-rate-widget-box .cancel a {
    color: rgb(var(--black-monochrome));
}
span.printuser {
    color: rgb(var(--light-pale-gray-monochrome))
}
#side-bar {
background-size: 0%
}
a:hover {
    color: rgb(var(--light-pale-gray-monochrome)) !important;
    text-decoration: underline;
    background-color: rgb(var(--bright-accent));
    padding: 1px;
}
.scp-image-block .scp-image-caption {
    color: rgb(var(--pale-accent));
}
/* Header Colours */
h1, h2, h3, h4, h5, h6 {
    color: rgb(var(--bright-accent));
}
 
/* TABVIEW - Abandon All Hope Ye Who Enter Here */
 
.yui-navset .yui-nav,
.yui-navset .yui-navset-top .yui-nav {
    border-color: rgb(var(--dark-accent));
    -webkit-box-shadow: 0 -webkit-calc(0.0625rem * 5) 0 0 rgb(var(--dark-accent));
    box-shadow: 0 calc(0.0625rem * 5) 0 0 rgb(var(--light-pale-gray-monochrome));
}
 
/* Unselected Tab Values */
.yui-navset .yui-nav a,
.yui-navset .yui-navset-top .yui-nav a {
    background-color: rgb(var(--pale-accent));
    color: rgb(var(--light-pale-gray-monochrome));
}
 
/* Tab Hover Values */
.yui-navset .yui-nav a:hover,
.yui-navset .yui-nav a:focus {
    background: rgb(var(--medium-accent));
    color: rgb(var(--light-pale-gray-monochrome)) !important;
}
 
.yui-navset .yui-nav li,
.yui-navset .yui-navset-top .yui-nav li {
    background: rgb(var(--medium-accent));
    -webkit-box-shadow: 0 0 0 0.0625rem rgb(var(--dark-accent));
    box-shadow: 0 0 0 0.0625rem rgb(var(--dark-accent));
}
 
/* Selected Tab */
 
.yui-navset .yui-nav .selected,
.yui-navset .yui-navset-top .yui-nav .selected,
.yui-navset .yui-nav .selected:hover,
.yui-navset .yui-navset-top .yui-nav .selected:hover {
    color: rgb(var(--light-pale-gray-monochrome)) !important;
}
 
.yui-navset .yui-nav .selected a,
.yui-navset .yui-nav .selected a em {
    color: rgb(var(--light-pale-gray-monochrome));
}
 
.yui-navset .yui-nav .selected a {
    /* Undoes a color set by wikidot's default layout */
    color: rgb(var(--light-pale-gray-monochrome)) !important;
}
 
.yui-navset .yui-content {
    background-color: rgb(var(--pale-accent));
}
 
.yui-navset .yui-content,
.yui-navset .yui-navset-top .yui-content {
    border-color: rgb(var(--dark-accent));
}
 
.yui-navset-left .yui-content {
    border-left-color: rgb(var(--dark-accent));
}
/* Selected tab top colour */
.yui-navset .yui-nav .selected a,
.yui-navset .yui-nav .selected a:focus,
.yui-navset .yui-nav .selected a:hover {
        background-color: rgb(var(--medium-accent));
        color: #000000;
}
 
div.blockquote, blockquote {
    background-color: rgb(var(--pale-accent));
border-color:     rgb(var(--dark-accent));
color: rgb(var(--white-monochrome));
}
 
table.wiki-content-table th {
        background-color: rgb(var(--dark-accent));
color: rgb(var(--pale-gray-monochrome));
}
.footnotes-footer {
    border-color:  rgb(var(--dark-accent));
    color: rgb(var(--white-monochrome));
    --footnotes-footer-bg-color:var(--pale-accent);
}
 
a.footnote-footer {
    color: rgb(var(--light-pale-gray-monochrome)) !important;
}
.footnote-footer>a:first-of-type {
    color: rgb(var(--light-pale-gray-monochrome)) !important;
}
 
#side-bar .side-block {
    background: rgb(0,0,0,0) !important;
    color: rgb(var(--pale-gray-monochrome));
}
#side-bar:hover {
background:  rgb(var(--dark-gray-monochrome));
}
 
hr {
    border-top: .063rem solid rgb(var(--light-pale-gray-monochrome)) !important;
color:  rgb(var(--light-pale-gray-monochrome)) !important;
background-color: rgb(var(--light-pale-gray-monochrome)) !important;
}
 
::-webkit-scrollbar-thumb, #side-bar:hover::-webkit-scrollbar-thumb {
    background-color: rgb(var(--dark-accent));
}
 
::-webkit-scrollbar, #side-bar:hover::-webkit-scrollbar {
    background-color: rgb(var(--dark-gray-monochrome));
}
```

[- Close](javascript:;)

Footnotes

[1](javascript:;). And here's a footnote!

[2](javascript:;). note

---

Source: [https://backrooms-wiki.wikidot.com/theme:old-morgana-council](https://backrooms-wiki.wikidot.com/theme:old-morgana-council)
