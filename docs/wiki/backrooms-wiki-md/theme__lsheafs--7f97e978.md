---
title: "Liminal Sheafs"
source: "https://backrooms-wiki.wikidot.com/theme:lsheafs"
retrieved_at: "2026-08-23T23:39:46+00:00"
license: CC-BY-SA-3.0
---

# Liminal Sheafs

rating: +30[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

This theme was created by .

The theme isn't bound to any group or canon. Go wild with however you wanna use it, though it's generally meant to embody paper documents (so no fancy css tricks on this that wouldn't normally happen on a paper >:[).

To import this theme to your page, put the following text anywhere inside it:

[[include :backrooms-wiki:theme:lsheafs]]

# Examples

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

All fonts in this article are Merriweather Serif.

---

Foot[2](javascript:;)

---

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
/*
   Liminal Sheafs theme
   [Liminal Sheafs Theme]
   by Sariastuff
*/
 
@import url('https://fonts.googleapis.com/css2?family=Merriweather&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Merriweather:wght@300&display=swap');
 
@import url(https://backrooms-wiki.wdfiles.com/local--code/component%3Apatch/1);
 
:root {
   --theme-base: "black-highlighter";
   --theme-id: "LSheafs";
   --theme-name: "Liminal Sheafs";
   --header-height-on-mobile: 7.5rem;
   --header-height-on-desktop: 7.5rem;
 
   --logo-image: url("http://backrooms-wiki.wikidot.com/local--files/component:theme/logo.svg");
   --header-title: "The Backrooms";
   --header-subtitle: "You've been here before.";
 
   --body-font: 'Merriweather', serif;
   --header-font: 'Merriweather', serif;
   --title-font: 'Merriweather', serif;
   --mono-font: 'Merriweather', serif;
 
   --white-monochrome: 237, 233, 223;
   --pale-gray-monochrome: 255, 251, 240;
   --light-gray-monochrome: 138, 138, 138;
   --gray-monochrome: 0, 0, 0;
   --black-monochrome: 3, 2, 2;
   --bright-accent: 128, 115, 0;
   --medium-accent: 138, 138, 138;
   --dark-accent: 69, 69, 69;
   --pale-accent: 84, 84, 84;
 
   --swatch-topmenu-border-color: var(--medium-accent);
 
   --link-color: 32, 18, 230;
   --hover-link-color: 87, 43, 217;
   --newpage-color: 209, 25, 43;
 
   --background-gradient-distance: 0rem;
 
   --gradient-header: linear-gradient(to top,
      rgba(var(--medium-accent)) 0%,
      rgba(var(--medium-accent), 0.90) 100%
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
   background-image: url("http://backrooms-wiki.wikidot.com/local--files/theme:lsheafs/Desk.jpeg");
background-size: cover;
background-position: center;
background-repeat: no-repeat;
opacity: 1;
}
 
#main-content{
    background: #f0f0f0;
    color: black;
    border: #2b2b2b outset 3px;
box-shadow: 10px 10px 0px 0px rgba(5, 5, 5, 0.7);
font-size: 17px;
margin-top: 2em;
margin-bottom: 5em;
padding: 1.3em;
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

Source: [https://backrooms-wiki.wikidot.com/theme:lsheafs](https://backrooms-wiki.wikidot.com/theme:lsheafs)
