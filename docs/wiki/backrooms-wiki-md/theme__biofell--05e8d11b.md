---
title: "Biofell"
source: "https://backrooms-wiki.wikidot.com/theme:biofell"
retrieved_at: "2026-08-23T23:42:13+00:00"
license: CC-BY-SA-3.0
---

# Biofell

rating: +13[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

The eternal growth.

This theme was created by and *WhoYouCallinAPinHead* does not match any existing user name.

To import this theme to your page, put the following text anywhere inside it:

---

[[include :backrooms-wiki:theme:biofell]]

---

# **Examples:**

![Missing alt text.](http://backrooms-sandbox-2.wdfiles.com/local--files/collab%3Awhoyoucallinapinhead-and-snowy-biofell-theme/biofelllogo.png)

Exploring the flesh cave.

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

Fonts Used

Body Font is 'Josefin Sans'  
Header Font is 'Staatliches'

# Title Font is 'Trispace'

Monospaced font is 'PT Sans Narrow'

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

Not so empty after all, huh? :)

> This is a blockquote, created by putting "> " at the start of each line.  
> More text
>
> ---
>
> That's a horizontal rule
>
> > Nested blockquotes[1](javascript:;)

```
[[div class="lightblock"]]
Light Flesh
[[/div]]
```

```
[[div class="styled-quote"]]
Styled Flesh
[[/div]]
```

```
[[div class="darkblock"]]
Dark Flesh
[[/div]]
```

```
[[div class="dark-styled-quote"]]
Dark Styled Flesh
[[/div]]
```

---

| This is a | table |
| --- | --- |
| You should know | how to make these |
| already | |

this text  
is here  
*so you can*  
**see how**  
everything looks  
with different  
formatsand  
otherstuff  
[including links that do not](https://backrooms-wiki.wikidot.com/including-links-that-do-not)  
[And links that do exist!](level-0.md)

---

[[+] Theme Code](javascript:;)

[[-] Close](javascript:;)

```
@import url('https://fonts.googleapis.com/css2?family=Trispace:wght@300&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Staatliches&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Josefin+Sans&display=swap');
@import url('https://fonts.googleapis.com/css2?family=PT+Sans+Narrow&display=swap');
 
@import url(https://backrooms-wiki.wdfiles.com/local--code/component%3Apatch/1);
 
@media screen and (prefers-reduced-motion: no-preference) {
    #page-title, #breadcrumbs, #page-content > * {
      animation-name: fadeIn;
      animation-duration: 1s;
      animation-iteration-count: 1;
      animation-timing-function: ease-out;
      animation-fill-mode: backwards;
    }
  }
  #page-title { animation-delay: 0s; }
 
  @keyframes fadeIn {
    from {
      opacity: 0;
      transform: translate(0,30px);
    }
    to {
      opacity: 1;
      transform: translate(0,0);
    }
  }
 
#account-options {
   background-color: rgb(var(--dark-accent));
   border-color: rgb(var(--black-monochrome));
}
 
#account-options li a:hover {
   color: rgb(var(--bright-accent));
}
 
#side-bar:hover,
#side-bar:active {
   background-color: rgb(var(--swatch-background));
}
 
:root {
   --theme-base: "black-highlighter";
   --theme-id: "liminal";
   --theme-name: "Liminal Theme";
 
   --logo-image: url("http://backrooms-sandbox-2.wdfiles.com/local--files/collab%3Awhoyoucallinapinhead-and-snowy-biofell-theme/biofelllogo.png");
   --header-title: "Project BIOFELL";
   --header-subtitle: "The eternal growth.";
 
   --body-font: 'Josefin Sans';
   --header-font: 'Staatliches';
   --title-font: 'Trispace', serif;
   --mono-font: 'PT Sans Narrow', monospace;
 
   --white-monochrome: 255, 255, 255;
   --pale-gray-monochrome: 34, 34, 34;
   --light-gray-monochrome: 255, 255, 255;
   --gray-monochrome: 34, 34, 34;
   --black-monochrome: 255, 0, 0;
   --bright-accent: 140, 136, 126;
   --medium-accent: 0, 0, 0;
   --dark-accent: 32, 32, 32;
   --pale-accent: 140, 136, 126;
 
   --swatch-headerh1-color: 255, 255, 255;
   --swatch-headerh2-color: 255, 255, 255;
   --swatch-menutxt-light-color: 255, 255, 255;
   --swatch-menubg-medium-color: 34, 34, 34;
   --swatch-tertiary-color: 255, 255, 255;
   --swatch-border-color: 255, 255, 255;
   --swatch-text-general: 255, 255, 255;
   --swatch-text-light: 255, 146, 146;
   --swatch-text-tertiary-color: var(--swatch-menutxt-light-color);
   --swatch-background: 20, 20, 20;
   --header-gradient-color-bottom: 191, 191, 191;
   --swatch-primary: 255, 0, 0;
 
   --swatch-topmenu-border-color: var(--medium-accent);
 
   --link-color: 230, 23, 68;
   --visited-link-color: 190, 0, 28;
   --hover-link-color: 230, 23, 68;
 
   --background-gradient-distance: 0rem;
 
   --gradient-header: linear-gradient(to top,
      rgba(var(--medium-accent)) 0%,
      rgba(var(--medium-accent), 0.90) 100%
   );
   --diagonal-stripes: linear-gradient(transparent 0);
}
 
/*top-bar dropdown links border color fix*/
#top-bar {
    --dropdown-border-color: 255, 0, 0;
}
 
body #content-wrap .yui-navset .yui-nav .selected a {
    color: rgb(var(--white-monochrome)) !important;
}
 
#main-content {
    --tabs-selected-bg: 0,0,0;
    --tabs-selected-outline: 0,0,0;
}
 
#extrac-div-1 {
    position: fixed;
    width: 100vw;
    height: 100vh;
    pointer-events: none;
    background: repeating-linear-gradient(180deg,rgba(0,0,0,0),rgba(0,0,0,.15) 50%,rgba(0,0,0,0));
    background-size: auto 8px;
    opacity: 0.7;
}
 
#extrac-div-2 {
    position: fixed;
    width: 100vw;
    height : 1rem;
    top: 0;
    pointer-events: none;
    background: linear-gradient(to bottom, rgba(229, 34, 80) 0%,rgba(229, 140, 36,1) 50%,rgba(229, 140, 36,0.98) 51%,rgba(229, 140, 36) 100%);
    opacity : .1;
    animation: scanm 6s linear infinite;
}
 
@keyframes scanm {
  0%   { top: -1rem; opacity : .05;}
  25% { top: 50%; opacity: .03;}
  37.5% { top: 75%; opacity: 0.06;}
  50% { top: 100%; opacity: .03;}
  100% { top: 100%;}
}
 
#extrac-div-3 {
    position: fixed;
    width: 100vw;
    height: 100vh;
    pointer-events: none;
    background-image: radial-gradient(circle, rgb(229, 140, 36) 4%, rgb(0,0,0) 45%, rgb(229, 140, 36) 95%);
    opacity: 0.25;
    mix-blend-mode: color-dodge;
    background-repeat: no-repeat;
    background-size: cover;
    z-index: 30;
}
 
#page-content > :nth-child(1) { animation-delay: calc(1 * var(--fade-in-delay)); }
#page-content > :nth-child(2) { animation-delay: calc(2 * var(--fade-in-delay)); }
#page-content > :nth-child(3) { animation-delay: calc(3 * var(--fade-in-delay)); }
#page-content > :nth-child(4) { animation-delay: calc(4 * var(--fade-in-delay)); }
#page-content > :nth-child(5) { animation-delay: calc(5 * var(--fade-in-delay)); }
#page-content > :nth-child(6) { animation-delay: calc(6 * var(--fade-in-delay)); }
#page-content > :nth-child(7) { animation-delay: calc(7 * var(--fade-in-delay)); }
#page-content > :nth-child(8) { animation-delay: calc(8 * var(--fade-in-delay)); }
#page-content > :nth-child(9) { animation-delay: calc(9 * var(--fade-in-delay)); }
#page-content > :nth-child(10) { animation-delay: calc(10 * var(--fade-in-delay)); }
#page-content > :nth-child(11) { animation-delay: calc(11 * var(--fade-in-delay)); }
#page-content > :nth-child(12) { animation-delay: calc(12 * var(--fade-in-delay)); }
#page-content > :nth-child(13) { animation-delay: calc(13 * var(--fade-in-delay)); }
#page-content > :nth-child(14) { animation-delay: calc(14 * var(--fade-in-delay)); }
#page-content > :nth-child(15) { animation-delay: calc(15 * var(--fade-in-delay)); }
#page-content > :nth-child(n+15) { animation-delay: calc(16 * var(--fade-in-delay)); }
 
#skrollr-body {
    width: 100%;
    position: absolute;
    top: 0;
    left: 0;
    background-image: url("http://backrooms-sandbox-2.wdfiles.com/local--files/collab%3Awhoyoucallinapinhead-and-snowy-biofell-theme/gh.png");
 background-repeat: repeat-x;
background-size: inherit;
}
 
#container {
   background-image: radial-gradient(circle, rgb(var(--medium-accent), 0.05) 50%, transparent 0);
   background-size: 0.25em 0.25em;
   background-repeat: repeat;
   background-attachment: fixed;
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
   left: 11rem;
   top: -1rem;
   max-width: calc(100% - 11rem);
   background-image: var(--logo-image);
   background-size: auto 8.5rem;
   background-position: left;
   background-repeat: no-repeat;
   opacity: 1;
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
   text-shadow: .7rem .7rem .9rem #000000;
}
 
a.newpage {
   background: transparent;
   text-decoration: none
}
 
a.newpage {
   color: rgb(var(--newpage-color))
}
 
div.block-center {
   min-width: 30%
}
 
@media only screen and (max-width:768px) {
   div.block-center {
      min-width: 40%
   }
   #header::before {
      left: 1rem;
      top: 0;
      max-width: calc(100% - 1rem);
   }
}
 
blockquote {
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.styled-quote {
   background-color:rgb(var(--gray-monochrome));
   border-left: 0.5rem solid rgba(var(--white-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.titleblock {
        background-color: rgb(var(--dark-gray-monochrome));
        color:rgb(var(--white-monochrome));
        padding: 0.5rem 1rem 0.10rem;
        margin: 1.5rem 0rem 0.5rem 0rem;
        box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.5);
        border: solid rgb(var(--bright-accent)) 2px;
     }
 
     .titlebox{
       color: rgb(var(--dark-gray-monochrome));
       position: relative;
       top: -1.6rem;
       background-color: rgb(var(--bright-accent));
       padding: 0.25rem 1rem;
       line-height: 0.1rem;
     }
 
.dark-styled-quote {
   background-color:rgb(var(--red-monochrome));
   border-left: 0.5rem solid rgba(var(--swatch-headerh1-color));
   color:rgb(var(--white-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
.dark-styled-quote a {
color: rgb(var(--swatch-menubg-medium-color));
}
 
.lightblock {
   background-color:rgb(var(--gray-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
.darkblock {
   background-color:rgb(var(--red-monochrome));
   color:rgb(var(--white-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
.darkblock a {
color: rgb(var(--swatch-menubg-medium-color));
}
 
#side-bar .side-block div a img {
    filter: brightness(100);
}
 
/* ==SD CLASS CODE== */
 
.sd-container {
   --sd-bullets:167,12,10;
}
```

---

[show image creds](javascript:;)

[close](javascript:;)

Logo image created by   
Join the LA rot: [here](index.md)

Footnotes

[1](javascript:;). And here's a footnote!

---

Source: [https://backrooms-wiki.wikidot.com/theme:biofell](https://backrooms-wiki.wikidot.com/theme:biofell)
