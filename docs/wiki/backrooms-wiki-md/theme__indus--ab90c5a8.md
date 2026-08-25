---
title: "Indus"
source: "https://backrooms-wiki.wikidot.com/theme:indus"
retrieved_at: "2026-08-23T23:34:58+00:00"
license: CC-BY-SA-3.0
---

# Indus

rating: +23[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

This theme was co-created by , , and for the Industrialization Canon! Tab and table code was also used from 's themes, so credit to him as well. Lastly, I can thank for the header gradient code!

To import this theme into your page, but the following code anywhere inside it:

[[include :backrooms-wiki:theme:indus]]

---

# Examples

---

![Missing alt text.](http://backrooms-sandbox-2.wikidot.com/local--files/stellate-3-the-musical/brutal.jpg)

Industrialization, maybe.

[This link exists.](javascript:;)

[This link exists.](javascript:;)

[This link has already been visited.](theme__indus--ab90c5a8.md)

[This link doesn't exist.](https://backrooms-wiki.wikidot.com/this-link-doesn-t-exist)

# First Title

## Second Title

### Third Title

#### Fourth Title

##### Fifth Title

###### Sixth Title

- [*Not Empty Tab*](javascript:;)
- [*Not Empty Tab*](javascript:;)
- [*Long Tab*](javascript:;)
- [*This empty tab has a really long name. Maybe it prefers it this way, maybe not. It's a mystery.*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)

This is a tab view.

[huh, whats this?](javascript:;)

[Yahaha! you found me!](javascript:;)

and this is a collapsible!

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

| Why do | people assume |
| --- | --- |
| you know how to | make these tables |
| tho | |
| they're kinda janky, so… | |

[[div class="lightblock"]]

[[/div]]

[[div class="darkblock"]]

[[/div]]

---

#### The Title and Header font is Trispace.

The Body font is Roboto.  
The monospace font is IBM Plex Mono.

---

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
@import url(https://backrooms-wiki.wdfiles.com/local--code/component%3Apatch/1);
 
@import url('https://fonts.googleapis.com/css2?family=Trispace:wght@500&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Roboto&display=swap');
@import url('https://fonts.googleapis.com/css2?family=IBM+Plex+Mono&display=swap');
 
:root {
   --theme-base: "black-highlighter";
   --theme-id: "liminal";
   --theme-name: "indus";
 
   --logo-image: url("http://backrooms-sandbox-2.wikidot.com/local--files/stellate-3-the-musical/ind4.png");
   --header-title: "INDUSTRIALIZATION";
   --header-subtitle: "The World of Tomorrow.";
 
   --body-font: 'Roboto', sans-serif;
   --header-font: 'Trispace', sans-serif;
   --title-font: 'Trispace', sans-serif;
   --mono-font: 'IBM Plex Mono', monospace;
 
   --white-monochrome: 20, 16, 13;
   --pale-gray-monochrome: 20, 16, 13;
   --dark-gray-monochrome: 20, 16, 13;
   --light-gray-monochrome: 73, 148, 183;
   --gray-monochrome: 73, 148, 183;
   --black-monochrome: 202, 166, 71;
   --bright-accent: 202, 166, 71;
   --medium-accent: 130, 102, 29;
   --dark-accent: 202, 166, 71;
   --pale-accent: 73, 148, 183;
 
   --swatch-topmenu-border-color: var(--pale-gray-monochrome);
   --swatch-topmenu-bg-color: var(--white-monochrome);
 
   --link-color: 73, 148, 183;
   --visited-link-color: 43, 123, 149;
   --hover-link-color: 43, 123, 149;
 
   --rating-module-button-plus-color: var(--black-monochrome);
   --rating-module-button-negative-color: var(--black-monochrome);
   --rating-module-button-cancel-color: var(--black-monochrome);
   --rating-module-button-credit-color: var(--black-monochrome);
 
   --diagonal-stripes: linear-gradient(transparent 0);
}
 
#skrollr-body {
    width: 100%;
    position: absolute;
    top: 0;
    left: 0;
    background-image: url("http://backrooms-sandbox-2.wikidot.com/local--files/stellate-3-the-musical/pls%20work%2C.png");
 background-repeat: repeat-x;
background-size: inherit;
}
 
/*removing dots 2*/
#container {
   background-image: none;
}
 
#header {
    --swatch-headerh1-color: 244, 240, 230;
    --swatch-headerh2-color: var(--swatch-headerh1-color);
}
 
#page-title{border-color: rgb(var(--light-grey-monochrome));}
 
div#page-options-bottom-2 > a, div#page-options-bottom > a {
   border-radius: 0em;
   -moz-border-radius: 0em;
   border: none;
}
 
#header, #top-bar {
   background-attachment: scroll;
}
 
