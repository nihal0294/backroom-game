---
title: "Los Panaderos"
source: "https://backrooms-wiki.wikidot.com/theme:los-panaderos"
retrieved_at: "2026-08-23T23:41:21+00:00"
license: CC-BY-SA-3.0
---

# Los Panaderos

rating: +3[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

This theme was created by   
To import this theme to your page, put the following text anywhere inside it:

[[include :backrooms-wiki:theme:los-panaderos]]

# Examples

![Missing alt text.](http://backrooms-wiki.wdfiles.com/local--files/val/IMG_3382.jpeg)

Oh hey, what’s Val doing here?

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
- [*text style*](javascript:;)
- [*links*](javascript:;)
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

This is a long tab. It contains a lot of text.[1](javascript:;)

**bold**  
*italic*  
Asuperscript  
Bsubscript  
Underline.  
striketrough .  
as long as we don’t forget.

[working link](https://backrooms-wiki.wikidot.com/val) [dead link](https://backrooms-wiki.wikidot.com/dead-link)

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

[[div class="lightblock"]]

[[/div]]

[[div class="styled-quote"]]

[[/div]]

[[div class="dark-styled-quote"]]

[[/div]]

---

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
@import url('https://fonts.googleapis.com/css2?family=Nunito&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Nunito:ital@1&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Nunito:wght@700&display=swap');
@import url('https://fonts.googleapis.com/css2?family=IBM+Plex+Mono:wght@300&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Anek+Kannada:wght@500&display=swap');
 
:root {
  --theme-base: "black-highlighter";
  --theme-id: "pan-theme";
  --theme-name: "Los Panaderos";
 
  --header-title: "Los Panaderos";
  --header-subtitle: "As long as we don’t forget";
 
  /* Typefaces */
  --body-font: 'Nunito', sans-serif;
  --header-font: 'Anek Kannada', sans-serif;
  --title-font: 'Anek Kannada', sans-serif;
  --mono-font: 'IBM Plex Mono', monospace;
 
   /* Standard Colors */
  --pale-gray-monochrome: 230, 193, 167;
  --pale-accent: 99, 81, 47;
  --bright-accent: 99, 56, 44;
  --medium-accent: 189, 79, 99;
  --dark-accent: 130, 62, 35;
  --alt-accent: 189, 79, 99;
  --gray-monochrome: 64, 28, 18;
  --white-monochrome: 255, 225, 204;
  --light-gray-monochrome: 56, 44, 37;
  --dark-gray-monochrome: 161, 104, 87;
  --black-monochrome: 33, 22, 19;
  --thing: 255, 225, 204;
  --bread-style: 125, 78, 77;
 
  --swatch-topmenu-border-color: 0, 0, 0;
  --swatch-topmenu-bg-color: var(--bright-accent);
  --swatch-border-color: 50, 15, 2;
  --border-styling: outset 2px rgb(var(--swatch-border-color));
   --darker-accent: 43, 24, 15;
 
  --link-color: var(--alt-accent);
  --link-color-bright: var(--pale-accent);
  --hover-link-color: var(--bread-style);
  --newpage-color: 129, 81, 206;
  --visited-link-color: 130, 62, 35;
  --swatch-menubg-color: 234, 204, 185;
  /* Box-Shadow 1px Borders */
  --box-border-bottom: 4px 4px 0 0 rgba(0, 0, 0, 0.2);
  --box-border-top: 4px 4px 0 0 rgba(0, 0, 0, 0.2);
  --box-border-left: 4px 4px 0 0 rgba(0, 0, 0, 0.2);
  --box-border-right: 4px 4px 0 0 rgba(0, 0, 0, 0.2);
  --box-border-all: 4px 4px 0 0 rgba(0, 0, 0, 0.2);
 
--rating-module-button-color: var(--dark-gray-monochrome);
    --rating-module-button-plus-color: 0, 200, 0;
    --rating-module-button-negative-color: 198, 33, 33;
    --rating-module-button-cancel-color: 180, 180, 180;
    --rating-module-button-credit-color: 128, 56, 70;
    --rating-module-text-color: var(--alt-accent);
    --rating-module-text-hover-color: var(--gray-monochrome);
 
}
 
#skrollr-body {
   width: 100%;
  position: absolute;
  top: 0;
  left: 0;
  background-image: url("http://backrooms-wiki.wdfiles.com/local--files/theme%3Alos-panaderos/Empanada");
  background-repeat: repeat;
  background-size: 100%;
}
 
#container {
   background-image: none;
}
 
.page-rate-widget-box .rateup,
.page-rate-widget-box .ratedown {
    background-color: rgb(var(--dark-accent));
    border-top: none;
    border-bottom: none;
}
.page-rate-widget-box .rateup a,
.page-rate-widget-box .ratedown a {
    background: transparent;
    color: rgb(var(--pale-gray-monochrome));
}
.page-rate-widget-box .cancel {
    background: transparent;
    background-color: rgb(var(--dark-accent));
    border: none;
}
 
.page-rate-widget-box .cancel a {
    color: rgb(var(--dark-accent));
}
 
#account-topbutton {
  border-color: rgb(var(--gray-monochrome));
}
 
