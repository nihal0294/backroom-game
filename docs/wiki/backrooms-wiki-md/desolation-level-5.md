---
title: "Desolation Level 5"
source: "https://backrooms-wiki.wikidot.com/desolation-level-5"
retrieved_at: "2026-08-23T23:36:44+00:00"
license: CC-BY-SA-3.0
---

# Desolation Level 5

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
/* root variables */
:root {
    max-width: 100vw; overflow-x: hidden;
    /* ===S-CSjavascript:;S-P INTEGRATION=== */
    --theme-base: "black-highlighter";
    --theme-id: "isolate-canon";
    --theme-name: "Isolate Canon";
 
    /* ===HEADER ELEMENTS=== */
    --logo-image: url("http://scutoidbox.wikidot.com/local--files/watch-your-back/isolate%20canon.png");
    --header-title: "the backrooms";
    --header-subtitle: "watch your back...";
 
    /* ===TYPEFACES=== */
    --body-font: Ubuntu Mono, Consolas, monospace;
    --UI-font: var(--body-font);
    --header-font: var(--body-font);
    --title-font: var(--body-font);
    --mono-font: var(--body-font);
 
    /* ===HEADER TITLES=== */
    --header-h1-font-size: 4rem;
    --header-h2-font-size: 2rem;
    --swatch-headerh2-color: var(--light-gray-monochrome);
 
/* ===STANDARD THEME COLORS=== */
    --white-monochrome: 255, 255, 255;
    --pale-gray-monochrome: 255, 255, 255, 0.8;
    --light-pale-gray-monochrome: 255, 255, 255, 0.5;
    --very-light-gray-monochrome: 255, 255, 255, 0.4;
    --light-gray-monochrome: 255, 255, 255, 0.5;
    --gray-monochrome: 0, 0, 0, 0.3;
    --dark-gray-monochrome: 0, 0, 0, 0.7;
    --black-monochrome: 0, 0, 0, 0.8;
 
    --pale-accent: 112,126,125; /* background */
    --bright-accent: 255, 170, 0; /* link */
    --medium-accent: 143, 150, 160;
    --dark-accent: 87, 91, 96;
    --alt-accent: 255, 125, 125; /* newpage link */
 
    --link-color: var(--bright-accent);
    --visited-link-color: 215, 193, 246;
    --newpage-link-color: var(--alt-accent);
 
    --swatch-background: var(--pale-accent);
    --article-image: url("https://live.staticflickr.com/195/473878423_d13183323d_b.jpg");
 
    /* ===GENERAL TEXT COLORS=== */
    --swatch-text-dark: var(--black-monochrome);
    --swatch-text-light: var(--white-monochrome);
    --swatch-text-general: var(--swatch-text-light);
    --swatch-important-text: var(--bright-accent);
 
    /* ===MENU COLORS=== */
    /* ===MENU BACKGROUND COLORS=== */
    --swatch-menubg-color: var(--white-monochrome);
    --swatch-menubg-light-color: var(--pale-gray-monochrome);
    --swatch-menubg-medium-color: var(--dark-gray-monochrome);
    --swatch-menubg-medium-dark-color: var(--gray-monochrome);
    --swatch-menubg-dark-color: var(--gray-monochrome);
    --swatch-menubg-black-color: var(--black-monochrome);
    --swatch-menubg-hover-color: var(--black-monochrome);
 
    /* ===MENU TEXT COLORS=== */
    --swatch-menutxt-dark-color: var(--black-monochrome);
    --swatch-menutxt-light-color: var(--white-monochrome);
    --swatch-menutxt-general-color: var(--swatch-menutxt-dark-color);
 
    /* ===SECONDARY & TERTIARY COLORS=== */
    /* Editing these will edit a vast majority of theme elements. Useful for making dark themes */
 
    /* Colors for Secondary & Tertiary items like Blockquote and YUI Tabs */
    --swatch-secondary-color: var(--swatch-menubg-dark-color);
    --swatch-tertiary-color: var(--swatch-menubg-light-color);
    --swatch-alternate-color: var(--medium-accent);
 
    /* Text Colors for Secondary & Tertiary items like Sidebar Headers and Top-Bar Menu Text */
    --swatch-text-secondary-color: var(--swatch-menutxt-light-color);
    --swatch-text-tertiary-color: var(--swatch-menutxt-light-color);
 
    /* ===STRUCTURAL MEASUREMENTS=== */
    --header-height-on-desktop: 12rem;
    --header-height-on-mobile: 12rem;
    --header-width-on-desktop: 40rem;
    --body-width-on-desktop: 45rem;
    --topbar-height-on-desktop: 1.9rem;
 
    /* ===SIDEBAR BUTTON=== */
    --toggle-button-bg: rgb(var(--gray-monochrome));
    --toggle-border-color: transparent;
    --toggle-border-width: 0;
    --toggle-icon-color: rgb(var(--white-monochrome));
    --toggle-roundness: 25%;
 
}
 
