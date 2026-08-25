---
title: "The Overwatch Theme"
source: "https://backrooms-wiki.wikidot.com/theme:the-overwatch"
retrieved_at: "2026-08-23T23:41:29+00:00"
license: CC-BY-SA-3.0
---

# The Overwatch Theme

rating: +24[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  
   
This theme was created by by modifying M.E.G. Archive Theme by   
To import this theme to your page, put the following text anywhere inside it:

[[include :backrooms-wiki:theme:the-overwatch]]

# Examples

![Missing alt text.](http://myrandfox.wdfiles.com/local--files/theme:the-overwatch/ow)

THE OVERWATCH

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

The Header & Body font is Share Tech Mono.  
The Title font is Anonymous Pro.  
The monospace font used is PT Mono.

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
Special warnings too  
Or lower risk  
Or safe!

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

[[div class="logoblock"]]

[[/div]]

---

[[div class="border-logoblock"]]

[[/div]]

---

[[div class="borderblock"]]

[[/div]]

---

INSERT TEXT  
[[div class="titleblock"]]  
[[span class="titlebox"]]INSERT TEXT[[/span]]

[[/div]]

---

[[div class="low-risk"]]

[[/div]]

---

[[div class="medium-risk"]]

[[/div]]

---

[[div class="high-risk"]]

[[/div]]

---

Special thanks to

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
@import url(https://backrooms-wiki.wdfiles.com/local--code/component%3Apatch/1);
 
/* Fonts */
 
@import url('https://fonts.googleapis.com/css?family=Lato:400,900|PT+Mono|Poppins:600,800|Share+Tech+Mono|Anonymous+Pro');
 
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
 
/* All Vars Used */
 
:root {
--fade-in-delay: 0.15s;
    /* S-CSS-P Integration */
    /* If you're making a new CSS theme, please include the following three variables at minimum. */
    --theme-base: "nuscp";
    /* mua be either "nuscp" or "sigma9" */
    --theme-id: "the-overwatch";
    /* set this to the URL of your theme's page - eg for "component:ar-theme", set it to "ar-theme" */
    --theme-name: "The Overwatch Theme";
    /* set this to your theme's full name */
 
    /* Header */
    --logo-image: url("http://myrandfox.wikidot.com/local--files/theme:the-overwatch/logo");
    --header-title: "The Overwatch";
    --header-subtitle: "United We Survive";
 
    /* Typefaces */
    --body-font: 'Share Tech Mono', monospace;
    --header-font: 'Share Tech Mono', monospace;
    --title-font: 'Anonymous Pro', monospace;
    --mono-font: "PT Mono", "Andale Mono", "Courier New", Courier, monospace;
    /* Standard Colors */
    --white-monochrome: 255, 255, 255;
    /* white */
    --pale-gray-monochrome: 244, 244, 244;
    /* v light gray for blockquotes and stuff */
    --light-gray-monochrome: 170, 170, 170;
    /* light accent gray for login status */
    --gray-monochrome: 66, 66, 72;
    /* gray */
    --dark-gray-monochrome: 0, 100, 255;
    /* dark accent gray for sidebar background */
    --black-monochrome: 12, 12, 12;
    /* black */
    --bright-accent: 255, 255, 255;
    /* bright blue for header */
    --medium-accent: 0, 40, 75;
    /* medium blue for header */
    --dark-accent: 0, 40, 75;
    /* dark blue */
    --newpage-color: 99, 190, 255;
    /* bright blue */
    --terminal-medium: 255, 255, 255;
    /* faded blue for terminal borders*/
    --pale-accent: 0, 40, 96;
    /* dark blue */
    --ow-white-monochrome: 255, 255, 255;
    --ow-black-monochrome: 0, 0, 0;
    --ow-dark-blue-monochrome: 0, 40, 75;
    --ow-low-monochrome: 0, 85, 165;
    --visited-link-color: 0, 148, 255;
 
    /* Primary Theme Colors */
    --swatch-background: var(--white-monochrome);
    --swatch-primary: var(--medium-accent);
    --swatch-primary-darker: var(--bright-accent);
    --swatch-primary-darkest: var(--medium-accent);
    /* Primary Text Colors */
    --swatch-text-dark: var(--black-monochrome);
    --swatch-text-light: var(--white-monochrome);
    --swatch-important-text: var(--bright-accent);
 
    /* Primary Menu Colors */
    --swatch-menubg-color: var(--dark-accent);
    --swatch-menubg-light-color: var(--dark-accent);
    --swatch-menubg-medium-color: var(--dark-accent);
    --swatch-menubg-medium-dark-color: var(--black-monochrome);
    --swatch-menubg-dark-color: var(--bright-accent);
    --swatch-menubg-black-color: var(--black-monochrome);
    --swatch-menubg-hover-color: var(--ow-dark-blue-monochrome);
    --swatch-menutxt-dark-color: var(--bright-accent);
    --swatch-menutxt-light-color: var(--black-monochrome);
    --swatch-border-color: var(--terminal-medium);
    /* Primary Header Colors */
    --swatch-headerh1-color: var(--white-monochrome);
    --swatch-headerh2-color: var(--white-monochrome);
    --swatch-topmenu-border-color: var(--dark-accent);
    --swatch-topmenu-bg-color: var(--dark-accent);
    --swatch-text-tertiary-color: var(--swatch-menutxt-light-color);
    --swatch-text-secondary-color: var(--swatch-menutxt-dark-color);
 
    /* Header Gradients */
 
    --gradient-header: linear-gradient(to bottom,
     rgba(var(--medium-accent),0.97) 10%,
     rgba(var(--medium-accent),0.97) 40%,
     rgb(var(--ow-low-monochrome)) 100%);
    --gradient-topmenu: linear-gradient(to bottom,
     white 0%,
     white 7.5rem,
     rgba(var(--swatch-topmenu-border-color), 1) 7.5rem,
     rgba(var(--swatch-topmenu-bg-color), 1) 7.625rem,
     rgba(var(--swatch-topmenu-bg-color), 0.95) calc(100% - 0.125rem),
     rgba(var(--swatch-topmenu-bg-color), 1) calc(100% - 0.125rem),
     rgba(var(--swatch-topmenu-border-color), 1) 100%);
    --gradient-topmenu-mobile: linear-gradient(to bottom,
     rgba(var(--swatch-topmenu-border-color), 1) 0,
     rgba(var(--swatch-topmenu-bg-color), 1) 0.125rem,
     rgba(var(--swatch-topmenu-bg-color), 1) calc(3rem - 0.125rem),
     rgba(var(--swatch-topmenu-bg-color), 1) calc(3rem - 0.125rem),
     rgba(var(--swatch-topmenu-border-color), 1) 3rem);
    --diagonal-stripes: repeating-linear-gradient(180deg,
     hsla(0, 0%, 100%, 0),
     hsla(0, 0%, 100%, 0) 0.25vh,
     rgba(88, 88, 88, 0.1) 0.35vh,
     rgba(88, 88, 88, 0.2) 0.5vh);
    --gradient-sidemenu-header: linear-gradient(10deg,
     rgba(var(--medium-accent), 0.45) 0%,
     rgba(var(--medium-accent), 0.55) 100%);
    --header-background-image-size: 100% 7.5rem;
 
    /* Sidebar */
    --sidebar-transition-timing: 0.5s ease-in-out 0.1s;
    --sidebar-internal-border-thickness: 0.16rem;
 
    --background-gradient-color: 193, 222, 255;
    --background-gradient-distance: 50rem;
}
 
#top-bar {
    --dropdown-links-color: var(--swatch-menutxt-light-color);
}
 
#license-area {
    background-color: rgb(var(--dark-accent));
}
 
#main-content {
    --editor-icon-color: 0,0,0;
 
    /* tabs fix */
    --tabs-bg: var(--dark-accent);
    --tabs-txt: var(--white-monochrome);
    --tabs-hover-bg: var(--pale-gray-monochrome);
    --tabs-hover-txt: var(--dark-accent);
    --tabs-selected-bg: var(--white-monochrome);
    --tabs-selected-outline: var(--white-monochrome);
    --tabs-selected-txt: var(--dark-accent);
 
    --tabs-content-bg-color: var(--dark-accent), 0.25;
    --tabs-content-border-color: var(--dark-accent);
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
 
#search-top-box input.empty {
   color: #ffffff;
   color: rgba(var(--white-monochrome));
   text-align: center
}
 
