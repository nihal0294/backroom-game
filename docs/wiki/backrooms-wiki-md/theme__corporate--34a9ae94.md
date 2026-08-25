---
title: "Corporate"
source: "https://backrooms-wiki.wikidot.com/theme:corporate"
retrieved_at: "2026-08-23T23:40:10+00:00"
license: CC-BY-SA-3.0
---

# Corporate

```
This is just here to force the css to update
```

rating: +14[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

Remember when I said I wouldn't make another theme? I lied.

This theme was created by computer science major , mostly by "stealing" the majority of the code from 's [M.E.G. theme](theme__meg--c06b7e61.md). If I'm gonna sit in a corporate office all day to do my work, might as well be productive.

To import this theme to your page, put the following text anywhere inside it:

[[include :backrooms-wiki:theme:corporate]]

[Theme Code](javascript:;)

[No Code](javascript:;)

```
@import url(https://backrooms-wiki.wdfiles.com/local--code/component%3Apatch/1);
 
@import url("https://fonts.googleapis.com/css2?family=Aldrich&display=swap");
@import url("https://fonts.googleapis.com/css2?family=Kdam+Thmor+Pro&display=swap");
@import url("https://fonts.googleapis.com/css2?family=Sarpanch:wght@700&display=swap");
@import url("https://fonts.googleapis.com/css2?family=Anaheim&display=swap");
@import url("https://fonts.googleapis.com/css2?family=Orbitron&display=swap");
@import url("https://fonts.googleapis.com/css2?family=Radio+Canada&display=swap");
 
:root {
   --theme-base: "black-highlighter";
   --theme-id: "corporate";
   --theme-name: "Corporate Theme";
 
   --logo-image: url("http://backrooms-sandbox-2.wdfiles.com/local--files/sky3theme/corporate-logo");
   --header-title: "The Backrooms";
   --header-subtitle: "Spaces of the Near-Future";
 
    --body-font: 'Aldrich', monospace;
    --header-font: 'Sarpanch', monospace;
    --title-font: 'Kdam Thmor Pro', monospace;
    --mono-font: 'Anaheim', monospace;
    --terminal-font: 'Orbitron', monospace;
    --additional-font: 'Radio Canada', monospace;
 
   --white-monochrome: 47, 63, 76;
   --text-white-monochrome: 231,254,255;
   --swatch-text-secondary-color: 231,254,255;
   --pale-gray-monochrome: 0,115,207;
   --light-gray-monochrome: 207,236,255;
   --gray-monochrome: 174,198,207;
   --black-monochrome: 240, 255, 255;
   --bright-accent: 240, 248, 255;
   --medium-accent: 30, 181, 232;
   --dark-accent: 125, 196, 235;
   --pale-accent: 69,177,232;
   --alt-accent: 0, 114, 187;
   --midnight-blue:  0,2,64;
   --baby-blue: 161,202,241;
   --medium-blue: 65,105,225;
   --darker-blue: 0,3,132;
 
   --swatch-topmenu-border-color: var(--medium-accent);
  --swatch-headerh1-color: 222, 222, 222;
  --swatch-headerh2-color: 176,196,222;
 
   --link-color: 70,150,200;
   --hover-link-color: 90, 180, 220;
   --visited-link-color: 162,162,208;
 
   --background-gradient-distance: 0rem;
 
   --gradient-header: linear-gradient(to top,
      rgba(var(--medium-accent)) 0%,
      rgba(var(--medium-accent), 0.90) 0%
   );
   --diagonal-stripes: linear-gradient(transparent 0);
}
 
#skrollr-body {
   background-image:
    radial-gradient(circle, rgb(var(--medium-accent)) 50%, transparent 0);
   background-repeat: repeat;
   background-size: 0.25em 0.25em;
   width: 100%;
   height: 7.5rem;
}
 
#side-bar .side-block div a img {
   filter: grayscale(100%);
}
 
#container {
   background-image: radial-gradient(circle, rgb(var(--medium-accent), 0.05) 50%, transparent 0);
   background-size: 0.25em 0.25em;
   background-repeat: repeat;
   background-attachment: fixed;
}
 
#top-bar div.mobile-top-bar > ul > li > a,
#top-bar div.top-bar > ul > li > a,
#top-bar div.mobile-top-bar > ul > li > ul > li > a,
#top-bar div.top-bar > ul > li > ul > li > a {
   color: rgb(var(--bright-accent));
}
 
div#page-options-bottom-2 > a, div#page-options-bottom > a {
   border-radius: 0em;
   -moz-border-radius: 0em;
   border: none;
}
 
div#page-options-bottom-2 > a:active, div#page-options-bottom-2 > a:hover, div#page-options-bottom > a:active, div#page-options-bottom > a:hover {
   border: none;
}
 
#header h1 a::before {
    color: rgb(var(--black-monochrome));
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
   font-size: 1.5em;
}
 
#header h2, #header h2 span, #header h2 span::before {
   position: absolute;
   top: 2rem;
   margin: 0;
   width: 100%;
   display: flex;
   justify-content: center;
   font-size: 1em;
}
 
#header h1 a::before, #header h2 span::before {
   text-shadow: .063rem 0.1rem 0.1rem #0c0c0c;
}
 
.yui-navset .yui-nav .selected a {
   color: rgb(var(--bright-accent)) !important;
}
 
table.wiki-content-table th {
   color: rgb(var(--white-monochrome));
}
 
#login-status {
   color: rgb(var(--bright-accent));
}
 
#login-status a {
   color: rgb(var(--bright-accent));
}
 
#search-top-box input.empty {
   color: rgb(var(--bright-accent));
}
 
a.newpage {
   background: transparent;
   text-decoration: none
}
 
a.newpage {
   color: rgb(var(--alt-accent))
}
 
blockquote {
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(90, 20, 20,.25);
}
blockquote a {
    color: rgb(var(--light-gray-monochrome));
}
 
.styled-quote {
   background-color:rgb(var(--black-monochrome));
   border-left: 0.5rem solid rgba(var(--midnight-blue));
   color:rgb(var(--darker-blue));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.dark-styled-quote {
   background-color:rgb(var(--midnight-blue));
   border-left: 0.5rem solid rgba(var(--black-monochrome));
   color:rgb(var(--text-white-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.lightblock {
   background-color: rgb(var(--black-monochrome));
   color: rgb(var(--darker-blue));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
.block {
   background-color:rgb(var(--gray-monochrome));
   color:rgb(var(--midnight-blue));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
.darkblock {
   background-color:rgb(var(--midnight-blue));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
   color: rgb(var(--text-white-monochrome));
}
 
.titleblock {
        background-color: rgb(var(--black-monochrome));
        color:rgb(var(--midnight-blue));
        padding: 0.5rem 1rem 0.10rem;
        margin: 1.5rem 0rem 0.5rem 0rem;
        box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.5);
        border: solid rgb(var(--baby-blue)) 2px;
     }
 
     .titlebox{
       color: rgb(var(--midnight-blue));
       position: relative;
       top: -1.6rem;
       background-color: rgb(var(--baby-blue));
       padding: 0.25rem 1rem;
       line-height: 0.1rem;
     }
 
.dark-titleblock {
        background-color: rgb(var(--midnight-blue));
        color:rgb(var(--text-white-monochrome));
        padding: 0.5rem 1rem 0.10rem;
        margin: 1.5rem 0rem 0.5rem 0rem;
        box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.5);
        border: solid rgb(var(--baby-blue)) 2px;
     }
 
     .dark-titlebox{
       color: rgb(var(--midnight-blue));
       position: relative;
       top: -1.6rem;
       background-color: rgb(var(--baby-blue));
       padding: 0.25rem 1rem;
       line-height: 0.1rem;
     }
 
.border-block {
    background-color:rgb(var(--gray-monochrome));
    color:rgb(255, 255, 255);
    padding: 0.01rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
    border: solid 0.3rem rgb(var(--gray-monochrome));
 }
 
.filetabs .yui-navset .yui-nav li, .yui-navset .yui-navset-top .yui-nav li {
   display: inline-block;
}
 
.filetabs .yui-navset .yui-nav, .yui-navset .yui-navset-top .yui-nav {
   display: block;
}
 
.filetabs .yui-navset .yui-content {
   border-top-width: 15px;
}
 
.filetabs .yui-navset .yui-nav a,
.filetabs .yui-navset .yui-navset-top .yui-nav a,
.filetabs .yui-navset .yui-nav .selected a,
.filetabs .yui-navset .yui-nav a:focus,
.filetabs .yui-navset .yui-navset-top .yui-nav a:focus,
.filetabs .yui-navset .yui-nav a:hover,
.filetabs .yui-navset .yui-navset-top .yui-nav a:hover {
    background-color: transparent;
    background-image: url("data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8' standalone='no' %3F%3E%3C!DOCTYPE svg PUBLIC '-//W3C//DTD SVG 1.1//EN' 'http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd'%3E%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' version='1.1' preserveAspectRatio='none' viewBox='0 0 150 45' xml:space='preserve'%3E%3Cdesc%3ECreated with Fabric.js 4.6.0%3C/desc%3E%3Cdefs%3E%3C/defs%3E%3Cg transform='matrix(1 0 0 1 74.95 22.39)' id='bC-LIzxo7Tu37zCdkDrqS' %3E%3Cpath style='stroke: rgb(0,0,0); stroke-width: 0; stroke-dasharray: none; stroke-linecap: butt; stroke-dashoffset: 0; stroke-linejoin: miter; stroke-miterlimit: 4; fill: rgb(125, 196, 235); fill-rule: nonzero; opacity: 1;' vector-effect='non-scaling-stroke' transform=' translate(0, 0)' d='M -74.94856 22.50703 L -60.0064 -12.520110000000003 C -60.0064 -12.520110000000003 -55.89385 -21.849030000000003 -47.235839999999996 -22.281930000000003 C -38.57782999999999 -22.714830000000003 46.87608 -22.39016 46.87608 -22.39016 C 46.87608 -22.39016 56.05659 -23.219710000000003 61.40639 -12.520120000000002 C 66.75618 -1.8205300000000015 74.94856 22.506959999999996 74.94856 22.506959999999996 z' stroke-linecap='round' /%3E%3C/g%3E%3Cg transform='matrix(1 0 0 1 75.18 17.97)' id='E8ePkHu_UUyvFWDAIzFyP' %3E%3Cpath style='stroke: rgb(0,0,0); stroke-width: 0; stroke-dasharray: none; stroke-linecap: butt; stroke-dashoffset: 0; stroke-linejoin: miter; stroke-miterlimit: 4; fill: rgb(125, 196, 235); fill-rule: nonzero; opacity: 1;' vector-effect='non-scaling-stroke' transform=' translate(0, 0)' d='M -46.15385 12.0108 L -46.15385 -12.01079 L 46.153839999999995 -12.01079 L 46.153839999999995 12.0108 z' stroke-linecap='round' /%3E%3C/g%3E%3C/svg%3E");
    background-size: 100% 2.7rem;
    background-repeat: no-repeat;
    border-width: 0px;
    border-top: none;
    background-position: top;
}
 
.filetabs .yui-navset .yui-nav a,
.filetabs .yui-navset .yui-navset-top .yui-nav a {
   padding: 4px 20px 0px 20px;
}
 
.filetabs .yui-navset .yui-nav .selected a,
.filetabs .yui-navset .yui-nav a:focus,
.filetabs .yui-navset .yui-navset-top .yui-nav a:focus,
.filetabs .yui-navset .yui-nav .selected a:hover,
.filetabs .yui-navset .yui-navset-top .yui-nav .selected a:hover {
    padding: 8px 20px 0px 20px;
}
 
.filetabs .yui-navset .yui-nav a:hover,
.filetabs .yui-navset .yui-navset-top .yui-nav a:hover {
   padding: 6px 20px 0px 20px;
}
 
.filetabs .yui-navset .yui-nav,
.filetabs .yui-navset .yui-navset-top .yui-nav {
    border-color: transparent;
}
 
.filetabs .yui-navset .yui-nav .selected,
.filetabs .yui-navset .yui-navset-top .yui-nav .selected,
.filetabs .yui-navset .yui-nav .selected a:active,
.filetabs .yui-navset .yui-nav .selected a:focus,
.filetabs .yui-navset .yui-nav li,
.filetabs .yui-navset .yui-navset-top .yui-nav li {
   background-color: transparent;
}
 
.filetabs .yui-navset .yui-nav li,
.filetabs .yui-navset .yui-navset-top .yui-nav li {
   box-shadow: none;
}
 
.filetabs .yui-navset .yui-nav li {
   margin-right: 36px;
}
 
.filetabs .yui-navset .yui-nav .selected a {
   color: rgb(var(--pale-gray-minochrome)) !important;
}
 
.filetabs .yui-navset .yui-nav a:focus,
.filetabs .yui-navset .yui-nav a:hover {
   color: rgb(var(--white-monochrome));
}
 
.filetabs .yui-navset .yui-nav .selected a em,
.filetabs .yui-navset .yui-nav .selected a:hover em {
   position: relative;
   top: -4px;
}
 
.filetabs .yui-navset .yui-nav a:hover em {
   position: relative;
   top: -2px;
}
 
.filetabs .yui-navset .yui-nav li,
.filetabs .yui-navset .yui-navset-top .yui-nav li {
   border-bottom: solid 1px rgb(var(--black-monochrome));
}
 
.filetabs .yui-navset .yui-nav li.selected,
.filetabs .yui-navset .yui-navset-top .yui-nav li.selected {
   border-bottom: none;
   z-index: 1;
}
 
code,
.code {
   background-color: rgb(var(--darker-blue));
}
 
:root{
  --base-color: rgb(34,191,250);
  --hover-color: rgb(173,216,230);
  --click-color: rgb(164,221,237);
}
 
#page-content .collapsible-block-folded, #page-content .collapsible-block-unfolded-link {
    margin-top: 10px;
    padding-left: 1rem;
    padding-right: 1rem;
    box-shadow: rgb(128, 128, 128) 0px 0px 3px 0px;
    transition: background 0.1s linear;
    background: var(--base-color);
    width: min-content;
    white-space: nowrap;
    overflow: hidden;
}
 
#page-content .collapsible-block-link {
    color: white;
    font-weight: bold;
    text-decoration: none;
}
 
#page-content .collapsible-block-link:hover {
    text-decoration: none
}
 
#page-content .collapsible-block-content {
    transition: border-top-color 0.2s linear, border-bottom-color 0.2s linear;
    border-top: solid var(--base-color) 5px;
    border-bottom: solid var(--base-color) 3px;
}
 
#page-content .collapsible-block-folded {
    max-width: 100%;
}
#page-content .collapsible-block-unfolded-link{
    width: min-content;
}
 
#page-content .collapsible-block-folded .collapsible-block-link::before {
    content: "▷";
    border-right: none;
    padding-right: 0rem;
    margin-right: 1rem;
    font-weight: normal;
    font-family: var(--mono-font);
}
 
#page-content .collapsible-block-unfolded .collapsible-block-link::before {
    content: "▽";
    border-right: none;
    padding-right: 0rem;
    margin-right: 1rem;
    font-weight: normal;
    font-family: var(--mono-font);
}
 
#page-content .collapsible-block-folded:hover, #page-content .collapsible-block-unfolded-link:hover {
    background: var(--hover-color);
    max-width: 100%;
}
 
#page-content .collapsible-block-unfolded-link:hover + .collapsible-block-content{
    border-top-color: var(--hover-color);
    border-bottom-color: var(--hover-color);
}
 
#page-content .collapsible-block-unfolded-link:hover + .collapsible-block-content::after {
    background: var(--hover-color);
}
 
#page-content .collapsible-block-folded:active, #page-content .collapsible-block-unfolded-link:active, #page-content .collapsible-block-unfolded-link:active + .collapsible-block-content::after {
    transition: background 0s, max-width 0s;
    background: var(--click-color);
    max-width: 100%;
}
 
#page-content .collapsible-block-unfolded-link:active + .collapsible-block-content {
    transition: border-top-color 0s, border-bottom-color 0s;
    border-top-color: var(--click-color);
    border-bottom-color: var(--click-color);
}
 
#page-content .unfolded-collapse {
    margin-top: 10px;
    padding-left: 1rem;
    padding-right: 1rem;
    box-shadow: rgb(128, 128, 128) 0px 0px 3px 0px;
    background: var(--base-color);
    color: white;
    font-weight: bold;
    width: min-content;
    white-space: nowrap;
    overflow: hidden;
}
 
#page-content .unfolded-collapse::before {
    content: "▽";
    border-right: none;
    padding-right: 0rem;
    margin-right: 1rem;
    font-weight: normal;
    font-family: var(--mono-font);
}
 
#page-content .unfolded-collapse-border {
    display: block;
    width: 700px;
    border-top: solid var(--base-color) 5px;
}
 
#page-content .center-collapse .collapsible-block-folded, #page-content .center-collapse .collapsible-block-unfolded-link, #page-content .center-collapse .unfolded-collapse{
    margin:auto;
    margin-top: 10px;
}
 
#page-content .addendumfooter{
    display: block;
    border-bottom: solid 3px var(--base-color);
    margin: auto;
    text-align: center;
}
 
#page-content .info-container .collapsible-block {
    counter-increment: none;
}
 
#page-title{
    font-family: var(--header-font);
    text-align: center;
    color: rgb(var(--pale-accent));
}
 
#page-content .info-container .collapsible-block-folded, #page-content .info-container .collapsible-block-unfolded-link  {
    transition: none;
    width: 100%;
    max-width: 100%;
    margin: 0 auto;
    padding: 0;
    box-shadow: none;
    background: var(--barColour);
}
 
#page-content .info-container .collapsible-block-folded::before, #page-content .info-container .collapsible-block-unfolded-link::before  {
    content: "";
    display: none;
}
 
#page-content .info-container .collapsible-block-content {
    border-bottom: none;
    transition: none;
    border-top: none;
}
 
#page-content .info-container .collapsible-block-content::after {
    display: none;
}
 
#page-content .collapsible-block-folded, #page-content .collapsible-block-unfolded, #page-content .unfolded-collapse{
    line-height: 1.4;
}
 
#page-content .collapsible-block-folded .collapsible-block-link::before, #page-content .collapsible-block-unfolded .collapsible-block-link::before, #page-content .unfolded-collapse::before {
    font-size: 130%;
    margin-left: -0.4em
}
 
.log-top {
    font-family: var(--header-font);
    text-align: center;
    font-size: 2em;
    color: rgb(var(--medium-blue));
}
 
.presum {
    font-family: var(--title-font);
    color: rgb(var(--medium-blue));
}
 
.presumtext {
    font-family: var(--additional-font);
    color: rgb(var(--medium-blue));
}
 
table.speak th {
    font-size: 1.05em;
    font-weight: bold;
    border-right: 1px solid #c6d6dd;
    color: rgb(var(--medium-blue));
    padding:  1.1em 1em 0em 1em;
}
 
table.speak td {
    padding: 1.1em 0em 0em 0.9em;
}
 
table.speak td.act {
    font-family: var(--mono-font);
    color: rgb(var(--darker-blue));
}
 
table.speak td.speech {
    color: rgb(var(--medium-blue));
}
 
.terminal-top {
    font-family: var(--header-font);
    text-align: center;
    font-size: 2em;
    color: rgb(var(--bright-accent));
}
 
table.digital {
    font-family: var(--terminal-font);
    border: none;
    box-shadow: none;
}
 
table.digital th {
    font-weight: bold;
    border: none;
    box-shadow: none;
    padding: 0, 0, 0, 0;
    vertical-align: top;
}
 
table.digital td {
    padding: 0em 0 0 1em;
    box-shadow: none;
}
 
table.digital td.response {
    color: rgb(var(--baby-blue));
    box-shadow: none;
}
 
#account-options{
    color: rgb(var(--midnight-blue));
}
```

# **Examples:**

![Missing alt text.](http://backrooms-sandbox-2.wdfiles.com/local--files/sky3theme/office)

Welcome to your new home.

A horizontal rule can be created with 4 hyphens "----" (Yes, you can create horizontal rules using only 4 hyphens) and extends across the whole page if it's not placed inside anything. The lines separating sections of this document are horizontal rules.

---

Titles can be created by putting between one and six plus "+" at the start of the line. Don't forget that space after the "+". Seriously, it'll break your titles. And you don't want that. Or maybe you do.

[+ Titles](javascript:;)

[- Titles](javascript:;)

# CEO Title

## Vice President

### Manager of the Human Resources Department

#### Board of Investors

##### Employees (Who Get Paid Minimum Wage)

###### Capitalism = Competition

  
 

[Collapsible CSS](javascript:;)

[Close Collapsible](javascript:;)

> [[collapsible show="+ Titles" hide="- Titles"]]  
> [[/collapsible]]

- [*Bill Gates*](javascript:;)
- [*Jeff Bezos*](javascript:;)
- [*Elon Musk*](javascript:;)
- [*Post Malone*](javascript:;)
- [*Mark Cuban*](javascript:;)
- [*Donald Trump*](javascript:;)
- [*Walmart*](javascript:;)
- [*Susan Wojcicki*](javascript:;)
- [*Zucc*](javascript:;)

Oh my, it's a picture of Bill Gates.  
![bill-gates](http://backrooms-sandbox-2.wdfiles.com/local--files/sky3theme/bill-gates)

Wait, this isn't Jeff Bezos…  
![vin-diesel](http://backrooms-sandbox-2.wikidot.com/local--files/sky3theme/vin-diesel)

Legend has it that when you beat Phase 1 of the Elon Musk boss fight, he reveals his true form, the Cybertruck.  
![cybertruck](http://backrooms-sandbox-2.wdfiles.com/local--files/sky3theme/cybertruck)

Post Malone performs his hit song "Circles" at Coachella 2020 (circa 1987).  
![ed](http://backrooms-sandbox-2.wdfiles.com/local--files/sky3theme/ed)

Wait, why is Mark Cuban in a giant aquarium?  
![shark](http://backrooms-sandbox-2.wdfiles.com/local--files/sky3theme/shark)  
If you know who Mark Cuban is, you'll understand this reference. If not, watch the movie *Jaws*. He's not in that movie, but it should give you a sense of confusion.

It has not been easy for me. It has not been easy for me. I started off in Brooklyn. My father gave me a small loan of a million dollars. I came into Manhattan, and I had to pay him back, and I had to pay him back with interest. But I came into Manhattan and I started buying properties, and I did great.  
![trumpet](http://backrooms-sandbox-2.wdfiles.com/local--files/sky3theme/trumpet)

Walmart's little child.  
![sam](http://backrooms-sandbox-2.wdfiles.com/local--files/sky3theme/sam)

Never gonna give you up.  
Never gonna let you down.  
Never gonna run around and desert you.  
Never gonna make you cry.  
Never gonna say goodbye.  
Never gonna tell a lie and hurt you.

DATA CORRUPTED. TAKEN DOWN AT THE REQUEST OF FACEBOOK.

Wait, how is that even—

Oh, it's just lazy writing. Fun fact: the author of this page got bored of finding images so he just resorted to generic text. What a loser.

- [*File 1*](javascript:;)
- [*File 2*](javascript:;)

The Krabby Patty Secret Formula:  
— Love  
— Passion  
— Hamburger

Searches that will probably land you on a watchlist if googled:  
— What is the Krabby Patty Secret Formula?  
— Is Mark Zuckerberg a robot?  
— Why is Post Malone mentioned as a corporate entity in your page?

> This is a blockquote, created by putting "> " at the start of each line.  
> Is the blue getting to you yet?
>
> ---
>
> Am I gonna have to speak to the manager?
>
> > Shall we fire you?

| This is a | table |
| --- | --- |
| I don't think | anyone actually knows |
| how to make these | |

Feet[1](javascript:;)  
Very normal (and very unoriginal) text.  
Read this and sign it.  
*Slanted for emphasis, of course.*  
**This is how they hook you in with the $6.95/lb deals.**  
Some employee really sucks at underlining.  
It's so thin.  
Did you know that the word "the" is trademarkedTM?  
Or maybe you don't(C)  
[I can assure you that this department does not exist. Unless you create it.](https://backrooms-wiki.wikidot.com/i-can-assure-you-that-this-department-does-not-exist-unless)  
[This link takes you to the boss's office.](level-0.md)

# **Quotes and Blocks:**

---

### **Blocks:**

[[div class="block"]]

[[/div]]

---

[[div class="darkblock"]]

[[/div]]

---

[[div class="lightblock"]]

[[/div]]

---

### **Quote Blocks:**

[[div class="styled-quote"]]

[[/div]]

---

[[div class="dark-styled-quote"]]

[[/div]]

---

### **Title Blocks:**

INSERT TEXT

[[div class="titleblock"]]  
[[span class="titlebox"]]INSERT TEXT[[/span]]

[[/div]]

---

INSERT TEXT

[[div class="dark-titleblock"]]  
[[span class="dark-titlebox"]]INSERT TEXT[[/span]]

[[/div]]

---

# **Special Divs**

---

### **Log:**

AUDIO LOG

---

**Preface:** This random file was found in your mom's computer.

---

|  |  |
| --- | --- |
| Alpha: | Are you sure this is a good idea? |
|  | *Alpha looks around the room nervously.* |
| Beta: | No, and that's exactly why I'm even attempting it in the first place. |

---

**Aftermath:** Beta was found dead, to nobody's surprise.

[How to implement this log?](javascript:;)

[Glad you asked.](javascript:;)

```
[[div class="lightblock"]]
[[div class="log-top"]]
INSERT LOG HEADER HERE
[[/div]]
----
[[div class="presum"]]
**Preface:** [[span class="presumtext"]]Insert Log Preface here.[[/span]]
[[/div]]
----
[[table class="speak"]]

[[row]]
[[hcell]]
Insert Speaker Here:
[[/hcell]]
[[cell class="speech"]]
What is he saying?
[[/cell]]
[[/row]]

[[row]]
[[hcell]]

[[/hcell]]
[[cell class="act"]]
//External Actions Go Here.//
[[/cell]]
[[/row]]

[[row]]
[[hcell]]
Insert Another Speaker Here:
[[/hcell]]
[[cell class="speech"]]
What is she saying?
[[/cell]]
[[/row]]

[[/table]]
----
[[div class="presum"]]
**Aftermath:** [[span class="presumtext"]]Insert Log Summary/Aftermath Here.[[/span]]
[[/div]]
[[/div]]
```

---

### **Terminal:**

FUNNI TERMINAL

---

|  |  |
| --- | --- |
| > | Insert your credentials: |
|  | /login BackroomsUser9193 password |
| > | Welcome, BackroomsUser9193. Have you touched grass in the past week (Y/N)? |
|  | /N |
| > | What are you doing with your life, then? Would you at least like for me to display your file (Y/N)? |
|  | /Y |
| > | Unexpected Error. |

[How to implement this terminal?](javascript:;)

[Unload file (wait, can you do that?)](javascript:;)

```
[[div class="darkblock"]]
[[div class="terminal-top"]]
INSERT TERMINAL HEADER HERE
-----
[[/div]]
[[table class="digital"]]

[[row]]
[[hcell]]
@@>@@
[[/hcell]]
[[cell]]
Insert Terminal Message Here
[[/cell]]
[[/row]]

[[row]]
[[hcell]]

[[/hcell]]
[[cell class="response"]]
@@     @@Insert User Response Here
[[/cell]]
[[/row]]

[[/table]]
[[/div]]
```

---

The header font used is Sarpanch.  
The title font used is Kdam Thmor Pro.  
The body font used is Aldrich.  
The mono font used is Anaheim.  
The log font used is Radio Canada.  
The terminal font used is Orbitron.

---

[Want a job?](javascript:;)

[Sorry, we're not accepting. However, you can have my credentials.](javascript:;)

**Author:** ([Very Inconspicuous Link](the-skyrooms.md))

The logo is a composite of [Minimalist Sandbox Icon](https://commons.m.wikimedia.org/wiki/File:Minimalist_Sandbox_Icon.png) by Itsquietuptown ([CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/)) and [Gear icon svg](https://commons.m.wikimedia.org/wiki/File:Gear_icon_svg.svg) by MGalloway ([CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/)). The logo made by me is therefore released under CC BY-SA 4.0.  
[NYC Modern Office](https://www.flickr.com/photos/147489968@N06/29927672615) by Paintzen is licensed under [CC BY 2.0](https://creativecommons.org/licenses/by/2.0/).  
[Bill Gates July 2014](https://commons.m.wikimedia.org/wiki/File:Bill_Gates_July_2014.jpg) by Simon Davis/DFID is licensed under CC BY 2.0.  
[Vin Diesel](https://commons.m.wikimedia.org/wiki/File:Vin_Diesel_(9349847544).jpg) by Gage Skidmore is licensed under [CC BY-SA 2.0](https://creativecommons.org/licenses/by-sa/2.0/).  
[Tesla Cybertruck outside unveil modB](https://commons.m.wikimedia.org/wiki/File:Tesla_Cybertruck_outside_unveil_modB.jpg) by u/Kruzat is licensed under CC BY-SA 4.0.  
[Ed Sheeran, 5 2013](https://commons.m.wikimedia.org/wiki/File:Ed_Sheeran_5,_2013.jpg) by Eva Rinaldi is licensed under CC BY-SA 2.0.  
[Shark tank at golden nugget](https://commons.m.wikimedia.org/wiki/File:Shark_tank_at_golden_nugget.jpg) by ryan harvey is licensed under CC BY-SA 2.0.  
[Valve Trumpet in C MET DP-12679-126](https://commons.m.wikimedia.org/wiki/File:Valve_Trumpet_in_C_MET_DP-12679-126.jpg) by the Metropolitan Museum of Art is under [CC0 1.0](https://creativecommons.org/publicdomain/zero/1.0/deed.en).  
[Sam's Club - Fort Wayne, IN( 50979977208)](https://commons.m.wikimedia.org/wiki/File:Sam%27s_Club_-_Fort_Wayne,_IN(_50979977208).jpg) by Ambrosia LeFleur is licensed under CC BY 2.0.

Footnotes

[1](javascript:;). Hands

---

Source: [https://backrooms-wiki.wikidot.com/theme:corporate](https://backrooms-wiki.wikidot.com/theme:corporate)
