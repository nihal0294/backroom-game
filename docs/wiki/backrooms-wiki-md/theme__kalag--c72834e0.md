---
title: "Kalag Institute Theme"
source: "https://backrooms-wiki.wikidot.com/theme:kalag"
retrieved_at: "2026-08-23T23:42:28+00:00"
license: CC-BY-SA-3.0
---

# Kalag Institute Theme

rating: +30[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  
This theme was created by . To import this theme to your page, put the following text anywhere inside it:

[[include :backrooms-wiki:theme:kalag]]

# Examples

![Missing alt text.](https://backrooms-wiki.wdfiles.com/local--files/theme:kalag/kalag.png)

Kalag Institute

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

This is a styled blockquote.

It can hold many things.

You are a cat.  
**You are a cat.**  
*You are a cat.*  
You are a cat.  
You are a cat.  
You are a cat.

---

The header and title font used is Roboto Slab.  
The body font used is Open Sans.  
The monospace font used is Courier.

---

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
@import url(https://backrooms-wiki.wdfiles.com/local--code/component%3Apatch/1);
 
@import url('https://fonts.googleapis.com/css2?family=Open+Sans&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Roboto+Slab&display=swap');
@import url('https://fonts.googleapis.com/css2family=Roboto+Slab:wght@400;500&display=swap');
 
:root {
    /* S-CSS-P Integration */
    /* If you're making a new CSS theme, please include the following three variables at minimum. */
    --theme-base: "black-highlighter";
    /* must be either "black-highlighter" or "sigma9" */
    --theme-id: "kalag-theme";
    /* set this to the URL of your theme's page - eg for "component:ar-theme", set it to "ar-theme" */
    --theme-name: "Kalag Institute Theme";
    /* set this to your theme's full name */
 
   --logo-image: url("http://backrooms-wiki.wdfiles.com/local--files/theme%3Akalag/kalaglogo.png");
   --header-title: "Kalag Institute";
   --header-subtitle: "The everlasting archive";
 
   --body-font: 'Open Sans';
   --header-font: 'Roboto Slab';
   --title-font: 'Roboto Slab';
   --mono-font: 'Courier', monospace;
 
   --white-monochrome: 215, 219, 204;
   --pale-gray-monochrome: 190, 196, 167;
   --light-gray-monochrome: 63, 66, 50;
   --gray-monochrome: 92, 97, 74;
   --black-monochrome: 63, 66, 50;
   --bright-accent: 92, 97, 74;
   --medium-accent: 63, 66, 50;
   --dark-accent: 92, 97, 74;
   --pale-accent: 63, 66, 50;
 
   --swatch-topmenu-border-color: var(--medium-accent);
   --swatch-menubg-dark-color: var(--light-gray-monochrome);
 
   --link-color: 92, 97, 74;
   --hover-link-color: 92, 97, 74;
 
   --background-gradient-distance: 0rem;
 
   --gradient-header: linear-gradient(to top,
      rgba(var(--medium-accent)) 0%,
      rgba(var(--medium-accent), 0.90) 100%
   );
   --diagonal-stripes: linear-gradient(transparent 0);
}
 
#skrollr-body {
   background-image: none
}
 
#side-bar .side-block div a img {
   filter: grayscale(100%);
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
   left: 0.1rem;
   top: 0;
   background-image: var(--logo-image);
   background-size: auto 19rem;
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
 
span.printuser {
    color: rgb(var(--pale-gray-monochrome))
}
 
.code {
    border: 2px dashed rgb(var(--pale-gray-monochrome));
}
 
blockquote {
   padding:1rem 0.7rem;
   margin:1rem 0;
   background:rgb(var(--pale-gray-monochrome));
   border-radius:0.6rem;
   box-shadow: 0px 0px 3px;
   border: 1.75px solid rgb(var(--white-monochrome));
   box-sizing:border-box;
}
 
.block-quote {
   padding:0.1rem 0.7rem;
   margin:1rem 0;
   background:rgb(var(--pale-gray-monochrome));
   border-radius:0.6rem;
   box-shadow: 0px 0px 3px;
   border: 1.75px solid rgb(var(--white-monochrome));
   box-sizing:border-box;
}
 
.styled-quote {
   font-family:Times New Roman;
   padding:0.1rem 0.7rem;
   margin:1rem 0;
   background:rgb(var(--pale-gray-monochrome));
   box-shadow: 0px 0px 3px;
   border: 1.75px solid rgb(var(--white-monochrome));
   box-sizing:border-box;
}
 
/* ==SD CLASS CODE== */
 
.sd-container {
   --sd-symbol:var(--sd-text);
}
```

[- Close](javascript:;)

Footnotes

[1](javascript:;). And here's a footnote!

---

Source: [https://backrooms-wiki.wikidot.com/theme:kalag](https://backrooms-wiki.wikidot.com/theme:kalag)
