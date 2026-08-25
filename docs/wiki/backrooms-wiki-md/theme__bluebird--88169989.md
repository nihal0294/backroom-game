---
title: "Bluebird Theme"
source: "https://backrooms-wiki.wikidot.com/theme:bluebird"
retrieved_at: "2026-08-23T23:35:19+00:00"
license: CC-BY-SA-3.0
---

# Bluebird Theme

rating: +17[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  
This theme was created by and is based on the [Original FOJ Theme](theme__followers-of-jerry--c6102acd.md), which was created by [etoisle](etoisle.md). To import this theme to your page, put the following text anywhere inside it:

[[include :backrooms-wiki:theme:bluebird]]

![Missing alt text.](https://backrooms-wiki.wdfiles.com/local--files/theme:bluebird/jerr.jpg)

Look at this dude.

# Examples:

A horizontal rule can be created with 5 hyphens "-----" and extends across the whole page if it's not placed inside anything (eg a blockquote). The lines separating sections of this document are horizontal rules.

---

Titles can be created by putting between one and six plus "+" at the start of the line

[Titles](javascript:;)

[Titles](javascript:;)

# First Title

## Second Title

### Third Title

#### Fourth Title

##### Fifth Title

###### Sixth Title

  

[SD Classes](javascript:;)

[SD Classes](javascript:;)

SURVIVAL DIFFICULTY:

Class 0

- {$one}
- {$two}
- {$three}

SURVIVAL DIFFICULTY:

Class 1

- {$one}
- {$two}
- {$three}

SURVIVAL DIFFICULTY:

Class 2

- {$one}
- {$two}
- {$three}

SURVIVAL DIFFICULTY:

Class 3

- {$one}
- {$two}
- {$three}

SURVIVAL DIFFICULTY:

Class 4

- {$one}
- {$two}
- {$three}

SURVIVAL DIFFICULTY:

Class 5

- {$one}
- {$two}
- {$three}

SURVIVAL DIFFICULTY:

Class unknown

- {$one}
- {$two}
- {$three}

  

[CECS](javascript:;)

[CECS](javascript:;)

**CONCORD ENTITY CLASSIFICATION SYSTEM**

ENTITY ID: 7  
HABITAT(S): [1](level-1.md), [2](level-2.md)

**[IETS](iets.md):**  
**2?**

CLASS:

Zoophoid

PROPERTIES:

HVM

VRL-A

VRL-B

NCR

MCH

CBR

SYN

DMN

SSV

CVL

RAD

NRO

TXC

PYR

RLA

UNQ

AGR

BNV

{$custom-name}

  
   

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
> > Nested blockquotes[1](javascript:;)

| This is a | table |
| --- | --- |
| You should know | how to make these |
| already | |

Title Test  
[[div class="titleblock"]]  
[[span class="titlebox"]]Title Test[[/span]]

[[/div]]

[[div class="styled-quote"]]

[[/div]]

[[div class="dark-styled-quote"]]

[[/div]]

[[div class="darkblock"]]

[[/div]]

[[div class="lightblock"]]

[[/div]]

You are a cat.  
**You are a cat.**  
*You are a cat.*  
You are a cat.  
You are a cat.  
You are a cat

---

The header, title and mono font used is Fantasque Sans Mono.  
The body font used is Proxima Nova.

---

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
@import url(https://backrooms-wiki.wdfiles.com/local--code/component%3Apatch/1);
 
:root {
    --theme-base: "black-highlighter";
    --theme-id: "bluebird-theme";
    --theme-name: "Bluebird Theme";
 
    --logo-image: url("http://backrooms-sandbox-2.wdfiles.com/local--files/cutthebirch-v/jery.svg");
    --header-title: "Followers of Jerry";
    --header-subtitle: "Jerry is everything.";
 
    --white-monochrome: 223, 223, 223;
    --pale-gray-monochrome: 244, 244, 244;
    --light-pale-gray-monochrome: var(--pale-gray-monochrome);
    --very-light-gray-monochrome: 215, 215, 215;
    --light-gray-monochrome: var(--pale-gray-monochrome);
    --gray-monochrome: var(--dark-accent);
    --dark-gray-monochrome: var(--bright-accent);
    --black-monochrome: var(--dark-accent);
    --pale-accent: 171, 221, 235;
    --bright-accent: 0, 113, 201;
    --medium-accent: 51, 165, 255;
    --dark-accent: 39, 34, 120;
 
    --cecs-accent: var(--medium-accent) !important;
 
    --header-gradient-color-bottom: var(--dark-accent);
    --header-gradient-color-middle: var(--bright-accent);
    --header-gradient-color-top: var(--bright-accent);
    --swatch-menubg-color: var(--pale-gray-monochrome);
    --swatch-topmenu-border-color: var(--dark-accent);
    --link-color: var(--bright-accent);
    --hover-link-color: var(--link-color);
 
    --rating-module-button-plus-color: var(--dark-accent);
    --rating-module-button-negative-color: var(--dark-accent);
    --rating-module-button-cancel-color: var(--dark-accent);
    --rating-module-button-credit-color: var(--dark-accent);
 
    --gradient-header: linear-gradient(
     to top,
     rgb(var(--header-gradient-color-bottom)) 0%,
     rgb(var(--header-gradient-color-middle)) 90%,
     rgb(var(--header-gradient-color-top)) 100%
    );
 
    --sd-border: var(--dark-accent); /* SCUTOID LOOK HERE */
}
 
#container {
   background-image: none;
}
 
#header::before {
   left: -16.5rem;
   background-size: auto 14rem;
}
 
#skrollr-body {
    background-image:
     var(--gradient-header),
     var(--gradient-topmenu),
     var(--gradient-background)!important;
    background-size:
     var(--header-background-image-size),
     100% var(--final-header-height-on-desktop),
     100% var(--background-gradient-distance);
}
 
