---
title: "Archway OS Theme"
source: "https://backrooms-wiki.wikidot.com/theme:archway-os"
retrieved_at: "2026-08-23T23:36:15+00:00"
license: CC-BY-SA-3.0
---

# Archway OS Theme

rating: +19[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

The gateway to the unknown.

This theme was created by [Stretchsterz](stretchster.md) and .  
This Theme was made for The Simulation Canon.

To import this theme to your page, put the following text anywhere inside it:

---

[[include :backrooms-wiki:theme:archway-os]]

---

# **Examples:**

![Missing alt text.](http://backrooms-wiki.wikidot.com/local--files/theme:archway-os/archway_new.png)

Nearing a Digital Age.

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

This is a blockquote, created by putting "> " at the start of each line.  
More text

---

That's a horizontal rule

> Nested blockquotes[1](javascript:;)

---

[Alternate colored blockquotes](javascript:;)

[Alternate colored blockquotes](javascript:;)

  

You can change the border color of a blockquote by wrapping it inside a div with the name of one of the available colors.

Example:

[[div class="yellow"]]  
> Yellow colored blockquote!!  
[[/div]]

> Red!

> Teal!

> Purple!

> Green!

> Yellow!

---

| This is a | table |
| --- | --- |
| You should know | how to make these |
| already | |

this text  
is here  
*so you can*  
**see how**  
everything looks  
with different  
formatsand  
otherstuff  
[including links that do not](https://backrooms-wiki.wikidot.com/including-links-that-do-not)  
[And links that do exist!](level-0.md)

---

[[div class="borderblock"]]

[[/div]]

---

---

[[div class="borderblock red"]]

[[/div]]

---

---

[[div class="borderblock teal"]]

[[/div]]

---

---

[[div class="borderblock purple"]]

[[/div]]

---

---

[[div class="borderblock green"]]

[[/div]]

---

---

[[div class="borderblock yellow"]]

[[/div]]

---

Special thanks to for the help!  
Logo by !

---

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
@import url('https://fonts.googleapis.com/css2?family=Noto+Serif:ital,wdth,wght@0,62.5..100,100..900;1,62.5..100,100..900&display=swap');
 
@import url(https://nuliminal-test.wdfiles.com/local--code/component%3Apatch/1);
 
:root {
   --theme-base: "black-highlighter";
   --theme-id: "archway-os";
   --theme-name: "Archway OS Theme";
 
   --logo-image: url("http://backrooms-wiki.wikidot.com/local--files/theme:archway-os/archway_new.png");
   --header-title: "||Archway OS||";
   --header-subtitle: "The Leaders' Operating System since 1973";
 
   --body-font: proxima-nova, sans-serif;
   --header-font: 'Noto Serif', serif;
   --title-font: 'Noto Serif', serif;
   --mono-font: 'Fantasque Sans Mono', monospace;
 
   --mainAccent: 0,99,255;
 
   --white-monochrome: 237, 233, 223;
   --pale-gray-monochrome: 255, 251, 240;
   --light-gray-monochrome: 160, 160, 160;
   --dark-gray-monochrome: 160, 160, 160;
   --gray-monochrome: 72, 69, 60;
   --black-monochrome: 0, 0, 0;
   --bright-accent: var(--mainAccent);
   --medium-accent: 1, 0, 102;
   --dark-accent: var(--mainAccent);
   --pale-accent: var(--mainAccent);
   --alt-accent: 255, 215, 0;
 
    --swatch-topmenu-border-color: var(--mainAccent);
    --swatch-topmenu-bg-color: var(--dark-gray-monochrome);
    --swatch-menubg-color: var(--medium-accent);
    --swatch-border-color: var(--bright-accent);
    --swatch-secondary-color: var(--medium-accent);
 
    --swatch-text-dark: var(--white-monochrome);
    --swatch-text-light: var(--white-monochrome);
    --swatch-background: var(--medium-accent);
    --swatch-menutxt-dark-color: var(--white-monochrome);
    --swatch-primary-darker: var(--pale-accent);
 
  --swatch-headerh1-color: var(--alt-accent);
  --swatch-headerh2-color: var(--alt-accent);
 
   --link-color: 255, 215, 0;
   --hover-link-color: 255, 215, 0;
   --visited-link-color: 255, 215, 0;
   --newpage-color: 255, 215, 0;
 
   --background-gradient-distance: 0rem;
   /*--gradient-topmenu: none;*/
   --diagonal-stripes: ;
   /*--gradient-header: repeating-linear-gradient(0deg, #010066, #010066 0.1rem, #1435a5 0.15rem, #1435a5 0.25rem);*/
 
}
 
#top-bar {
    --dropdown-border-color: var(--mainAccent);
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
    background: linear-gradient(to bottom, rgba(229, 140, 36) 0%,rgba(229, 140, 36,1) 50%,rgba(229, 140, 36,0.98) 51%,rgba(229, 140, 36) 100%);
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
    background-image: radial-gradient(circle, rgb(229, 140, 36) 4%, rgb(0,0,0) 45%, rgb(229, 140, 36) 95%);
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
 
#skrollr-body {
    width: 100%;
    position: absolute;
    top: 0;
    left: 0;
    background-image: url("http://backrooms-wiki.wdfiles.com/local--files/theme%3Aarchway-os/leader_banner.png");
 background-repeat: repeat-x;
background-size: inherit;
}
 
#container {
   background-image: none;
}
 
/*option buttons hover textbox border color*/
#odialog-hovertips{
    border-color: rgb(var(--pale-accent));
}
 
/*table stuff*/
#page-content table.wiki-content-table th {
background-color: rgb(var(--dark-gray-monochrome));
border: 2px solid rgb(var(--pale-accent)) !important;
}
 
