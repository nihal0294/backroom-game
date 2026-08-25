---
title: "Danger Zone"
source: "https://backrooms-wiki.wikidot.com/theme:danger-zone"
retrieved_at: "2026-08-23T23:41:28+00:00"
license: CC-BY-SA-3.0
---

# Danger Zone

rating: +45[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  
 

## D A N G E R Z O N E

##### Let's venture together.

Theme created by ; scanline effect created by .

To import this theme to your page, put the following text anywhere inside it:

[[include :backrooms-wiki:theme:danger-zone]]

# Examples

![Missing alt text.](http://backrooms-wiki.wikidot.com/local--files/component:theme/logo.svg)

Holy shit, las backrooms.

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
- [*Long Tab*](javascript:;)

create all your crazy stuffsies in here

more heckin text in here

AM A ZING

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.  
no  
This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

fuck you, not empty

longo boi

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

The font used is Chakra Petch.

---

Foot[2](javascript:;)  
this text  
is here  
*so you can*  
**see how**  
everything looks  
with different  
formatsand  
otherstuff  
[including links that do not](https://backrooms-wiki.wikidot.com/including-links-that-do-not)  
[And links that do exist!](level-901.md)

---

[[div class="lightblock"]]

[[/div]]

---

[[div class="darkblock"]]

[[/div]]

---

[[div class="lightstyled-quote"]]

[[/div]]

---

[[div class="darkstyled-quote"]]

[[/div]]

---

[[div class="logo-block"]]

[[/div]]

---

[[div class="border-logoblock"]]

[[/div]]

---

[[div class="dark-borderblock"]]

[[/div]]

---

[[div class="light-borderblock"]]

[[/div]]

---

INSERT TEXT  
[[div class="titleblock"]]  
[[span class="titlebox"]]INSERT TEXT[[/span]]

[[/div]]

---

Special thanks to

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
@import url(https://backrooms-wiki.wdfiles.com/local--code/component%3Apatch/1);
 
@import url('https://fonts.googleapis.com/css2?family=Chakra+Petch:wght@300&display=swap');
/* Myrand */
 
@media screen and (prefers-reduced-motion: no-preference) {
    #page-title, #breadcrumbs, #page-content > * {
      animation-name: fadeIn;
      animation-duration: 1s;
      animation-iteration-count: 1;
      animation-timing-function: ease-out;
      animation-fill-mode: backwards;
    }
  }
  #page-title { animation-delay: 0s; }
 
  @keyframes fadeIn {
    from {
      opacity: 0;
      transform: translate(0,30px);
    }
    to {
      opacity: 1;
      transform: translate(0,0);
    }
  }
 
:root {
   --fade-in-delay: 0,1s;
 
   --theme-base: "black-highlighter";
   --theme-id: "danger-zone";
   --theme-name: "Danger Zone";
 
   --logo-image: url("http://backrooms-wiki.wikidot.com/local--files/component:theme/logo.svg");
   --header-title: "The Backrooms";
   --header-subtitle: "Ahead lies a path that no other human has yet discovered.";
 
   --body-font: 'Chakra Petch', sans-serif;
   --header-font: 'Chakra Petch', sans-serif;
   --title-font: 'Chakra Petch', sans-serif;
   --mono-font: 'Chakra Petch', sans-serif;
 
   --white-monochrome: 255, 255, 255;
   --dark-gray-monochrome: 40, 40, 52;
   --pale-gray-monochrome: var(--dark-gray-monochrome);
   --light-gray-monochrome: 160, 160, 160;
   --gray-monochrome: 72, 69, 60;
   --black-monochrome: 20, 20, 20;
   --bright-accent: 235, 170, 10;
   --medium-accent: 235, 170, 10;
   --custom-text: 255, 255, 255;
   --dark-accent: 140, 136, 126;
   --pale-accent: 140, 136, 126;
 
     /* Primary Theme Colors */
    --swatch-background: var(--black-monochrome);
    --swatch-primary: var(--bright-accent);
    --swatch-primary-darker: var(--medium-accent);
    --swatch-primary-darkest: var(--black-monochrome);
 
    /* Primary Text Colors */
    --swatch-text-dark: var(--custom-text);
    --swatch-text-light: var(--bright-accent);
    --swatch-important-text: var(--bright-accent);
    --barColour: var(--very-light-gray-monochrome);
    --linkColour: var(--pale-accent);
 
    /* Primary Menu Colors */
    --swatch-menubg-color: var(--black-monochrome);
    --swatch-menubg-light-color: var(--dark-gray-monochrome);
    --swatch-menubg-medium-color: var(--medium-accent);
    --swatch-menubg-medium-dark-color: var(--gray-monochrome);
    --swatch-menubg-dark-color: var(--dark-gray-monochrome);
    --swatch-menubg-black-color: var(--black-monochrome);
    --swatch-menubg-hover-color: var(--black-monochrome);
    --swatch-menutxt-dark-color: var(--white-monochrome);
    --swatch-menutxt-light-color: var(--white-monochrome);
    --swatch-border-color: var(--bright-accent);
 
    /* Primary Header Colors */
    --swatch-topmenu-border-color: var(--bright-accent);
    --swatch-topmenu-bg-color: var(--black-monochrome);
 
    /* Link Colors */
    --link-color: var(--bright-accent);
    --visited-link-color: var(--medium-accent);
    --hover-link-color: var(--bright-accent);
    --sidebar-links-text: var(--swatch-menutxt-dark-color);
    --link-color-bright: var(--medium-accent);
 
/* Rating Module Colors */
    --rating-module-button-color: var(--bright-accent);
    --rating-module-text-color: var(--white-monochrome);
    --rating-module-text-hover-color: var(--swatch-menutxt-light-color);
 
/* Header Gradients */
--gradient-header: none;
--diagonal-stripes: none;
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
 
#header {
    --swatch-headerh1-color: var(--white-monochrome) !important;
    --swatch-headerh2-color: var(--white-monochrome) !important;
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
   background-image:none
}
 
#container {
   background-image: none
}
 
div#page-options-bottom-2 > a, div#page-options-bottom > a {
   border-radius: 0em;
   -moz-border-radius: 0em;
   border: none;
}
 
div#page-options-bottom-2 > a:active, div#page-options-bottom-2 > a:hover, div#page-options-bottom > a:active, div#page-options-bottom > a:hover {
   border: none;
}
 
