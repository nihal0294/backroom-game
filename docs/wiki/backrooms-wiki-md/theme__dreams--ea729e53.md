---
title: "Dreams"
source: "https://backrooms-wiki.wikidot.com/theme:dreams"
retrieved_at: "2026-08-23T23:35:05+00:00"
license: CC-BY-SA-3.0
---

# Dreams

rating: +18[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

This theme was based on [RU Backrooms Wiki](index.md) site theme and created by .

To import it into your pages, use:

> [[include :backrooms-wiki:theme:dreams]]

# Theme settings

Add theme settings to your [[include]] module to modify aspects of this theme.

> [[include :backrooms-wiki:theme:dreams setting|another setting]]

### All theme settings:

**invert-colors=a** — Reverses theme colors.  
**no-borders=a** — Removes borders from the main-content div block.  
**old-subtitle=a** — Returns the old subtitle in the header ("A Dream in Reality").

# Examples

![Missing alt text.](https://backrooms-wiki.wikidot.com/local--files/level-0/cc_lvl0.jpg)

This is the [Image Block](component__image-block--eb47f2b7.md) component.

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

---

- [*Tabulator*](javascript:;)
- [*Tabulation*](javascript:;)
- [*Long Tab*](javascript:;)
- [*This empty tab has a really long name*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)

This is a tab view.

More text, HELL YEAH!

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
| You don't know | how to make these |
| right? | |

---

Foot[1](javascript:;)  
Text  
Another text  
*Text X3*  
**Text X4**  
TextTextTextTextText  
Mono text  
Text  
Textmini txt  
[Working link](level-0.md)  
[Not working link](https://backrooms-wiki.wikidot.com/not-working-link)

---

[[div class="darkblock"]]

[[/div]]

[[div class="lightblock"]]

[[/div]]

[[div class="transparentblock"]]

[[/div]]

[[div class="dark-styled-quote"]]

[[/div]]

[[div class="light-styled-quote"]]

[[/div]]

## Title[2](javascript:;)

---

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
@import url('https://fonts.googleapis.com/css2?family=Inter+Tight:wght@400&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Raleway&display=swap');
 
:root {
   --theme-base: "black-highlighter";
   --theme-id: "liminal";
   --theme-name: "Liminal Theme";
 
   --logo-image: url("");
   --header-title: "Backrooms";
   --header-subtitle: "A Dream Come True?";
 
   --body-font: 'Inter Tight', sans-serif;
   --header-font: 'Raleway', sans-serif;
   --title-font: 'Raleway', sans-serif;
   --mono-font: 'Fantasque Sans Mono', monospace;
 
   --black: 0, 0, 0;
   --white: 245, 245, 245;
   --a: 148, 131, 77;
   --8: 130, 130, 130;
   --0: 3, 252, 53;
   --m: 130, 176, 179;
   --x: 98, 119, 120;
 
   --swatch-topmenu-border-color: var(--white);
 
   --white-monochrome: var(--black);
   --pale-gray-monochrome: var(--8);
   --gray-monochrome: var(--8);
   --medium-accent: var(--8);
   --dark-accent: var(--black);
   --pale-accent: var(--8);
   --light-gray-monochrome: var(--8);
   --black-monochrome: var(--white);
   --bright-accent: var(--white);
 
   --background-gradient-distance: 0rem;
 
   --gradient-header: linear-gradient(to top,
      rgb(var(--white)),
      rgba(var(--white), 0.20)
   );
 
   --diagonal-stripes: linear-javascript:;gradient(transparent 0);
 
    --swatch-background: var(--black);
    --swatch-primary: var(--white);
    --swatch-primary-darker: var(--8);
    --swatch-primary-darkest: var(--white);
 
    --barColour: var(--8);
    --linkColour: var(--8);
 
    --swatch-menubg-color: var(--black);
    --swatch-menubg-light-color: var(--black);
    --swatch-menubg-medium-color: var(--white);
    --swatch-menubg-medium-dark-color: var(--white);
    --swatch-menubg-dark-color: var(--8);
    --swatch-menubg-black-color: var(--white);
    --swatch-menubg-hover-color: var(--8);
    --swatch-menutxt-dark-color: var(--white);
    --swatch-menutxt-light-color: var(--black);
    --swatch-border-color: var(--white);
 
    --link-color: var(--m);
    --visited-link-color: var(--x);
    --hover-link-color: var(--white);
    --newpage-color: var(--a);
    --sidebar-links-text: var(--white);
    --link-color-bright: var(--darkgray);
}
 
div#page-options-bottom-2 > a, div#page-options-bottom > a {
   border-radius: 0em;
   -moz-border-radius: 0em;
   border: none;
   transition: ease-in-out 0.2s,text-decoration-color 0s;
   padding: 3px;
}
 
div#page-options-bottom-2 > a:active, div#page-options-bottom-2 > a:hover, div#page-options-bottom > a:active, div#page-options-bottom > a:hover {
   border: none;
   padding: 3px;
   transform: translateY(-2px);
}
 
#main-content a:not(span.printuser a, .page-rate-widget-box a, div#page-options-bottom-2 > a, div#page-options-bottom > a, form#edit-page-form a) {
   transition: ease-in-out 0.2s,text-decoration-color 0s;
   padding:1px 3px;
}
 
