---
title: "Stardust Theme"
source: "https://backrooms-wiki.wikidot.com/theme:stardust"
retrieved_at: "2026-08-23T23:42:27+00:00"
license: CC-BY-SA-3.0
---

# Stardust Theme

rating: +44[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

This theme was created by .

To import this theme to your page, put the following text anywhere inside it:

[[include :backrooms-wiki:theme:stardust]]

# Examples

![Missing alt text.](https://live.staticflickr.com/65535/50261231657_28c0daacf7_k.jpg)

The Beyond

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
- [*Example Tab*](javascript:;)
- [*Example Tab*](javascript:;)
- [*Example Tab*](javascript:;)
- [*Example Tab*](javascript:;)

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

transparency!

opacity!

> 1
>
> > 2
> >
> > > 3
> > >
> > > > 4

> Hey!  
> Blockquote inside styled blockquote

Many of them!

woahhhh

> This is a blockquote, created by putting "> " at the start of each line.  
> More text
>
> ---
>
> That's a horizontal rule
>
> > Nested blockquotes
> >
> > > Nested2
> > >
> > > > Nested3

| This is a | table |
| --- | --- |
| You should know | how to make these |
| already | |

[[div class="styled-quote"]]

[[/div]]

[[div class="lightblock"]]

[[/div]]

[[div class="dark-styled-quote"]]

[[/div]]

[[div class="darkblock"]]

[[/div]]

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
/*fonts*/
@import url('https://fonts.googleapis.com/css2?family=Roboto+Slab&display=swap');
@import url('https://fonts.googleapis.com/css?family=Basic|IBM+Plex+Mono:400,700');
 
:root {
    --theme-base: "black-highlighter";
    --theme-id: "stardust";
    --theme-name: "Stardust Theme";
 
    /* Header */
    --logo-image: url("http://backrooms-wiki.wikidot.com/local--files/component:theme/logo.svg");
    --header-title: "The Backrooms";
    --header-subtitle: "Reach for the stars.";
 
    /* Standard Colors */
    --pale-gray-monochrome: 250, 250, 250;
     /* white*/
    --black-monochrome: 0, 0, 0;
    --dark-gray-monochrome: 0, 0, 0;
    /* black */
    --bright-accent: 71, 213, 240;
    /* the bright blue */
    --medium-accent: 167, 27, 59;
     /* the bright blue animated */
    --dark-accent: 167, 27, 59;
    /* dark blue for background*/
 
    /* Primary Theme Colors */
    --swatch-background: var(--black-monochrome);
    --swatch-primary: var(--bright-accent);
    --swatch-secondary-color: var(--black-monochrome);
 
    /* Primary Text Colors */
    --swatch-text-general: var(--swatch-text-light);
    --swatch-important-text: var(--bright-accent);
 
    /* Primary Menu Colors */
    --swatch-menubg-color: var(--black-monochrome);
    --swatch-menutxt-dark-color: var(--white-monochrome);
    --swatch-menutxt-general-color: var(--swatch-menutxt-light-color);
    --swatch-border-color: var(--bright-accent);
 
    /* Primary Header Colors */
    --swatch-headerh1-color: var(--white-monochrome);
    --swatch-headerh2-color: var(--white-monochrome);
    --swatch-topmenu-border-color: var(--bright-accent);
    --swatch-topmenu-bg-color: var(--black-monochrome);
 
    /* Link Colors */
    --link-color: var(--bright-accent);
    --visited-link-color: var(--medium-accent);
    --hover-link-color: var(--bright-accent);
    --sidebar-links-text: var(--swatch-menutxt-dark-color);
    --link-color-bright: var(--medium-accent);
 
/* Header Gradients */
--gradient-header: none;
--diagonal-stripes: none;
 
}
 
#main-content {
    --tabs-selected-bg: var(--medium-accent);
    --tabs-selected-outline: var(--medium-accent);
}
 
/*weird stuff*/
 
 #page-title::after,
 .meta-title::after,
 #page-title::before,
 .meta-title::before {
        background: rgb(var(--swatch-primary));
}
 
#top-bar {
    --dropdown-border-color: var(--bright-accent);
}
 
hr {
  background-color: rgb(var(--bright-accent));
  border-color: rgb(var(--bright-accent));
}
 
#page-title {
    border-color: rgb(var(--bright-accent));
    color: rgb(var(--bright-accent))!important;
}
 
#skrollr-body {
   background-image: none;
}
 
div#container-wrap{
    background: url(http://vivarium.wdfiles.com/local--files/backrooms%3Astarstheme/coolbgfr.jpg) top center repeat-x;
    background-size: 100%;
}
 
#container {
   background-image: linear-gradient(180deg, rgba(0,0,0,0) 0%, rgba(0,0,0,1) 37%);
   background-size: 37rem 37rem;
   background-attachment: scroll;
}
 
#header {
   background-image: none;
}
 
/* Header Colours */
h1, h2, h3, h4, h5, h6 {
    color: rgb(var(--bright-accent));
}
 
/*image block*/
#page-content .scp-image-block .scp-image-caption {
    color: rgb(var(--bright-accent));
    background-color: rgba(var(--bright-accent), .25);
    border-color: rgba(var(--bright-accent));
}
 