#footer {
    color: rgb(var(--white-monochrome));
}
 
#header {
   background-image: none;
   --swatch-text-secondary-color: var(--black-monochrome);
}
 
#footer{
   color: rgb(var(--gray-monochrome));
}
 
#search-top-box-input:hover,
#search-top-box-input:focus {
    background: rgba(var(--gray-monochrome));
}
 
#login-status {
    color: rgb(var(--black-monochrome));
}
 
#login-status a {
    color: rgb(var(--black-monochrome));
}
 
#login-status ul a {
    color: rgb(var(--white-monochrome));
}
 
#account-topbutton {
    color: rgb(var(--black-monochrome));
}
 
/*imageblock shit*/
.scp-image-block .scp-image-caption {
    background-color: rgb(var(--white-monochrome));
    border: solid 2px rgb(var(--black-monochrome));
    padding: 2px 2px 2px 2px;
    font-size: 80%;
    font-weight: bold;
    text-align: center;
    width: 300px;
}
 
/*table - thanks viv*/
table.wiki-content-table th {
border: 1px solid rgb(var(--bright-accent)) !important;
background-color: rgb(var(--swatch-headerh1-color));
color: rgb(var(--white-monochrome));
}
 
/*div blocks*/
.lightblock {
   background-color: rgb(var(--black-monochrome));
   color: rgb(20, 16, 13);
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0 0 0;
   border: 0.2rem solid rgb(202, 166, 71);
}
 
.darkblock {
    background-color: rgb(var(--white-monochrome));
    color: rgb(var(--black-monochrome));
    padding: 0.01rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    box-shadow: 0 0 0 0;
    border: 0.2rem solid rgb(202, 166, 71);
}
 
.darkblock a {
color: rgb(var(--swatch-menubg-medium-color));
}
 
blockquote, .blockquote, [class*=blockquote], blockquote, div.blockquote {
    box-shadow: 0.05rem 0.1rem 0.3rem rgb(0 0 0 / 25%);
    color: rgb(var(--black-monochrome));
    background-color: rgb(var(--pale-grey-monochrome));
}
 
#top-bar div.top-bar > ul > li > a,
#top-bar div.mobile-top-bar > ul > li > a {
  color: rgb(var(--black-monochrome));
}
 
#license-area {
    --link-color: var(--black-monochrome);
    color: rgb(var(--black-monochrome));
}
 
/* ==SD CLASS CODE== */
 
.sd-container {
   --sd-text:var(--white-monochrome);
   --sd-symbol:var(--sd-text);
   --sd-bullets:202,166,71;
   --sd-border:202,166,71;
}
```

[- Close](javascript:;)

---

[Image Credit](javascript:;)

[Hide](javascript:;)

"Hayward Gallery Brutalism" by Hwu Gwilliam is marked with a CC BY 2.0 license.  
<https://www.flickr.com/photos/96081007@N00/8369105213>

Footnotes

[1](javascript:;). And here's a footnote!

---

Source: [https://backrooms-wiki.wikidot.com/theme:indus](https://backrooms-wiki.wikidot.com/theme:indus)