#main-content a:not(span.printuser a, .page-rate-widget-box a, div#page-options-bottom-2 > a:active, div#page-options-bottom-2 > a:hover, div#page-options-bottom > a:active, div#page-options-bottom > a:hover, form#edit-page-form a:hover):hover {
   text-decoration: none;
   padding: 1px 3px;
   background: rgb(var(--white));
   color: rgb(var(--black));
}
 
@media only screen and (min-width: 769px) {
#main-content {
    padding: 2rem 3rem;
    -webkit-box-shadow: 0px 0px 60px 1px rgba(var(--white), 0.1), 0 0 40px rgba(var(--white), 0.1) inset;
    -moz-box-shadow: 0px 0px 60px 1px rgba(var(--white), 0.1), 0 0 40px rgba(var(--white), 0.1) inset;
    box-shadow: 0px 0px 60px 1px rgba(var(--white), 0.1), 0 0 40px rgba(var(--white), 0.1) inset;
    border-left: 1px solid rgba(var(--white),0.2);
    border-right: 1px solid rgba(var(--white),0.2);
}
}
 
#skrollr-body {
   background-image:none;
}
 
#side-bar .side-block.img-links div a img {
   filter: brightness(0) invert(1);
}
 
#side-bar .side-block div a img {
   transition: 0.2s;
   filter: none;
   filter: brightness(0) invert(1);
}
 
#side-bar .side-block div a:hover img {
    transform: scale(1.1);
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
 
#header::before {
   content: "";
   position: absolute;
   height: 100%;
   width: 100%;
   left: 0;
   top: -10px;
   background-image: var(--logo-image);
   background-size: auto 7rem;
   background-position: left;
   background-repeat: no-repeat;
   opacity: 0.7;
}
 
#header h1, #header h1 a {
   position: absolute;
   top: 1rem;
   margin: 0;
   width: 100%;
   display: flex;
   justify-content: center;
   z-index: 0;
   transition: all .2s;
}
 
#header h1, #header h1 a:hover {
   transform: translateY(-2px);
   letter-spacing: 0.5px;
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
   text-shadow: none;
}
 
blockquote {
   -webkit-box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2), 0 0 40px rgba(var(--white), 0.1) inset;
   -moz-box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2), 0 0 40px rgba(var(--white), 0.1) inset;
   box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2), 0 0 40px rgba(var(--white), 0.1) inset;
}
 
.light-styled-quote {
   background-color:rgb(var(--white));
   border-left: 0.5rem solid rgba(var(--black));
   color:rgb(var(--black));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0;
   -webkit-box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2), 0 0 40px rgba(var(--black), 0.1) inset;
   -moz-box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2), 0 0 40px rgba(var(--black), 0.1) inset;
   box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2), 0 0 40px rgba(var(--black), 0.1) inset;
}
 
