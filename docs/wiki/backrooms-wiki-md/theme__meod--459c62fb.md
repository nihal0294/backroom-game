---
title: "M.E.O.D."
source: "https://backrooms-wiki.wikidot.com/theme:meod"
retrieved_at: "2026-08-23T23:41:36+00:00"
license: CC-BY-SA-3.0
---

# M.E.O.D.

rating: +27[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  
This theme was created by , taking reference from [Basalt Theme](theme__basalt--089ed37f.md).

To import this theme to your page, put the following text anywhere inside it:

[[include :backrooms-wiki:theme:meod]]

# Examples

![Missing alt text.](https://s1.ax1x.com/2022/12/02/zBgKX9.png)

The whatchamacallit?

A horizontal rule can be created with 5 hyphens"-----" and extends across the whole page if it's not placed inside anything. The lines separating sections of this document are horizontal rules.

---

Titles can be created by putting between one and six plus "+" at the start of the line.

[Titles](javascript:;)

[Titles](javascript:;)

# M.E.O.D.

## You took

### Everything from me

#### I don't even know who you are

##### You will

###### BOOM

- [*Tabulator*](javascript:;)
- [*Tabulation*](javascript:;)
- [*Long Tab*](javascript:;)
- [*This empty tab has a really long name for some odd reasons. I wonder why?*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)

This is a tabview.

Hey look, more text here!

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

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

> This is a blockquote, created by putting "> " at the start of each line.  
> More text.
>
> ---
>
> That's a horizontal rule.
>
> > Nested blockquotes[1](javascript:;)

| This is a | table |
| --- | --- |
| You should know | how to make these |
| already | |

---

Foot[2](javascript:;)  
Acting as one on the behalf of many.  
Acting as one on the behalf of many.  
*Acting as one on the behalf of many.*  
**Acting as one on the behalf of many.**  
Acting as one on the behalf of many.  
Acting as one on the behalf of many.  
Acting as oneon the behalf of many.  
Acting as oneon the behalf of many.  
[Links that do not exist!](https://backrooms-wiki.wikidot.com/links-that-do-not-exist)  
[Links that do exist!](level-999.md)  
WARNING  
CAUTION  
SAFE

---

[[div class="styled-quote"]]

[[/div]]

[[div class="dark-styled-quote"]]

[[/div]]

[[div class="lightblock"]]

[[/div]]

[[div class="darkblock"]]

[[/div]]

[[div class="document"]]

[[/div]]

[[div class="dark-document"]]

[[/div]]

[[div class="noticeblock"]]

[[/div]]

[[div class="dark-noticeblock"]]

[[/div]]

[[div class="bntgblock"]]

[[/div]]

[[div class="megblock"]]

[[/div]]

[[div class="uecblock"]]

[[/div]]

[[div class="cbsblock"]]

[[/div]]

---

[+ Show code](javascript:;)

[- Hide code](javascript:;)

```
@import url('https://fonts.googleapis.com/css2?family=Staatliches&display=swap');
@import url('https://fonts.googleapis.com/css2?family=PT+Serif&display=swap');
 
@import url('https://fonts.googleapis.com/css2?family=Noto+Serif+SC&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+SC&display=swap');
@import url("http://vivarium.wdfiles.com/local--files/backrooms%3Avivtheme/stylesheet.css");
 
:root {
    --theme-base: "black-highlighter";
    --theme-id: "meod";
    --theme-name: "M.E.O.D. Theme";
    --logo-image: url("http://backrooms-sandbox-2.wikidot.com/local--files/theme:meod/zBgKX9.png");
    --header-title: "M.E.O.D.";
    --header-subtitle: "Acting as one on the behalf of many.";
    --pale-gray-monochrome: 217,208,180;
    --very-light-gray-monochrome: 1,38,35;
    --white-monochrome: 237,228,200;
    --light-pale-gray-monochrome: 217,208,180;
    --light-gray-monochrome: 21,33,38;
    --gray-monochrome: 1,38,35;
    --dark-gray-monochrome: 1,38,35;
    --black-monochrome: 1,20,17;
    --bright-accent: 43,86,128;
    --medium-accent: 21,33,38;
    --dark-accent: 18,15,38;
    --pale-accent: 18,15,38;
    --swatch-topmenu-border-color: var(--gray-monochrome);
    --link-color: var(--bright-accent);
    --hover-link-color: 3,46,88;
    --alt-accent:140,88,140;
    --background-gradient-distance: 20rem;
    --gradient-header: linear-gradient(to bottom, rgba(var(--black-monochrome)) 0%, rgba(var(--gray-monochrome), 1) 100%);
    --diagonal-stripes: linear-gradient(transparent 0);
    --header-height-on-desktop:10rem;
    --header-height-on-mobile: 10rem;
    --swatch-menubg-medium-color: var(--pale-gray-monochrome);
    --swatch-tertiary-color: var(--dark-gray-monochrome);
}
 
#header:before {
   background-size:auto calc(var(--header-height-on-desktop) - 2rem);
   background-position: center;
    animation:header 3s alternate infinite;
    webkit-animation:header 3s alternate infinite;
}
 
@keyframes header {
   0%{
      background-position: center 40%;
   }
   100%{
      background-position: center 60%;
   }
}
 
#header h1, #header h1 a {
    top: 2rem;
}
 
#header h2, #header h2 span, #header h2 span::before {
    top: 2.5rem;
}
 
#toc {
   background-color:rgb(var(--gray-monochrome));
   color:rgb(var(--white-monochrome));
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
   border: none;
   padding: 0.5rem
}
 
#toc a {
   color: rgb(var(--swatch-menubg-medium-color));
}
 
.bblock:hover{
   color: rgb(var(--swatch-menubg-medium-color));
}
 
.document {
    background-color: rgb(var(--white-monochrome));
    color: rgb(var(--dark-accent));
    box-shadow: 0 5px 8px rgba(0, 0, 0, 0.5);
    margin: 3.5rem 0.2rem;
    padding: 0.2rem 1rem;
    position: relative;
}
 
.document:before,
.document:after {
    content: "";
    height: 98%;
    position: absolute;
    width: 100%;
    z-index: -1;
}
 
.document:before {
    background-color: rgb(var(--white-monochrome));
    box-shadow: 0 5px 8px rgba(0, 0, 0, 0.5);
    left: -5px;
    top: 4px;
    transform: rotate(-4deg);
}
 
.document:after {
    background-color: rgb(var(--white-monochrome));
    box-shadow: 0 -5px 8px rgba(0, 0, 0, 0.5);
    right: -3px;
    top: 1px;
    transform: rotate(3deg);
}
 
.dark-document {
    color: rgb(var(--white-monochrome));
    background-color: rgb(var(--dark-accent));
    box-shadow: 0 5px 8px rgba(0, 0, 0, 0.5);
    margin: 3.5rem 0.2rem;
    padding: 0.2rem 1rem;
    position: relative;
}
 
.dark-document:before,
.dark-document:after {
    content: "";
    height: 98%;
    position: absolute;
    width: 100%;
    z-index: -1;
}
 
.dark-document:before {
    background-color: rgb(var(--dark-accent));
    box-shadow: 0 5px 8px rgba(0, 0, 0, 0.5);
    left: -5px;
    top: 4px;
    transform: rotate(-4deg);
}
 
.dark-document:after {
    background-color: rgb(var(--dark-accent));
    box-shadow: 0 -5px 8px rgba(0, 0, 0, 0.5);
    right: -3px;
    top: 1px;
    transform: rotate(3deg);
}
 
.noticeblock {
    background-color: rgb(var(--white-monochrome));
    background-image: url(https://s1.ax1x.com/2022/12/02/zBgKX9.png);
    background-size:auto 7rem;
    background-position: center bottom;
    background-repeat:no-repeat;
    color: rgb(var(--dark-accent));
    box-shadow: 0 5px 8px rgba(0, 0, 0, 0.5);
    margin: 3rem;
    padding: 0.2rem 1rem 8rem 1rem;
    position: relative;
}
 
.noticeblock>p:nth-child(1)::before {
    content: "M.E.O.D.";
    font-family: 'Times New Roman', serif;
    font-weight: 600;
    font-size: 200%;
    text-align: center;
    margin-bottom: 1.5rem;
    padding-bottom: 0.6rem;
    border-bottom: double 0.2rem rgb(var(--dark-accent));
    max-width: 49rem;
    margin-left: auto;
    margin-right: auto;
    display: flex;
    flex-direction: column;
    align-content: stretch;
    align-items: center;
}
 
.noticeblock>p:nth-child(1)::after {
    content: "Acting as one on the behalf of many.";
    font-family: 'Times New Roman', serif;
    font-weight: 600;
    font-size: 75%;
    text-align: center;
    margin-top: -4.25rem;
    padding-bottom: 0.3rem;
    max-width: 49rem;
    margin-left: auto;
    margin-right: auto;
    display: flex;
    flex-direction: column;
    align-content: stretch;
    align-items: center;
}
 
.noticeblock>p:nth-child(2) {
    margin-top: 4rem;
}
 
.dark-noticeblock {
    color: rgb(var(--white-monochrome));
    background-image: url(https://s1.ax1x.com/2022/12/02/zBgKX9.png);
    background-size:auto 7rem;
    background-position: center bottom;
    background-repeat:no-repeat;
    background-color: rgb(var(--dark-accent));
    box-shadow: 0 5px 8px rgba(0, 0, 0, 0.5);
    margin: 3rem;
    padding: 0.2rem 1rem 8rem 1rem;
    position: relative;
}
 
.dark-noticeblock>p:nth-child(1)::before {
    content: "M.E.O.D.";
    font-family: 'Times New Roman', serif;
    font-weight: 600;
    font-size: 200%;
    text-align: center;
    margin-bottom: 1.5rem;
    padding-bottom: 0.8rem;
    border-bottom: double 0.2rem rgb(var(--white-monochrome));
    max-width: 49rem;
    margin-left: auto;
    margin-right: auto;
    display: flex;
    flex-direction: column;
    align-content: stretch;
    align-items: center;
}
 
.dark-noticeblock>p:nth-child(1)::after {
    content: "Acting as one on the behalf of many.";
    font-family: 'Times New Roman', serif;
    font-weight: 600;
    font-size: 75%;
    text-align: center;
    margin-top: -4.25rem;
    padding-bottom: 0.3rem;
    max-width: 49rem;
    margin-left: auto;
    margin-right: auto;
    display: flex;
    flex-direction: column;
    align-content: stretch;
    align-items: center;
}
 
.dark-noticeblock>p:nth-child(2) {
    margin-top: 4rem;
}
 
.bntgblock {
    background-color: #E8E7D5;
    background-repeat:no-repeat;
    border-left: 0.3rem solid #566C5A;
    border-right: 0.3rem solid #566C5A;
    color: rgb(102, 102, 102);
    box-shadow: 0 5px 8px rgba(0, 0, 0, 0.5);
    margin: 1rem 0.2rem;
    padding: 0.2rem 1rem;
    position: relative;
}
 
.bntgblock>p:nth-child(1)::before {
    content: "B.N.T.G. Announcement System";
    font-family: 'Staatliches', sans-serif;
    font-weight: 600;
    font-size: 200%;
    text-align: center;
    margin-bottom: 1rem;
    padding-bottom: 0.6rem;
    border-bottom: 0.15rem solid #566C5A;
    max-width: 49rem;
    margin-left: auto;
    margin-right: auto;
    display: flex;
    flex-direction: column;
    align-content: stretch;
    align-items: center;
}
 
.megblock{
    box-shadow: 0 5px 8px rgba(0, 0, 0, 0.5);
    background-image: url(http://backrooms-sandbox-2.wikidot.com/local--files/trailmixncocoa-meg-theme/IMG_3130.PNG);
    background-size:auto 5rem;
    background-position: center bottom;
    background-repeat:no-repeat;
    color:rgb(255, 255, 255);
    margin: 1rem 0.2rem;
    padding: 0.2rem 1rem 8rem 1rem;
    display: block;
    position: relative;
    background-color: rgb(54, 52, 21);
    border: solid 0.3rem rgb(255, 245, 166);
    }
 
.megblock>p:nth-child(1)::before {
    content: "M.E.G.";
    font-family: 'Times New Roman', serif;
    font-weight: 600;
    font-size: 200%;
    text-align: center;
    margin-bottom: 1.5rem;
    padding-bottom: 0.8rem;
    border-bottom: double 0.2rem white;
    max-width: 49rem;
    margin-left: auto;
    margin-right: auto;
    display: flex;
    flex-direction: column;
    align-content: stretch;
    align-items: center;
}
 
.megblock>p:nth-child(1)::after {
    content: "Bettering humanity.";
    font-weight: 600;
    font-size: 75%;
    text-align: center;
    margin-top: -4.25rem;
    padding-bottom: 0.3rem;
    max-width: 49rem;
    margin-left: auto;
    margin-right: auto;
    display: flex;
    flex-direction: column;
    align-content: stretch;
    align-items: center;
}
 
.megblock>p:nth-child(2) {
    margin-top: 4rem;
}
 
.uecblock{
    box-shadow: 0 5px 8px rgba(0, 0, 0, 0.5);
    background-image: url(http://backrooms-wiki.wikidot.com/local--files/theme:meod/UEC);
    background-size:auto 7rem;
    background-position: center bottom;
    background-repeat:no-repeat;
    color:rgb(255, 255, 255);
    margin: 1rem 0.2rem;
    padding: 0.2rem 1rem 8rem 1rem;
    display: block;
    position: relative;
    background-color: rgb(20,22,24);
    border-top: solid 0.3rem #FF1428;
    border-bottom: solid 0.3rem #FF1428;
    }
 
.uecblock>p:nth-child(1)::before {
    content: "U.E.C.";
    background: repeating-linear-gradient(-45deg, #360509, #360509 4px, #ff1428 5px, #ff1428 5px);
    font-weight: 600;
    font-size: 200%;
    text-align: center;
    margin-bottom: 1.5rem;
    padding-bottom: 0.8rem;
    border-bottom: dotted 0.2rem #FF1428;
    max-width: 49rem;
    margin-left: auto;
    margin-right: auto;
    display: flex;
    flex-direction: column;
    align-content: stretch;
    align-items: center;
}
 
.uecblock>p:nth-child(1)::after {
    content: "Unbound by fear, united by bravery.";
    font-weight: 600;
    font-size: 75%;
    text-align: center;
    margin-top: -4.25rem;
    padding-bottom: 0.3rem;
    max-width: 49rem;
    margin-left: auto;
    margin-right: auto;
    display: flex;
    flex-direction: column;
    align-content: stretch;
    align-items: center;
}
 
.uecblock>p:nth-child(2) {
    margin-top: 4rem;
}
 
.cbsblock{
    box-shadow: 0 5px 8px rgba(0, 0, 0, 0.5);
    background-image: url(http://ru-backrooms-wiki.wikidot.com/local--files/theme:cbs-theme/pochemu.png);
    background-size:auto 7rem;
    background-position: center bottom;
    background-repeat:no-repeat;
    color:rgb(25, 20, 16);
    margin: 1rem 0.2rem;
    padding: 0.2rem 1rem 8rem 1rem;
    display: block;
    position: relative;
    background-color: rgb(225,225,225);
    border-left: solid 0.3rem #000000;
    border-bottom: solid 0.5rem #000000;
    border-top-left-radius: 0.3rem;
    border-top-right-radius: 1rem;
    border-bottom-right-radius: 0.5rem;
    border-bottom-left-radius: 0.3rem 0.5rem;
    }
 
.cbsblock>p:nth-child(1)::before {
    content: "CBS Database";
    background: repeating-linear-gradient(-30deg,rgba(0, 0, 0, 0.8),rgba(100, 100, 100, 1)70px);
    font-family: 'CKTKkingkong', sans-serif;
    font-weight: bold;
    font-size: 200%;
    text-align: center;
    margin-bottom: 1.5rem;
    padding-bottom: 0.8rem;
    border-bottom: solid 0.2rem #000000;
    max-width: 49rem;
    margin-left: auto;
    margin-right: auto;
    display: flex;
    flex-direction: column;
    align-content: stretch;
    align-items: center;
    color:white;
}
 
.cbsblock>p:nth-child(1)::after {
    content: "The whole world's a theater, and we are in its backstage.";
    font-weight: 600;
    font-size: 75%;
    text-align: center;
    margin-top: -4.25rem;
    padding-bottom: 0.3rem;
    max-width: 49rem;
    margin-left: auto;
    margin-right: auto;
    display: flex;
    flex-direction: column;
    align-content: stretch;
    align-items: center;
    color:white;
}
 
.cbsblock>p:nth-child(2) {
    margin-top: 4rem;
}
```

[- Hide code](javascript:;)

Footnotes

[1](javascript:;). And here's a footnote!

[2](javascript:;). note

---

Source: [https://backrooms-wiki.wikidot.com/theme:meod](https://backrooms-wiki.wikidot.com/theme:meod)
