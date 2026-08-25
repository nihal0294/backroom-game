---
title: "Endless Theme"
source: "https://backrooms-wiki.wikidot.com/theme:endless"
retrieved_at: "2026-08-23T23:36:45+00:00"
license: CC-BY-SA-3.0
---

# Endless Theme

rating: +22[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

This theme was created by .

To import this theme to your page, put the following text anywhere inside it:

[[include :backrooms-wiki:theme:endless]]

# Examples

![Missing alt text.](https://backrooms-sandbox-2.wdfiles.com/local--files/collab:awriteron0/New-Endless-Logo.png)

The (New) Endless Backrooms Logo

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

[[div class="styled-quote"]]

[[/div]]

[[div class="logoblock"]]

[[/div]]

[[div class="border-logoblock"]]

[[/div]]

[[div class="borderblock"]]

[[/div]]

[[div class="old-border-logoblock"]]

[[/div]]

[[div class="old-logoblock"]]

[[/div]]

[[div class="darkstyled-quote"]]

[[/div]]

---

Theme codes:

[+ Additional Codes](javascript:;)

[Close](javascript:;)

```
/* These codes come from SCP WIKI's Broken World Theme by Etinjat and others two Backrooms themes which I totally forgot */
 
@import url('https://fonts.googleapis.com/css2?family=Black+Ops+One&display=swap');
 
:root {
  --page-title-font: 'Black Ops One', sans-serif;
}
 
#extrac-div-1 {
    position: fixed;
    width: 100vw;
    height: 100vh;
    pointer-events: none;
    background: repeating-linear-gradient(180deg,rgba(0,0,0,0),rgba(0,0,0,.15) 50%,rgba(0,0,0,0));
    background-size: auto 8px;
    opacity: 0.7;
}
 
#extrac-div-2 {
    position: fixed;
    width: 100vw;
    height : 1rem;
    top: 0;
    pointer-events: none;
    background: linear-gradient(to bottom, rgba(var(--bright-accent)) 0%,rgba(var(--bright-accent)) 50%,rgba(var(--bright-accent)) 51%,rgba(var(--bright-accent)) 100%);
    opacity : .1;
    animation: scanm 6s linear infinite;
}
@keyframes scanm {
  0%   { top: -1rem; opacity : .05;}
  25% { top: 50%; opacity: .03;}
  37.5% { top: 75%; opacity: 0.06;}
  50% { top: 100%; opacity: .03;}
  100% { top: 100%;}
}
 
#extrac-div-3 {
    position: fixed;
    width: 100vw;
    height: 100vh;
    pointer-events: none;
    background-image: radial-gradient(circle, rgb(var(--bright-accent)) 4%, rgb(var(--bright-accent)) 45%, rgb(var(--bright-accent)) 95%);
    opacity: 0.25;
    mix-blend-mode: color-dodge;
    background-repeat: no-repeat;
    background-size: cover;
    z-index: 30;
}
 
#page-content > :nth-child(1) { animation-delay: calc(1 * var(--fade-in-delay)); }
#page-content > :nth-child(2) { animation-delay: calc(2 * var(--fade-in-delay)); }
#page-content > :nth-child(3) { animation-delay: calc(3 * var(--fade-in-delay)); }
#page-content > :nth-child(4) { animation-delay: calc(4 * var(--fade-in-delay)); }
#page-content > :nth-child(5) { animation-delay: calc(5 * var(--fade-in-delay)); }
#page-content > :nth-child(6) { animation-delay: calc(6 * var(--fade-in-delay)); }
#page-content > :nth-child(7) { animation-delay: calc(7 * var(--fade-in-delay)); }
#page-content > :nth-child(8) { animation-delay: calc(8 * var(--fade-in-delay)); }
#page-content > :nth-child(9) { animation-delay: calc(9 * var(--fade-in-delay)); }
#page-content > :nth-child(10) { animation-delay: calc(10 * var(--fade-in-delay)); }
#page-content > :nth-child(11) { animation-delay: calc(11 * var(--fade-in-delay)); }
#page-content > :nth-child(12) { animation-delay: calc(12 * var(--fade-in-delay)); }
#page-content > :nth-child(13) { animation-delay: calc(13 * var(--fade-in-delay)); }
#page-content > :nth-child(14) { animation-delay: calc(14 * var(--fade-in-delay)); }
#page-content > :nth-child(15) { animation-delay: calc(15 * var(--fade-in-delay)); }
#page-content > :nth-child(n+15) { animation-delay: calc(16 * var(--fade-in-delay)); }
 
#page-title,
.meta-title {
    font-family: var(--page-title-font);
    font-size: 300%;
    /*! text-align: center ; */
    /*! font-weight: normal ; */
    text-shadow: 0 0.2rem 1rem #7b7b7b;
    padding: 0.8rem 0;
    margin: 1.5rem 0;
    border-bottom: 3px double #666;
}
 
#page-title::after,
.meta-title::after,
#page-title::before,
.meta-title::before {
    flex-grow: 1;
    content: "  ";
    height: 40%;
    margin: 0 1rem;
    background-color: #444;
    background-repeat: repeat-x;
    /*! content: " "; */
}
 
#page-title::before,
.meta-title::before {
    transform: scaleX(-1);
}
 
@media (max-width: 500px) {
    #page-title,
    .meta-title {
            --wght:500;
        border-top: 0px solid #333;
    }
}
 
#breadcrumbs,
.pseudocrumbs {
    align-items: center;
}
 
/* Tabs */
 
.yui-navset .yui-content {
    border: 0.2rem inset #5E5E5E;
}
 
/*  TAB：BORDER*/
.yui-navset .yui-nav a,
.yui-navset .yui-nav .selected,
.yui-navset .yui-navset-top .yui-nav .selected,
.yui-navset .yui-navset-top .yui-nav a {
    border: 0.2rem outset #5E5E5E;
    color: #444;
}
 
.yui-nav {
    background: #888;
    font-family: var(--header-font);
 
}
 
/*  TAB：UNSEL */
.yui-navset .yui-nav a,
.yui-navset .yui-navset-top .yui-nav a {
    filter: drop-shadow(2px 10px 10px #333);
    -webkit-filter: drop-shadow(2px 10px 10px #333);
}
 
.yui-navset .yui-nav a,
.yui-navset .yui-navset-top .yui-nav a,
.yui-navset .yui-nav a::before,
.yui-navset .yui-nav a:hover::before,
.yui-navset .yui-nav .selected:active a::before,
.yui-navset .yui-nav .selected:focus a::before,
.yui-navset .yui-nav .selected:hover a::before,
.yui-navset .yui-nav .selected a::before {
    background: radial-gradient(#ecd5d5, #afb3af, grey);
    transition: none;
}
 
/*  TAB：SEL*/
 
.yui-navset .yui-nav .selected,
.yui-navset .yui-navset-top .yui-nav .selecteda:focus,
.yui-navset .yui-nav .selected a,
.yui-navset .yui-nav .selected a:focus,
.yui-navset .yui-nav .selected a:hover {
    filter: sepia(15%) drop-shadow(0px -3px 1px #333);
    -webkit-filter: sepia(15%) drop-shadow(0px -3px 1px #333);
}
 
.yui-navset .yui-nav .selected {
    z-index: 10;
    margin: 0;
    padding: 0;
    box-shadow: none;
}
 
/* TAB：HOVER*/
.yui-navset .yui-nav a:hover,
.yui-navset .yui-nav a:focus {
    filter: sepia(15%) drop-shadow(2px 8px 8px #000);
    -webkit-filter: sepia(15%) drop-shadow(2px 8px 8px #000);
}
 
/*  tab：hover & sel */
 
.yui-navset .yui-nav a:hover,
.yui-navset .yui-nav a:focus,
.yui-navset .yui-nav li:hover,
.yui-navset .yui-nav .selected {
    color: #333;
}
 
.yui-navset .yui-nav li:hover,
.yui-navset .yui-nav .selected {
    color: #333;
 
    transform-origin: bottom;
    -webkit-transform-origin: bottom;
    -moz-transform-origin: bottom;
 
    transform: rotateX(25deg);
    -webkit-transform: rotateX(25deg);
    -moz-transform: rotateX(25deg);
    translate:0;
}
 
/*  tab：nav text */
.yui-navset .yui-nav li:hover a em,
.yui-navset .yui-nav .selected a,
.yui-navset .yui-nav .selected a em {
    color: #000 !important;
 
}
 
/*
TABLE & TOC
*/
 
#toc #toc-action-bar,
#toc .title,
#page-content div.b-tables table.wiki-content-table th,
#page-content table.wiki-content-table th {
    background-color: rgb(85, 83, 83);
}
 
pre { 
  background: black;  
  border-top: 4px solid #00aeef;
  -moz-box-shadow: inset 0 0 10px #000;
  box-shadow: inset 0 0 10px #000;
　
}
```

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
@import url(https://backrooms-wiki.wdfiles.com/local--code/component%3Apatch/1);
@import url('https://fonts.googleapis.com/css2?family=Black+Ops+One&display=swap');
 
:root {
    --theme-base: "black-highlighter";
    --theme-id: "endless";
    --theme-name: "Endless Theme";
 
   --logo-image: url(https://backrooms-sandbox-2.wdfiles.com/local--files/collab:awriteron0/New-Endless-Logo.gif);
   --header-title: "The Backrooms";
   --header-subtitle: "The Mysteries of the Endless Rooms";
 
/* Typefaces */
    --body-font: 'Roboto Slab', serif;
    --header-font: 'Black Ops One', sans-serif;
    --title-font: 'Black Ops One', sans-serif;
    --mono-font: "IBM Plex Mono", monospace;
 
    /* Standard Colors */
    --white-monochrome: 250, 250, 250;
     /* white*/
    --black-monochrome: 0, 0, 0;
    /* black */
    --bright-accent: 29, 161, 250;
    /* the bright blue */
    --medium-accent: 29, 161, 250;
     /* the bright blue, again*/
    --dark-accent: 24, 36, 56;
    /* dark blue for background*/
    --alt-accent: 0, 79, 152;
    /* alternative accent of dark blue */
 
    /* Primary Theme Colors */
    --background-gradient-color: var(--bright-accent);
    --swatch-background: var(--dark-accent);
    --swatch-primary: var(--alt-accent);
    --swatch-primary-darker: var(--medium-accent);
    --swatch-primary-darkest: var(--black-monochrome);
    --swatch-secondary-color: var(--alt-accent);
 
    /* Primary Text Colors */
    --swatch-text-general: var(--swatch-text-light);
    --swatch-important-text: var(--bright-accent);
 
    /* Primary Menu Colors */
    --swatch-menubg-color: var(--dark-accent);
    --swatch-menubg-light-color: var(--pale-gray-monochrome);
    --swatch-menubg-medium-color: var(--light-gray-monochrome);
    --swatch-menubg-medium-dark-color: var(--gray-monochrome);
    --swatch-menubg-dark-color: var(--dark-gray-monochrome);
    --swatch-menubg-black-color: var(--black-monochrome);
    --swatch-menubg-hover-color: var(--black-monochrome);
    --swatch-menutxt-dark-color: var(--white-monochrome);
    --swatch-menutxt-light-color: var(--white-monochrome);
    --swatch-border-color: var(--bright-accent);
 
    /* Primary Header Colors */
    --swatch-headerh1-color: var(--white-monochrome);
    --swatch-headerh2-color: var(--white-monochrome);
    --swatch-topmenu-border-color: var(--bright-accent);
    --swatch-topmenu-bg-color: var(--black-monochrome);
 
    /* Link Colors */
    --link-color: var(--bright-accent);
    --visited-link-color: var(--swatch-primary);
    --hover-link-color: var(--swatch-primary);
    --newpage-color: var(--alt-accent);
    --sidebar-links-text: var(--swatch-menutxt-dark-color);
    --link-color-bright: var(--medium-accent);
}
 
#main-content hr {
  background-color: rgb(var(--white-monochrome));
  border-color: rgb(var(--alt-accent));
}
 
#page-title {
    color: rgb(var(--white-monochrome))!important;
}
 
 #page-title::after,
 .meta-title::after,
 #page-title::before,
 .meta-title::before {
        background: rgb(var(--swatch-primary));
}
 
#skrollr-body {
    width: 100%;
    position: absolute;
    top: 0;
    left: 0;
    background-repeat: repeat-x;
    background-size: inherit;
}
 
#main-content {
    --tabs-bg: var(--black-monochrome);
    --tabs-content-bg-color: none;
    --blockquote-bg-color: var(--black-monochrome);
    --blockquote-border-color: var(--bright-accent);
}
 