.dark-styled-quote {
   background-color:rgb(var(--black));
   color:rgb(var(--white));
   outline: 1px solid rgba(var(--white),0.2);
   border-left: calc(0.5rem - 1px) solid rgba(var(--white));
   padding: 0.1rem 1rem;
   margin: calc(0.5rem + 1px) 1px calc(0.5rem + 1px) 1px;
   -webkit-box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2), 0 0 40px rgba(var(--white), 0.1) inset;
   -moz-box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2), 0 0 40px rgba(var(--white), 0.1) inset;
   box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2), 0 0 40px rgba(var(--white), 0.1) inset;
}
 
.lightblock {
   background-color:rgb(var(--white));
   color:rgb(var(--black));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0;
   -webkit-box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2), 0 0 40px rgba(var(--black), 0.1) inset;
   -moz-box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2), 0 0 40px rgba(var(--black), 0.1) inset;
   box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2), 0 0 40px rgba(var(--black), 0.1) inset;
}
 
.darkblock {
   background-color:rgb(var(--black));
   color:rgb(var(--white));
   outline: 1px solid rgba(var(--white),0.2);
   padding: 0.01rem 1rem;
   margin: calc(0.5rem + 1px) 1px calc(0.5rem + 1px) 1px;
   -webkit-box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2), 0 0 40px rgba(var(--white), 0.1) inset;
   -moz-box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2), 0 0 40px rgba(var(--white), 0.1) inset;
   box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2), 0 0 40px rgba(var(--white), 0.1) inset;
}
 
.transparentblock {
   background-color: rgba(var(--white), 0.1);
   color:rgb(var(--white));
   border: 1px solid rgb(var(--white));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0;
   -webkit-box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2), 0 0 40px rgba(var(--white), 0.1) inset;
   -moz-box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2), 0 0 40px rgba(var(--white), 0.1) inset;
   box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2), 0 0 40px rgba(var(--white), 0.1) inset;
}
 
.titleblock {
    background-color: rgba(var(--white), 0.1);
    color: rgb(var(--white));
    border: 1px solid rgb(var(--white));
    padding: 0.3rem 0.7rem;
    margin: 0.5rem 0 0.5rem 0;
    -webkit-box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2), 0 0 40px rgba(var(--white), 0.1) inset;
    -moz-box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2), 0 0 40px rgba(var(--white), 0.1) inset;
    box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2), 0 0 40px rgba(var(--white), 0.1) inset;
    width: max-content;
}
 
.titleblock h2, .titleblock h3, .titleblock h4, .titleblock h5, .titleblock h6 {
    margin: 0;
}
 
.light-styled-quote a, .dark-styled-quote a, .lightblock a, .darkblock a, .transparentblock a, titleblock a { color: rgb(var(--8)); }
 
.w-stars-rate-module {
    -webkit-box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2);
    -moz-box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2);
    box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2);
}
 
.w-stars-rate-module .w-stars-rate-rating {
    background: rgb(var(--black)) !important;
}
 
.w-stars-rate-module .w-stars-rate-control {
    background: rgb(var(--black)) !important;
}
 
.w-stars-rate-module .w-stars-rate-votes {
    background: rgb(var(--black)) !important;
    box-shadow: none;
}
 
.page-rate-widget-box {
   -webkit-box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2);
   -moz-box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2);
   box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2);
   background: rgb(var(--black));
   padding: .1em;
}
 
.page-rate-widget-box a:hover {
transform: none;
background: none;
}
 
hr {
   background-color: rgb(var(--white));
}
 
.yui-navset .yui-nav,
.yui-navset .yui-navset-top .yui-nav {
    border-color: rgb(var(--black));
    -webkit-box-shadow: 0 -webkit-calc(0.0625rem * 5) 0 0 rgb(var(--white));
    box-shadow: 0 calc(0.0625rem * 5) 0 0 rgb(var(--white));
}
 
.yui-navset .yui-nav a,
.yui-navset .yui-navset-top .yui-nav a {
    background-color: rgb(var(--black));
    color: rgb(var(--white));
    transition: all .2s;
}
 
.yui-navset .yui-nav a:hover,
.yui-navset .yui-nav a:focus {
    background: rgb(var(--white));
    color: rgb(var(--black));
}
 
