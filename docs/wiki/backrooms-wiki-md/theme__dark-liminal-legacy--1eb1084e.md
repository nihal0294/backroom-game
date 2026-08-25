---
title: "Dark Liminal Legacy Theme"
source: "https://backrooms-wiki.wikidot.com/theme:dark-liminal-legacy"
retrieved_at: "2026-08-23T23:35:12+00:00"
license: CC-BY-SA-3.0
---

# Dark Liminal Legacy Theme

rating: +28[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

Diving deeper into our roots.

This theme was created by [Stretchsterz](stretchster.md).  
Remix of the "Liminal Theme" by and [etoisle](etoisle.md).  
Based off of the original Theme by and ToaJannox.

To import this theme to your page, put the following text anywhere inside it:

[[include :backrooms-wiki:theme:dark-liminal-legacy]]

# **Examples:**

![Missing alt text.](http://backrooms-wiki.wikidot.com/local--files/theme:dark-liminal-legacy/EagleWhiteSD.png)

This is our dark legacy.

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

Foot[1](javascript:;)  
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

# **Quotes and Blocks:**

---

### **Blocks:**

[[div class="block"]]

[[/div]]

---

[[div class="lightblock"]]

[[/div]]

---

[[div class="darkblock"]]

[[/div]]

---

### **Quote Blocks:**

[[div class="styled-quote"]]

[[/div]]

---

[[div class="light-styled-quote"]]

[[/div]]

---

### **Logo Blocks:**

[[div class="logoblock"]]

[[/div]]

---

[[div class="light-logoblock"]]

[[/div]]

---

[[div class="border-logoblock"]]

[[/div]]

---

[[div class="light-border-logoblock"]]

[[/div]]

---

### **Border Blocks:**

[[div class="borderblock"]]

[[/div]]

---

[[div class="alt-borderblock"]]

[[/div]]

---

[[div class="light-borderblock"]]

[[/div]]

---

### **Title Blocks:**

INSERT TEXT

[[div class="titleblock"]]  
[[span class="titlebox"]]INSERT TEXT[[/span]]

[[/div]]

---

INSERT TEXT

[[div class="light-titleblock"]]  
[[span class="light-titlebox"]]INSERT TEXT[[/span]]

[[/div]]

---

### **Other Blocks:**

[[div class="featurebox"]]

[[/div]]

[[div class="featureflavor"]]

[[/div]]

[[div class="newsbox"]]

[[/div]]

[[div class="light-featurebox"]]

[[/div]]

[[div class="light-featureflavor"]]

[[/div]]

[[div class="light-newsbox"]]

[[/div]]

[[div class="dark-featurebox"]]

[[/div]]

[[div class="dark-featureflavor"]]

[[/div]]

[[div class="dark-newsbox"]]

[[/div]]

[[div class="yellow-featurebox"]]

[[/div]]

[[div class="yellow-featureflavor"]]

[[/div]]

[[div class="yellow-newsbox"]]

[[/div]]

Special thanks to , and for the help!

---

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
/*
   Dark Liminal Legacy Theme
   [Dark Legacy Theme]
   by Lynch & Etoile. Remixed by Stretchster.
*/
 
@import url(https://backrooms-wiki.wdfiles.com/local--code/component%3Apatch/1);
 
@import url('https://fonts.googleapis.com/css?family=Lato:400,900|PT+Mono|Poppins:600,800');
@import url('https://fonts.googleapis.com/css?family=Exo:400,800');
@import url('https://fonts.googleapis.com/css?family=Russo+One&display=swap');
 
:root {
   --theme-base: "black-highlighter";
   --theme-id: "dark-liminal-legacy";
   --theme-name: "Dark Liminal Legacy Theme";
 
   --logo-image: url("http://backrooms-wiki.wikidot.com/local--files/theme:dark-liminal-legacy/EagleWhiteSD.png");
   --header-title: "The Backrooms Legacy";
   --header-subtitle: "Watch Your Back...";
 
    --body-font: 'Lato', sans-serif;
    --header-font: 'Russo One', sans-serif;
    --title-font: 'Exo', sans-serif;
    --mono-font: "PT Mono", "Andale Mono", "Courier New", Courier, monospace;
 
   --white-monochrome: 17, 38, 57;
   --pale-gray-monochrome:  34,80, 121;
   --light-gray-monochrome: 45,53,67;
   --gray-monochrome: 57, 10, 10;
   --grey-monochrome: 45,53,67;
   --black-monochrome: 222, 222, 222;
   --bright-accent: 34,80, 121;
   --medium-accent: 86, 23, 23;
   --dark-accent: 164, 107, 0;
   --pale-accent:  203,0, 183;
   --newpage-color 145,185,220;
   --alt-accent: 145,185,220;
   --legacy-accent:  255, 185, 97;
   --darker-legacy-accent:  57, 10, 10;
   --backrooms-yellow: 215,200,0;
 
   --swatch-text-secondary-color: var(--black-monochrome);
   --swatch-topmenu-border-color: var(--darker-legacy-accent);
  --swatch-topmenu-bg-color: var(--darker-legacy-accent);
 
  --link-color: 255, 185, 97;
  --hover-link-color: 255, 185, 97;
  --visited-link-color: 142, 39, 39;
 
   --background-gradient-distance: 0rem;
 
   --gradient-header: linear-gradient(to top,
      rgb(var(--legacy-accent)) 0%,
      rgb(var(--darker-legacy-accent)) 0%
   );
   --diagonal-stripes: linear-gradient(transparent 0);
}
 
#header {    
  --swatch-headerh1-color: 222, 222, 222;
  --swatch-headerh2-color: 255, 185, 97;
}
 
#skrollr-body {
   background-image:
    radial-gradient(circle, rgb(var(--medium-accent)) 50%, transparent 0);
   background-repeat: repeat;
   background-size: 0.25em 0.25em;
   width: 100%;
   height: 7.5rem;
}
 
#side-bar .side-block div a img {
   filter: grayscale(100%);
}
 
