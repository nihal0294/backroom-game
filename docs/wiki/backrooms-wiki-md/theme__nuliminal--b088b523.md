---
title: "NuLiminal"
source: "https://backrooms-wiki.wikidot.com/theme:nuliminal"
retrieved_at: "2026-08-23T23:35:21+00:00"
license: CC-BY-SA-3.0
---

# NuLiminal

rating: +22[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

This theme was created by and , based on the Liminal theme by and [etoisle](etoisle.md).

The icons for the options at the bottom of the page are from the [Backrooms Chinese Wiki](index.md), licensed under [CC-BY-SA-3.0](http://creativecommons.org/licenses/by-sa/3.0/). The theme's base is [Black Highlighter](https://scp-wiki.wikidot.com/theme:black-highlighter-theme) by , licensed under [CC-BY-SA-3.0](http://creativecommons.org/licenses/by-sa/3.0/).

To import this theme to your page, put the following text anywhere inside it:

[[include :backrooms-wiki:theme:nuliminal]]

# Examples

![Missing alt text.](https://backrooms-wiki.wdfiles.com/local--files/level-0/OGLevel0.jpg)

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

**To add a title which looks like a page title, use:**

[[div class="meta-title"]]

---

[+ Theme Code](javascript:;)

[- Close](javascript:;)

> This is all of the theme code normally running on the site, **except** for the fact that the [theme](component__theme--21bdca00.md) page also imports the [user-flairs](component__user-flairs--4d64ce71.md) page to give fancy names to staff. This code doesn't do that so it can be imported by other branches, which will want to have their staff highlighted.

```
/* Remove Default Wikidot Styles */
@import url("https://cdn.scpwiki.com/theme/en/black-highlighter/css/min/normalize.min.css");
 
 /* Base BHL Theme */ 
@import url("https://cdn.scpwiki.com/theme/en/black-highlighter/css/min/black-highlighter.min.css");
 
/* Fantasque Sans Mono Font */
@import url("https://backrooms-wiki.wikidot.com/component:fantasque-sans-mono/code/1");
 
/* Public Sans Font */
@import url('https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
 
/* Fancy Forums */
@import url("https://backrooms-wiki.wikidot.com/component:forum-theme/code/1");
 
/* Mask Icons */
@import url("https://backrooms-wiki.wikidot.com/component:mask-icons/code/1");
 
/* Material Icons */
@import url(https://backrooms-wiki.wdfiles.com/component:material-icons/code/1);
 
/* Root Variables: When making a new theme, see: https://github.com/Nu-SCPTheme/Black-Highlighter/blob/master/src/css/parts/root.css */
 
:root {
    /* S-CSS-P */
    --theme-base: "black-highlighter";
    --theme-id: "nuliminal";
    --theme-name: "NuLiminal Theme";
 
    /* Header */
    --logo-image: url("http://backrooms-wiki.wikidot.com/local--files/theme:nuliminal/PrideLogo");
    --header-title: "The Backrooms";
    --header-subtitle: "You've been here before.";
    --swatch-headerh1-color: var(--white-monochrome);
    --swatch-headerh2-color: var(--white-monochrome);
    /* Typefaces */
    --body-font: 'Public Sans', Inter, Verdana, Geneva, "Helvetica Neue", "Helvetica", sans-serif;
    --UI-font: 'Public Sans', Arial, PTRootUI, -apple-system, system-ui, BlinkMacSystemFont,
        "Segoe UI", Roboto, Oxygen-Sans, Ubuntu, Cantrell, "Helvetica Neue",
        sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
    --header-font: 'Fantasque Sans Mono', Courier New, Ubuntu Mono, Consolas, monospace;
    --title-font: var(--header-font);
    --mono-font: 'Fantasque Sans Mono', Recursive, Consolas, monaco, monospace;
 
    /* Colors */
    --white-monochrome: 252, 252, 252; /* ALTERED */
    --pale-gray-monochrome: 237, 233, 223; /* ALTERED */
    --light-pale-gray-monochrome: 237, 233, 223;
    --very-light-gray-monochrome: 220, 215, 210;
    --light-gray-monochrome: 165, 160, 155;
    --gray-monochrome: 72, 69, 60;
    --dark-gray-monochrome: 64, 63, 52;
    --black-monochrome: 25, 20, 16;
    --pale-accent: 230, 23, 68;
    --bright-accent: 140, 136, 126; 
    --medium-accent: 72, 69, 60;
    --dark-accent: 140, 136, 126;
    --alt-accent: 221, 102, 17;
 
    /* Liminal Variables */
    --header-text-shadow: 0px 2px 3px rgba(0,0,0,0.8);
    --header-text-shadow-hover: 0px 5px 3px rgba(0,0,0,0.3);
    --quote-shadow: 0 2px 4px rgba(var(--black-monochrome),0.25);
    --footer-message: var(--header-subtitle);
 
    --swatch-sidebar-collapsible-tab-bg: var(--swatch-primary);
 
   /* MOST THEMES SHOULDN'T CHANGE THIS: makes editing consistent across themes, adds programing ligatures */
    --editor-font: 'Fantasque Sans Mono', Recursive, Consolas, monaco, monospace;
 
    /* Swatches */
    --swatch-secondary-color: var(--white-monochrome);
    --swatch-menubg-color: var(--white-monochrome);
    --rating-module-bg-color: var(--swatch-menubg-color);
 
    --modal-header-bg: var(--swatch-primary), 0.9;
 
   --toc-body-bg-color: var(--white-monochrome);
 
    --gradient-header: linear-gradient(to top,
        rgba(var(--medium-accent)) 0%,
        rgba(var(--medium-accent), 0.90) 100%
    );
 
    --diagonal-stripes: transparent;
    --background-gradient-distance: 0;
    --scrollbar-width: 0.7rem;
    --swatch-background: var(--pale-gray-monochrome);
    --swatch-topmenu-border-color: var(--medium-accent);
 
     --sidebar-width-on-desktop: calc(var(--base-font-size) * (300 / 10));
     --body-width-on-desktop: 40.75rem;
}
 
/* Overflow Fix */
:root {
    width: 100vw;
    overflow-x: hidden;
}
 
/* Dots */
    /* Header Dots */
    #skrollr-body {
        background-image:
        radial-gradient(circle, rgb(var(--medium-accent)) 50%, transparent 0);
        background-repeat: repeat;
        background-size: 0.25em 0.25em;
        width: 100%;
        height: 7.5rem;
    }
 
    /* Content Dots */
    #container {
        background-image: radial-gradient(circle, rgb(var(--medium-accent), 0.05) 50%, transparent 0);
        background-size: 0.25em 0.25em;
        background-repeat: repeat;
        background-attachment: fixed;
    }
 
/* container wrap bug */
 
#container, #container-wrap, #container-wrap-wrap {
   width: 100vw;
}
 
/* Header Image */
#header {
    background-image: none;
    z-index: 30;
}
 
#header::before {
    content: "";
    position: absolute;
    height: 100%;
    width: 100%;
    left: 0;
    top: 0;
    background-image: var(--logo-image);
    background-size: auto 16rem;
    background-position: center;
    background-repeat: no-repeat;
    opacity: 0.4;
}
 
/* Header Text */ 
#header h1 { width: 100%; }
 
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
    top: 1rem;
    margin: 0;
    display: flex;
    justify-content: center;
    z-index: 0;
    height: 1.5rem;
}
 
#header h2, #header h2 span, #header h2 span::before {
    position: absolute;
    top: 1.85rem;
    margin: 0;
    width: 100%;
    display: flex;
    justify-content: center;
    font-weight: bold;
}
 
#header h2 span::before { color: rgb(var(--swatch-headerh2-color)); }
 
#header h1 a::before, #header h2 span::before {
    text-shadow: var(--header-text-shadow);
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
    color: rgb(var(--black-monochrome));
    background: rgb(var(--white-monochrome));
    padding: 0.01rem 1rem;
    margin: 0.5rem 0;
    box-shadow: var(--quote-shadow);
}
 
/* Div Quotes */
 
.styled-quote {
    color: rgb(var(--black-monochrome));
    background: rgb(var(--white-monochrome));
    padding: 0.01rem 1rem;
    margin: 0.5rem 0;
    box-shadow: var(--quote-shadow);
    border-left: solid 6px rgb(var(--dark-gray-monochrome));
}
 
.dark-styled-quote {
    color: rgb(var(--white-monochrome));
    background: rgb(var(--gray-monochrome));
    padding: 0.01rem 1rem;
    margin: 0.5rem 0;
    box-shadow: var(--quote-shadow);
    border-left: solid 6px rgb(var(--dark-gray-monochrome));
}
 
/* Headings */
h1, h2, h3, h4, h5, h6 {
    margin-top: 0.5em;
    margin-left: 0;
}
 
/* Table of Contents */
#page-content #toc {
    --toc-header-bg-color: var(--gray-monochrome);
    --toc-body-bg-color: var(--pale-gray-monochrome);
}
 
/* Table */
#page-content table {
    box-shadow: var(--quote-shadow);
}
 
/* Max-Width Fix */
img, embed, video, object, iframe, table, dark#page-content div, #page-content div table {
    max-width: 100%;
}
 
div#footer:after {
    content: var(--footer-message);
    border-left: solid 1px;
    padding-left: 0.5em;
    height: 1.4em;
    display: inline-flex;
    align-items: center;
    margin-left: 0.3em;
}
 
/* Horizontal Rule Fix */
hr {
    clear: none;
    display: flex;
}
 
.bibitems .bibitem:after, .footnotes-footer a[href*=javascript]:before {
    right: -20%;
    width: 140%;
}
 
/* Tab Gap */
.yui-navset .yui-nav {
    background: rgb(var(--tabs-bottom-border-color));
    column-gap: 4px;
}
 
.yui-navset {
    margin-top: 1rem;
}
 
/* Page Title */
.meta-title p {
    margin: 0;
}
 
/* printuser */
span.printuser img.small {
   transition: 0.5s;
   transition-timing-function: cubic-bezier (0,1,1,0);
}
 
span.printuser img.small:hover {
   transform: scale(2);
   transition-delay: 0.5s;
}
 
#avatar-hover-container {
   display: none;
}
 
/* Stop the unordered lists being in line with the text, this breaks SD banners! */
 
ul {
    padding-inline-start: 2.5rem;
}
 
/* Template options text fix */
form#edit-page-form #page-templates option, form#edit-post-form #page-templates option, form#new-post-form #page-templates option, form#new-thread-form #page-templates option {
    color: rgb(var(--swatch-menutxt-dark-color)); 
}
 
/* Message on Delete/Rename/Move */
 
#rename-option-rename::before, #rename-option-delete::before {
    content: "Reminder: Backrooms Wiki users can rename/move pages they own, but use this responsibly (preferably only if there is an error with the name). Only staff are allowed to delete pages, even your own pages: ask Backrooms Wiki staff and we will help you!";
    color: red;
    display: block;
    margin-top: 1rem;
}
 
/* MOBILE */
 
#page-content {
    max-width: var(--body-width-on-desktop);
}
 
@media only screen and (max-width: 56.25rem) {
#page-content {
    max-width: var(--body-width-on-mobile);
}
 
#side-bar {
    z-index: 55 !important;
}
}
 
.scp-image-caption { width: inherit !important; }
 
/* Fix Images */
 
.image-container.floatright {
   float: right;
   margin-left: 0.7em;
}
 
/* Fix Modals */
 
#odialog-container .content > h1 ~ table, #odialog-container .modal-body > h1 ~ table {
    grid-auto-rows: auto;
}
 
/* Editor Font */
 
#edit-page-textarea {
    font-family: var(--editor-font);
}
 
/* Make some variables editable at :root level */
 
#side-bar {
    --sideblock-heading-text-color: inherit;
    z-index: 55 !important;
}
 
/* Inline maths actually inline */
#MathJax_Message, .math-inline {
    display: inline;
}
 
/* Buttons */
div[id*="page-options-bottom"]:not(.page-rate-widget-box):not(#search-top-box-form) > a.btn {
    flex-basis: 5.5rem;
}
 
/* License Box */
#page-content .licensebox .collapsible-block-link {
    margin-left: .25em;
    padding: .25em;
    font-weight: 700;
    opacity: .5;
    color: rgb(var(--gray-monochrome));
    -webkit-transition: opacity .5s ease-in-out;
    -moz-transition: opacity .5s ease-in-out;
    transition: opacity .5s ease-in-out;
}
 
#page-content .licensebox .collapsible-block-link:hover {
     color: rgb(var(--dark-gray-monochrome));
}
 
/* Info */
#u-infobox {
   opacity: 0 !important;
   pointer-events: none;
   will-change: opacity;
   transition: 0.2s;
   display: flex;
   width: 100vw; height: 100vh;
   top: 0; left: 0;
   position: fixed;
   z-index: 20;
   background-color: rgba(var(--swatch-alternate-color),.5);
   justify-content: center; align-items: center;
}
 
#u-infobox:target {
   opacity: 1 !important;
   pointer-events: unset;
}
 
.infobox-title {
    --wght: 800;
    display: flex;
    justify-content: flex-start;
    margin: 0;
    padding: 1.5ex 1.25rem;
    background-color: rgb(var(--modal-header-bg));
    background-image: linear-gradient(125deg,rgba(var(--modal-header-stripe),.75) 25%,transparent 25%,transparent 50%,rgba(var(--modal-header-stripe),.75) 50%,rgba(var(--modal-header-stripe),.75) 75%,transparent 75%,transparent 100%);
    background-size: 3rem 4.35rem;
    color: rgb(var(--modal-header-txt));
    font-family: var(--header-font);
    font-size: 1.5em;
    font-weight: var(--wght);
    line-height: 1ex;
    text-transform: uppercase;
}
 
.infobox {
    display: grid;
    width: 60vw;
    border: 0;
    background-color: rgb(var(--modal-bg));
    box-shadow: inset 0 0 0 .125rem rgba(var(--swatch-alternate-color),.25),.5rem .25rem 1rem 0 rgba(var(--swatch-alternate-color),.25);
    color: rgb(var(--modal-body-text));
}
 
.infobox-footer {
    width: 100%;
    margin: 1rem 0 1em;
    padding: 1rem 1rem 0 0;
    box-shadow: 0-.0625rem 0 0 rgba(var(--modal-header-stripe),.2);
    text-align: right;
}
 
.infobox-title p, .infobox-footer p {
   all: unset;
}
 
.infobox-body {
    display: grid;
    margin: 0 1rem;
    padding: 0;
}
 
/* lists not weird and insidey */
 
#page-content ul:not(.yui-nav) {
    padding-left: 1rem;
    list-style: disc;
    margin: 1rem 0;
}
 
/* Image Block */
:is(.image-caption, .scp-image-caption) {
    width: unset !important;
}
 
:is(div.image-block,div.scp-image-block) {
    align-items: stretch;
}
 
:is(div.image-block,div.scp-image-block) img.image {
    width: 100% !important;
    border: 0;
}
 
/* Footnote */
a.bibcite:before, a.footnoteref:before {
    content: "[";
}
 
a.bibcite:after, a.footnoteref:after {
    content: "]";
}
 
/* Scroll Behaviour */
html {
    scroll-behavior: smooth;
}
 
/* meta style 
 
this makes it harder for staff members to accidentally guff the SEO*/
 
#action-area > div[style="padding-left:3em;"] {
    width: 100%;
    margin: 0 auto;
    padding: 1em 0 !important;
    font-family: var(--mono-font);
}
 
#action-area h1 + p + h2 ~ div[style="padding-left:3em;"] > div:is(:nth-of-type(1), :nth-of-type(2), :nth-of-type(3), :nth-of-type(4), :nth-of-type(5), :nth-of-type(6), :nth-of-type(7)) a {
    visibility: hidden !important;
  pointer-events: none;
}
 
#edit-meta-newtag-form a:nth-of-type(2) {
  display: none;
  pointer-events: none;
}
```

[- Close](javascript:;)

---

Source: [https://backrooms-wiki.wikidot.com/theme:nuliminal](https://backrooms-wiki.wikidot.com/theme:nuliminal)
