---
title: "Iron Fist"
source: "https://backrooms-wiki.wikidot.com/theme:iron-fist"
retrieved_at: "2026-08-23T23:36:56+00:00"
license: CC-BY-SA-3.0
---

# Iron Fist

rating: +12[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

This theme was created by

  
The theme is intended for the Iron Fist.  
To import this theme into your page, put the following code anywhere inside it:

[[include :backrooms-wiki:theme:iron-fist]]

A horizontal rule can be created with 5 hyphens "-----" and extends across the whole page if it's not placed inside anything (ex. a blockquote). The lines separating sections of this document are horizontal rules.

---

Titles can be created by putting between one and six plus "+" at the start of the line (you really shouldn't need to use more than 4 in most circumstances).

[+ Titles](javascript:;)

[- Titles](javascript:;)

# First Title

## Second Title

### Third Title

#### Fourth Title (pretty tiny)

##### Fifth Title (literally tiny)

###### Sixth Title

- [*Tabulator*](javascript:;)
- [*Tabulation*](javascript:;)
- [*Long Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Long Tab*](javascript:;)

create all your *amazing* stuff here.

Wowzers you found me

:)

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.  
no  
This is a long tab. It contains a lot of text.  
why?  
This is a long tab. It contains a lot of text.  
idk  
This is a long tab. It contains a lot of text.  
…  
This is a long tab. It contains a lot of text.  
sorry  
This is a long tab. It contains a lot of text.

not empty lol

longo boi

> This is a blockquote, created by putting "> " at the start of each line.  
> More text
>
> ---
>
> That's a horizontal rule  
> *wow.*
>
> > Nested blockquotes
> >
> > > And another[1](javascript:;)

| This is a | table |
| --- | --- |
| You should know | how to make these |
| already. hopefully that is | |

---

This is in the middle lol

---

Foot[2](javascript:;)  
this text  
is here  
*so you can*  
**see how**  
everything looks  
with different  
formatsand  
otherstuff  
[including links that do not](https://backrooms-wiki.wikidot.com/including-links-that-do-not)  
[randomlinkmomento](https://backrooms-wiki.wikidot.com/randomlinkmomento)  
[And links that do exist!](theme__lso--1e1410e8.md)

---

[[div class="master-quote"]]

[[/div]]

---

[[div class="lightblock"]]

[[/div]]

---

[[div class="darkblock"]]

[[/div]]

---

[[div class="lightstyled-quote"]]

[[/div]]

---

[[div class="darkstyled-quote"]]

[[/div]]

---

[[div class="logo-block"]]

[[/div]]

---

[[div class="border-logoblock"]]

[[/div]]

---

[[div class="stripe-block"]]

[[/div]]

---

[[div class="borderblock"]]

[[/div]]

---

[[div class="ironblock"]]

[[/div]]

---

INSERT TEXT  
[[div class="titleblock"]]  
[[span class="titlebox"]]INSERT TEXT[[/span]]

[[/div]]

---

[Show Source Code](javascript:;)

[Hide Code](javascript:;)

```
@import url('https://fonts.googleapis.com/css2?family=DM+Mono&family=Playfair+Display&display=swap');
 
:root{
    --logo-image: url("http://roboboxium.wikidot.com/local--files/theme:iron-fist/fist2.png");
    --header-title: "The Iron Fist";
    --header-subtitle: "Defy Divinity.";
 
    --body-font: 'DM Mono', monospace;
    --UI-font: 'DM Mono', monospace;
    --title-font: 'Playfair Display', serif !important;
    --header-font: 'Playfair Display', serif;
    --mono-font: 'Playfair Display', serif;
 
    /* Change these variables to change how the whole article looks! */
    --ctv-background-color: 62, 0, 0;   /*   var(--ctv-background-color);   */
    --ctv-main-color: 107, 29, 9;    /*   var(--ctv-main-color);   */
    --ctv-accent-color: 191, 147, 92;    /*   var(--ctv-accent-color);   */
    --ctv-dark-accent: 154, 84, 46;  /*   var(--ctv-dark-accent);   */
    --ctv-text-color: 208, 200, 168;  /*   var(--ctv-text-color);   */
 
    --white-monochrome: var(--ctv-background-color); /* ALTERED */
    --pale-gray-monochrome:  var(--ctv-background-color); /* BG*/
    --light-pale-gray-monochrome: var(--ctv-background-color);
    --very-light-gray-monochrome: var(--ctv-background-color);
    --light-gray-monochrome: var(--ctv-main-color);
    --gray-monochrome: var(--ctv-background-color); /* sub header */
    --dark-gray-monochrome: var(--ctv-background-color);
    --black-monochrome: var(--ctv-background-color);
    --border-monochrome: var(--ctv-accent-color);
    --visited-link: var(--ctv-accent-color);
    --pale-accent: var(--ctv-accent-color); /* links that do exist */
    --bright-accent: var(--ctv-main-color); /* button hover, text hover, sidemenu collapsible, submenu hover */
    --medium-accent: var( --pale-gray-monochrome); /* header */
    --dark-accent: var(--ctv-background-color); /* 1st footer, header menu bg */
    --alt-accent: var(--ctv-main-color); /* links that do not exist */
--text-monochrome: var(--ctv-text-color);
 
--visited-link-color: var(--ctv-dark-accent);
--swatch-border-color: var(--border-monochrome);
--swatch-menubg-color: var(--ctv-background-color);
--swatch-menubg-light-color: var(--pale-gray-monochrome);
    --swatch-menubg-medium-color: var(--light-gray-monochrome);
    --swatch-menubg-medium-dark-color: var(--gray-monochrome);
    --swatch-menubg-dark-color: var(--dark-gray-monochrome);
    --swatch-menubg-black-color: var(--black-monochrome);
    --swatch-menubg-hover-color: var(--black-monochrome);
 
--swatch-menutxt-dark-color: var(--text-monochrome);
    --swatch-menutxt-light-color: var(--text-monochrome);
    --swatch-menutxt-general-color: var(--swatch-menutxt-dark-color);
 
--swatch-secondary-color: var(--ctv-main-color);
--ui-button-bg: var(--gray-monochrome);
    --ui-button-txt: var(--text-monochrome);
    --ui-button-hover-bg: var(--gray-monochrome);
    --ui-button-hover-txt: var(--text-monochrome);
    --ui-button-hover-outline: var(--ctv-main-color);
 
/* codeblock */
    --swatch-code-text-comment: 100 255 255;
    --swatch-code-text-quotes: 178 255 255;
    --swatch-code-text-string: 222 255 255;
    --swatch-code-text-identifier: 16 255 255;
    --swatch-code-text-reserved: 90 255 255;
 
/* footnotes hover */
--hoverblock-bg: var(--pale-gray-monochrome);
    --hoverblock-txt: var(--text-monochrome);
    --hoverblock-header-bg: var(--swatch-primary-darker);
    --hoverblock-header-txt: var(--text-monochrome);
    --hoverblock-footer-bg: var(--swatch-tertiary-color);
    --hoverblock-footer-txt: var(--text-monochrome);
 
--swatch-text-dark: var(--text-monochrome);
--swatch-text-light: var(--text-monochrome);
--swatch-topmenu-border-color: var( --pale-gray-monochrome);
   --swatch-topmenu-bg-color: var( --pale-gray-monochrome);
 
}
#header::before {
   content: "";
   position: absolute;
   height: 100%;
   width: 100%;
   left: 0;
   top: -0.5rem;
   background-image: var(--logo-image);
   background-size: auto 8rem;
   background-position: left;
   background-repeat: no-repeat;
   opacity: 1;
   filter: sepia(24%) brightness(17%) drop-shadow(-2px -2px red);
}
 
#skrollr-body {
  background: linear-gradient( to bottom, rgb(var(--ctv-main-color)), rgba(0, 0, 0, 0));
  height: 11rem;
 
}
 
#main-content {
--ui-icon-color: var(--ctv-text-color);
    --ui-icon-bg: var(--ctv-background-color);
    --ui-icon-hover-color: var(--ui-button-hover-bg);
    --ui-icon-hover-bg: var(--ui-button-hover-bg);
 
/* Editor Buttons */
--editor-icon-color: var(--ctv-main-color);
    --editor-icon-hover-color:  var(--ctv-main-color);
    --editor-icon-hover-bg: var(--text-monochrome);
    --editor-icon-submenu-bg: var(--black-monochrome);
--tabs-selected-outline:   var(--ctv-accent-color);
 
/* footnotes */
--footnotes-footer-bg-color: var(--ctv-main-color);
    --footnotes-footer-colorbar-color: var(--ctv-main-color);
    --footnotes-footer-title-bg-color: var(--ctv-main-color);
    --footnotes-footer-title-text-color: var(--swatch-text-secondary-color);
    --footnotes-footer-num-color: var(--pale-accent);
    --footnotes-footer-num-hover-color: var(--bright-accent);
    --footnotes-footer-text-color: var(--swatch-text-general);
 
--pagetags-text-color: var(--ctv-accent-color);
 
}
 
#main-content::after {
    height: 13rem;
    border-radius: 0 0.6rem 0.6rem 0;
    background-color: rgb(var(--gray-monochrome));
    top: calc(50vh - 6.5rem);
    background-image: url("http://nuliminal-test.wikidot.com/local--files/component:theme/sidebar-arrows.svg");
}
 
#page-content .licensebox .collapsible-block-link {
    color: rbg(var(--ctv-accent-color));
}
 
#page-content .licensebox .collapsible-block-link:hover {
    color: rbg(var(--ctv-accent-color));
}
 
.lightstyled-quote {
   width: 80%;
   max-width: 90%;
   background-color:rgb(var(--bright-accent));
color:rgb(var(--text-monochrome));
   border-left: 0.5rem solid rgba(var(--dark-gray-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25) inset;
border-radius: 10px;
}
 
.darkstyled-quote {
   width: 80%;
   max-width: 90%;
   background-color:rgb(var(--dark-gray-monochrome));
   border-left: 0.5rem solid rgba(var(--bright-accent));
   color:linear-gradient(
      to bottom,
      rgb(var(--ctv-main-color)),
      rgba(0, 0, 0, 0)
    ) 1 100%;
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25) inset;
border-radius: 10px;
}
 
.darkstyled-quote a{
color: linear-gradient(
      to bottom,
      rgb(var(--ctv-main-color)),
      rgba(0, 0, 0, 0)
    ) 1 100%;
}
 
.lightblock {
   background-color:rgb(var(--bright-accent));
color:rgb(var(--text-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25) inset;
border-radius: 10px;
}
 
.darkblock {
   background-color:rgb(var(--dark-gray-monochrome));
   color:rgb(var(--text-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25) inset;
border-radius: 10px;
}
 
 .stripe-block {
    background: repeating-linear-gradient(45deg, rgb(var(--ctv-background-color)), rgb(var(--ctv-main-color)) 15%) padding-box, linear-gradient(135deg, rgb(156, 148, 146) 0%, rgb(181, 174, 172) 4.5%, transparent 4.5% 6%, rgb(156, 148, 146) 6%, rgb(181, 174, 172) 7.5%, transparent 7.5%) border-box, repeating-linear-gradient(315deg, rgb(79, 76, 75), rgb(97, 93, 92) 0.75%) border-box;
    color:rgb(var(--text-monochrome));
    padding: 0.01rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25) inset;
    border: solid 0.3rem transparent;
border-radius: 10px;
 }
 .border-logoblock{
    padding: 0.01rem 1rem;
    box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25) inset;
  color: rgb(var(--text-monochrome));
    margin: 0.5rem 0 0.5rem 0.25rem;
    display: block;
    position: relative;
    background: linear-gradient(0deg, rgb(var(--ctv-background-color)) 0% 100%) padding-box, linear-gradient(135deg, rgb(174, 146, 145) 0%, rgb(200, 172, 154) 4.5%, transparent 4.5% 6%, rgb(174, 146, 145) 6%, rgb(200, 172, 154) 7.5%, transparent 7.5%) border-box, repeating-linear-gradient(315deg, rgb(86, 71, 71), rgb(111, 93, 93) 0.75%) border-box;
     border: solid 0.3rem transparent;
border-radius: 10px;
    }
 
    .border-logoblock::after{
    content: "";
    float: center;
    border: solid 2px #0000;
    background: url(http://roboboxium.wikidot.com/local--files/theme:iron-fist/fist2.png) center/25% no-repeat;
    opacity: 0.25;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0;
    position: absolute;
    z-index: 1;
    pointer-events: none;
    }
 
    .logoblock{
    padding: 0.01rem 1rem;
    box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25) inset;
    margin: 0.5rem 0 0.5rem 0.25rem;
    display: block;
    position: relative;
    background: linear-gradient(135deg, rgb(174, 146, 145) 0%, rgb(200, 172, 154) 4.5%, transparent 4.5% 6%, rgb(174, 146, 145) 6%, rgb(200, 172, 154) 7.5%, transparent 7.5%) border-box, repeating-linear-gradient(315deg, rgb(86, 71, 71), rgb(111, 93, 93) 0.75%) border-box;
border-radius: 10px;
    }
 
    .logoblock::after{
    content: "";
    float: center;
    border: solid 2px #0000;
    background: url(http://roboboxium.wikidot.com/local--files/theme:iron-fist/fist2.png) center/25% no-repeat;
    opacity: 0.25;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0;
    position: absolute;
    z-index: 1;
    pointer-events: none;
    }
 
.titleblock {
        background: linear-gradient(135deg, rgb(174, 146, 145) 0%, rgb(200, 172, 154) 4.5%, transparent 4.5% 6%, rgb(174, 146, 145) 6%, rgb(200, 172, 154) 7.5%, transparent 7.5%) border-box, repeating-linear-gradient(315deg, rgb(86, 71, 71), rgb(111, 93, 93) 0.75%) border-box;
        color:rgb(var(--text-monochrome));
        padding: 0.5rem 1rem 0.10rem;
        margin: 1.5rem 0rem 0.5rem 0rem;
        box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25) inset;
        border: solid transparent 4px;
        border-radius: 10px;
     }
 
     .titlebox{
       color: rgb(var(--text-monochrome));
       position: relative;
       top: -1.6rem;
       background: linear-gradient(135deg, rgb(174, 146, 145) 0%, rgb(200, 172, 154) 4.5%, transparent 4.5% 6%, rgb(174, 146, 145) 6%, rgb(200, 172, 154) 7.5%, transparent 7.5%) border-box, repeating-linear-gradient(315deg, rgb(86, 71, 71), rgb(111, 93, 93) 0.75%) border-box;
       padding: 0.25rem 1rem;
       line-height: 0.1rem;
        border-radius: 5px;
     box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
     }
.borderblock {
    background: linear-gradient(0deg, rgb(var(--ctv-background-color)) 0% 100%) padding-box, linear-gradient(135deg, rgb(174, 146, 145) 0%, rgb(200, 172, 154) 4.5%, transparent 4.5% 6%, rgb(174, 146, 145) 6%, rgb(200, 172, 154) 7.5%, transparent 7.5%) border-box, repeating-linear-gradient(315deg, rgb(86, 71, 71), rgb(111, 93, 93) 0.75%) border-box;
    padding: 0.01rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25) inset;
    border: solid 0.3rem transparent;
border-radius: 10px;
   color: rgb(var(--text-monochrome));
 }
 
.darkblock a {
color: rgb(var(--swatch-menubg-medium-color));
}
 
.master-quote {
font-family: 'Playfair Display', serif;
font-size: 25px;
font-style:    italic;
  color: rgb(var(--text-monochrome));
  margin: auto;
  width: 70%;
  max-width: 75%;
  text-align: center;
  padding: 1rem;
  border-width: 10px;
  border-style: solid;
  border-image:
    linear-gradient(
      to bottom,
      rgb(var(--ctv-main-color)),
      rgba(0, 0, 0, 0)
    ) 1 100%;
 
}
 
.ironblock {
    background: linear-gradient(135deg, rgb(174, 146, 145) 0%, rgb(200, 172, 154) 4.5%, transparent 4.5% 6%, rgb(174, 146, 145) 6%, rgb(200, 172, 154) 7.5%, transparent 7.5%) border-box, repeating-linear-gradient(315deg, rgb(86, 71, 71), rgb(111, 93, 93) 0.75%) border-box;
    padding: 0.01rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25) inset;
border: 0.3rem solid transparent;
border-radius: 10px;
}
```

Footnotes

[1](javascript:;). And here's a footnote!

[2](javascript:;). scientific note

---

Source: [https://backrooms-wiki.wikidot.com/theme:iron-fist](https://backrooms-wiki.wikidot.com/theme:iron-fist)
