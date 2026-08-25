---
title: "U.E.C. Theme"
source: "https://backrooms-wiki.wikidot.com/theme:uec"
retrieved_at: "2026-08-23T23:37:35+00:00"
license: CC-BY-SA-3.0
---

# U.E.C. Theme

rating: +33[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

This theme was created by .

To import this theme to your page, put the following text anywhere inside it:

[[include :backrooms-wiki:theme:uec]]

# Examples

![Missing alt text.](https://backrooms-wiki.wikidot.com/local--files/theme:uec/EUC%20%282%29.png)

Incredible/Awesome/Epic logo by

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
> >
> > > Nested2
> > >
> > > > Nested3

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

[[div class="lightblock"]]

[[/div]]

[[div class="stripeblock"]]

[[/div]]

---

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
@import url("https://vivarium.wdfiles.com/local--files/backrooms%3Avivtheme/stylesheet.css");
 
:root {
   --theme-base: "black-highlighter";
   --theme-id: "advanced-splinter";
   --theme-name: "Advanced Splinter Theme";
 
   --logo-image: url("https://backrooms-wiki.wikidot.com/local--files/theme:uec/EUC%20%282%29.png");
   --header-title: "the unbound";
   --header-subtitle: "Unbound by fear, united by bravery.";
 
   --header-font: 'uni_sansheavy_caps', serif;
   --title-font: 'uni_sansheavy_caps', serif;
 
   --mainAccent: 255, 20, 40;
 
   --pale-gray-monochrome: 237, 233, 223;
   --white-monochrome: 255, 251, 240;
   --light-gray-monochrome: var(--mainAccent);
   --gray-monochrome: var(--mainAccent);
   --black-monochrome: 0, 0, 0;
   --bright-accent: var(--mainAccent);
   --medium-accent: 0, 0, 0;
   --dark-accent: var(--mainAccent);
   --pale-accent: var(--mainAccent);
   --dark-gray-monochrome: 20, 22, 24;
 
   --swatch-topmenu-border-color: var(--mainAccent);
   --swatch-topmenu-bg-color: var(--medium-accent);
   --swatch-menubg-color: var(--medium-accent);
   --swatch-border-color: var(--bright-accent);
 
  --swatch-text-general: var(--swatch-text-light);
 
   --swatch-background: var(--medium-accent);
   --swatch-menutxt-dark-color: var(--white-monochrome);
   --swatch-primary-darker: var(--pale-accent);
   --swatch-secondary-color: var(--black-monochrome);
 
   --link-color: 230, 23, 68;
   --hover-link-color: 230, 23, 68;
   --visited-link-color: 156, 17, 47;
 
   --background-gradient-distance: 0rem;
   --gradient-topmenu: none;
   --diagonal-stripes: linear-gradient(transparent 0);
   --gradient-header: none;
 
    --header-height-on-desktop: 9rem;
 
    --modal-bg: var(--black-monochrome);
 
}
 
/*Centered title code by Woedenaz */
 
@media (min-width: 36rem) {
    #page-title::after,
    .meta-title::after,
    #page-title::before,
    .meta-title::before {
        content: "";
        flex-grow: 1;
        height: 0.0625rem;
        background: rgb(var(--swatch-primary));
    }
 
    #page-title::before,
    .meta-title::before {
        margin: auto 1.25rem auto auto;
    }
}
 
 #page-title::after,
 .meta-title::after,
 #page-title::before,
 .meta-title::before {
        background: rgb(var(--swatch-primary));
}
 
/* side bar */
 
#side-bar div.menu-item {
   border-color: rgb(var(--bright-accent));
}
 
#side-bar .side-block div a img {
   filter: grayscale(100%);
}
 
/*table*/
#page-content table.wiki-content-table th {
background-color: rgb(var(--dark-gray-monochrome));
border: 2px solid rgb(var(--mainAccent)) !important;
}
 
#page-content table.wiki-content-table td {
border: 2px solid rgb(var(--mainAccent)) !important;
}
 
#page-content .scp-image-block { box-shadow: none;}
 
.scp-image-block .scp-image-caption {
    color: rgb(var(--white-monochrome));
    background-color: rgb(var(--dark-gray-monochrome));
    border: none;
    margin-top: 0.3rem;
    border-left: 0.2rem solid rgba(var(--mainAccent));
    border-right: 0.2rem solid rgba(var(--mainAccent));
}
 
#content-wrap #page-content .page-rate-widget-box {
    background: none;
    border: none;
    background-color: rgb(var(--dark-gray-monochrome));
    border-left: 0.2rem solid rgba(var(--mainAccent));
}
 
