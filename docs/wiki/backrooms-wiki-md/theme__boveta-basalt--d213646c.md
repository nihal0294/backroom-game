---
title: "Boveta Basalt Theme"
source: "https://backrooms-wiki.wikidot.com/theme:boveta-basalt"
retrieved_at: "2026-08-23T23:35:44+00:00"
license: CC-BY-SA-3.0
---

# Boveta Basalt Theme

```
/* The Boveta Archives Theme        */
/*                                  */
/*  [2026 Wikidot Theme]            */
/*  Version 0.8.1                   */
/*                                  */
/*  By neptunium153                 */
/*                                  */
/*  Built on Basalt                 */
 
@import url('https://fonts.googleapis.com/css2?family=Overpass+Mono:wght@300&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Aldrich&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Electrolize&display=swap');
 /* Simple Header Changes */
:root{
   --header-title: "THE BOVETA ARCHIVES";
   --header-subtitle: "PRESERVING THE PAST, CREATING THE FUTURE";
   --title-size: 1.37rem;
   --subtitle-size: 0.88rem;
   --logo: url(https://backrooms-wiki.wikidot.com/local--files/theme:boveta/cla);
 
   --header-font-primary: 'Electrolize';
   --UI-font-primary: 'Aldrich';
   --title-font-primary: 'Aldrich';
   --mono-font: 'Overpass Mono', monospace;
 
   --basalt-primary-color: 10, 10, 10;
   --basalt-secondary-color: 43, 5, 5;
   --basalt-tertiary-color: 64, 64, 64;
   --basalt-main-text-color: 235, 235, 235;
   --basalt-undertone: 147, 108, 110;
   --basalt-UI-dark-palette: 70, 70, 70;
   --basalt-bright-element-color: 150, 150, 150;
   --basalt-dark-element-color: var(--basalt-undertone);
   --basalt-focus-color: var(--basalt-undertone);
 
   --document-background-color: 245, 208, 198;
   --darkdocument-background-color: 36, 1, 0;
 
   --swatch-alternate-color: var(--general-border-color);
   --swatch-primary: var(--basalt-tertiary-color);
   --modal-header-bg: var(--basalt-secondary-color);
   --modal-header-stripe: var(--basalt-tertiary-color);
   --modal-header-txt: var(--basalt-main-text-color);
   --modal-bg: var(--basalt-secondary-color);
   --modal-body-text: var(--basalt-main-text-color);
   --swatch-text-secondary-color: var(--basalt-main-text-color);
 
   --randomgray: 40,40,40;
 
   --general-border-color: 100, 100, 100;
   --floatbox-background-color: var(--basalt-tertiary-color);
 
   --link-color: 237, 159, 159;
   --link-visited-color: 219, 168, 151;
   --link-newpage-color: 230, 153, 124;
   --scrollbar-thumb-color: 94, 79, 78;
   --tab-hover-background-color: 209, 161, 148;
   --footnote-background-color: var(--basalt-primary-color);
   --rate-module-text-color: var(--basalt-main-text-color);
   --rate-module-background-color: var(--basalt-secondary-color);
   --side-bar-unfolded-heading-text-color: var(--basalt-main-text-color);
   --side-bar-heading-text-color-hover: 255,255,255;
}
@media (max-width:767px) {
  :root {
    --subtitle-size: 0.67rem;
  }
}
  /* Something to do with the page title */
 
#page-title, .meta-title {
  color: rgb(var(--basalt-main-text-color));
  font-size: 2rem;
}
 
#header {
    background: linear-gradient(90deg, rgb(var(--basalt-secondary-color)) 0%, rgb(var(--basalt-secondary-color)) 35%, rgba(0, 0, 0, 0) 100%), url(http://backrooms-wiki.wikidot.com/local--files/theme:boveta-basalt/bannernewer);
    background-size: auto;
    background-repeat: repeat;
    background-position: top right;
}
 
#header h1 a::before {
    filter: drop-shadow(0px 0px 6px rgba(0,0,0, 0.5));
    padding: 1rem;
}
 
@media (max-width: 768px) {
    #header h1 a span {
        transform: scaleX(.85);
        transform-origin: left center;
    }
}
 
/* unintelligible moose noises */
 
.amylaseblock {
    background: repeating-linear-gradient(-135deg, #2e0000, #2e0000 4px, #a70000 5px, #a70000 5px);
    display: block;
    margin-inline: auto;
    margin-block: 1.4rem;
    padding-inline: 1.5rem;
    padding-block: 0.5rem;
    background-color: rgb(var(--basalt-primary-color));
    border: solid 0.2rem rgb(107, 0, 0);
    color: rgb(var(--basalt-main-text-color));
}
 
div.notation {
    background-color: rgb(var(--basalt-tertiary-color));
    border-left: solid 0.25rem rgb(var(--randomgray));
    border-right: solid 0.25rem rgb(var(--randomgray));
}
div.papernote {
    background-color: rgb(51,18,18);
}
#page-content div.floatbox {
    border-radius: 3px;
    border: solid 0.2rem rgb(var(--randomgray));
}
/* time for the 219318283712 memos */
div[class$="_memo"] {
    position: relative;
    background-color: red;
    background-image:
      linear-gradient(rgba(var(--basalt-primary-color), 0.7)),
      var(--memo-bg-image),
      linear-gradient(rgba(var(--basalt-primary-color), 1));
    background-size: 100%, 25%, 100%;
    background-position: center;
}
div.main_memo {
    --memo-heading: "FROM THE GOVERNMENT";
    --memo-color: var(--basalt-bright-element-color);
    --memo-bg-image: url(http://backrooms-wiki.wikidot.com/local--files/theme:boveta/logo);
}
 
div.party_memo {
    --memo-heading: "FROM THE BOVETAN HUMANITY PARTY";
    --memo-color: var(--basalt-bright-element-color);
    --memo-bg-image: url(http://backrooms-wiki.wikidot.com/local--files/theme:boveta/party);
}
div.military_memo {
    --memo-heading: "FROM THE BOVETAN MILITARY";
    --memo-color: var(--basalt-bright-element-color);
    --memo-bg-image: url(http://backrooms-wiki.wikidot.com/local--files/theme:boveta/military);
}
div.army_memo {
    --memo-heading: "FROM THE BOVETAN ARMY";
    --memo-color: var(--basalt-bright-element-color);
    --memo-bg-image: url(http://backrooms-wiki.wikidot.com/local--files/theme:boveta/armylogotb);
}
div.navy_memo {
    --memo-heading: "FROM THE BOVETAN NAVY";
    --memo-color: var(--basalt-bright-element-color);
    --memo-bg-image: url(http://backrooms-wiki.wikidot.com/local--files/theme:boveta/navylogotb);
}
div.af_memo {
    --memo-heading: "FROM THE BOVETAN AIR FORCE";
    --memo-color: var(--basalt-bright-element-color);
    --memo-bg-image: url(http://backrooms-wiki.wikidot.com/local--files/theme:boveta/airforcelogotb);
}
div.robo_memo {
    --memo-heading: "FROM THE BOVETAN ROBOTICS FORCE";
    --memo-color: var(--basalt-bright-element-color);
    --memo-bg-image: url(http://backrooms-wiki.wikidot.com/local--files/theme:boveta/robologotb);
}
div.cyber_memo {
    --memo-heading: "FROM THE BOVETAN CYBER FORCE";
    --memo-color: var(--basalt-bright-element-color);
    --memo-bg-image: url(http://backrooms-wiki.wikidot.com/local--files/theme:boveta/cyberlogo);
}
div.ddf_memo {
    --memo-heading: "FROM THE BOVETAN DIMENSIONAL DEFENSE FORCE";
    --memo-color: var(--basalt-bright-element-color);
    --memo-bg-image: url(http://backrooms-wiki.wikidot.com/local--files/theme:boveta/ddflogotb);}
 
div.police_memo {
    --memo-heading: "FROM THE BOVETAN POLICE";
    --memo-color: var(--basalt-bright-element-color);
    --memo-bg-image: url(http://backrooms-wiki.wikidot.com/local--files/theme:boveta/police);
}
div.edu_memo {
    --memo-heading: "FROM THE DEPARTMENT OF EDUCATION";
    --memo-color: var(--basalt-bright-element-color);
    --memo-bg-image: url(http://backrooms-wiki.wikidot.com/local--files/theme:boveta/edu);
}
div.cla_memo {
    --memo-heading: "FROM THE DEPARTMENT OF CLASSIFICATION";
    --memo-color: var(--basalt-bright-element-color);
    --memo-bg-image: url(http://backrooms-wiki.wikidot.com/local--files/theme:boveta/cla);
}
div.propaganda_memo {
    --memo-heading: "FROM THE DEPARTMENT OF MEDIA";
    --memo-color: var(--basalt-bright-element-color);
    --memo-bg-image: url(http://backrooms-wiki.wikidot.com/local--files/theme:boveta/propaganda);
}
 
div.labor_memo {
    --memo-heading: "FROM THE DEPARTMENT OF LABOR";
    --memo-color: var(--basalt-bright-element-color);
    --memo-bg-image: url(http://backrooms-wiki.wikidot.com/local--files/theme:boveta/labor);
}
div.science_memo {
    --memo-heading: "FROM THE DEPARTMENT OF SCIENCE";
    --memo-color: var(--basalt-bright-element-color);
    --memo-bg-image: url(http://backrooms-wiki.wikidot.com/local--files/theme:boveta/science);
}
div.aml_memo {
    --memo-heading: "FROM THE ANOMALOUS MATERIALS LABORATORY";
    --memo-color: var(--basalt-bright-element-color);
    --memo-bg-image: url(http://backrooms-wiki.wikidot.com/local--files/theme:boveta/amlogo);
}
div.agpl_memo {
    --memo-heading: "FROM THE ANOMALOUS GEOMETRIC PHYSICS LABORATORY";
    --memo-color: var(--basalt-bright-element-color);
    --memo-bg-image: url(http://backrooms-wiki.wikidot.com/local--files/theme:boveta/agplogo);
}
div.agriculture_memo {
    --memo-heading: "FROM THE DEPARTMENT OF AGRICULTURE";
    --memo-color: var(--basalt-bright-element-color);
    --memo-bg-image: url(http://backrooms-wiki.wikidot.com/local--files/theme:boveta/agrilogo);
}
div.infrastructure_memo {
    --memo-heading: "FROM THE DEPARTMENT OF INFRASTRUCTURE";
    --memo-color: var(--basalt-bright-element-color);
    --memo-bg-image: url(http://backrooms-wiki.wikidot.com/local--files/theme:boveta/infrastructure);
}
div.dos_memo {
    --memo-heading: "FROM THE DEPARTMENT OF STATE";
    --memo-color: var(--basalt-bright-element-color);
    --memo-bg-image: url(http://backrooms-wiki.wikidot.com/local--files/theme:boveta/doslogo);
}
 
div.customs_memo {
    --memo-heading: "FROM THE CUSTOMS DEPARTMENT";
    --memo-color: var(--basalt-bright-element-color);
    --memo-bg-image: url(http://backrooms-wiki.wikidot.com/local--files/theme:boveta/customs);
}
div.gelco_memo {
    --memo-heading: "FROM THE BLUE GEL COMPANY";
    --memo-color: var(--basalt-bright-element-color);
    --memo-bg-image: url(http://backrooms-wiki.wikidot.com/local--files/object-78/Gelcologotb);
}
.euclid_terminal {
    display: block;
    margin-inline: auto;
    margin-block: 1.4rem;
    padding-inline: 1.5rem;
    padding-block: 0.5rem;
    background-color: rgb(23, 11, 11);
    border: solid 0.2rem rgb(107, 0, 0);
    color: rgb(var(--basalt-main-text-color));
    font-family: 'Overpass Mono', monospace;
    width: 50%;
    position: relative;
}
.euclid_terminal::before {
    content: "TERMINAL ARCHIVED:";
    font-family: 'Aldrich';
}
.euclid_terminal::after {
    background: url(https://backrooms-wiki.wikidot.com/local--files/theme:boveta/euclidlogotb) center/42% no-repeat;
    opacity: 0.25;
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: 1;
}
.euclid_terminal > * {
    z-index: 2;
    position: relative;
}
@media screen and (max-width: 56.25rem) {
    .euclid_terminal{
       width: 90%;
    }
}
div:is(.darkdocument) {
    font-family: 'Overpass Mono', monospace;
}
 
div:is(.document){
    font-family: 'Overpass Mono', monospace;
    --link-color: 168, 28, 0;
    --link-visited-color: 99, 39, 26;
    --link-newpage-color: 97, 69, 2;
}
 
/* Additional Moose Noises */
:root {
  /* UI Changes */
--side-bar-background-color: var(--basalt-primary-color);
--button-border-color: var(--general-border-color);
--button-background-color: var(--basalt-primary-color);
--edit-area-ancillary-background-color: var(--basalt-primary-color);
--edit-area-toolbar-background-color: var(--basalt-primary-color);
--edit-area-border-width: 0.15rem;
--button-hover-background-color: var(--tab-hover-background-color);
--button-outline-color: none;
--button-hover-text-color: var(--basalt-light-text-color);
--login-status-background-color: var(--basalt-primary-color);
--top-bar-link-color-hover: var(--basalt-main-text-color);
--login-status-link-background-hover: var(--basalt-dark-element-color);
--top-bar-dropdown-link-color-hover: var(--basalt-light-text-color);
--side-bar-link-color-hover: var(--basalt-light-text-color)
}
#lock-info {
    border: solid 0.15rem rgb(var(--general-border-color));
}
#history-subarea a.action-area-close, #view-diff-div a.button, div:where(#action-area, .buttons) :is(a, input).btn {
    border: solid .15rem rgb(var(--button-border-color));
}
form .change-textarea-size {
    background-color: transparent;
}
form#edit-page-form table.edit-page-bottomtable tr td:first-of-type > div:nth-of-type(1)::before {
    background-color: rgb(var(--basalt-undertone));
}
:is(#page-content table:not(.form), table.wiki-content-table) th {
    background-color: rgb(158, 158, 158);
    border-color: rgb(158, 158, 158);
    color: rgb(0,0,0);
}
#edit-page-title {
    border: solid var(--edit-area-border-width) rgb(var(--edit-area-border-color)) !important;
}
div#account-options {
    border: solid .15rem rgb(var(--general-border-color));
}
#main-content > .page-tags > span a {
    border: solid .15rem rgb(var(--general-border-color));
    background-color: rgb(var(--basalt-primary-color),var(--basalt-UI-opacity));
    border-radius: 0em;
}
#main-content > .page-tags > span a:is(:hover, :focus) {
    box-shadow: none;
}
  /* Component Changes */
 
  /* Offset Timeline */
:root {
--timeline-line-color: var(--basalt-undertone);
--timeline-title-color: var(--link-color);
--timeline-border-color: var(--general-border-color);
--timeline-background-color: var(--basalt-primary-color);
--timeline-text-color: var(--basalt-main-text-color);
--timeline-hover-background-color: var(--basalt-undertone);
--timeline-hover-border-color: var(--general-border-color);
--timeline-hover-text-color: var(--basalt-light-text-color);
--timeline-title-font: 'Courier Prime', monospace;
--timeline-content-font: 'Courier Prime', monospace;
}
.offset-timeline .offset-button {
  border: solid 0.15rem rgb(var(--timeline-border-color));
  border-radius: 0;
}
  /* General Scale Changes */
.container {
    color: rgb(var(--basalt-main-text-color)) !important;
    border-left: 0.25rem solid rgba(var(--basalt-main-text-color)) !important;
    box-shadow: 11rem 0rem 1rem -20px rgba(var(--basalt-undertone),.25) inset !important;
    border-radius: 0 !important;
}
 
#action-area .page-source {
    padding: 4px;
    border: 0.15rem solid rgb(var(--general-border-color));
    background-color: rgb(var(--basalt-primary-color));
}
 
#page-content div.rate-box-with-credit-button > .creditButton > p > a::after {
    background-color: rgb(var(--basalt-light-text-color)) !important;
}
#page-content div.creditButtonStandalone > p > a:is(:hover, :focus)::after,  #page-content div.rate-box-with-credit-button .creditButton > p > a:is(:hover, :focus)::after {
    background-color: rgb(var(--basalt-main-text-color)) !important;
}
div.creditButtonStandalone > p > a:is(:hover, :focus)::before, div.rate-box-with-credit-button .creditButton > p > a:is(:hover, :focus)::before {
    background-color: rgb(var(--basalt-primary-color));
}
 
/* ==SD CLASS CODE== */
 
.sd-container {
 
/* font */
--sd-font:Aldrich;
 
/* borders */
--sd-border:var(--basalt-tertiary-color); /* for most classes */
--sd-border-secondary:var(--basalt-tertiary-color); /* for n/a */
--sd-border-deadzone:var(--basalt-tertiary-color); /* for deadzone */
 
/* symbols */
--sd-symbol:255,255,255 !important; /* for most symbols */
--sd-symbol-secondary:255,255,255; /* white for class 4 and higher */
 
/* text */
--sd-bullets: 255,255,255; /* the colour of the bullet point text */
--sd-text:255,255,255 !important; /* the colour of the text in the top box */
 
/* class colours */
 
--class-0:117, 115, 115;
--class-1:153,83,81;
--class-2:174,61,62;
--class-3:180,40,41;
--class-4:115,32,18;
--class-5:131,10,1;
--class-unknown:38,38,38;
--class-habitable:167,21,73;
--class-deadzone:44,13,12;
--class-pending:77, 77, 77;
--class-n-a:38,38,38;
--class-amended:105,53,67;
--class-omega:116,66,42;
}
.sd-container .top-box.class-0 {
    --sd-text:255, 255, 255 !important;
}
.sd-container .top-box.class-1 {
    --sd-text: 255, 255, 255 !important;
}
```

