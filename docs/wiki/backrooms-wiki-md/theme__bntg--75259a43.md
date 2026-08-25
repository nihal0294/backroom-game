---
title: "B.N.T.G. Theme"
source: "https://backrooms-wiki.wikidot.com/theme:bntg"
retrieved_at: "2026-08-23T23:42:28+00:00"
license: CC-BY-SA-3.0
---

# B.N.T.G. Theme

rating: +27[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

This theme was created by for use in articles relating to the B.N.T.G.

[[include :backrooms-wiki:theme:bntg]]

![Missing alt text.](https://backrooms-wiki.wdfiles.com/local--files/theme:bntg/bezos.jpg)

:)

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

  
 

- [*What?*](javascript:;)
- [*How?*](javascript:;)
- [*This tab title is long*](javascript:;)
- [*P.S.*](javascript:;)

This is an alternate tabview that's made to look like filing tabs. I was inspired by [a similar thing](https://scp-wiki.wikidot.com/component:chicago-spirit) on the SCP wiki.

Also, if you're on a phone right now, you may notice that having even like, 3 tabs in this fashion does not work very will on mobile. If you're using something like this in your article, I would suggest using some css to make it so that a normal tabview displays on mobile devices.

You just have to wrap it in a div with the class "filetabs" like this:

[[div class="filetabs"]]  
[[tabview]]  
[[tab TAB TITLE]]  
TAB CONTENT  
[[/tab]]  
[[tab TAB TITLE]]  
TAB CONTENT  
[[/tab]]  
[[/tabview]]  
[[/div]]

And if it's too much longer than that, it's just not going to work very well.

If you want to set something similar for your own theme or just to work with an existing theme, let me know, and I'd be glad to help!

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

The header and title font used is Staatliches.  
The body font used is PT Serif.

---

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
@import url(https://backrooms-wiki.wdfiles.com/local--code/component%3Apatch/1);
 
@import url('https://fonts.googleapis.com/css2?family=Staatliches&display=swap');
@import url('https://fonts.googleapis.com/css2?family=PT+Serif&display=swap');
 
:root {
    --theme-base: "black-highlighter";
    --theme-id: "bntg";
    --theme-name: "B.N.T.G. Theme";
 
    --logo-image: none;
    --header-title: "B.N.T.G.";
    --header-subtitle: "Those who control trade control the world.";
 
    --header-font: 'Staatliches';
    --title-font: 'Staatliches';
    --body-font: 'PT Serif';
 
    --white-monochrome: 220, 221, 215;
    --pale-gray-monochrome: var(--white-monochrome);
    --light-pale-gray-monochrome: var(--pale-gray-monochrome);
    --light-gray-monochrome: var(--pale-gray-monochrome);
    --gray-monochrome: var(--dark-accent);
    --dark-gray-monochrome: 64, 61, 60;
    --black-monochrome: var(--medium-accent);
    --pale-accent: 232, 231, 213;
    --bright-accent: 86, 108, 90;
    --medium-accent: 102, 102, 102;
    --dark-accent: var(--bright-accent);
 
    --cecs-accent: var(--medium-accent) !important;
 
    --header-gradient-color-bottom: var(--dark-gray-monochrome);
    --header-gradient-color-middle: var(--dark-gray-monochrome);
    --header-gradient-color-top: var(--dark-gray-monochrome);
    --swatch-menubg-color: var(--pale-gray-monochrome);
    --swatch-topmenu-border-color: var(--dark-accent);
    --link-color: 68, 117, 77;
    --hover-link-color: var(--link-color);
    --visited-link-color: var(--link-color);
    --swatch-secondary-color: var(--pale-accent);
 
    --rating-module-button-plus-color: var(--dark-accent);
    --rating-module-button-negative-color: var(--dark-accent);
    --rating-module-button-cancel-color: var(--dark-accent);
    --rating-module-button-credit-color: var(--dark-accent);
 
    --gradient-header: repeating-linear-gradient(
      -30deg,
      rgba(var(--dark-gray-monochrome), 0.8),
      rgba(var(--dark-gray-monochrome), 1) 50px
    );
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
 
.page-rate-widget-box,
.page-rate-widget-box .rate-points,
.page-rate-widget-box .rateup,
.page-rate-widget-box .ratedown,
.page-rate-widget-box .cancel {
   background: rgb(var(--pale-accent)) !important;
}
 
.yui-navset .yui-nav li,
.yui-navset .yui-navset-top .yui-nav li {
    -webkit-box-shadow: 0 0 0 0.0625rem rgb(var(--dark-accent));
    box-shadow: 0 0 0 0.0625rem rgb(var(--dark-accent));
}
 
.yui-navset .yui-nav a,
.yui-navset .yui-navset-top .yui-nav a {
    background-color: rgb(var(--pale-accent));
}
 
.yui-navset .yui-content {
    background-color: rgb(var(--pale-accent));
}
 
.yui-navset .yui-content,
.yui-navset .yui-navset-top .yui-content {
    border-color: rgb(var(--dark-accent));
}
 
div.blockquote, blockquote {
    background-color: rgb(var(--pale-accent));
    border-color: rgb(var(--dark-accent));
    border-style: solid;
}
 
table.wiki-content-table th {
    background-color: rgb(var(--dark-accent));
    color: rgb(var(--pale-gray-monochrome));
}
 
.footnotes-footer {
    border-color:  rgb(var(--dark-accent));
}
 
#side-bar .side-block {
    color: rgb(var(--swatch-text-general));
}
 
#side-bar:hover {
    background:  rgb(var(--pale-accent));
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
    background-color: rgb(var(--pale-accent));
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
    color: rgb(var(--pale-accent));
}
 
::selection {
    background: rgba(var(--dark-gray-monochrome), .25);
}
 
.darkblock h1,
.dark-styled-quote h1,
.darkblock h2,
.dark-styled-quote h2,
.darkblock h3,
.dark-styled-quote h3,
.darkblock h4,
.dark-styled-quote h4,
.darkblock h5,
.dark-styled-quote h5 {
    color: rgb(var(--white-monochrome));
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
 
.dark-styled-quote {
    border-color: rgb(var(--pale-accent));
}
 
#header h1, #header h1 a {
   top: 0.5rem;
}
 
#header h2, #header h2 span, #header h2 span::before {
   top: 1.75rem;
}
 
