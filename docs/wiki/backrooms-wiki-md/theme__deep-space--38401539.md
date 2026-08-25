---
title: "Deep Space"
source: "https://backrooms-wiki.wikidot.com/theme:deep-space"
retrieved_at: "2026-08-23T23:40:05+00:00"
license: CC-BY-SA-3.0
---

# Deep Space

rating: +23[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  
   
Official theme for the Overwatch's deep space exploration branch. Will you explore the depths of the unknown universes of the Backrooms with us?

Theme created by .

To import this theme to your page, put the following text anywhere inside it:

[[include :backrooms-wiki:theme:deep-space]]

# Examples

![Missing alt text.](http://myrandfox.wikidot.com/local--files/theme:deep-space/logopreview)

Commonwealth for Space Exploration, the Overwatch.

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
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Long Tab*](javascript:;)

create all your crazy stuffsies in here

more heckin text in here

AM A ZING

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.  
no  
This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

fuck you, not empty

longo boi

> This is a blockquote, created by putting "> " at the start of each line.  
> More text
>
> ---
>
> That's a horizontal rule
>
> > Nested blockquotes
> >
> > > And another[1](javascript:;)

| This is a | table |
| --- | --- |
| You should know | how to make these |
| already | |

---

The Header & Body font is Zen Kaku Gothic New.  
The Title & Mono font is Raleway.

---

Foot[2](javascript:;)  
this text  
is here  
*so you can*  
**see how**  
everything looks  
with different  
formatsand  
otherstuff  
[including links that do not](https://backrooms-wiki.wikidot.com/including-links-that-do-not)  
[And links that do exist!](level-901.md)  
Special warnings too  
Or lower risk  
Or safe!

---

[[div class="lightblock"]]

[[/div]]

---

[[div class="darkblock"]]

[[/div]]

---

[[div class="lightstyled-quote"]]

[[/div]]

---

[[div class="darkstyled-quote"]]

[[/div]]

---

[[div class="logo-block"]]

[[/div]]

---

[[div class="border-logoblock"]]

[[/div]]

---

[[div class="dark-borderblock"]]

[[/div]]

---

[[div class="light-borderblock"]]

[[/div]]

---

INSERT TEXT  
[[div class="titleblock"]]  
[[span class="titlebox"]]INSERT TEXT[[/span]]

[[/div]]

---

Special thanks to

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
@import url(https://backrooms-wiki.wdfiles.com/local--code/component%3Apatch/1);
 
@import url('https://fonts.googleapis.com/css2?family=Raleway:wght@300&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Zen+Kaku+Gothic+New&display=swap');
/* Myrand */
 
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
 
:root {
   --fade-in-delay: 0.1s;
 
   --theme-base: "black-highlighter";
   --theme-id: "deep-space";
   --theme-name: "Deep Space";
 
   --logo-image: url("http://myrandfox.wikidot.com/local--files/theme:deep-space/deepspace");
   --header-title: "Commonwealth of Space";
   --header-subtitle: "Into the unknown.";
 
   --body-font: 'Zen Kaku Gothic New', sans-serif;
   --header-font: 'Zen Kaku Gothic New', sans-serif;
   --title-font: 'Raleway', sans-serif;
   --mono-font: 'Raleway', sans-serif;
 
   --white-monochrome: 255, 255, 255;
    --dark-gray-monochrome: 48,48,52;
   --pale-gray-monochrome: 255, 255, 255;
   --light-gray-monochrome: 160, 160, 160;
   --gray-monochrome: 72, 69, 60;
   --black-monochrome: 30, 30, 30;
   --bright-accent: 0, 210, 255;
   --medium-accent: 0, 210, 255;
   --dark-accent: 140, 136, 126;
   --pale-accent: 140, 136, 126;
 
     /* Primary Theme Colors */
    --swatch-background: var(--black-monochrome);
    --swatch-primary: var(--bright-accent);
    --swatch-primary-darker: var(--medium-accent);
    --swatch-primary-darkest: var(--black-monochrome);
    --swatch-secondary-color: var(--dark-gray-monochrome);
 
    /* Primary Text Colors */
    --swatch-text-dark: var(--white-monochrome);
    --swatch-text-light: var(--brightest-accent);
    --swatch-important-text: var(--brightest-accent);
    --barColour: var(--very-light-gray-monochrome);
    --linkColour: var(--pale-accent);
 
    /* Primary Menu Colors */
    --swatch-menubg-color: var(--black-monochrome);
    --swatch-menubg-light-color: var(--dark-gray-monochrome);
    --swatch-menubg-medium-color: var(--medium-accent);
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
    --visited-link-color: var(--medium-accent);
    --hover-link-color: var(--bright-accent);
    --sidebar-links-text: var(--swatch-menutxt-dark-color);
    --link-color-bright: var(--medium-accent);
 
/* Rating Module Colors */
    --rating-module-button-color: var(--bright-accent);
    --rating-module-text-color: var(--white-monochrome);
    --rating-module-text-hover-color: var(--swatch-menutxt-light-color);
 
/* Header Gradients */
--gradient-header: none;
--diagonal-stripes: none;
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
   background-image:
    radial-gradient(circle, rgb(var(--black-monochrome)) 50%, transparent 0);
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
 
blockquote {
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.lightstyled-quote {
   background-color:rgb(var(--bright-accent));
   border-left: 0.5rem solid rgba(var(--dark-gray-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.darkstyled-quote {
   background-color:rgb(var(--dark-gray-monochrome));
   border-left: 0.5rem solid rgba(var(--bright-accent));
   color:rgb(var(--white-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.darkstyled-quote a{
color: rgb(var(--swatch-menubg-medium-color));
}
 
.lightblock {
   background-color:rgb(var(--bright-accent));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
.darkblock {
   background-color:rgb(var(--dark-gray-monochrome));
   color:rgb(var(--white-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
.dark-borderblock {
    background-color:rgb(var(--dark-gray-monochrome));
    color:rgb(255, 255, 255);
    padding: 0.01rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
    border: solid 0.3rem rgb(var(--bright-accent));
 }
 
 .light-borderblock {
    background-color:rgb(var(--bright-accent));
    padding: 0.01rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
    border: solid 0.3rem rgb(var(--dark-gray-monochrome));
 }
 .border-logoblock{
    padding: 0.01rem 1rem;
    box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
    color:rgb(255, 255, 255);
    margin: 0.5rem 0 0.5rem 0.25rem;
    display: block;
    position: relative;
    background-color: rgb(var(--dark-gray-monochrome));
     border: solid 0.3rem rgb(var(--bright-accent));
    }
 
    .border-logoblock::after{
    content: "";
    float: center;
    border: solid 2px #0000;
    background: url(http://myrandfox.wikidot.com/local--files/theme:deep-space/deepspace) center/25% no-repeat;
    opacity: 0.25;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0;
    position: absolute;
    z-index: 1;
    pointer-events: none;
    }
 
    .logoblock{
    padding: 0.01rem 1rem;
    color:rgb(255, 255, 255);
    box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
    margin: 0.5rem 0 0.5rem 0.25rem;
    display: block;
    position: relative;
    background-color: rgb(var(--dark-gray-monochrome));
    }
 
    .logoblock::after{
    content: "";
    float: center;
    border: solid 2px #0000;
    background: url(http://myrandfox.wikidot.com/local--files/theme:deep-space/deepspace) center/25% no-repeat;
    opacity: 0.25;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0;
    position: absolute;
    z-index: 1;
    pointer-events: none;
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
 
.borderblock {
    background-color:rgb(var(--dark-gray-monochrome));
    color:rgb(255, 255, 255);
    padding: 0.01rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
    border: solid 0.3rem rgb(var(--bright-accent));
 }
 
.darkblock a {
color: rgb(var(--swatch-menubg-medium-color));
}
}
 
html body #content-wrap .yui-navset .yui-nav .selected a {
    color: rgb(var(--white-monochrome)) !important;
}
 
#header h1 a::before, #header h2 span::before {
    color: rgb(var(--white-monochrome));
}
 
/* ==SD CLASS CODE== */
 
.sd-container {
   --sd-text:48,48,52;
   --sd-border:var(--medium-accent);
   --sd-bullets:var(--medium-accent);
   --sd-symbol:48,48,52;
   --sd-border-secondary:var(--sd-border);
   --sd-border-deadzone:var(--sd-border);
}
```

[- Close](javascript:;)

Footnotes

[1](javascript:;). And here's a footnote!

[2](javascript:;). note

---

Source: [https://backrooms-wiki.wikidot.com/theme:deep-space](https://backrooms-wiki.wikidot.com/theme:deep-space)
