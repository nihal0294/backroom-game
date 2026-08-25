---
title: "Eternal Repository Theme"
source: "https://backrooms-wiki.wikidot.com/theme:eternal-repository-theme"
retrieved_at: "2026-08-23T23:42:15+00:00"
license: CC-BY-SA-3.0
---

# Eternal Repository Theme

rating: +27[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

Welcome to the Eternal Repository's… *graphic design* sub-division. We hope you enjoy the new banner. The one which the UEC used was nice, but it's time for us to have our own debut.

This theme was created by Sentinel . Insert the following code anywhere in your page to use our theme:

[[include :backrooms-wiki:theme:eternal-repository-theme]]

This theme was built off of 's [U.E.C. theme page](theme__uec--8ff42e5c.md), using most of the internal code with some nice, comforting blue changes.

The Body and Header font are both Rajdhani  
Title font is Turret Road  
Last but not least, Mono font is Overpass Mono

Finding the Forgotten,

---

Mending the Found.

[State your Presence](javascript:;)

[and Hold your Ground.](javascript:;)

# Header 1

## Header 2

### Header 3

#### Header 4

##### Header 5

###### Header 6

- [*Document 1*](javascript:;)
- [*Document 2*](javascript:;)
- [*Document 3*](javascript:;)
- [*Master Administrator Authorization Required*](javascript:;)
- [*Class B File*](javascript:;)
- [*Sentinel Combat Orders*](javascript:;)
- [*Updates*](javascript:;)

put some cool techy stuff here

more cool inquisitor things

uhhhh maybe some Division Gamma stuff idk

You've made a terrible mistake, haven't you?

long

loing

long

long

long  
long

logn

logn

lnog

i cna type english i swear

uhhh go protect things why not

update: you have no bitches

---

> We take those who cannot protect themselves,
>
> ---
>
> Helping them survive through the hell we find ourselves in.
>
> > To trade is to assist others, sharing the wealth amongst the population.
> >
> > > Join us and live in the shadows, helping those who find themselves lost and afraid.
> > >
> > > > We Find the Forgotten, and Mend the Found.

---

|  |  |
| --- | --- |
| CLASS ALPHA | CLASS BRAVO |
| myrar | PinDead |
| birch, the pilk | progen |

![Missing alt text.](http://navyeod-24.wikidot.com/local--files/start/ER%20Poster)

We are the Sentinels of the Repository

---

Reunion  
Our ultimate goal.

[[div class="titleblock"]]  
[[span class="titlebox"]]Title Test[[/span]]

[[/div]]

Expressing our goals, to help all.

[[div class="styled-quote"]]

[[/div]]

To hide in the shadows, helping those and having no faces.

[[div class="lightblock"]]

[[/div]]

I do hope you enjoy your stay. ~ The Master Administrator

[[div class="stripeblock"]]

[[/div]]

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
@import url(https://backrooms-wiki.wdfiles.com/local--code/component%3Apatch/1);
 
@import url("http://vivarium.wdfiles.com/local--files/backrooms%3Avivtheme/stylesheet.css");
 
:root {
   --theme-base: "black-highlighter";
   --theme-id: "eternal-repository";
   --theme-name: "Eternal Repository Theme";
 
   --logo-image: url("http://navyeod-24.wikidot.com/local--files/start/blank%20image.png");
   --header-title: "The Eternal Repository";
   --header-subtitle: "Finding the Forgotten, Mending the Found";
   --mainAccent: 20, 36, 255;
   --link-color: 20, 36, 255;
   --hover-link-color: 20, 36, 255;
   --visited-link-color: 157, 0, 0;
   --header-font: `saira` , sans-serif;
   --title-font: `saira` , sans-serif;
 
   --body-font: proxima-nova, sans-serif;
   --mono-font: 'Fantasque Sans Mono', monospace;
 
   --white-monochrome: 237, 233, 223;
   --pale-gray-monochrome: 255, 251, 240;
   --light-gray-monochrome: 160, 160, 160;
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
 
   --background-gradient-distance: 0rem;
   --gradient-topmenu: none;
   --diagonal-stripes: linear-gradient(transparent 0);
   --gradient-header: none;
 
    --header-height-on-desktop: 9rem;
 
}
 
/* sd banner colours */
 
.sd-container {
   --sd-border:var(--pale-accent);
   --sd-text:222,222,222;
   --sd-symbol:var(--sd-text);
   --sd-bullets:var(--pale-accent);
}
 
/*login stuff*/
#login-status{
   color: rgb(var(--white-monochrome));
}
 
#login-status a#my-account {
   background-color: rgb(var(--pale-accent));
   padding: 0.3em 0.25em 0.2em 0.25em;
}
 
#account-options>ul>li a:hover {
   color: rgb(var(--pale-accent));
}
 