.filetabs .yui-nav  {
    background: none;
}
 
body #content-wrap .filetabs .yui-navset .yui-nav .selected a {
    color: rgb(var(--black-monochrome)) !important;
}
 
.filetabs .yui-navset .yui-nav .selected {
    transform: translateY(1px);
}
 
.filetabs .yui-navset .yui-nav li, .yui-navset .yui-navset-top .yui-nav li {
   display: inline-block;
}
 
.filetabs .yui-navset .yui-nav, .yui-navset .yui-navset-top .yui-nav {
   display: block;
}
 
.filetabs .yui-navset .yui-content {
   border-top-width: 15px;
}
 
.yui-navset .yui-nav a:before { display: none; }
 
.filetabs .yui-navset .yui-nav a,
.filetabs .yui-navset .yui-navset-top .yui-nav a,
.filetabs .yui-navset .yui-nav .selected a,
.filetabs .yui-navset .yui-nav a:focus,
.filetabs .yui-navset .yui-navset-top .yui-nav a:focus,
.filetabs .yui-navset .yui-nav a:hover,
.filetabs .yui-navset .yui-navset-top .yui-nav a:hover {
    background-color: transparent;
    background-image: url("data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8' standalone='no' %3F%3E%3C!DOCTYPE svg PUBLIC '-//W3C//DTD SVG 1.1//EN' 'http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd'%3E%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' version='1.1' preserveAspectRatio='none' viewBox='0 0 150 45' xml:space='preserve'%3E%3Cdesc%3ECreated with Fabric.js 4.6.0%3C/desc%3E%3Cdefs%3E%3C/defs%3E%3Cg transform='matrix(1 0 0 1 74.95 22.39)' id='bC-LIzxo7Tu37zCdkDrqS' %3E%3Cpath style='stroke: rgb(0,0,0); stroke-width: 0; stroke-dasharray: none; stroke-linecap: butt; stroke-dashoffset: 0; stroke-linejoin: miter; stroke-miterlimit: 4; fill: rgb(86,108,90); fill-rule: nonzero; opacity: 1;' vector-effect='non-scaling-stroke' transform=' translate(0, 0)' d='M -74.94856 22.50703 L -60.0064 -12.520110000000003 C -60.0064 -12.520110000000003 -55.89385 -21.849030000000003 -47.235839999999996 -22.281930000000003 C -38.57782999999999 -22.714830000000003 46.87608 -22.39016 46.87608 -22.39016 C 46.87608 -22.39016 56.05659 -23.219710000000003 61.40639 -12.520120000000002 C 66.75618 -1.8205300000000015 74.94856 22.506959999999996 74.94856 22.506959999999996 z' stroke-linecap='round' /%3E%3C/g%3E%3Cg transform='matrix(1 0 0 1 75.18 17.97)' id='E8ePkHu_UUyvFWDAIzFyP' %3E%3Cpath style='stroke: rgb(0,0,0); stroke-width: 0; stroke-dasharray: none; stroke-linecap: butt; stroke-dashoffset: 0; stroke-linejoin: miter; stroke-miterlimit: 4; fill: rgb(232,231,213); fill-rule: nonzero; opacity: 1;' vector-effect='non-scaling-stroke' transform=' translate(0, 0)' d='M -46.15385 12.0108 L -46.15385 -12.01079 L 46.153839999999995 -12.01079 L 46.153839999999995 12.0108 z' stroke-linecap='round' /%3E%3C/g%3E%3C/svg%3E");
    background-size: 100% 2.7rem;
    background-repeat: no-repeat;
    border-width: 0px;
    border-top: none;
    background-position: top;
}
 
