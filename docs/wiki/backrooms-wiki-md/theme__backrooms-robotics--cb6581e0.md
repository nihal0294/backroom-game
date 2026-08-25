---
title: "Backrooms Robotics Theme"
source: "https://backrooms-wiki.wikidot.com/theme:backrooms-robotics"
retrieved_at: "2026-08-23T23:42:28+00:00"
license: CC-BY-SA-3.0
---

# Backrooms Robotics Theme

rating: +24[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  
This theme was created by and is based on the [U.E.C. Theme](theme__uec--8ff42e5c.md), which was created by . To import this theme to your page, put the following text anywhere inside it:

[[include :backrooms-wiki:theme:backrooms-robotics]]

![Missing alt text.](https://backrooms-wiki.wdfiles.com/local--files/theme:backrooms-robotics/robo.jpg)

Robot

# Examples:

A horizontal rule can be created with 5 hyphens "-----" and extends across the whole page if it's not placed inside anything (eg a blockquote). The lines separating sections of this document are horizontal rules.

---

Titles can be created by putting between one and six plus "+" at the start of the line

[Titles](javascript:;)

[Titles](javascript:;)

# First Title

## Second Title

### Third Title

#### Fourth Title

##### Fifth Title

###### Sixth Title

  

[SD Classes](javascript:;)

[SD Classes](javascript:;)

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

Title Test  
[[div class="titleblock"]]  
[[span class="titlebox"]]Title Test[[/span]]

[[/div]]

[[div class="styled-quote"]]

[[/div]]

[[div class="lightblock"]]

[[/div]]

You are a cat.  
**You are a cat.**  
*You are a cat.*  
You are a cat.  
You are a cat.  
You are a cat

---

The header and title font used is Gemunu Libre.  
The body font used is Proxima Nova.  
The monospace font used is Fantasque Sans Mono.

---

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
@import url('https://fonts.googleapis.com/css2?family=Gemunu+Libre:wght@800&display=swap');
 
@import url(https://backrooms-wiki.wdfiles.com/local--code/component%3Apatch/1);
 
:root {
   --theme-base: "black-highlighter";
   --theme-id: "backrooms-robotics";
   --theme-name: "Backrooms Robotics Theme";
 
   --main-accent: 173, 51, 255;
   --text-color: 231, 222, 237;
   --background-color: 67, 60, 72;
   --box-color: 23, 21, 25;
 
   --white-monochrome: var(--text-color);
   --light-gray-monochrome: var(--text-color);
   --gray-monochrome: var(--background-color);
   --black-monochrome: var(--box-color);
   --medium-accent: var(--background-color);
   --dark-gray-monochrome: var(--box-color);
   --bright-accent: var(--main-accent);
   --dark-accent: var(--main-accent);
   --pale-accent: var(--main-accent);
 
   --swatch-topmenu-border-color: var(--main-accent);
   --swatch-topmenu-bg-color: var(--medium-accent);
   --swatch-menubg-color: var(--medium-accent);
   --swatch-border-color: var(--bright-accent);
 
   --swatch-text-dark: var(--white-monochrome);
   --swatch-text-light: var(--white-monochrome);
   --swatch-background: var(--medium-accent);
   --swatch-menutxt-dark-color: var(--white-monochrome);
   --swatch-primary-darker: var(--pale-accent);
   --swatch-secondary-color: var(--black-monochrome);
 
   --link-color: var(--main-accent);
   --hover-link-color: var(--main-accent);
   --visited-link-color: var(--main-accent);
 
   --rating-module-button-plus-color: var(--medium-accent);
   --rating-module-button-negative-color: var(--medium-accent);
   --rating-module-button-cancel-color: var(--medium-accent);
   --rating-module-button-credit-color: var(--medium-accent);
 
   --cecs-accent: var(--main-accent) !important;
   --cecs-dark: var(--text-color) !important;
   --cecs-light: var(--box-color) !important;
 
   --logo-image: none;
   --header-title: "Backrooms Robotics";
   --header-subtitle: "Welcome to the world of tomorrow, for the people of today.";
 
   --header-font: 'Gemunu Libre', monospace;
   --title-font: 'Gemunu Libre', monospace;
 
   --background-gradient-distance: 0rem;
   --gradient-topmenu: none;
   --diagonal-stripes: linear-gradient(transparent 0);
   --gradient-header: none;
 
    --header-height-on-desktop: 9rem;
 
 /* SCUTOID LOOK HERE */
   --sd-border: var(--main-accent);
   --sd-fill: var(--dark-gray-monochrome);
}
 
#top-bar {
    --dropdown-border-color: var(--main-accent);
}
 
/*login stuff*/
#login-status{
   color: rgb(var(--white-monochrome));
}
 
#login-status a#my-account {
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
#page-content table.wiki-content-table th {
background-color: rgb(var(--dark-gray-monochrome));
border: 2px solid rgb(var(--pale-accent)) !important;
}
 
