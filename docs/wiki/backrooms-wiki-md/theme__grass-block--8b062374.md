---
title: "Grass Block"
source: "https://backrooms-wiki.wikidot.com/theme:grass-block"
retrieved_at: "2026-08-23T23:40:27+00:00"
license: CC-BY-SA-3.0
---

# Grass Block

{$title}Languages:

  
[![flag-saudi-arabia2x.png](https://cdn3.iconfinder.com/data/icons/142-mini-country-flags-16x16px/32/flag-saudi-arabia2x.png)](theme__grass-block--8b062374.md)  
[![china](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/china)](theme__grass-block--8b062374.md)  
[![flag-germany2x.png](https://cdn3.iconfinder.com/data/icons/142-mini-country-flags-16x16px/32/flag-germany2x.png)](theme__grass-block--8b062374.md)  
[![uk](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/uk)](theme__grass-block--8b062374.md)  
[![spain](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/spain)](theme__grass-block--8b062374.md)  
[![france](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/france)](theme__grass-block--8b062374.md)  
[![indonesia](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/indonesia)](theme__grass-block--8b062374.md)  
[![italy](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/italy)](theme__grass-block--8b062374.md)  
[![KO](http://backrooms-wiki.wikidot.com/local--files/component:translations/KO)](theme__grass-block--8b062374.md)  
[![poland](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/poland)](theme__grass-block--8b062374.md)  
[![portugal](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/portugal)](theme__grass-block--8b062374.md)  
[![russia](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/russia)](theme__grass-block--8b062374.md)  
[![thai](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/thai)](theme__grass-block--8b062374.md)  
[![toki](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/toki)](theme__grass-block--8b062374.md)  
[![vietnam](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/vietnam)](theme__grass-block--8b062374.md)

rating: +21[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

This theme was created by for [backrooms CN wiki](index.md) and translated by .

To use this theme, type the following:

[[include :backrooms-wiki:theme:grass-block]]

# Examples:

![Missing alt text.](http://backrooms-wiki.wdfiles.com/local--files/theme:grass-block/-5e60a333670165fd.png)

Level 0, Drawn by Hotcat/bluesand.

A horizontal rule can be created with 5 hyphens "-----" and extends across the whole page if it's not placed inside anything (eg a blockquote). The lines separating sections of this document are horizontal rules.

---

Titles can be created by putting between 1 or 6 "+" at the start of the line.

[Title Example](javascript:;)

[Title](javascript:;)

# First Title.

## Second Title.

### Third Title.

#### Forth Title.

##### Fifth Title.

###### Sixth Title.

  
 

[Survival Difficulty Example](javascript:;)

[Hide](javascript:;)

SURVIVAL DIFFICULTY:

0

- {$one}.
- {$two}.
- {$three}.

[[iftags +component]]

---

## How to use:

[[include :backrooms-wiki:component:level-class  
|class=ClassName  
]]

You can choose a ClassName from list below:

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| Standard Class | 0 | 1 | 2 | 3 | 4 | 5 |
| Special Class | habitable | | | deadzone | | |
| unknown | | | pending | | |
| n/a | | | omega | | |
| amended | | | [1-5]e | | |

Each preset class has a special symbol and three lines of description.

---

## Customize

You can customize the component with following parameters:

[[include :backrooms-wiki:component:level-class  
|class=ClassName  
|color=#000000 **(Hex code with hashtag.)**  
|image=**(URL to image** or **A Preset Symbol)**  
|one=First Line  
|two=Second Line  
|three=Third Line  
]]

[[collapsible show="[+] See all Preset Symbols" hide="[-] See all Preset Symbols"]]

| Preset Name | What it looks like |
| --- | --- |
| 0 | 0 |
| 1 | 0 |
| 2 | 0 |
| 3 | 0 |
| 4 | 0 |
| 5 | 0 |
| unknown | 0 |
| n/a | 0 |
| omega | 0 |
| amended | 0 |
| habitable | 0 |
| deadzone | 0 |
| environmental | 0 |

Here is an example:

[[include :backrooms-wiki:component:level-class  
|class=My Custom Class  
|image=unknown  
|one=Maybe Safe  
|two=What  
|three=No  
|color=#96A5D4  
]]

And this is how it looks like:

SURVIVAL DIFFICULTY:

My Custom Class

- Maybe Safe.
- What.
- No it's NOT SAFE.

Additionally, use |white=enabled to make the text and symbol white. This would be very helpful if you choose a dark color.

[[include :backrooms-wiki:component:level-class  
|class=0  
|color=#333333  
**|white=enabled**  
]]

SURVIVAL DIFFICULTY:

0

- {$one}.
- {$two}.
- {$three}.

## Further Customize

By using module CSS, you can even go further:

[[module CSS]]  
.sd-container {  
/\* Text \*/  
 --sd-font: "Poppins", var(--body-font), sans-serif;  
 --sd-font-size: 16px; /\* This size must be set to 4\*n \*/

/\* Background Color \*/  
 --sd-background: var(--swatch-background);

/\* Border Color \*/  
 --sd-border: var(--gray-monochrome);  
 --sd-border-secondary: 0, 0, 0;  
 --sd-border-deadzone: 20, 0, 0;

/\* Icon Color \*/  
 --sd-symbol: var(--sd-text);

/\* Text Color \*/  
 --sd-bullets: var(--sd-border);  
 --sd-text: var(--sd-border);  
 --sd-text-secondary: 255, 255, 255;

/\* Color for Classes \*/  
/\* Why didn't they add a "sd-" prefix for these variables?? \*/  
 --class-0: 247, 227, 117;  
 --class-1: 255, 201, 14;  
 --class-2: 245, 156, 0;  
 --class-3: 249, 90, 0;  
 --class-4: 254, 23, 1;  
 --class-5: 175, 6, 6;  
 --class-unknown: 38, 38, 38;  
 --class-habitable: 26, 128, 111;  
 --class-deadzone: 44, 13, 12;  
 --class-pending: 182, 182, 182;  
 --class-n-a: 38, 38, 38;  
 --class-amended: 185, 135, 212;  
 --class-omega: 25, 46, 255;  
}  
[[/module]]

[[+] Check HTML structure](javascript:;)

[[-] Check HTML structure](javascript:;)

<div class="sd-container">  
 <div class="top-box">  
 <div class="header-diamond">  
 <div class="gradient-box">  
 <div class="top-text">  
 <div class="bottom-text">  
 <div class="bottom-box">  
 <ul>  
 <li>  
 <li>  
 <li>

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "Level Class Component" from the [Backrooms Wiki](index.md). Designed by ReyDay, created by Ambersight. Source: [https://backrooms-wiki.wikidot.com/component:level-class](component__level-class--cfeebc7b.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

> All svg files of symbols were created by .

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

[[/iftags]]

[[/collapsible]]

- [*Tab1*](javascript:;)
- [*Tab2*](javascript:;)
- [*Long Tab*](javascript:;)
- [*Idk why but this Tab is so loooong, I wonder why?*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)

This is a tab.

Look at me! I have more text.

so nostalgic…

This is a long tab, it contains many characters.

This is a long tab, it contains many characters.

This is a long tab, it contains many characters.

This is a long tab, it contains many characters.

This is a long tab, it contains many characters.

This is a long tab, it contains many characters.

This is a long tab, it contains many characters.

This is a long tab, it contains many characters.

This is a long tab, it contains many characters.

This is a long tab, it contains many characters.

This is a long tab, it contains many characters.

This is a long tab, it contains many characters.

> This is a blockquote, created by putting "> " at the start of each line.  
> More text
>
> ---
>
> That's a horizontal rule
>
> > Nested blockquotes

| This is a | GRASS BLOCK |
| --- | --- |
| You should know | how to make these |
| already | |

---

Foot[1](javascript:;)  
I put this  
Text here  
*So you can see*  
**Different kind**  
Of format  
And how other  
Thingsare  
FunctioningYEAH  
[Including link that doesn't exist](https://backrooms-wiki.wikidot.com/including-link-that-doesn-t-exist)  
[and link that does exist!](https://backrooms-wiki-cn.wikidot.com/theme:b-f-p-f)  
And special warning  
Or something less risky  
Or simply safe!

---

[[div class="styled-quote"]]

[[/div]]

[[div class="dark-styled-quote"]]

[[/div]]

[[div class="lightblock"]]

[[/div]]

[[div class="darkblock"]]

[[/div]]

[[div class="waterblock"]]

[[/div]]

[[div class="yellowblock"]]

[[/div]]

[[div class="grassblock"]]

[[/div]]

[[div class="dirtblock"]]

[[/div]]

[[div class="lavablock"]]

[[/div]]

---

[+ Author Information](javascript:;)

[- Hide](javascript:;)

> Author:   
> **[>>>My author page](https://backrooms-wiki.wikidot.com/author:tartar0s)**

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Grass Block](theme__grass-block--8b062374.md)" by taRtaROS, Translator: cakelord114514, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/theme:grass-block](theme__grass-block--8b062374.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/theme:grass-block">Grass Block</a>" by taRtaROS, Translator: cakelord114514, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/theme:grass-block">https://backrooms-wiki.wikidot.com/theme:grass-block</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Image：** Typography  
> **Author：** Steve Schoger  
> **License：** [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/deed.en)  
> **link:** [Link](index.md)

> **Image：** Xiangsu\_Level0  
> **Author：** Hotcat  
> **License：** [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/4.0/deed.en)  
> **link:** [Link](https://backrooms-wiki-cn.wdfiles.com/local--files/xiangsu-level0/-5e60a333670165fd.png)

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

[+ Theme Source](javascript:;)

[- Hide](javascript:;)

```
:root{
   --logo-image: none;
   --header-title: "THE BACKROOMS";
   --header-subtitle: "YOU'VE BEEN HERE BEFORE.";
   --gray-monochrome: 46,33,30;
   --medium-accent: 46,30,30;
   --body-font: "VonwaonBitmap 12px";
   --header-font: "VonwaonBitmap 12px";
   --title-font: "VonwaonBitmap 12px";
   --mono-font: Recursive, Noto Serif SC, Noto Serif TC, Consolas, monaco, monospace;
   --white-monochrome: 36,23,20;
   --swatch-text-dark: 235,235,235;
   --swatch-text-light: var(--swatch-text-dark);
   --swatch-menutxt-dark-color: var(--swatch-text-dark);
   --swatch-menubg-color: var(--black-monochrome);
   --link-color: 23,205,7;
   --hover-link-color: 33,131,6;
   --visited-link-color: 173,255,47;
   --newpage-color: 81,131,38;
   --dark-accent: 33,131,6;
   --sd-text: 255,255,255;
   --sd-font: var(--body-font);
   --sidebar-links-text: 76, 76, 76;
   letter-spacing: 0.1rem;
}
 
#page-title{
        border-bottom: .0625rem solid #C6C6C6;
}
 
#side-bar .side-block.media,
#side-bar div[style*="#e5e5ff"] {
    background-color: #C6C6C6 !important;
}
 
ins {
color:#000;
}
 
del {
color:#000;
}
 
#toc{
    background-color: #218306;
    color: #fff;
   border: 2.5px solid #fff;
    box-shadow: none;
}
 
#toc a{
color: #fff;
}
 
#container {
    background-image: radial-gradient(circle, rgb(var(--medium-accent), 0.05) 50%, transparent 0);
    background-size: 0.25em 0.25em;
    background-repeat: repeat;
    background-attachment: fixed;
    overflow: clip;
}
 
.tags{
color:#fff;
}
 
.credit{
color:#000;
}
 
.yui-navset .yui-nav a,
.yui-navset .yui-navset-top .yui-nav a {
background-color:#C6C6C6;
color: #000;
}
 
.yui-navset .yui-nav a:hover,
.yui-navset .yui-navset-top .yui-nav a:hover {
background-color:rgb(33,131,6);
color: #fff;
}
 
.yui-navset .yui-nav .selected a,
.yui-navset .yui-navset-top .yui-nav .selected a {
background-color:rgb(23,205,7);
color: #fff;
}
 
.yui-navset .yui-nav .selected a:hover,
.yui-navset .yui-navset-top .yui-nav .selected a:hover {
background-color:rgb(23,205,7);
color: #fff;
}
 
.yui-navset .yui-nav .selected a:focus,
.yui-navset .yui-navset-top .yui-nav .selected a:focus {
background-color:rgb(23,205,7);
color: #fff;
}
 
.code{
    background-color: #218306;
    color: #fff;
   border: 2.5px solid #fff;
    box-shadow: none;
}
.code a:hover,.code a:active{
color:rgb(var(--link-color));
}
 
blockquote{
    background-color: #218306;
    color: #fff;
   border: 2.5px solid #fff;
    box-shadow: none;
}
table.wiki-content-table th a,.grassblock a,blockquote a,div.blockquote a{
color:rgb(var(--link-color));
}
 
table.wiki-content-table th a:focus-within,.grassblock a:focus-within,blockquote a:focus-within
,div.blockquote a:focus-within
,.code a:focus-within
,.styled-quote a:focus-within{
color:#00FF00;
}
 
table.wiki-content-table th a:hover,.grassblock a:hover,blockquote a:hover
,div.blockquote a:hover
,.code a:hover
,.styled-quote a:hover{
color:#00FF00;
}
 
table.wiki-content-table th a:visited,.grassblock a:visited,blockquote a:visited
,div.blockquote a:visited
,.code a:visited
,.styled-quote a:visited{
color:#32CD32;
}
 
table.wiki-content-table th a.newpage,.grassblock a.newpage,blockquote a.newpage
,div.blockquote a.newpage
,.code a.newpage
,.styled-quote a.newpage{
color:#FFFF00;
}
 
div.blockquote{
    background-color: #218306;
    color: #fff;
   border: 2.5px solid #fff;
    box-shadow: none;
}
div.blockquote a:hover,div.blockquote a:focus-within,div.blockquote a:visited,div.blockquote a:newpage{
color:rgb(var(--link-color));
}
 
.open-menu {
   color: #4C4C4C;
   background-color: #C6C6C6;
    transition: none;
   border: 2.5px solid #000;
    box-shadow: inset 2.5px 2.5px rgba(255,255,255,.75), inset -2.5px -2.5px rgba(50, 50, 50,.60);
 
}
 
.open-menu:active, .open-menu:hover, .open-menu > a:active, .open-menu > a:hover {
    background-color: #218306;
    color: #fff;
    transition: none;
   border: 2.5px solid #fff;
    box-shadow: inset 2.5px 2.5px rgba(255,255,255,.75), inset -2.5px -2.5px rgba(50, 50, 50,.75);
}
 
#side-bar .side-block:first-of-type {
  justify-content: center;
}
 
#side-bar .side-block {
  padding-right: 0.5rem;
}
 
#side-bar .side-block .heading {
   padding-left: 0;
}
 
#side-bar .side-block .heading p {
   color: white;
   background-color: #333;
   border: 2.5px solid #000;
}
 
#side-bar .side-block .menu-item a {
   color: #4C4C4C;
   background-color: #C6C6C6;
    transition: none;
   border: 2.5px solid #000;
    box-shadow: inset 2.5px 2.5px rgba(255,255,255,.75), inset -2.5px -2.5px rgba(50, 50, 50,.60);
   margin-top: 2px;
   padding-top: 1px;
   padding-bottom: 1px;
 
}
 
#side-bar .side-block a.collapsible-block-link {
  color: #4C4C4C;
  background-color: #C6C6C6;
  transition: none;
  border: 2.5px solid #000;
  box-shadow: inset 2.5px 2.5px rgba(255,255,255,.75), inset -2.5px -2.5px rgba(50, 50, 50,.60);
  margin-top: 2px;
  padding-top: 1px;
  padding-bottom: 1px;
}
 
#side-bar div.menu-item a::before, #side-bar div.menu-item a:hover::before {
    content: none;
}
 
#side-bar .side-block .menu-item p a:active, #side-bar .side-block .menu-item p a:hover, #side-bar .side-block .menu-item > a:active, #side-bar .side-block .menu-item > a:hover, #side-bar .side-block a.collapsible-block-link:hover {
    background-color: #218306;
    color: #fff;
    transition: none;
   border: 2.5px solid #fff;
    box-shadow: inset 2.5px 2.5px rgba(255,255,255,.75), inset -2.5px -2.5px rgba(50, 50, 50,.75);
}
 
#page-content,#page-title{
   letter-spacing: 0.15rem;
}
 
#header h1{
 -webkit-transform:perspective(0.5em)  rotateX(1deg);
   position: absolute;
   top: 1rem;
   margin: 0;
   width: 100%;
   display: flex;
   justify-content: center;
}
 
#header h1 a{
font-size: 5rem;
}
 
#header h1 a:before{
color:#CDC2BD;
    text-shadow: 0 -6px 0px #000, /*上*/
    4px -4px 0px #000, /*右上*/
    6px 0 0px #000, /*右*/
    4px 4px 0px #000, /*右下*/
    0 6px 0px #000, /*下*/
    -4px 4px 0px #000, /*左下*/
    -6px 0 0px #000, /*左*/
    -4px -4px 0px #000000; /*左上*/
}
 
#header h2, #header h2 span, #header h2 span::before {
   position: absolute;
   left: 10%;
   top: 2rem;
   margin: 0;
   width: 100%;
   display: flex;
   justify-content: center;
font-size: 1.5rem;
transform: rotate(-7deg);
 
}
 
#header h2 span::before {
color:#FFFF00;
    text-shadow: 3.5px 3.5px 0px #404000;
   animation:header 0.5s ease-out infinite;
}
 
@keyframes header {
 0% { font-size: 1rem; }
  50% { font-size: .8rem; }
  100% { font-size: 1rem; }
}
 
@media (max-width: 905px) {
 
#header h1 a{
font-size: 3rem;
}
 
#header h2, #header h2 span, #header h2 span::before {
   left: 9%;
   top: 1.6rem;
font-size: 1.0rem;
 
}
 
@keyframes header {
 0% { font-size: 1.0rem; }
  50% { font-size: 0.82rem; }
  100% { font-size: 1.0rem; }
}
 
}
 
@media (max-width: 600px) {
 
#header h1 a{
font-size: 2.5rem;
}
 
#header h2, #header h2 span, #header h2 span::before {
   left: 6%;
  top: 1.6rem;
font-size: 1.0rem;
}
 
@keyframes header {
 0% { font-size: 1.0rem; }
  50% { font-size: 0.82rem; }
  100% { font-size: 1.0rem; }
}
 
}
 
#skrollr-body {
background-color: #176948;
background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='80' height='80' viewBox='0 0 80 80'%3E%3Cg fill='%232b851a' fill-opacity='1'%3E%3Cpath fill-rule='evenodd' d='M0 0h40v40H0V0zm40 40h40v40H40V40zm0-40h2l-2 2V0zm0 4l4-4h2l-6 6V4zm0 4l8-8h2L40 10V8zm0 4L52 0h2L40 14v-2zm0 4L56 0h2L40 18v-2zm0 4L60 0h2L40 22v-2zm0 4L64 0h2L40 26v-2zm0 4L68 0h2L40 30v-2zm0 4L72 0h2L40 34v-2zm0 4L76 0h2L40 38v-2zm0 4L80 0v2L42 40h-2zm4 0L80 4v2L46 40h-2zm4 0L80 8v2L50 40h-2zm4 0l28-28v2L54 40h-2zm4 0l24-24v2L58 40h-2zm4 0l20-20v2L62 40h-2zm4 0l16-16v2L66 40h-2zm4 0l12-12v2L70 40h-2zm4 0l8-8v2l-6 6h-2zm4 0l4-4v2l-2 2h-2z'/%3E%3C/g%3E%3C/svg%3E");
   position: absolute;
   background-size: auto 3rem;
}
 
#header #top-bar div.top-bar > ul > li > a,
#header #top-bar div.mobile-top-bar > ul > li > a {
   color: #4C4C4C;
   background-color: #C6C6C6;
    transition: none;
   border: 2.5px solid #000;
    box-shadow: inset 2.5px 2.5px rgba(255,255,255,.75), inset -2.5px -2.5px rgba(50, 50, 50,.60);
}
 
#header #top-bar div.top-bar > ul > li:hover > a,
#header #top-bar div.mobile-top-bar > ul > li:hover > a {
    background-color: #218306;
    color: #fff;
    transition: none;
   border: 2.5px solid #fff;
    box-shadow: inset 2.5px 2.5px rgba(255,255,255,.75), inset -2.5px -2.5px rgba(50, 50, 50,.75);
}
 
#header #top-bar div.top-bar > ul > li > ul > li:hover > a,
#header #top-bar div.mobile-top-bar > ul > li > ul > li:hover > a {
    background-color: #218306;
    color: #fff;
    transition: none;
   border: 2.5px solid #fff;
    box-shadow: inset 2.5px 2.5px rgba(255,255,255,.75), inset -2.5px -2.5px rgba(50, 50, 50,.75);
}
 
#header #top-bar div.top-bar > ul > li > ul > li > a,
#header #top-bar div.mobile-top-bar > ul > li > ul > li > a {
   color: #4C4C4C;
   background-color: #C6C6C6;
    transition: none;
   border: 2.5px solid #000;
    box-shadow: inset 2.5px 2.5px rgba(255,255,255,.75), inset -2.5px -2.5px rgba(50, 50, 50,.60);
}
 
#header #top-bar div.top-bar > ul > li > ul > li > ul > li:hover > a,
#header #top-bar div.mobile-top-bar > ul > li > ul > li > ul > li:hover > a {
    background-color: #218306;
    color: #fff;
    transition: none;
   border: 2.5px solid #fff;
    box-shadow: inset 2.5px 2.5px rgba(255,255,255,.75), inset -2.5px -2.5px rgba(50, 50, 50,.75);
}
 
#header #top-bar div.top-bar > ul > li > ul > li > ul > li > a,
#header #top-bar div.mobile-top-bar > ul > li > ul > li > ul > li > a {
   color: #4C4C4C;
   background-color: #C6C6C6;
    transition: none;
   border: 2.5px solid #000;
    box-shadow: inset 2.5px 2.5px rgba(255,255,255,.75), inset -2.5px -2.5px rgba(50, 50, 50,.60);
}
 
@supports (display:grid) {
  #top-bar div.top-bar > ul > li > ul > li > a::before, #top-bar div.top-bar > ul > li > ul > li > a:hover::before, #top-bar div.top-bar > ul > li > ul > li > ul > li > a::before, #top-bar div.top-bar > ul > li > ul > li > ul > li > a:hover::before {
    content: none;
  }
 
  @media only screen and (max-width: 768px) {
    #top-bar div.mobile-top-bar > ul > li > a {
      font-size: 2.5dvw;
    }
  }
}
 
div#page-options-bottom-2 > a, div#page-options-bottom > a {
   color: #4C4C4C;
   background-color: #C6C6C6;
   padding: 0.8rem 0.5rem;
   margin: 0.5rem 0.2rem;
    transition: none;
   border: 2.5px solid #000;
    box-shadow: inset 2.5px 2.5px rgba(255,255,255,.75), inset -2.5px -2.5px rgba(50, 50, 50,.60);
 
}
 
div#page-options-bottom-2 > a:active, div#page-options-bottom-2 > a:hover, div#page-options-bottom > a:active, div#page-options-bottom > a:hover {
    background-color: #218306;
    color: #fff;
    transition: none;
   border: 2.5px solid #fff;
    box-shadow: inset 2.5px 2.5px rgba(255,255,255,.75), inset -2.5px -2.5px rgba(50, 50, 50,.75);
}
 
#action-area #edit-page-form .form tr {
  display: grid;
}
 
.scp-image-block .scp-image-caption{
    background-color: #218306;
}
 
.styled-quote {
    background-color: #218306;
    border-left: 0.5rem solid rgba(var(--gray-monochrome));
    padding: 0.1rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    box-shadow: none;
}
 
.dark-styled-quote {
    background-color: rgb(var(--gray-monochrome));
    border-left: 0.5rem solid #218306;
    color: #fff;
    padding: 0.1rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    box-shadow: none;
}
 
.dark-styled-quote a {
    color: rgb(var(--swatch-menubg-medium-color));
}
 
.lightblock {
    background-color: #C6C6C6;
    color: #000;
    padding: 0.01rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    box-shadow: inset 2.5px 2.5px rgba(255,255,255,.75), inset -2.5px -2.5px rgba(50, 50, 50,.60);
}
 
.darkblock {
    background-color: #333;
    color: #fff;
    padding: 0.01rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    box-shadow: inset 2.5px 2.5px rgba(255,255,255,.75), inset -2.5px -2.5px rgba(50, 50, 50,.60);
}
 
.darkblock a {
    color: rgb(var(--link-color));
}
 
.waterblock {
    background-color: #2E6BE5;
    color: #fff;
    padding: 0.01rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    box-shadow: inset 2.5px 2.5px rgba(255,255,255,.75), inset -2.5px -2.5px rgba(50, 50, 50,.60);
}
 
.waterblock a {
color: #333;
}
 
.yellowblock {
    background-color: #DAA520;
    color: #fff;
    padding: 0.01rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    box-shadow: inset 2.5px 2.5px rgba(255,255,255,.75), inset -2.5px -2.5px rgba(50, 50, 50,.60);
}
 
.yellowblock a {
color: #333;
}
 
.lavablock {
background-color: #c57334;
background-image: url("data:image/svg+xml,%3Csvg width='30' height='30' viewBox='0 0 30 30' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M0 10h10v10H0V10zM10 0h10v10H10V0z' fill='%23d5d637' fill-opacity='0.4' fill-rule='evenodd'/%3E%3C/svg%3E");
    color: #fff;
    padding: 0.01rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    box-shadow: inset 2.5px 2.5px rgba(255,255,255,.75), inset -2.5px -2.5px rgba(50, 50, 50,.60);
}
 
.grassblock {
background-color: #176948;
background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='80' height='80' viewBox='0 0 80 80'%3E%3Cg fill='%232b851a' fill-opacity='1'%3E%3Cpath fill-rule='evenodd' d='M0 0h40v40H0V0zm40 40h40v40H40V40zm0-40h2l-2 2V0zm0 4l4-4h2l-6 6V4zm0 4l8-8h2L40 10V8zm0 4L52 0h2L40 14v-2zm0 4L56 0h2L40 18v-2zm0 4L60 0h2L40 22v-2zm0 4L64 0h2L40 26v-2zm0 4L68 0h2L40 30v-2zm0 4L72 0h2L40 34v-2zm0 4L76 0h2L40 38v-2zm0 4L80 0v2L42 40h-2zm4 0L80 4v2L46 40h-2zm4 0L80 8v2L50 40h-2zm4 0l28-28v2L54 40h-2zm4 0l24-24v2L58 40h-2zm4 0l20-20v2L62 40h-2zm4 0l16-16v2L66 40h-2zm4 0l12-12v2L70 40h-2zm4 0l8-8v2l-6 6h-2zm4 0l4-4v2l-2 2h-2z'/%3E%3C/g%3E%3C/svg%3E");
    color: #fff;
    padding: 0.01rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    box-shadow: inset 2.5px 2.5px rgba(255,255,255,.75), inset -2.5px -2.5px rgba(50, 50, 50,.60);
}
 
.dirtblock {
background-color: #3e312e;
background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='80' height='80' viewBox='0 0 80 80'%3E%3Cg fill='%23342724' fill-opacity='1'%3E%3Cpath fill-rule='evenodd' d='M0 0h40v40H0V0zm40 40h40v40H40V40zm0-40h2l-2 2V0zm0 4l4-4h2l-6 6V4zm0 4l8-8h2L40 10V8zm0 4L52 0h2L40 14v-2zm0 4L56 0h2L40 18v-2zm0 4L60 0h2L40 22v-2zm0 4L64 0h2L40 26v-2zm0 4L68 0h2L40 30v-2zm0 4L72 0h2L40 34v-2zm0 4L76 0h2L40 38v-2zm0 4L80 0v2L42 40h-2zm4 0L80 4v2L46 40h-2zm4 0L80 8v2L50 40h-2zm4 0l28-28v2L54 40h-2zm4 0l24-24v2L58 40h-2zm4 0l20-20v2L62 40h-2zm4 0l16-16v2L66 40h-2zm4 0l12-12v2L70 40h-2zm4 0l8-8v2l-6 6h-2zm4 0l4-4v2l-2 2h-2z'/%3E%3C/g%3E%3C/svg%3E");
    color: #fff;
    padding: 0.01rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    box-shadow: inset 2.5px 2.5px rgba(255,255,255,.75), inset -2.5px -2.5px rgba(50, 50, 50,.60);
}
 
table.wiki-content-table {
    box-shadow: none;
   border: 1px solid #fff;
}
 
#page-content table.wiki-content-table tbody tr th {
    background-color: #176948;
background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='80' height='80' viewBox='0 0 80 80'%3E%3Cg fill='%232b851a' fill-opacity='1'%3E%3Cpath fill-rule='evenodd' d='M0 0h40v40H0V0zm40 40h40v40H40V40zm0-40h2l-2 2V0zm0 4l4-4h2l-6 6V4zm0 4l8-8h2L40 10V8zm0 4L52 0h2L40 14v-2zm0 4L56 0h2L40 18v-2zm0 4L60 0h2L40 22v-2zm0 4L64 0h2L40 26v-2zm0 4L68 0h2L40 30v-2zm0 4L72 0h2L40 34v-2zm0 4L76 0h2L40 38v-2zm0 4L80 0v2L42 40h-2zm4 0L80 4v2L46 40h-2zm4 0L80 8v2L50 40h-2zm4 0l28-28v2L54 40h-2zm4 0l24-24v2L58 40h-2zm4 0l20-20v2L62 40h-2zm4 0l16-16v2L66 40h-2zm4 0l12-12v2L70 40h-2zm4 0l8-8v2l-6 6h-2zm4 0l4-4v2l-2 2h-2z'/%3E%3C/g%3E%3C/svg%3E");
   border: 1px solid #fff!important;
    color: #fff;
}
 
table.wiki-content-table tr td {
background-color: #3e312e;
background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='80' height='80' viewBox='0 0 80 80'%3E%3Cg fill='%23342724' fill-opacity='1'%3E%3Cpath fill-rule='evenodd' d='M0 0h40v40H0V0zm40 40h40v40H40V40zm0-40h2l-2 2V0zm0 4l4-4h2l-6 6V4zm0 4l8-8h2L40 10V8zm0 4L52 0h2L40 14v-2zm0 4L56 0h2L40 18v-2zm0 4L60 0h2L40 22v-2zm0 4L64 0h2L40 26v-2zm0 4L68 0h2L40 30v-2zm0 4L72 0h2L40 34v-2zm0 4L76 0h2L40 38v-2zm0 4L80 0v2L42 40h-2zm4 0L80 4v2L46 40h-2zm4 0L80 8v2L50 40h-2zm4 0l28-28v2L54 40h-2zm4 0l24-24v2L58 40h-2zm4 0l20-20v2L62 40h-2zm4 0l16-16v2L66 40h-2zm4 0l12-12v2L70 40h-2zm4 0l8-8v2l-6 6h-2zm4 0l4-4v2l-2 2h-2z'/%3E%3C/g%3E%3C/svg%3E");
   border: 1px solid #fff;
    color: #fff;
}
 
.sd-container .bottom-box ul li {
   color: rgb(255,255,255);
   font-family:var(--body-font);
}
 
.sd-container .bottom-box ul li:before {
   background: rgb(255,255,255);
   transform: none;
}
 
.sd-container .top-box .gradient-box .top-text p span{
color: #fff;
   font-family:var(--body-font);
}
 
.top-box .top-text p {
    font: 2rem var(--sd-font);
    font-weight: bold;
    color: white;
    color: rgb(var(--sd-text));
    position: relative;
    margin: 0 0.08rem;
    line-height: 2.16rem;
}
 
.sd-container .top-box .gradient-box .bottom-text:after,
.sd-container .top-box .gradient-box .bottom-text p,
.sd-container .top-box .gradient-box .bottom-text p span{
color: #fff;
   font-family:var(--body-font);
}
 
.sd-container .top-box:before {
background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='80' height='80' viewBox='0 0 80 80'%3E%3Cg fill='%23342724' fill-opacity='1'%3E%3Cpath fill-rule='evenodd' d='M0 0h40v40H0V0zm40 40h40v40H40V40zm0-40h2l-2 2V0zm0 4l4-4h2l-6 6V4zm0 4l8-8h2L40 10V8zm0 4L52 0h2L40 14v-2zm0 4L56 0h2L40 18v-2zm0 4L60 0h2L40 22v-2zm0 4L64 0h2L40 26v-2zm0 4L68 0h2L40 30v-2zm0 4L72 0h2L40 34v-2zm0 4L76 0h2L40 38v-2zm0 4L80 0v2L42 40h-2zm4 0L80 4v2L46 40h-2zm4 0L80 8v2L50 40h-2zm4 0l28-28v2L54 40h-2zm4 0l24-24v2L58 40h-2zm4 0l20-20v2L62 40h-2zm4 0l16-16v2L66 40h-2zm4 0l12-12v2L70 40h-2zm4 0l8-8v2l-6 6h-2zm4 0l4-4v2l-2 2h-2z'/%3E%3C/g%3E%3C/svg%3E");
}
 
.sd-container .top-box .header-diamond .diamond-pattern {
background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='80' height='80' viewBox='0 0 80 80'%3E%3Cg fill='%23342724' fill-opacity='1'%3E%3Cpath fill-rule='evenodd' d='M0 0h40v40H0V0zm40 40h40v40H40V40zm0-40h2l-2 2V0zm0 4l4-4h2l-6 6V4zm0 4l8-8h2L40 10V8zm0 4L52 0h2L40 14v-2zm0 4L56 0h2L40 18v-2zm0 4L60 0h2L40 22v-2zm0 4L64 0h2L40 26v-2zm0 4L68 0h2L40 30v-2zm0 4L72 0h2L40 34v-2zm0 4L76 0h2L40 38v-2zm0 4L80 0v2L42 40h-2zm4 0L80 4v2L46 40h-2zm4 0L80 8v2L50 40h-2zm4 0l28-28v2L54 40h-2zm4 0l24-24v2L58 40h-2zm4 0l20-20v2L62 40h-2zm4 0l16-16v2L66 40h-2zm4 0l12-12v2L70 40h-2zm4 0l8-8v2l-6 6h-2zm4 0l4-4v2l-2 2h-2z'/%3E%3C/g%3E%3C/svg%3E");
}
 
.owindow .button-bar a, a.button, button, div.buttons input, file, input.button {
  color: #4C4C4C;
  background-color: #C6C6C6;
  transition: none;
  border: 2.5px solid #000;
  box-shadow: inset 2.5px 2.5px rgba(255,255,255,.75), inset -2.5px -2.5px rgba(50, 50, 50,.60);
  margin-top: 2px;
  padding: 5px;
}
.owindow .button-bar a:hover, a.button:hover, button:hover, div.buttons input:hover, file:hover, input.button:hover {
  background-color: #218306;
  color: #fff;
  transition: none;
  border: 2.5px solid #fff;
  box-shadow: inset 2.5px 2.5px rgba(255,255,255,.75), inset -2.5px -2.5px rgba(50, 50, 50,.75);
}
 
#lock-info, div.note, input.checkbox, input.text, textarea {
  background-color: rgb(var(--black-monochrome));
}
#footer, #license-area {
  color: var(--swatch-text-general);
}
```

Footnotes

[1](javascript:;). Note

---

Source: [https://backrooms-wiki.wikidot.com/theme:grass-block](https://backrooms-wiki.wikidot.com/theme:grass-block)
