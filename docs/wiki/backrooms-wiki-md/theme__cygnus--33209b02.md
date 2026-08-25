---
title: "Cygnus Archive Theme"
source: "https://backrooms-wiki.wikidot.com/theme:cygnus"
retrieved_at: "2026-08-23T23:40:13+00:00"
license: CC-BY-SA-3.0
---

# Cygnus Archive Theme

This theme was made for articles relating to the [Cygnus Archive](level-906.md), [Blanche](entity-140.md), [Tom](tom-von-haderach.md), and other surrounding lore.

To import this theme to your page, put the following text anywhere inside it:

[[include :backrooms-wiki:theme:cygnus]]

rating: +34[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

# Hey, look, a theme!

![Missing alt text.](http://backrooms-wiki.wikidot.com/local--files/theme:cygnus/blanchelamborghini.png)

Credit to [Captaiin](captaiins-swag-author-page.md) for this masterpiece

A horizontal rule can be created with 5 hyphens "-----" and extends across the whole page if it's not placed inside anything (ex: a blockquote). The lines separating sections of this page are horizontal rules.

---

Titles can be created by putting between one and six "+" at the start of the line

[+ Titles](javascript:;)

[- Titles](javascript:;)

# First Title

## Second Title

### Third Title

#### Fourth Title

##### Fifth Title

###### Sixth Title

---

- [*Tabview*](javascript:;)
- [*TabTwo*](javascript:;)
- [*Long Boi*](javascript:;)
- [*At any given moment, beliefs shape worlds far beyond what truth or fact could do.*](javascript:;)
- [*Example Tab*](javascript:;)
- [*Another Tab*](javascript:;)
- [*And Another Tab*](javascript:;)
- [*One More Tab*](javascript:;)

This is a tab view. Really useful!

Hey look, there's more text here.

poggies

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

Wow, that sure was a lot of text.

woah das a big tab

light!

dark!

> 3
>
> > 2
> >
> > > 1
> > >
> > > > Let's jam

> Woah  
> Blockquoteception

A bunch of them!

Same but dark quote blocks :3

---

> This is a blockquote, created by putting "> " at the start of each line.  
> More text
>
> ---
>
> That's a horizontal rule
>
> > Nested blockquotes
> >
> > > Nested2
> > >
> > > > Nested3

---

| This is a | table |
| --- | --- |
| I don't actually know | how to make these |
| to be honest | |

---

[[div class="styled-quote"]]

[[/div]]

---

[[div class="lightblock"]]

[[/div]]

---

[[div class="dark-styled-quote"]]

[[/div]]

---

[[div class="darkblock"]]

[[/div]]

---

[[div class="logoblock"]]

[[/div]]

---

The title and header font is Italianno.  
The body font is Playfair Display  
The monospaced font is Fantasque Sans Mono

---

Hello, dear. A pleasure to see you again.  
**Hello, dear. A pleasure to see you again.**  
*Hello, dear. A pleasure to see you again.*  
Hello, dear. A pleasure to see you again.  
Hello, dear. A pleasure to see you again.  
Hello, dear. A pleasure to see you again.

---

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
@import url(https://backrooms-wiki.wdfiles.com/local--code/component%3Apatch/1);
 
@import url('https://fonts.googleapis.com/css2?family=Italianno&display=swap');
@import url('https://fonts.googleapis.com/css2?family=EB+Garamond:ital,wght@0,400..800;1,400..800&display=swap');
 
.main-font {
    font-family: 'Italianno', cursive;
}
 
.customFont {
    font-family: 'Playfair Display', serif;
}
 
:root {
   --theme-base: "black-highlighter";
   --theme-id: "liminal";
   --theme-name: "Liminal Theme";
 
   --logo-image: url("http://backrooms-wiki.wikidot.com/local--files/theme:cygnus/CygnusLogo.png");
   --header-title: "The Cygnus Archive";
   --header-subtitle: "May Knowledge Be Our Sanctuary.";
 
   --body-font: "EB Garamond", serif;
   --UI-font: "EB Garamond", serif;
 
   --min-font-size: 0.9rem;
   --max-font-size: 1.05rem;
   --base-line-height: 1.4;
   --header-font: 'Italianno', cursive;
   --title-font: 'Italianno', cursive;
   --mono-font: 'Fantasque Sans Mono', monospace;
 
   --white-monochrome: 255, 251, 242;
   --pale-gray-monochrome: 255, 251, 240;
   --light-gray-monochrome: 208, 169, 44;
   --gray-monochrome: 69, 40, 19;
   --black-monochrome: 99, 71, 57;
   --bright-accent: 208, 169, 44;
   --medium-accent: 17, 30, 84;
   --dark-accent: 31, 52, 92;
   --pale-accent: 39, 57, 92;
   --thing: 255, 255, 255;
 
   --swatch-topmenu-border-color: var(--medium-accent);
   --swatch-secondary-color: 255, 255, 255;
 
   --link-color: 208, 169, 44;
   --hover-link-color: 237, 204, 97;
 
   --background-gradient-distance: 0rem;
 
   --gradient-header: linear-gradient(to top,
      rgba(var(--medium-accent)) 0%,
      rgba(var(--medium-accent), 0.90) 100%
   );
   --diagonal-stripes: linear-gradient(transparent 0);
}
 
#skrollr-body {
   background-image:none
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
 
#page-title {
    border-color: rgb(var(--light-gray-monochrome));
    color: rgb(var(--dark-accent))!important;
    font-size: 3rem;
}
 
#header::before {
   content: "";
   position: absolute;
   height: 80%;
   width: 100%;
   left: 0;
   top: 0;
   background-image: var(--logo-image);
   background-size: auto 8rem;
   background-position: center;
   background-repeat: no-repeat;
   opacity: 0.8;
}
 
#header h1, #header h1 a {
   font-size: 4rem;
   position: absolute;
   top: 0.05rem;
   margin: 0;
   width: 100%;
   display: flex;
   justify-content: center;
   z-index: 0;
}
 
