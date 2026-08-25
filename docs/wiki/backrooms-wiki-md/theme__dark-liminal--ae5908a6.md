---
title: "Dark Liminal Theme"
source: "https://backrooms-wiki.wikidot.com/theme:dark-liminal"
retrieved_at: "2026-08-23T23:42:11+00:00"
license: CC-BY-SA-3.0
---

# Dark Liminal Theme

rating: +52[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

This theme was designed by . The code was re-made by using the same techniques from [NuTerminal](theme__nuterminal--a4a17d67.md).[1](javascript:;)

To import this theme to your page, put the following text anywhere inside it:

[[include :backrooms-wiki:theme:dark-liminal]]

# Examples

![Missing alt text.](http://backrooms-wiki.wdfiles.com/local--files/level-8/Level-8-cc.png)

Dark

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

[[div class="darkblock"]]

[[/div]]

[[div class="darkerblock"]]

[[/div]]

[[div class="lightblock"]]

[[/div]]

[[div class="styled-quote"]]

[[/div]]

**To add a title which looks like a page title, use:**

[[div class="meta-title"]]

---

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
/*=== ROOT VARS ===*/
:root {
    /*=== S-CSS-P ===*/
    --theme-base: "black-highlighter";
    --theme-id: "nuterminal";
    --theme-name: "NuTerminal Theme";
 
    /*=== Colors ===*/
    /*== Basic Colors ==*/
 
   --black-monochrome: 0, 4, 15;
   --dark-gray-monochrome: 18, 22, 32;
   --gray-monochrome: 95, 95, 95;
   --light-gray-monochrome: 115, 119, 129;
   --pale-gray-monochrome: 207, 210, 216;
   --white-monochrome: 230, 235, 239;
   --bright-accent: 115, 119, 129;
   --medium-accent: 0, 4, 15;
   --dark-accent: 115, 119, 129;
   --pale-accent: 115, 119, 129;
 
    /*== Swatches ==*/
    --swatch-background: var(--dark-gray-monochrome);
    --swatch-primary: var(--light-gray-monochrome);
    --swatch-primary-darker: var(--gray-monochrome);
    --swatch-primary-darkest: var(--light-gray-monochrome);
    --swatch-border-color: var(--white-monochrome);
 
    --swatch-text-dark: var(--black-monochrome);
    --swatch-text-light: var(--white-monochrome);
    --swatch-text-general: var(--swatch-text-light);
    --swatch-important-text: var(--pale-accent);
 
    --swatch-menubg-color: var(--black-monochrome);
    --swatch-menubg-light-color: var(--light-gray-monochrome);
    --swatch-menubg-medium-color: var(--gray-monochrome);
    --swatch-menubg-medium-dark-color: var(--black-monochrome);
    --swatch-menubg-dark-color: var(--dark-gray-monochrome);
    --swatch-menubg-black-color: var(--black-monochrome);
    --swatch-menubg-hover-color: var(--gray-monochrome);
 
    --swatch-menutxt-dark-color: var(--black-monochrome);
    --swatch-menutxt-light-color: var(--white-monochrome);
    --swatch-menutxt-general-color: var(--swatch-menutxt-light-color);
    --sideblock-heading-text-color: var(--swatch-menutxt-general-color);
 
    --swatch-secondary-color: var(--black-monochrome);
    --swatch-tertiary-color: var(--pale-gray-monochrome);
    --swatch-alternate-color: var(--pale-gray-monochrome);
 
    --swatch-text-secondary-color: var(--white-monochrome);
    --swatch-text-tertiary-color: var(--white-monochrome);
 
    --footer-text-color: var(--black-monochrome);
    --license-text-color: var(--black-monochrome);
 
    --gradient-header: linear-gradient(to top,
        rgba(var(--medium-accent)) 0%,
        rgba(var(--medium-accent), 0.3) 100%
    );
}
 
/*=== FOOTER ===*/
#footer {
   --footer-text-color: inherit;
   --footer-link-color: var(--black-monochrome);
}
 
#license-area {
   --license-text-color: inherit;
   --license-link-color: var(--black-monochrome);
}
 
/*=== Div Boxes ===*/
.darkerblock {
    color: rgb(var(--white-monochrome));
    background: rgb(var(--black-monochrome));
    padding: 0.01rem 1rem;
    margin: 0.5rem 0;
    box-shadow: var(--quote-shadow);
}
 
.styled-quote {
    border-left: solid 6px rgb(var(--black-monochrome));
}
 
/*=== Dots ===*/
#container {
   background-image: radial-gradient(circle, rgb(var(--black-monochrome), 0.40) 50%, transparent 0);
}
 
/*=== SD COLOURS ===*/
.sd-container {
   --sd-border:var(--white-monochrome);
   --sd-text:222,222,222;
   --sd-symbol:var(--sd-text);
   --sd-bullets:var(--sd-text);
}
```

[- Close](javascript:;)

Footnotes

[1](javascript:;). *If you want a theme to base another dark theme off of, use NuTerminal instead of Dark Liminal unless you REALLY know what you're doing!*

---

Source: [https://backrooms-wiki.wikidot.com/theme:dark-liminal](https://backrooms-wiki.wikidot.com/theme:dark-liminal)