.page-rate-widget-box {
     padding: .1em;
     border-radius: 0px 10px 0px 10px;
     border-color: rgb(var(--dark-accent));
}
 
.page-rate-widget-box,
.page-rate-widget-box .rate-points,
.page-rate-widget-box .rateup,
.page-rate-widget-box .ratedown,
.page-rate-widget-box .cancel {
   background: rgb(var(--pale-accent)) !important;
}
 
h1, h2, h3, h4, h5, h6 {
    color: rgb(var(--bright-accent));
}
 
#page-title {
   color: rgb(var(--bright-accent));
   border-color: rgb(var(--bright-accent));
}
 
.yui-navset .yui-nav a,
.yui-navset .yui-navset-top .yui-nav a {
    background-color: rgb(var(--pale-accent));
}
 
.yui-navset .yui-nav li,
.yui-navset .yui-navset-top .yui-nav li {
    -webkit-box-shadow: 0 0 0 0.0625rem rgb(var(--dark-accent));
    box-shadow: 0 0 0 0.0625rem rgb(var(--dark-accent));
}
 
.yui-navset .yui-content {
    background-color: rgb(var(--pale-gray-monochrome));
}
 
.yui-navset .yui-content,
.yui-navset .yui-navset-top .yui-content {
    border-color: rgb(var(--dark-accent));
}
 
div.blockquote, blockquote {
    background-color: rgb(var(--pale-accent));
    border-color: rgb(var(--dark-accent));
}
 
table.wiki-content-table th {
    background-color: rgb(var(--dark-accent));
    color: rgb(var(--pale-gray-monochrome));
}
 
.footnotes-footer {
    border-color:  rgb(var(--dark-accent));
}
 
#side-bar .side-block {
    color: rgb(var(--pale-gray-monochrome));
}
 
#side-bar:hover {
    background:  rgb(var(--bright-accent));
}
 
.scp-image-block {
   border: none;
}
 
.yui-navset .yui-nav .selected,
.yui-navset .yui-navset-top .yui-nav .selected,
.yui-navset .yui-nav .selected a:active,
.yui-navset .yui-nav .selected a:focus {
    background-color: rgb(var(--dark-accent));
}
 
.styled-quote,
.lightblock {
    background-color: rgb(var(--pale-accent));
}
 
.titleblock {
   background-color: rgb(var(--pale-accent));
   padding: 0.5rem 1rem 0.10rem;
   margin: 1.5rem 0rem 0.5rem 0rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
   border: solid rgb(var(--dark-accent)) 2px;
}
 
.titlebox{
  position: relative;
  top: -1.6rem;
  background-color: rgb(var(--dark-accent));
  color: rgb(var(--pale-gray-monochrome));
  padding: 0.25rem 1rem;
  line-height: 0.1rem;
}
 
.footnotes-footer {
    --footnotes-footer-bg-color: var(--pale-accent);
}
 
table.wiki-content-table td,
table.wiki-content-table th {
   border-color: rgb(var(--dark-accent)) !important;
}
 
#account-topbutton {
   border-color: rgb(var(--pale-gray-monochrome));
}
 
#login-status a {
   color: rgb(var(--pale-gray-monochrome));
}
 