#header, #top-bar {
   background-attachment: scroll;
}
 
#header {
   background-image: none;
}
 
#header::before {
   content: "";
   position: absolute;
   height: 100%;
   width: 100%;
   left: -2rem;
   top: -0.3rem;
   background-image: var(--logo-image);
   background-size: auto 10rem;
   background-position: left;
   background-repeat: no-repeat;
   opacity: 1;
}
 
#header h1, #header h1 a {
   position: absolute;
   left: 4.8rem;
   top: 0.8rem;
   margin: 0;
   width: 100%;
   display: flex;
   justify-content: left;
   z-index: 0;
}
 
#header h2, #header h2 span, #header h2 span::before {
   position: absolute;
   left: 3.3rem;
   top: 1.8rem;
   margin: 0;
   width: 100%;
   display: flex;
   justify-content: left;
}
 
a:hover, a.newpage:hover, a:visited:hover, #side-bar a:visited:hover {
    text-decoration: none;
    color: #000000;
    background-color: #FFAA0A;
}
 
#login-status ul a:hover {
    text-decoration: none;
    color: #000000;
    background-color: #FFAA0A;
}
 
#login-status a:hover {
    text-decoration: none;
    color: #000000;
    background-color: #FFAA0A;
}
 
#header h1 a::before, #header h2 span::before {
   text-shadow: .063rem 0.1rem 0.1rem #0c0c0c;
   letter-spacing: 0.1rem;
}
 
#header h1 a::before{
   letter-spacing: 1rem;
}
a.newpage {
   color: rgb(var(--newpage-color))
}
 
blockquote {
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
/*search*/
/*#search-top-box {
        left: 3%;
        top: 0.5rem;
}
 
#search-top-box-form > #search-top-box-input {
        width: 7rem;
}*/
 
/* TABVIEW - Abandon All Hope Ye Who Enter Here */
 
/*content bg*/
.yui-navset .yui-content {
     background-color: rgba(var(--pale-accent), 0.25);
     border-color: rgb(var(--pale-accent));
}
 
/*unselected tab color*/
.yui-navset .yui-nav a,
.yui-navset .yui-navset-top .yui-nav a {
    background-color: rgb(var(--dark-gray-monochrome));
    color:rgb(var(--white-monochrome));
}
 
/*hover tab bg*/
.yui-navset .yui-nav a:hover,
.yui-navset .yui-nav a:focus {
     background-color: rgba(var(--pale-accent), .25);
}
 
/*backer background*/
.yui-navset .yui-nav li,
.yui-navset .yui-navset-top .yui-nav li {
    background: rgb(var(--dark-gray-monochrome));
}
 
/*selected tab bg*/
.yui-navset .yui-nav .selected,
.yui-navset .yui-navset-top .yui-nav .selected {
    background-color: rgb(var(--pale-accent));
}
 
.yui-navset .yui-nav .selected a:focus,
.yui-navset .yui-nav .selected a:active {
    background-color: rgb(var(--pale-accent));
}
 
@media only screen and (max-width: 768px) {
:root{
   --swatch-menubg-color: var(--medium-accent);
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
 
#header h1, #header h1 a {
   left: 1rem;
   top: 0.8rem;
}
 
#header h2, #header h2 span, #header h2 span::before {
   left: 0.8rem;
   top: 1.8rem;
}
 
#search-top-box form[id="search-top-box-form"]:not(:focus-within) input[type="text"]:hover {
    background: rgb(0, 0, 0);
    border-color: rgb(var(--pale-accent));
}
#search-top-box form[id="search-top-box-form"]:not(:focus-within) input[type="text"]{
    background: rgb(0, 0, 0);
    border-color: rgb(var(--pale-accent));
}
}
 
