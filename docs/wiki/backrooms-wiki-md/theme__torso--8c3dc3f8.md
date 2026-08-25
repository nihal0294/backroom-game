---
title: "Torso Theme"
source: "https://backrooms-wiki.wikidot.com/theme:torso"
retrieved_at: "2026-08-23T23:37:59+00:00"
license: CC-BY-SA-3.0
---

# Torso Theme

rating: +42[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  
Torso Theme was created by GaplouelPew, [This is the source of the picture on the right](https://pixabay.com/zh/vectors/heart-organ-muscle-line-art-5660816/).  
This Theme was made for the group Torso of Chinese site.

The code for the flicker animation of the header logo comes from [Buried Hub](https://scp-wiki-cn.wikidot.com/buried-hub), the author is .

To import this theme to your page, put the following text anywhere inside it:

[[include :backrooms-wiki:theme:torso]]

# Examples:

![Missing alt text.](http://gaplouelpew.wdfiles.com/local--files/ori%3Atorso/heart.png)

Core

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

- [*Torso*](javascript:;)
- [*Machinery*](javascript:;)
- [*Long Tab*](javascript:;)
- [*A Looooooooooooooooooooooooooooooooooooong Name Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)

Consists of flesh.

We spurn it.

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

Although I cheats you  
but  
could you  
stop looking at me.

> This is a blockquote, created by putting "> " at the start of each line.
>
> More text.
>
> ---
>
> That's a horizontal rule.
>
> > Nested blockquotes.[1](javascript:;)
> >
> > > Nested.
> > >
> > > > Nested.
> > > >
> > > > > Nested!!!

| This is a | table |
| --- | --- |
| You should know | how to make these |
| already | |

---

##### The Title font and Header font are **Noto Serif SC**。

The Body font is **IM Fell DW Pica**。

The Monospace font is **Noto Sans SC**。

---

foot[2](javascript:;)  
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

[[div class="styled-quote"]]

[[/div]]

[[div class="dark-styled-quote"]]

[[/div]]

[[div class="lightblock"]]

[[/div]]

[[div class="darkblock"]]

[[/div]]

[[div class="moirblock"]]

[[/div]]

---

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
@import url(https://backrooms-wiki.wdfiles.com/local--code/component%3Apatch/1);
 
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+SC&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Noto+Serif+SC:wght@900&display=swap');
@import url('https://fonts.googleapis.com/css2?family=IM+Fell+DW+Pica&display=swap');
 
:root{
   --logo-image: url("http://gaplouelpew.wdfiles.com/local--files/ori%3Atorso/Torso.png");
   --header-title: "Torso";
   --header-subtitle: "Flesh lead us to the future.";
 
   --body-font: 'IM Fell DW Pica';
   --header-font: 'Noto Serif SC';
   --title-font: 'Noto Serif SC';
   --mono-font: 'Noto Sans SC';
 
   --mainAccent: 80, 0, 0;
   /* Don't care about the names of these variables, I only wrote these colors */
   --white-monochrome: 215, 215, 215;
   --pale-gray-monochrome: 13, 13, 13;
   --light-gray-monochrome: 30, 30, 30;
   --gray-monochrome: 50, 50, 50;
   --black-monochrome: 0, 0, 0;
   --bright-accent: var(--mainAccent);
   --medium-accent: 0, 0, 0;
   --dark-accent: var(--mainAccent);
   --pale-accent: var(--mainAccent);
   --dark-gray-monochrome: 22, 22, 22;
 
   --swatch-topmenu-border-color: var(--mainAccent);
   --swatch-topmenu-bg-color: var(--medium-accent);
   --swatch-menubg-color: var(--medium-accent);
   --swatch-border-color: var(--bright-accent);
 
   --swatch-text-dark: var(--white-monochrome);
   --swatch-text-light: var(--white-monochrome);
   --swatch-background: var(--medium-accent);
   --swatch-menutxt-dark-color: var(--white-monochrome);
   --swatch-primary-darker: var(--pale-accent);
 
   --link-color: 200, 17, 0;
   --visited-link-color: 156, 17, 0;
   --newpage-color: 120, 40, 40;
 
   --background-gradient-distance: 0rem;
   --gradient-topmenu: none;
   --diagonal-stripes: linear-gradient(transparent 0);
   --gradient-header: none;
 
   --rating-module-button-plus-color: var(--mainAccent);
   --rating-module-button-negative-color: var(--mainAccent);
   --rating-module-button-cancel-color: var(--mainAccent);
   --header-height-on-desktop: 9rem;
 
   --cecs-accent: var(--visited-link-color) !important;
   --level-accent: var(--visited-link-color) !important;
}
 
a[href="http://backrooms-wiki-cn.wikidot.com/component:tsdm"] {
   color: rgb(var(--white-monochrome)) !important;
}
 
.text-box, .HVM .HVM, .VRL-A .VRL-A, .VRL-B .VRL-B, .NCR .NCR, .MCH .MCH, .CBR .CBR, .SYN .SYN, .DMN .DMN, .SSV .SSV, .CVL .CVL, .RAD .RAD, .NRO .NRO, .TXC .TXC, .PYR .PYR, .RLA .RLA, .UNQ .UNQ, .AGR .AGR, .BNV .BNV, .custom .custom {
   color: rgb(var(--white-monochrome)) !important;
}
 
.sdlogo:after {
   margin-left:17.75em !important;
}
 
.footerbox {
   color: rgb(215, 215, 215) !important;
   background: repeating-radial-gradient(#070707, #0D0D0D .1%, #000 .2%) !important;
   border: solid rgb(215, 215, 215) !important;
}
 
.footerbox h1, .footerbox h2, .footerbox h3, .footerbox h4, .footerbox h5, .footerbox h6 {
   color: rgb(215, 215, 215) !important;
}
 
.footerflavor {
   background: rgb(215, 215, 215) !important;
   color: #000 !important;
}
 
.footerflavor ::selection {
   color: rgb(var(--white-monochrome)) !important;
   background: rgba(var(--black-monochrome),.5) !important;
}
 
div.content img {
   padding: 0, 0!important;
   margin-right: 10px;
   box-shadow: -0.4rem 0.4rem rgb(var(--mainAccent));
}
 
tr td img {
   box-shadow: none !important;
}
 
#account-options {
   background: rgb(var(--pale-gray-monochrome));
}
 
div#account-options ul li a {
   color: rgb(var(--white-monochrome));
}
 
div#account-options ul li a:hover {
   color: rgb(var(--white-monochrome));
   background-color: rgb(var(--mainAccent));
}
 
::selection {
   color: rgb(var(--black-monochrome));
   background: rgba(var(--white-monochrome),.5);
}
 
.owindow {
   border: solid rgba(var(--pale-accent));
}
 
.lightblock ::selection, .styled-quote ::selection {
   color: rgb(var(--white-monochrome))!important;
   background: rgba(var(--black-monochrome),.5)!important;
}
 
.page-rate-widget-box span.rate-points {
   letter-spacing: -12px;
   color: transparent !important;
}
 
.page-rate-widget-box .rate-points:after, .page-rate-widget-box .rate-points span {
   content: "blood";
   font-size: 15px;
   margin-left: 5px;
   letter-spacing: 0;
   color: rgb(var(--white-monochrome));
}
 
#header:before {
   -webkit-animation: flicker 10s infinite;
   -o-animation: flicker 10s infinite;
   animation: flicker 10s infinite;
}
 
* {
   cursor:url("http://gaplouelpew.wdfiles.com/local--files/ori%3Atorso/zz.png"),auto ;
}
 
#main-content:after {
   background: url("http://gaplouelpew.wdfiles.com/local--files/ori%3Atorso/sidebar-tab.png");
background-repeat: no-repeat;
   background-position: center left 1rem;
   background-attachment: fixed;
}
 
#main-content:before {
   background: linear-gradient(180deg, rgb(0,0,0), rgb(0,0,0) 1%, rgb(var(--pale-gray-monochrome)) 5%);
}
 
