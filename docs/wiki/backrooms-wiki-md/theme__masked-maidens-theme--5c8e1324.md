---
title: "Masked Maidens Theme"
source: "https://backrooms-wiki.wikidot.com/theme:masked-maidens-theme"
retrieved_at: "2026-08-23T23:41:28+00:00"
license: CC-BY-SA-3.0
---

# Masked Maidens Theme

rating: +24[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

This theme was created by .

To import this theme to your page, put the following text anywhere inside it:

[[include :backrooms-wiki:theme:masked-maidens-theme]]

# Examples

![Missing alt text.](https://i.ibb.co/F892vYh/logo.jpg)

Masked Maidens

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

haha jk it's not em tee-

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

somebody once told me

the world was macaroni

so I took a bite out of a tree

it tasted like sh\*&

So I spit it on a bunny

and the bunny took a \*&^$ on meEEEEeee

To mask is to reveal.  
**To mask is to reveal.**  
*To mask is to reveal.*  
To mask is to reveal.  
To mask is to reveal.  
To mask is to reveal.

---

The header and title font used is Josefin Slab.  
The body font used is Latos Sans-serif.  
The monospace font used is Courier.

---

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
@import url(https://backrooms-wiki.wdfiles.com/local--code/component%3Apatch/1);
@import url('https://fonts.googleapis.com/css2?family=Josefin+Slab:wght@700&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Lato&display=swap');
 
:root {
   --theme-base: "black-highlighter";
   --theme-id: "mm-theme";
   --theme-name: "Masked Maidens Theme";
 
   --logo-image: url("https://i.ibb.co/ZccffPw/logo-for-pr.png");
   --header-title: "The Masked Maidens";
   --header-subtitle: "To Mask is to Reveal.";
 
   --body-font: 'Lato', sans-serif;
   --header-font: 'Josefin Slab'; serif;
   --title-font: 'Josefin Slab', serif;
   --mono-font: 'Courier'; monospace;
 
--reddish-pink-monochrome: 200, 102, 110;
   --blue-monochrome: 57, 79, 107;
   --pale-blue-monochrome: 71, 74, 100;
   --pale-purple-monochrome: 85, 70, 92;
   --red-purple-monochrome: 99, 65, 85;
   --redder-purple-monochrome: 113, 61, 77;
   --pale-red-monochrome: 255, 204, 203;
   --pale-pink-monochrome: 251, 237, 242;
--dark-red: 94, 10, 10;
--even-darker-red: 64, 0, 0;
   --bright-accent: 198, 33, 33;
   --medium-accent: 184, 38, 40;
   --dark-accent: 128, 56, 70;
   --pale-accent: 142, 51, 63;
--light-grey-monochrome: 180, 180, 180;
--green-monochrome: 0, 200, 0;
--white-monochrome: 255, 255, 255;
--dark-purple-monochrome: 48, 21, 40;
--purple-monochrome: 71, 43, 62;
--red-pink-monochrome: 171, 76, 85;
--just-pink: 255, 217, 229;
--redder-pink-monochrome: 240, 187, 196;
--even-paler-blue: 178, 182, 217;
--another-pink-shade: 245, 149, 162;
--loveutoojami: 222, 149, 165;
 
/*I hate you so much -Jami*/
 
--background-gradient-color: var(--pale-pink-monochrome);
 
 --swatch-background: var(--pale-pink-monochrome);
    --swatch-primary: var(--bright-accent);
    --swatch-primary-darker: var(--reddish-pink-monochrome);
    --swatch-primary-darkest: var(--dark-accent);
 
    --swatch-text-dark: var(--dark-accent);
    --swatch-text-light: var(--pale-pink-monochrome);
    --swatch-important-text: var(--pale-red-monochrome);
    --barColour: var(--blue-monochrome);
    --linkColour: var(--pale-blue-accent);
 
   --swatch-topmenu-border-color: 64, 0, 0;
 --swatch-menubg-dark-color: 95, 65, 85;
 --barColour: 198, 33, 33 
--swatch-topmenu-bg-color: 94, 10, 10;
 
 --swatch-headerh1-color: var(--pale-pink-monochrome);
    --swatch-headerh2-color: var(--pale-red-monochrome);
    --swatch-topmenu-border-color: var(--red-purple-monochrome);
    --swatch-topmenu-bg-color: var(--dark-purple-monochrome);
 
   --link-color: 57, 79, 107;
  --visited-link-color: 71, 74, 100;
   --hover-link-color: 113, 61, 77;
   --new-page-color: 198, 33, 33;
   --sidebar-links-text: 128, 56, 70;
   --link-color-bright: 184, 38, 40;
 
   --background-gradient-distance: 0rem;
 
 --rating-module-button-color: var(--pale-pink-monochrome);
    --rating-module-button-plus-color: 0, 200, 0;
    --rating-module-button-negative-color: 198, 33, 33;
    --rating-module-button-cancel-color: 180, 180, 180;
    --rating-module-button-credit-color: 128, 56, 70;
    --rating-module-text-color: var(--swatch-menutxt-dark-color);
    --rating-module-text-hover-color: var(--swatch-menutxt-dark-accent));
 
   --gradient-header: linear-gradient(to top,
      rgba(var(--dark-accent)) 0%, rgba(var(--redder-purple-monochrome)) 20%, rgba(var(--red-purple-monochrome)) 40%, rgba(var(--pale-purple-monochrome)) 50%, 
rgba(var(--pale-blue-monochrome)) 60%,
      rgba(var(--blue-monochrome), 0.90) 100%
   );
   --diagonal-stripes: linear-gradient(transparent 0);
}
 
#main-content {
   background-color: 251, 237, 242;
}
 
#skrollr-body {
   background-image:
    radial-gradient(circle, rgba(var(--red-purple-monochrome)) 50%, transparent 0);
   background-repeat: repeat;
   background-size: 0.25em 0.25em;
   width: 100%;
   height: 7.5rem;
}
 
