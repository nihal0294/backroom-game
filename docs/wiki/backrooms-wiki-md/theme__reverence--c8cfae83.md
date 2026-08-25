---
title: "Reverence Theme"
source: "https://backrooms-wiki.wikidot.com/theme:reverence"
retrieved_at: "2026-08-23T23:42:12+00:00"
license: CC-BY-SA-3.0
---

# Reverence Theme

rating: +26[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  
This theme was created by with minor edits by . To import this theme to your page, put the following text anywhere inside it:

[[include :backrooms-wiki:theme:reverence]]

# Examples

![Missing alt text.](https://backrooms-sandbox-2.wdfiles.com/local--files/collab:enhanced-reverence/rev)

The… Reverence?

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
> > Nested blockquotes[1](javascript:;)

| This is a | table |
| --- | --- |
| You should know | how to make these |
| already | |

This is a styled blockquote.

It can hold many things.

You are a cat.  
**You are a cat.**  
*You are a cat.*  
You are a cat.  
You are a cat.  
You are a cat.

---

The header and title font used is Roboto Slab.  
The body font used is Open Sans.  
The monospace font used is Courier.

---

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
/*fonts*/
/*
   Reverence Theme
 
   by Evfist (and Viv!)
*/
@import url(https://backrooms-wiki.wdfiles.com/local--code/component%3Apatch/1);
 
@import url('https://fonts.googleapis.com/css2?family=Mukta:wght@500&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Major+Mono+Display&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap');
 
:root {
   --theme-base: "black-highlighter";
   --theme-id: "liminal";
   --theme-name: "Reverence Theme";
 
   --logo-image: url("http://backrooms-sandbox.wdfiles.com/local--files/reverencetheme/Reverence4.png");
   --header-title: "Project R.O.U.G.E";
   --header-subtitle: "Records Of Unidentified Group Entity";
 
   --body-font: 'Roboto', sans-serif;
   --header-font: 'Roboto', sans-serif;
   --title-font: 'Mukta', sans-serif;
   --mono-font: 'Mukta', sans-serif;
 
   --white-monochrome: 250, 249, 247;
   --pale-gray-monochrome: 240, 237, 228;
   --light-gray-monochrome: 240, 237, 228;
   --gray-monochrome: 0, 0, 0;
   --black-monochrome: 25, 20, 16;
   --bright-accent: 115, 115, 112;
   --medium-accent: 0, 0, 0;
   --dark-accent: 0, 0, 0;
   --pale-accent: 0, 0, 0;
 
   --swatch-topmenu-border-color: var(--medium-accent);
 
   --link-color: 37, 116, 244;
   --visited-link-color: 0, 82, 163;
   --hover-link-color: 37, 116, 244;
   --newpage-color: 186, 0, 0;
 
   --gradient-header: linear-gradient(to top,
      rgba(var(--pale-accent)) 0%,
      rgba(var(--pale-accent)) 100%
   );
   --diagonal-stripes: linear-gradient(transparent 0);
 
   /*header shadow*/
   --background-gradient-distance: 10rem;
   --background-gradient-color: var(--pale-accent);
   --gradient-background: linear-gradient(to bottom, rgba(var(--background-gradient-color), 1) 95%,  rgba(var(--background-gradient-color), 0) 100%);
 
   /*side bar*/
   --swatch-menubg-color: none;
 
    --rating-module-button-plus-color: 0, 0, 0;
   --rating-module-button-negative-color: 0, 0, 0;
   --rating-module-button-cancel-color: 0, 0, 0;
   --rating-module-button-credit-color: 0, 0, 0;
}
 
#main-content {
    --tabs-selected-bg: var(--black-monochrome);
    --tabs-selected-outline: var(--black-monochrome);
}
 
/*removing dots*/
#skrollr-body {
   background-image:none;
}
 
#side-bar .side-block div a img {
   filter: grayscale(100%);
}
 
/*removing dots 2*/
#container {
   background-image: none;
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
   background-size: auto 8rem;
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
 
/*footnote fix*/
.hovertip {
    background-color: rgb(var(--white-monochrome)) !important;
}
 
/*tab border color*/
.yui-navset .yui-content {
     border-color: rgb(var(--pale-accent));
}
 
/*tables*/
#page-content table.wiki-content-table th {
border: 1px solid rgb(var(--bright-accent)) !important;
background-color: rgb(var(--pale-accent));
color: rgb(var(--white-monochrome));
}
 
#page-content table.wiki-content-table td {
border: 1px solid rgb(var(--pale-accent)) !important;
}
 
/*searchbox border color*/
#search-top-box-input {
    border-color: rgb(var(--white-monochrome));
}
 
#search-top-box-form input[type="submit"] {
    border-color: rgb(var(--white-monochrome));
}
 
#search-top-box-form input[type="submit"]:hover {
    border-color: rgb(var(--white-monochrome));
}
 
#search-top-box-input:hover,
#search-top-box-input:focus {
    color: rgb(var(--gray-monochrome));
}
 
/*fix scrollbar thingy*/
body::-webkit-scrollbar-thumb {
  background-color: rgb(var(--pale-accent));
  opacity: 1;
}
 
/*new fancy blockquote*/
#page-content blockquote,
#page-content .blockquote,
#page-content div.blockquote,
#page-content [class*="blockquote"] {
    border: 4px double white;
    outline: 6px solid black;
    background-color: black;
    color: white;
    margin: 1em 46px;
    padding: 1em;
}
 
@media only screen and (max-width: 768px) {
:root{
   --swatch-menubg-color: var(--white-monochrome);
}
 
#page-content blockquote,
#page-content .blockquote,
#page-content div.blockquote,
#page-content [class*="blockquote"] {
    margin-left: 0;
    margin-right: 0;
    }
}
 
.styled-quote {
   background-color:rgb(var(--light-gray-monochrome));
   border-left: 0.5rem solid rgba(var(--pale-accent));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.dark-styled-quote {
   background-color:rgb(var(--white-monochrome));
   border-left: 0.5rem solid rgba(var(--bright-accent));
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
   background-color:rgb(var(--gray-monochrome));
   color:rgb(var(--white-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
```

[- Close](javascript:;)

Footnotes

[1](javascript:;). And here's a footnote!

---

Source: [https://backrooms-wiki.wikidot.com/theme:reverence](https://backrooms-wiki.wikidot.com/theme:reverence)
