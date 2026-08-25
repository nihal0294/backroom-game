---
title: "Eyes Of Argos Theme"
source: "https://backrooms-wiki.wikidot.com/theme:eyes-of-argos"
retrieved_at: "2026-08-23T23:38:00+00:00"
license: CC-BY-SA-3.0
---

# Eyes Of Argos Theme

rating: +26[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

This theme was created by .

To import this theme to your page, put the following text anywhere inside it:

[[include :backrooms-wiki:theme:eyes-of-argos]]

# Examples

![Missing alt text.](https://i.imgur.com/yPqvXd4.gif)

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

[[div class="darkblock"]]

[[/div]]

[[div class="styled-quote"]]

[[/div]]

[[div class="borderblock"]]

[[/div]]

[[div class="logoblock"]]

[[/div]]

![imageimage.PNG](http://vivarium.wdfiles.com/local--files/theme%3Aeyes-of-argos/imageimage.PNG)  
Include this custom survival dificulty header on any page (without the need to import the whole theme) by pasting the following code:

[[include :vivarium:backrooms:sdargos]]

---

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
/*fonts*/
@import url('https://fonts.googleapis.com/css2?family=Roboto+Slab&display=swap');
@import url('https://fonts.googleapis.com/css?family=Basic|IBM+Plex+Mono:400,700');
 
@import url(https://backrooms-wiki.wdfiles.com/local--code/component%3Apatch/1);
 
:root {
    --theme-base: "black-highlighter";
    --theme-id: "eyes-of-argos";
    --theme-name: "Eyes of Argos Theme";
 
    /* Header */
    --logo-image: url("http://backrooms-sandbox.wdfiles.com/local--files/eyesofargos/image%20%281%29.png");
    --header-title: "The Eyes of Argos";
    --header-subtitle: "We are watching...";
 
    /* Typefaces */
    --body-font: 'Roboto Slab', serif;
    --header-font: 'IBM Plex Mono', monospace;
    --title-font: 'IBM Plex Mono', monospace;
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
 
    /* Primary Theme Colors */
    --swatch-background: var(--dark-accent);
    --swatch-primary: var(--bright-accent);
    --swatch-primary-darker: var(--medium-accent);
    --swatch-primary-darkest: var(--black-monochrome);
    --swatch-secondary-color: var(--dark-accent);
 
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
 
     /*making the header larger*/
     --header-height-on-desktop: 10rem;
 
/* Header Gradients */
     --gradient-header: linear-gradient(180deg, rgba(0,0,0,1) 0%, rgba(24,36,56,1) 79%);
     --diagonal-stripes: repeating-linear-gradient(-45deg, rgba(var(--bright-accent), 0.3), rgba(var(--bright-accent), 0.3) 1px, transparent 2px, transparent 30px),
repeating-linear-gradient(45deg, rgba(var(--bright-accent), 0.3), rgba(var(--bright-accent), 0.3) 1px, transparent 2px, transparent 30px);
 
}
 
#main-content {
    --tabs-bg: var(--black-monochrome);
    --tabs-content-bg-color: none;
    --blockquote-bg-color: var(--black-monochrome);
    --blockquote-border-color: var(--bright-accent);
 }
 
/* sd banner colours */
 
.sd-container {
   --sd-text:var(--white-monochrome);
   --sd-border:var(--medium-accent);
   --sd-bullets:var(--medium-accent);
   --sd-symbol:var(--black-monochrome);
}
 
/*weird stuff*/
#main-content hr {
  background-color: rgb(var(--bright-accent));
  border-color: rgb(var(--bright-accent));
}
 
#page-title {
    color: rgb(var(--bright-accent))!important;
}
 
 #page-title::after,
 .meta-title::after,
 #page-title::before,
 .meta-title::before {
        background: rgb(var(--swatch-primary));
}
 
#top-bar {
    --dropdown-border-color: var(--bright-accent);
}
 
#skrollr-body {
   background-image: none;
}
 
#side-bar .side-block div a img {
   filter: grayscale(100%);
}
 
#container {
   background-image: none;
}
 
#header, #top-bar {
   background-attachment: scroll;
}
 
#header {
   background-image: none;
}
 
#login-status {
    color: rgb(var(--bright-accent));
}
 
#header::before {
   content: "";
   position: absolute;
   height: 100%;
   width: 100%;
   left: 8.1rem;
   top: -1rem;
   background-image: var(--logo-image);
   background-size: auto 8rem;
   background-position: left;
   background-repeat: no-repeat;
   opacity: 0.6;
}
 
#header h1, #header h1 a {
   position: absolute;
   top: 1rem;
   margin: 0;
   width: 100%;
   display: flex;
   justify-content: left;
   z-index: 0;
}
 
#header h2, #header h2 span, #header h2 span::before {
   position: absolute;
   top: 2rem;
   margin: 0;
   left: 2rem;
   width: 100%;
   display: flex;
   justify-content: left;
}
 
#header h1 a::before, #header h2 span::before {
   text-shadow: .063rem 0.1rem 0.1rem #0c0c0c;
}
 
/*mobile*/
@media only screen and (max-width: 768px) {
#header::before {
   left: unset;
   top: unset;
   background-position: none;
}
 
#header h1, #header h1 a {
   justify-content: none;
}
}
 
/* Header Colours */
h1 {
    color: rgb(var(--bright-accent));
}
 
h2, h3, h4, h5, h6 {
    color: rgb(var(--white-monochrome));
}
 
/*image block*/
#page-content .scp-image-block .scp-image-caption {
    color: rgb(var(--bright-accent));
    background-color: rgb(var(--black-monochrome));
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
    background-color: rgb(var(--black-monochrome));
    border-left: 0.2rem solid rgb(var(--bright-accent));
    box-shadow: var(--quote-shadow);
}
 
/*table*/
#page-content table.wiki-content-table th {
border: 1px solid rgb(var(--bright-accent)) !important;
background-color: rgb(var(--black-monochrome));
color: rgb(var(--bright-accent));
}
 
#page-content table.wiki-content-table td {
border: 1px solid rgb(var(--bright-accent)) !important;
}
 
/* content background color */
#content-wrap #page-content .yui-navset .yui-content {
    background-color: rgb(var(--dark-accent));
    border: none;
} 
 
form#edit-page-form:not(.data-form) {
    background-color: rgba(var(--dark-accent));
}
 
/*funny blocks*/
.blockquote {
   background-color:rgb(var(--black-monochrome));
   border-color: rgb(var(--bright-accent));
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
blockquote {
   background-color:rgb(var(--black-monochrome));
   border-color: rgb(var(--bright-accent));
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.blockquote {
   background-color:rgb(var(--black-monochrome));
   border-color: rgb(var(--bright-accent));
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.styled-quote {
   background-color:rgb(var(--black-monochrome));
   border-left: 0.5rem solid rgba(var(--bright-accent));
   color:rgb(var(--white-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.dark-styled-quote a{
color: rgb(var(--swatch-menubg-medium-color));
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
background: url(http://backrooms-sandbox.wdfiles.com/local--files/eyesofargos/image%20%281%29.png) center/50% no-repeat;
opacity: 0.5;
top: 0;
left: 0;
bottom: 0;
right: 0;
position: absolute;
z-index: 1;
pointer-events: none;
}
```

[- Close](javascript:;)

---

Source: [https://backrooms-wiki.wikidot.com/theme:eyes-of-argos](https://backrooms-wiki.wikidot.com/theme:eyes-of-argos)