.yui-navset .yui-nav a:hover {
    -webkit-box-shadow: 0px 0px 0px 1px rgb(var(--white));
    -moz-box-shadow: 0px 0px 0px 1px rgb(var(--white));
    box-shadow: 0px 0px 0px 1px rgb(var(--white));
    transform: translateY(-5px);
}
 
.yui-navset .yui-nav li,
.yui-navset .yui-navset-top .yui-nav li {
    background: rgb(var(--black));
    -webkit-box-shadow: 0 0 0 0.0625rem rgb(var(--white));
    box-shadow: 0 0 0 0.0625rem rgb(var(--white));
}
 
.yui-navset .yui-nav .selected,
.yui-navset .yui-navset-top .yui-nav .selected,
.yui-navset .yui-nav .selected:hover,
.yui-navset .yui-navset-top .yui-nav .selected:hover {
    color: rgb(var(--white));
}
 
.yui-navset .yui-nav .selected a,
.yui-navset .yui-nav .selected a em {
    color: rgb(var(--black));
}
 
.yui-navset .yui-nav .selected a {
    color: rgb(252, 252, 252) !important;
}
 
.yui-navset .yui-content {
    background-color: rgba(var(--white), 0.1);
}
 
.yui-navset .yui-content,
.yui-navset .yui-navset-top .yui-content {
    border-color: rgb(var(--white));
    -webkit-box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2), 0 0 40px rgba(var(--white), 0.1) inset;
    -moz-box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2), 0 0 40px rgba(var(--white), 0.1) inset;
    box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2), 0 0 40px rgba(var(--white), 0.1) inset;
}
 
.yui-navset-left .yui-content {
    border-left-color: rgb(var(--black));
}
 
.yui-navset .yui-nav .selected a,
.yui-navset .yui-nav .selected a:focus,
.yui-navset .yui-nav .selected a:hover {
        background-color: rgb(var(--white));
        color: #000000;
}
 
div.blockquote, blockquote {
    background-color: rgba(var(--white), 0.1);
    color: rgb(var(--white));
    border: 1px solid rgb(var(--white));
}
 
table.wiki-content-table {
        background-color: rgba(var(--white), 0.1);
        color: rgb(var(--white));
        border: 1px solid rgb(var(--white));
        -webkit-box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2), 0 0 40px rgba(var(--white), 0.1) inset;
        -moz-box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2), 0 0 40px rgba(var(--white), 0.1) inset;
        box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2), 0 0 40px rgba(var(--white), 0.1) inset;
}
 
table.wiki-content-table th {
        background-color: rgb(var(--white));
        color: rgb(var(--black));
        border: 1px solid rgb(var(--white));
}
 
.page-tags::before {
    content: "Tags";
}
 
.footnotes-footer {
    background-color: rgba(var(--white), 0.1);
    color: rgb(var(--white));
    border: 1px solid rgb(var(--white));
    -webkit-box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2), 0 0 40px rgba(var(--white), 0.1) inset;
    -moz-box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2), 0 0 40px rgba(var(--white), 0.1) inset;
    box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2), 0 0 40px rgba(var(--white), 0.1) inset;
}
 
a.footnote-footer {
    color: rgb(var(--8));
}
 
.footnote-footer>a:first-of-type {
    color: rgb(var(--8));
}
 
.code {
    background-color: rgba(var(--white), 0.1);
    color: rgb(var(--white));
    border: 1px solid rgb(var(--white));
    -webkit-box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2), 0 0 40px rgba(var(--white), 0.1) inset;
    -moz-box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2), 0 0 40px rgba(var(--white), 0.1) inset;
    box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2), 0 0 40px rgba(var(--white), 0.1) inset;
}
 
.scp-image-block {
    -webkit-box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2), 0 0 40px rgba(var(--white), 0.1) inset;
    -moz-box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2), 0 0 40px rgba(var(--white), 0.1) inset;
    box-shadow: 0px 0px 5px 2px rgba(var(--white), 0.2), 0 0 40px rgba(var(--white), 0.1) inset;
}
 
