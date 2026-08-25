---
title: "Nostalgia Fullscreen"
source: "https://backrooms-wiki.wikidot.com/theme:nostalgia-fullscreen"
retrieved_at: "2026-08-23T23:39:19+00:00"
license: CC-BY-SA-3.0
---

# Nostalgia Fullscreen

rating: +31[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  

Info

This theme was created by and is intended as an alternative to 's theme [Nostalgia OS](theme__nostalgia-os--d15d9e81.md).

Thanks to for putting up with wikidon't so as to publish it!

Thanks to too for techlighting it on EN by helping fixing its nuliminal issues!

[Close](index.md)

**Nostalgia Fullscreen**  
To incorporate this theme into your page, place the line below anywhere inside the page (preferably at the beginning):

[[include :backrooms-wiki:theme:nostalgia-fullscreen]]

  
  

# **Examples:**

![Missing alt text.](https://live.staticflickr.com/8161/7296428526_24eb697a0c_b.jpg)

Yes it's the same image.

A horizontal rule can be created with 5 hyphens "-" and extends across the entire page if it is not placed in something (eg a blockquote). Horizontal rules separate sections of the article.

---

Headers can be created by putting one to six plus "+" at the start of the line

[+ Your Title](javascript:;)

[- Your Title](javascript:;)

# First Title

## Second Title

### Third Title

#### Fourth Title

##### Fifth Title

###### Sixth Title

  
 

[Collapsible](javascript:;)

[Close](javascript:;)

> [[collapsible show="+ Titles" hide="- Titles"]]  
> [[/collapsible]]

- [*Tab*](javascript:;)
- [*Tab Setting*](javascript:;)
- [*Large Tab*](javascript:;)
- [*This tab has a very long name for some obscure reason. I wonder why?*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)

This is a tab.

Hey look, no more text here.

How original.

This is a large tab. It contains a lot of unnecessary text.

This is a large tab. It contains a lot of unnecessary text.

This is a large tab. It contains a lot of unnecessary text.

This is a large tab. It contains a lot of unnecessary text.

This is a large tab. It contains a lot of unnecessary text.

This is a large tab. It contains a lot of unnecessary text.

This is a large tab. It contains a lot of unnecessary text.

This is a large tab. It contains a lot of unnecessary text.

This is a large tab. It contains a lot of unnecessary text.

This is a large tab. It contains a lot of unnecessary text.

This is a large tab. It contains a lot of unnecessary text.

This is a large tab. It contains a lot of unnecessary text.

> This is a blockquote, created by putting ">" at the start of each line.  
> More text
>
> ---
>
> This is a horizontal rule
>
> > Nesting blockquote

| This is a | table |
| --- | --- |
| You should already | know how to |
| do this | |

Foot[1](javascript:;)  
This text  
is here  
*so that you can*  
**see what**  
this all looks like  
with different  
formatsand  
othermodifications  
[links that don't exist](https://backrooms-wiki.wikidot.com/links-that-don-t-exist)  
[and links that do exist!](https://www.youtube.com/watch?v=dQw4w9WgXcQ)

# **Blocks:**

---

### **Blocks:**

[[div class="lightblock"]]

[[/div]]

---

[[div class="lighterblock"]]

[[/div]]

---

[[div class="bluescreen"]]

[[/div]]

---

[[div class="logoblock"]]

[[/div]]

---

### **Titleblocks:**

INSERT TEXT

[[div class="lighterblock"]]  
[[span class="titlebox"]]INSERT TEXT[[/span]]

[[/div]]

---

The header font is Open Sans.  
The title font Josefin Sans.  
The body font is Josefin Sans.  
The monospace font is Open Sans.

---

[Theme Code](javascript:;)

[Close](javascript:;)

```
:root {
   --theme-base: "black-highlighter";
   --theme-id: "nostalgia-fullscreen";
   --theme-name: "Nostalgia-fullscreen";
   --logo-image: url("http://backrooms-wiki.wdfiles.com/local--files/theme%3Anostalgia-os/nOSwindow.png");
    --header-title: "The Backrooms";
    --header-subtitle: "l o a d i n g . . .";
 
body {
    color: #000000;
    font-family: "MS Sans Serif";
    font-size: 14px;
    image-rendering: pixelated;
    word-break: unset;
    --themeColor: #000000;
    --accentColor: #000000;
}
 
/* Typefaces */
    --body-font: "MS Sans Serif", sans-serif;
    --header-font: "MS Sans Serif", sans-serif;
    --title-font: "MS Sans Serif", sans-serif;
    --mono-font: "Courier New", monospace;
 
   --white-monochrome: 237, 233, 223;
   --pale-gray-monochrome: 255, 251, 240;
   --light-gray-monochrome: 160, 160, 160;
   --gray-monochrome: 72, 69, 60;
   --black-monochrome: 25, 20, 16;
   --bright-accent: 140, 136, 126;
   --medium-accent: 72, 69, 60;
   --dark-accent: 140, 136, 126;
   --pale-accent: 140, 136, 126;
 
   --link-color: 44, 189, 231;
   --hover-link-color: 63, 137, 211;
   --visited-link-color: 44, 189, 231;
 
    /* Box-Shadow 1px Borders */
    --box-border-bottom: 4px 4px 0 0 rgba(0, 0, 0, 0.2);
    --box-border-top: 4px 4px 0 0 rgba(0, 0, 0, 0.2);
    --box-border-left: 4px 4px 0 0 rgba(0, 0, 0, 0.2);
    --box-border-right: 4px 4px 0 0 rgba(0, 0, 0, 0.2);
    --box-border-all: 4px 4px 0 0 rgba(0, 0, 0, 0.2);
 
    --swatch-topmenu-bg-color: rgb(37,37,229);
 
}
 
body {
    color: #000000;
    font-size: 14px;
    image-rendering: pixelated;
    word-break: unset;
    --themeColor: #35A5E1;
    --accentColor: #35A5E1;
    text-align: justify;
}
 
#container {
   background-image: url("https://live.staticflickr.com/8161/7296428526_24eb697a0c_b.jpg");
background-size: cover;
background-position: center;
background-repeat: no-repeat;
opacity: 1;
}
 
#top-bar {
    --dropdown-bg-color: var(--pale-gray-monochrome), 0.9;
    --dropdown-border-color: 84,95,215;
    --dropdown-links-color: var(--black-monochrome), 0.9;
 
}
 
#header h1 a {
    font-family: sans-serif;
}
 
.scp-image-block {
    box-shadow: 4px 4px 0 0 rgba(0, 0, 0, 0.2);
    border-radius: 0;
    margin: 0 2em 1em;
    background: #ffffff;
}
 
.scp-image-block .scp-image-caption {
background-color: var(--bright-accent);
color: black;
}
 
#page-title, h1, h2, h3, h4, h5, h6 {
    color: white;
    text-shadow: 2px 2px 0 rgba(var(--black-monochrome),0.25);
}
 
:is(blockquote, .blockquote, div.blockquote, [class*="blockquote"]) {
    border: #EEE outset 2px;
    background-color: #C0C0C0;
    color: black;
    box-shadow: var(--quote-shadow);
}
 
#page-title::after, .meta-title::after {
    display: none;
}
 
#page-title, .meta-title {
    color: white;
    margin-bottom: 0.5em;
    justify-content: center;
    border-bottom: solid 1px rgb(var(--light-gray-monochrome));
    padding-bottom: 5px;
}
 
:not(.page-rate-widget-box):not(#search-top-box-form) > .btn, :not(.page-rate-widget-box):not(#search-top-box-form) > .button, :not(.page-rate-widget-box):not(#search-top-box-form) > .owindow .button-bar a, :not(.page-rate-widget-box):not(#search-top-box-form) > button, :not(.page-rate-widget-box):not(#search-top-box-form) > div.buttons input, :not(.page-rate-widget-box):not(#search-top-box-form) > input.button, .page-rate-widget-box {
    border: #eee outset 2px;
    box-shadow: var(--quote-shadow) !important;
}
 
.page-rate-widget-box { background: rgb(var(--ui-button-bg)); }
 
#footer {
    border: #eee outset 2px;
}
 
div.yui-navset div.yui-content {
    color: #000000;
    background: #C0C0C0;
    border-left: #DFDFDF outset 2px;
    border-right: #DFDFDF outset 2px;
    border-bottom: #DFDFDF outset 2px;
}
 
.yui-navset .yui-nav a,
div.yui-navset div.yui-navset-top .yui-nav a {
    /* protect nested tabviews from other orientations */
    border: #DFDFDF outset 2px;
}
 
.yui-navset .yui-nav .selected a,
.yui-navset .yui-nav .selected a em,
.yui-navset .yui-nav a em,
.yui-navset .yui-navset-top .yui-nav a em {
    border-color: transparent;
}
 
.yui-navset .yui-nav,
.yui-navset .yui-navset-top .yui-nav {
    border-color: #35A5E1;
box-shadow: 0 0 0 0 hsla(0,0%,100%,0);
}
 
div.yui-navset ul.yui-nav a,
div.yui-navset div.yui-navset-top ul.yui-nav a {
    background: #C0C0C0;
    border-left: #DFDFDF outset 2px;
    border-right: #DFDFDF outset 2px;
    border-top: #DFDFDF outset 2px;
box-shadow: 0 0 0 0 hsla(0,0%,100%,0)!important;
}
 
div.yui-navset ul.yui-nav a:hover,
div.yui-navset ul.yui-nav a:focus {
    background: #C0C0C0;
    border-left: #DFDFDF inset 2px;
    border-right: #DFDFDF inset 2px;
    border-top: #DFDFDF inset 2px;
}
 
div.yui-navset ul.yui-nav .selected a,
div.yui-navset ul.yui-nav .selected a:focus,
div.yui-navset ul.yui-nav .selected a:hover {
    background: #35A5E1;
    border-left: #DFDFDF outset 2px;
    border-right: #DFDFDF outset 2px;
    border-top: #DFDFDF outset 2px;
}
 
.yui-navset .yui-nav li,
.yui-navset .yui-navset-top .yui-nav li {
box-shadow: 0 0 0 0 hsla(0,0%,100%,0)!important;
}
 
.yui-navset .yui-nav,
.yui-navset .yui-navset-top .yui-nav {
    border-color: #000000;
    border: 0;
    -webkit-box-shadow: box-shadow: 0 0 0 0 hsla(0,0%,100%,0)!important;
    box-shadow: 0 0 0 0 #35A5E1!important;
margin: 0 0 0 0 !important;
width: 100%;
}
 
.yui-navset .yui-nav .selected a,
.yui-navset .yui-nav .selected a em {
    color: #000000;
}
 
.yui-navset .yui-content {
    background-color: #35A5E1;
}
 
.yui-navset .yui-content,
.yui-navset .yui-navset-top .yui-content {
    border-color: #35A5E1;
    /* content border */
}
 
.lightblock {
    background-color:rgb(211,211,211);
    color:rgb(0,0,0);
    padding: 0.01rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
    border: solid 0.3rem rgb(84,95,215);
 }
 
.lighterblock {
    background-color:rgb(255,255,255);
    color:rgb(0,0,0);
    padding: 0.01rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
    border: solid 0.3rem rgb(84,95,215);
 }
 
.titlebox{
    color: rgb(255,255,255);
    position: relative;
    top: -1.6rem;
    background-color: rgb(84,95,215);
    padding: 0.5rem 2rem;
    line-height: 0.1rem;
 }
 
.bluescreen {
   background-color:rgb(37,37,229);
   color:rgb(255,255,255);
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
.logoblock{
   padding: 0.01rem 1rem;
   color:rgb(255, 255, 255);
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
   margin: 0.5rem 0 0.5rem 0.25rem;
   display: block;
   position: relative;
   background-color: rgb(0,0,0);
}
 
    .logoblock::after{
    content: "";
    float: center;
    border: solid 2px #0000;
    background: url(http://backrooms-wiki.wdfiles.com/local--files/theme%3Anostalgia-os/nOSwindow.png) center/70% no-repeat;
    opacity: 0.7;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0;
    position: absolute;
    z-index: 1;
    }
```

[Credits](javascript:;)

[Credits](javascript:;)

> **Name:** Windows Logo  
> **Author:** Microsoft  
> **License:** public domain  
> **Link:** <https://commons.wikimedia.org/wiki/File:Windows_Logo_(1992-2001).svg>

> **Name:** Imagen Windows 'praderas' ???  
> **Author:** jacilluch  
> **License:** CC BY-SA 2.0  
> **Link:** <https://openverse.org/image/1f58ef9d-75a3-491c-a4a7-8e29e2ab09df?q=window%20XP%20bliss>

Footnotes

[1](javascript:;). note

---

Source: [https://backrooms-wiki.wikidot.com/theme:nostalgia-fullscreen](https://backrooms-wiki.wikidot.com/theme:nostalgia-fullscreen)