#page-content table.wiki-content-table td {
border: 2px solid rgb(var(--pale-accent)) !important;
}
 
/*misc*/
 #page-title::after,
 .meta-title::after,
 #page-title::before,
 .meta-title::before {
        background: rgb(var(--swatch-primary));
}
 
h1, #page-title {
   font-size: 225%;
   padding: 0;
}
 
#side-bar div.menu-item {
   border-color: rgb(var(--bright-accent));
}
 
#side-bar .side-block div a img {
   filter: grayscale(100%);
}
 
.footnotes-footer {
    background-color: rgb(var(--dark-gray-monochrome));
}
 
#page-content .scp-image-block { box-shadow: none;}
 
.scp-image-block .scp-image-caption {
    color: rgb(var(--white-monochrome));
    background-color: rgb(var(--dark-gray-monochrome));
    border: none;
    border-left: 0.2rem solid rgba(var(--pale-accent));
    border-right: 0.2rem solid rgba(var(--pale-accent));
}
 
#content-wrap #page-content .page-rate-widget-box {
    background: none;
    border: none;
    background-color: rgb(var(--dark-gray-monochrome));
    border-left: 0.2rem solid rgba(var(--pale-accent));
}
 
.code {
    background-color: rgb(var(--dark-gray-monochrome));
}
 
