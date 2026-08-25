---
title: "Lazuli Theme"
source: "https://backrooms-wiki.wikidot.com/theme:lazuli"
retrieved_at: "2026-08-23T23:42:31+00:00"
license: CC-BY-SA-3.0
---

# Lazuli Theme

rating: +24[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

This theme was created by

To import this theme to your page, put the following text anywhere inside it:

[[include :backrooms-wiki:theme:lazuli]]

The Header font is Space Grotesk.  
The Body font is PT Sans.  
The Title font is PT Mono.  
The monospace font is Ubuntu Mono.

# Examples

![Missing alt text.](http://deer-box.wdfiles.com/local--files/theme-testing/banner2.png)

we do a little trolling

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

[[div class="styled-quote"]]

[[/div]]

[[div class="lightblock"]]

[[/div]]

[[div class="dark-styled-quote"]]

[[/div]]

[[div class="darkblock"]]

[[/div]]

The quick brown fox jumped over the lazy dog.  
**The quick brown fox jumped over the lazy dog.**  
*The quick brown fox jumped over the lazy dog.*  
The quick brown fox jumped over the lazy dog.  
The quick brown fox jumped over the lazy dog.  
The quick brown fox jumped over the lazy dog.

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
@import url(https://backrooms-wiki.wdfiles.com/local--code/component%3Apatch/1);
 
@import url('https://fonts.googleapis.com/css2?family=Ubuntu+Mono&display=swap');
@import url('https://fonts.googleapis.com/css2?family=PT+Sans&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@500&display=swap');
@import url('https://fonts.googleapis.com/css2?family=PT+Mono&display=swap');
 
:root {
   --theme-base: "black-highlighter";
   --theme-id: "lazuli";
   --theme-name: "Lazuli Theme";
 
   --logo-image: url("https://deer-box.wdfiles.com/local--files/theme-testing/banner2.png");
   --header-title: "The Backrooms";
   --header-subtitle: "Blue as the sea.";
 
   --body-font: 'PT Sans', sans-serif;
   --header-font: 'Space Grotesk', sans-serif;
   --title-font: 'PT Mono', monospace;
   --mono-font: 'Ubuntu Mono', monospace;
 
   --white-monochrome: 0, 2, 24;
   --pale-gray-monochrome: 3, 18, 90;
   --light-gray-monochrome: 6, 61, 157;
   --gray-monochrome: 5, 49, 134;
   --black-monochrome: 39, 132, 217;
   --bright-accent: 31, 76, 227;
   --medium-accent: 31, 76, 227;
   --dark-accent: 50, 155, 236;
   --pale-accent: 50, 155, 236;
   --blurple: 24, 62, 193;
   --swatch-menubg-dark-color: var(--pale-accent);
 
   --swatch-topmenu-border-color: var(--medium-accent);
 
   --link-color: 31, 76, 227;
   --hover-link-color: 31, 76, 227;
   --visited-link-color: 31, 76, 227;
 
   --background-gradient-distance: 0rem;
 
   --gradient-header: linear-gradient(to top,
      rgba(var(--medium-accent)) 0%,
      rgba(var(--medium-accent), 0.90) 100%
   );
   --diagonal-stripes: linear-gradient(transparent 0);
 
   --rating-module-button-plus-color: 38, 132, 217;
   --rating-module-button-negative-color: 38, 132, 217;
   --rating-module-button-cancel-color: 38, 132, 217;
   --rating-module-button-credit-color: 38, 132, 217;
}
 
#skrollr-body {
    width: 100%;
    position: absolute;
    top: 0;
    left: 0;
    background-image: url("https://deer-box.wdfiles.com/local--files/theme-testing/gradient.png");
 background-repeat: repeat-x;
background-size: inherit;
}
 
#side-bar .side-block div a img {
   filter: grayscale(0%);
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
 
#header::before {
   content: "";
   position: absolute;
   height: 100%;
   width: 100%;
   top: -1.1rem;
   left: 0rem;
   background-image: var(--logo-image);
   background-size: auto 6.8rem;
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
   left: 0rem;
   display: flex;
   justify-content: center;
}
 
#header h1 a::before, #header h2 span::before {
   text-shadow: .063rem 0.1rem 0.1rem #329bec;
}
 
#header h1 a:hover:before {
    text-shadow: .063rem 0.1rem 0.1rem #329bec;
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
   background-color:rgba(var(--bright-accent), .25);
   border: 5px solid rgb(var(--light-accent));
}
 
.code {
    border: 3px outset rgb(var(--black-monochrome));
}
 
.styled-quote {
   background-color:rgb(var(--pale-gray-monochrome));
   border-left: 0.5rem solid rgba(var(--black-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.dark-styled-quote {
   background-color:rgb(var(--pale-gray-monochrome));
   border-left: 0.5rem solid rgba(var(--blurple));
   color:rgb(var(--black-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.dark-styled-quote a{
color: rgb(var(--black-monochrome));
}
 
.lightblock {
   background-color:rgb(var(--black-monochrome));
   color:rgb(var(--white-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
.darkblock {
   background-color:rgb(var(--pale-gray-monochrome));
   color:rgb(var(--black-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
.darkblock a {
color: rgb(var(--black-monochrome));
}
```

[- Close](javascript:;)

Footnotes

[1](javascript:;). And here's a footnote!

---

Source: [https://backrooms-wiki.wikidot.com/theme:lazuli](https://backrooms-wiki.wikidot.com/theme:lazuli)
