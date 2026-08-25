---
title: "Forbidden Text Theme"
source: "https://backrooms-wiki.wikidot.com/theme:forbidden-text"
retrieved_at: "2026-08-23T23:42:27+00:00"
license: CC-BY-SA-3.0
---

# Forbidden Text Theme

rating: +30[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

This theme was created by .

To import this theme to your page, put the following text anywhere inside it:

[[include :backrooms-wiki:theme:forbidden-text]]

Paste this below the previous code for The Lost header variant!

```
[[module css]]
:root{
   --header-title: "The Lost Documents";
   --header-subtitle: " ";
   --logo-image: url("");
}
#header h1, #header h1 a {
   font-size: 3rem;
   top: 1.3rem;
}
[[/module]]
```

# Examples

![Missing alt text.](https://cc0.photo/wp-content/uploads/2017/08/Single-rock-in-bohemian-paradise-e1504115309951-980x1476.jpg)

Epic?

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

[[div class="paperblock"]]

[[/div]]

[[div class="paperblock2"]]

[[/div]]

[[div class="darkblock"]]

[[/div]]

[[div class="styled-quote"]]

[[/div]]

[[div class="lightblock"]]

[[/div]]

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
/*fonty fonts*/
@import url('https://fonts.googleapis.com/css2?family=New+Tegomin&display=swap');
@import url('https://fonts.googleapis.com/css2?family=IM+Fell+English+SC&display=swap');
 
@import url(https://backrooms-wiki.wdfiles.com/local--code/component%3Apatch/1);
 
:root {
   --theme-base: "black-highlighter";
   --theme-id: "liminal";
   --theme-name: "Liminal Theme";
 
   --logo-image: url("http://backrooms-wiki.wikidot.com/local--files/component:theme/logo.svg");
   --header-title: "The Backrooms";
   --header-subtitle: "Collecting texts that shouldn't exist.";
 
   --body-font: 'New Tegomin', sans-serif;
   --header-font: 'IM Fell English SC', monospace;
   --title-font: 'IM Fell English SC', monospace;
   --mono-font: monospace;
 
   --white-monochrome: 231, 211, 156;
    /*body background color*/
   --pale-gray-monochrome: 127, 91, 40;
    /*brown accent color*/
   --light-gray-monochrome:  76, 70, 55;
   --gray-monochrome: 76, 70, 55;
   /*dark greyish brown*/
   --black-monochrome: 25, 20, 16;
   /*black*/
   --bright-accent: 138, 125, 81;
   --medium-accent: 138, 125, 81;
   --dark-accent:  138, 125, 81;
   --pale-accent:  138, 125, 81;
   /*darker body color*/
 
    /*top bar*/
   --swatch-topmenu-border-color: var(--medium-accent);
   --swatch-topmenu-bg-color: none;
 
    /*side bar*/
   --swatch-menubg-dark-color: var(--light-gray-monochrome);
   --swatch-menubg-color: none;
 
    /*link*/
   --link-color: 230,108,196;
   --visited-link-color: 153, 11, 11;
   --hover-link-color: 230,108,196;
   --newpage-color: var(--alt-accent);
 
    /*tab*/
   --tab-border-color: rgb(var(--gray-monochrome));
   --background-gradient-distance: 0rem;
 
   --gradient-header: none;
   --diagonal-stripes: none;
 
}
 
#skrollr-body {
   background-image:none;
}
 
#side-bar .side-block div a img {
   filter: grayscale(100%);
}
 
/*paper header image*/
div#container-wrap{
    background: url(http://vivarium.wdfiles.com/local--files/private%3Aasjasjas/aaa.jpg) top left repeat-x;
    background-size: 100%;
}
 
/*gradient to blend the image with the bg*/
#container {
   background-image: linear-gradient(180deg, rgba(0,0,0,0) 0%, rgba(231,211,156,1) 37%);
   background-size: 16rem 37rem;
   background-attachment: scroll;
   background-repeat: repeat-x;
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
   color: rgb(var(--dark-accent));
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
   color: rgb(var(--dark-accent));
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
    color: rgb(var(--gray-monochrome)) !important;
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
 
/* TABVIEW - Abandon All Hope Ye Who Enter Here */
/*content bg*/
.yui-navset .yui-content {
     background-color: rgba(var(--pale-gray-monochrome), 0.25);
}
 
/*unselected tab color*/
.yui-navset .yui-nav a,
.yui-navset .yui-navset-top .yui-nav a {
    background-color: rgb(var(--gray-monochrome));
    color:rgb(var(--white-monochrome));
}
 
/*hover tab bg*/
.yui-navset .yui-nav a:hover,
.yui-navset .yui-nav a:focus {
    background-color: rgb(var(--pale-accent));
}
 
/*selected tab bg*/
.yui-navset .yui-nav .selected,
.yui-navset .yui-navset-top .yui-nav .selected {
    background-color: rgb(var(--pale-gray-monochrome));
}
 
.yui-navset .yui-nav .selected a:focus,
.yui-navset .yui-nav .selected a:active {
    background-color: rgb(var(--pale-gray-monochrome));
}
 
/*idrk just testing some stuff*/
.code{
color: rgb(var(--white-monochrome));
}
 
h1{
line-height: 1.113rem;
}
 
/*table border color*/
#page-content table.wiki-content-table th {
border: 1px solid rgb(var(--pale-gray-monochrome)) !important;
}
 