#header {
   background-image: none;
}
 
#header h1, #header h1 a {
   position: absolute;
   top: 1rem;
   margin: 0;
   width: 100%;
   display: flex;
   justify-content: center;
   z-index: 0;
   color: rgb(var(--white-monochrome));
   font-size: 3rem;
}
 
#header h2, #header h2 span, #header h2 span::before {
   position: absolute;
   top: 2rem;
   margin: 0;
   width: 100%;
   display: flex;
   justify-content: center;
   font-size: 1.2rem;
}
 
#header h1 a::before, #header h2 span::before {
   text-shadow: .063rem 0.1rem 0.1rem #0c0c0c;
   color: rgb(var(--white-monochrome));
}
 
/* License Box */
 
#page-content .licensebox .collapsible-block-link {
     margin-left: .25em;
     padding: .25em;
     font-weight: 700;
     opacity: .5;
     color: rgb(var(--white-monochrome));
     -webkit-transition: opacity .5s ease-in-out;
     -moz-transition: opacity .5s ease-in-out;
     transition: opacity .5s ease-in-out;
}
 #page-content .licensebox .collapsible-block-link:hover {
     color: rgba(var(--white-monochrome),0.3);
}
 
/*change user colors*/
#login-status {
    color: rgb(var(--light-gray-monochrome));
}
 