/* background */
 
#skrollr-body {
    background-color: rgb(var(--swatch-background));
}
 
#skrollr-body::before {
    content: "";
    position: fixed;
    background-image: linear-gradient(to bottom, transparent, rgb(var(--swatch-background))), var(--article-image);
    background-size: 100% 100%, cover;
    width: 100vw; height: 100vh;
}
 
#container-wrap-wrap::before {
    content: "";
    position: fixed;
    width: 100vw; height: 100vh;
    -webkit-backdrop-filter: blur(13px);
    backdrop-filter: blur(13px);
} 
 
@media only screen and (min-width: 56.25rem) {
 
/* main content */
#main-content {
    padding: 0.5rem 1rem;
    margin: 3.5rem auto 1.5rem auto;
    background: rgba(var(--gray-monochrome));
    --swatch-background: 0,0,0,0;
    grid-template-areas: "action-area-top action-area-top action-area-top action-area-top action-area-top action-area-top""page-tags page-tags page-tags page-tags page-tags page-tags""page-title page-title page-title page-title page-title page-title""breadcrumbs breadcrumbs breadcrumbs breadcrumbs breadcrumbs breadcrumbs""page-content page-content page-content page-content page-content page-content""page-info-break page-info-break page-info-break page-info-break page-info-break page-info-break"". . pwatch pwatch pwatch pwatch"". . pinfo pinfo pinfo pinfo""options-1 options-1 options-1 options-1 options-1 options-1""options-2 options-2 options-2 options-2 options-2 options-2""pbottom pbottom pbottom pbottom pbottom pbottom""action-area-btm action-area-btm action-area-btm action-area-btm action-area-btm action-area-btm";
}
 
/* topmenu */
#header div[class*="top-bar"] > ul {
    background: rgba(var(--gray-monochrome));
    border-radius: 0.75rem;
    padding: 0 1rem;
    box-sizing: border-box;
}
 
#header div[class*="top-bar"] > ul > li > a {
    border-left: 1px dotted rgb(var(--white-monochrome));
}
 
#header div[class*="top-bar"] > ul > li:first-of-type > a{
    border: none;
}
 
/* make the login info go to the actual screen edge */
#header { 
     position: static; 
}
 
/* border under topmenu */
#header::after {
    content: "";
    position: absolute;
    height: 1px;
    background: rgba(var(--pale-gray-monochrome));
    width: 60rem;
    left: calc(calc(100vw - 60rem) / 2);
}
 
/* header logo */
#header {
   background-image: none;
}
 
#header::before {
    content: ""; width: 100%; height: var(--header-height-on-desktop);
    position: absolute; top: 0; left: 0;
    background: var(--logo-image); opacity: 0.25; background-position: center bottom;
    background-size: auto calc(var(--header-height-on-desktop) - 2rem);
    background-repeat: no-repeat;
}
 
#header div#top-bar {
    font-size: 1rem;
}
 
}
 
/* tags */
#main-content .page-tags {
    box-shadow: none;
    padding: 0;
    margin: 0;
    font-size: 1rem;
}
 
#main-content .page-tags::before {
    display: none;
}
 
#main-content .page-tags span {
    display: inline-flex;
    padding-top: -1px;
    font-size: inherit;
}
 
#main-content .page-tags span::before {
    color: rgb(var(--swatch-text-general));
    content: "TAGS:"
    font-weight: bold;
}
 
@media only screen and (min-width: 56.25rem) {
 
/* title */
#page-title, .meta-title {
    margin: 0;
    margin-top: 0.5rem;
    font-size: 2.5em;
}
 
/* center header */
 
#header :is(h1, h2) {
    width: 100%;
    max-width: var(--header-width-on-desktop);
    display: flex;
}
 
#header h1 a {
    margin: 4rem auto;
}
 
#header h2 span {
    margin-left: unset;
    font-size: 0;
    margin-top: 7.5rem;
    align-content: center;
    width: 100%;
    text-align: center;
}
 
