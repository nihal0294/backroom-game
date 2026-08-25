---
title: "Basic Black/White"
source: "https://backrooms-wiki.wikidot.com/theme:basic-black-white"
retrieved_at: "2026-08-23T23:35:57+00:00"
license: CC-BY-SA-3.0
---

# Basic Black/White

[dark\_modeDark Mode](index.md)[light\_modeLight Mode](index.md)

rating: +27[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

This theme was designed by , who wanted to try and make a pure black/white theme that's easily changeable![1](javascript:;) Hark, for you no longer have to rely on the deprecated Sand2 themes!

To import this theme to your page, put the following text anywhere inside it:

[[include :backrooms-wiki:theme:basic-black-white]]

# How to change colours:

This theme has two accents that change every colour on this page between either black or white (with some exceptions, such as links).

> [[module css]]  
>     :root {  
>         --accent-one: var(--black);  
>         --accent-two: var(--white);  
> }  
> [[/module]]

Swapping these variables will get you the following:

> ![black_new.PNG](https://backrooms-wiki.wdfiles.com/local--files/theme:basic-black-white/black_new.PNG)

You can also remove the wallpaper texture by adding the following to the :root section: --wallpaper-mask: none;

For the full Blank/Black effect of old, add the following to your :root section: --wallpaper-mask: none;  
--swatch-topmenu-border-color: var(—accent-two);  
--gradient-header: linear-gradient( to bottom, rgb(var(--accent-two)) 0%, rgb(var(--accent-two)) 100%);  
--background-gradient-color: var(--accent-two);

# Examples

![Missing alt text.](http://backrooms-wiki.wikidot.com/local--files/level-0/cc_lvl0.jpg)

This is the [Image Block](component__image-block--eb47f2b7.md) component.

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
> > Nested blockquotes

| This is a | table |
| --- | --- |
| You should know | how to make these |
| already | |

Machine  
I will cut you down  
**Break you apart**  
*Splay the gore of your profane form*  
Across the stars  
I will grind you down  
Until the very sparks  
Cry for mercy  
[My hands shall relish ending you](https://backrooms-wiki.wikidot.com/my-hands-shall-relish-ending-you)  
[here](level-0.md)  
[and now!](https://youtu.be/AnLuKx_c7Ds?t=119)[2](javascript:;)

[[div class="lightblock"]]

[[/div]]

[[div class="styled-quote"]]

[[/div]]

[[div class="darkblock"]]

[[/div]]

[[div class="dark-styled-quote"]]

[[/div]]

[[div class="frameblock"]]  
New hit block style hitting the blank/black marketplace.  
[[/div]]

[[note]]

These also exist, did you know that? Ain't these funky looking, this is just a part of the base BHL design, thanks BHL designers!

[[/note]]

**To add a title which looks like a page title, use:**

[[div class="meta-title"]]

---

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
:root {
    --logo-image: none;
 
    --white-monochrome: var(--accent-one);
    --pale-gray-monochrome: var(--accent-two);
    --light-gray-monochrome: var(--accent-one);
    --gray-monochrome: var(--accent-one);
    --dark-gray-monochrome: var(--accent-middle);
    --black-monochrome: var(--accent-one);
    --medium-accent: var(--accent-two);
    --pale-accent: var(--accent-middle);
    --bright-accent: var(--accent-middle);
    --dark-accent: var(--accent-middle);
    --alt-accent: var(--accent-middle);
 
   /*SWATCH EDITS*/
   --swatch-text-light: var(--accent-one);
 
   --swatch-text-secondary-color: var(--accent-one);
 
   --swatch-topmenu-bg-color: var(--accent-two); /*GRADIENT*/
   --swatch-topmenu-border-color: var(--accent-one);
 
   --swatch-menutxt-light-color: var(--accent-two);
   --swatch-menutxt-dark-color: var(--accent-two);
   --swatch-menutxt-general-color: var(--accent-one);
 
    --swatch-menubg-color: var(--accent-two);
 
   --quote-shadow: none;
   --header-text-shadow: none;
 
    --rating-module-bg-color: var(--accent-one);
 
   /* THEME VARIABLES */
   --accent-one: var(--black);
   --accent-two: var(--white);
   --accent-middle: var(--gray);
 
   --white: 255, 255, 255;
   --black: 0, 0, 0;
   --gray: 125, 125, 125;
}
 
.lightblock, .styled-quote {
  background: rgb(var(--accent-two));
  color: rgb(var(--accent-one));
}
 
.darkblock, .dark-styled-quote {
  background: rgb(var(--accent-one));
  color: rgb(var(--accent-two));
}
 
.frameblock {
  color: rgb(var(--accent-one));
  background: rgb(var(--accent-two));
  padding: 0.01rem 1rem;
  margin: 0.5rem 0;
  border: solid 5px rgb(var(--accent-one));
}
 
div.scp-image-block div.scp-image-caption {
   background-color: rgb(var(--accent-two));
   border: 2px solid rgb(var(--accent-one));
}
 
#top-bar {
   --swatch-text-secondary-color: var(--accent-one);
}
 
#page-content table.wiki-content-table {
   --tables-header-bg: var(--accent-one);
   --tables-header-txt: var(--accent-two);
}
 
.footnotes-footer {
   --footnotes-footer-text-color: var(--accent-two);
}
 
div.wiki-note {
   --note-color: var(--accent-middle);
}
 
.code, .page-source {
   background-color: rgb(var(--accent-two));
   color: rgb(var(--accent-one));
}
 
#who-rated-page-area > div > span[style*="color"] {
   color: rgb(var(--accent-middle)) !important;
}
 
html, body {
    scrollbar-color: rgb(var(--pale-gray-monochrome))rgb(var(--black-monochrome));
}
```

[- Close](javascript:;)

Footnotes

[1](javascript:;). Here's a footnote! Place these anywhere by typing [[footnote]]Insert text here![[/footnote]]

[2](javascript:;). Also yes nothing will stop me making ultrakill references fuck you

---

Source: [https://backrooms-wiki.wikidot.com/theme:basic-black-white](https://backrooms-wiki.wikidot.com/theme:basic-black-white)