@media only screen and (max-width: 768px) {
   #header h1, #header h1 a {
    top: 20px;
    font-size: 170%;
}
   #header h2, #header h2 span, #header h2 span::before {
    top: 35px;
    font-size: 115%;
}
}
 
#search-top-box-form input[type='submit'] {
    background-color: rgb(var(--white));
}
 
#search-top-box-form input[type='submit']:hover, #search-top-box-form input[type='submit']:focus {
    background-color: rgb(var(--black));
    color: rgb(var(--white));
}
 
#login-status {
    background-color: rgb(var(--white));
    color: rgb(var(--black));
}
 
span.printuser {
    color: rgb(var(--8));
    padding: 0px 5px;
}
 
span.printuser:hover {
    background-color: rgb(var(--white));
}
 
span.printuser:hover > a {
    color: rgb(var(--black));
}
 
#login-status div#account-options a:hover {
    color: rgb(var(--white));
}
 
.page-tags::before {
    background-color: rgb(var(--white));
    color: rgb(var(--black));
}
 
#main-content .page-tags span a:hover { background:rgb(var(--white));color:rgb(var(--black));text-decoration:none; }
 
#side-bar .side-block:first-child {
    justify-content: center;
}
 
#side-bar div.menu-item {
    border: none;
}
 
#side-bar .heading, #side-bar .heading, #side-bar .side-block>.collapsible-block:first-child .collapsible-block-folded, #side-bar .side-block>.collapsible-block .collapsible-block-unfolded-link {
    background: rgb(var(--white));
}
 
#side-bar .heading p, #side-bar .side-block>.collapsible-block .collapsible-block-link {
    text-shadow: none;
    transition: ease-in-out 0.2s,text-decoration-color 0s;
}
 
#side-bar .side-block>.collapsible-block a.collapsible-block-link:after {
    filter: none;
}
 
#side-bar .collapsible-block-link:hover {
    background: rgba(var(--black),0.6);
}
 
#side-bar div.menu-item .text, #side-bar div.menu-item a {
    transition: ease-in-out 0.2s,text-decoration-color 0s;
}
 
#side-bar div.menu-item a:before {
    display: none;
}
 
#side-bar div.menu-item a:hover {
    background-color: rgba(var(--swatch-border-color),0.3);
}
 
#side-bar div.menu-item>:not(.collapsible-block), #side-bar div.menu-item>:not(:nth-child(2)):not(.collapsible-block) {
    border-left: none;
}
 
.change-textarea-size a {
    color: rgb(var(--black));
}
 
#footer {
    color: rgba(var(--black), .7);
}
 
#license-area {
    --link-color: var(--8);
    --visited-link-color: var(--8);
    --hover-link-color: var(--8);
    background-color: rgb(var(--black));
    color: rgb(var(--white));
}
```

[- Close](javascript:;)

```
:root {
   --black: 245, 245, 245;
   --white: 0, 0, 0;
   --m: 53, 99, 102;
   --x: 61, 66, 66;
}
#side-bar .side-block div a img {
    filter: none;
    filter: brightness(0);
}
```

```
@media only screen and (min-width: 769px) {
#main-content {
    padding: 2rem 3rem;
    -webkit-box-shadow: none;
    -moz-box-shadow: none;
    box-shadow: none;
    border-left: none;
    border-right: none;
}
}
```

```
:root {
   --header-subtitle: "A Dream in Reality";
}
```

```
/*
   Лиминальная Тема
   [2020 Wikidot Тема]
   оригинальный код от Линча и Этоиле
   доработка и обновление от Айзека и МХ'а
*/
 
@import url("https://backrooms-wiki.wikidot.com/component:fantasque-sans-mono/code/1");
@import url("https://ru-backrooms-wiki.wdfiles.com/local--files/component%3Atheme/normalize-archived.css");
@import url("https://ru-backrooms-wiki.wdfiles.com/local--files/component%3Atheme/bhl-archived.css");
@import url("https://ru-backrooms-wiki.wdfiles.com/local--files/component%3Atheme/sidebar.css");
@import url("https://ru-backrooms-wiki.wdfiles.com/local--files/component%3Atheme/user-menu.css");
@import url("https://ru-backrooms-wiki.wdfiles.com/local--files/component%3Atheme/owindows.css");
@import url("https://ru-backrooms-wiki.wdfiles.com/local--files/component%3Atheme/forum.css");
 