#page-content table.wiki-content-table td {
border: 2px solid rgb(var(--pale-accent)) !important;
}
 
#side-bar div.menu-item {
   border-color: rgba(var(--bright-accent), 0.4);
}
 
#side-bar div.menu-item > :not(:nth-child(2)):not(.collapsible-block) {
   border-color: rgba(var(--bright-accent), 0.4);
}
 
#side-bar .side-block div a img {
   filter: grayscale(100%);
}
 
#footer{
   color: rgb(var(--black-monochrome));
}
 
/*misc 2*/
div#page-options-bottom-2 > a, div#page-options-bottom > a {
   border-radius: 0em;
   -moz-border-radius: 0em;
   border: none;
}
 
div#page-options-bottom-2 > a:active, div#page-options-bottom-2 > a:hover, div#page-options-bottom > a:active, div#page-options-bottom > a:hover {
   border: none;
}
 
/*image block*/
 
.scp-image-block {
    border: 4px double rgb(255, 255, 255);
    outline: 6px solid rgb(var(--dark-gray-monochrome));
    background-color: rgb(var(--dark-gray-monochrome));
    margin: 6px 6px calc(1em + 6px) calc(2em + 6px) !important;
}
 
.scp-image-block .scp-image-caption {
    background-color: rgb(var(--dark-gray-monochrome));
    color: black;
    border-top: 4px double rgb(255, 255, 255);
}
 
/*module rate*/
#content-wrap #page-content .page-rate-widget-box {
    border: 4px double rgb(255, 255, 255);
    outline: 6px solid rgb(var(--dark-gray-monochrome));
    background-color: rgb(var(--dark-gray-monochrome));
    margin: 6px;
}
 
/*header stuff*/
 
h1, h2, h3, h4, h5, h6 {
   color: rgb(var(--alt-accent));
   text-shadow: .063rem 0.1rem 0.1rem #0c0c0c;
}
 
#header {
  background-image: none;
}
 
#header::before {
   content: "";
   position: absolute;
   height: 100%;
   width: 100%;
   left: 0rem;
   top: -1rem;
   background-image: var(--logo-image);
   background-size: auto 7.8rem;
   background-position: left;
   background-repeat: no-repeat;
   opacity: 1;
}
 
#header h1, #header h1 a {
   position: absolute;
   top: 0.8rem;
   margin: 0;
   width: 100%;
   display: flex;
   justify-content: left;
   z-index: 0;
}
 
#header h2, #header h2 span, #header h2 span::before {
   position: absolute;
   top: 1.8rem;
   width: 100%;
   display: flex;
   justify-content: left;
}
 
#header h1 a::before, #header h2 span::before {
   margin-left: 8.2rem;
   text-shadow: .063rem 0.1rem 0.1rem #0c0c0c;
   letter-spacing: 0.3rem;
}
 