.filetabs .yui-navset .yui-nav a,
.filetabs .yui-navset .yui-navset-top .yui-nav a {
   padding: 4px 20px 0px 20px;
}
 
.filetabs .yui-navset .yui-nav .selected a,
.filetabs .yui-navset .yui-nav a:focus,
.filetabs .yui-navset .yui-navset-top .yui-nav a:focus,
.filetabs .yui-navset .yui-nav .selected a:hover,
.filetabs .yui-navset .yui-navset-top .yui-nav .selected a:hover {
    padding: 8px 20px 0px 20px;
}
 
.filetabs .yui-navset .yui-nav a:hover,
.filetabs .yui-navset .yui-navset-top .yui-nav a:hover {
   padding: 6px 20px 0px 20px;
}
 
.filetabs .yui-navset .yui-nav .selected a:before, .filetabs .yui-navset .yui-nav .selected:active a:before, .filetabs .yui-navset .yui-nav .selected:focus a:before, .filetabs .yui-navset .yui-nav .selected:hover a:before {
   content: none;
   display: none;
}
 
.filetabs .yui-navset .yui-nav,
.filetabs .yui-navset .yui-navset-top .yui-nav {
    border-color: transparent;
}
 
.filetabs .yui-navset .yui-nav .selected,
.filetabs .yui-navset .yui-navset-top .yui-nav .selected,
.filetabs .yui-navset .yui-nav .selected a:active,
.filetabs .yui-navset .yui-nav .selected a:focus,
.filetabs .yui-navset .yui-nav li,
.filetabs .yui-navset .yui-navset-top .yui-nav li {
   background-color: transparent;
}
 
.filetabs .yui-navset .yui-nav li,
.filetabs .yui-navset .yui-navset-top .yui-nav li {
   box-shadow: none;
}
 
.filetabs .yui-navset .yui-nav li {
   margin-right: 36px;
}
 
.filetabs .yui-navset .yui-nav .selected a {
   color: rgb(var(--swatch-text-general)) !important;
}
 
.filetabs .yui-navset .yui-nav a:focus,
.filetabs .yui-navset .yui-nav a:hover {
   color: rgb(var(--swatch-text-general));
}
 