html,
body,
#side-bar:hover {
    scrollbar-color: rgb(var(--terminal-medium)) rgb(var(--ow-white-monochrome));
    }
 
 ::-webkit-scrollbar,
#side-bar:hover::-webkit-scrollbar {
    background-color: rgb(var(--ow-white-monochrome));
    }
 
 ::-webkit-scrollbar-thumb,
 #side-bar:hover::-webkit-scrollbar-thumb {
    background-color: rgb(var(--terminal-medium));
    }
 
.scp-image-block .scp-image-caption {
    font-size: .8em;
    background-color:rgb(var(--ow-white-monochrome));
    color: rgb(var(--ow-black-monochrome));
}
 
#header h1 {
    color: rgb(var(--dark-accent));
}
#side-bar div.menu-item .sub-text {
    color: rgb(var(--white-monochrome));
}
#login-status {
    color: rgb(var(--medium-accent));
}
.code {
    padding: 5px 5px 5px 15px;
    margin-bottom:10px;
    width: 100%;
    font-family: var(--header-font);
    font-size: 1.1em;
    background-color:rgb(var(--dark-accent));
    border: 2px dashed rgb(var(--terminal-medium));
    color: rgb(var(--bright-accent));
}
 
.hl-main {
    filter: invert(1) hue-rotate(180deg);
}
 