#side-bar .heading p {
   color: rgb(var(--legacy-accent));
}
 
#container {
   background-image: radial-gradient(circle, rgb(var(--medium-accent), 0.05) 50%, transparent 0);
   background-size: 0.25em 0.25em;
   background-repeat: repeat;
   background-attachment: fixed;
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
   left: 0;
   top: 0;
   background-image: var(--logo-image);
   background-size: auto 16rem;
   background-position: center;
   background-repeat: no-repeat;
   opacity: 0.4;
}
 
#header h1, #header h1 a {
   position: absolute;
   top: 1rem;
   margin: 0;
   width: 100%;
   display: flex;
   justify-content: center;
   z-index: 0;
}
 
#header h2, #header h2 span, #header h2 span::before {
   position: absolute;
   top: 2rem;
   margin: 0;
   width: 100%;
   display: flex;
   justify-content: center;
}
 
#header h1 a::before, #header h2 span::before {
   text-shadow: .063rem 0.1rem 0.1rem #0c0c0c;
}
 
h1, h2, h3, h4, h5, h6 {
   color: rgb(var(--legacy-accent));
}
 
.yui-navset .yui-nav .selected a {
   color: rgb(var(--legacy-accent)) !important;
}
 
table.wiki-content-table th {
   color: rgb(var(--black-monochrome));
}
 
#login-status {
   color: rgb(var(--legacy-accent));
}
 
#login-status a {
   color: rgb(var(--legacy-accent));
}
 
#search-top-box input.empty {
   color: rgb(var(--legacy-accent));
}
 
#search-top-box input.text {
   color: rgb(var(--legacy-accent));
}
 
a.newpage {
   background: transparent;
   text-decoration: none
}
 
a.newpage {
   color: rgb(var(--alt-accent));
}
 
#page-title {
   color: rgb(var(--legacy-accent));
}
 
#top-bar div.mobile-top-bar > ul > li > a,
#top-bar div.top-bar > ul > li > a,
#top-bar div.mobile-top-bar > ul > li > ul > li > a,
#top-bar div.top-bar > ul > li > ul > li > a {
   color: rgb(var(--legacy-accent));
}
 
a:not([href*="javascript"], .footnoteref, :has(.image)):is(:hover, :focus)::before {
   content: "> ";
}
 
blockquote {
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(90, 20, 20,.25);
}
 