#account-options {
  background: rgb(var(--medium-accent));
  border-color: rgb(var(--pale-accent));
  color: rgb(var(--white-monochrome));
}
 
#login-status ul a {
  color: rgb(var(--white-monochrome));
}
 
/*table stuff*/
table.wiki-content-table th {
background-color: rgb(var(--dark-gray-monochrome));
border: 2px solid rgb(var(--pale-accent)) !important;
}
 
table.wiki-content-table td {
border: 2px solid rgb(var(--pale-accent)) !important;
}
 
/*misc*/
#page-title:after {
   background-color: rgb(var(--pale-accent));
}
 
#side-bar div.menu-item {
   border-color: rgb(var(--bright-accent));
}
 
#side-bar .side-block div a img {
   filter: grayscale(100%);
}
 
#footer{
   color: rgb(var(--black-monochrome));
}
 
.scp-image-block {
    border: none;
}
 
.scp-image-block .scp-image-caption {
    color: rgb(var(--white-monochrome));
    background-color: rgb(var(--dark-gray-monochrome));
    border: none;
    margin-top: 0.3rem;
    border-left: 0.2rem solid rgba(var(--pale-accent));
    border-right: 0.2rem solid rgba(var(--pale-accent));
}
 
.page-rate-widget-box {
    background: none;
    border: none;
    background-color: rgb(var(--dark-gray-monochrome));
    border-left: 0.2rem solid rgba(var(--pale-accent));
}
 
/*hexagon header gradient*/
#skrollr-body {
   background: repeating-linear-gradient(-45deg, #000000, #000000 4px, #000000 5px, #000000 5px);
   height: 11rem;
}
 
/*blend gradient*/
#container {
   background: linear-gradient(180deg, rgba(0,0,0,0) 35%, rgb(var(--medium-accent)) 93%);
   background-size: 37rem 11rem;
   background-attachment: scroll;
   background-repeat: repeat-x;
}
 
/*misc 2*/
div#page-options-bottom-2 > a, div#page-options-bottom > a {
   border-radius: 0em;
   -moz-border-radius: 0em;
   border: none;
}
 
div#page-options-bottom-2 > a:active, div#page-options-bottom-2 > a:hover, div#page-options-bottom > a:active, div#page-options-bottom > a:hover {
   border: none;
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
   width: 100%;
   display: flex;
   justify-content: left;
   z-index: 0;
}
 
#header h2, #header h2 span, #header h2 span::before {
   position: absolute;
   left: 3.3rem;
   top: 1.8rem;
   margin: 0;
   width: 100%;
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
 
/*links*/
a.newpage {
   background: transparent;
   text-decoration: none
}
 
a.newpage {
   color: rgb(var(--newpage-color))
}
 
/*line + block*/
hr {
   background-color: #000000;
   border-top: solid 2px rgb(var(--pale-accent));
}
 
blockquote {
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
   background-color: rgb(var(--dark-gray-monochrome));
   border: none;
   border-left: solid 2px rgb(var(--pale-accent));
}
 
/*search*/
/*#search-top-box {
        left: 3%;
        top: 0.5rem;
}
 
#search-top-box-form > #search-top-box-input {
        width: 7rem;
}*/
 
/* TABVIEW - Abandon All Hope Ye Who Enter Here */
 
/*content bg*/
.yui-navset .yui-content {
     background-color: rgba(var(--pale-accent), 0.25);
     border-color: rgb(var(--pale-accent));
}
 
/*unselected tab color*/
.yui-navset .yui-nav a,
.yui-navset .yui-navset-top .yui-nav a {
    background-color: rgb(var(--dark-gray-monochrome));
    color:rgb(var(--white-monochrome));
}
 
