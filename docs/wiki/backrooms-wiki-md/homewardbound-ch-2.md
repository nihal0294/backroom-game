---
title: "Homeward Bound: Chapter 2"
source: "https://backrooms-wiki.wikidot.com/homewardbound-ch-2"
retrieved_at: "2026-08-23T23:38:27+00:00"
license: CC-BY-SA-3.0
---

# Homeward Bound: Chapter 2

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
 
    --pale-accent: 112,112,100; /* background */
    --bright-accent: 200, 200, 10; /* link */
    --medium-accent: 160, 160, 80;
    --dark-accent: 100, 100, 60;
    --alt-accent: 140, 140, 17; /* newpage link */
 
    --link-color: var(--bright-accent);
    --visited-link-color: {$visited-link-color};
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

rating: +22[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  

Info

Special thanks to for letting me use their Desolation Canon, please check out their work!

Greenlit by and

[Close](index.md)

The pitch-black night sky loomed above the empty neighborhood. The only source of light was a cloying orange emanating from the sodium vapor lamps scattered down the barren street. Bathed gently in the light stood a man, his head cocked oddly to the side as he stood in silent vigil.

He had no face.

A woman sat atop an empty house. She stared blankly ahead, absentmindedly scratching into the shingles with the tip of a silvery Bowie knife.

The woman stared into the smooth blankness, her eyes following the ridges and shapes that once outlined a person's face. The man slowly raised his arm and gave a shallow wave, an action that was probably just muscle memory from its life. The woman shivered in disdain. She broke, a small grimace forming at the corner of her mouth as she finally lifted her knife from the crumbling roof.

"Take care of it, you know what to do." Her sister's voice rang out, shattering the silence.

The woman stood up, spinning the knife smoothly into a reverse grip. She walked to the edge of the building, her feet almost silent as she carefully trod upon the shingles. She found solid footing before leaping from the gutter at the curious creature. Her feet landed on its chest, bones crunching as she plunged her knife into its face with both hands.

Its death was instant and painless. More euthanasia than murder.

"See?" The second woman called out, now standing near the edge of the rooftop. "It gets easier."

The woman retracted the blade from the dry flesh of her prey. She gazed at her own reflection through the waxy residue of suppuration that facelings left behind before wiping her blade clean with a small, dirty towel.

"Let's move on," she replied coldly, sliding her fraying steel into a small, leather sheath.

The woman on the rooftop stepped away, the two of them leaving behind a corpse and a small carving in the rooftop that simply read, "James".

---

*Okay, it's not that gross. It just feels weird in my mouth.*

James was deep in thought, staring into the abyssal space within one of his canteens, which now mysteriously tasted of almonds. The bad part wasn't the almond flavoring—it was the oily mouthfeel that coated his taste buds and somehow made his teeth too smooth. His tongue explored his mouth as it found itself intrigued with the new texture.

The buzzing sound deepened as he leaned against a wall, the rough yellow wallpaper scratching against his skin. His feet were properly inundated now, somehow the floor maintained a consistent and irritating wetness that could not be avoided. With everything that he had packed in preparation, he brought a pair of rather shitty hiking shoes that he habitually wore out of comfort.

Comfort over function might be the death of him.

He had seen no signs of Mia in this hellhole, or anyone for that matter. The isolation was a real threat to him, as he felt his mind wavering to the obnoxious humming of the lights and infinitely repeating halls. He had seen all sorts of variations, from structural pillars to even some reddish rooms that looked so terrifying that he took a hard right at the sight of them.

Well, he *told* himself he hadn't seen anything. There had been…well, things that he had seen, figures flitting in and out of the corners of his vision. But he was almost certain it was all in his head.

Almost.

Was Mia really in here? How were they going to get back out?

The further he explored, the more James's thoughts had turned mostly to Mia rather than the swath of the anomalies, which had already given him a lasting migraine. He had decided to just accept it and try to survive, trudging forth as he tried desperately to ignore the pounding in his head.

---

*What in the glorious name of sweet baby Jesus was I thinking?*

Despite being a detective, Robert Seawell wasn't a particularly adventurous person. The thing about crime scenes was that they were usually contained to a small area. He could examine things at his leisure, then go home and crack a soda water before watching reruns and passing out. What, then, compelled him to walk through the strange, eerie, creepy, weird, strange, creepy flickering wall?

*Hubris*, he thought as he chugged almond-flavored water from a suspect canteen he had resourced from a wooden crate. *You are full of hubris. Change your name to Icarus, your wings have melted.* He had fallen through into a surprisingly well-lit set of hallways resembling the "employee only" areas behind locked mall doors. There was garbage everywhere. Wooden pallets, emptied boxes, and rodent corpses. Who knew all of this was hiding underneath the old mill. *Seriously, this place is massive. Who's been paying the electric bill for this place?*

Robert had followed, seeing James jump through the wall as soon as he had entered, hoping to assist in finding the man's wife. Even though he had entered only a few seconds after, they seem to have somehow been separated. Truly a conundrum.

He was exhausted but somehow not hungry. Robert popped open a door to find a small room with a greasy mattress shoved into the corner.

*Rob, this is how you get bedbugs.* He warned himself in vain as he laid down, finally able to take a rest.

As he settled, the lights flickered out.

---

Two M.E.G. operatives stood quietly behind a cracked door deep within what they called [Level 5](desolation-level-5.md). The door was made of beautifully marbled mahogany, and the gap allowed the pair to gaze cautiously into one of the luxurious lounge spaces scattered throughout the hotel. The regal red carpet was all but hidden under a gathering swarm of facelings. They all stood still, their empty faces pointed inward to the center of the group. More were slowly creeping in through other doors, slowly packing themselves into the room.

The first operative whispered to the other, "What are they doing?" The second shook her head, watching the writhing mass of bodies start to push inward. "I have no clue. We need to get out of here—now." They carefully closed the door and began moving along the walls to avoid attention.

The first operative began to speak, nary a whisper as they made their way out of the level. "There are reports of them doing this everywhere, I wonder what's going on."

"Maybe they're some kind of weird, creepy hive mind?"

"Maybe. Or maybe there's something else at play here."

"Were they really people, like us? And what else could be happening?"

The first operative sighed. "Sadly, yes. I've lost several friends to them." He shook his head as he quietly opened another door.

"I don't know, but in here, in this dark world, it can only be something bad."

The door opened into a pitch-black hallway. At the end was a sinister, grinning face that shone in the darkness.

---

James awoke to a particularly large swell of the incessant buzzing. His shoes, his ass, and somehow his spirit were all soaked through. His joints hurt—he hadn't found a single comfortable place to sleep.

He had begun to find new variations of the maze, which was a little comforting. Perhaps he was actually making progress. The yellow was beginning to really hurt his eyes, perhaps as bad as the tacky wallpaper plastered everywhere. He had used his knife to scrape some off, but there was just more yellow below.

By his estimation, he had been wandering for six days. He had been rationing his fluid carefully, however, he hadn't planned to be gone this long. He was starting to run low, and fear began to nag at his heart. He couldn't drink whatever was on the floor—it smelled of rot. He was getting desperate, but not that desperate.

He wandered on, passing bottomless, square pits and twisting halls. Another few days crawled by before he found something, something that brought him both hope and despair.

It was another flickering wall.

---

« [Chapter 1](homewardbound-ch-1.md) | Chapter 2 | [Chapter 3](https://backrooms-wiki.wikidot.com/homewardbound-ch-3) »

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Homeward Bound: Chapter 2](homewardbound-ch-2.md)" by DivineAtlas, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/homewardbound-ch-2](homewardbound-ch-2.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/homewardbound-ch-2">Homeward Bound: Chapter 2</a>" by DivineAtlas, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/homewardbound-ch-2">https://backrooms-wiki.wikidot.com/homewardbound-ch-2</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/homewardbound-ch-2](https://backrooms-wiki.wikidot.com/homewardbound-ch-2)