.page-options-bottom a {
    background-color:rgb(var(--ow-white-monochrome)) !important;
    border: 3px solid rgb(var(--ow-dark-blue-monochrome)) !important;
    color: rgb(var(--ow-dark-blue-monochrome)) !important;
    font-family: var(--header-font);
}
 
#page-content table.wiki-content-table th, #page-content table.wiki-content-table tr, #page-content table.wiki-content-table td {
    background-color:rgb(var(--dark-accent)) !important;
    border: 2px solid rgb(var(--terminal-medium)) !important;
    color: rgb(var(--bright-accent));
}
 
.footnotes-footer {
    padding: 15px 15px 15px 15px;
    margin-bottom:10px;
    width: 100%;
    font-family: var(--header-font);
    font-size: 1.1em;
    --footnotes-footer-bg-color: var(--dark-accent);
    --footnotes-footer-title-text-color: var(--bright-accent);
    --footnotes-footer-num-color: var(--bright-accent);
    --footnotes-footer-text-color: var(--bright-accent);
    --footnotes-footer-num-hover-color: var(--bright-accent);
}
 
span.printuser {
    color: white !important;
}
 
table.wiki-content-table {
    border: 2px solid rgb(var(--terminal-medium)) !important;
}
 
hr {
    background-color: rgb(var(--bright-accent)) !important;
}
 
/* RATING MODULE */
.page-rate-widget-box {
    background: -webkit-gradient(linear,
     left bottom, left top,
     from(rgba(var(--dark-accent),1)),
     to(rgba(var(--dark-accent), 1)));
    background: -webkit-linear-gradient(bottom,
     rgba(var(--dark-accent),1) 0%,
     rgba(var(--dark-accent), 1) 100%);
    background: -o-linear-gradient(bottom,
     rgba(var(--dark-accent),1) 0%,
     rgba(var(--dark-accent), 1) 100%);
    background: linear-gradient(to top,
     rgba(var(--dark-accent),1) 0%,
     rgba(var(--dark-accent), 1) 100%);
    border: 2px solid rgb(var(--terminal-medium));
}
#page-content .rate-box-with-credit-button {
    background: -webkit-gradient(linear,
     left bottom, left top,
     from(rgba(var(--dark-accent),1)),
     to(rgba(var(--dark-accent), 1)));
    background: -webkit-linear-gradient(bottom,
     rgba(var(--dark-accent),1) 0%,
     rgba(var(--dark-accent), 1) 100%);
    background: -o-linear-gradient(bottom,
     rgba(var(--dark-accent),1) 0%,
     rgba(var(--dark-accent), 1) 100%);
    background: linear-gradient(to top,
     rgba(var(--dark-accent),1) 0%,
     rgba(var(--dark-accent), 1) 100%);
    border-color: rgb(var(--terminal-medium));
}
 
