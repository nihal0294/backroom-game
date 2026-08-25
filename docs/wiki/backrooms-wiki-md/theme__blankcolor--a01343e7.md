---
title: "Blankcolor"
source: "https://backrooms-wiki.wikidot.com/theme:blankcolor"
retrieved_at: "2026-08-23T23:42:31+00:00"
license: CC-BY-SA-3.0
---

# Blankcolor

rating: +26[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

This theme was created by chrono72.

To import this theme to your page, put the following text anywhere inside it:

[[include :backrooms-wiki:theme:blankcolor]]

To change the color of this theme, paste the following code after the one given and change the color values to what your color is. (The second accent should be a darker shade of the first accent in order)

[[module css]]  
:root {  
--firstAccent: RGB, VALUES, HERE;  
--secondAccent: RGB, VALUES, HERE;  
}  
[[/module]]

# Examples

![{$alt}](https://backrooms-wiki.wdfiles.com/local--files/theme:blankcolor/example.png)

Changing the color of the theme

---

![Missing alt text.](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/Khrenovina-sauce.jpg/800px-Khrenovina-sauce.jpg)

SÄÜS (DELICACY)

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

---

[[div class="lightblock"]]

[[/div]]

[[div class="styled-quote"]]

[[/div]]

---

SÄÜ5

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
@import url(https://backrooms-wiki.wdfiles.com/local--code/component%3Apatch/1);
:root {
    --firstAccent: 69, 226, 50;
    --secondAccent: 31, 134, 19;
 
   --swatch-headerh1-color: 255, 255, 255;
   --swatch-headerh2-color: 255, 255, 255;
 
    --white-monochrome: 32, 32, 32;
    --pale-gray-monochrome: 39, 39, 39;
    --light-gray-monochrome: var(--firstAccent);
    --gray-monochrome: var(--secondAccent);
    --black-monochrome: var(--firstAccent);
    --bright-accent: 148, 136, 126;
    --medium-accent: 39, 39, 39;
    --dark-accent: var(--secondAccent);
    --pale-accent: 140, 136, 126;
    --swatch-topmenu-border-color: var(--medium-accent);
    --link-color: 230, 23, 68;
    --hover-link-color: 230, 23, 68;
    --background-gradient-distance: 0rem;
    --gradient-header: linear-gradient(to bottom, rgba(0,0,0) 0%, rgba(var(--black-monochrome), 0.90) 100% );
    --swatch-text-secondary-color: 255, 255, 255;
    --swatch-text-primary-color: 255, 255, 255;
}
 
#header {
    --swatch-headerh1-color: 255, 255, 255;
    --swatch-headerh2-color: 255, 255, 255;
}
 
#footer {
    background: rgb(var(--pale-gray-monochrome,100,3,15));
}
 
#skrollr-body {
    background-image: none;
}
 
#top-bar>ul>li>:after, #top-bar>ul>li>:before {
    position: absolute;
    transition: width .3s cubic-bezier(.4,0,.2,1);
    background-color: rgba(var(--black-monochrome),.5);
    width: 0;
    height: .1875rem;
    pointer-events: none;
    content: " ";
}
 
#header::before {
    content: "";
    margin-top: -13px;
    position: absolute;
    height: 100%;
    width: 100%;
    left: 0;
    top: 0;
    background-image: var(--logo-image);
    background-size: auto 16rem;
    background-position: center;
    background-repeat: no-repeat;
    opacity: 0.5;
}
div#page-options-bottom-2 > a, div#page-options-bottom > a {
    border: 2px solid rgb(var(--black-monochrome));
    background-color: rgb(var(--pale-gray-monochrome));
}
div#page-options-bottom-2 > a:hover, div#page-options-bottom > a:hover {
    border: 2px solid rgb(var(--black-monochrome));
    background-color: rgb(var(--white-monochrome));
}
.owindow .button-bar a, a.button, button, div.buttons input, file, input.button {
    border: .125rem solid rgba(var(--black-monochrome,48,48,52),1);
    background-color: rgba(var(--pale-gray-monochrome,100,3,15),1);
}
.owindow .button-bar a:hover, a.button:hover, button:hover, div.buttons input:hover, file:hover, input.button:hover {
    border: .125rem solid rgba(var(--black-monochrome,48,48,52),1);
    background-color: rgba(var(--white-monochrome,100,3,15),1);
}
.top-box {
   filter: grayscale(100%);
}
.bottom-box {
   filter: grayscale(100%) brightness(2);
}
.scp-image-block.block-right {
    border-radius: 5px;
    background-color: rgb(var(--medium-accent));
    padding: 5px;
    border: 2px solid rgb(var(--black-monochrome));
    width: 300px;
}
 
hr {
    height: 0;
}
 
.yui-navset .yui-nav a:focus, .yui-navset .yui-nav a:hover {
    background-color: rgb(var(--white-monochrome));
    color: rgb(var(--black-monochrome));
}
 
/*#top-bar div.mobile-top-bar>ul>li>a:after, #top-bar div.mobile-top-bar>ul>li>a:before, #top-bar div.top-bar>ul>li>a:after, #top-bar div.top-bar>ul>li>a:before {
    background-color: rgba(var(--black-monochrome),.5);
}*/ /*what does this even do*/
```

[- Close](javascript:;)

---

Source: [https://backrooms-wiki.wikidot.com/theme:blankcolor](https://backrooms-wiki.wikidot.com/theme:blankcolor)