/*hexagon header gradient*/
#skrollr-body {
     background-size: 12.5rem;
   background-color: rgb(var(--main-accent));
   background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 304 304' width='304' height='304'%3E%3Cpath fill='%23171519' fill-opacity='1' d='M44.1 224a5 5 0 1 1 0 2H0v-2h44.1zm160 48a5 5 0 1 1 0 2H82v-2h122.1zm57.8-46a5 5 0 1 1 0-2H304v2h-42.1zm0 16a5 5 0 1 1 0-2H304v2h-42.1zm6.2-114a5 5 0 1 1 0 2h-86.2a5 5 0 1 1 0-2h86.2zm-256-48a5 5 0 1 1 0 2H0v-2h12.1zm185.8 34a5 5 0 1 1 0-2h86.2a5 5 0 1 1 0 2h-86.2zM258 12.1a5 5 0 1 1-2 0V0h2v12.1zm-64 208a5 5 0 1 1-2 0v-54.2a5 5 0 1 1 2 0v54.2zm48-198.2V80h62v2h-64V21.9a5 5 0 1 1 2 0zm16 16V64h46v2h-48V37.9a5 5 0 1 1 2 0zm-128 96V208h16v12.1a5 5 0 1 1-2 0V210h-16v-76.1a5 5 0 1 1 2 0zm-5.9-21.9a5 5 0 1 1 0 2H114v48H85.9a5 5 0 1 1 0-2H112v-48h12.1zm-6.2 130a5 5 0 1 1 0-2H176v-74.1a5 5 0 1 1 2 0V242h-60.1zm-16-64a5 5 0 1 1 0-2H114v48h10.1a5 5 0 1 1 0 2H112v-48h-10.1zM66 284.1a5 5 0 1 1-2 0V274H50v30h-2v-32h18v12.1zM236.1 176a5 5 0 1 1 0 2H226v94h48v32h-2v-30h-48v-98h12.1zm25.8-30a5 5 0 1 1 0-2H274v44.1a5 5 0 1 1-2 0V146h-10.1zm-64 96a5 5 0 1 1 0-2H208v-80h16v-14h-42.1a5 5 0 1 1 0-2H226v18h-16v80h-12.1zm86.2-210a5 5 0 1 1 0 2H272V0h2v32h10.1zM98 101.9V146H53.9a5 5 0 1 1 0-2H96v-42.1a5 5 0 1 1 2 0zM53.9 34a5 5 0 1 1 0-2H80V0h2v34H53.9zm60.1 3.9V66H82v64H69.9a5 5 0 1 1 0-2H80V64h32V37.9a5 5 0 1 1 2 0zM101.9 82a5 5 0 1 1 0-2H128V37.9a5 5 0 1 1 2 0V82h-28.1zm16-64a5 5 0 1 1 0-2H146v44.1a5 5 0 1 1-2 0V18h-26.1zm102.2 270a5 5 0 1 1 0 2H98v14h-2v-16h124.1zM242 149.9V160h16v34h-16v62h48v48h-2v-46h-48v-66h16v-30h-16v-12.1a5 5 0 1 1 2 0zM53.9 18a5 5 0 1 1 0-2H64V2H48V0h18v18H53.9zm112 32a5 5 0 1 1 0-2H192V0h50v2h-48v48h-28.1zm-48-48a5 5 0 0 1-9.8-2h2.07a3 3 0 1 0 5.66 0H178v34h-18V21.9a5 5 0 1 1 2 0V32h14V2h-58.1zm0 96a5 5 0 1 1 0-2H137l32-32h39V21.9a5 5 0 1 1 2 0V66h-40.17l-32 32H117.9zm28.1 90.1a5 5 0 1 1-2 0v-76.51L175.59 80H224V21.9a5 5 0 1 1 2 0V82h-49.59L146 112.41v75.69zm16 32a5 5 0 1 1-2 0v-99.51L184.59 96H300.1a5 5 0 0 1 3.9-3.9v2.07a3 3 0 0 0 0 5.66v2.07a5 5 0 0 1-3.9-3.9H185.41L162 121.41v98.69zm-144-64a5 5 0 1 1-2 0v-3.51l48-48V48h32V0h2v50H66v55.41l-48 48v2.69zM50 53.9v43.51l-48 48V208h26.1a5 5 0 1 1 0 2H0v-65.41l48-48V53.9a5 5 0 1 1 2 0zm-16 16V89.41l-34 34v-2.82l32-32V69.9a5 5 0 1 1 2 0zM12.1 32a5 5 0 1 1 0 2H9.41L0 43.41V40.6L8.59 32h3.51zm265.8 18a5 5 0 1 1 0-2h18.69l7.41-7.41v2.82L297.41 50H277.9zm-16 160a5 5 0 1 1 0-2H288v-71.41l16-16v2.82l-14 14V210h-28.1zm-208 32a5 5 0 1 1 0-2H64v-22.59L40.59 194H21.9a5 5 0 1 1 0-2H41.41L66 216.59V242H53.9zm150.2 14a5 5 0 1 1 0 2H96v-56.6L56.6 162H37.9a5 5 0 1 1 0-2h19.5L98 200.6V256h106.1zm-150.2 2a5 5 0 1 1 0-2H80v-46.59L48.59 178H21.9a5 5 0 1 1 0-2H49.41L82 208.59V258H53.9zM34 39.8v1.61L9.41 66H0v-2h8.59L32 40.59V0h2v39.8zM2 300.1a5 5 0 0 1 3.9 3.9H3.83A3 3 0 0 0 0 302.17V256h18v48h-2v-46H2v42.1zM34 241v63h-2v-62H0v-2h34v1zM17 18H0v-2h16V0h2v18h-1zm273-2h14v2h-16V0h2v16zm-32 273v15h-2v-14h-14v14h-2v-16h18v1zM0 92.1A5.02 5.02 0 0 1 6 97a5 5 0 0 1-6 4.9v-2.07a3 3 0 1 0 0-5.66V92.1zM80 272h2v32h-2v-32zm37.9 32h-2.07a3 3 0 0 0-5.66 0h-2.07a5 5 0 0 1 9.8 0zM5.9 0A5.02 5.02 0 0 1 0 5.9V3.83A3 3 0 0 0 3.83 0H5.9zm294.2 0h2.07A3 3 0 0 0 304 3.83V5.9a5 5 0 0 1-3.9-5.9zm3.9 300.1v2.07a3 3 0 0 0-1.83 1.83h-2.07a5 5 0 0 1 3.9-3.9zM97 100a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm0-16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm16 16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm16 16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm0 16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-48 32a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm16 16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm32 48a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-16 16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm32-16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm0-32a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm16 32a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm32 16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm0-16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-16-64a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm16 0a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm16 96a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm0 16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm16 16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm16-144a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm0 32a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm16-32a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm16-16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-96 0a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm0 16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm16-32a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm96 0a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-16-64a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm16-16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-32 0a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm0-16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-16 0a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-16 0a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-16 0a3 3 0 1 0 0-6 3 3 0 0 0 0 6zM49 36a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-32 0a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm32 16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zM33 68a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm16-48a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm0 240a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm16 32a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-16-64a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm0 16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-16-32a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm80-176a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm16 0a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-16-16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm32 48a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm16-16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm0-32a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm112 176a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-16 16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm0 16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm0 16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zM17 180a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm0 16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm0-32a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm16 0a3 3 0 1 0 0-6 3 3 0 0 0 0 6zM17 84a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm32 64a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm16-16a3 3 0 1 0 0-6 3 3 0 0 0 0 6z'%3E%3C/path%3E%3C/svg%3E");
  height: 11rem;
}
 