.page-rate-widget-box .rate-points {
    color: rgb(var(--ow-white-monochrome)) !important;
}
.page-rate-widget-box .rateup, .page-rate-widget-box .ratedown, .page-rate-widget-box .cancel, .page-rate-widget-box .rateup a, .page-rate-widget-box .ratedown a, .page-rate-widget-box .cancel a {
    background-color: rgb(var(--ow-dark-blue-monochrome)) !important;
}
#page-content .rate-box-with-credit-button > .creditButton > p > a::before {
    background-color: rgb(var(--pale-gray-monochrome));
}
 
#page-content .rate-box-with-credit-button > .creditButton:hover {
    background: rgba(var(--bright-accent), 0.8);
}
 
.page-rate-widget-box .ratedown a:hover, .page-rate-widget-box .rateup a:hover, .page-rate-widget-box .cancel a:hover {
    background-color: rgb(var(--ow-white-monochrome)) !important;
}
 
.scp-image-block {
    border: solid .1625rem rgb(var(--ow-black-monochrome)) !important;
}
 
blockquote, .blockquote {
    padding: 5px 5px 5px 15px;
    margin-bottom:10px;
    font-size: 1rem;
    background-color:rgb(var(--dark-accent)) !important;
    border: 3px solid rgb(var(--terminal-medium)) !important;
    color: rgb(var(--bright-accent)) !important;
    margin: 10px auto 0;
}
 
blockquote blockquote, .blockquote blockquote {
    padding: 5px 5px 5px 15px;
    border: 3px solid rgb(var(--terminal-medium)) !important;
    border-bottom: 3px solid rgb(var(--terminal-medium)) !important;
    color: rgb(var(--bright-accent)) !important;
    margin: 0 auto 10px;
    font-size: 1rem;
}
 
#search-top-box form[id="search-top-box-form"]:not(:focus-within) input[type="text"] {
    background-color: rgb(var(--dark-accent)) !important;
}
#search-top-box:not(:focus-within)::before {  
    color: rgb(var(--terminal-medium)) !important;
}
 
#top-bar div.mobile-top-bar > ul > li > a, #top-bar div.top-bar > ul > li > a {
    color: rgb(var(--terminal-medium)) !important;
}
#top-bar div.mobile-top-bar > ul > li > a:hover, #top-bar div.top-bar > ul > li > a:hover, #top-bar div.mobile-top-bar > ul > li:hover > a, #top-bar div.top-bar > ul > li:hover > a {
    color: rgb(var(--bright-accent)) !important;
}
.open-menu a {
    color: rgb(var(--terminal-medium)) !important;
}
 
@-webkit-keyframes marquee {
         0% { -webkit-transform: translateX(100%); transform: translateX(100%) }
    100% { -webkit-transform: translateX(-100%); transform: translateX(-100%) }
}
 
@keyframes marquee {
         0% { -webkit-transform: translateX(100%); transform: translateX(100%) }
    100% { -webkit-transform: translateX(-100%); transform: translateX(-100%) }
}
@media only screen and (max-width: 768px) {
    #header h2 {
        overflow: hidden;
    height: 100%;
    pointer-events: none;
    }
    #header h2 span {
        -webkit-animation: marquee linear 10s infinite;
                animation: marquee linear 10s infinite;
        width: 150% !important;
        margin-left: 0;
        margin-right: 0;
        padding: 0;
    }
    #header h1 span {
    font-size: 75%;
    }
    #top-bar {
        font-size: calc(var(--base-font-size)*0.70);
    }
 
}
 
.hovertip{
background-color:#00284B !important;
background-image:radial-gradient(ellipse 1000% 100% at 50% 90%, transparent,#00284B) !important;
}
 
#side-bar {
background-size: 0%;
}
 
a:visited {
        color: #0094FF;
        color: rgb(var(--visited-link-color))
    }
 
