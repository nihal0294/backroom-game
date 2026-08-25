---
title: "Desolation Level 9"
source: "https://backrooms-wiki.wikidot.com/desolation-level-9"
retrieved_at: "2026-08-23T23:38:57+00:00"
license: CC-BY-SA-3.0
---

# Desolation Level 9

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
    --article-image: url("http://backrooms-sandbox-2.wdfiles.com/local--files/frrixy/desolation_9_main");
 
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

rating: +20[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

LEVEL  
**9**

SURVIVAL DIFFICULTY  
**CLASS 2**

**Exit: 3/5**  
Difficult to Exit

**Environment: 4/5**  
Extreme Environmental Risk

**Entities: 0/5**  
No Hostile Entities

The **Dark Suburbs**, designated as Level 9 by [The M.E.G.](https://backrooms-wiki.wikidot.com/desolation-the-m-e-g), experiences accelerated rates of Desolation making it the most dangerous level of the Backrooms.

![Missing alt text.](https://backrooms-wiki.wdfiles.com/local--files/desolation-level-9/darknight10.png)

A photo of Level 9 where the foliage was less dense.

# Description

**Level 9** of the Backrooms is an infinite suburb devoid of any natural light. Most of the level is comprised of concrete roads and dirt pathways lit up by blue-light street lamps. Trees and bushes often line the paths, usually arching their branches down to the point where they can get in the way of anyone trying to walk down the road, as if by intention. The trees have also been seen "contracting" their branches toward themselves. This usually happens in especially dense sections of the outside. The species of the trees has not yet been identified through our limited biological investigations.[1](javascript:;) They are rather tall, crowded, and do not appear to bear fruit. The bark is very tough but hollow on the inside. Most trees have an opening in their trunk facing the road, large enough for a wanderer to climb inside, but not large enough for them to leave.[2](javascript:;) The rustling of leaves can be heard, despite the lack of wind in this level. Knocking and muffled voices have reportedly also been heard from inside the trees, but after searching for an opening on these trees, none was found.

![Missing alt text.](https://backrooms-wiki.wdfiles.com/local--files/desolation-level-9/densenight10.png)

Another photo showing a particularly dense part of the level.

Wanderers have reported feelings of time "slowing down, yet at the same time passing faster" when walking outside on the roads, along with "a calming exhaustion from barely any walking" and even "having trouble even making an estimate for what time it is". We do not have a watch to verify this. Wanderers can be seen seemingly losing consciousness for several minutes from the level's conditions, combined with exhaustion from the intense cold and having to break through the tough tree branches. If you see a wanderer in this state, it is highly recommended that you get close to them and wait until they wake up. It's safer for them if you're together.

# The Houses

Suburban houses can also be seen on the sides of the roads, usually completely surrounded by flora, save for the front and back yards. The interior is significantly warmer than the outside, and as such, finding a house should be a priority when entering the level.

### The Yards

The front yards don’t have much on them. Non-grass plants will never naturally cross over onto the front yard, making houses very easy to spot and get into from the road. The front door will also always be sharply lit, even when a light source is not present. Despite what you’d think, there has never been anything special on the front yards.

The back yards are dimly lit without an apparent lighting point and are usually empty, but will always contain a small dog house. Due to the yard's dark and isolated nature, and the densely populated trees surrounding it, it can make wanderers feel a deep sense of paranoia. This also extends to the house, meaning people will not try re-entering the house in fear of there being something on the other side of the door waiting for them. People often become trapped within their own minds, struggling to build up enough courage to enter the house again, at which point the effects will immediately wear off or fall to Desolation.

### The Inside

The moment a wanderer enters a house, the TV in the living room will turn on, playing what seems to be a 90s TV show. The TVs are cold to the touch. The name of the show is never mentioned, and no credits are present before or after an episode. When an episode ends, another begins immediately with no ad breaks. Episode reruns are also possible, but rare.[3](javascript:;) Each house has its own TV show, characters, setting, and plot. Even then, only humans and dogs have been seen on the shows. Wanderers have reported characters in the shows looking and sounding familiar, yet not being able to pinpoint the exact person it reminds them of. This is another effect of the heavy Desolation.

The houses are sparsely decorated, with only a couple pieces of furniture present alongside the TV. They’re also sometimes missing significant items, such as toilets, beds, chairs, or entire doors. Voices and words can also be heard or seen from objects that are able to record, be written on, or contain liquid. If a bed is present, however, you are free to sleep in it, as it will help alleviate feelings of unease or paranoia. Wanderers have reported being able to fall asleep really easily and, while doing so, easing any pain, stress, or physical injuries they might have sustained. Remember to lock all doors and windows before going to sleep.

Going up the stairs to the second floor of a house usually sends you to [Level 4](desolation-level-4.md), but in the cases where it does not, there is always a glowing item present. This item can be anything from a cassette tape, a landline telephone, a radio, or an entire bed. This is also how the [Recordless Player](object-91.md) was found. Taking these items and bringing them down sends you to [Level 6](https://backrooms-wiki.wikidot.com/desolation-level-6) and makes the second floor inaccessible. If anyone is on the second floor while the glowing item is removed, they vanish. Throwing the object down the stairs will still make the second floor inaccessible, but the object will also stop glowing, signaling the permanent removal of the second floor.

# Effects of Desolation & Reports

Aside from the regular Desolation-related effects present throughout all of the Backrooms, Level 9 features two unique cases.[4](javascript:;)

The first case occurs when a wanderer falls unconscious outside, next to an open tree. While unconscious, their entire nervous system seemingly shuts down. This has been proven by a few rare cases in which the wanderer was conscious and experienced rapid eye movements. After several hours pass, the wanderer's body will appear to vanish. We have not been able to find any of the lost bodies. One of the reports mentions how an individual was seen lying on the ground, before disappearing after the sound of creaking branches.

The second case occurs inside the houses. This is a special case of Desolation, as it is one that can be fought against and postponed through mental strength. While it is entirely safe to live in the houses, wanderers may still feel uneasy due to the aforementioned effects present inside the houses. It is most prevalent while asleep, as some wanderers expressed having dreams of camera equipment, studio sets, reciting lines from scripts, and even starting some dreams with the word "Action!". Every report also pointed out a door in the back of the studio with the text "ON AIR?" above it. The more affected that wanderers would be by the level's Desolation, the more they were compelled to open it. None of the wanderers that could send in reports opened the door.

# Survival Guide

You will have to dig into your Almond water reserves pretty heavily when traversing this level, as there is barely any of it inside the houses. Try to find a group to traverse with as, if one of you falls unconscious, the others can be there to protect you. It also makes getting through the trees easier, as there are more of you to cut the branches. The branches do not require external tools since they can be snapped. Try to find a house as fast as possible; it is your only way of surviving in this level. Do not enter the backyard for any reason.

Be careful inside the houses, since a lot of objects are very fragile and there could be dire consequences to breaking them. Objects can also randomly move themselves, so be careful to not be hit by resident falling jars and instead catch them so they don't break on the floor and spill all their voices out. That would suck. We don't know if giving in to their voices counts as survival, but the people who did seem happy.

## Access

### Entrances

- Entering a dark-oak door in [Level 5](desolation-level-5.md) will lead here. It can also sometimes lead to the second floor of a house.
- Any stairway or door in [Level 4](desolation-level-4.md) can rarely lead here.
- Going through a sideways dark-oak door in [Level 8](https://backrooms-wiki.wikidot.com/desolation-level-8) will lead to the ceiling of a house, which will drop you from there to the ground.
- As with all levels, entry is possible via no-clipping on [Earth](https://backrooms-wiki.wikidot.com/desolation-earth).

### Exits

- Going upstairs will usually lead to [Level 4](desolation-level-4.md).
- Going downstairs with the glowing object will send you to [Level 6](https://backrooms-wiki.wikidot.com/desolation-level-6).
- Walking off the main path into a dense part of the forest can bring you to the road of [Level 10](desolation-level-10.md).
- While inside the house, breaking through any locked door will lead to [Level 3](https://backrooms-wiki.wikidot.com/desolation-level-3).

« [Level 8](https://backrooms-wiki.wikidot.com/desolation-level-8) | Level 9 | [Level 10](desolation-level-10.md) »

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Desolation Level 9](desolation-level-9.md)" by FrixwithanF, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/desolation-level-9](desolation-level-9.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/desolation-level-9">Desolation Level 9</a>" by FrixwithanF, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/desolation-level-9">https://backrooms-wiki.wikidot.com/desolation-level-9</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Filename:** darknight10.png  
> **Name:** Dark Night 10  
> **Author:**   
> **License:** [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)  
> **Source Link:**

> **Filename:** densenight10.png  
> **Name:** Dense Night 10  
> **Author:**   
> **License:** [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)  
> **Source Link:**

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

Footnotes

[1](javascript:;). Such as wanderers looking at them.

[2](javascript:;). We do NOT recommend that anyone explore inside the bark, as escape has been proven impossible due to the cramped nature of the inside.

[3](javascript:;). It is worthy to mention that the rerun will never be the \*exact\* same as a previous airing. With some lines, laugh tracks, or camera angles altered or moved around. The characters in the show will also appear more weary and cautious, delivering their lines poorly. The plot of the episode will still be the same.

[4](javascript:;). It is not entirely known if these effects are even caused by Desolation, but it is strongly believed so.

---

Source: [https://backrooms-wiki.wikidot.com/desolation-level-9](https://backrooms-wiki.wikidot.com/desolation-level-9)
