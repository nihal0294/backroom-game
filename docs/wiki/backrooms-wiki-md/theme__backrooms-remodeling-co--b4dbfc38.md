---
title: "Backrooms Remodeling Co"
source: "https://backrooms-wiki.wikidot.com/theme:backrooms-remodeling-co"
retrieved_at: "2026-08-23T23:37:23+00:00"
license: CC-BY-SA-3.0
---

# Backrooms Remodeling Co

rating: +27[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

This theme was created by *PandaShark71004* does not match any existing user name.

To import this theme to your page, put the following text anywhere inside it:

[[include :backrooms-wiki:theme:backrooms-remodeling-co]]

# Examples

![Missing alt text.](https://backrooms-wiki.wdfiles.com/local--files/theme:backrooms-remodeling-co/icon.jpg)

insignia

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

weed lmao

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

The Header & Body font is Share Tech Mono.  
The Title font is Anonymous Pro.  
The monospace font used is PT Mono.

---

Foot[2](javascript:;)

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
/*
   Remodeling Theme
   [Backrooms Remodeling Co. Theme]
   by PandaShark71004
*/
 
@import url(https://backrooms-wiki.wdfiles.com/local--code/component%3Apatch/1);
@import url('https://fonts.googleapis.com/css2?family=Lobster&display=swap');
@import url('https://fonts.googleapis.com/css2?family=BioRhyme&display=swap');
 
:root {
   --theme-base: "black-highlighter";
   --theme-id: "backrooms-remodeling-co";
   --theme-name: "Remodeled Theme";
   --header-height-on-desktop: 12rem;
 
   --logo-image: url("http://backrooms-wiki.wdfiles.com/local--files/pandashark-s-author-page/icon.png");
   --header-title: "Backrooms Remodeling Co.";
   --header-subtitle: "True order comes through furniture.";
 
   --body-font: 'BioRhyme';
   --header-font: 'Lobster';
   --title-font: 'BioRhyme';
   --mono-font: 'Fantasque Sans Mono', monospace;
 
   --white-monochrome: 240, 240, 255;
   --pale-gray-monochrome: 220, 220, 235;
   --light-gray-monochrome: 211, 174, 0;
   --gray-monochrome: 79, 76, 122;
   --black-monochrome: 25, 20, 76;
   --bright-accent: 240, 206, 49;
   --medium-accent: 59, 56, 102;
   --dark-accent: 79, 76, 122;
   --pale-accent: 211, 174, 0;
 
   --swatch-topmenu-border-color: var(--medium-accent);
 
   --link-color: 211, 174, 0;
   --hover-link-color: 202, 35, 30;
 
   --background-gradient-distance: 0rem;
 
   --gradient-header: linear-gradient(to top,
      rgba(var(--medium-accent)) 0%,
      rgba(var(--medium-accent), 0.90) 100%
   );
   --diagonal-stripes: linear-gradient(transparent 0);
}
 
#skrollr-body {
   background-image:
    radial-gradient(circle, rgb(var(--medium-accent)) 0%, transparent 0);
   background-repeat: repeat;
   background-size: 0.25em 0.25em;
   width: 100%;
   height: 7.5rem;
}
 
#side-bar .side-block div a img {
   filter: grayscale(100%);
}
 
#container {
   background-image: radial-gradient(circle, rgb(var(--medium-accent), 0.05) 0%, transparent 0);
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
   background-image: url("");
}
 
#header::before {
   content: "";
   position: absolute;
   height: 100%;
   width: 100%;
   left: 0;
   top: -1rem;
   background-image: var(--logo-image);
   background-size: auto 9rem;
   background-position: center;
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
   text-shadow: .063rem 0.1rem 0.1rem #0c0c0c;
}
 
blockquote {
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
 
.dark-styled-quote a{
color: rgb(var(--swatch-menubg-medium-color));
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
 
.darkblock a {
color: rgb(var(--swatch-menubg-medium-color));
}
```

[- Close](javascript:;)

Footnotes

[1](javascript:;). And here's a footnote!

[2](javascript:;). note

---

Source: [https://backrooms-wiki.wikidot.com/theme:backrooms-remodeling-co](https://backrooms-wiki.wikidot.com/theme:backrooms-remodeling-co)
