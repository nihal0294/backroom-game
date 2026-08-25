---
title: "Amor Incrementum Theme"
source: "https://backrooms-wiki.wikidot.com/theme:amor-incrementum"
retrieved_at: "2026-08-23T23:41:39+00:00"
license: CC-BY-SA-3.0
---

# Amor Incrementum Theme

rating: +15[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

This theme was created by and .

To import this theme to your page, put the following text anywhere inside it:

[[include :backrooms-wiki:theme:amor-incrementum]]

# Examples

[![Missing alt text.](https://backrooms-wiki.wdfiles.com/local--resized-images/theme:amor-incrementum/Replacement/medium.jpg)](https://backrooms-wiki.wdfiles.com/local--files/theme:amor-incrementum/Replacement)

NOT the Amor Incrementum logo.

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

  

[+ SD Classes](javascript:;)

[- SD Classes](javascript:;)

SURVIVAL DIFFICULTY:

Class 0

- {$one}
- {$two}
- {$three}

SURVIVAL DIFFICULTY:

Class 1

- {$one}
- {$two}
- {$three}

SURVIVAL DIFFICULTY:

Class 2

- {$one}
- {$two}
- {$three}

SURVIVAL DIFFICULTY:

Class 3

- {$one}
- {$two}
- {$three}

SURVIVAL DIFFICULTY:

Class 4

- {$one}
- {$two}
- {$three}

SURVIVAL DIFFICULTY:

Class 5

- {$one}
- {$two}
- {$three}

SURVIVAL DIFFICULTY:

Class unknown

- {$one}
- {$two}
- {$three}

  
 

- [*Tabulator*](javascript:;)
- [*Tabulation*](javascript:;)
- [*Long Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)

Just use your imagination and pretend there's Lorem Ipsum here.

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

kono dio da

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

The Body font is Lora.  
The Header font is Forum.  
The Title font is Nothing You Could Do.  
The monospace font used is Xanh Mono.

---

Foot[2](javascript:;)

[[div class="lightblock"]]

[[/div]]

[[div class="styled-quote"]]

[[/div]]

[[div class="darkblock"]]

[[/div]]

[[div class="dark-styled-quote"]]

[[/div]]!

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
@import url(https://nuliminal-test.wdfiles.com/local--code/component%3Apatch/1);
 
@import url('https://fonts.googleapis.com/css2?family=Xanh+Mono&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Lora&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Forum&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Nothing+You+Could+Do&display=swap');
 
:root {
   --theme-base: "black-highlighter";
   --theme-id: "amor-incrementum";
   --theme-name: "Amor Incrementum Theme";
 
   --logo-image: url("");
   --header-title: "Amor Incrementum";
   --header-subtitle: "Join us in nature's caressing hold.";
 
   --body-font: 'Lora', serif;
   --header-font: 'Forum', cursive;
   --title-font: 'Nothing You Could Do', cursive;
   --mono-font: 'Xanh Mono', monospace;
 
   --dark-green: 100, 138, 88;
   --darker-green: 81, 110, 72;
   --light-green: 163, 190, 134;
   --lighter-green: 231, 249, 207;
   --brown: 77, 69, 59;
   --alt-green: 181, 203, 158;
 
   --white-monochrome: var(--lighter-green);
   --pale-gray-monochrome: var(--light-green);
   --light-gray-monochrome: var(--brown);
   --gray-monochrome: var(--dark-green);
   --black-monochrome: var(--brown);
   --bright-accent: var(--brown);
   --medium-accent: var(--dark-green);
   --dark-accent: var(--brown);
   --pale-accent: var(--brown);
 
   --swatch-topmenu-border-color: var(--medium-accent);
   --swatch-menubg-dark-color: var(--medium-accent);
 
   --link-color: var(--dark-green);
   --hover-link-color: var(--dark-green);
   --visited-link-color: var(--dark-green);
 
   --rating-module-button-plus-color: var(--darker-green);
   --rating-module-button-negative-color: var(--darker-green);
   --rating-module-button-cancel-color: var(--darker-green);
   --rating-module-button-credit-color: var(--darker-green);
 
   --background-gradient-distance: 0rem;
 
   --gradient-header: linear-gradient(to top,
      rgba(var(--medium-accent)) 0%,
      rgba(var(--medium-accent), 0.90) 100%
   );
   --diagonal-stripes: linear-gradient(transparent 0);
 
/* SCUTOID LOOK HERE */
   --sd-border: var(--brown);
   --sd-fill: var(--dark-green);
}
 
#skrollr-body {
    width: 100%;
    position: absolute;
    top: 0;
    left: 0;
    background-image: url("http://backrooms-sandbox-2.wikidot.com/local--files/captaiin-part-4-diamond-is-unbreakable/amor%20incrementum");
    background-repeat: repeat-1;
    background-size:  inherit;
    background-blend-mode: luminosity;
    background-color: rgba(var(--light-green), 0.75);
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
 
div.yui-navset div.yui-content {
    background: rgb(var(--alt-green));
}
 
div.yui-navset ul.yui-nav a,
div.yui-navset div.yui-navset-top ul.yui-nav a {
    background: rgb(var(--light-green));
    color: rgb(var(--brown));
}
 
div.yui-navset ul.yui-nav a:hover,
div.yui-navset ul.yui-nav a:focus {
    background: rgb(var(--alt-green));
    color: rgb(var(--brown));
}
 
div.yui-navset ul.yui-nav .selected a,
div.yui-navset ul.yui-nav .selected a:focus,
div.yui-navset ul.yui-nav .selected a:hover {
    background: rgb(var(--dark-green));
    color: rgb(var(--light-green));
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
 
blockquote, div.blockquote {
    border: 2px double rgba(var(--dark-green));
    background: rgba(var(--light-green));
    box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.styled-quote {
   background-color:rgb(var(--pale-gray-monochrome));
   border-left: 0.5rem solid rgba(var(--gray-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.dark-styled-quote {
   background-color:rgb(var(--gray-monochrome));
   border-left: 0.5rem solid rgba(var(--pale-gray-monochrome));
   color:rgb(var(--white-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
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
 
.darkblock, .dark-styled-quote {
      --link-color: var(--light-green);
   --hover-link-color: var(--light-green);
   --visited-link-color: var(--light-green);
}
 
hr {
   background-color: rgba(var(--brown), 0.6);
}
 
.footnotes-footer {
   background-color: rgb(var(--light-green));
}
 
#search-top-box input.empty:hover {
     color: rgb(var(--alt-green))
}
 
blockquote, .blockquote, .styled-quote, .footnotes-footer {
   --link-color: var(--darker-green);
   --hover-link-color: var(--darker-green);
   --visited-link-color: var(--darker-green);
}
 
code, .code {
   background-color: rgb(var(--alt-green));
}
 
#login-status {
   color: rgb(var(--lighter-green));
}
 
/* ==SD CLASS CODE== */
 
.sd-container {
   --sd-border:69,61,51;
   --sd-symbol:255,255,255;
   --sd-text:255,255,255;
}
 
.top-box {
   border-color: rgb(var(--sd-border)) !important;
}
 
.bottom-box ul li {
   color: rgb(var(--sd-border)) !important;
}
 
.bottom-box ul li:before {
   background: rgb(var(--sd-border)) !important;
}
 
.top-box .gradient-box {
  background: linear-gradient(90deg, rgba(var(--sd-border),1) 0%, rgba(var(--sd-border),0) 36%) !important;
}
 
.header-diamond {
   background-image: url("data:image/svg+xml,%3Csvg version='1.1' id='Layer_1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' x='0px' y='0px' viewBox='0 0 300.9 284.5' style='enable-background:new 0 0 300.9 284.5;' xml:space='preserve'%3E%3Cstyle type='text/css'%3E .st0%7Bfill:%23FFC90E;%7D .st1%7Bfill:%234D453B;%7D%0A%3C/style%3E%3Cg%3E%3Cpolygon class='st1' points='73.4,32.6 0,105.4 13.6,105.4 86.4,32.6 '/%3E%3Cpolygon class='st1' points='26.5,105.4 40.1,105.4 112.9,32.6 99.3,32.6 '/%3E%3C/g%3E%3Cpolyline class='st1' points='287.3,105.4 214.5,32.6 227.5,32.6 287.3,91.9 '/%3E%3Cpolygon class='st1' points='274.4,105.4 260.8,105.4 188,32.6 201.6,32.6 '/%3E%3C/svg%3E") !important;
}
 
.top-box.class-unknown .header-diamond { filter: none !important; }
.top-box.class-unknown:before, .top-box.class-unknown .header-diamond .diamond-pattern{ opacity: 0.15 !important; }
 
.top-box .header-diamond .diamond-image {
   filter: brightness(0%) invert(100%);
}
 
.top-box.class-0 {
   background: rgb(var(--alt-green)) !important;
}
 
.header-diamond .diamond-color.class-0 {
   background: rgb(var(--alt-green)) !important;
}
 
.top-box.class-1, .top-box.class-2 {
   background: rgb(var(--light-green)) !important;
}
 
.header-diamond .diamond-color.class-1,
.header-diamond .diamond-color.class-2 {
   background: rgb(var(--light-green)) !important;
}
 
.top-box.class-3, .top-box.class-4 {
   background: rgb(var(--dark-green)) !important;
}
 
.header-diamond .diamond-color.class-3,
.header-diamond .diamond-color.class-4 {
   background: rgb(var(--dark-green)) !important;
}
 
.top-box.class-5, .top-box.class-unknown {
   background: rgb(var(--darker-green)) !important;
}
 
.header-diamond .diamond-color.class-5,
.header-diamond .diamond-color.class-unknown {
   background: rgb(var(--darker-green)) !important;
}
```

[- Close](javascript:;)

Footnotes

[1](javascript:;). And here's a footnote!

[2](javascript:;). note

---

Source: [https://backrooms-wiki.wikidot.com/theme:amor-incrementum](https://backrooms-wiki.wikidot.com/theme:amor-incrementum)