#page-content table.wiki-content-table td {
border: 1px solid rgb(var(--pale-gray-monochrome)) !important;
}
/*mobile stuff*/
@media only screen and (max-width:768px){
 
:root{
   --swatch-menubg-color: var(--white-monochrome);
   --header-height-on-mobile: 7.5rem;
}
 
#main-content {
max-width: 90vw;
padding: 0;
margin: 9.2em auto 0;
}
 
#header {
position: absolute;
top: 0rem;
height: var(--header-height-on-mobile);
}
 
div#container-wrap{
    background: url(http://vivarium.wdfiles.com/local--files/private%3Aasjasjas/aaa.jpg) top center repeat-x;
    background-size: 220%;
}
 
#container {
   background-image: linear-gradient(180deg, rgba(0,0,0,0) 0%, rgba(231,211,156,1) 37%);
   background-size: 20rem 20rem;
   background-attachment: scroll;
}
}
 
@media only screen and (max-width:1366px){
#container {
   background-image: linear-gradient(180deg, rgba(0,0,0,0) 0%, rgba(231,211,156,1) 37%);
   background-size: 25rem 25rem;
   background-attachment: scroll;
}
div#container-wrap{
    background: url(http://vivarium.wdfiles.com/local--files/private%3Aasjasjas/aaa.jpg) top center repeat-x;
    background-size: 180%;
}
}
 
/*block____*/
blockquote {
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
   background-color:rgb(var(--white-monochrome));
   border-color: rgb(var(--pale-gray-monochrome));
}
 
.styled-quote {
   background-color:rgb(var(--white-monochrome));
   border-left: 0.5rem solid rgba(var(--pale-gray-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.dark-styled-quote {
   background-color:rgb(var(--gray-monochrome));
   border-left: 0.5rem solid rgba(var(--pale-gray-monochrome));
   color:rgb(var(--white-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.dark-styled-quote a{
color: rgb(var(--swatch-menubg-medium-color));
}
 
.lightblock {
   background-color:rgb(var(--white-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
.darkblock {
   background-color:rgb(var(--pale-gray-monochrome));
   color:rgb(var(--white-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
.darkblock a {
color: rgb(var(--swatch-menubg-medium-color));
}
 
.paperblock{
width: auto;
padding: 0.01rem 1rem;
margin: 0.5rem 0 0.5rem 0.25rem;
background: url(http://vivarium.wdfiles.com/local--files/backrooms%3Aoldpapertheme/thefinalone.jpg) repeat center;
text-shadow: 1px 1px 1px rgba(0,0,0,.25);
box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
.paperblock2{
width: auto;
padding: 0.01rem 1rem;
margin: 0.5rem 0 0.5rem 0.25rem;
background: linear-gradient(180deg, rgba(235, 196, 63,.3), rgba(235, 196, 63,.3)), url(http://vivarium.wdfiles.com/local--files/backrooms%3Aoldpapertheme/thefinalone.jpg) repeat center;
text-shadow: 1px 1px 1px rgba(0,0,0,.25);
box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
/* ==SD CLASS CODE== */
 
.sd-container {
   --sd-border:var(--pale-gray-monochrome);
   --sd-bullets:var(--sd-border);
   --sd-symbol:var(--sd-border);
}
```

[- Close](javascript:;)

---

Source: [https://backrooms-wiki.wikidot.com/theme:forbidden-text](https://backrooms-wiki.wikidot.com/theme:forbidden-text)
