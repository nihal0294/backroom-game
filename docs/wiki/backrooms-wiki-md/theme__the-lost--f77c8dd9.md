---
title: "The Lost Theme"
source: "https://backrooms-wiki.wikidot.com/theme:the-lost"
retrieved_at: "2026-08-23T23:42:28+00:00"
license: CC-BY-SA-3.0
---

# The Lost Theme

rating: +20[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

This theme was created by and .

To import this theme to your page, put the following text anywhere inside it:

[[include :backrooms-wiki:theme:the-lost]]

# Examples

![Missing alt text.](http://backrooms-sandbox-2.wikidot.com/local--files/collab:lost-theme/deertest.png)

funky museum

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
| Nobody uses | these stupid |
| things | |

The Header font is Mate SC.  
The Body font is Kavivanar.  
The Title font is Merienda.  
The monospace font is Syne Mono.

  

[[div class="styled-quote"]]

[[/div]]

[[div class="lightblock"]]

[[/div]]

[[div class="dark-styled-quote"]]

[[/div]]

[[div class="darkblock"]]

[[/div]]

[[div class="paperblock"]]

[[/div]]

Kinda stole this from .

  
  
Deer is a nerd.  
**Deer is a nerd.**  
*Deer is a nerd.*  
Deer is a nerd.  
Deer is a nerd.  
Deer is a nerd.

[Author/Image Licensing](javascript:;)

[Hide Author/Image Licensing](javascript:;)

> "open book 01" by Anonymous, CC0  
> <https://commons.wikimedia.org/wiki/File:Open_book_01.svg>  
> [![80x15.png](https://i.creativecommons.org/l/zero/1.0/80x15.png)](http://creativecommons.org/licenses/zero/1.0/)  
>   
> Author:

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
@import url(https://backrooms-wiki.wdfiles.com/local--code/component%3Apatch/1);
 
@import url('https://fonts.googleapis.com/css2?family=Syne+Mono&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Kavivanar&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Merienda&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Mate+SC&display=swap');
 
:root {
    /* S-CSS-P Integration */
    /* If you're making a new CSS theme, please include the following three variables at minimum. */
    --theme-base: "black-highlighter";
    /* must be either "black-highlighter" or "sigma9" */
    --theme-id: "lost-theme";
    /* set this to the URL of your theme's page - eg for "component:ar-theme", set it to "ar-theme" */
    --theme-name: "lost-theme";
    /* set this to your theme's full name */
 
   --logo-image: url("http://backrooms-sandbox-2.wikidot.com/local--files/collab:lost-theme/deertest.png");
   --header-title: "The Lost";
   --header-subtitle: "Millennia of Knowledge ";
 
   --body-font: 'Kavivanar';
   --header-font: 'Mate SC';
   --title-font: 'Merienda';
   --mono-font: 'Syne Mono';
 
   --white-monochrome: 255, 252, 231;
   --pale-gray-monochrome:  229, 168, 107;
   --light-gray-monochrome: 155, 101, 62;
   --gray-monochrome: 67, 102, 49;
   --black-monochrome: 63, 66, 50;
   --bright-accent: 150, 198, 209;
   --medium-accent: 32, 18, 4;
   --dark-accent: 89, 58, 42;
   --pale-accent: 67, 42, 23;
   --black-mono: 20, 20, 20;
   --table-color: 215, 240, 240;
   --funky-tab-color: 215, 240, 240;
 
   --swatch-topmenu-border-color: var(--medium-accent);
   --swatch-menubg-dark-color: var(--dark-accent);
   --swatch-text-light: var(--white-monochrome);
 
   --link-color: 67, 102, 49;
   --hover-link-color: 67, 102, 49;
 
   --diagonal-stripes: linear-gradient(transparent 0);
    --background-gradient-distance: 30rem;
}
 
#skrollr-body {
    width: 100%;
    position: absolute;
    top: 0;
    left: 0;
    background-image: url("http://backrooms-sandbox-2.wikidot.com/local--files/collab:lost-theme/lostbanner3");
 background-repeat: repeat-x;
background-size: inherit;
}
 
.yui-navset .yui-content {
   background-color:rgba(var(--table-color), .5);
   border-color: rgba(var(--dark-accent));
}
 
.page-rate-widget-box {
    background: rgba(var(--bright-accent), .49);
    border-color: rgba(var(--dark-accent));
    border-width: 1px;
}
 
.scp-image-block .scp-image-caption {
    background-color: rgba(var(--gray-monochrome), .5);
}
 
#search-top-box-input {
    background-color: rgba(var(--bright-accent), .25);
}
#search-top-box-input:hover,
#search-top-box-input:focus {
    background: rgba(var(--bright-accent), .25);
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
   left: 0.1rem;
   top: -1rem;
   background-image: var(--logo-image);
   background-size: auto 7.25rem;
   background-position: center;
   background-repeat: no-repeat;
   opacity: 0.6;
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
 
span.printuser {
    color: rgb(var(--dark-accent))
}
 
.code {
    border: 2px dotted rgb(var(--dark-accent));
}
 
blockquote {
   padding:0.4rem 0.4rem;
   margin:1rem 0;
   background:rgb(var(--pale-gray-monochrome), .55);
   border-radius:0.8rem;
   box-shadow: 0px 0px 3px;
   border: 3px double rgb(var(--dark-accent));
   box-sizing:border-box;
}
 
.block-quote {
   padding:0.4rem 0.4rem;
   margin:1rem 0;
   background:rgb(var(--pale-gray-monochrome));
   border-radius:0.8rem;
   box-shadow: 0px 0px 3px;
   border: 3px double rgb(var(--dark-accent));
   box-sizing:border-box;
}
 
.borderblock {
   background-color:rgb(var(--funky-tab-color));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
   border: solid 0.3rem rgb(var(--medium-accent));
}
 
.styled-quote {
   background-color:rgb(var(--pale-gray-monochrome));
   border-left: 0.5rem solid rgba(var(--medium-accent));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.2rem 0.4rem 1.2rem rgba(0,0,0,.25);
}
 
.dark-styled-quote {
   background-color:rgb(var(--medium-accent));
   border-left: 0.5rem solid rgba(var(--pale-gray-monochrome));
   color:rgb(var(--white-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.2rem 0.4rem 1.2rem rgba(0,0,0,.25);
}
 
.dark-styled-quote a{
color: rgb(var(--medium-accent));
}
 
.lightblock {
   background-color:rgb(var(--funky-tab-color));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.8rem 1.2rem rgba(0,0,0,.25);
}
 
.darkblock {
   background-color:rgb(var(--medium-accent));
   color:rgb(var(--white-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.8rem 1.2rem rgba(0,0,0,.25);
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
 
table.wiki-content-table td {
background-color: rgb(var(--gray-monochrome), .25);
}
 
/* ==SD CLASS CODE== */
 
.sd-container {
   --sd-symbol:var(--sd-text);
}
```

[- Close](javascript:;)

Footnotes

[1](javascript:;). And here's a footnote!

---

Source: [https://backrooms-wiki.wikidot.com/theme:the-lost](https://backrooms-wiki.wikidot.com/theme:the-lost)