hr {
    border-color: rgb(var(--dark-accent));
    background-color: rgb(var(--dark-accent));
}
 
html,
#lock-info,
div.note,
input.checkbox,
input.text,
textarea {
    scrollbar-color: rgba(var(--medium-accent), 0.7) rgba(var(--swatch-tertiary-color), .1);
}
 
body::-webkit-scrollbar-thumb,
html::-webkit-scrollbar-thumb,
input.text::-webkit-scrollbar-thumb,
textarea::-webkit-scrollbar-thumb,
::-webkit-scrollbar-thumb {
    background: rgba(var(--medium-accent), 0.7)
}
 
.darkblock a,
.dark-styled-quote a {
    color: rgb(var(--link-color));
}
 
.darkblock hr,
.dark-styled-quote hr {
   border-color: rgb(var(--pale-gray-monochrome));
   background-color: rgb(var(--pale-gray-monochrome));
}
 
.darkblock a.newpage,
.dark-styled-quote a.newpage {
    color: rgb(var(--newpage-color));
}
 
#header h1 a:hover:before {
     text-shadow: var(--header-text-shadow);
}
 
/* ==SD CLASS CODE== */
 
.top-box {
   border-color: rgb(var(--sd-border)) !important;
}
 
.bottom-box ul li {
   color: rgb(var(--sd-border)) !important;
}
 
.bottom-box ul li:before {
   background: rgb(var(--sd-border)) !important;
}
 
.top-box .gradient-box {
  background: linear-gradient(90deg, rgba(var(--sd-border),1) 0%, rgba(var(--sd-border),0) 36%) !important;
}
 
.header-diamond {
   background-image: url("data:image/svg+xml,%3Csvg version='1.1' id='Layer_1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' x='0px' y='0px' viewBox='0 0 300.9 284.5' style='enable-background:new 0 0 300.9 284.5;' xml:space='preserve'%3E%3Cstyle type='text/css'%3E .st0%7Bfill:%23272278;%7D .st1%7Bfill:%23272278;%7D%0A%3C/style%3E%3Cg%3E%3Cpolygon class='st1' points='73.4,32.6 0,105.4 13.6,105.4 86.4,32.6 '/%3E%3Cpolygon class='st1' points='26.5,105.4 40.1,105.4 112.9,32.6 99.3,32.6 '/%3E%3C/g%3E%3Cpolyline class='st1' points='287.3,105.4 214.5,32.6 227.5,32.6 287.3,91.9 '/%3E%3Cpolygon class='st1' points='274.4,105.4 260.8,105.4 188,32.6 201.6,32.6 '/%3E%3C/svg%3E") !important;
}
 
.top-box.class-unknown .header-diamond { filter: none !important; }
.top-box.class-unknown:before, .top-box.class-unknown .header-diamond .diamond-pattern{ opacity: 0.15 !important; }
 
.top-box .header-diamond .diamond-image {
   filter: brightness(0%) invert(100%);
}
 
.top-box.class-0 {
   background: rgb(var(--pale-accent)) !important;
}
 
.header-diamond .diamond-color.class-0 {
   background: rgb(var(--pale-accent)) !important;
}
 
.top-box.class-1, .top-box.class-2 {
   background: rgb(var(--medium-accent)) !important;
}
 
.header-diamond .diamond-color.class-1,
.header-diamond .diamond-color.class-2 {
   background: rgb(var(--medium-accent)) !important;
}
 
.top-box.class-3, .top-box.class-4 {
   background: rgb(var(--bright-accent)) !important;
}
 
.header-diamond .diamond-color.class-3,
.header-diamond .diamond-color.class-4 {
   background: rgb(var(--bright-accent)) !important;
}
 
.top-box.class-5, .top-box.class-unknown {
   background: rgb(var(--dark-accent)) !important;
}
 
.header-diamond .diamond-color.class-5,
.header-diamond .diamond-color.class-unknown {
   background: rgb(var(--dark-accent)) !important;
}
```

[- Close](javascript:;)

[Author/Licensing](javascript:;)

[Hide author](javascript:;)

**Author:**  
  
[Author Page](cutthebirch.md)

**Images:**  
[fly parrot](https://svgsilh.com/image/3276059.html) by [SVG SILH](index.md) is licensed under CC0 1.0

Footnotes

[1](javascript:;). And here's a footnote!

---

Source: [https://backrooms-wiki.wikidot.com/theme:bluebird](https://backrooms-wiki.wikidot.com/theme:bluebird)