:root {
   --theme-base: "black-highlighter";
   --theme-id: "liminal";
   --theme-name: "Liminal Theme";
 
   --logo-image: url("https://backrooms-wiki.wikidot.com/local--files/component:theme/logo.svg");
   --header-title: "Закулисье";
   --header-subtitle: "Вы бывали здесь раньше.";
 
   --body-font: Arial, sans-serif;
   --header-font: 'Fantasque Sans Mono', monospace;
   --title-font: 'Fantasque Sans Mono', monospace;
   --mono-font: 'Fantasque Sans Mono', monospace;
 
   --white-monochrome: 237, 233, 223;
   --pale-gray-monochrome: 255, 251, 240;
   --light-gray-monochrome: 160, 160, 160;
   --gray-monochrome: 72, 69, 60;
   --black-monochrome: 25, 20, 16;
   --bright-accent: 140, 136, 126;
   --medium-accent: 72, 69, 60;
   --dark-accent: 140, 136, 126;
   --pale-accent: 140, 136, 126;
 
   --swatch-topmenu-border-color: var(--medium-accent);
 
   --link-color: 230, 23, 68;
   --hover-link-color: 230, 23, 68;
 
   --background-gradient-distance: 0rem;
 
   --gradient-header: linear-gradient(to top,
      rgba(var(--medium-accent)) 0%,
      rgba(var(--medium-accent), 0.90) 100%
   );
   --diagonal-stripes: linear-gradient(transparent 0);
 
   --header-h2-font-size: calc(var(--base-font-size)*1.35);
   --header-height-on-desktop: 10rem;
   --header-height-on-mobile: 10rem;
   --sidebar-width-on-desktop: 20rem;
}
 
body#html-body{
   overflow-x: hidden;
}
 
div.wd-adunit{ display: none !important; }
 
#skrollr-body {
   background-image:
    radial-gradient(circle, rgb(var(--medium-accent)) 50%, transparent 0);
   background-repeat: repeat;
   background-size: 0.25em 0.25em;
   width: 100%;
   height: 10rem;
}
 
#header h1 a {
   line-height: 0.6;
}
 