#header h1 a::before{
   letter-spacing: 0.5rem;
   margin: 0;
   margin-left: 8.2rem;
}
 
.scp-image-caption,
blockquote,
.blockquote,
table.wiki-content-table th {
   color: rgb(0, 0, 0);
}
 
/*links*/
a.newpage {
   background: transparent;
   text-decoration: none
}
 
a.newpage {
   color: rgb(var(--newpage-color))
}
 
a{
text-decoration: underline;
}
 
/*line + block*/
hr {
background: transparent;
border-top: double 4px white;
}
 
#page-content blockquote,
#page-content .blockquote,
#page-content div.blockquote,
#page-content [class*="blockquote"] {
    border: 4px double rgb(255, 255, 255);
    outline: 6px solid rgb(var(--dark-gray-monochrome));
   background-color: rgb(var(--dark-gray-monochrome));
    color: black;
    margin: 1em 46px;
    padding: 1em;
}
 
/*search*/
#search-top-box-input{
background: rgb(var(--medium-accent));
}
 
form#edit-page-form:not(.data-form) {
    background-color: rgb(var(--medium-accent));
}
 
/* content background color */
#content-wrap #page-content .yui-navset .yui-content {
    background-color: rgb(var(--medium-accent));
}
 
@media only screen and (max-width: 768px) {
:root{
   --swatch-menubg-color: var(--medium-accent);
}
 
#header h1 a::before{
   letter-spacing: 0.2rem;
}
 
#page-content blockquote,
#page-content .blockquote,
#page-content div.blockquote,
#page-content [class*="blockquote"] {
    margin-left: 0;
    margin-right: 0;
    }
 
#header::before {
background-image: none;
}
 
#header {
     height: var(--header-height-on-mobile);
     background-image: url("https://nu-scptheme.github.io/Black-Highlighter/images/logo.svg");
     background-image: var(--logo-image);
     --size: calc(var(--final-header-height-on-mobile) + 1rem);
     --y-offset: 1.5rem;
     background-position:
     calc((var(--header-height-on-mobile) - 0.75rem) - var(--size)) calc(((var(--size) * -1) + var(--header-height-on-mobile) + var(--y-offset)) / 2);
     background-size: var(--size), 100% var(--header-height-on-mobile);
     background-repeat: no-repeat, repeat;
     width: 100vw;
     margin: 0;
     position: sticky;
     top: calc(var(--header-height-on-mobile) * -1);
    }
 
#header h1 a::before, #header h2 span::before {
   margin-left: 5.8rem;
 
}
 
#header h1 a::before{
   margin-left: 5.8rem;
}
}
 
.borderblock{
   background-color: rgb(var(--dark-gray-monochrome));
   color: rgb(var(--black-monochrome));
   border: 0.5rem solid rgb(255, 255, 255);
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
.borderblock hr{
   border-color: rgb(255, 255, 255);
}
 
.red, .red .blockquote, .red blockquote{
border-color: rgb(173, 0, 0);
}
 
.red hr{
border-color: rgb(173, 0, 0);
}
 
.teal, .teal .blockquote, .teal blockquote{
border-color: rgb(0,128,129);
}
 
.teal hr{
border-color: rgb(0,128,129);
}
 
.purple, .purple .blockquote, .purple blockquote{
border-color: rgb(177,0,177);
}
 
.purple hr{
border-color: rgb(177,0,177);
}
 
.green, .green .blockquote, .green blockquote{
border-color: rgb(0,176,0);
}
 
.green hr{
border-color: rgb(0,176,0);
}
 
.yellow, .yellow .blockquote, .yellow blockquote{
border-color: rgb(176, 158, 0);
}
 
.yellow hr{
border-color: rgb(176, 158, 0);
}
}
 
blockquote {
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(90, 20, 20,.25);
}
 
.styled-quote {
   background-color:rgb(var(--grey-monochrome));
   color:rgb(var(--kauer-white));
   border-left: 0.5rem solid rgba(var(--bright-accent));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
```

[- Close](javascript:;)

Footnotes

[1](javascript:;). And here's a footnote!

---

Source: [https://backrooms-wiki.wikidot.com/theme:archway-os](https://backrooms-wiki.wikidot.com/theme:archway-os)
