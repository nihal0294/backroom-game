---
title: "Desolation Backrooms Guide"
source: "https://backrooms-wiki.wikidot.com/desolation-backrooms-guide"
retrieved_at: "2026-08-23T23:39:26+00:00"
license: CC-BY-SA-3.0
---

# Desolation Backrooms Guide

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
 
    --pale-accent: 112,112,112; /* background */
    --bright-accent: 255, 170, 0; /* link */
    --medium-accent: 150, 150, 150;
    --dark-accent: 90, 90, 90;
    --alt-accent: 221, 50, 17; /* newpage link */
 
    --link-color: var(--bright-accent);
    --visited-link-color: 205, 205, 205;
    --newpage-link-color: var(--alt-accent);
 
    --swatch-background: var(--pale-accent);
    --article-image: url("http://scutoidbox.wikidot.com/local--files/desolation-backrooms/eggrooms3.jpg");
 
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

# YOU THERE.

## Stay calm, and read carefully.

  
*Hello, whoever you are. We are the M.E.G.: a small group of wanderers working to help as many people as we can, and get us out of this place. We can't afford to spread this over more than two pages, so we'll be concise.*

*You've probably been wandering in this building, cave, or dark suburb for a while. You might be wondering where you are, and how to get home — that's good, hold onto that. Remember where you came from above all else. That being said, your questions need answers, so read onward.*

---

## The Backrooms

  
*Nobody remembers who first called it that, but it's a fitting name — it's like we're in the backrooms of reality.*

*The Backrooms is a series of levels — infinite landscapes with a consistent look and theme. If you don't know what to look for you could be trapped in one's monotony forever.*

*We call travel into/throughout the Backrooms 'no-clipping': phasing through solid objects.*

- *You can no-clip through visibly glitched areas in reality. Ever seen one wall in a room that's darker than the others?*
- *You can no-clip by performing strange maneuvers against a wall. If you see somebody else, they might be able to teach you to do it — it's hard to describe in writing.*
- *You can no-clip by entering an area that resembles another level, especially a particularly empty and desolate space. If you didn't notice anything had happened, this is probably how you got here.*

*The Backrooms has 11 levels; we call them by these numbers for simplicity: [0 - Yellow Halls](https://backrooms-wiki.wikidot.com/desolation-level-0), [1 - Concrete Lots](https://backrooms-wiki.wikidot.com/desolation-level-1), [2 - Pipe-lined Halls](https://backrooms-wiki.wikidot.com/desolation-level-2), [3 - Electricals](https://backrooms-wiki.wikidot.com/desolation-level-3), [4 - Blue Office](desolation-level-4.md), [5 - The Hotel](desolation-level-5.md), [6 - Darkness](https://backrooms-wiki.wikidot.com/desolation-level-6), [7 - The Ocean](https://backrooms-wiki.wikidot.com/desolation-level-7), [8 - Caves](https://backrooms-wiki.wikidot.com/desolation-level-8), [9 - Dark Suburbs](desolation-level-9.md), and [10 - The Fields](desolation-level-10.md). We are based on Level 4, as it is the safest.*

*There are a few creatures, generally known as "entities". The [faceless humans](desolation-facelings.md) are safe, [windows that look like they lead outside](https://backrooms-wiki.wikidot.com/desolation-windows) are traps, and [that thing](desolation-hounds.md) is not a dog.*

---

## Desolation

  
*This whole place feels off, doesn't it? It's all off, so desolate. That's the effect this place has on all things. It's called "desolation", and the best way to sum it up is that it makes things strange and liminal. It makes things feel unusual and generates a sense of unease. Three main categories of desolation that you should be aware of are:*

#### Desolation in Structures

  
*Avoid building fully-closed structures; they can become sub-levels, which can mean being trapped, locked away from any means to survive. Imagine you built a small shack from pieces of the wall on Level 0. You stay the night in it, and you know you'll be safe — it's secure, you made sure of it. You wake up, and you try and leave your shack, and it never ends. Trapped.*

#### Desolation in Objects

  
*Objects also experience the effects of desolation. Your phone will malfunction, your books will become unreadable, your pictures will fade or become strange and unrecognizable. Bottles of water will become a substance called "almond water", it smells of almonds and has an oily feeling in the mouth. It is safe to drink — more on it later.*

#### Desolation in Humans

  
*In humans, desolation manifests in two main ways: forgetting, and transforming. Calm down and read extremely carefully.*  
*First, after a while people tend to forget important things. Usually the first things to go are things pertaining to the Backrooms, and things pertaining to where you came from. People go into a daze where they have no history and no goals, and they wander around aimlessly, almost as if they're a part of the Backrooms itself.*  
*Then, people turn into an entity known as a [Faceling](desolation-facelings.md). You might have seen one around, as they're reasonably common. A human becomes a Faceling after long enough of forgetting where they've come from, as the effects of desolation take hold and become irreversible. Their name comes from the smooth skin which covers where their face should be.*

---

## Survival

- *Drink almond water. As mentioned before, water will turn into almond water over time, but it can also be found all around the place. Avoid drinking it if it seems off in any way other than its oily texture.*
- *Find others. Facelings cannot help you, but people can. If you find somebody, make yourself useful and try to stick together. If you find us, the M.E.G., we will help you.*
- *REMIND YOURSELF WHO YOU ARE, WHERE YOU ARE, AND WHERE YOU CAME FROM.*

---

**THE M.E.G.** | ACCEPTING ENTRAPMENT, ACHIEVING ESCAPE

---

rating: +45[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

[+ author](javascript:;)

[- author](javascript:;)

This is not meant to be an explanation of the Backrooms in the general wiki canon, it's for a new canon called Desolation Canon.  
~ . check out my [author page](scutoid.md), or lose your face.  
[eggrooms 3](http://scutoidbox.wikidot.com/local--files/desolation-backrooms/eggrooms3.jpg) by "" is licensed under [CC-BY-SA-3.0](http://creativecommons.org/licenses/by-sa/3.0/).  
  
RELEASED UNDER THE **ASTRAL INK COOPERATIVE** - Bluelit by *Ratiftheratgod* does not match any existing user name

---

Source: [https://backrooms-wiki.wikidot.com/desolation-backrooms-guide](https://backrooms-wiki.wikidot.com/desolation-backrooms-guide)