rating: +15[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  

Info

To add the rate box with message, simply add this:

[[include :backrooms-wiki:component:open cw=0]]  
change cw to 1 for cw  
[[include :backrooms-wiki:component:close]]

[Close](index.md)

![logo](https://backrooms-wiki.wikidot.com/local--files/theme:boveta/logo)

**On any page:**  
**[[include :backrooms-wiki:theme:boveta-basalt]]**

OVERVIEW

**Boveta Basalt** by is [a remastered port](theme__boveta-basalt--d213646c.md) of [the original Boveta Theme](theme__boveta--cee4b7e9.md) by .

The Department of Classification found the original design ugly so they took the matters into their own hands and made the new theme. This port is designed to provide a modernized and more flexible visual framework, preserving the aesthetics of the original while improving it through **Basalt**’s streamlined design and updated CSS[1](javascript:;). The code itself was stolen by spies in the [Eternal Repository](theme__aeternum-repositorium--14f81e17.md) and [AEA](theme__aea--8120422d.md).

**Basalt** is an [aesthetic theme for the SCP Wiki](theme__basalt--089ed37f.md) by and functioning as an extension of **Bedrock**, a base theme created specifically for this project. Visit [Bedrock's wiki page](https://scp-wiki.wikidot.com/theme:bedrock) or its [home on GitHub](https://basalt-team.github.io/Basalt) for more info, including all of the CSS variables it offers.

SETTINGS

Add them to your [[include]] module to modify aspects of **Boveta Basalt**.

**[[include :backrooms-wiki:theme:boveta-basalt themesetting]]**

**[[include :backrooms-wiki:theme:boveta-basalt themesetting|another-themesetting]]**

All theme settings as of the current version:

- **wide=a**   Widens page
- **hidetitle=a**   Removes page title
- **centertitle=a**   Centers page title
- **mainheader=a**   Changes header to main logo.
- **graymode=a**   Makes everything gray.
- **blockcollapsible=a**   Makes the collapsibles blocky.

For example, this theme page uses the settings **wide=a**.

## Examples

#### Main Header:

![mainheader](http://backrooms-wiki.wikidot.com/local--files/theme:boveta-basalt/mainheader)

#### Graymode

![gray](http://backrooms-wiki.wikidot.com/local--files/theme:boveta-basalt/gray)

#### Block Collapsible

The block collapsibles are enabled with **blockcollapsible=a**. It makes all collapsibles look like this:  

- [*Closed*](javascript:;)
- [*Opened*](javascript:;)

![closed](http://backrooms-wiki.wikidot.com/local--files/theme:boveta-basalt/closed)

![opened](http://backrooms-wiki.wikidot.com/local--files/theme:boveta-basalt/opened)

# DIVS

### NORMAL DIVS

[[div class="blockquote"]]

[[div class="notation"]]

[[div class="jotting"]]

[[div class="modal"]]

[[div class="smallmodal"]]

[[div class="floatbox left"]]

[[div class="floatbox right"]]

[[div class="papernote"]]

[[div class="amylaseblock"]]

### THE MEMO WALL

[[div class="main\_memo"]]

[[div class="party\_memo"]]

[[div class="military\_memo"]]

[[div class="army\_memo"]]

[[div class="navy\_memo"]]

[[div class="af\_memo"]]

[[div class="robo\_memo"]]

[[div class="cyber\_memo"]]

[[div class="ddf\_memo"]]

[[div class="edu\_memo"]]

[[div class="cla\_memo"]]

[[div class="propaganda\_memo"]]

[[div class="science\_memo"]]

[[div class="aml\_memo"]]

[[div class="agpl\_memo"]]

[[div class="agriculture\_memo"]]

[[div class="labor\_memo"]]

[[div class="infrastructure\_memo"]]

[[div class="dos\_memo"]]

[[div class="customs\_memo"]]

[[div class="gelco\_memo"]]

### CUSTOM MEMO

To make a custom memo, simply type this in a CSS module:

```
div.name_memo {
    --memo-heading: "Heading";
    --memo-color: var(--basalt-bright-element-color);
    --memo-bg-image: url(logo url);
}
```

### SPECIAL DIVS

---

<system> [euclid device online]  
 <system> software version: 2.3.1   
 <system> power: nominal  
 <system> target level: ███  
 <system> credentials: VERIFIED  
 <system> initiating user interface…  
 <system> ERROR: file "darkblock" not found  
 <system> entering error diagnostics...

<system> error diagnostics initiated, output report? [Y/n]  
 <user> Y  
 <system> "darkblock" is not present on Basalt. To use the Euclid Device terminal in the new Basalt-based theme, type the following:

**[[div class="euclid\_terminal"]]**

Also yeah this is absolutely not how a terminal works im too lazy to figure out what should be typed.

**[[div class="document"]]**

These document divs use a different font.

**[[div class="darkdocument"]]**

These document divs use a different font.

# MISC STUFF

![Missing alt text.](http://backrooms-wiki.wikidot.com/local--files/theme:boveta/logo)

Image block.

A horizontal rule can be created with 4+ hyphens "----" and extends across the whole page if it is not placed inside anything (e.g. a blockquote)[2](javascript:;).

---

Titles can be created by putting between one and six pluses "+" at the start of a line.

# First Title

## Second Title

### Third Title

#### Fourth Title

##### Fifth Title

###### Sixth Title

[Non-existent Link](https://backrooms-wiki.wikidot.com/hjasbjasj)  
[Existent Link](level-650.md)

- [*Tabulator*](javascript:;)
- [*Tabulation*](javascript:;)
- [*Long Tab*](javascript:;)
- [*This tab has a really long name for some odd reason. I wonder why? It is very strange.*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Very Serious Tab*](javascript:;)
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

This is a tab with footnote[3](javascript:;)

🐟

Never gonna give you up

Get trolled

| This is a | table |
| --- | --- |
| You should know | how to make these |
| already | |
| But do you? | |

# SD CLASSES

### SD Class Logos

To use the custom logos of the Boveta SD classes, please add |image=[image link] inside of your SD classes. Below is an example for Class 0:

[[include :backrooms-wiki:component:level-class  
|class=0  
|image=<https://backrooms-wiki.wdfiles.com/local--files/theme%3Aboveta/c0>  
]]

  
The full list of links:

| Class | Image Link |
| --- | --- |
| 0 | <https://backrooms-wiki.wdfiles.com/local--files/theme%3Aboveta/c0> |
| 1 | <https://backrooms-wiki.wdfiles.com/local--files/theme%3Aboveta/1> |
| 2 | <https://backrooms-wiki.wdfiles.com/local--files/theme%3Aboveta/2> |
| 3 | <https://backrooms-wiki.wdfiles.com/local--files/theme%3Aboveta/3> |
| 4 | <https://backrooms-wiki.wdfiles.com/local--files/theme%3Aboveta/4> |
| 5 | <https://backrooms-wiki.wdfiles.com/local--files/theme%3Aboveta/5> |
| Habitable | <https://backrooms-wiki.wdfiles.com/local--files/theme%3Aboveta/habitable> |
| Deadzone | <https://backrooms-wiki.wdfiles.com/local--files/theme%3Aboveta/deadzone> |
| Unknown and Pending | <https://backrooms-wiki.wdfiles.com/local--files/theme%3Aboveta/unknown> |
| N/A | <https://backrooms-wiki.wdfiles.com/local--files/theme%3Aboveta/n_a> |
| Amended | <https://backrooms-wiki.wdfiles.com/local--files/theme%3Aboveta/amended> |
| Omega | <https://backrooms-wiki.wdfiles.com/local--files/theme%3Aboveta/omega> |
| Amended | <https://backrooms-wiki.wdfiles.com/local--files/theme%3Aboveta/amended> |

The Boveta Specific SD classes are explained later.

### Normal SD Classes

![sdpic1](http://backrooms-wiki.wikidot.com/local--files/theme:boveta/sdpic1)

![sdpic2](http://backrooms-wiki.wikidot.com/local--files/theme:boveta/sdpic2)

![sdpic3](http://backrooms-wiki.wikidot.com/local--files/theme:boveta/sdpic3)

![sdpic4](http://backrooms-wiki.wikidot.com/local--files/theme:boveta/sdpic4)

![sdpic5](http://backrooms-wiki.wikidot.com/local--files/theme:boveta/sdpic5)

### Boveta Specific SD Classes

![csdpic1](http://backrooms-wiki.wikidot.com/local--files/theme:boveta/csdpic1)

[Show Code](javascript:;)

[Hide Code](javascript:;)

[[include :backrooms-wiki:component:level-class  
|class=Outpost  
|color=#391513  
|image=<https://backrooms-wiki.wikidot.com/local--files/theme:boveta/outpost>  
|one=Extremely Low Bovetan Presence  
|two=No Infrastructure  
|three=Small Logistics Networks  
]]

![csdpic2](http://backrooms-wiki.wikidot.com/local--files/theme:boveta/csdpic2)

[Show Code](javascript:;)

[Hide Code](javascript:;)

[[include :backrooms-wiki:component:level-class  
|class=Colony  
|color=#501d1b  
|image=<https://backrooms-wiki.wikidot.com/local--files/theme:boveta/colony>  
|one=Low Bovetan Presence  
|two=Low Infrastructure  
|three=Medium Logistics Networks  
]]

![csdpic3](http://backrooms-wiki.wikidot.com/local--files/theme:boveta/csdpic3)

[Show Code](javascript:;)

[Hide Code](javascript:;)

[[include :backrooms-wiki:component:level-class  
|class=Town  
|color=#6a2624  
|image=<https://backrooms-wiki.wikidot.com/local--files/theme:boveta/town>  
|one=Medium Bovetan Presence  
|two=Medium Infrastructure  
|three=Established Logistics Networks  
]]

![csdpic4](http://backrooms-wiki.wikidot.com/local--files/theme:boveta/csdpic4)

[Show Code](javascript:;)

[Hide Code](javascript:;)

[[include :backrooms-wiki:component:level-class  
|class=City  
|color=#9b272e  
|image=<https://backrooms-wiki.wikidot.com/local--files/theme:boveta/city>  
|one=High Bovetan Presence  
|two=Established Infrastructure  
|three=Complex Logistics Networks  
]]

![csdpic5](http://backrooms-wiki.wikidot.com/local--files/theme:boveta/csdpic5)

[Show Code](javascript:;)

[Hide Code](javascript:;)

[[include :backrooms-wiki:component:level-class  
|class=Megacity  
|color=#bc242b  
|image=<https://backrooms-wiki.wikidot.com/local--files/theme:boveta/megacity>  
|one=High Bovetan Presence  
|two=Highly Established Infrastructure  
|three=Logistics Hub  
]]

![csdpic6](http://backrooms-wiki.wikidot.com/local--files/theme:boveta/csdpic6)

[Show Code](javascript:;)

[Hide Code](javascript:;)

[[include :backrooms-wiki:component:level-class  
|class=Capital  
|color=#800009  
|image=https://backrooms-wiki.wikidot.com/local--files/theme:boveta/capital  
|one=Bovetan Central Government  
|two=Highly Established Infrastructure  
|three=Heart of the Nation  
]]

Header is **ELECTROLIZE**.  
Title is **ALDRICH**.  
Body font is **INTER**.  
Monospace, Document div, and Euclid Terminal font is **OVERPASS MONO**.

Footnotes

[1](javascript:;). It also just looks cooler and red-er, or something.

[2](javascript:;). [[footnote]] Content [[/footnote]]

[3](javascript:;). This is another footnote.

---

Source: [https://backrooms-wiki.wikidot.com/theme:boveta-basalt](https://backrooms-wiki.wikidot.com/theme:boveta-basalt)