#side-bar .side-block div a img {
   background-color: rbga(var(--pale-pink-monochrome));
}
 
#container {
   background-image: radial-gradient(star, rgb(var(--pale-blue-monochrome), 0.05) 50%, transparent 0);
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
 
/* evie i swear to god you need to use these variables instead of using those !importants 
~ scutoid */
.footnotes-footer {
  --footnotes-footer-bg-color: var(--reddish-pink-monochrome);
  --footnotes-footer-text-color: var(--pale-pink-monochrome);
}
 
a.footnote-footer {
    color: rgb(var(--pale-red-monochrome)) !important;
}
.footnote-footer>a:first-of-type {
    color: rgb(var(--pale-red-monochrome)) !important;
}
 
#page-title {
    border-color: rgb(var(--pale-purple-monochrome));
    color: rgb(var(--dark-accent))!important;
    font-size: 2rem;
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
   text-shadow: .063rem 0.1rem 0.1rem #803846;
}
 
.page-rate-widget-box .rateup,
.page-rate-widget-box .ratedown {
    background-color: rgb(var(--dark-accent));
    border-top: none;
    border-bottom: none;
}
.page-rate-widget-box .rateup a,
.page-rate-widget-box .ratedown a {
    background: transparent;
    color: rgb(var(--pale-blue-monochrome));
}
.page-rate-widget-box .cancel {
    background: transparent;
    background-color: rgb(var(--dark-accent));
    border: none;
}
 
.page-rate-widget-box .cancel a {
    color: rgb(var(--dark-accent));
}
 
span.printuser {
    color: rgb(var(--dark-accent));
}
 
.code {
    border: 2px dashed rgb(var(--pale-red-monochrome));
}
 
blockquote {
   padding: 0.4rem 0.4rem;
   margin: 1rem 0;
   background: rgb(var(--another-pink-shade));
   box-shadow: 0px 0px 3px;
   border: 1.75px solid rgb(var(--redder-pink-monochrome));
   box-sizing: border-box;
}
 
.block-quote {
   padding: 0.4rem 0.4rem;
   margin: 1rem 0;
   background: rgb(var(--another-pink-shade));
   border-radius: 0.1rem;
   box-shadow: 0px 0px 3px;
   border: 1.75px solid rgb(var(--just-pink));
   box-sizing:border-box;
}
 
.styled-quote {
   background-color: rgb(var(--just-pink));
   border-left: 0.5rem solid rgb(var(--dark-accent));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.dark-styled-quote {
   background-color: rgb(var(--even-paler-blue));
   border-left: 0.5rem solid rgb(var(--blue-monochrome));
   color: rgb(var( --pale-pink-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.dark-styled-quote a{
color:rgb(var(--swatch-menubg-dark-color)) ;
}
 
.lightblock {
   background-color: rgb(var(--just-pink));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
.darkblock {
   background-color: rgb(var(--pale-blue-monochrome));
   color: rgb(var( --pale-pink-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
.borderblock {
   background-color: rgb(var(--just-pink));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
   border: solid 0.3rem rgb(var(--dark-accent));
}
 
.logoblock{
padding: 0.01rem 1rem;
box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
margin: 0.5rem 0 0.5rem 0.25rem;
display: block;
position: relative;
background-color: rgb(var(--just-pink));
z-index: 1;
}
 
.logoblock::after{
content: "";
float: center;
border: solid 2px rgb(var(--dark-accent));
background: url(https://i.ibb.co/ZccffPw/logo-for-pr.png)center/50% no-repeat;
opacity: 0.5;
top: 0;
left: 0;
bottom: 0;
right: 0;
position: absolute;
z-index: 0;
pointer-events: none;
}
 
table.wiki-content-table td {
   background-color: rgb(var(--love-pink-smh));
   color: rgb(var(--dark-accent));
}
 
table.wiki-content-table th {
   background-color: rgb(var(--dark-accent));
   color: rgb(var(--pale-pink-monochrome));
}
 
.yui-navset .yui-nav a,
.yui-navset .yui-navset-top .yui-nav a {
    background-color: rgb(var(--pale-pink-monochrome));
}
 
.yui-navset .yui-nav .selected a, .yui-navset .yui-nav .selected a em {
    color: rgb(var(--pale-pink-monochrome));
}
 
.yui-navset .yui-nav, .yui-navset .yui-navset-top .yui-nav   {
    border-color: #5E0A0A;
    border-width:0 0 2px
}
 
#side-bar .side-block {
    background: rgb(var(--loveutoojami));
    color: rgb(var(--red-purple-monochrome));
}
 
#side-bar:hover {
background:  rgb(var(--pale-pink-monochrome));
}
 
 #page-title, #breadcrumbs, #page-content > * {
      animation-name: fadeIn;
      animation-duration: 2s;
      animation-iteration-count: 1;
      animation-timing-function: ease-out;
      animation-fill-mode: backwards;
    }
  }
  #page-title { animation-delay: 1s; }
 
:root {
—anim-position: absolute;
}
 
  @keyframes fadeIn {
    from {
      opacity: 0;
      transform: translate(0,-60px);
    }
    50% {
      opacity: 1;
      transform: translate(0,14px);
    }
 
    to {
      opacity: 1;
      transform: translate(0,0);
    }
  }
```

[- Close](javascript:;)

Footnotes

[1](javascript:;). And here's a footnote!

---

Source: [https://backrooms-wiki.wikidot.com/theme:masked-maidens-theme](https://backrooms-wiki.wikidot.com/theme:masked-maidens-theme)