#ohandle-1 {
   color: rgb(var(--medium-accent));
   background-color: rgb(var(--white-monochrome));
}
 
.hl-identifier, .hl-brackets, .hl-code, .printuser, #login-status {
   color: rgb(var(--white-monochrome));
}
 
.footnotes-footer {
   background-color: rgb(var(--pale-gray-monochrome))!important;
}
 
a:hover {
   color: rgb(var(--white-monochrome));
   background-color: rgb(var(--mainAccent));
   text-decoration: none;
   cursor: url(http://gaplouelpew.wdfiles.com/local--files/ori%3Atorso/zz2.png),pointer !important;
}
 
a.btn:hover, input.btn:hover {
   cursor: url(http://gaplouelpew.wdfiles.com/local--files/ori%3Atorso/zz2.png),pointer !important;
}
 
a:hover:before {
   content: ">";
}
 
ul.yui-nav li a:hover:before, #login-status a:hover:before, div.side-block div[style="text-align: center;"] a:hover:before, a.btn:hover:before {
   content: none !important;
}
 
a:visited:hover {
   color: rgb(var(--white-monochrome));
}
 
blockquote {
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.15);
   background-color:rgba(62, 60, 60, .25);
}
 
hr {
   width: auto;
   margin: auto;
   position: relative;
   height: 2.5px;
   background-color: #fff0;
   pointer-events: none;
   overflow: hidden;
   border: initial;
   -webkit-clip-path: polygon(50% 10%, 100% 50%, 50% 90%, 0% 50%);
   clip-path: polygon(50% 10%, 100% 50%, 50% 90%, 0% 50%);
}
 