/*self-explanatory*/
hr {
  background-color: rgb(var(--pale-gray-monochrome));
  border-color: rgb(var(--pale-gray-monochrome));
}
 
#login-status a {
    color: rgb(var(--white-monochrome));
}
 
/*top bar options colors*/
#top-bar div.top-bar > ul > li > a,
#top-bar div.mobile-top-bar > ul > li > a {
    color: rgb(var(--white-monochrome)) !important;
}
 
/*searchbox text color*/
#search-top-box input.empty{
    color: rgb(var(--white-monochrome));
}
 
/*3bar thing on mobile*/
#top-bar>div.mobile-top-bar>div.open-menu>p>a{
color:rgb(var(--gray-monochrome))!important;
}
 
/*image block text*/
.scp-image-block .scp-image-caption {
    color: rgb(var(--white-monochrome));
}
 
/* Div Boxes */
.blockquote {
   background-color:rgb(var(--black-monochrome));
   border-color: rgb(var(--bright-accent));
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
  opacity: 0.65;
}
 
blockquote {
   background-color:rgb(var(--black-monochrome));
   border-color: rgb(var(--bright-accent));
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
   opacity: 0.65;
}
 
.blockquote {
   background-color:rgb(var(--black-monochrome));
   border-color: rgb(var(--bright-accent));
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
  opacity: 0.65;
}
 