.footnote-footer>a:first-of-type {
    margin-left: 0;
}
 
.blockquote h1,
.blockquote h2,
.blockquote h3,
.blockquote h4,
.blockquote h5,
blockquote h1,
blockquote h2,
blockquote h3,
blockquote h4,
blockquote h5 {
    color: var(--bright-accent);
}
 
 .lightblock {
    background-color:rgb(var(--white-monochrome));
    padding: 0.01rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.5);
 }
 
 .darkblock {
    background-color:rgb(var(--dark-accent));
    color:rgb(255, 255, 255);
    padding: 0.01rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.5);
 }
 
.dark-borderblock {
    background-color:rgb(var(--dark-accent));
    color:rgb(255, 255, 255);
    padding: 0.01rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
    border: solid 0.3rem rgb(var(--white-monochrome));
 }
 
 .light-borderblock {
    background-color:rgb(var(--white-monochrome));
    padding: 0.01rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
    border: solid 0.3rem rgb(var(--dark-accent));
 }
 .border-logoblock{
    padding: 0.01rem 1rem;
    box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
    color:rgb(255, 255, 255);
    margin: 0.5rem 0 0.5rem 0.25rem;
    display: block;
    position: relative;
    background-color: rgb(var(--dark-accent));
     border: solid 0.3rem rgb(var(--white-monochrome));
    }
 
    .border-logoblock::after{
    content: "";
    float: center;
    border: solid 2px #0000;
    background: url(http://myrandfox.wikidot.com/local--files/theme:the-overwatch/logo) center/25% no-repeat;
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
    background-color: rgb(var(--dark-accent));
    }
 
    .logoblock::after{
    content: "";
    float: center;
    border: solid 2px #0000;
    background: url(http://myrandfox.wikidot.com/local--files/theme:the-overwatch/logo) center/25% no-repeat;
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
        background-color: rgb(var(--dark-accent));
        color:rgb(var(--white-monochrome));
        padding: 0.5rem 1rem 0.10rem;
        margin: 1.5rem 0rem 0.5rem 0rem;
        box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.5);
        border: solid rgb(var(--white-monochrome)) 2px;
     }
 
     .titlebox{
       color: rgb(var(--dark-accent));
       position: relative;
       top: -1.6rem;
       background-color: rgb(var(--white-monochrome));
       padding: 0.25rem 1rem;
       line-height: 0.1rem;
     }
 
.borderblock {
    background-color:rgb(var(--dark-accent));
    color:rgb(255, 255, 255);
    padding: 0.01rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
    border: solid 0.3rem rgb(var(--white-monochrome));
 }
 
.lightstyled-quote {
    background-color:rgb(var(--white-monochrome));
    border-left: 0.5rem solid rgba(var(--dark-accent));
    padding: 0.1rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.5);
 }
 
 .darkstyled-quote {
    background-color:rgb(var(--dark-accent));
    color:rgb(255, 255, 255);
    border-left: 0.5rem solid rgba(var(--white-monochrome));
    padding: 0.1rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.5);
 }
 
.low-risk {
    background-color:rgb(var(--dark-accent));
    color:rgb(255, 255, 255);
    border-left: 0.5rem solid rgb(0, 255, 0);
    padding: 0.1rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.5);
 }
.medium-risk {
    background-color:rgb(var(--dark-accent));
    color:rgb(255, 255, 255);
    border-left: 0.5rem solid rgb(255, 216, 0);
    padding: 0.1rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.5);
 }
.high-risk {
    background-color:rgb(var(--dark-accent));
    color:rgb(255, 255, 255);
    border-left: 0.5rem solid rgb(255, 0, 0);
    padding: 0.1rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.5);
 }
 
/* ==SD CLASS CODE== */
 
.sd-container {
   --sd-text:222,222,222;
   --sd-symbol:var(--sd-text);
}
```

[- Close](javascript:;)

Footnotes

[1](javascript:;). And here's a footnote!

[2](javascript:;). note

---

Source: [https://backrooms-wiki.wikidot.com/theme:the-overwatch](https://backrooms-wiki.wikidot.com/theme:the-overwatch)