#side-bar .side-block div a img { filter: none; }
#side-bar .heading p { font-family: var(--title-font); font-size: 1rem; text-shadow: none; }
@media only screen and (min-width: 769px) { #side-bar { padding-left: 0.75rem; top: 0; } }
@media only screen and (max-width: 769px) { #side-bar .img-links { padding: 10px 0; } }
 
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
   height: 95%;
   width: 100%;
   left: 0;
   top: 0;
   background-image: var(--logo-image);
   background-size: auto 18rem;
   background-position: center;
   background-repeat: no-repeat;
   opacity: 0.5;
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
 
a.newpage {
   background: transparent;
   text-decoration: none
}
 
a.newpage {
    color: rgb(var(--newpage-color))
}
 
a {
    transition: 150ms cubic-bezier(0.4, 0, 0.2, 1);
    text-decoration: underline;
    text-decoration-color: transparent;
}
 
#page-title, .meta-title {
   border-color: rgb(var(--swatch-tertiary-color));
}
 
hr {
    border: none;
    background-color: rgb(var(--swatch-tertiary-color));
}
 
div.block-center {
   min-width: 30%
}
 
@media only screen and (max-width:768px) {
   div.block-center {
      min-width: 40%
   }
}
 
blockquote {
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.styled-quote {
   background-color:rgb(var(--pale-gray-monochrome));
   border-left: 0.5rem solid rgba(var(--gray-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.dark-styled-quote {
   background-color:rgb(var(--gray-monochrome));
   border-left: 0.5rem solid rgba(var(--pale-gray-monochrome));
   color:rgb(var(--white-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.dark-styled-quote a{
color: rgb(var(--swatch-menubg-medium-color));
}
 
.lightblock {
   background-color:rgb(var(--pale-gray-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
.darkblock {
   background-color:rgb(var(--gray-monochrome));
   color:rgb(var(--white-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
.darkblock a {
color: rgb(var(--swatch-menubg-medium-color));
}
 
.interwiki1_title {
 
    color: rgb(80,77,66);
    border-bottom: solid 1px rgb(80,77,66);
    padding-left: 15px;
    margin-top: 10px;
    margin-bottom: 5px;
    font-size: 8pt;
    font-weight: bold;
 
}
 
.interwiki1_entry {
 
    position: relative;
    margin: 2px 0;
 
}
 
.interwiki1_entry p::before {
 
    content: "■";
    font-size: 9px;
    color: rgb(80,77,66);
    position: relative;
    margin: 0 7px 0 5px;
    bottom: 3px;
 
}
 
.interwiki1_entry a, .interwiki1_entry a:visited {
 
    font-weight: bold;
    color: #b01;
    text-decoration: none;
    background: transparent;
 
}
 
.interwiki1_entry a:hover {
 
    background-color: transparent;
    text-decoration: underline;
 
}
 
div.scpnet-interwiki-wrapper {
    margin: 0;
    width: auto;
}
iframe.scpnet-interwiki-frame {
    border: inherit;
    width: 100%;
    height: 230px;
}
@media (min-width:768px) {
    div.scpnet-interwiki-wrapper,
    iframe.scpnet-interwiki-frame {
        width: 100%;
    }
}
 
#toc {
    background-color:rgb(var(--pale-gray-monochrome));
    border: none;
    border-left: 0.5rem solid rgba(var(--gray-monochrome));
    border-right: 0.5rem solid rgba(var(--gray-monochrome));
    margin: 0.5rem 0 0.5rem 0;
    padding: 0;
    box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
#toc.floatright { margin: 0.5rem 0 0.5rem 0.5rem; }
#toc.floatleft { margin: 0.5rem 0.5rem 0.5rem 0; }
#toc #toc-action-bar { padding: 2px 2px 2px 0.5em; }
#toc .title { font-family: var(--mono-font); margin: 0; padding: 0.3em 2em; background-color: rgb(var(--gray-monochrome)); color: rgb(var(--white-monochrome)); }
#toc-list { margin: 0.5em 1em 0.5em 0; }
#toc-list a { transition:0.3s,text-decoration-color 0s; padding:0px 4px; }
#toc-list a:hover { background:rgb(var(--pale-accent));color:rgb(var(--pale-gray-monochrome));text-decoration:none; }
 
span.printuser a { 
    transition:0.3s ease,text-decoration-color 0s;
}
 
span.printuser a:hover {
    text-decoration: none;
    color: rgb(var(--pale-gray-monochrome));
}
 
span.printuser img.small {
   transition: 0.5s;
}
 
span.printuser img.small:hover {
   transform: scale(4);
   transition-delay: 0.5s;
}
 
#avatar-hover-container {
   display: none;
}
 
#search-top-box-input {
    display: none;
}
 
#search-top-box-form input[type='submit'] {
    padding: 5px 10px;
    font-size: 100%;
    background-color: rgb(var(--medium-accent));
    border: 2.5px solid rgb(var(--pale-accent));
    border-radius: 11px 5px 5px 11px;
}
 
#search-top-box {
    right: -25px;
    top: 50px;
}
 
  #search-top-box-form input[type='submit']:hover, #search-top-box-form input[type='submit']:focus {
    text-decoration: none;
    text-shadow: none;
    background-color: rgb(var(--light-gray-monochrome));
    color: white;
    cursor: pointer;
    padding: 5px 10px;
    font-size: 100%;
    border: 2.5px solid rgb(var(--pale-accent));
    border-radius: 11px 5px 5px 11px;
}
 
@media only screen and (max-width: 768px) {
  #login-status {
    right: 6px;
    padding: 1px 8px;
    font-size:80%;
}
  #header::before {
    top: 11px;
}
  #header h1, #header h1 a {
    top: 17px;
    font-size: 150%;
}
  #header h2, #header h2 span, #header h2 span::before {
    top: 31px;
}
  #search-top-box-form input[type='submit'] {
    padding: 1px 8px;
    font-size: 80%;
}
  #search-top-box {
    right: 6px;
    top: 40px;
}
  #search-top-box-form input[type='submit']:hover, #search-top-box-form input[type='submit']:focus {
    padding: 1px 8px;
    font-size: 80%;
}
  #toc {
    display: contents;
}
  #toc #toc-action-bar {
    margin: 0.5rem 0 0 0;
    padding: 2px 0 2px 1em;
    background-color: rgb(var(--pale-gray-monochrome));
    border-left: 0.5rem solid rgba(var(--gray-monochrome));
    border-right: 0.5rem solid rgba(var(--gray-monochrome));
    box-shadow: 0 0.3rem 0.3rem rgb(0 0 0 / 25%);
}
  div#toc-action-bar a { padding: 0 4px; }
  #toc .title {
    margin: 0 0 0.5rem 0;
    padding: 0.5rem 2em 0.5rem 2em;
    background-color: rgb(var(--gray-monochrome));
    box-shadow: 0 0.3rem 0.3rem rgb(0 0 0 / 25%);
}
  #toc-list {
    margin: 0.5rem 0 0.5rem 0;
    padding: 0.5rem 1em 0.5rem 0;
    background-color: rgb(var(--pale-gray-monochrome));
    border-left: 0.5rem solid rgba(var(--gray-monochrome));
    border-right: 0.5rem solid rgba(var(--gray-monochrome));
    box-shadow: 0 0.3rem 0.3rem rgb(0 0 0 / 25%);
}
}
 
