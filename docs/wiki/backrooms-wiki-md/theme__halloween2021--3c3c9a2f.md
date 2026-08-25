---
title: "Halloween2021"
source: "https://backrooms-wiki.wikidot.com/theme:halloween2021"
retrieved_at: "2026-08-23T23:41:38+00:00"
license: CC-BY-SA-3.0
---

# Halloween2021

rating: +16[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

This theme was created by , despite the fact that he doesn't like Halloween much.

To import this theme to your page, put the following text anywhere inside it:

[[include :backrooms-wiki:theme:halloween2021]]

The Header font is Signika Sans Serif.  
The Body font is Proxima Sans Serif.  
The Title font is Signika Sans Serif.  
The monospace font is Signika Sans Serif.

# Examples

![Missing alt text.](http://backrooms-wiki.wikidot.com/local--files/theme:halloween2021/skull)

Check it out, a skellie!

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

  
   
   
In addition to those boring normal divblocks, there's also these really cool halloween related ones you realistically won't ever use in an article!  
   
 

[[div class="orbituary"]]   
 Test   
 [[/div]]

[[div class="jacko"]]   
 Test   
 [[/div]]

[[div class="noxious"]]   
 Test   
 [[/div]]

[[div class="bewitched"]]   
 Test   
 [[/div]]

  
  
It's le spooky month!  
**It's le spooky month!**  
*It's le spooky month!*  
It's le spooky month!  
It's le spooky month!.  
It's le spooky month!

[Dead link test](https://backrooms-wiki.wikidot.com/testtesttest)

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
/*
   Halloween 2021 theme
   [2020 Wikidot Theme]
   by ArgonMighty
*/
 
@import url('https://fonts.googleapis.com/css2?family=Signika:wght@300&display=swap');
 
@import url(https://backrooms-wiki.wdfiles.com/local--code/component%3Apatch/1);
 
:root {
   --theme-base: "black-highlighter";
   --theme-id: "Halloween2021";
   --theme-name: "Halloween 2021";
   --header-height-on-mobile: 15rem;
   --header-height-on-desktop: 15rem;
 
   --logo-image: url("http://backrooms-wiki.wikidot.com/local--files/theme:halloween2021/Web");
   --header-title: "HALLOWEEN CONTEST 2021";
   --header-subtitle: "TRICKS AND TREATS APLENTY.";
 
   --body-font: proxima-nova, sans-serif;
   --header-font: 'Signika', sans-serif;
   --title-font: 'Signika', sans-serif;
   --mono-font: 'Signika', sans-serif;
 
   --white-monochrome: 225, 233, 247;
   --pale-gray-monochrome: 255, 251, 240;
   --light-gray-monochrome: 145, 96, 22;
   --dark-gray-monochrome: 14, 31, 99;
   --gray-monochrome: 9, 22, 46;
   --black-monochrome: 5, 4, 23;
   --bright-accent: 255, 144, 18;
   --medium-accent: 7, 14, 28;
   --dark-accent: 11, 23, 46;
   --pale-accent: 11, 23, 46;
 
   --rating-module-button-plus-color: 219, 140, 4;
   --rating-module-button-negative-color: 143, 36, 0;
   --rating-module-button-cancel-color: 58, 61, 77;
 
   --swatch-topmenu-border-color: var(--medium-accent);
 
   --link-color: 245, 125, 12;
   --hover-link-color: 255, 184, 5;
   --newpage-color: 114, 27, 207;
 
   --background-gradient-distance: 0rem;
 
   --gradient-header: linear-gradient(to top,
      rgba(var(--medium-accent)) 0%,
      rgba(var(--medium-accent), 0.90) 100%
   );
   --diagonal-stripes: linear-gradient(transparent 0);
}
 
#skrollr-body {
   background-image:
    radial-gradient(circle, rgb(var(--medium-accent)) 75%, transparent 0);
   background-repeat: repeat;
   background-size: 0.50em 0.25em;
   width: 100%;
   height: 15rem;
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
 
#search-top-box {
    top: 15%;
    right: 3%;
}
 
@media only screen and (max-width: 768px) {
   #search-top-box {
      top: 0;
      right: 0;
   }
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
   background-size: auto 100rem;
   background-position: center;
   background-repeat: no-repeat;
   opacity: 0.25;
}
 
#header h1, #header h1 a {
   position: absolute;
   top: 2.6rem;
   margin: 0;
   width: 100%;
   display: flex;
   justify-content: center;
   z-index: 0;
}
 
#header h1 a:before {
   content: "The Backrooms";
   content: var(--header-title);
}
 
#header h2, #header h2 span, #header h2 span::before {
   position: absolute;
   top: 2.9rem;
   margin: 0;
   width: 100%;
   display: flex;
   justify-content: center;
}
 
#header h1 a::before, #header h2 span::before {
   text-shadow: .063rem 0.1rem 0.1rem #0c0c0c;
}
 
#search-top-box-form>input, #search-top-box-form>input[type=submit] {
   padding: 0.5rem;
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
 
.orbituary{
   background: linear-gradient(180deg, rgba(12, 12, 12,.1), rgba(12, 12, 12,.1)), url(http://backrooms-wiki.wikidot.com/local--files/theme:halloween2021/skull) center/50% no-repeat;
   background-color:rgb(12, 12, 12);
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0, 0, 0,.25);
   border: solid 2px rgb(var(--medium-accent));
   color:rgb(245, 245, 245);
}
 
.jacko{
   background: linear-gradient(180deg, rgba(255, 179, 38,.3), rgba(255, 179, 38,.3)), url(http://backrooms-wiki.wikidot.com/local--files/theme:halloween2021/Pumpkin) center/50% no-repeat;
   background-color:rgb(8, 8, 8);
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   background-color:rgb(255, 179, 38);
   border: solid 2px rgb(var(--medium-accent));
   color:rgb(0, 0, 0);
}
 
.noxious{
   background: linear-gradient(180deg, rgba(0, 158, 0,.5), rgba(0, 158, 0,.5)), url(http://backrooms-wiki.wikidot.com/local--files/theme:halloween2021/Cauldron) center/50% no-repeat;
   background-color:rgb(0, 158, 0);
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0, 0, 0,.25);
   border: solid 2px rgb(var(--medium-accent));
   color:rgb(0, 0, 0);
}
 
.bewitched{
   background: linear-gradient(180deg, rgba(174, 74, 255,.5), rgba(174, 74, 255,.5)), url(http://backrooms-wiki.wikidot.com/local--files/theme:halloween2021/Witch) center/50% no-repeat;
   background-color:rgb(174, 74, 255);
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0, 0, 0,.25);
   border: solid 2px rgb(var(--medium-accent));
   color:rgb(0, 0, 0);
}
```

[- Close](javascript:;)

---

[Author(s)](javascript:;)

[Hide author](javascript:;)

Written by   
[Author page](https://backrooms-wiki.wikidot.com/saria)

Image licenses:  
[Logo](https://svgsilh.com/ffffff/image/1292978.html)  
[Orbituary](https://svgsilh.com/000000/image/30325.html)  
[Jacko](https://svgsilh.com/ff9800/image/1778857.html)  
[Noxious](https://svgsilh.com/4caf50/image/2022390.html)  
[Bewitched](https://svgsilh.com/673ab7/image/41104.html)

Footnotes

[1](javascript:;). And here's a footnote!

---

Source: [https://backrooms-wiki.wikidot.com/theme:halloween2021](https://backrooms-wiki.wikidot.com/theme:halloween2021)
