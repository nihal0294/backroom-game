---
title: "The Visionaries of Berry Theme (Legacy)"
source: "https://backrooms-wiki.wikidot.com/theme:legacy-berry"
retrieved_at: "2026-08-23T23:37:07+00:00"
license: CC-BY-SA-3.0
---

# The Visionaries of Berry Theme (Legacy)

rating: +13[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

This theme was created by .

### THIS THEME IS OUTDATED! USE [THIS ONE](theme__berry--5b1266df.md) INSTEAD FOR BERRY-RELATED PAGES!

To import this theme to your page, put the following text anywhere inside it:

[[include :backrooms-wiki:theme:legacy-berry]]

The Header font is Kings.  
The Title font is Kings.  
The Body font is Asap.  
The monospace font is Fira Mono.

# Examples

![Missing alt text.](http://deer-box.wdfiles.com/local--files/berry-theme-new/berrygold.png)

Insignia

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

[[div class="styled-quote"]]

[[/div]]

[[div class="lightblock"]]

[[/div]]

[[div class="dark-styled-quote"]]

[[/div]]

[[div class="darkblock"]]

[[/div]]

[[div class="borderblock"]]

[[/div]]

  
  
The quick brown fox jumped over the lazy dog.  
**The quick brown fox jumped over the lazy dog.**  
*The quick brown fox jumped over the lazy dog.*  
The quick brown fox jumped over the lazy dog.  
The quick brown fox jumped over the lazy dog.  
The quick brown fox jumped over the lazy dog.  
superscript  
subscript  
[Existing Link](level-0.md)  
[Dead Link](https://backrooms-wiki.wikidot.com/dead-link)

[Author/Image Licensing](javascript:;)

[Hide Author/Image Licensing](javascript:;)

> VOB Insignia was made by Cheshire345, and gave permission for it to be used on-site.  
> <https://www.deviantart.com/cheshire345>  
>   
> Author:

---

The icon was made by Cheshire345!  
Go check out their art: <https://www.deviantart.com/cheshire345>

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
@import url(https://nuliminal-test.wdfiles.com/local--code/component%3Apatch/1);
 
@import url('https://fonts.googleapis.com/css2?family=Fira+Sans&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Fira+Mono&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Kings&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Asap&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Cairo&display=swap');
 
:root {
    /* S-CSS-P Integration */
    /* If you're making a new CSS theme, please include the following three variables at minimum. */
    --theme-base: "black-highlighter";
    /* must be either "black-highlighter" or "sigma9" */
    --theme-id: "berry-theme";
    /* set this to the URL of your theme's page - eg for "component:ar-theme", set it to "ar-theme" */
    --theme-name: "berry-theme";
    /* set this to your theme's full name */
 
   --logo-image: url("http://deer-box.wdfiles.com/local--files/berry-theme-new/newiconberry.png");
   --header-title: "The Visionaries of Berry";
   --header-subtitle: "See beyond your horizon.";
    --header-height-on-desktop: 8.75rem;
 
   --body-font: 'Asap';
   --header-font: 'Kings';
   --title-font: 'Kings';
   --mono-font: 'Fira Mono';
 
   --white-monochrome: 226, 237, 216;
   --pale-gray-monochrome:  162, 238, 113;
   --light-gray-monochrome: 82, 160, 40;
   --gray-monochrome: 161, 238, 113;
   --black-monochrome: 63, 66, 50;
   --bright-accent: 82, 160, 40;
   --medium-accent: 49, 52, 52;
   --dark-accent: 82, 160, 40;
   --pale-accent: 63, 66, 50;
   --black-mono: 20, 20, 20;
   --table-color: 223, 255, 186;
   --funky-tab-color: 227, 254, 202;
 
   --swatch-topmenu-border-color: var(--medium-accent);
   --swatch-menubg-dark-color: var(--dark-accent);
 
   --link-color: 82, 127, 11;
   --hover-link-color: 82, 127, 11;
 
   --body-font: 'Asap', sans-serif;
   --header-font: 'Kings', cursive;
   --title-font: 'Kings', cursive;
   --mono-font: 'Fira Mono', monospace;
}
 
#main-content {
   --tabs-selected-bg: var(--medium-accent);
   --tabs-selected-outline: var(--medium-accent);
}
 
#skrollr-body {
    height: var(--header-height-on-desktop);
}
 
#skrollr-body {
    width: 100%;
    position: absolute;
    top: 0;
    left: 0;
   background-image:
url("http://deer-box.wdfiles.com/local--files/berry-theme-new/bannerbg.png");
    background-size:  1920px 1080px;
}
 
#skrollr-body {
    height: var(--header-height-on-desktop);
}
 