hr:before {
   content: " ";
   width: 100%;
   height: 100%;
   position: absolute;
   background-attachment: fixed;
   background-image: repeating-radial-gradient(#200, #400 .1%, #000 .2%);
   background-repeat: repeat;
   background-position: center;
   background-size: auto;
}
 
th {
   background-color: rgb(var(--pale-gray-monochrome)) !important;
}
 
td, th, .yui-content {
   border-color: rgb(var(--pale-gray-monochrome)) !important;
}
 
#header:before {
   opacity: 1;
   background-size: auto 12rem;
}
 
#skrollr-body {
   background: repeating-radial-gradient(#200, #400 .1%, #000 .2%);
   height: 11rem;
}
 
#container {
   background: linear-gradient(180deg, rgba(0,0,0,0) 35%, rgb(0,0,0) 93%);
   background-size: 37rem 11rem;
   background-attachment: scroll;
   background-repeat: repeat-x;
   /*border-radius: 0 0 50% 50%;*/
}
 
.scp-image-caption, .scp-image-block .image {
   border: 1px solid rgba(var(--pale-accent));
}
 
.page-rate-widget-box {
   background: none;
   border: none;
   background-color: rgb(var(--dark-gray-monochrome));
   border-left: 0.2rem solid rgba(var(--pale-accent));
}
 
