---
title: "CBS Theme"
source: "https://backrooms-wiki.wikidot.com/theme:cbs-theme"
retrieved_at: "2026-08-23T23:42:32+00:00"
license: CC-BY-SA-3.0
---

# CBS Theme

rating: +21[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

To import this theme to your page, put the following text anywhere inside it:

[[include :backrooms-wiki:theme:cbs-theme]]

---

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

weed lmao

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
> > > And another[1](javascript:;)

---

| This is a | table |
| --- | --- |
| You should know | how to make these |
| already | |

---

[[div class="darkblock"]]

[[/div]]

[[div class="grayblock"]]

[[/div]]

[[div class="lightblock"]]

[[/div]]

[[div class="blackblock"]]

[[/div]]

[[div class="slateblock"]]

[[/div]]

[[div class="styled-quote"]]

[[/div]]

[[div class="dark-styled-quote"]]

[[/div]]

[[div class="light-styled-quote"]]

[[/div]]

[[div class="black-styled-quote"]]

[[/div]]

[[div class="slate-styled-quote"]]

[[/div]]

[[div class="dark-slate-styled-quote"]]

[[/div]]

---

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
:root {
   --theme-base: "black-highlighter";
   --theme-id: "liminal";
   --theme-name: "Liminal Theme";
 
   --logo-image: url("http://ru-backrooms-wiki.wikidot.com/local--files/theme:cbs-theme/pochemu.png");
   --header-title: "CBS Database";
   --header-subtitle: "The whole world's a Theater, and we are in its Backstage.";
 
   --body-font: proxima-nova, sans-serif;
   --header-font: 'Fantasque Sans Mono', monospace;
   --title-font: 'Fantasque Sans Mono', monospace;
   --mono-font: 'Fantasque Sans Mono', monospace;
 
   --black: 0, 0, 0;
   --white: 245, 245, 245;
   --gainsboro: 220, 220, 220;
   --silver: 192, 192, 192;
   --snow: 255, 250, 250;
   --darkslate: 47, 79, 79;
   --darkgray: 169, 169, 169;
   --dimgray: 105, 105, 105;
   --slategray: 112, 128, 144;
 
   --swatch-topmenu-border-color: var(--black);
 
   --link-color: 230, 23, 68;
   --hover-link-color: 230, 23, 68;
 
   --white-monochrome: var(--white);
   --pale-gray-monochrome: var(--gainsboro);
   --gray-monochrome: var(--black);
   --medium-accent: var(--black);
   --dark-accent: var(--silver);
   --pale-accent: var(--silver);
   --light-gray-monochrome: var(--gainsboro);
   --black-monochrome: var(--black);
   --bright-accent: var(--silver);
 
   --background-gradient-distance: 0rem;
 
   --gradient-header: linear-gradient(to top,
      rgba(var(--black)) 0%,
      rgba(var(--black), 0.90) 100%
   );
   --diagonal-stripes: linear-gradient(transparent 0);
 
   /* Primary Theme Colors */
    --swatch-background: var(--white);
    --swatch-primary: var(--darkgray);
    --swatch-primary-darker: var(--dimgray);
    --swatch-primary-darkest: var(--black);
    /* Primary Text Colors */
    --barColour: var(--white);
    --linkColour: var(--dimgray);
  /* Primary Menu Colors */
    --swatch-menubg-color: var(--darkgray);
    --swatch-menubg-light-color: var(--gainsboro);
    --swatch-menubg-medium-color: var(--silver);
    --swatch-menubg-medium-dark-color: var(--dimgray);
    --swatch-menubg-dark-color: var(--darkslate);
    --swatch-menubg-black-color: var(--black);
    --swatch-menubg-hover-color: var(--dimgray);
    --swatch-menutxt-dark-color: var(--black);
    --swatch-menutxt-light-color: var(--white);
    --swatch-border-color: var(--black);
 
    /* Link Colors */
    --link-color: var(--darkslate);
    --visited-link-color: var(--dimgray);
    --hover-link-color: var(--darkslate);
    --newpage-color: var(--slategray);
    --sidebar-links-text: var(--black);
    --link-color-bright: var(--darkgray);
}
 
#skrollr-body {
   background-image:
    radial-gradient(circle, rgb(var(--black)) 50%, transparent 0);
   background-repeat: repeat;
   background-size: 0.25em 0.25em;
   width: 100%;
   height: 7.5rem;
}
 
#container {
   background-image: radial-gradient(circle, rgb(var(--black), 0.05) 50%, transparent 0);
   background-size: 0.25em 0.25em;
   background-repeat: repeat;
   background-attachment: fixed;
}
 
#header::before {
   opacity: 0.7;
}
 
.styled-quote {
   background-color:rgb(var(--gainsboro));
   border-left: 0.5rem solid rgba(var(--silver));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.dark-styled-quote {
   background-color:rgb(var(--silver));
   border-left: 0.5rem solid rgba(var(--gainsboro));
   color:rgb(var(--snow));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.dark-styled-quote a{
color: rgb(var(--darkgray));
}
 
.light-styled-quote {
   background-color:rgb(var(--snow));
   border-left: 0.5rem solid rgba(var(--black));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.black-styled-quote {
   background-color:rgb(var(--black));
   border-left: 0.5rem solid rgba(var(--snow));
   color:rgb(var(--snow));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.black-styled-quote a{
color: rgb(var(--darkgray));
}
 
.slate-styled-quote {
   background-color:rgb(var(--silver));
   border-left: 0.5rem solid rgba(var(--darkslate));
   color:rgb(var(--snow));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.dark-slate-styled-quote {
   background-color:rgb(var(--darkslate));
   border-left: 0.5rem solid rgba(var(--silver));
   color:rgb(var(--snow));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.dark-slate-styled-quote a{
color: rgb(var(--darkgray));
}
 
.lightblock {
   background-color:rgb(var(--snow));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
.grayblock {
   background-color:rgb(var(--gainsboro));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
.darkblock {
   background-color:rgb(var(--silver));
   color:rgb(var(--snow));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0;
   box-shadow: 0 0.2rem 0.2rem rgba(0,0,0,.25);
}
 
.darkblock a {
color: rgb(var(--darkgray));
}
 
.blackblock {
   background-color:rgb(var(--black));
   color:rgb(var(--snow));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0;
   box-shadow: 0 0.2rem 0.2rem rgba(0,0,0,.25);
}
 
.blackblock a {
color: rgb(var(--darkgray));
}
 
.slateblock {
   background-color:rgb(var(--darkslate));
   color:rgb(var(--snow));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0;
   box-shadow: 0 0.2rem 0.2rem rgba(0,0,0,.25);
}
 
.slateblock a {
color: rgb(var(--darkgray));
}
```

[- Close](javascript:;)

---

[Author(s)](javascript:;)

[Hide author](javascript:;)

Made by   
Updated and imported to this wiki by *my name is MX* does not match any existing user name

Footnotes

[1](javascript:;). And here's a footnote!

---

Source: [https://backrooms-wiki.wikidot.com/theme:cbs-theme](https://backrooms-wiki.wikidot.com/theme:cbs-theme)