/*blend gradient*/
#container {
   background: linear-gradient(180deg, rgba(0,0,0,0) 8.95rem, rgb(var(--main-accent)) 8.95rem, rgb(var(--box-color)) 9.05rem, rgb(var(--box-color)) 10.8rem,  rgb(var(--main-accent)) 10.9rem, rgb(var(--main-accent)) 11rem, rgb(var(--medium-accent)) 11.1rem);
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
   top: 1rem;
   margin: 0;
   width: 100%;
   display: flex;
   z-index: 0;
}
 
#header h2, #header h2 span, #header h2 span::before {
   position: absolute;
   top: 2rem;
   margin: 0;
   width: 100%;
   display: flex;
}
 
#header h1 a::before, #header h2 span::before {
   text-shadow: .063rem 0.1rem 0.1rem #0c0c0c;
   letter-spacing: 0.1rem;
}
 
#header h1 a::before{
   letter-spacing: 0.1rem;
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
   background: none;
   border-top: solid 2px rgb(var(--pale-accent));
}
 
blockquote, div.blockquote {
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
   background-color: rgb(var(--dark-gray-monochrome));
   border: none;
   border-left: solid 2px rgb(var(--pale-accent));
}
 
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
 
/* content background color */
#content-wrap #page-content .yui-navset .yui-content {
    background-color: rgba(var(--main-accent), 0.2);
}
 
/* content border */
#content-wrap #page-content .yui-navset .yui-content,
#content-wrap #page-content .yui-navset .yui-navset-top .yui-content {
    border: 2px solid rgb(var(--main-accent));
}
 