#page-content .image-block,
#page-content  .scp-image-block {
    border: 1px solid rgba(var(--bright-accent));
    box-shadow: none;
}
 
/*rate module*/
#content-wrap #page-content .page-rate-widget-box {
    background: none;
    border: none;
    background-color: rgba(var(--bright-accent), .25);
    border-left: 0.2rem solid rgba(var(--bright-accent));
    box-shadow: none;
}
 
/*table*/
#page-content table.wiki-content-table th {
border: 1px solid rgb(var(--medium-accent)) !important;
background-color: rgba(var(--medium-accent), .25);
color: rgb(var(--medium-accent));
}
 
#page-content table.wiki-content-table td {
border: 1px solid rgb(var(--medium-accent)) !important;
}
 
/*top bar*/
#top-bar div.top-bar > ul > li > ul,
#top-bar div.mobile-top-bar > ul > li > ul {
    background-color: rgba(var(--bright-accent), 0.5);
}
 
#top-bar div.top-bar > ul > li > a:hover,
#top-bar div.mobile-top-bar > ul > li > a:hover {
    background-color: rgba(var(--bright-accent), 0.5);
}
 
#top-bar div.top-bar > ul > li:hover > a,
#top-bar div.mobile-top-bar > ul > li:hover > a {
    background-color: rgba(var(--bright-accent), 0.5);
}
 
/* tabs! */
 
/*unselected tab color*/
.yui-navset .yui-nav a,
.yui-navset .yui-navset-top .yui-nav a {
     background-color: rgba(var(--medium-accent), .25);
     color:rgb(var(--white-monochrome));
}
 
/*hover tab bg*/
.yui-navset .yui-nav a:hover,
.yui-navset .yui-nav a:focus {
     background-color: rgba(var(--bright-accent), .25);
}
 
/*selected tab bg*/
.yui-navset .yui-nav .selected,
.yui-navset .yui-navset-top .yui-nav .selected {
     background-color: rgba(var(--medium-accent), 1);
}
 
.yui-navset .yui-nav .selected a:focus,
.yui-navset .yui-nav .selected a:active {
     background-color: rgba(var(--medium-accent), 1);
}
 
/*backer background*/
.yui-navset .yui-nav li,
.yui-navset .yui-navset-top .yui-nav li {
    background: rgb(var(--black-monochrome));
}
 
/* content background color */
#content-wrap #page-content .yui-navset .yui-content {
    background-color: rgba(var(--medium-accent), 0.25);
}
 
/* content border */
#content-wrap #page-content .yui-navset .yui-content,
#content-wrap #page-content .yui-navset .yui-navset-top .yui-content {
    border: 1px solid rgb(var(--medium-accent));
}
 
/* edit menu */
 
form#edit-page-form:not(.data-form) {
    background-color: rgba(var(--bright-accent), 0.25);
}
 
/*mobile stuff*/
@media only screen and (max-width:768px){
 
:root{
   --header-height-on-mobile: 7.5rem;
}
 
#page-title { padding-top: 3.5rem;}
 
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
    background: url(http://vivarium.wdfiles.com/local--files/backrooms%3Astarstheme/coolbgfr.jpg) top center repeat-x;
    background-size: 220%;
}
 
#container {
   background-image: linear-gradient(180deg, rgba(0,0,0,0) 0%, rgba(0,0,0,1) 37%);
   background-size: 20rem 20rem;
   background-attachment: scroll;
}
}
 
@media only screen and (max-width:1366px){
#container {
   background-image: linear-gradient(180deg, rgba(0,0,0,0) 0%, rgba(0,0,0,1) 37%);
   background-size: 25rem 25rem;
   background-attachment: scroll;
}
div#container-wrap{
    background: url(http://vivarium.wdfiles.com/local--files/backrooms%3Astarstheme/coolbgfr.jpg) top center repeat-x;
    background-size: 160%;
}
}
 
/*funny blocks*/
#page-content blockquote {
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
   background-color:rgba(var(--bright-accent), .25);
   border-color: rgb(var(--bright-accent));
}
 
.styled-quote {
   background-color:rgba(var(--bright-accent), .25);
   border-left: 0.5rem solid rgb(var(--bright-accent));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
   color: rgb(var(--white-monochrome));
}
 
.dark-styled-quote {
   background-color:rgba(var(--medium-accent), .25);
   border-left: 0.5rem solid rgb(var(--medium-accent));
   color:rgb(var(--white-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.dark-styled-quote a{
color: rgb(var(--swatch-menubg-medium-color));
}
 
.lightblock {
   background-color:rgba(var(--bright-accent), .25);
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
   color: rgb(var(--white-monochrome));
}
 
.darkblock {
   background-color:rgba(var(--medium-accent), .25);
   color:rgb(var(--white-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
#header h1 a:hover:before {
     text-shadow: var(--header-text-shadow);
}
 
/* ==SD CLASS CODE== */
 
.sd-container {
   --sd-border:var(--medium-accent);
   --sd-bullets:var(--sd-border);
   --sd-symbol:255,255,255;
}
```

[- Close](javascript:;)

---

Source: [https://backrooms-wiki.wikidot.com/theme:stardust](https://backrooms-wiki.wikidot.com/theme:stardust)