#header h2, #header h2 span, #header h2 span::before {
   font-size: 1.5rem;
   position: absolute;
   top: 1.9rem;
   margin: 0;
   width: 100%;
   display: flex;
   justify-content: center;
}
 
#header h1 a::before, #header h2 span::before {
   text-shadow: .063rem 0.1rem 0.1rem #0c0c0c;
   color: white;
   line-height: 0.7
}
 
h1 {
    font-size: 2.7rem;
    color:rgb(var(--dark-accent));
    line-height: 0.6
}
 
h2 {
    font-size: 2.4rem;
    color:rgb(var(--dark-accent));
    line-height: 0.6
}
 
h3 {
    font-size: 2.2rem;
    color:rgb(var(--dark-accent));
    line-height: 0.6
}
 
h4 {
    font-size: 2.0rem;
    color:rgb(var(--dark-accent));
    line-height: 0.6
}
 
h5 {
    font-size: 1.8rem;
    color:rgb(var(--dark-accent));
    line-height: 0.6
}
 
h6 {
    font-size: 1.6rem;
    color:rgb(var(--dark-accent));
    line-height: 0.6
}
 
a.newpage {
   background: transparent;
   text-decoration: none
}
 
a.newpage {
   color: rgb(var(--newpage-color))
}
 
blockquote {
   box-shadow: 0.2rem 0.4rem 1.2rem rgba(0,0,0,.25);
}
 
.styled-quote {
   background-color:rgb(var(--pale-gray-monochrome));
   border-left: 0.5rem solid rgba(var(--gray-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.2rem 0.4rem 1.2rem rgba(0,0,0,.25);
}
 
.dark-styled-quote {
   background-color:rgb(var(--gray-monochrome));
   border-left: 0.5rem solid rgba(var(--pale-gray-monochrome));
   color:rgb(var(--white-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.2rem 0.4rem 1.2rem rgba(0,0,0,.25);
}
 
.dark-styled-quote a{
color: rgb(var(--swatch-menubg-medium-color));
}
 
.lightblock {
   background-color:rgb(var(--white-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.8rem 1.2rem rgba(0,0,0,.25);
}
 
.darkblock {
   background-color:rgb(var(--gray-monochrome));
   color:rgb(var(--white-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.8rem 1.2rem rgba(0,0,0,.25);
}
 
.darkblock a {
color: rgb(var(--swatch-menubg-medium-color));
}
 
.logoblock{
   background-color:rgb(var(--white-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.20rem;
   box-shadow: 0 0.8rem 1.2rem rgba(0,0,0,.25);
   display: block;
   position: relative;
}
 
.logoblock::after{
content: "";
float: center;
border: solid 2px rgb(var(--medium-accent));
background: url(http://backrooms-wiki.wikidot.com/local--files/theme:cygnus/CygnusWatermark.png) center/20% no-repeat;
opacity: 0.175;
top: 0;
left: 0;
bottom: 0;
right: 0;
position: absolute;
z-index: 1;
pointer-events: none;
}
```

[- Close](javascript:;)

---

[Author(s)](javascript:;)

[Hide author](javascript:;)

Made by SnomWriting and Blanche  
~

---

Source: [https://backrooms-wiki.wikidot.com/theme:cygnus](https://backrooms-wiki.wikidot.com/theme:cygnus)