form#edit-page-form:not(.data-form) {
    background-color: rgb(var(--background-color));
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
 
   #container {
      background: linear-gradient(180deg, rgba(0,0,0,0) 7.45rem, rgb(var(--main-accent)) 7.45rem, rgb(var(--box-color)) 7.55rem, rgb(var(--box-color)) 10.45rem,  rgb(var(--main-accent)) 10.55rem, rgb(var(--main-accent)) 10.65rem, rgb(var(--medium-accent)) 10.75rem);
   }
}
 
.styled-quote, .dark-styled-quote {
   background-color:rgb(var(--dark-gray-monochrome));
   border-left: 0.5rem solid rgba(var(--pale-accent));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.lightblock, .darkblock {
   background-color:rgb(var(--dark-gray-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
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
 
#search-top-box-input:hover,
#search-top-box-input:focus {
    background: rgb(var(--medium-accent));
}
 
/* ==SD CLASS COLOURS== */
 
.sd-container {
   --sd-border:173, 51, 255;
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
   background-image: url("data:image/svg+xml,%3Csvg version='1.1' id='Layer_1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' x='0px' y='0px' viewBox='0 0 300.9 284.5' style='enable-background:new 0 0 300.9 284.5;' xml:space='preserve'%3E%3Cstyle type='text/css'%3E .st0%7Bfill:%239417e8;%7D .st1%7Bfill:%239417e8;%7D%0A%3C/style%3E%3Cg%3E%3Cpolygon class='st1' points='73.4,32.6 0,105.4 13.6,105.4 86.4,32.6 '/%3E%3Cpolygon class='st1' points='26.5,105.4 40.1,105.4 112.9,32.6 99.3,32.6 '/%3E%3C/g%3E%3Cpolyline class='st1' points='287.3,105.4 214.5,32.6 227.5,32.6 287.3,91.9 '/%3E%3Cpolygon class='st1' points='274.4,105.4 260.8,105.4 188,32.6 201.6,32.6 '/%3E%3C/svg%3E") !important;
}
 
.top-box.class-unknown .header-diamond { filter: none !important; }
.top-box.class-unknown:before, .top-box.class-unknown .header-diamond .diamond-pattern{ opacity: 0.15 !important; }
 
.top-box .header-diamond .diamond-image {
   filter: brightness(0%) invert(100%);
}
 
.top-box.class-0 {
   background: rgb(var(--sd-fill)) !important;
}
 
.header-diamond .diamond-color.class-0 {
   background: rgb(var(--sd-fill)) !important;
}
 
.top-box.class-1, .top-box.class-2 {
   background: rgb(var(--sd-fill)) !important;
}
 
.header-diamond .diamond-color.class-1,
.header-diamond .diamond-color.class-2 {
   background: rgb(var(--sd-fill)) !important;
}
 
.top-box.class-3, .top-box.class-4 {
   background: rgb(var(--sd-fill)) !important;
}
 
.header-diamond .diamond-color.class-3,
.header-diamond .diamond-color.class-4 {
   background: rgb(var(--sd-fill)) !important;
}
 
.top-box.class-5, .top-box.class-unknown {
   background: rgb(var(--sd-fill)) !important;
}
 
.header-diamond .diamond-color.class-5,
.header-diamond .diamond-color.class-unknown {
   background: rgb(var(--sd-fill)) !important;
}
```

[- Close](javascript:;)

[Author/Licensing](javascript:;)

[Hide author](javascript:;)

**Author:**  
  
[Author Page](cutthebirch.md)

**Images:**  
[Circuit Board](index.md) by Steve Schoger is licensed under CC BY 4.0

Footnotes

[1](javascript:;). And here's a footnote!

---

Source: [https://backrooms-wiki.wikidot.com/theme:backrooms-robotics](https://backrooms-wiki.wikidot.com/theme:backrooms-robotics)