.styled-quote {
   background-color:rgb(var(--bright-accent));
   border-left: 0.5rem solid rgba(var(--grey-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.light-styled-quote {
   background-color:rgb(var(--darker-legacy-accent));
   border-left: 0.5rem solid rgba(var(--legacy-accent));
   color:rgb(var(--black-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.light-styled-quote a{
color: rgb(var(--swatch-menubg-medium-color));
}
 
.darkblock {
   background-color:rgb(var(--white-monochrome));
   color:rgb(var(--black-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
.block {
   background-color:rgb(var(--grey-monochrome));
   color:rgb(var(--black-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
.lightblock {
   background-color:rgb(var(--darker-legacy-accent));
   color:rgb(255, 255, 255);
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
   color: rgb(var(--black-monochrome));
}
 
.lightblock a {
color: rgb(var(--swatch-menubg-medium-color));
}
 
.borderblock {
    background-color:rgb(var( --grey-monochrome));
    color:rgb(255, 255, 255);
    padding: 0.01rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
    border: solid 0.3rem rgb(var(--bright-accent));
 }
 
 .alt-borderblock {
    background-color:rgb(var(--bright-accent));
    color:rgb(255, 255, 255);
    padding: 0.01rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
    border: solid 0.3rem rgb(var(--grey-monochrome));
 }
 
.light-borderblock {
    background-color:rgb(var( --darker-legacy-accent));
    color:rgb(255, 255, 255);
    padding: 0.01rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
    border: solid 0.3rem rgb(var(--legacy-accent));
 }
 
 .border-logoblock{
    padding: 0.01rem 1rem;
    box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
    color:rgb(255, 255, 255);
    margin: 0.5rem 0 0.5rem 0.25rem;
    display: block;
    position: relative;
    background-color: rgb(var(--grey-monochrome));
     border: solid 0.3rem rgb(var(--bright-accent));
    }
 
    .border-logoblock::after{
    content: "";
    float: center;
    border: solid 2px #0000;
    background: url(https://backrooms-wiki.wdfiles.com/local--files/theme%3Adark-liminal-legacy/EagleWhiteSD.png) center/25% no-repeat;
    opacity: 0.25;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0;
    position: absolute;
    z-index: 1;
    pointer-events: none;
    }
 
 .light-border-logoblock{
    padding: 0.01rem 1rem;
    box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
    color:rgb(255, 255, 255);
    margin: 0.5rem 0 0.5rem 0.25rem;
    display: block;
    position: relative;
    background-color: rgb(var(--darker-legacy-accent));
     border: solid 0.3rem rgb(var(--legacy-accent));
    }
 
    .light-border-logoblock::after{
    content: "";
    float: center;
    border: solid 2px #0000;
    background: url(https://backrooms-wiki.wdfiles.com/local--files/theme%3Adark-liminal-legacy/EagleWhiteSD.png) center/25% no-repeat;
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
    background-color: rgb(var(--grey-monochrome));
    }
 
    .logoblock::after{
    content: "";
    float: center;
    border: solid 2px #0000;
    background: url(https://backrooms-wiki.wdfiles.com/local--files/theme%3Adark-liminal-legacy/EagleWhiteSD.png) center/25% no-repeat;
    opacity: 0.25;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0;
    position: absolute;
    z-index: 1;
    pointer-events: none;
    }
 
    .light-logoblock{
    padding: 0.01rem 1rem;
    color:rgb(255, 255, 255);
    box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
    margin: 0.5rem 0 0.5rem 0.25rem;
    display: block;
    position: relative;
    background-color: rgb(var(--darker-legacy-accent));
    }
 
    .light-logoblock::after{
    content: "";
    float: center;
    border: solid 2px #0000;
    background: url(https://backrooms-wiki.wdfiles.com/local--files/theme%3Adark-liminal-legacy/EagleWhiteSD.png) center/25% no-repeat;
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
        background-color: rgb(var(--grey-monochrome));
        color:rgb(var(--black-monochrome));
        padding: 0.5rem 1rem 0.10rem;
        margin: 1.5rem 0rem 0.5rem 0rem;
        box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.5);
        border: solid rgb(var(--bright-accent)) 2px;
     }
 
     .titlebox{
       color: rgb(var(--grey-monochrome));
       position: relative;
       top: -1.6rem;
       background-color: rgb(var(--bright-accent));
       padding: 0.25rem 1rem;
       line-height: 0.1rem;
     }
 
.light-titleblock {
        background-color: rgb(var(--darker-legacy-accent));
        color:rgb(var(--black-monochrome));
        padding: 0.5rem 1rem 0.10rem;
        margin: 1.5rem 0rem 0.5rem 0rem;
        box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.5);
        border: solid rgb(var(--legacy-accent)) 2px;
     }
 
     .light-titlebox{
       color: rgb(var(--darker-legacy-accent));
       position: relative;
       top: -1.6rem;
       background-color: rgb(var(--legacy-accent));
       padding: 0.25rem 1rem;
       line-height: 0.1rem;
     }
 
.border-block {
    background-color:rgb(var(--grey-monochrome));
    color:rgb(255, 255, 255);
    padding: 0.01rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
    border: solid 0.3rem rgb(var(--gray-monochrome));
 }
 
.featurebox{
    padding:0 0.5rem;
    margin:1rem 0;
    background:#B6AF7E;
    border-radius:0.6rem;
    box-shadow: 0px 0px 3px;
    border: 1.75px solid #d6ce92;
    box-sizing:border-box;
}
 
.featureflavor{
    padding:0 0.5rem;
    margin:0.5rem 0;
    background:#B7B073;
    border-radius:0.6rem;
    box-shadow: 0px 0px 3px;
    border: 1.75px solid #c7c089;
    box-sizing:border-box;
    transition:0.2s;
}
.newsbox{
    padding:1px 1rem;
    margin:1rem 0;
    background: linear-gradient(90deg, rgba(199,192,137,1) 0%, rgba(214,206,146,0) 100%);
    border-radius:0.8rem;
}
 
.light-featurebox{
    padding:0 0.5rem;
    margin:1rem 0;
    background:#5A1414;
    border-radius:0.6rem;
    box-shadow: 0px 0px 3px;
    border: 1.75px solid #FFB961;
    box-sizing:border-box;
}
 
.light-featureflavor{
    padding:0 0.5rem;
    margin:0.5rem 0;
    background:#FFB961;
    border-radius:0.6rem;
    box-shadow: 0px 0px 3px;
    border: 1.75px solid #6B1E1E;;
    box-sizing:border-box;
    transition:0.2s;
}
.light-newsbox{
    padding:1px 1rem;
    margin:1rem 0;
    background: linear-gradient(90deg, rgba(75,16,16,1) 0%, rgba(214,206,146,0) 100%);
    border-radius:0.8rem;
}
 
.dark-featurebox{
    padding:0 0.5rem;
    margin:1rem 0;
    background:#2D3543;
    border-radius:0.6rem;
    box-shadow: 0px 0px 3px;
    border: 1.75px solid #F4F4F4;
    box-sizing:border-box;
}
 
.dark-featureflavor{
    padding:0 0.5rem;
    margin:0.5rem 0;
    background:#225079;
    border-radius:0.6rem;
    box-shadow: 0px 0px 3px;
    border: 1.75px solid #202732;
    box-sizing:border-box;
    transition:0.2s;
}
.dark-newsbox{
    padding:1px 1rem;
    margin:1rem 0;
    background: linear-gradient(90deg, rgba(32,39,50,1) 0%, rgba(214,206,146,0) 100%);
    border-radius:0.8rem;
}
 
.yellow-featurebox{
    padding:0 0.5rem;
    margin:1rem 0;
    background:#CDAB00;
    border-radius:0.6rem;
    box-shadow: 0px 0px 3px;
    border: 1.75px solid #F4F4F4;
    box-sizing:border-box;
}
 
.yellow-featureflavor{
    padding:0 0.5rem;
    margin:0.5rem 0;
    background:#CDAB00;
    border-radius:0.6rem;
    box-shadow: 0px 0px 3px;
    border: 1.75px solid #F4F4F4;
    box-sizing:border-box;
    transition:0.2s;
}
.yellow-newsbox{
    padding:1px 1rem;
    margin:1rem 0;
    background: linear-gradient(90deg, rgba(205,171,0,1) 0%, rgba(214,206,146,0) 100%);
    border-radius:0.8rem;
}
 
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
   --fade-in-delay: 0.1s; /* Change the speed here. */
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
 
/* ==SD CLASS CODE== */
 
.sd-container {
   --sd-text:255,255,255;
   --sd-border:var(--legacy-accent);
   --sd-bullets:var(--legacy-accent);
   --sd-symbol:var(--white-monochrome);
}
 
/* ==Hyperlinks Fixes by Abdallah Amr== */
/* Hyperlinks Color Fix */
:is(.lightblock, .light-styled-quote, .light-logoblock, .light-border-logoblock, .light-borderblock, .light-titleblock, .light-featurebox, .light-newsbox) a:visited {
    color: rgb(170,47,47);
}
:is(.styled-quote, .alt-borderblock, .dark-featureflavor) a:visited {
    color: rgb(235,25,25);
}
 
/* Licensebox Dropdown color Fix */
#page-content .licensebox .collapsible-block-link, #page-content .licensebox .collapsible-block-link:hover {
  color: rgb(var(--link-color));
}
 
/* Other small Fixes */
#login-status #account-options ul li > a::before {
  background-color: rgb(var(--swatch-secondary-color));
}
 
.printuser a:first-of-type:hover::before {
  content: none;
}
 
.code {
  background-color: rgb(var(--swatch-tertiary-color));
}
```

[- Close](javascript:;)

Footnotes

[1](javascript:;). note

---

Source: [https://backrooms-wiki.wikidot.com/theme:dark-liminal-legacy](https://backrooms-wiki.wikidot.com/theme:dark-liminal-legacy)
