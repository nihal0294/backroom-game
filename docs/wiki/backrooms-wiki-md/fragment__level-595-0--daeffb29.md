---
title: "Level 595 - \"The Damned Dam\""
source: "https://backrooms-wiki.wikidot.com/fragment:level-595-0"
retrieved_at: "2026-08-23T23:38:52+00:00"
license: CC-BY-SA-3.0
---

# Level 595 - "The Damned Dam"

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
    --article-image: url("http://backrooms-wiki.wikidot.com/local--files/level-595/Lake");
 
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

SURVIVAL CLASS  
**2**

**Resources: 3/5**  
Food is Scarce

**Exit: 1/5**  
Easy to Exit

**Environment: 4/5**  
Extreme Environmental Risk

**Entities: 0/5**  
No Hostile Entities

# **Description:**

!["Graph of Level 595 showing the different sections labeled, lake, dam, forest, and blue channel"](http://backrooms-wiki.wikidot.com/local--files/level-595/Level%20595%20graph)

Simple graph of Level 595's layout.

**Level 595** is an infinite dam that contains an *Endless Lake*, with *The Dam* overlooking [The Blue Channel](blue-channel.md). It is devoid of entities and is set in a perpetual state of nighttime, with the main source of light within the level being a moon. The only abnormality with the moon is that it does not change positions in the sky.[1](javascript:;)

**Level 595** is distinct from other levels because it extends infinitely in all directions except one. West of *The Dam* where *The Lake* is located is infinite and so are both ways the dam stretches.[2](javascript:;) East where *The Woods* are located is, however, finite. The woods stretch for 21.5 miles (35 Kilometers), then the level abruptly cuts off. We call this section *The Edge*. *The Edge* is where the level layout stops and The Blue Channel begins. As a result of this, one can freely step into The Blue Channel because it makes up the entirety of the east side of the level.

"The structure of the dam is not sustaining the amount of pressure and wear needed to cause the damage that it is currently experiencing. Due to this, I do not believe that excessive foot traffic from humans will damage it for now."  
-Sam Cuttler, former foreman of the Dam Reconstruction Project

---

## **Sections:**

# **The Lake**

!["A photo of a white moon reflecting off a lake without an end at night."](http://backrooms-wiki.wikidot.com/local--files/level-595/Lake)

A photo taken from the lakeshore depicting a part of the lake that is devoid of islands.

*The Lake* is located west of the dam. It is assumed to be infinite, and explorations are still ongoing to determine if there is an end. The depth of the lake is currently indiscernible. There could be a lake floor, but due to the lack of diving gear, further exploration has been put on hold.

Several items can be found in plastic grocery bags floating in the lake. These bags all have the label Backrooms Supercenter and what is presumed to be their subsequent logo posted on the front and back of the bag. The items that can be found in the bags are usually things that are considered produce and can range from beverages like [Almond Water](object-1.md) and [Lucky O' Milk](object-28.md) to foods like [ChocoBytes](object-67.md) and [Warpberries](object-74.md).

---

# **The Dam**

!["A large dam consisting of many arches that are lit from under with warm lights. There is a forest in front of the dam, and it is nighttime."](http://backrooms-wiki.wikidot.com/local--files/level-595/Redmodeled%20Dam)

A remodeled section of the dam with lights installed. Backrooms Remodeling Co. bases can be seen in front of it.

*The Dam* is in a state of disrepair and continues to become more damaged every day. The damage in question is not caused by wanderers or weather and is currently unexplained. It seems as though the consistent damage is a part of the level's natural progression.

Upon entering the level, one will always end up on the maintenance road atop *The Dam*. This road is entwined with cracks due to the overall state of *The Dam* and is made of pitch-black asphalt. The maintenance road boasts guardrails on either side that are rusted in some places. The guardrails can sometimes have steel electrical boxes built into them. These boxes will open and do not contain any electrical components, but have been known to occasionally contain [Lightning In A Bottle](object-42.md).

*The Dam* is the central landmark within **Level 595**. It is the primary object of focus within this level due to its role. It is the only object between *The Lake* and mass flooding. The flooding would not concern the M.E.G. if The Blue Channel weren't situated directly in front of *The Lake*. Due to The Blue Channel being almost completely dead space and surrounding The Backrooms, flooding would prove to be fatal. This is because *The Lake* would run without end into The Channel, resulting in heavy impacts and has the potential to flood every level.

The “Dam Reconstruction Project” is an ongoing collaboration between the [M.E.G.](https://backrooms-wiki.wikidot.com/m-e-g) and [Backrooms Remodeling Co.](backrooms-remodeling-co.md) to reconstruct/repair *The Dam*. If you would like to contribute to the “Dam Reconstruction Project", contact a M.E.G. representative. Or you can call █-███-███-████!

---

# **The Woods**

!["A photo taken in the woods at night, a faint light can be seen in the distance."](http://backrooms-wiki.wikidot.com/local--files/level-595/Woods)

Photo taken in *The Woods*. The light of a Backrooms Remodeling Co. base can be seen in the distance.

*The Woods* are considered by many to be the most “normal” part of **Level 595**. This is because it is almost identical to a Frontrooms cedar forest. The only major difference between **Level 595's** forest and a Frontrooms forest is the trees. The bark of the trees look and feel as if they are made of wood, but upon further testing, the M.E.G. found that the trunks of the trees are made entirely of plastic.

The M.E.G. also found that the leaves growing from the trees are normal, as if they were growing from a Frontrooms cedar tree. The Epidermis, Mesophyll, and Vascular Tissue all seem to match that of a Frontrooms leaf.

---

# **The Edge**

!["A photo of a blue sky above a treeline."](http://backrooms-wiki.wikidot.com/local--files/level-595/Blue%20Channel)

A view of the treeline ending and The Blue Channel beginning taken from *The Dam*.

*The Edge* is the point where The Blue Channel cuts through the entirety of the east side of the level. It is the section of **Level 595** that wanderers are advised to keep their distance from the most. Due to the vastness and disorienting nature of The Blue Channel, most people who venture into it will be lost. Another danger of being near The Blue Channel is that objects or entire sections of buildings will sometimes float into **Level 595**. This could put anyone on or near the edge in danger of being hit.

The Backrooms Remodeling Co. has confirmed that The Blue Channel's existence in **Level 595** is not due to [Phenomenon 9](phenomenon-9.md). They say that it is just a part of the natural geography of the level. This is further proven because The Blue Channel is not eating away or damaging the level and has kept the same position in the level as of now.[3](javascript:;)

## **Bases, Outposts and Communities:**

# Revamp Divide

---

{$caption}

The Revamp Divide is a collection of small bases and camps spanning the east side of *The Dam*. These camps are set up right next to *The Dam*, sometimes overflowing into the tree line.

This base was set up by the M.E.G. so that The Backrooms Remodeling Co. and The M.E.G. could have a place to store their equipment and live while trying to fix *The Dam*. There are three sections of the Revamp Divide: Storage, Living Quarters/Offices, and Tents.

**Storage**  
The storage sections of the base are the most chaotic. It's where The Backrooms Remodeling Co. stores all of its reconstruction vehicles and equipment. Across the sections, there are generator-powered lights to help the employees see the parts of the dam they are working on. Vehicles are usually parked in random patterns in these sections, and handheld equipment is placed in storage containers.

This is also where all of their building materials are stored, such as concrete, plaster, explosives, various stones, metal beams, and decorative elements. The Backrooms Remodeling Co. says that the resources are transported to **Level 595** through The Blue Channel. Their means of doing this is unknown since no one has ever seen a delivery.

**Living Quarters/Offices**  
The Living Quarter/Office sections of the base are comprised of conex boxes that are modified with doors, windows, and furnished interiors for living and working. These conexes were made specifically by The Backrooms Remodeling Co. and are located in or near the storage sections. If anyone who is not a part of The Backrooms Remodeling Co. attempts to go inside the conexs, employees will raise their voice and, if prompted, push wanderers away from them.

The conex boxes are only accessed by high-ranking members of The Remodeling Co. Some people have caught glimpses of the interiors of the conexes and have seen employees ordering supplies. They describe the interiors as "RV-like, with couches, desks, and tables."

**Tents**  
The tents are where all M.E.G. members on **Level 595** live. Most members only go to their tents to rest/keep their superiors informed and spend the majority of their time overseeing the reconstruction of *The Dam*.

These tents are set up in *The Woods* in spots that are separate from The Backrooms Remodeling Co. This is mainly due to the fact that the employees of The Backrooms Remodeling Co. do not care about anything except doing their job. This has caused injuries, and sometimes the deaths of wanderers, so the M.E.G. made the executive decision to give them their space.

While the M.E.G. does give The Remodeling Co. its space, a fully hands off approach is not possible. Since they are known to not be smart and cause injuries, it is the M.E.G.'s job to make sure construction stays on track, keep random wanderers who show up in the level away from them, and make sure any reconstruction volunteers keep their distance from the employees.

The Revamp Divide is meant to be barebones in the event that *The Dam* breaks. The temporary style of the base would drastically reduce the loss of life, equipment, and items in the event of a flood.

# Entrances

- [*Doors*](javascript:;)
- [*Smooth Thresholds*](javascript:;)
- [*No-clipping*](javascript:;)

Entering any doors from the listed levels below will lead to the maintenance road atop the dam.

- Doors labeled "DAM ACCESS" in The Staff Halls of **[Level 43](level-43.md) - "Water World"**
- Doors with cracks in The Waterparks area of **[Level 58](level-58.md) - "Water Wonder"**
- The metal double doors labeled "Level 595" in the community center of **[level 650](level-650.md) - "Boveta"**

Smooth thresholds are when a wanderer travels long enough or in a specific direction, and the level they were in prior changes to another level.

- Traveling down a corridor that is illuminated by moonlight in **[Level 37](level-37.md) - "Sublimity"** will lead to The Lake
- Swimming or boating far east of the starting room in **[Level 7](level-7.md) - "Thalassophobia"** will lead to The Lake
- Traveling the dam in **[level 797](level-797.md) - "The Path Less Traveled"** can lead to the maintence road on The Dam
- Walking in the forests of **[level 88](level-88.md) - "Muted Lake"** can lead to The Woods

No-clipping is another way to enter the level; this can be through intentionally no-clipping or interacting with things that cause one to no-clip.

- Attempting to block the waterflow of the lake in **[Level 10.1](level-10-1.md) - "Corpse Lake"** will cause wanderers to no-clip to The Dam
- Trying to repeatedly break through the ice in **[level 420](level-420.md) - "The Frozen Lake"** will result in no-clipping to The Lake
- Noclipping into the lake in **[level 494](level-494.md) - "Mirror Lake High School"** will lead to the shoreline of The Lake
- No-clipping while in the woods in **[level 240](level-240.md) - "Lotka Lake"** will lead to The Woods

  
 

## Exits

  

- [*Doors*](javascript:;)
- [*Smooth Thresholds*](javascript:;)
- [*No-clipping*](javascript:;)

- Finding a watertight door on the side of The Dam leads to **[Level 103](trimmed__level-103--c11ca38e.md) - "Aircraft Carrier"**
- Finding metal double doors labeled "Boveta" within the woods will lead to **[level 650](level-650.md) - "Boveta"**

- Traveling in the woods until finding a dirt path will lead to **[level 39](level-39.md) - "Enchanted Forest"**
- Walking around an island in the level will have a chance of leading to **[level 323](level-323.md) - "Island Use Policy"**
- Traveling The Lake in any fashion has the chance of leading to **[level 422](level-422.md) - "To Be At Sea"**

- Finding a shopping cart and interacting with it will lead to **[level 657](level-657.md) - "On small island live only one shopping cart."**
- Stumbling upon a mirror and no-clipping into it will send you to **[level 365](level-365.md) - "Your Worst Enemy"**

## **Additional Files Relevant To Level 595**

[Proceed To INC:224 File](https://backrooms-wiki.wikidot.com/level-595/offset/1)  
[Proceed To Eculid Device Protection Program](https://backrooms-wiki.wikidot.com/level-595/offset/2)

Footnotes

[1](javascript:;). The position is always just above *The Lake*.

[2](javascript:;). North and south.

[3](javascript:;). 21.5 miles (35 Kilometers) from The Dam.

---

« [Level 594](https://backrooms-wiki.wikidot.com/level-594) | **Level 595** | [Level 596](https://backrooms-wiki.wikidot.com/level-596) »

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Level 595 - "The Damned Dam"](fragment__level-595-0--daeffb29.md)" by Wondrous Expanse, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/fragment:level-595-0](fragment__level-595-0--daeffb29.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/fragment:level-595-0">Level 595 - "The Damned Dam"</a>" by Wondrous Expanse, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/fragment:level-595-0">https://backrooms-wiki.wikidot.com/fragment:level-595-0</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** Level 595 graph  
> **Author:**   
> **License:** CC BY 3.0

> **Name:** Lake  
> **Author:** Forest and Kim Starr  
> **License:** CC BY 3.0  
> **Source Link:** <https://openverse.org/image/5044ca5e-74b3-4d35-8b82-2d9ae5686458?q=Ocean+at+night&p=41>

> **Name:** Blue Channel  
> **Author:** ArtTower  
> **License:** Pixabay License  
> **Source Link:** <https://pixabay.com/photos/moon-moon-shine-canim-lake-65957/>  
> **Additional Notes:** Edited by

> **Name:** Woods  
> **Author:** Famartin  
> **License:** Creative Commons Attribution-Share Alike 4.0  
> **Source Link:** <https://commons.wikimedia.org/wiki/File:2017-11-17_03_24_52_Dim_light_reflected_off_of_clouds_through_a_stand_of_trees_at_night_along_Lees_Corner_Road_(Virginia_State_Route_645)_in_Chantilly,_Fairfax_County,_Virginia.jpg>

> **Name:** Moon Over Lake  
> **Author:** photo-graphe  
> **License:** Pixabay License  
> **Source Link:** <https://pixabay.com/photos/moon-full-moon-sea-sky-night-sky-2762111/>

> **Name:** BRC Base  
> **Author:** Famartin  
> **License:** CC BY-SA 4.0  
> **Source Link:** <https://openverse.org/image/b8b14803-c7ea-4497-adc8-5e1d9fcbb7ce?q=Construction+equipment+at+night&p=1>  
> **Additional Notes:** Edited by

> **Name:** Conex  
> **Author:** r. nial bradshaw  
> **License:** CC BY 2.0  
> **Source Link:** <https://www.flickr.com/photos/zionfiction/9860594126/>

> **Name:** Tents  
> **Author:** zzarri69  
> **License:** Pixabay License  
> **Source Link:** <https://pixabay.com/photos/tent-night-view-camping-night-2401047/>

> **Name:** Sam Cut  
> **Author:** Todd Huffman  
> **License:** CC BY 2.0  
> **Source Link:** <https://openverse.org/image/873273d1-c14b-4173-b5c3-23d30418db25?q=Man+profile+picture&p=73>

> **Name:** Sam Cuttler Note  
> **Author:**   
> **License:** CC BY 3.0

> **Name:** Redmodeled Dam  
> **Author:** Martin Lopatka  
> **License:** CC BY-SA 2.0  
> **Source Link:** <https://openverse.org/image/a5f0bfc7-c26a-4a96-a733-7701bb6eacf2?q=Dam+at+night&p=15>

> **Name:** Laser Sensor  
> **Author:** Christine Matthews  
> **License:** Creative Commons Attribution-Share Alike 2.0  
> \*\*Source link:\*<https://commons.wikimedia.org/wiki/File:River_Thames_with_Laser_Meridian_Line,_Greenwich,_at_Night_-_geograph.org.uk_-_4694073.jpg>

> **Name:** Warehouse 4  
> **Author:** Cory Doctorow  
> **License:** Creative Commons Attribution-Share Alike 2.0  
> **Source link:** <https://commons.wikimedia.org/wiki/File:Empty_exhibits_hall,_ALA_Liblearnx,_convention_center,_warehouse_district,_New_Orleans,_Louisiana,_USA.jpg>

> **Name:** Boveta Meeting Room  
> **Author:** Unnerving duck  
> **License:** Creative Commons Attribution-Share Alike 4.0  
> **Source link:** <https://commons.wikimedia.org/wiki/File:United_Nations_Geneva_conference_room.jpg>

> **Name:** Cillian Ruby  
> **Author:** storyvillegirl  
> **License:** CC BY-SA 2.0  
> **Source link:** <https://openverse.org/image/25accf79-8d38-44b7-a9cf-ac7fc5f182ec?q=Chinese+soldier&p=24>

> **Name:** BackMailbar  
> **Author:**   
> **License:** CC0  
> **Source link:** [https://backrooms-wiki.wikidot.com/object-74](object-74.md)

> **Name:** BackMailReply  
> **Author:**   
> **License:** CC BY 3.0

> **Name:** Dam Explosion  
> **Author:** Gplpark92  
> **License:** Public domain  
> **Source link:** <https://commons.wikimedia.org/wiki/File:Toronto_Propane_Explosion_-_2008.jpg>

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/fragment:level-595-0](https://backrooms-wiki.wikidot.com/fragment:level-595-0)
