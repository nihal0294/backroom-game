---
title: "nostalgiaOS"
source: "https://backrooms-wiki.wikidot.com/theme:nostalgia-os"
retrieved_at: "2026-08-23T23:40:39+00:00"
license: CC-BY-SA-3.0
---

# nostalgiaOS

rating: +40[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

![Missing alt text.](https://backrooms-wiki.wdfiles.com/local--files/theme:nostalgia-os/nOSimg0.png)

bliss

this theme was originally created by

it was remade by :3

this is a general use theme. anyone can use it for anything!

to use it, put the following code in ya page:

[[include :backrooms-wiki:theme:nostalgia-os]]

heh

# examples

if ya wanna make a horizontal line, just put 5 hyphens in a row! see below:

---

if ya put little wacky plus symbols at the beginning of words, it shows up as titles! though i don't like using these because i hate math

[[+] titles](javascript:;)

[[-] titles](javascript:;)

# beegist title

## beeg title

### medium title

#### smol title

##### tiny boy

###### baby aww so cute

okay so these cool things are tabs. you can use them for cool stuff

- [*tabultor*](javascript:;)
- [*tabulationj*](javascript:;)
- [*loingo tab*](javascript:;)
- [*empty tab*](javascript:;)
- [*empty taj*](javascript:;)
- [*empty tab*](javascript:;)
- [*empty tab*](javascript:;)
- [*empty tab*](javascript:;)
- [*empty tab*](javascript:;)

lore ipum

tabs tabs tabs tabs tabs tabs tabs tabs tabs tabs

we're no strangers to love  
you know the rules and so do i  
a full commitment's what I'm thinking of  
you wouldn't get this from any other guy  
i just wanna tell you how I'm feeling  
gotta make you understand  
never gonna give you up  
never gonna let you down  
never gonna run around and desert you  
never gonna make you cry  
never gonna say goodbye  
never gonna tell a lie and hurt you

mountain dew !!!!

MLG 360 N0SCOP3

electronic dance music electronic dance music electronic dance music electronic dance music electronic dance music electronic dance music electronic dance music electronic dance music electronic dance music electronic dance music electronic dance music electronic dance music electronic dance music electronic dance music electronic dance music electronic dance music electronic dance music electronic dance music electronic dance music electronic dance music

> this is a block qoute you do it by using the >  
> text
>
> ---
>
> line
>
> > nested block qote
> >
> > > more[1](javascript:;)

| table table | table |
| --- | --- |
| table | table |
| this isnt a real table its just an arbitrary name (or not idk) | |

---

[[+] credits](javascript:;)

[[-] credits](javascript:;)

theme made by ya boi :]

Licensing:

> **Name:** Windows Logo (1992-2001).svg  
> **Author:** Microsoft  
> **License:** Public Domain  
> **Source Link:** [<https://commons.wikimedia.org/wiki/File:Windows_Logo_(1992-2001).svg>]

> **Name:** Untitled "Original Bliss Edit"  
> **Author:** foxy#9841 [848174228158808064]  
> **License:** CC0 Public Domain  
> **Source Link:** [<https://discordapp.com/channels/695664941247627274/714030848525205555/942411562919030814>]

> **Name:** Windows XP Blue Screen of Death (Forced).svg  
> **Author:** ScottSteiner  
> **License:** CC0 Public Domain  
> **Source Link:** [<https://commons.wikimedia.org/wiki/File:Windows_XP_Blue_Screen_of_Death_(Forced).svg>]

---

[theme code](javascript:;)

[Farewell.](javascript:;)

```
@import url('https://fonts.googleapis.com/css2?family=Cousine:ital,wght@0,400;0,700;1,400&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Tinos:ital,wght@0,400;0,700;1,400;1,700&display=swap');
 
/* NEW nostalgiaOS theme */
/* original by zask, rewritten by scutoid */
/* most code taken from the original so don't kill me */
 
:root {
   --theme-base: "black-highlighter";
   --theme-id: "nostalgia-os";
   --theme-name: "nostalgiaOS";
    --logo-image: url("http://backrooms-wiki.wdfiles.com/local--files/theme%3Anostalgia-os/nOSwindow.png");
    --header-title: "the backrooms";
    --header-subtitle: "b o o t i n g   ㅤu p . . . ";
 
    --header-text-shadow: 2px 2px 0 black;
    --header-text-shadow-hover: 2px 5px 0 black;
    --quote-shadow: 3px 3px 0 rgba(var(--black-monochrome),0.25);
    --footer-message: "Shut down..?";
 
/* Typefaces */
    --body-font: "MS Sans Serif", sans-serif;
    --header-font: serif;
    --title-font: serif;
    --UI-font: serif;
    --mono-font: 'Cousine', "Courier New", monospace;
 
   --pale-gray-monochrome: 230, 230, 230;
   --white-monochrome: 255, 255, 255;
   --light-gray-monochrome: 160, 160, 160;
   --gray-monochrome: 70, 70, 70;
   --dark-gray-monochrome: 50, 50, 50;
   --black-monochrome: 20, 20, 20;
   --bright-accent: 53, 165, 225;
   --medium-accent: 53, 165, 225;
   --dark-accent: 165, 165, 165;
   --pale-accent: 165, 165, 165;
 
   --link-color: 53, 165, 225;
   --hover-link-color: 53, 165, 225;
 
   --ui-button-bg: 200, 200, 200;
 
   --taskbar-gradient: linear-gradient(180deg, rgb(var(--gray-monochrome)) 0, rgb(var(--gray-monochrome)) 1px, rgb(var(--white-monochrome)) 1px, rgb(var(--white-monochrome)) 3px, rgb(var(--light-gray-monochrome)) 3px, rgb(var(--light-gray-monochrome)) 100%);
 
    /* Box-Shadow 1px Borders */
    --box-border-bottom: 4px 4px 0 0 rgba(0, 0, 0, 0.2);
    --box-border-top: 4px 4px 0 0 rgba(0, 0, 0, 0.2);
    --box-border-left: 4px 4px 0 0 rgba(0, 0, 0, 0.2);
    --box-border-right: 4px 4px 0 0 rgba(0, 0, 0, 0.2);
    --box-border-all: 4px 4px 0 0 rgba(0, 0, 0, 0.2);
}
 
body {
    color: #000000;
    font-size: 14px;
    image-rendering: pixelated;
    word-break: unset;
    --themeColor: #35A5E1;
    --accentColor: #35A5E1;
    text-align: justify;
}
 
#skrollr-body {
    position: absolute;
    top: 0;
    left: 0;
    background-image: url("http://backrooms-wiki.wdfiles.com/local--files/theme%3Anostalgia-os/nOSwallpaper.gif");
    background-repeat: repeat-x;
    background-size:  inherit;
}
 
#header h1 a {
    font-family: sans-serif;
}
 
.scp-image-block {
    box-shadow: 4px 4px 0 0 rgba(0, 0, 0, 0.2);
    border-radius: 0;
    margin: 0 2em 1em;
    background: #ffffff;
}
 
.scp-image-block .scp-image-caption {
background-color: var(--bright-accent);
color: black;
}
 
#page-title, h1, h2, h3, h4, h5, h6 {
    color: rgb(var(--bright-accent));
    text-shadow: 2px 2px 0 rgba(var(--black-monochrome),0.25);
}
 
:is(blockquote, .blockquote, div.blockquote, [class*="blockquote"]) {
    border: #EEE outset 2px;
    background-color: #C0C0C0;
    color: black;
    box-shadow: var(--quote-shadow);
}
 
#page-title::after, .meta-title::after {
    display: none;
}
 
#page-title, .meta-title {
    margin-bottom: 0.5em;
    justify-content: center;
    border-bottom: solid 1px rgb(var(--light-gray-monochrome));
    padding-bottom: 5px;
}
 
:not(.page-rate-widget-box):not(#search-top-box-form) > .btn, :not(.page-rate-widget-box):not(#search-top-box-form) > .button, :not(.page-rate-widget-box):not(#search-top-box-form) > .owindow .button-bar a, :not(.page-rate-widget-box):not(#search-top-box-form) > button, :not(.page-rate-widget-box):not(#search-top-box-form) > div.buttons input, :not(.page-rate-widget-box):not(#search-top-box-form) > input.button, .page-rate-widget-box {
    border: #eee outset 2px;
    box-shadow: var(--quote-shadow) !important;
}
 
.page-rate-widget-box { background: rgb(var(--ui-button-bg)); }
 
#footer {
    border: #eee outset 2px;
}
 
.yui-navset {
    box-shadow: var(--quote-shadow);
}
```

Footnotes

[1](javascript:;). foot note

---

Source: [https://backrooms-wiki.wikidot.com/theme:nostalgia-os](https://backrooms-wiki.wikidot.com/theme:nostalgia-os)