#footer {
    height: auto;
    color: rgba(var(--swatch-secondary-color), .7);
    font-size: 80%;
    margin: 0;
}
 
#license-area {
    --link-color: var(--swatch-primary-darkest);
    --visited-link-color: var(--swatch-primary-darkest);
    --hover-link-color: var(--swatch-primary-darkest);
    padding: 0.55em;
    margin: 0;
    width: auto;
    background-color: rgb(var(--swatch-menubg-medium-dark-color));
    color: rgb(var(--swatch-text-secondary-color));
    z-index: 11;
}
 
@media only screen and (max-width: 768px) {
@supports (display:grid) {
#footer {
    font-size: 10px;
}
#license-area {
    bottom: 0;
    margin: 0 auto;
    height: auto;
    font-size: .9em;
    line-height: 1;
    z-index: 2
}
}
}
 
#main-content .page-tags {
    border: 2.5px solid rgb(var(--pale-accent));
    border-radius: 11px 5px 5px 11px;
    padding: 5px;
    display: flex;
    align-items: stretch;
}
 
.page-tags::before {
    content: "Теги";
    font-size: 80%;
    font-weight: bold;
    background-color: rgb(var(--medium-accent));
    background-color: rgb(var(--medium-accent));
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    text-align: center;
    padding: 1px 6px;
    color:rgb(var(--white-monochrome));
    margin-right: 0.3em;
    border-radius: 9px 3px 3px 9px;
}
 
ul { padding-inline-start: 1rem; list-style: disc; }
 
#main-content .page-tags span { border-top: none; max-width: 100%; align-self: center; }
#main-content .page-tags span a { transition:0.3s,text-decoration-color 0s;padding:0px 4px; }
#main-content .page-tags span a:hover { background:rgb(var(--pale-accent));color:rgb(var(--pale-gray-monochrome));text-decoration:none; }
div.page-watch-options a { transition:0.3s,text-decoration-color 0s;padding:2px 2px; }
div.page-watch-options a:hover { background:rgb(var(--pale-accent));color:rgb(var(--pale-gray-monochrome));text-decoration:none; }
```

Footnotes

[1](javascript:;). note

[2](javascript:;). [[div class="titleblock"]]  
++ H2 Title is recommended  
[[/div]]

---

Source: [https://backrooms-wiki.wikidot.com/theme:dreams](https://backrooms-wiki.wikidot.com/theme:dreams)