/*hover tab bg*/
.yui-navset .yui-nav a:hover,
.yui-navset .yui-nav a:focus {
     background-color: rgba(var(--pale-accent), .25);
}
 
/*backer background*/
.yui-navset .yui-nav li,
.yui-navset .yui-navset-top .yui-nav li {
    background: rgb(var(--dark-gray-monochrome));
}
 
/*selected tab bg*/
.yui-navset .yui-nav .selected,
.yui-navset .yui-navset-top .yui-nav .selected {
    background-color: rgb(var(--pale-accent));
}
 
.yui-navset .yui-nav .selected a:focus,
.yui-navset .yui-nav .selected a:active {
    background-color: rgb(var(--pale-accent));
}
 
@media only screen and (max-width: 768px) {
:root{
   --swatch-menubg-color: var(--medium-accent);
}
 
#header::before {
background-image: none;
}
 
    #header {
     height: var(--header-height-on-mobile);
     background-image: url("https://nu-scptheme.github.io/Black-Highlighter/images/logo.svg");
     background-image: var(--logo-image);
     --size: calc(var(--final-header-height-on-mobile) + 1rem);
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
    border-color: rgb(var(--pale-accent));
}
#search-top-box form[id="search-top-box-form"]:not(:focus-within) input[type="text"]{
    background: rgb(0, 0, 0);
    border-color: rgb(var(--pale-accent));
}
}
 
.styled-quote {
   background-color:rgb(var(--dark-gray-monochrome));
   border-left: 0.5rem solid rgba(var(--pale-accent));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.dark-styled-quote {
   background-color:rgb(var(--black-monochrome));
   border-left: 0.5rem solid rgba(var(--pale-accent));
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
   border: solid rgb(var(--pale-accent)) 2px;
}
 
.titlebox{
  position: relative;
  top: -1.6rem;
  background-color: rgb(var(--pale-accent));
  color: rgb(var(--white-monochrome));
  padding: 0.25rem 1rem;
  line-height: 0.1rem;
}
 
.stripeblock{
   background: repeating-linear-gradient(-45deg, #070536, #070536 4px, #2525e6 5px, #2525e6 5px);
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
   border-left: 0.5rem solid rgba(var(--dark-gray-monochrome));
   border-right: 0.5rem solid rgba(var(--dark-gray-monochrome));
}
 
#skrollr-body {
   background: repeating-linear-gradient(-45deg, #000000, #000000 4px, #000000 5px, #000000 5px);
   height: 11rem;
}
 
#search-top-box .button {
    visibility: hidden;
}
 
#search-top-box-form {
    visibility: hidden;
}
 
#header::before {
   top: -1.5rem;
}
 
#header h1 a::before {
   letter-spacing: 0.2rem;
}
 
.featurebox{
    padding:0 0.5rem;
    margin:1rem 0;
    background:#000000;
    border-radius:0.6rem;
    box-shadow: 0px 0px 3px;
    border: 1.75px solid #2525e6;
    box-sizing:border-box;
}
 
.featureflavor{
    padding:0 0.5rem;
    margin:0.5rem 0;
    background:#0B1727;
    border-radius:0.6rem;
    box-shadow: 0px 0px 3px;
    border: 1.75px solid #2525e6;
    box-sizing:border-box;
    transition:0.2s;
}
 
//If you don't want a span, don't include anything down here
 
.featurespan{
    float:right;
    font-size:75%;
}
 
@media only screen and (max-width: 520px) {
    .featurespan{
        display:none;
    }
}
 
div#container-wrap{
    background: url(http://backrooms-wiki.wikidot.com/local--files/theme:eternal-repository-theme/er-banner-finished.png) top center repeat-x;
    background-size: auto var(--header-height-on-desktop);
}
 
@media only screen and (max-width: 768px) {
    div#container-wrap{
       background: url(http://backrooms-wiki.wikidot.com/local--files/theme:eternal-repository-theme/er-banner-finished.png) top center repeat-x;
       background-size: auto var(--header-height-on-mobile);
    }
}
```

[- Close](javascript:;)

---

Source: [https://backrooms-wiki.wikidot.com/theme:eternal-repository-theme](https://backrooms-wiki.wikidot.com/theme:eternal-repository-theme)