#header h2 span::before {
    font-size: var(--header-h2-font-size);
}
 
}
 
/* buttons */
div[id*=page-options-bottom]:not(.page-rate-widget-box):not(#search-top-box-form)>a.btn {
    padding: 3px;
    box-shadow: none;
    flex-basis: 7rem;
}
 
div[id*=page-options-bottom]>a:after {
    content: none;
}
 
/* removing --swatch-background in places */
 
form#edit-page-form table.form:first-of-type tr:focus-within td:first-of-type, form#edit-post-form table.form:first-of-type tr:focus-within td:first-of-type, form#new-post-form table.form:first-of-type tr:focus-within td:first-of-type, form#new-thread-form table.form:first-of-type tr:focus-within td:first-of-type {
    color: rgb(var(--pale-gray-monochrome));
}
 
form#edit-page-form .edit-page-bottomtable tr > td:nth-of-type(1) > div:nth-of-type(1):focus-within::before, form#edit-post-form .edit-page-bottomtable tr > td:nth-of-type(1) > div:nth-of-type(1):focus-within::before, form#new-post-form .edit-page-bottomtable tr > td:nth-of-type(1) > div:nth-of-type(1):focus-within::before, form#new-thread-form .edit-page-bottomtable tr > td:nth-of-type(1) > div:nth-of-type(1):focus-within::before {
    color: rgb(var(--pale-gray-monochrome));
}
 
/* mobile */
 
@media only screen and (max-width: 56.25rem) {
 
:root {
    --header-h1-font-size: 6vw;
    --header-h2-font-size: 3vw;
}
 
#main-content > *, #main-content > * ~ * {
    max-width: var(--body-width-on-mobile);
}
 
#header :is(h1, h2), #top-bar {
    max-width: unset;
}
 
#header div#top-bar {
    max-width: unset;
}
 
#header div[class*="top-bar"] > ul {
    max-width: unset;
}
 
#content-wrap {
    background: rgba(var(--gray-monochrome));
}
 
#main-content {
    --swatch-background: 0,0,0,0;
    grid-template-areas: "action-area-top action-area-top action-area-top action-area-top action-area-top action-area-top""page-tags page-tags page-tags page-tags page-tags page-tags""page-title page-title page-title page-title page-title page-title""breadcrumbs breadcrumbs breadcrumbs breadcrumbs breadcrumbs breadcrumbs""page-content page-content page-content page-content page-content page-content""page-info-break page-info-break page-info-break page-info-break page-info-break page-info-break"". . pwatch pwatch pwatch pwatch"". . pinfo pinfo pinfo pinfo""options-1 options-1 options-1 options-1 options-1 options-1""options-2 options-2 options-2 options-2 options-2 options-2""pbottom pbottom pbottom pbottom pbottom pbottom""action-area-btm action-area-btm action-area-btm action-area-btm action-area-btm action-area-btm";
}
 
#top-bar {
    -webkit-backdrop-filter: blur(13px);
    backdrop-filter: blur(13px);
}
 
}
 
/* blockquote */
:is(blockquote, .blockquote, div.blockquote, [class*="blockquote"]) {
    background-color: rgb(var(--gray-monochrome));
}
 
/* footnotes */
.hovertip {
    -webkit-backdrop-filter: blur(10px);
    backdrop-filter: blur(10px);
}
 
.footnotes-footer a[href*="javascript"]::before {
    display: none;
}
 
.footnotes-footer a[href*="javascript"], .footnotes-footer a[href*="javascript"]:visited {
    color: rgb(var(--link-color));
    min-width: unset; width: 1ch;
}
 
/* owindow */
.infobox, #u-infobox, .odialog-shader, #odialog-container div.owindow {
    -webkit-backdrop-filter: blur(13px);
    backdrop-filter: blur(13px);
}
 
/* tags */
#main-content {
    --pagetags-text-color: var(--pale-gray-monochrome);
    --pagetags-text-hover-color: var(--dark-gray-monochrome);
}
 
.page-tags span::before {
    content: "TAGS:";
    font-size: 90%;
    display: inline-flex;
    align-items: center;
}
 
#main-content .page-tags span a:not([href^="/system:page-tags/tag/_"]), #main-content .page-tags span a:visited:not([href^="/system:page-tags/tag/_"]) {
    margin: 0;
    font-size: 90%;
}
 