#account-options>ul>li a:hover {
   color: rgb(var(--pale-accent));
}
 
#account-options {
  background: rgb(var(--thing));
  border-color: rgb(var(--pale-accent));
  color: rgb(var(--white-monochrome));
}
 
#login-status {
    color: rgb(var(--black-monochrome));
}
 
#login-status a {
   color: rgb(var(--gray-monochrome));
}
 
#login-status ul a {
    color: rgb(var(--bread-style));
}
 
#header, #top-bar {
   background-attachment: scroll;
}
 
#header {
   background-image: none;
    color: rgb(var(--dark-accent));
}
 
#footer {
   color: rgb(var(--gray-monochrome));
}
 
a.newpage {
   background: transparent;
   text-decoration: none
}
 
a.newpage {
   color: rgb(var(--newpage-color))
}
 
#search-top-box-input:hover,
#search-top-box-input:focus {
    background: rgba(var(--gray-monochrome));
}
 
#page-title {
    border-color: rgb(var(--light-gray-monochrome));
    color: rgb(var(--dark-accent))!important;
    font-size: 3rem;
}
 
#header h1, #header h1 a {
  font-size: 150%;
}
 
#header h2, #header h2 span, #header h2 span::before {
  font-size: 110%;
}
 
#page-title {
  color: rgb(var(--alt-accent));
}
 
h1,h2,h3,h4,h5,h6 {
  color: rgb(var(--bread-style));
}
 
blockquote {
   box-shadow: 0.2rem 0.4rem 1.2rem rgba(0,0,0,.25);
}
 
.styled-quote {
   background-color:rgb(var(--alt-accent));
   border-left: 0.5rem solid rgba(var(--gray-monochrome));
   color:rgb(var(--pale-gray-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.2rem 0.4rem 1.2rem rgba(0,0,0,.25);
}
 
.styled-quote a{
   color: rgb(var(--white-monochrome));
}
 
.dark-styled-quote {
   background-color:rgb(var(--bread-style));
   border-left: 0.5rem solid rgba(var(--gray-monochrome));
   color:rgb(var(--pale-gray-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.2rem 0.4rem 1.2rem rgba(0,0,0,.25);
}
 
.lightblock {
   background-color:rgb(var(--white-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.8rem 1.2rem rgba(0,0,0,.25);
}
 
.darkblock {
   background-color:rgb(var(--bread-style));
   color:rgb(var(--pale-gray-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.8rem 1.2rem rgba(0,0,0,.25);
}
```

[- Close](javascript:;)

Footnotes

[1](javascript:;). This is a long tab… wait this is at the bottom now. Also, made the art you see on the page. CC BY SA 3.0 license, all that jazz.

---

Source: [https://backrooms-wiki.wikidot.com/theme:los-panaderos](https://backrooms-wiki.wikidot.com/theme:los-panaderos)
