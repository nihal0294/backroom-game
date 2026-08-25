---
title: "Akmē Espionage Agency Theme"
source: "https://backrooms-wiki.wikidot.com/theme:aea"
retrieved_at: "2026-08-23T23:39:39+00:00"
license: CC-BY-SA-3.0
---

# Akmē Espionage Agency Theme

```
/* ░░░░░░░░░░░░░░▓▓░░░░░░░░░░░░░░░░ */
/* ░░░░░░░░░░░░▓▓▓▓▓▓░░░░░░░░░░░░░░ */
/* ░░░░░░░░░░░░▓▓▓▓▓▓░░░░░░░░░░░░░░ */
/* ░░░░░░░░░░░░░░▓▓░░░░░░░░░░░░░░░░ */
/* ░░░░░░░░░░░░░░▓▓░░██████████░░░░ */
/* ░░░░░░░░░░░░▓▓▓▓▓▓░░██░░░░████░░ */
/* ░░░░░░░░░░░░▓▓▓▓▓▓██░░░░██░░░░██ */
/* ░░████░░▓▓▓▓▓▓▓▓▓▓▓▓▓▓██░░░░████ */
/* ░░██░░██░░██▓▓▓▓▓▓░░██░░░░██░░██ */
/* ░░██░░████░░▓▓▓▓▓▓██░░░░██░░░░██ */
/* ░░██░░░░░░░░▓▓▓▓▓▓░░░░██░░░░██░░ */
/* ░░██░░░░░░░░▓▓▓▓▓▓░░░░░░░░██░░░░ */
/* ░░██░░░░░░██▓▓▓▓▓▓░░░░░░██░░░░░░ */
/* ░░██░░░░░░██████▓▓██░░░░██░░░░░░ */
/* ░░██░░░░░░░░██████░░░░██░░░░░░░░ */
/* ░░██░░░░░░░░░░░░░░░░░░██░░░░░░░░ */
/* ░░██░░░░░░░░░░░░░░░░██░░░░░░░░░░ */
/* ██░░░░░░░░░░░░░░░░██░░░░░░░░░░░░ */
/* ██░░░░░░░░░░░░████░░░░░░░░░░░░░░ */
/* ██░░░░░░░░░░██▓▓▓▓░░░░░░░░░░░░░░ */
/* ██░░░░░░░░██▓▓▓▓▓▓░░░░░░░░░░░░░░ */
/* ░░████░░██░░▓▓▓▓▓▓░░░░░░░░░░░░░░ */
/* ░░░░░░██░░░░▓▓▓▓▓▓░░░░░░░░░░░░░░ */
/* ░░░░░░░░░░░░░░▓▓▓▓░░░░░░░░░░░░░░ */
/* ░░░░░░░░░░░░░░▓▓░░░░░░░░░░░░░░░░ */
/*                                  */
/* The Akmē Espionage Agency Theme  */
/*                                  */
/*  [2025 Wikidot Theme]            */
/*  Version 1.0                     */
/*                                  */
/*  By PrismaticMoose               */
/*  A.E.A. logos by DrAkimoto       */
/*  Thanks to Scutoid-Studios       */
/*  Techlit by JunkShipp            */
/*                                  */
/*  Built on Basalt                 */
 
  /* Imports */
@import url('https://fonts.googleapis.com/css2?family=Courier+Prime&display=swap');
 
:root{
 
  /* Simple Header Changes */
 
   --header-title: "The Akmē Espionage Agency";
   --header-subtitle: "Guaranteed results, no questions asked.";
   --title-size: 1.17rem;
   --subtitle-size: 0.88rem;
   --logo: url(https://backrooms-wiki.wikidot.com/local--files/theme:aea/AEA-logo);
 
  /* Base Colors */
 
   --basalt-primary-color: 8,8,8;
   --basalt-secondary-color: 26, 8, 0;
   --basalt-tertiary-color: 46, 33, 32;
   --basalt-main-text-color: 201, 201, 201;
   --basalt-undertone:150, 150, 150;
   --basalt-UI-dark-palette:70, 70, 70;
   --basalt-bright-element-color: 150, 150, 150;
   --basalt-dark-element-color: 90,90,90;
   --basalt-focus-color: var(--basalt-undertone);
 
   --general-border-color: 100, 100, 100;
   --floatbox-background-color: var(--basalt-primary-color);
 
   --link-color: var(--basalt-undertone);
   --link-visited-color: var(--basalt-undertone);
   --link-newpage-color: var(--basalt-dark-element-color);
   --scrollbar-thumb-color: var(--basalt-undertone);
   --tab-hover-background-color: var(--basalt-undertone);
   --footnote-background-color: var(--basalt-primary-color);
   --rate-module-text-color: var(--basalt-main-text-color);
   --rate-module-background-color: var(--basalt-primary-color);
   --side-bar-unfolded-heading-text-color: var(--basalt-main-text-color);
}
 
  /* Something to do with the page title */
 
#page-title, .meta-title {
  color: rgb(var(--basalt-main-text-color));
}
#page-title, #meta-title {
  font-size: 2rem;
}
 
  /* Skrollr-body stuff - changes the background to our fancy suit patterns */
 
#skrollr-body {
  position: relative;
}
#skrollr-body::before {
  content: " ";
  position: absolute;
  width: 100%;
  height: 100%;
  background: url("http://backrooms-wiki.wikidot.com/local--files/theme:aea/pinstripes.jpg") center/10%;
  opacity: 35%;
}
 
  /* Bunch of div changes - all aesthetic */
 
div.notation {
    background-color: rgb(var(--basalt-primary-color));
    border-left: solid 0.25rem rgb(var(--basalt-main-text-color));
    border-right: solid 0.25rem rgb(var(--basalt-main-text-color));
}
div:is(.jotting, .transcript) {
    background-color: rgb(var(--basalt-primary-color));
    border: dashed 0.15rem rgb(var(--basalt-main-text-color));
}
div.papernote {
    background-color: rgb(51,51,51);
}
#page-content div.floatbox {
    border-radius: 0px;
    border: solid 0.15rem rgb(var(--general-border-color));
}
 
  /* Memo code - there's a guide to making more Memos on the original basalt page, they're not a priority in A.E.A. */
 
div[class$="_memo"] {
background-color: rgba(var(--basalt-primary-color), 1);
}
div.benefactor_memo {
    --memo-heading: "NOTICE DIRECT FROM THE BENEFACTOR";
    --memo-logo: url(http://backrooms-wiki.wikidot.com/local--files/theme:aea/AEA-logo-dark) ;
    --memo-color: 195,195,195;
}
div.hq_memo {
    --memo-heading: "NOTICE FROM A.E.A. HEADQUARTERS";
    --memo-logo: url(http://backrooms-wiki.wikidot.com/local--files/theme:aea/AEA-logo-dark) ;
    --memo-color: 195,195,195;
}
 
  /* This changes the document font to courier prime because I wanted to be fancy */
 
div:is(.document, .darkdocument) {
    font-family: 'Courier Prime', monospace;
}
 
  /* Image block stuff */
 
.scp-image-block{
    border-bottom: none;
}
.scp-image-block .scp-image-caption {
    border-top: solid .10rem rgb(var(--basalt-undertone));
    border-right: solid .35rem rgb(var(--basalt-undertone));
    border-left: solid .35rem rgb(var(--basalt-undertone));
    border-bottom: solid .10rem rgb(var(--basalt-undertone));
}
 
  /* Table and tabview changes */
 
#page-content table.wiki-content-table {
    background-color: rgb(var(--basalt-primary-color));
}
.yui-navset .yui-nav a,
.yui-navset .yui-navset-top .yui-nav a {
    background-color: rgb(var(--basalt-undertone));
}
.yui-navset.yui-navset-top .yui-content {
    background-color: rgb(var(--basalt-primary-color));
}
 
  /* Footnote changes */
 
.bibitems, .footnotes-footer {
    border-style: solid;
    border-width: 0.2rem 0.2rem 0.2rem 0;
    border-color: rgb(var(--general-border-color));
}
.bibitems::before, .footnotes-footer::before {
    width: 0.2rem;
}
.bibitems::before, .footnotes-footer::before, .footnotes-footer .title, .hovertip .content .footnote .f-heading, .hovertip .content .reference .r-heading, .hovertip .content .footnote::before, .hovertip .content .reference::before {
    background-color: rgb(var(--general-border-color)) !important;
}
div.page-rate-widget-box, div.rate-box-with-credit-button {
        border: solid 0.15rem rgb(var(--general-border-color));
    border-radius: 0rem;
}
 
  /* Infobox changes - I wonder when the staff will fix the infobox background for the main basalt, it's not that hard. */
 
.infobox {
    background-color: rgb(var(--basalt-primary-color)) !important;
    color: rgb(var(--modal-body-text, var(--swatch-text-general)));
    border: rgb(var(--general-border-color)) !important;
     border-top-width: 0.2rem !important;
     border-top-style: solid !important;
     border-right-width: 0.2rem !important;
     border-right-style: solid !important;
     border-bottom-width: 0.2rem !important;
     border-bottom-style: solid !important;
     border-left-width: 0.2rem !important;
     border-left-style: solid !important;
}
.infobox-title {
    background-color: rgba(var(--basalt-undertone),.2) !important;
    background-image: linear-gradient(90deg,rgba(var(--general-border-color),.375) 25%,transparent 25%,transparent 50%,rgba(var(--general-border-color),.375) 50%,rgba(var(--general-border-color),.375) 75%,transparent 75%,transparent 100%) !important;
    color: rgb(var(--basalt-main-text-color)) !important;
}
 
  /* Fabric Div code - this stuff is repurposed from the Memo code, I think it's quite nice. All the transparency stuff is made by Scutoid Studios, so if you don't like how you have to add extra divs, blame them (joke, ofc) */
 
div[class$="_fabric"] {
   display: block;
   margin-inline: auto;
   margin-block: 1.4rem;
   padding-inline: 1rem;
   padding-block: 0.2rem;
   background-color: rgb(var(--basalt-primary-color));
   border: solid 0.15rem rgb(var(--general-border-color));
   color: rgb(var(--basalt-main-text-color));
   background: none;
   position: relative;
}
div[class$="_fabric"]::before {
   content: "";
   display: block;
   position: absolute;
   top: 0;
   left: 0;
   width: 100%;
   height: 100%;
   /* Use the properties below to customize the look: */
   background: hsl(var(--fabric-background-color)); /* Your background colour here */
}
 
div[class$="_fabric"]::after {
   content: "";
   display: block;
   position: absolute;
   top: 0;
   left: 0;
   width: 100%;
   height: 100%;
   /* Use the properties below to customize the look: */
   background: var(--fabric-pattern);
   background-size: 14%;
   background-position: center;
   opacity: var(--fabric-opacity);
}
 
div[class$="_fabric"] > div {
   position: relative;
   z-index: 2;
}
div.pinstripe_fabric{
    --fabric-pattern: url(http://backrooms-wiki.wikidot.com/local--files/theme:aea/pinstripes.jpg);
    --fabric-opacity: 45%;
    --fabric-background-color: 0 0% 3%;
}
div.paisley_fabric{
    --fabric-pattern: url(http://backrooms-wiki.wikidot.com/local--files/theme:aea/paisley.png);
    --fabric-opacity: 45%;
    --fabric-background-color: 0 0% 3%;
}
div.diamond_fabric{
    --fabric-pattern: url(https://backrooms-wiki.wikidot.com/local--files/theme:aea/diamonds.png);
    --fabric-opacity: 45%;
    --fabric-background-color: 0 0% 3%;
}
div.tartan_fabric{
    --fabric-pattern: url(http://backrooms-wiki.wikidot.com/local--files/theme:aea/tartan.png);
    --fabric-opacity: 35%;
    --fabric-background-color: 0 0% 3%;
}
div.herringbone_fabric{
    --fabric-pattern: url(http://backrooms-wiki.wikidot.com/local--files/theme:aea/herringbone.png);
    --fabric-opacity: 30%;
    --fabric-background-color: 0 0% 3%;
}
div.gingham_fabric{
    --fabric-pattern: url(http://backrooms-wiki.wikidot.com/local--files/theme:aea/gingham.png);
    --fabric-opacity: 30%;
    --fabric-background-color: 0 0% 3%;
}
div.houndstooth_fabric{
    --fabric-pattern: url(http://backrooms-wiki.wikidot.com/local--files/theme:aea/houndstooth.png);
    --fabric-opacity: 45%;
    --fabric-background-color: 0 0% 3%;
}
div.birdseye_fabric{
    --fabric-pattern: url(http://backrooms-wiki.wikidot.com/local--files/theme:aea/birdseye.png);
    --fabric-opacity: 25%;
    --fabric-background-color: 0 0% 3%;
}
div.windowpane_fabric{
    --fabric-pattern: url(http://backrooms-wiki.wikidot.com/local--files/theme:aea/windowpane.png);
    --fabric-opacity: 35%;
    --fabric-background-color: 0 0% 3%;
}
div.teardrop_fabric{
    --fabric-pattern: url(http://backrooms-wiki.wikidot.com/local--files/theme:aea/teardrop.png);
    --fabric-opacity: 45%;
    --fabric-background-color: 0 0% 3%;
}
 
  /* Cheeky extra block */
 
.sucraseblock {
    background: repeating-linear-gradient(-135deg, #00222E, #00222E 4px, #007BA7 5px, #007BA7 5px);
    display: block;
    margin-inline: auto;
    margin-block: 1.4rem;
    padding-inline: 1.5rem;
    padding-block: 0.5rem;
    background-color: rgb(var(--basalt-primary-color));
    border: solid 0.2rem rgb(0, 123, 167);
    color: rgb(var(--basalt-main-text-color));
}
 
  /* Extra stuff I added later - no this is not well-ordered, I know. */
 
:root {
  /* UI Changes */
--side-bar-background-color: var(--basalt-primary-color);
--button-border-color: var(--general-border-color);
--button-background-color: var(--basalt-primary-color);
--edit-area-ancillary-background-color: var(--basalt-primary-color);
--edit-area-toolbar-background-color: var(--basalt-primary-color);
--edit-area-border-width: 0.15rem;
--button-hover-background-color: var(--basalt-undertone);
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
  /* SD Class stuff - I actually don't really like the SD class, and its very hard to use (as evidenced by how messy this code is) but everyone disagrees so I have to add this. */
:root {
  --sd-font:'Courier Prime', monospace !important;
  --sd-border: var(--general-border-color) !important;
  --sd-border-secondary: 0,0,0 !important;
  --sd-border-deadzone:20,0,0;
  --sd-symbol: var(--sd-border) !important;
  --sd-symbol-secondary: 255,255,255;
  --sd-bullets: var(--sd-text) !important;
  --sd-text: var(--basalt-main-text-color) !important;
  --class-0: var(--basalt-primary-color) !important;
  --class-1: var(--basalt-primary-color) !important;
  --class-2: var(--basalt-primary-color) !important;
  --class-3: var(--basalt-primary-color) !important;
  --class-4: var(--basalt-negative-color) !important;
  --class-5: var(--basalt-negative-color) !important;
  --class-unknown: var(--basalt-UI-dark-palette) !important;
  --class-habitable: var(--basalt-positive-color) !important;
  --class-deadzone: var(--basalt-secondary-color) !important;
  --class-pending: var(--basalt-undertone) !important;
  --class-n-a: var(--basalt-UI-dark-palette) !important;
  --class-amended: var(--basalt-primary-color) !important;
  --class-omega: var(--basalt-tertiary-color) !important;
}
.header-diamond .diamond-pattern {
  background: none !important;
}
.top-box:before {
  background: none !important;
}
.top-box .gradient-box {
    background: none !important;
}
.bottom-box ul li::before {
    background: rgb(var(--sd-text)) !important;
}
.bottom-box ul li {
    color: rgb(var(--sd-text)) !important;
}
  /* Page Source thingummy */
#action-area .page-source {
    padding: 4px;
    border: 0.15rem solid rgb(var(--general-border-color));
    background-color: rgb(var(--basalt-primary-color));
}
 
  /* Infobox hover fix - made by Scutoid */
 
#page-content div.rate-box-with-credit-button > .creditButton > p > a::after {
    background-color: rgb(var(--basalt-light-text-color)) !important;
}
#page-content div.creditButtonStandalone > p > a:is(:hover, :focus)::after,  #page-content div.rate-box-with-credit-button .creditButton > p > a:is(:hover, :focus)::after {
    background-color: rgb(var(--basalt-main-text-color)) !important;
}
div.creditButtonStandalone > p > a:is(:hover, :focus)::before, div.rate-box-with-credit-button .creditButton > p > a:is(:hover, :focus)::before {
    background-color: rgb(var(--basalt-primary-color));
}
 
  /* extra sidebar fixes */
#side-bar .collapsible-block a.collapsible-block-link:is(:hover, :focus) {
    background-color: rgb(var(--basalt-undertone));
    color: rgb(var(--basalt-light-text-color));
}
```