.lightstyled-quote {
   background-color:rgb(var(--bright-accent));
color:rgb(0, 0, 0);
   border-left: 0.5rem solid rgba(var(--dark-gray-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.darkstyled-quote {
   background-color:rgb(var(--dark-gray-monochrome));
   border-left: 0.5rem solid rgba(var(--bright-accent));
   color:rgb(var(--white-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.darkstyled-quote a{
color: rgb(var(--swatch-menubg-medium-color));
}
 
.lightblock {
   background-color:rgb(var(--bright-accent));
color:rgb(0, 0, 0);
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
.darkblock {
   background-color:rgb(var(--dark-gray-monochrome));
   color:rgb(var(--white-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
.dark-borderblock {
    background-color:rgb(var(--dark-gray-monochrome));
    color:rgb(255, 255, 255);
    padding: 0.01rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
    border: solid 0.3rem rgb(var(--bright-accent));
 }
 
 .light-borderblock {
    background-color:rgb(var(--bright-accent));
    color:rgb(0, 0, 0);
    padding: 0.01rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
    border: solid 0.3rem rgb(var(--dark-gray-monochrome));
 }
 .border-logoblock{
    padding: 0.01rem 1rem;
    box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
    color:rgb(255, 255, 255);
    margin: 0.5rem 0 0.5rem 0.25rem;
    display: block;
    position: relative;
    background-color: rgb(var(--dark-gray-monochrome));
     border: solid 0.3rem rgb(var(--bright-accent));
    }
 
    .border-logoblock::after{
    content: "";
    float: center;
    border: solid 2px #0000;
    background: url(http://backrooms-wiki.wikidot.com/local--files/component:theme/logo.svg) center/25% no-repeat;
    opacity: 0.25;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0;
    position: absolute;
    z-index: 1;
    pointer-events: none;
    }
 
    .logoblock{
    padding: 0.01rem 1rem;
    color:rgb(255, 255, 255);
    box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
    margin: 0.5rem 0 0.5rem 0.25rem;
    display: block;
    position: relative;
    background-color: rgb(var(--dark-gray-monochrome));
    }
 
    .logoblock::after{
    content: "";
    float: center;
    border: solid 2px #0000;
    background: url(http://backrooms-wiki.wikidot.com/local--files/component:theme/logo.svg) center/25% no-repeat;
    opacity: 0.25;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0;
    position: absolute;
    z-index: 1;
    pointer-events: none;
    }
 
.titleblock {
        background-color: rgb(var(--dark-gray-monochrome));
        color:rgb(var(--white-monochrome));
        padding: 0.5rem 1rem 0.10rem;
        margin: 1.5rem 0rem 0.5rem 0rem;
        box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.5);
        border: solid rgb(var(--bright-accent)) 2px;
     }
 
     .titlebox{
       color: rgb(var(--dark-gray-monochrome));
       position: relative;
       top: -1.6rem;
       background-color: rgb(var(--bright-accent));
       padding: 0.25rem 1rem;
       line-height: 0.1rem;
     }
 
.borderblock {
    background-color:rgb(var(--dark-gray-monochrome));
    color:rgb(255, 255, 255);
    padding: 0.01rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
    border: solid 0.3rem rgb(var(--bright-accent));
 }
 
.darkblock a {
color: rgb(var(--swatch-menubg-medium-color));
}
}
```

[- Close](javascript:;)

Footnotes

[1](javascript:;). And here's a footnote!

[2](javascript:;). note

---

Source: [https://backrooms-wiki.wikidot.com/theme:danger-zone](https://backrooms-wiki.wikidot.com/theme:danger-zone)