#side-bar .side-block div a img {
   filter: grayscale(0%);
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
   left: 0rem;
   top: -1.5rem;
   background-image: var(--logo-image);
   background-size: auto 13rem;
   background-position: center;
   background-repeat: no-repeat;
   opacity: 0.6;
   z-index: -1;
}
 
#header h1, #header h1 a {
   position: flex;
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
 
span.printuser {
    color: rgb(var(--dark-accent))
}
 
.code {
    border: 2px dashed rgb(var(--pale-gray-monochrome));
}
 
blockquote {
   padding:0.4rem 0.4rem;
   margin:1rem 0;
   background:rgb(var(--pale-gray-monochrome));
   box-shadow: 0px 0px 3px;
   border: 1.75px solid rgb(var(--black-mono));
   box-sizing:border-box;
}
 
.block-quote {
   padding:0.4rem 0.4rem;
   margin:1rem 0;
   background:rgb(var(--pale-gray-monochrome));
   border-radius:0.1rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
   box-shadow: 5px 8px 8px 1px rgb(100, 100, 100);
   border: 1.75px solid rgb(var(--white-monochrome));
   box-sizing:border-box;
}
 
.borderblock {
   background-color:rgb(var(--funky-tab-color));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
   box-shadow: 5px 8px 8px 1px rgb(100, 100, 100);
}
 
.styled-quote {
   background-color:rgb(var(--pale-gray-monochrome));
   border-left: 0.5rem solid rgba(var(--medium-accent));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
   box-shadow: 5px 8px 8px 1px rgb(100, 100, 100);
}
 
.dark-styled-quote {
   background-color:rgb(var(--medium-accent));
   border-left: 0.5rem solid rgba(var(--pale-gray-monochrome));
   color:rgb(var(--white-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
   box-shadow: 5px 8px 8px 1px rgb(100, 100, 100);
}
 
.dark-styled-quote a{
color: rgb(var(--medium-accent));
}
 
.lightblock {
   background-color:rgb(var(--funky-tab-color));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
   box-shadow: 5px 8px 8px 1px rgb(100, 100, 100);
}
 
.logoblock{
padding: 0.01rem 1rem;
box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
box-shadow: 5px 8px 8px 1px rgb(100, 100, 100);
margin: 0.5rem 0 0.5rem 0.25rem;
display: block;
position: relative;
background-color:rgb(var(--funky-tab-color));
}
 
.logoblock::after{
content: "";
float: center;
border: solid 2px rgb(var(--medium-accent));
background: url(http://deer-box.wdfiles.com/local--files/berry-theme-new/newiconberry.png) center/50% no-repeat;
opacity: 0.6;
top: 0;
left: 0;
bottom: 0;
right: 0;
position: absolute;
z-index: 1;
}
 
.darkblock {
   background-color:rgb(var(--medium-accent));
   color:rgb(var(--white-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
   box-shadow: 5px 8px 8px 1px rgb(100, 100, 100);
}
 
.darkblock a {
color: rgb(var(--swatch-menubg-medium-color));
}
 
.terminalblock {
   background-color:rgb(var(--medium-accent));
   color:rgb(var(--pale-gray-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   border: solid 0.3rem rgb(var(--pale-gray-monochrome));
   letter-spacing: 0px;
}
 
.terminalblock a {
   color:rgb(156, 202, 82);
}
 
.footnotes-footer {
   background-color:rgb(var(--pale-gray-monochrome));
   border-left: 0.5rem solid rgb(20, 20, 20));
}
 
table.wiki-content-table td {
background-color: rgb(var(--table-color));
}
 
}
```

[- Close](javascript:;)

Footnotes

[1](javascript:;). And here's a footnote!

---

Source: [https://backrooms-wiki.wikidot.com/theme:legacy-berry](https://backrooms-wiki.wikidot.com/theme:legacy-berry)