:is(div.image-block, div.scp-image-block) :is(.image-caption, .scp-image-caption) {
    --wght: 600;
    box-sizing: border-box;
    width: 100%;
    padding: .5ex .5ch 1ex;
    background-color: rgb(var(--swatch-secondary-color));
    font-size: .9em;
    font-weight: var(--wght);
    line-height: 1.25;
    text-align: center;
    width: unset !important;
}
```

[- Close](javascript:;)

rating: +24[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

LEVEL  
**5**

SURVIVAL DIFFICULTY  
**CLASS 2**

**Exit: 1/5**  
Easy to Exit

**Environment: 2/5**  
Some Environmental Risk

**Entities: 2/5**  
Some Hostile Presence

---

![Missing alt text.](https://live.staticflickr.com/195/473878423_d13183323d_b.jpg)

An image of a lounge space in Level 5.

**The Hotel**, designated by [the M.E.G.](https://backrooms-wiki.wikidot.com/desolation-the-m-e-g) as **Level 5**, is the 6th of the 11 levels within the Backrooms and is relatively safe. However, do not let this lull you into a false sense of security, as that will make you vulnerable to desolation.

## Layout

As the name suggests, **Level 5** is made up of winding corridors and rooms that mimic the design of an old hotel from sometime between the late 1920's and early 1930's. The level's aesthetic can be described as luxurious, with walls covered in a mahogany-red and gold ornate wallpaper, and soft floors of freshly cleaned pattern rugs. Various chairs of scarlet and gold detail can be found decorating the rooms, along with a myriad of other decorations. This includes objects such as potted plants, ornate picture frames, bookshelves filled with unreadable text, hanging chandeliers, and standing lamps.

![Missing alt text.](https://live.staticflickr.com/99/265568071_3648157ac4_b.jpg)

An image of an elevator found throughout the level.

Throughout the level it is possible to find elevator shafts, the styles of which can range from those of the modern era to ancient copper cable pull systems. Within these elevators, a series of buttons can be found for floors 1 to 382. Attempting to ride the elevator to the floors one to twelve will lead to another section of **Level 5**. Attempting to ride the elevator to a floor higher than twelve will lead to an unknown location, as all who have attempted to do so have never returned. As of the creation of this page, it isn't recommended to try travelling any higher than the 12th floor.

Unlike the other levels of the Backrooms, **Level 5** is extremely clean throughout the entire level. All surfaces and pieces of furniture within the level are completely clean of dust. When a mess is created, it will mysteriously disappear after a few minutes, as if the level is somehow cleaning itself. While many may assume that the cleanliness of the level should make it feel more welcoming, in reality, it only amplifies the empty and isolated feeling. A reminder that you are, or one day will be, alone.

In recent times, **Level 5** has started to become infamous for strange noises that can be heard echoing from the halls or through the walls. These sounds range from distant party chatter, to quiet whispers, to a scraping and gnawing on wood. Not only that, but others have recently begun claiming the feeling of being watched while traversing through the halls. As if something is lurking behind them, breathing down their neck, or tapping on their shoulder before disappearing.

Do not give in to it.

## The Beverly Room

![Missing alt text.](https://live.staticflickr.com/91/220354155_6ebcd40748_b.jpg)

An image of the Beverly Room.

The Beverly Room is a unique room within **Level 5** that many consider to be the level's hub of sorts.

The room is quite small in size, covering only 400 square feet. Decorating the room are groups of chairs and tables, each carrying its own unique half-finished board game. Located in the center of the Northern wall is a grand open fireplace, constantly emitting a warmth that spreads through the entire room.

Covering the walls of the room are an array of doors, each leading to a separate area within the halls of **Level 5**, with the exception of two particular doors. These two doors, with the labels "175" and "Storage" written on ornate plaques secured to the doors, lead to a separate section of the level known as the "Boiler Room".

## The Boiler Room

![Missing alt text.](https://backrooms-wiki.wdfiles.com/local--files/desolation-level-5/Pipe)

An image of the Boiler Room.

The Boiler Room is a series of tight, claustrophobic maintenance tunnels, filled to the brim with old machinery. These machines cover the walls and sometimes the path within halls, often containing several moving parts including cogs, pistons, or rotary arms. Along with the machines, many pipes also run along the walls and ceiling of the corridors, transporting what appears to be [almond water](https://backrooms-wiki.wikidot.com/desolation-almond-water) throughout the level.

The temperature within the halls is constantly hot, caused by the excessive energy usage of the machines. Many of the surfaces and floors are constantly covered in a thin sheet of almond water, due to the steam emitted from many machines returning back to its liquid state. When traversing through sections such as this, it is important to tread carefully as to prevent loss of balance or collision with any sharp surfaces.

---

## Access

### Entry

- Access an elevator on [Level 3](https://backrooms-wiki.wikidot.com/desolation-level-3).
- Traverse a stairwell on [Level 4](desolation-level-4.md).
- Entering a house on [Level 10](desolation-level-10.md).

### Exit

- Re-entering an elevator will lead to [Level 3](https://backrooms-wiki.wikidot.com/desolation-level-3).
- Descend a set of stairs to return to [Level 4](desolation-level-4.md).
- Traveling deep into the Boiler Room will lead to [Level 6](https://backrooms-wiki.wikidot.com/desolation-level-6).
- Entering a dark-oak door will lead to [Level 9](desolation-level-9.md).

---

## Survival Guide

While **Level 5** may appear safe, it is important to keep your guard up at all times, as the level's apparent safety makes one especially susceptible to desolation. It is easy to forget that this level is not contained in normal [reality](https://backrooms-wiki.wikidot.com/desolation-earth).

When traversing through **Level 5**, be on the lookout for [hounds](desolation-hounds.md), which may be prowling through the halls. Keep a moderate supply of almond water on you at all times, and take any that you find while wandering through the halls. If you are need of assistance, attempt to make your way to the nearest stairwell and head to the M.E.G. base located on Level 4.

## Remind yourself of this regularly:

1. This is not my home!
2. I am not safe here!
3. I must remember!
4. I cannot stay here!

---

[+ The halls echo with the sounds of silent steps](javascript:;)

[-  Why have you done this to me](javascript:;)

By the one and only , here's my [authorpage](raptor472.md).

RELEASED UNDER THE **ASTRAL INK COOPERATIVE**

Bluelit by

---

"An image of a lounge space in Level 5." by [Alan Light](https://www.flickr.com/photos/alan-light/) from [Flickr](https://www.flickr.com/photos/alan-light/473878423/in/photostream/) Licensed under CC by 2.0

"An image of an elevator found throughout the level." by [Kmf164](https://www.flickr.com/photos/kmf164/) from [Flickr](https://www.flickr.com/photos/kmf164/265568071/) Licensed under CC by-SA 2.0

"An image of the Beverly Room." by [Alan Light](https://www.flickr.com/photos/alan-light/) from [Flickr](https://www.flickr.com/photos/alan-light/220354155/in/album-72157594241995550/) Licensed under CC by 2.0

"An image of the Boiler Room" by [Roger Johnsen](https://www.pexels.com/@roger-johansen-2410602/) from [Pexels](https://www.pexels.com/photo/tubes-and-pumps-inside-an-industrial-plant-7734388/) Licensed under Pexels License

« [Level 4](desolation-level-4.md) | Level 5 | [Level 6](https://backrooms-wiki.wikidot.com/desolation-level-6) »

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Desolation Level 5](desolation-level-5.md)" by Raptor472, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/desolation-level-5](desolation-level-5.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/desolation-level-5">Desolation Level 5</a>" by Raptor472, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/desolation-level-5">https://backrooms-wiki.wikidot.com/desolation-level-5</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** DSCN1782  
> **Author:** Alan Light  
> **License:** [CC BY 2.0](https://creativecommons.org/licenses/by/2.0/)  
> **Source Link:** <https://www.flickr.com/photos/alan-light/473878423/in/photostream/>

> **Name:** chrysler express elevator  
> **Author:** kmf164  
> **License:** [CC BY-SA 2.0](https://creativecommons.org/licenses/by-sa/2.0/)  
> **Source Link:** <https://www.flickr.com/photos/kmf164/265568071/>

> **Name:** DSCN0352  
> **Author:** Alan Light  
> **License:** [CC BY 2.0](https://creativecommons.org/licenses/by/2.0/)  
> **Source Link:** <https://www.flickr.com/photos/alan-light/220354155/in/album-72157594241995550/>

> **Name:** Boiler room  
> **Author:** James Loesch  
> **License:** [CC BY 2.0](https://creativecommons.org/licenses/by/2.0/)  
> **Source Link:** <https://www.flickr.com/photos/jal33/52816013836/>

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/desolation-level-5](https://backrooms-wiki.wikidot.com/desolation-level-5)