.styled-quote {
   background-color:rgb(150, 150, 150);
   border-left: 0.5rem solid rgba(var(--gray-monochrome));
   color:rgb(var(--black-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0rem;
}
 
.dark-styled-quote {
   background-color:rgb(var(--pale-gray-monochrome));
   border-left: 0.5rem solid rgba(var(--mainAccent));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0rem;
}
 
.lightblock {
   background-color:rgb(150, 150, 150);
   color:rgb(var(--black-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0rem;
}
 
.darkblock {
   background-color: rgb(var(--pale-gray-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0rem;
}
 
.moirblock {
   background: repeating-radial-gradient(#070707, #0D0D0D .1%, #000 .2%);
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
   border-left: 0.5rem solid rgba(var(--mainAccent));
   border-right: 0.5rem solid rgba(var(--mainAccent));
}
 
#search-top-box-input {
   background-color: rgb(var(--white-monochrome));
   color: rgb(var(--mainAccent));
}
 
h1, h2, h3, h4, h5, h6 {
   color: rgb(var(--visited-link-color));
}
 
div#toc-list div a {
   color: rgb(var(--newpage-color))!important;
}
 
#footer {
   color: rgb(var(--white-monochrome));
}
 
@keyframes flicker {
  54% {
    -webkit-filter: brightness(100%);
    filter: brightness(100%);
  }
  54.5% {
    -webkit-filter: brightness(60%);
    filter: brightness(60%);
  }
  55% {
    -webkit-filter: brightness(80%);
    filter: brightness(80%);
  }
  55.5% {
    -webkit-filter: brightness(50%);
    filter: brightness(50%);
  }
  56% {
    -webkit-filter: brightness(100%);
    filter: brightness(100%);
  }
  65% {
    -webkit-filter: brightness(100%);
    filter: brightness(100%);
  }
  65.5% {
    -webkit-filter: brightness(40%);
    filter: brightness(40%);
  }
  66% {
    -webkit-filter: brightness(40%);
    filter: brightness(40%);
  }
  66.5% {
    -webkit-filter: brightness(80%);
    filter: brightness(80%);
  }
  67% {
    -webkit-filter: brightness(40%);
    filter: brightness(40%);
  }
  97.5% {
    -webkit-filter: brightness(40%);
    filter: brightness(40%);
  }
  98% {
    -webkit-filter: brightness(70%);
    filter: brightness(70%);
  }
  98.5% {
    -webkit-filter: brightness(40%);
    filter: brightness(40%);
  }
  99% {
    -webkit-filter: brightness(100%);
    filter: brightness(100%);
  }
}
 
.floatright {
   background-color: rgb(var(--pale-gray-monochrome))!important;
}
 
ins, del {
   color: rgb(var(--black-monochrome));
}
 
div.darkblock a, div.dark-styled-quote a {
   color: rgb(var(--link-color))
}
 
#page-title {
   text-align: center;
}
 
#side-bar:hover::-webkit-scrollbar, #edit-page-textarea::-webkit-scrollbar, body::-webkit-scrollbar {
   width: 10px;
   height: 10px;
}
 
#edit-page-textarea::-webkit-scrollbar-thumb, body::-webkit-scrollbar-thumb {
   background-color: rgb(var(--white-monochrome)) !important;
   border-radius: 10px;
   box-sizing: border-box;
   border: 2px solid rgb(var(--mainAccent));
}
 
#edit-page-textarea::-webkit-scrollbar-track, body::-webkit-scrollbar-track {
   background: rgb(var(--mainAccent)) !important;
}
 
#side-bar:hover::-webkit-scrollbar-thumb {
   background-color: rgb(var(--white-monochrome)) !important;
   border-radius: 10px;
   box-sizing: border-box;
   border: 2px solid rgb(var(--black-monochrome));
}
 
#side-bar:hover::-webkit-scrollbar-track {
   background: rgb(var(--black-monochrome)) !important;
}
 
#breadcrumbs {
    margin: auto;
}
 
.owindow.error .printuser.avatarhover .small {
    box-shadow: none;
}
 
.yui-navset .yui-nav a em:hover, .yui-navset .yui-navset-top .yui-nav a em:hover {
    cursor: url(http://gaplouelpew.wdfiles.com/local--files/ori%3Atorso/zz2.png),pointer !important;
}
 
/* ==SD CLASS CODE== */
.sd-container {
   --sd-text: var(--white-monochrome);
   --sd-symbol: var(--white-monochrome);
   --sd-bullets: var(--white-monochrome);
   --sd-border: var(--gray-monochrome);
   --class-0: var(--black-monochrome);
   --class-1: var(--black-monochrome);
   --class-2: var(--black-monochrome);
   --class-3: var(--black-monochrome);
   --class-4: var(--black-monochrome);
   --class-5: var(--black-monochrome);
   --class-unknown: var(--black-monochrome);
   --class-habitable: var(--black-monochrome);
   --class-deadzone: var(--black-monochrome);
   --class-pending: var(--black-monochrome);
   --class-n-a: var(--black-monochrome);
   --class-amended: var(--black-monochrome);
   --class-omega: var(--black-monochrome);
}
```

[- Close](javascript:;)

Footnotes

[1](javascript:;). And here's a footnote!

[2](javascript:;). note

---

Source: [https://backrooms-wiki.wikidot.com/theme:torso](https://backrooms-wiki.wikidot.com/theme:torso)