.filetabs .yui-navset .yui-nav .selected a em,
.filetabs .yui-navset .yui-nav .selected a:hover em {
   position: relative;
   top: -4px;
}
 
.filetabs .yui-navset .yui-nav a:hover em {
   position: relative;
   top: -2px;
}
 
.filetabs .yui-navset .yui-nav li,
.filetabs .yui-navset .yui-navset-top .yui-nav li {
   border-bottom: solid 1px rgb(var(--white-monochrome));
}
 
.filetabs .yui-navset .yui-nav li.selected,
.filetabs .yui-navset .yui-navset-top .yui-nav li.selected {
   border-bottom: none;
   z-index: 1;
}
 
code,
.code {
   background-color: rgb(var(--pale-accent));
}
 
#search-top-box-input,
#search-top-box-form input[type=submit],
#search-top-box-input:focus, #search-top-box-input:hover {
   border-color: rgb(var(--dark-gray-monochrome));
}
 
.scp-image-block .scp-image-caption {
   background-color: rgb(var(--pale-accent));
}
 
#search-top-box-input:focus,
#search-top-box-input:hover {
   color: rgb(var(--swatch-text-general));
}
 
/* ==SD CLASS CODE== */
 
.sd-container {
   --sd-border:64,61,60;
   --sd-symbol:255,255,255;
   --sd-text:255,255,255;
}
 
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
   background-image: url("data:image/svg+xml,%3Csvg version='1.1' id='Layer_1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' x='0px' y='0px' viewBox='0 0 300.9 284.5' style='enable-background:new 0 0 300.9 284.5;' xml:space='preserve'%3E%3Cstyle type='text/css'%3E .st0%7Bfill:%23403d3c;%7D .st1%7Bfill:%23403d3c;%7D%0A%3C/style%3E%3Cg%3E%3Cpolygon class='st1' points='73.4,32.6 0,105.4 13.6,105.4 86.4,32.6 '/%3E%3Cpolygon class='st1' points='26.5,105.4 40.1,105.4 112.9,32.6 99.3,32.6 '/%3E%3C/g%3E%3Cpolyline class='st1' points='287.3,105.4 214.5,32.6 227.5,32.6 287.3,91.9 '/%3E%3Cpolygon class='st1' points='274.4,105.4 260.8,105.4 188,32.6 201.6,32.6 '/%3E%3C/svg%3E") !important;
}
 
.top-box.class-unknown .header-diamond { filter: none !important; }
.top-box.class-unknown:before, .top-box.class-unknown .header-diamond .diamond-pattern{ opacity: 0.15 !important; }
 
.top-box .header-diamond .diamond-image {
   filter: brightness(0%) invert(100%);
}
 
.top-box.class-0,
.top-box.class-1 {
   background: rgb(var(--pale-accent)) !important;
}
 
.header-diamond .diamond-color.class-0,
.header-diamond .diamond-color.class-1 {
   background: rgb(var(--pale-accent)) !important;
}
 
.top-box.class-2,
 .top-box.class-3 {
   background: rgb(var(--medium-accent)) !important;
}
 
.header-diamond .diamond-color.class-2,
.header-diamond .diamond-color.class-3 {
   background: rgb(var(--medium-accent)) !important;
}
 
.top-box.class-4,
 .top-box.class-5 {
   background: rgb(var(--bright-accent)) !important;
}
 
.header-diamond .diamond-color.class-4,
.header-diamond .diamond-color.class-5 {
   background: rgb(var(--bright-accent)) !important;
}
 
.top-box.class-unknown {
   background: rgb(var(--dark-gray-monochrome)) !important;
}
 
.header-diamond .diamond-color.class-unknown {
   background: rgb(var(--dark-gray-monochrome)) !important;
}
```

[- Close](javascript:;)

[Author/Licensing](javascript:;)

[Hide author](javascript:;)

**Author:**  
  
[Author Page](cutthebirch.md)

Footnotes

[1](javascript:;). And here's a footnote!

---

Source: [https://backrooms-wiki.wikidot.com/theme:bntg](https://backrooms-wiki.wikidot.com/theme:bntg)