/*header gradient*/
#skrollr-body {
  background: repeating-linear-gradient(-45deg, #360509, #360509 4px, #ff1428 5px, #ff1428 5px);
  height: 11rem;
}
 
/*blend gradient*/
#container {
   background: linear-gradient(180deg, rgba(0,0,0,0) 35%, rgb(var(--medium-accent)) 93%);
   background-size: 37rem 11rem;
   background-attachment: scroll;
   background-repeat: repeat-x;
}
 
/*header stuff*/
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
   width: max-content;
   display: flex;
   justify-content: left;
   z-index: 0;
}
 
#header h2, #header h2 span, #header h2 span::before {
   position: absolute;
   left: 3.3rem;
   top: 1.8rem;
   margin: 0;
   width: max-content;
   display: flex;
   justify-content: left;
}
 
#header h1 a::before, #header h2 span::before {
   text-shadow: .063rem 0.1rem 0.1rem #0c0c0c;
   letter-spacing: 0.1rem;
}
 
#header h1 a::before{
   letter-spacing: 1rem;
}
 
#top-bar {
    --dropdown-border-color: var(--mainAccent);
}
 
/*line + block*/
#main-content hr {
   background-color: #000000;
   border-top: solid 2px rgb(var(--mainAccent));
}
 
#main-content blockquote, #main-content .blockquote, #main-content div.blockquote, #main-content [class*="blockquote"] {
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
   background-color: rgb(var(--dark-gray-monochrome));
   border: none;
   border-left: solid 2px rgb(var(--mainAccent));
}
 
/*unselected tab color*/
 .yui-navset .yui-nav a,
 .yui-navset .yui-navset-top .yui-nav a {
    background-color: rgb(var(--dark-gray-monochrome));
    color:rgb(var(--white-monochrome));
}
 
/* content background color */
#content-wrap #page-content .yui-navset .yui-content {
    background-color: rgba(var(--mainAccent), 0.2);
}
 
/* content border */
#content-wrap #page-content .yui-navset .yui-content,
#content-wrap #page-content .yui-navset .yui-navset-top .yui-content {
    border: 2px solid rgb(var(--mainAccent));
}
 
form#edit-page-form:not(.data-form) {
    background-color: rgb(var(--black-monochrome));
}
 
@media only screen and (max-width: 768px) {
:root{
   --swatch-menubg-color: var(--medium-accent);
}
 
#header::before {
background-image: none;
}
 
 #header {
     background-image: var(--logo-image);
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
    border-color: rgb(var(--mainAccent));
}
#search-top-box form[id="search-top-box-form"]:not(:focus-within) input[type="text"]{
    background: rgb(0, 0, 0);
    border-color: rgb(var(--mainAccent));
}
}
 
.styled-quote {
   background-color:rgb(var(--dark-gray-monochrome));
   border-left: 0.5rem solid rgba(var(--mainAccent));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
   color: rgb(var(--white-monochrome));
}
 
.dark-styled-quote {
   background-color:rgb(var(--black-monochrome));
   border-left: 0.5rem solid rgba(var(--mainAccent));
   color:rgb(var(--white-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.dark-styled-quote a{
color: rgb(var(--swatch-menubg-medium-color));
}
 
.lightblock {
   background-color:rgb(var(--dark-gray-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
   color: rgb(var(--white-monochrome));
}
 
.darkblock {
   background-color:rgb(var(--black-monochrome));
   color:rgb(var(--white-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
.darkblock a {
color: rgb(var(--swatch-menubg-medium-color));
}
 
.titleblock {
   background-color: rgb(var(--dark-gray-monochrome));
   padding: 0.5rem 1rem 0.10rem;
   margin: 1.5rem 0rem 0.5rem 0rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
   border: solid rgb(var(--mainAccent)) 2px;
}
 
.titlebox{
  position: relative;
  top: -1.6rem;
  background-color: rgb(var(--mainAccent));
  color: rgb(var(--white-monochrome));
  padding: 0.25rem 1rem;
  line-height: 0.1rem;
}
 
.stripeblock{
   background: repeating-linear-gradient(-45deg, #360509, #360509 4px, #ff1428 5px, #ff1428 5px);
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
   border-left: 0.5rem solid rgba(var(--dark-gray-monochrome));
   border-right: 0.5rem solid rgba(var(--dark-gray-monochrome));
}
 
#side-bar .side-block div a img {
   filter: brightness(100);
}
```

[- Close](javascript:;)

---

Source: [https://backrooms-wiki.wikidot.com/theme:uec](https://backrooms-wiki.wikidot.com/theme:uec)