rating: +17[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  

Info

add cw=1 to the component to add the content warning thingy to it.

[Close](index.md)

![AEA-logo](http://backrooms-wiki.wikidot.com/local--files/theme:aea/AEA-logo)

**On any page:**  
**[[include :backrooms-wiki:theme:aea]]**

# Basic Gist

---

**A.E.A.** is a dark [Basalt](theme__basalt--089ed37f.md)-based theme designed by , with logos by .  
It was originally created for the [Duel Contest 2025](duelcon2025.md) page [Damage Control](damage-control.md), when it was a simple few pieces of code on top of Basalt. The current version has been massively improved with more settings, divs, and general messy code.  
This version is made with code I stole redistributed from [The Aeternum Repositorium](theme__aeternum-repositorium--14f81e17.md) theme, the [Basalt](theme__basalt--089ed37f.md) theme, and probably a few others I forgot about ;w; . Don't think that it's all stolen, a lot of it was made using the inspect tool and a bit of logical thinking.

**Basalt** is an [aesthetic theme for the SCP Wiki](theme__basalt--089ed37f.md) by and functioning as an extension of **Bedrock**, a base theme created specifically for this project. Visit [Bedrock's wiki page](https://scp-wiki.wikidot.com/theme:bedrock) or its [home on GitHub](https://basalt-team.github.io/Basalt) for more info, including all of the CSS variables it offers.

  

# Theme settings

---

Add **theme settings** to your [[include]] module to modify aspects of A.E.A..

**[[include :backrooms-wiki:theme:aea themesetting]]**

**[[include :backrooms-wiki:theme:aea themesetting|another-themesetting]]**

All theme settings as of the current version:

- **wide=a**   Widens page
- **hidetitle=a**   Removes page title
- **centertitle=a**   Centers page title
- **oldheader=a**   Changes header title to the old A.E.A. name, used for pages set before the group revival.
- The following change the background image to a different pattern; DO NOT USE MORE THAN ONE, IT WILL NOT WORK.
  - **tartan=a**   Changes background to tartan
  - **paisley=a**   Changes background to paisley
  - **diamond=a**   Changes background to diamond-print
  - **herringbone=a**   Changes background to herringbone
  - **gingham=a**   Changes background to gingham
  - **houndstooth=a**   Changes background to houndstooth
  - **birdseye=a**   Changes background to bird's eye (may trigger Trypophobia)
  - **windowpane=a**   Changes background to windowpane
  - **teardrop=a**   Changes background to teardrops

  

# Page elements

---

**[[div class="blockquote"]]**

**[[div class="notation"]]**

**[[div class="jotting"]]**

**[[div class="modal"]]**

**[[div class="smallmodal"]]**

**[[div class="papernote"]]**

**[[div class="floatbox"]]**

**[[div class="floatbox right"]]**

**[[div class="document"]]**

These document divs use a different font.

**[[div class="darkdocument"]]**

These document divs use a different font.

**[[div class="benefactor\_memo"]]**

**[[div class="hq\_memo"]]**

**[[div class="sucraseblock"]]**

**[[div class="pinstripe\_fabric"]]**  
**[[div]]**

**[[/div]]**  
**[[/div]]**

**[[div class="paisley\_fabric"]]**  
**[[div]]**

**[[/div]]**  
**[[/div]]**

**[[div class="diamond\_fabric"]]**  
**[[div]]**

**[[/div]]**  
**[[/div]]**

**[[div class="tartan\_fabric"]]**  
**[[div]]**

**[[/div]]**  
**[[/div]]**

**[[div class="herringbone\_fabric"]]**  
**[[div]]**

**[[/div]]**  
**[[/div]]**

**[[div class="gingham\_fabric"]]**  
**[[div]]**

**[[/div]]**  
**[[/div]]**

**[[div class="houndstooth\_fabric"]]**  
**[[div]]**

**[[/div]]**  
**[[/div]]**

**[[div class="birdseye\_fabric"]]**  
**[[div]]**

**[[/div]]**  
**[[/div]]**

**[[div class="windowpane\_fabric"]]**  
**[[div]]**

**[[/div]]**  
**[[/div]]**

**[[div class="teardrop\_fabric"]]**  
**[[div]]**

**[[/div]]**  
**[[/div]]**

You have to put un-classed divs inside the main fabric divs — yeah I know it's weird — it's the only way to make the fabric stuff work.

To create additional memos, include this in your CSS module and modify accordingly:

div.{PATTERN NAME}\_fabric {  
 --fabric-pattern: url({BACKGROUND IMAGE URL});  
 --fabric-opacity: {OPACITY AS PERCENTAGE};  
 --fabric-background-color: {COLOUR AS HSL};  
}

![Missing alt text.](http://backrooms-wiki.wikidot.com/local--files/theme:aea/AEA-logo)

Image block.

A horizontal rule can be created with 4+ hyphens "----" and extends across the whole page if it is not placed inside anything (e.g. a blockquote)[1](javascript:;).

---

Titles can be created by putting between one and six pluses "+" at the start of a line.

# First Title

## Second Title

### Third Title

#### Fourth Title

##### Fifth Title

###### Sixth Title

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

This is a tab with footnote[2](javascript:;)

🐟

I think I prefer this to MI6.

| This is a | table |
| --- | --- |
| You should know | how to make these |
| already | |
| But do you? | |

Footnotes

[1](javascript:;). [[footnote]] Content [[/footnote]]

[2](javascript:;). This is another footnote.

Header and UI font is **SOFIA SANS**.  
Body font is **INTER**.  
Monospace font is **JETBRAINS MONO**.  
Document div & Component font is **COURIER PRIME**.

---

Source: [https://backrooms-wiki.wikidot.com/theme:aea](https://backrooms-wiki.wikidot.com/theme:aea)
