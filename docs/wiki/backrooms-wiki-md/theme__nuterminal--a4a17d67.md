---
title: "NuTerminal"
source: "https://backrooms-wiki.wikidot.com/theme:nuterminal"
retrieved_at: "2026-08-23T23:42:13+00:00"
license: CC-BY-SA-3.0
---

# NuTerminal

rating: +13[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

This theme was created by . I wanted to make a dark theme that looks clean, has proper colours (like you'll still get white if you use --white-monochrome), and generally shows a good template for how dark-styled themes should be made on top of NuLiminal. **Edit: turns out it works with Hallprint so I'm leaving it like this.**

Pick some colours for --white-monochrome to --black-monochrome, add this theme's code in under those, and whatever dark-styled theme you're working on will be off to a really good start so you should try that if you want your theme techlit.

It's called 'NuTerminal', because when the site theme, Liminal, was originally being made, 'Terminal' was suggested as a name for a dark theme. I like it :3 it's a cool name !!

If you want to import this theme into your pages, use:

[[include :backrooms-wiki:theme:nuterminal]]

## Examples

![Missing alt text.](http://backrooms-wiki.wikidot.com/local--files/level-0/cc_lvl0.jpg)

This is the [Image Block](component__image-block--eb47f2b7.md) component.

A horizontal rule can be created with 5 hyphens "-----" and extends across the whole page if it's not placed inside anything (eg a blockquote). The lines separating sections of this document are horizontal rules!!

---

Titles can be created by putting between one and six plus "+" at the start of the line

[+ Titles](javascript:;)

[- Titles](javascript:;)

# + aon

## ++ dó

### +++ trí

#### ++++ ceathair

##### +++++ cúig

###### ++++++ sé

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

[[div class="dark-styled-quote"]]

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
:root {
    /*=== S-CSS-P ===*/
    --theme-base: "black-highlighter";
    --theme-id: "nuterminal";
    --theme-name: "NuTerminal Theme";
 
    /*=== Colors ===*/
 
    --swatch-background: var(--black-monochrome);
    --swatch-primary: var(--light-gray-monochrome);
    --swatch-primary-darker: var(--dark-gray-monochrome);
    --swatch-primary-darkest: var(--dark-gray-monochrome);
    --swatch-border-color: var(--white-monochrome);
 
    --swatch-text-dark: var(--black-monochrome);
    --swatch-text-light: var(--white-monochrome);
    --swatch-text-general: var(--swatch-text-light);
    --swatch-important-text: var(--pale-accent);
 
    --swatch-menubg-color: var(--dark-gray-monochrome);
    --swatch-menubg-light-color: var(--light-gray-monochrome);
    --swatch-menubg-medium-color: var(--gray-monochrome);
    --swatch-menubg-medium-dark-color: var(--gray-monochrome);
    --swatch-menubg-dark-color: var(--dark-gray-monochrome);
    --swatch-menubg-black-color: var(--black-monochrome);
    --swatch-menubg-hover-color: var(--gray-monochrome);
 
    --swatch-menutxt-dark-color: var(--black-monochrome);
    --swatch-menutxt-light-color: var(--white-monochrome);
    --swatch-menutxt-general-color: var(--swatch-menutxt-light-color);
    --sideblock-heading-text-color: var(--swatch-menutxt-general-color);
 
    --swatch-secondary-color: var(--gray-monochrome);
    --swatch-tertiary-color: var(--pale-gray-monochrome);
    --swatch-alternate-color: var(--gray-monochrome);
 
    --swatch-text-secondary-color: var(--white-monochrome);
    --swatch-text-tertiary-color: var(--white-monochrome);
} 
 
#page-content .licensebox .collapsible-block-link {
  color: rgb(255, 255, 255);
}
```

[- Close](javascript:;)

---

Source: [https://backrooms-wiki.wikidot.com/theme:nuterminal](https://backrooms-wiki.wikidot.com/theme:nuterminal)