.styled-quote {
   background-color:rgb(var(--alt-accent));
   border-left: 0.5rem solid rgba(var(--black-monochrome));
   color:rgb(var(--white-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.darkstyled-quote {
   background-color:rgb(var(--black-monochrome));
   border-left: 0.5rem solid rgba(var(--bright-accent));
   color:rgb(var(--white-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.darkblock {
   background-color:rgb(var(--black-monochrome));
   color:rgb(var(--white-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
.darkblock a {
color: rgb(var(--swatch-menubg-medium-color));
}
 
.borderblock {
   background-color:rgb(var(--black-monochrome));
   color:rgb(var(--white-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
   border: solid 0.3rem rgb(var(--bright-accent));
}
 
.old-logoblock{
padding: 0.01rem 1rem;
box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
margin: 0.5rem 0 0.5rem 0.25rem;
display: block;
position: relative;
background-color: black;
}
 
.old-logoblock::after{
content: "";
float: center;
border: solid 2px #000;
background: url(https://backrooms-sandbox-2.wdfiles.com/local--files/collab:awriteron0/Endless_Logo.png) center/50% no-repeat;
opacity: 0.5;
top: 0;
left: 0;
bottom: 0;
right: 0;
position: absolute;
z-index: 1;
}
 
.old-border-logoblock{
    padding: 0.01rem 1rem;
    box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25) inset;
    color:rgb(255, 255, 255);
    margin: 0.5rem 0 0.5rem 0.25rem;
    display: block;
    position: relative;
    background-color: rgb(var(--black-monochrome));
     border: solid 0.3rem rgb(var(--bright-accent));
border-radius: 10px;
    }
 
    .old-border-logoblock::after{
    content: "";
    float: center;
    border: solid 2px #0000;
    background: url(https://backrooms-sandbox-2.wdfiles.com/local--files/collab:awriteron0/Endless_Logo.png) center/50% no-repeat;
    opacity: 0.5;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0;
    position: absolute;
    z-index: 1;
    }
 
.logoblock{
padding: 0.01rem 1rem;
box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
margin: 0.5rem 0 0.5rem 0.25rem;
display: block;
position: relative;
background-color: black;
}
 
.logoblock::after{
content: "";
float: center;
border: solid 2px #000;
background: url(https://backrooms-sandbox-2.wdfiles.com/local--files/collab:awriteron0/New-Endless-Logo.png) center/50% no-repeat;
opacity: 0.5;
top: 0;
left: 0;
bottom: 0;
right: 0;
position: absolute;
z-index: 1;
}
 
.border-logoblock{
    padding: 0.01rem 1rem;
    box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25) inset;
    color:rgb(255, 255, 255);
    margin: 0.5rem 0 0.5rem 0.25rem;
    display: block;
    position: relative;
    background-color: rgb(var(--black-monochrome));
     border: solid 0.3rem rgb(var(--bright-accent));
border-radius: 10px;
    }
 
    .border-logoblock::after{
    content: "";
    float: center;
    border: solid 2px #0000;
    background: url(https://backrooms-sandbox-2.wdfiles.com/local--files/collab:awriteron0/New-Endless-Logo.png) center/50% no-repeat;
    opacity: 0.5;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0;
    position: absolute;
    z-index: 1;
    }
```

[- Close](javascript:;)

---

Source: [https://backrooms-wiki.wikidot.com/theme:endless](https://backrooms-wiki.wikidot.com/theme:endless)
