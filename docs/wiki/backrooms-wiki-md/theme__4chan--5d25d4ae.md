---
title: "4chan"
source: "https://backrooms-wiki.wikidot.com/theme:4chan"
retrieved_at: "2026-08-23T23:35:08+00:00"
license: CC-BY-SA-3.0
---

# 4chan

[[a / c / g / k / m / o / p / v / vg / vm / vmg / vr / vrpg / vst / w] [vip / qa] [cm / lgbt / x / xs] [Edit]](index.md)                                              [Settings] [Search] [Mobile] [Home]

**/x/ - Paranormal**  
![line.png](http://backrooms-wiki.wikidot.com/local--files/fragment:4chan/line.png)  
  
[[Start a New Thread](http://backrooms-wiki.wikidot.com/forum/t-14866016/theme:4chan)]

  
![line.png](http://backrooms-wiki.wikidot.com/local--files/fragment:4chan/line.png)

**Anonymous** 05/14/19(Tue)20:29:30 No.22672042  
**The Backrooms**

![Thebackrooms.jpg](http://backrooms-wiki.wdfiles.com/local--files/level-0/Thebackrooms.jpg)

If you're not careful and you noclip out of reality in the wrong areas, you'll end up in the Backrooms, where it's nothing but the stink of old moist carpet, the madness of mono-yellow, the endless background noise of fluorescent lights at maximum hum-buzz, and approximately six hundred million square miles of randomly segmented empty rooms to be trapped in

God save you if you hear something wandering around nearby, because it sure as hell has heard you

>>

**Manganian** 05/14/19(Sat)20:49:25 No.2314720 ▶ >>49760488

>>49760284 (OP)  
To use this theme include: **[[include :backrooms-wiki:theme:4chan]]**

rating: +39[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

---

# General information

Theme made by . It resembles famous 4chan board, /x/ - Paranormal, where The Backrooms creepypasta has been written. Made especially for [Backrooms wiki](index.md), [Wanderers' Library](index.md) and [SCP wiki](index.md).

Thanks to Ross Dear for help with code and greenlighting theme.

To import this theme to your page, put the following text anywhere inside it:

Add:  
  
[[include :backrooms-wiki:theme:4chan]]

If you want to remove the title, put the following text anywhere inside it:

Add:  
  
[[module css]]  
#page-title { display: none; }  
[[/module]]

# Fonts

Font used in the header (it's actually invisible), title and body is Kanit.

Font used in monospace is Space Mono.

To see page buttons (bottom of page), add to URL /norender/true/1.

---

[Fold](javascript:;)[Unfold](javascript:;)

Table of Contents

[How to use Chan Divs](index.md)

[Thread](index.md)

[Thread container](index.md)

[File](index.md)

[Post info](index.md)

[Post content](index.md)

[Replies](index.md)

[Reply container](index.md)

[Reply arrows](index.md)

[Reply](index.md)

[Other](index.md)

[Summary](index.md)

[Post template:](index.md)

[Examples](index.md)

## How to use Chan Divs

This theme supports using divs that resembles 4chan posts. Code for it is modified CSS code of [SCP-4991](https://scp-wiki.wikidot.com/scp-4991) by

### Thread

In this section I will explain how to use thead divs to make it look like 4chan.

#### Thread container

This thing needs to be first in thread code to create that blue background. Do not nest it. It should be used once per thread.

```
[[div class="chan thread-container"]]
(there should be other divs)
[[/div]]
```

(there should be other divs)

#### File

File is responsible for the text on top of thread/reply. Edit **IMAGE-NUMBERS.png** to your custom text. **[SIZE]** should be a number and **[X]** and **[Y]** are width and height of file. Note that it doesn't make an image visible, it's just raw text.  
After putting that div, you can add normal image module. ( [[f<image URL width="Xpx"]] )

```
[[div class="chan-file"]]
File: ##0000EE|__IMAGE-NUMBERS.png__## ([SIZE] KB, [X]x[Y])
[[f<image URL width="Xpx"]]
[[/div]]
```

File: 66725362.png (213 KB, 385x398)

![Apis_mellifera_Western_honey_bee.jpg](https://upload.wikimedia.org/wikipedia/commons/4/4d/Apis_mellifera_Western_honey_bee.jpg)

#### Post info

This div shows standard post info: User, date, time and post ID.

```
[[div class="post-info"]]
##117743|**[USERNAME]**## MM/DD/YY(Day)HH:MM:0SS No.NUMBERS
[[/div]]
```

**Anonymous** 04/08/19(Sat)11:27:17 No.6546265

#### Post content

Content of a post. Greentext can be added by ##789922|>TEXT##

```
[[div class="post-content"]]
##789922|>be me##
##789922|>me bee##
beee
[[/div]]
```

>be me  
>me bee  
beee

### Replies

You can also add replies to threads.

#### Reply container

```
[[div class="reply-container"]]
(there should be other divs)
[[/div]]
```

(there should be other divs)

#### Reply arrows

Just arrows :P. They are are added after "reply-container".

```
[[div class="reply-arrows"]]
@@>>@@
[[/div]]
```

>>

#### Reply

To create reply (it has to be in reply-container) you have to include reply div, post-info div, and post-content div.

```
[[div class="chan thread-container"]] [!-- This thing needs to be here to create that blue background. --]
[[div class="reply"]]
[[div class="post-info"]]
##117743|**[USERNAME]**## MM/DD/YY(Day)HH:MM:0SS No.NUMBERS ##000080|▶ __@@>>@@NUMBERS__##
[[/div]]
[[div class="post-content"]]
##000080|__@@>>@@NUMBERS (OP)__##
Text
[[/div]]
[[/div]]
[[/div]]
```

**Anonymous** 05/14/19(Tue)20:31:20 No.6227552 ▶ >>3663722

>>5367282 (OP)  
Text

So, after adding thread-container, reply-container, reply-arrows, reply, post-info and post-content it should look like this:

```
[[div class="chan thread-container"]] [!-- This thing needs to be here to create that blue background --]
[[div class="reply-container"]]
[[div class="reply-arrows"]]
@@>>@@
[[/div]]

[[div class="reply"]]
[[div class="post-info"]]
##117743|**[USERNAME]**## MM/DD/YY(Day)HH:MM:0SS No.NUMBERS ##000080|▶ __@@>>@@NUMBERS__##
[[/div]]

[[div class="post-content"]]
##000080|__@@>>@@NUMBERS (OP)__##
Text.
[[/div]]
[[/div]]
[[/div]]
[[/div]]
```

>>

**Anonymous** 04/09/16(Sat)13:15:20 No.49760463 ▶ >>49760488

>>49760284 (OP)  
This is a reply.

### Other

Other, not neccesary divs.

#### Summary

```
[[div class="summary"]]
X replies omitted. Click here to view.
[[/div]]
```

10 replies omitted. Click here to view.

## Post template:

```
[[div class="chan thread-container"]]
[[div class="chan-file"]]
File: ##0000EE|__IMAGE-NUMBERS.png__## ([SIZE] KB, [X]x[Y])
[[f<image link.png width="230px"]]
[[/div]]
[[div class="post-info"]]
##117743|**Anonymous**## MM/DD/YY(Day)HH:MM:0SS No.NUMBERS
[[/div]]
[[div class="post-content"]]
##789922|>greentext##
Text
[[/div]]
[[div class="reply-container"]]

[[/div]]
[[div class="reply-arrows"]]
@@>>@@
[[/div]]
[[div class="reply"]]
[[div class="post-info"]]
##117743|**Anonymous**## MM/DD/YY(Day)HH:MM:SS No.NUMBERS ##000080|▶ __@@>>@@NUMBERS__##
[[/div]]
[[div class="post-content"]]
##000080|__@@>>@@NUMBERS (OP)__##
##789922|>greentext##
Text
[[/div]]
[[/div]]
[[/div]]
```

File: 636272462.png (136 KB, 402x398)

![Apis_mellifera_Western_honey_bee.jpg](https://upload.wikimedia.org/wikipedia/commons/4/4d/Apis_mellifera_Western_honey_bee.jpg)

**Anonymous** 06/13/22(Fri)21:36:49 No.63728362

>be me  
>me bee

Profit

>>

**Anonymous** 06/10/22/(Fri)21:37:42 No.6263184 ▶ >>2748624

>>62555263 (OP)  
Mmmmmm bee

# Examples

![Missing alt text.](http://pl-backrooms-wiki.wdfiles.com/local--files/start/backrooms-pl-bgtr.png)

mmmmm

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

[[div class="lightblock"]]

[[/div]]

[[div class="styled-quote"]]

[[/div]]

INSERT TEXT  
[[div class="titleblock"]]  
[[span class="titlebox"]]INSERT TEXT[[/span]]

[[/div]]

[+ Theme source code](javascript:;)

[- Theme source code](javascript:;)

```
/*-------------------------13 June 2022------------------------*\
 ------------------------- [4chan Theme]--------------------------
--------------------------[by Manganian]------------------------
-----------based on Liminal Theme by Lynch and Etoile----------
\*----For Backrooms Wiki, SCP Wiki and Wanderer's Library-------*/
 
/*Imports*/
@import url('https://fonts.googleapis.com/css2?family=Kanit&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Kanit&family=Space+Mono&display=swap');
@import url(https://backrooms-wiki.wdfiles.com/local--code/component%3Apatch/1);
 
:root {
    /*
    Basic Variables
    */
 
    /*Theme Name*/
    --theme-base: "black-highlighter";
    --theme-id: "4chan-theme";
    --theme-name: "4chan Theme";
    --footer-message: "/x/ - Paranormal"
 
    /*Header*/
        /* Placeholders */
    --logo-image: url("placeholder");
    --header-title: " ";
    --header-subtitle: " ";
 
        /* Fonts and colors */
    --body-font: 'Kanit', sans-serif;
    --header-font: 'Kanit', sans-serif;
    --title-font: 'Kanit', sans-serif;
    --mono-font: 'Space Mono', monospace;
 
    --white-monochrome: 238, 242, 254;
    --pale-gray-monochrome: 213, 218, 240;
 
    --light-gray-monochrome: 52, 52, 92;
    --gray-monochrome: 238, 242, 255;
    --black-monochrome: 0, 0, 0;
    --bright-accent: 52, 52, 92;
    --medium-accent: 52, 52, 92;
    --dark-accent: 52, 52, 92;
    --pale-accent: 52, 52, 92;
    --thing: 52, 52, 92; /* selected tab background */
    --niewiem: 238, 242, 255; /* niewiem - body background */
 
    --swatch-topmenu-border-color: var(--niewiem);
 
    --link-color: 171, 171, 171;
    --hover-link-color: 52, 52, 92;
 
    --background-gradient-distance: 0rem;
 
    --gradient-header: linear-gradient(to top, rgba(var(--niewiem)) 0%, rgba(var(--niewiem), 0.90) 100%);
    --diagonal-stripes: linear-gradient(transparent 0);
 
}
 
/* sd banner colours */
 
.sd-container {
   --sd-text:var(--white-monochrome);
   --sd-border:var(--black-monochrome);
   --sd-bullets:var(--medium-accent);
   --sd-symbol:var(--white-monochrome);
}
 
/*
Selectors and Classes
*/
/*
div#page-options-bottom-2>a, div#page-options-bottom>a,
div#page-options-bottom,
div#page-info,
*/
#login-status {
display: none;
}
 
#top-bar ul,
#top-bar {
    display: none;
}
 
#search-top-box {
display: none;
}
 
/*Title of the Page*/
 
#page-title {
    text: align-center;
    border-color: var(--niewiem);
    border-color: var(--ct_col_page-title-border);
    color: var(--dark-accent);
    color: #af0a0f;
    font-weight: normal;
}
 
#skrollr-body {
    width: 100%;
    position: absolute;
    top: 0;
    left: 0;
    background-image: url("https://backrooms-wiki.wdfiles.com/local--files/theme%3A4chan/4chanbg.png");
    background-repeat: repeat-x;
    background-size:  inherit;
}
 
#container {
   background-image: rgb(var(--niewiem))!important;
}
 
#header, #top-bar {
   background-attachment: scroll;
}
 
#header {
   background-image: none;
   height: 0px;
}
 
#header::before {
   content: " ";
   position: absolute;
   height: 120%;
   width: 100%;
   left: 0;
   top: 0;
   background-image: var(--logo-image);
   background-size: auto 16rem;
   background-position: center;
   background-repeat: no-repeat;
   opacity: 0.4;
}
 
#header h1, #header h1 a{
   --header-title: " ‎‎‎";
   font-size: 2.5rem;
   position: absolute;
   top: 0.05rem;
   margin: 0;
   width: 100%;
   display: flex;
   justify-content: center;
   z-index: 0;
   color: rgb(var(--black-monochrome));
   text-align: center;
}
 
#page-title::after, .meta-title::after, #page-title::before, .meta-title::before {
    content: " ";
    flex-grow: 1;
    height: 0.0625rem;
    background: rgb(var(--niewiem));
   height: 0px;
}
 
#header::before {
    content: " ";
    position: absolute;
    width: 100%;
    height: 100%;
    left: 0;
    top: 0.05rem;
    background-image: var(--logo-image);
    background-repeat: no-repeat;
    background-position: center 0;
    background-size: auto calc(var(--header-height-on-desktop) - 1.5rem);
    opacity: 0.8;
    pointer-events: none;
}
 
#header h1 a::before {
    text-shadow: .003rem 0.01rem 0.01rem #0c0c0c;
    line-height: 1;
    text-align: left;
    color: black;
    width: 1090px;
    height: 7px;
    font-size: 0.5rem;
 
}
 
#header h2 span::before {
    text-shadow: .003rem 0.01rem 0.01rem #0c0c0c;
    line-height: 1;
    text-align: left;
    color: black;
    width: 80px;
    height: 7px;
    font-size: 0.5rem;
 
}
 
h1 {
    font-size: 2rem;
    color:rgb(var(--dark-accent));
    line-height: 1
}
 
h2 {
    font-size: 1.8rem;
    color:rgb(var(--dark-accent));
    line-height: 1
}
 
h3 {
    font-size: 1.6rem;
    color:rgb(var(--dark-accent));
    line-height: 1
}
 
h4 {
    font-size: 1.4rem;
    color:rgb(var(--dark-accent));
    line-height: 1
}
 
h5 {
    font-size: 1.2rem;
    color:rgb(var(--dark-accent));
    line-height: 1
}
 
h6 {
    font-size: 1rem;
    color:rgb(var(--dark-accent));
    line-height: 1
}
 
a.newpage {
   background: transparent;
   text-decoration: none
}
 
a.newpage {
   color: rgb(var(--newpage-color))
}
 
/* DIVs */
blockquote {
   box-shadow: 0.2rem 0.4rem 1.2rem rgba(0,0,0,.25);
}
 
.styled-quote {
   background-color:rgb(var(--pale-gray-monochrome));
   border-left: 0.5rem solid rgba(var(--gray-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.2rem 0.4rem 1.2rem rgba(0,0,0,.25);
}
 
.dark-styled-quote {
   border-left: 0.5rem solid rgba(var(--pale-gray-monochrome));
   color:rgb(var(--white-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.2rem 0.4rem 1.2rem rgba(0,0,0,.25);
}
 
.dark-styled-quote a{
    color: rgb(var(--swatch-menubg-medium-color));
}
 
.lightblock {
   background-color:rgb(var(--white-monochrone));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.8rem 1.2rem rgba(0,0,0,.25);
}
 
.darkblock {
   background-color:rgb(var(--medium-accent));
   color:rgb(var(--white-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.8rem 1.2rem rgba(0,0,0,.25);
}
 
.darkblock a {
    color: rgb(var(--medium-accent));
}
 
.titleblock {
        background-color: rgb(var(--medium-accent));
        color: rgb(var(--niewiem));
        padding: 0.5rem 1rem 0.10rem;
        margin: 1.5rem 0rem 0.5rem 0rem;
        box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.5);
        border: solid rgb(var(--bright-accent)) 2px;
     }
 
     .titlebox{
       color: rgb(var(--niewiem));
       position: relative;
       top: -1.6rem;
       background-color: #6f7090;
       padding-right: 1rem;
       padding-top: 0.25rem;
       padding-bottom: 0.25rem;
       line-height: 0.1rem;
     }
 
/* ===Custom DIVs === */
     /* Bolded */
.bold600 {
  font-weight: 900;
}
 
/* 4CHAN */
.chan.thread-container {
  background-color: rgba(var(--niewiem));
  padding: 5px;
  font-family: arial,helvetica,sans-serif;
  color: #000;
  overflow: hidden;
  font-size: 1.1em;
}
 
.chan .post-content {
  margin-block-start: 1em;
  margin-block-end: 1em;
  margin-inline-start: 40px;
  margin-inline-end: 40px;
}
.chan .summary {
  color: #707070;
  margin-top: 10px;
}
.chan .reply-container {
  display: table;
}
.chan .reply-arrows {
  color: #E0BFB7;
  float: left;
  margin-right: 2px;
  margin-top: 9px;
  margin-left: 2px;
}
.chan .reply {
  background-color: rgba(var(--pale-gray-monochrome));
  border: 1px solid #b6c5d8;
  border-left: none;
  border-top: none;
  display: table;
  padding: 5px;
  margin: 4px 0;
}
 
.chan img {
  float: left;
  margin-left: 20px;
  margin-right: 20px;
  margin-top: 3px;
  margin-bottom: 5px;
}
.chan .chan-file > p,
.chan .post-info > p,
.chan .reply-arrows > p,
.chan .summary > p,
.post-content > p {
  margin: 0;
}
.chan .image-container {
  padding: 0;
}
 
@media (max-width: 479px) {
  .chan .reply-arrows {
    display: none;
  }
  .chan .post-content {
    margin: 0;
  }
  .chan .image-container {
    text-align: center;
  }
}
 
/* Yui */
.yui-navset .yui-nav .selected a,
.yui-navset .yui-nav .selected a:focus,
.yui-navset .yui-nav .selected a:hover {
    background-color: rgb(var(--thing));    
}
```

[+ Licensing](javascript:;)

[- Licensing](javascript:;)

Theme made by with help of , based on [Liminal Theme](component__theme--21bdca00.md) by [etoisle](etoisle.md) and Lynch, which is based on [BHL theme](https://scp-wiki.wikidot.com/theme:black-highlighter-theme) by .

[Code for chan divs](https://scp-wiki.wikidot.com/scp-4991) by licensed under CC BY-SA 3.0.

[Apis mellifera Western honey bee](https://commons.m.wikimedia.org/wiki/File:Apis_mellifera_Western_honey_bee.jpg) by [Andreas Trepte](index.md) is licensed under [CC BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/deed.en).

[BR-PL logo](http://pl-backrooms-wiki.wdfiles.com/local--files/start/backrooms-pl-bgtr.png) by is licensed under CC BY-SA 3.0. It has been posted first time on [this site](index.md).

---

Source: [https://backrooms-wiki.wikidot.com/theme:4chan](https://backrooms-wiki.wikidot.com/theme:4chan)
