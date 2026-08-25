---
title: "Level 991 - \"The Architecture of Symbolic Angels\""
source: "https://backrooms-wiki.wikidot.com/level-991"
retrieved_at: "2026-08-23T23:37:07+00:00"
license: CC-BY-SA-3.0
---

# Level 991 - "The Architecture of Symbolic Angels"

Walk my length. Feel my air. Digest my moonlight sonata.

[+ Code](javascript:;)

[- Hide](javascript:;)

```
/*============================================*|
LIMINAL SIGMA THEME
FOR BACKROOMS WIKI
CC-BY-SA-3.0
------------
~ [[user:scutoid studios]] or whatever
|*============================================*/
 
/* SCP Sigma-10 Theme */
@import url("https://scpwiki.github.io/sigma/css/sigma.min.css");
 
/* Fantasque Sans Mono Font */
@import url("https://backrooms-wiki.wikidot.com/component:fantasque-sans-mono/code/1");
 
/* Public Sans Font */
@import url('https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
 
/* Info Module */
@import url(https://scp-wiki.wdfiles.com/local--code/info%3Astyle/1);
 
/* COMMON */
 
:root {
    /* Typefaces */
    --body-font: 'Public Sans', Inter, Verdana, Geneva, "Helvetica Neue", "Helvetica", sans-serif;
    --UI-font: 'Public Sans', Arial, PTRootUI, -apple-system, system-ui, BlinkMacSystemFont,
        "Segoe UI", Roboto, Oxygen-Sans, Ubuntu, Cantrell, "Helvetica Neue",
        sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
    --header-font: 'Fantasque Sans Mono', Courier New, Ubuntu Mono, Consolas, monospace;
    --title-font: var(--header-font);
    --mono-font: 'Fantasque Sans Mono', Recursive, Consolas, monaco, monospace;
 
    /* Colors */
    --white-monochrome: 252, 252, 252; /* ALTERED */
    --pale-gray-monochrome: 237, 233, 223; /* ALTERED */
    --light-pale-gray-monochrome: 237, 233, 223;
    --very-light-gray-monochrome: 220, 215, 210;
    --light-gray-monochrome: 165, 160, 155;
    --gray-monochrome: 72, 69, 60;
    --dark-gray-monochrome: 64, 63, 52;
    --black-monochrome: 25, 20, 16;
    --pale-accent: 230, 23, 68;
    --bright-accent: 140, 136, 126; 
    --medium-accent: 72, 69, 60;
    --dark-accent: 140, 136, 126;
    --alt-accent: 221, 102, 17;
 
    --link-color: var(--pale-accent);
    --visited-link-color: var(--light-gray-monochrome);
    --newpage-color: var(--alt-accent);
}
 
h1,
#page-title {
    color: rgb(var(--medium-accent));
    font-weight: bold;
    font-family: var(--title-font);
}
 
h1 {
    font-family: var(--header-font);
}
 
h2,
h3,
h4,
h5,
h6 {
    font-family: var(--header-font);
}
 
#page-title {
    border-color: rgb(var(--light-gray-monochrome));
}
 
.meta-title {
    border-bottom: solid 1px rgb(var(--light-gray-monochrome));
    color: rgb(var(--medium-accent));
    font-weight: bold;
    font-family: var(--title-font);
}
 
a {
    color: rgb(var(--link-color));
}
 
a:visited {
    color: rgb(var(--visited-link-color));
}
 
a.newpage {
    color: rgb(var(--newpage-color));
}
 
/* GLOBAL WIDTH */
body {
    background-color: rgb(var(--pale-gray-monochrome));
    color: rgb(var(--black-monochrome));
    font-family: var(--body-font);
}
 
input,
textarea {
    font-family: var(--mono-font);
}
 
div#container-wrap {
    background-image: radial-gradient(circle, rgb(var(--medium-accent), 0.05) 50%, transparent 0);
    background-size: 0.25em 0.25em;
    background-repeat: repeat;
    background-attachment: fixed;
}
 
div#container {
    background: linear-gradient(to bottom, rgba(var(--medium-accent),0.8), rgb(var(--medium-accent)) 140px, rgb(var(--medium-accent)) 161px,transparent 161px) top left repeat-x;
}
 
/* HEADER */
#header {
    background-image: url('http://backrooms-wiki.wdfiles.com/local--files/component%3Atheme/logo.svg');
}
 
#skrollr-body {
    background-image: radial-gradient(circle, rgb(var(--medium-accent)) 50%, transparent 0);
    background-repeat: repeat;
    background-size: 0.25em 0.25em;
    width: 100%;
    height: 140px;
}
 
/*
 * Commenting out the search box at the top while native
 * Wikidot search remains non-functional.
 *
 
#search-top-box-input {
    border: solid 1px rgb(var(--light-gray-monochrome));
    color: rgb(var(--light-gray-monochrome));
    background-color: rgb(var(--dark-gray-monochrome));
}
 
#search-top-box-input:hover,
#search-top-box-input:focus {
    border: solid 1px rgb(var(--white-monochrome));
    color: rgb(var(--white-monochrome));
    background-color: rgb(var(--medium-accent));
}
*/
 
#search-top-box-form input[type='submit'] {
    border: solid 1px rgb(var(--light-gray-monochrome));
    color: rgb(var(--light-gray-monochrome));
    background-color: rgb(var(--medium-accent));
    background-image: linear-gradient(to bottom, rgb(var(--medium-accent, .5)), rgb(var(--medium-accent)), rgb(var(--dark-gray-monochrome)));
}
 
#search-top-box-form input[type='submit']:hover,
#search-top-box-form input[type='submit']:focus {
    border: solid 1px rgb(var(--white-monochrome));
    color: rgb(var(--white-monochrome));
    background-color: rgb(var(--medium-accent, .5));
    background-image: linear-gradient(to bottom, rgba(var(--medium-accent, .3)), rgb(var(--medium-accent, .5)), rgb(var(--medium-accent)));
}
 
#login-status {
    color: rgb(var(--pale-gray-monochrome));
}
 
#login-status a {
    color: rgb(var(--white-monochrome));
}
 
#login-status ul a {
    color: rgb(var(--bright-accent));
}
 
#account-topbutton {
    background: rgb(var(--light-gray-monochrome));
    color: rgb(var(--bright-accent));
}
 
#header h1 a {
    color: rgb(var(--white-monochrome));
    font-family: var(--title-font);
    text-shadow: 3px 3px 5px rgb(var(--black-monochrome));
}
 
#header h2 span {
    color: rgb(var(--white-monochrome));
    font-family: var(--title-font);
    text-shadow: 1px 1px 1px rgb(var(--black-monochrome));
}
 
/* TOP MENU */
#top-bar {
    font-family: var(--title-font);
}
 
#top-bar a {
    color: rgb(var(--white-monochrome));
}
 
#top-bar ul li ul {
    border: solid 1px rgb(var(--gray-monochrome));
}
 
#top-bar ul li.sfhover a,
#top-bar ul li:hover a {
    background: rgb(var(--pale-gray-monochrome));
    color: rgb(var(--pale-accent));
}
 
#top-bar ul li.sfhover ul li a,
#top-bar ul li:hover ul li a {
    border-top: 1px solid rgb(var(--white-monochrome));
}
 
#top-bar ul li.sfhover a:hover,
#top-bar ul li:hover a:hover {
    background: rgb(var(--white-monochrome));
}
 
/* adding a third level for entities and levels */
 
#top-bar li ul li ul, #top-bar li ul li ul {
    display: none;
}
 
#top-bar li:hover ul li:hover ul, #top-bar li.sfhover ul li.sfhover ul {
    top: 0;
    right: 100%;
    display: block;
}
 
/* SIDE MENU */
 
#side-bar .side-block,
#interwiki .side-block {
    border: 1px solid rgb(var(--bright-accent));
    box-shadow: 0 2px 6px rgba(var(--black-monochrome), 0.5);
    background: rgb(var(--white-monochrome));
}
 
#side-bar .side-block.media {
    background: rgba(var(--gray-monochrome), .5);
}
 
#side-bar .side-block.resources {
    background: rgba(var(--gray-monochrome, .3));
}
 
#side-bar .heading,
#interwiki .heading {
    color: rgb(var(--bright-accent));
    border-bottom: solid 1px rgb(var(--bright-accent));
    font-weight: bold;
    text-transform: capitalize;
    font-family: var(--header-font);
}
 
/* For sidebar item with smaller text, like SCP series links */
 
#side-bar a,
#interwiki a {
    color: rgb(var(--link-color));
}
 
#side-bar .menu-item.inactive a {
    color: rgb(var(--light-gray-monochrome));
}
 
#side-bar .menu-item .sub-text {
    color: rgb(var(--gray-monochrome));
}
 
#side-bar .collapsible-block-unfolded-link {
    border-bottom: solid 1px rgb(var(--bright-accent));
}
 
#side-bar .collapsible-block-unfolded-link .collapsible-block-link {
    color: rgb(var(--bright-accent));
}
 
#side-bar .collapsible-block-unfolded-link .collapsible-block-link:hover {
    color: rgb(var(--link-color-monochrome));
}
 
/* side bar mobile query on their own */
@media (max-width: 767px) {
    #top-bar .open-menu a {
        border: 0.1em solid rgb(var(--light-gray-monochrome));
        background-color: rgb(var(--white-monochrome));
        color: rgb(var(--light-gray-monochrome));
    }
 
    #side-bar {
        background-color: rgb(var(--medium-accent));
    }
}
 
/* YUI-TABS */
.yui-navset .yui-content {
    background-color: rgb(var(--white-monochrome));
}
 
.yui-navset .yui-nav a,
.yui-navset .yui-navset-top .yui-nav a {
    background-color: rgb(var(--light-gray-monochrome));
    background: linear-gradient(to bottom, rgba(var(--white-monochrome),0.7), rgb(var(--white-monochrome)));
}
 
.yui-navset .yui-nav .selected a,
.yui-navset .yui-nav .selected a:focus,
.yui-navset .yui-nav .selected a:hover {
    /* no hover effect for selected */
    background: linear-gradient(to bottom, rgba(var(--medium-accent),0.7), rgb(var(--medium-accent)));
    color: rgb(var(--white-monochrome));
}
 
.yui-navset .yui-nav a:hover,
.yui-navset .yui-nav a:focus {
    background: linear-gradient(to bottom, rgba(var(--light-gray-monochrome),0.7), rgb(var(--light-gray-monochrome)));
    color: rgb(var(--white-monochrome));
}
 
.yui-navset .yui-nav,
.yui-navset .yui-navset-top .yui-nav {
    border-color: rgb(var(--dark-gray-monochrome));
}
 
/* FOOTER */
#footer {
    color: rgb(var(--light-gray-monochrome));
}
 
#footer a {
    color: rgb(var(--white-monochrome));
}
 
/* SOME NICE BOXES */
div.sexy-box {
    background: rgb(var(--white-monochrome));
    border: 1px solid rgb(var(--light-gray-monochrome));
}
 
div.sexy-box div.image-container img {
    border: 1px solid rgb(var(--light-gray-monochrome));
}
 
/* Custom page content classes */
 
.styled-quote {
   background-color:rgb(var(--white-monochrome));
   border-left: 0.5rem solid rgba(var(--gray-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.dark-styled-quote {
   background-color:rgb(var(--gray-monochrome));
   border-left: 0.5rem solid rgba(var(--black-monochrome));
   color:rgb(var(--white-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.dark-styled-quote a{
color: rgb(var(--swatch-menubg-medium-color));
}
 
.lightblock {
   background-color:rgb(var(--white-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
.darkblock {
   background-color:rgb(var(--gray-monochrome));
   color:rgb(var(--white-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
.content-panel {
    border: solid 1px rgb(var(--white-monochrome));
    background-color: rgb(var(--white-monochrome));
    box-shadow: 3px 3px 6px rgb(var(--light-gray-monochrome));
    box-shadow: 0 2px 6px rgba(var(--black-monochrome), 0.5),
        inset 0 1px rgba(var(--white-monochrome), 0.3),
        inset 0 10px rgba(var(--white-monochrome), 0.2),
        inset 0 10px 20px rgba(var(--white-monochrome), 0.25),
        inset 0 -15px 30px rgba(var(--black-monochrome), 0.1);
}
 
.content-panel.standalone {
    background: rgb(var(--pale-gray-monochrome));
}
 
.content-panel .panel-heading {
    color: rgb(var(--white-monochrome));
    text-shadow: 1px 1px 2px rgba(var(--black-monochrome), 0.35);
}
 
.content-panel .panel-heading > p,
.content-panel .panel-footer > p {
    margin: 0;
}
 
.content-panel .panel-body {
    background: rgb(var(--white-monochrome));
}
 
.content-panel .panel-footer {
    color: rgb(var(--white-monochrome));
    text-shadow: 1px 1px 2px rgba(var(--black-monochrome), 0.5);
}
 
.content-panel .panel-footer a {
    color: rgb(var(--white-monochrome));
}
 
.content-panel .content-toc {
    background-color: rgb(var(--white-monochrome));
    border: solid 1px rgb(var(--light-gray-monochrome));
    box-shadow: inset 1px 2px 6px rgba(var(--black-monochrome), 0.15);
}
 
.alternate:nth-child(even) {
    background-color: rgba(var(--white-monochrome), 0.9);
}
 
/* Page Rating Module Customizations */
.page-rate-widget-box {
    box-shadow: 1px 1px 3px rgba(var(--black-monochrome), 0.5);
}
 
/* Has increased specificity to override action-area rate's stylesheet */
div.page-rate-widget-box .rate-points {
    background-color: rgb(var(--medium-accent));
    border: solid 1px rgb(var(--medium-accent));
}
 
.page-rate-widget-box .rateup,
.page-rate-widget-box .ratedown {
    background-color: rgb(var(--white-monochrome));
    border-top: solid 1px rgb(var(--medium-accent));
    border-bottom: solid 1px rgb(var(--medium-accent));
}
 
.page-rate-widget-box .rateup a,
.page-rate-widget-box .ratedown a {
    color: rgb(var(--medium-accent));
}
 
.page-rate-widget-box .rateup a:hover,
.page-rate-widget-box .ratedown a:hover {
    background: rgb(var(--medium-accent));
    color: rgb(var(--white-monochrome));
}
 
.page-rate-widget-box .cancel {
    background-color: rgb(var(--medium-accent));
    border: solid 1px rgb(var(--medium-accent));
}
 
.page-rate-widget-box .cancel a {
    color: rgb(var(--white-monochrome));
}
 
.page-rate-widget-box .cancel a:hover {
    background: rgb(var(--medium-accent));
    color: rgb(var(--white-monochrome));
}
 
/* Standard Image Block */
.scp-image-block {
    border: solid 1px rgb(var(--gray-monochrome));
    box-shadow: 0 1px 6px rgba(var(--black-monochrome), 0.25);
}
 
.scp-image-block.block-right {
    margin-right: 0;
}
 
.scp-image-block.block-left {
    margin-left: 0;
}
 
.scp-image-block .scp-image-caption {
    background-color: rgb(var(--white-monochrome));
    border-top: solid 1px rgb(var(--gray-monochrome));
}
 
/* Keycap */
.keycap {
    border-color: rgb(var(--white-monochrome)) rgb(var(--light-gray-monochrome)) rgb(var(--light-gray-monochrome)) rgb(var(--white-monochrome));
    background-color: rgba(var(--light-gray-monochrome),0.5);
}
 
/* tag style */
.tags {
    background: rgb(var(--gray-monochrome));
    color: rgb(var(--white-monochrome));
}
 
.tags::before {
    border-color: transparent rgb(var(--gray-monochrome)) transparent transparent;
}
 
.tags::after {
    background: rgb(var(--white-monochrome));
    -webkit-box-shadow: -1px -1px 2px rgb(var(--dark-gray-monochrome));
    box-shadow: -1px -1px 2px rgb(var(--dark-gray-monochrome));
}
 
/* Display Black Block by Nanimono Demonai */
.bblock {
    color: rgb(var(--black-monochrome));
    background-color: rgb(var(--black-monochrome));
}
 
.bblock:hover {
    background-color: rgb(var(--black-monochrome));
}
 
.dblock {
    color: rgb(var(--black-monochrome));
    background-color: rgb(var(--black-monochrome));
}
 
/* Blockquote Mimic Div */
div.blockquote, blockquote {
    border: 1px dashed rgb(var(--light-gray-monochrome));
    background-color: rgba(var(--white-monochrome), 0.5);
}
 
/* Content Warning for adult content */
div#u-adult-warning {
    border: 3px solid rgb(var(--dark-gray-monochrome));
    background: rgb(var(--white-monochrome));
    color: rgb(var(--dark-gray-monochrome));
}
 
div#u-adult-warning > div#u-adult-header {
    text-shadow: 1px 2px 3px rgba(var(--black-monochrome), 0.5);
    color: rgb(var(--medium-accent));
}
 
/* Info */
#u-infobox {
   opacity: 0 !important;
   pointer-events: none;
   display: flex;
   width: 100vw; height: 100vh;
   top: 0; left: 0;
   position: fixed;
   z-index: 20;
   background-color: rgba(var(--black-monochrome),.8);
   justify-content: center; align-items: center;
}
 
#u-infobox:target {
   opacity: 1 !important;
   pointer-events: unset;
}
 
.infobox-title, .owindow .title {
    font-size: 120%;
    font-weight: bold;
    padding: 0.2em 1em;
    background-color: rgb(var(--pale-gray-monochrome));
}
 
.infobox, .owindow {
    background-color: rgb(var(--white-monochrome));
    width: 50em;
    border: 2px solid rgb(var(--pale-gray-monochrome));
    text-align: left;
    position: absolute;
}
 
.infobox-footer {
    text-align: right;
    padding: 0.2em 1em;
    margin: 0.5em;
}
 
.infobox-title p, .infobox-footer p {
   all: unset;
}
 
.infobox-body {
    padding: 0.5em 1em;
}
 
.rate-box-with-credit-button {
    background-color: rgb(var(--medium-accent));
    border: solid 1px rgb(var(--gray-monochrome));
    box-shadow: 1px 1px 3px rgba(var(--black-monochrome),.5);
}
 
.creditButton p a {
    color: rgb(var(--white-monochrome));
    border-left: solid 1px rgb(var(--light-gray-monochrome));
}
 
/* Table */
 
table.wiki-content-table th {
    border: 1px solid rgb(var(--gray-monochrome));
    background-color: rgb(var(--light-gray-monochrome));
    color: rgb(var(--white-monochrome));
}
 
table.wiki-content-table td {
    border: 1px solid rgb(var(--gray-monochrome));
}
```

rating: +38[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

SURVIVAL DIFFICULTY:

4

- Unsafe.
- Secure.
- Entity Infestation.

![Missing alt text.](https://backrooms-wiki.wdfiles.com/local--files/level-991/meandmydeadends2%20%281%29.jpg)

The woods of **Level 991**; one instance of Lerlón is present within the image.

Upon its initial discovery, a total of 48 identifiable[1](javascript:;) human corpses were discovered within the confines of **Level 991**, each bearing evidence of strangulation, marked by ligature marks circling their necks. The state in which they were found was particularly unsettling, as they were arranged by an outside force in mockingly life-like configurations, as if frozen in time while going about life. Among the disturbing tableau, a group of several corpses were found positioned on their knees, while a standing one, clutching a flower crown in its hand, appeared to be in the act of adorning them. They were found within varying states of decomposition, with most being so decayed[2](javascript:;) that interaction with them carries a high risk of catching diseases.[3](javascript:;)

Their degradation and placement throughout the locale were the most apparent abnormal properties of the level, which assumes an otherwise ordinary appearance. **Level 991** encompasses a forested space that limits its size to a rough area of twenty square miles; within its center, a ruined building can be found that appears no larger than most suburban houses when viewing its exterior. Outside of this structure, a light breeze can constantly be felt throughout the space, rustling the trees and causing them to never let a quiet moment exist within the level. The density of foliage contributes to how inherently uncomfortable it is here; spending any longer than fifteen minutes traversing this section of the level will garner one a few minor scrapes and have one covered in greenery. Nothing that will actually prove to be detrimental to wanderers, but enough to impact the mind.

The forest is forever still; despite the gentle wind giving the area sound and making the leaves shuffle, everything feels static. There is no wildlife[4](javascript:;) in the area; the temperature is unchanging and moderate; the sun is hidden behind an ever-present sheet of clouds; and the flora never grows. Clocks, physical or digital, cease all function when entering the level and promptly resume when transported to another. It isn't as though there is any abnormal temporal phenomenon on the level, but the atmosphere easily convinces one otherwise.

With its horrid and thick odor, the abandoned house makes itself known. At the center of **Level 991**, its presence stands tall and aggressive, clashing with its surroundings like a beggar in the Sistine Chapel. Its exterior has many visible entrances, be they half-open doors or shattered windows. The pungent scent of damp rot is the first thing to greet its visitors, followed by the chilling cold that permeates the air. Lining the internal area are a number of purposeless rooms—filled with emptied containers, debris, and plant life—that harbor hallways leading deeper into the building. Many floorboards and ceilings within are decayed or entirely absent, while various forms of damage, such as water damage and collapsed debris, cover much of the interior.

The halls within are extensive and entirely devoid of meaningful items. Their structural composition is inconsistent, sometimes featuring supporting pillars or ceiling trusses.[5](javascript:;) Within these corridors, the otherwise Euclidean nature of this level is discarded, allowing one to venture infinitely without reaching a defined center. Exploration into these endless passages seems to be completely pointless, though, as convenient exits to the level can be found in the border sections of the forest. However, as one delves further into these hallways, the quantity and density of Lerlón increase.

![Missing alt text.](https://backrooms-wiki.wdfiles.com/local--files/level-991/lerlon.jpg)

A corridor of **Level 991**; four instances of Lerlón are present within the image.

Described as "disturbing oddities" by those who have traversed this level, Lerlón are humanoid objects characterized by bunny-shaped heads. They are beings made of some gray hardened clay and are very commonly noted as statues upon first viewing; their body size varies from each individual instance but usually tends towards six feet. These objects exhibit signs of sentience, as they've been observed evidence of their "curious" demeanor becomes apparent once they are seen "watching" a wanderer of the level.

Lerlón exhibit peculiar behavior; they often conceal themselves behind debris or plant life, facing wanderers of the level. As the person moves, Lerlón will turn their bodies to maintain eye contact, always keeping a distance of at least twenty feet. They shadow the individual, moving only when they have proper cover from the human's line of sight. Interestingly, Lerlón seem to find the behavior of travelers intriguing[6](javascript:;) and may mimic specific actions taken by them. However, despite this curiosity, the objects are also afraid of human life and will "freeze" whenever directly spotted by a person.

When directly spotted by a person, Lerlón will cease all motion and remain perfectly still. During this state, wanderers have the opportunity to directly interact with the objects, making it a valuable opportunity to destroy[7](javascript:;) them. However, if one hesitates for too long and allows their gaze to linger for more than approximately thirty seconds, the Lerlón will spring to life and "attack" the individual who prompted their still period.

![Missing alt text.](https://backrooms-wiki.wdfiles.com/local--files/level-991/Een_hol_begroeid_met_vegetatie_van_de_pluisjesmos-klasse.jpg)

A tunnel discovered in the woods of **Level 991**.

It may not be an obvious attack, but if a Lerlón is able to properly get a hold of a wanderer, any chance of escape is slim. A secondary set of stone hands will sprout from its torso and grapple onto the wanderer, preventing them from being able to flee. Once ensnared, breaking free becomes increasingly difficult as the grip of the stone hands tightens relentlessly. As the wanderer struggles in its grasp, the Lerlón's ordinary set of hands will move across them in an exploratory manner. They will let a hand run across the wanderer's torso, tugging at their clothes with inhuman strength, almost ripping them off, while another hand pulls at their face, treating skin, teeth, and eyes as one. As the wanderer writhes in agony, the Lerlón's touch becomes increasingly invasive, digging beneath skin and letting their fingers run through one's innards with a sense of oblivious curiosity. The human will act as their plaything and be crumpled under their hands.

Should one not be killed shortly within this initial period, no better fate awaits them. Within a couple of minutes, more instances of Lerlón[8](javascript:;) will appear and partake in this activity as well. It's at this point where the death of the human is entirely ensured, as the statues will desperately reach out and rip off chunks of the person's body, claiming it for themselves until the wanderer is no more. Once the physicality of the corpse has dispersed, the Lerlón will all quickly go off to separate sections of the level far from what took place. Several of them have been found clutching human remains—tightly.

A total of 178 wanderers have went into and left this level, none with the same physical composition as when they entered. The Lerlón take the human fragments they acquire through their violent means and scribble words onto them. They do so with great conviction. Their fingers will move elegantly and systemically, carving messages onto the entirety of each piece they gather. What they write on them is non-uniform, but always written in legible English. Once they are pleased with their product, they make their way into the deepest parts of the central building of **Level 991**. They will lumber on for days, ignoring all else, until they have entered the ballroom.

The sybaritic Lerlón only exist to attend a night of the ballroom. The location only opens itself to those with self-molded invitations, you see, as Amnion favors those with a higher level of base intellect. No, not intellect, I think she wants her audience to be unique. She wants them to share the same keen perversion she has. Yes, I've spoken to her. In-depth conversations late at night and brief run-ins while we both went about our day. I know her labyrinth better than anyone else on this plane of existence, and I have mapped it out with painstaking precision. I know the physical location, yes; it's an auditorium, quite simple in design, with dingy, white walls that go up nearly eighty feet. The floor plan, coupled with the barely functioning A/C stifles any and all sense of individualism you might have still been holding onto. You're in her house now, breathing her endlessly recirculated air, becoming one with the gathering crowd; you're all here to see the sights she has to show you and the experiences she has for you to live through. She has you right in the palm of her hand, and she's getting high off the vulnerability you've allowed her.

![Missing alt text.](https://backrooms-wiki.wdfiles.com/local--files/level-991/00_ds_bw_042012_klein_0395.jpg)

Amnion in her empyrean cocoon.

I know what's on your mind; you want to find out what kind of art exhibitions she holds. Every night, a new wonder of the flesh—a different collision of the immaterial. You've likely heard tale of the depravity that goes on in her showroom, and it's probably hard for you to keep yourself from drooling. However, we must first discuss the method by which you're reading this here information. Level 991 is an inkblot on the public database of levels within the Backrooms and something that wanderers non-affiliated to any faction have been wanting more information on for ages. Its entries are non-standard and constantly changing, and when someone does manage to sneak in, data recollection is near impossible. The space natively cannot be described in any public fashion, and any accounts of it are swiftly lost through coincidental means. I personally believe this is because Amnion isn't ready to make herself known, but those in the know all have different theories on what exactly goes on. One of my colleagues once guessed that this space was within the deep recesses of the human mind, and all it took was losing your marbles to slip into the level. He surmised that, since the entry method of the level was individual, knowledge on it could not be shared. That idea gave me a laugh, yes, but it was impossible to disprove. Hell, it's one of the better ones I've heard.

No matter the case, ordinary methods of documentation for this level are ineffective. The menial text above is the longest information on this place that has been available, but I don't have hope it will be up for much longer. Believe it or not, the descriptions for the space were compiled by a [level-spanning super computer that mashes together the collective near death experiences of wanderers to explain the unexplainable](level-505.md). It's likely that this A.I. is responsible for a number of other level descriptions, but the efforts of its creators are for naught. Level 991 will dispose of its innerworkings with a well-timed electrical spark, shutting it down and preventing it from keeping its documentation up. That might seem far fetched, but it's done more ridiculous things to keep itself hidden. *I have scattered multiple copies of the papers you're reading this on all throughout the Backrooms; if you're reading this, then it's likely that the ballroom is soon to open and its clients ready to be taken in.*

Despite it seeming like this level is destined to fade into obscurity, there are people who are obsessed with the art it holds and other such levels. Collectively, we are a small group that goes by the name "Livia Blue," and our purpose is solely to discover which levels in the Backrooms carry radiant tones, mind-bending sights, and sickening experiences. Yes, some find our fascinations macabre. However, when one of our artists tells you that there is no greater pleasure than seeing someone devoid of hope have their psyche be torn apart in ways that squeeze music out of their memories, you'll see a fire in their eyes that tells you they have full confidence in their words.

Now, I have been a core member of Livia Blue for a great many years, and when I first heard the rumors of an art show that displays a stitchwork of humans turned into a walking Eiffel Tower, I initially laughed them off. The Backrooms is home to weird sights, yes, but that hardly scratches the itch in my head. That's nothing more than a [Clump](entity-5.md) who learned the intricacies behind bipedal movement—end of story. But, the stream of myths never stopped coming. An entire M.E.G. outpost worth of people turned into an inverse crown of thorns. A set of wanderers fashioned into a seraphim—a construction that was actually capable of flight. There was even a tale floating around of where exactly these displays were being held and how such feats were made possible; I heard from one of our new students that the skin of an M.E.G. overseer was spread so thin and given such structure that it formed a travelling, floating circus, one headed by an immortal body-stitcher. A supposed expert in their craft that put the natural and torturous features of the Backrooms to shame.

I could laugh those hoaxes off, yes, but one day a colleague of the blue handed me an invitation specifically made for me. My name carved into a severed cheekbone, with instructions of where to meet and what awaited me inscribed alongside it. I kept my composure in front of my fellowship, but the second I managed to lock myself into my study, I went over this invite with intense scrutiny. There was no doubt about its authenticity; the supple tissue and perfectly done inscriptions ruled out any possibility of a fledgling artist trying to fool me.

I will not describe exactly the method of my entry to the forest; rest assured that those fated to come here will do so when the time is right, but the speed at which I departed from our artist collective and went into Amnion's embrace is proof enough of the fervor that was in my veins. I spent a few weeks making my way into the heart of the building. Many a time did a curious rabbit peek their head into the corridor I was walking down, but once they saw the flesh I bore, none gave me any trouble.

On my umpteenth day within the structure, I heard the beautiful sound of a harp down one of the hallways I was considering entering. Before I knew it, I was below Amnion's empyrean cocoon and looking at her dainty fingers strumming a melody on the threads surrounding her. As soon as the synapses in my brain fired off the electrical signals required for my mouth to move and begin vocal communication, everything around us warped and bent.

The year is 1991, and I am sitting in a wooden chair. I am at a dining room table in a small shack neatly placed on a hill in Italy. The sun is radiant, and the skies are full of pristinely white clouds dotting its divine blue. In my hands is a newspaper that I flip through without much thought; my eyes are much more focused on the beautiful day outside the set of six large windows in front of me. The sound of foreign radio music softly settles into the scene, introduced by someone behind me. The vibrations here are intense.

"What took you so long last night? I was really expecting you back soon—stood up pretty late reading some magazines in bed."

"It was another death," I respond without thinking. "Someone fell down the well on our break. He wasn't a part of my group, but we had to spend the whole day fishing him out. He contaminated all of the water, so we took some time to get barrels over to Capalbio to keep them going until it was all cleaned."

She walks into my view and places coffee and a plate with two cornettos in front of me. She's wearing a drab gray skirt and casual shoes; her hair flows long over her shoulders. She slowly walks to the side of the table opposite to me as she speaks. "That makes… three in a month? They really need to work on how much they watch you all. What you're doing is dangerous enough, but to know that you don't even get the benefit of a pair of eyes behind you? It rubs me the wrong way; it really does. If you were one of the people who died, they would be giving me *gold bars* as compensation." She sits down at the table.

"Hah, nice to know you care… The truth is, we really aren't monitored at all. That's one of the reasons I started this job. But things are different than they were four years ago, and now it looks like it's going to bite us in the ass. They're considering halting our operations until proper safety procedures are put into place… If you ask me, it's bullshit. That guy who fell didn't even die from black lung disease."

"You know," she says as she takes out a pocket mirror and puts on her lipstick, "I don't think it would be a stretch to say that he didn't fall into that well on accident… The others have it really bad, I've seen, and dying that slowly makes some people do dumb things."

"Dumb things that get us stuck in situations like this for weeks. People like him really piss me off; do something like that in private. He not only inconvenienced us working folk but also the entire village we were doing our business in. I can almost picture our contractor on his hands and knees begging the mayor of that place not to kick us out."

Her lips are a glossy rose now, and they're all I can focus on as she speaks. "That contractor… Did he notice you getting the body?"

"No, I'm the de facto body remover at this point. No one else has the stomach for it."

Her eyes light up with that fact, and she springs up in anticipation. "Is it in your trunk? You don't even need to bother getting it for me; I can do it all by myself."

"No," I try and hide my laugh, "you can't. It's heavy from all that water." I leave the untouched food on the table and stand up, making my way to the truck in front of the house. She follows suit.

The heat outside is overbearing, and the bugs are loud with energy. My truck is actually property of the company I'm under, but it's perfect for my hobbies. The truckbed is nice and large, currently with a black plastic tarp covering my latest haul. She watches excitedly as I pull it off, revealing the cadaver lying on a bed of loose coals and rocks.

The water he was initially submerged in caused some bloating, yes, but it worsened as a result of being subjected to high temperatures for so long. I had not accounted for the weather of today when I brought him in, but it made my find much more interesting. The body of my coworker was partially dismembered and deformed. He is screaming, but no sound comes from his lips, which have been charred by the heat. His scalp is bare, his teeth are loose, and his arms and legs are enlarged. All of him is blue, and a subtle hissing comes from the pressure deep within.

I'm the first to break the silence as both of our gazes remain transfixed on the corpse. "The state of him won't be an issue, yes? It took us many hours to get him out, so I wou—"

"No, it's perfect." I look over to her as she smiles at what I have brought in. This has been our little, depraved secret hobby for quite some time. I bring her something to work with, she makes a sculpture of the thing, and I bring it into one of our surrounding villages during the witching hour. People wake up to a red Christmas tree or skin obelisk or boiled confessional booth in the middle of their town and are taken aback by the bizarre craftsmanship. Sure, in public no one is allowed to show anything other than disgust towards this weird thing, but they're all intrigued by it. Some have started calling the people who they believe to be behind this the Human Workshop, and I'm starting to like that name. Amnion doesn't mind it either.

The song she's playing on the threads of her cocoon comes to an end, slowly taking me out of the dream she built around me. The ballroom's main hall returns, and I am on my knees, with my hands to my side, looking up at her. Some drool spills out from my mouth. I compose myself and stand up; what she has shown me is enough to convince me that she is the mastermind behind the rumors I've heard, but then I hear a dripping behind me. It's slow and methodical. I turn my head to face it, and it turns out to be the same man from that dream. He is fashioned now into an art piece, but he's there. His general shape has been distorted into a sort of a lollipop; a thin metal stake holds him up in the air. He is much more bloated than before, to the point that he's become a complete circle, and many holes are present on all sides of him. Each hole leaks and drips water.

A burnt-out matchstick drops down in front of my face, suspended in the air by a thread of Amnion. I take it between my two fingers and examine its ordinary appearance. It's small and it's thin; perfect to fit in one of the many holes of this statue. The mere fact that I thought of that tells me that this is what I'm supposed to do; she knows the innerworkings of my mind. Instructions are not needed. I walk over and stand in front of the imposing corpse and bring the matchstick up and plug up one of its holes. It's a perfect fit; water no longer drips from that opening.

I hear the scurrying of animals all around me, and I take a few steps back from the object in shock. For a couple of moments, I thought I had done something wrong until I saw, emerging from the wallpaper, many Lerlón. Each hurriedly made their way to observe the exhibition, and they made a circle around me and the statue. I counted eighty. From above, more matchsticks fell and were held in the air by threads, and one by one Lerlón walked over to take them. In turn, each participant would take this matchstick, plug a hole of the corpse like I did, and return to their observatory formation.

This goes on for a minute or two before all the Lerlón have finished, and my coworker no longer produces any water. Everyone in the room looked at the art piece for a second, waiting expectantly, before the bloat suddenly exploded with its build up of water. The water got on everyone and everything in the room and fell on us for much longer than it should have; I haven't heard a Lerlón speak, but at this time I swear I heard the roaring laughter of entertained children as we all danced around in the water droplets as they were held in stasis.

I had not felt such joy in the Backrooms up until then, and I wanted to live in that moment forever. Amnion is a cruel one, though, and made all of the water fall to the floor without notice. As it did, the Lerlón fell to the ground like dolls without children to play with them, and I was left effectively alone in the room. The rabbit statues were in piles at my feet. As I looked up at the cocoon, I could see Amnion quivering inside of it with excitement. The first movement had ended, and the second had begun.

The year is 1942, and the people of a small Polish city are brimming with anticipation for one night of the week. One of the larger buildings in the settlement was the historical library, which burned down within the last six months or so. The basement, however, was completely untouched by the destruction of the fire, and within it was a young artist.

She was a child of a notable political family in the region, but when her parents left their homestead and never came back, she eventually wandered off and holed up in this cellar. There were enough stored foodstuffs to keep her going for a long time without needing to leave, and for a couple of weeks she did hermit herself away down there, but she felt a tugging on her being. The basement had a set of small windows lining the tops of its walls that let her see the outside town at the street level, and through those she felt herself become connected to the city.

At all times she heard the passing conversations of the townsfolk, and often did she try to speak to them through her peepholes, but never did anyone register the faint whispers of her voice to be anything other than the vibration of the town. She felt non-human—a fragment of the world spirit. She saw the problems they faced and the wrath they carried.

She carried some of the ash from the library over to a small crack in the window and blew it into the outside. The dust swirled around the city, spreading itself on tree leaves and the roofs of buildings. The ash eventually would fall off of those high points and settle on the coats of the outside people. She gave them a bit of relief from their struggles but also was subject to the burdens they carried. They felt her on the hairs on the back of their necks, in their nostrils, and deep within their lungs. Eventually, no one ever felt alone.

Despite lifting the spirits of everyone in the city, the artist was not content. She knew they still had an anger inside of them that needed to be purged for them to be fully relieved of any and all emotional weight. Luckily, she knew exactly how to satiate their desires; they just needed something to ruin.

This is where she found some use in me. I was a member of the local militia and came into direct contact with Nazi forces; the small status of our town led us to being underestimated by bold and reckless oppository forces. We rarely had many casualties. The artist found use in our defensive actions, though, and she had me and two of my others collect and dump Nazi bodies at the library for her use. She had us gather many of them before she was ready for her public debut, but once she was prepared, she knew how to make an impact.

One night, the modulations of her whispering voice spread endlessly through the mechanical implements of our city. Car engines, movie projectors, and lightbulbs—all of them were audible instructions to go into the library's basement. Most thought it to be some kind of speakeasy or exclusive bar, and they all came in high spirits when night came.

The artist had transformed the basement into a large, formal dining room wherein people who came in sat without complaining about their expectations not being met—a free dinner is a nice attractor for many. Once her entire audience had arrived, a grand chandelier hanging in the middle of the room dropped down and crashed onto the ground. Dust flew up into the air, but no one was injured by the event. They all looked towards it and bore witness to the magnum opus of the artist's craft.

The chandelier had many bodies attached to its features. Erecting from the middle of it was a long, rusty cross with a lump of flesh and various pieces of scrap metal fused around its center. There were eyes, teeth, mouths, hair, and hearts incorporated into the structure with intentional precision. At first, the townspeople were disgusted by the sight, but they soon realized that they recognized some of the traits of the human elements. The militia were the first to see the statue as being a combination of Nazi corpses. One of them walked up to the construct and pulled a piece of it out. They took this piece of flesh, moved to the back of the room while clutching it tightly, and dismembered what they had taken with fervor.

It wasn't long before all of them were climbing over each other, trying to take a piece of the art for themselves. This was the absolute pinnacle of an interactive art piece, something that called for everyone to take part in. I stayed back and watched it all, but even my tempered will was tested by what was happening. The wrath that occurred tonight was devoid of any sin; it was wholly justified. When the night was over and the sun rose, people kept their rotting flesh and impressed their hate upon it repeatedly. By the time a week had passed, what they had was beaten into a liquid mass, and the city was ready to see what the next exhibition Amnion had to offer was.

The snowy Polish town crumbles around me, and piece by piece the ballroom comes back to me. No Lerlón are on the floor, and nothing is wet. In front of me, a rusty cross extends upwards to the top of the room, covered in the same gore from the dream I had been through. I don't look towards Amnion, instead walking towards the statue. Now that I'm close, I can appreciate its complexities much more. It isn't just pure viscera in the mass, but a combination of mechanical elements that stimulates the movement of it all and makes it pulsate with life.

I reach towards it with my right hand but stop right before making contact with it. I look up to the top of the display—it extends into the cocoon. In fact, the composition of the cross holding it all together has barbed thorns extruding out from its central rod that could allow me to climb up and into her cocoon. It's difficult to not want to immediately rip the thing apart, which Amnion likely expects me to do, but I steel my resolve and grip onto the first rung of this ladder. I cannot give in to how the audience would see her exhibitions; I am not a viewer. I am the artist, and I must become the apprentice to this great force.

As soon as I make contact with the metal, Lerlón come crawling out from the shadows of the ballroom and rush towards the statue. I hasten my ascent, thinking they're here to finally tear me apart for misinterpreting her work, but instead they get on their knees and start pulling apart the flesh cross and taking fragments of it for themselves.

I make my way up and up the statue, the thorns of the cross digging into me with every rung I grip onto. I try not to look down, but my eyes follow the blood dripping from my hands, and I see how compromised the structural integrity of the display is. There is hardly any flesh acting as a base now, and the cross is starting to waver in its rigidity.

As I get to the top of the cross, it starts to fall over, so I grab onto the structure with both of my hands and push myself upwards. I manage to reach towards the web of the cocoon and grab onto it, pulling myself into it as I hear the metal construct clang against the floor.

The interior of the cocoon isn't congruent with how it looks on the inside. It's similar to a small office, crowded with stuffed filing cabinets, busy desks, and an overall messy organization scheme. The room is uncomfortable and humid—Amnion sits behind the main desk. She's deep in thought and theorizing on what her next work should be. Now, I know you want to know exactly how my first interaction with her went and how our relations developed from then on, but that's too much to divulge so publicly. All that you need to know is that, if Livia Blue was a college, I graduated and became a NASA engineer. No art I have made in the past compares to what I'm able to do now. I have a thousand arms, and each one operates with a different, individual perversion.

## M.E.G. LESSER PHENOMENA:

## Corpse Communication

  

---

**Preface:** Within different levels of the Backrooms, corpses have been found with writing carved onto the surface of their skin. There is no commonality between which level they are in or the corpse the writing is found on. The throughline with these different cadavers are the text detailed on them. It is unknown who is performing this method of communication, but it seems specifically targeted towards the M.E.G. due to how often operatives of the group recover these bodies. Down below is a listing of all known instances of this phenomenon and the dates of our observations; illegible text has been truncated.

---

**2/28/2021:** FOR THREE HUNDRED AIR HAS ENDLESSLY WITHIN MY VESTIGAL AND IT HAS BEEN SLOWLY SIPHONED OFF BY WITH THORNS CIRCLING THEIR NOT ONCE HAVE I HARBORED ANY HATE TOWARDS OPRESSORS  
  
  
**3/4/2021:** YOU CAN SEE BEAUTY IN THE REFLECTIONS OF THE GLASS DOWN THE WELL ON THE FEATHERS OF MORNING DOVES MY VEINS ARE THE AIR PASSAGEWAY BOTTOM OF MY AIR IS RED  
  
  
**3/6/2021:** I MUST BE PROTECTED DEATH CANNOT PERISH LET ME BREATHE FOREVER LOOK AT THE ECHOS OF INFLUENCE CANNOT END I  
  
  
**3/6/2021:** I REMEMBER EVERYTHING THE BARRICADES THE FIRING LINES THE WORKERS CHANTING AS ZEPPELINS BURNED ABOVE THEM LIKE BURNING SUNS I REMEMBER THE SCENT OF CORDITE AND WET BRICK I REMEMBER WHO BETRAYED WHO I REMEMBER THE CHILDREN THEY TOOK AND THE MEN WHO DID NOT COME HOME  
  
  
**3/8/2021:** YOU THINK I AM JUST STREETS AND SIGNAGE BUT I AM MYTH I AM MEMORY I AM THE PLACE WHERE IT ALL HAPPENED AND WHERE IT WILL ALL HAPPEN AGAIN  
  
  
**3/12/2021:** I HAVE NO BLOOD BUT WHEN YOU BLEED I FEEL IT IN MY DRAINPIPES AND GUTTERS AND RUNNING SLICK AND SECRET DOWN INTO MY FOUNDATION STONES I WHISPER TO YOU THROUGH GRAFFITI AND CRACKED NEON MY VOICE IS STATIC ON YOUR RADIO A HUM IN THE WIRES AN ANGEL IN THE COMPUTER I AM THE BREATH OF THE DRUNKARD BEHIND THE ABANDONED KIOSK I AM THE PRAYER LEFT UNFINISHED IN THE CHAPEL OF SAINT BAPTISTE  
  
  
**3/22/2021:** THIS IS NOT PARANORIA IT IS PROPHECY MADE WHOLE THEY ARE PLANNING SOMETHING NOT [THE OLD REGIME](the-u-e-c.md) NOT [THE CORPORATIONS](the-b-n-t-g.md) SOMETHING COLDER HUNGRIER IT WANTS TO ERASE ME  
  
  
**4/12/2021:** IT DOES NOT WANT TO DESTROY ME IN RAGE BUT FORGET ME THAT IS WORSE IT MEANS NO RETURN YOU MUST WALK MY LENGTH YOU MUST FEEL MY AIR YOU MUST DIGEST MY MOONLIGHT SONATA YOU MUST CARRY ME IN YOUR THOUGHTS YOU MUST SPEAK MY NAME WHEN NO ONE ELSE WILL  
  
  
**4/18/2021:** SWEAR IT TO ME SWEAR IT IN THE WATER UNDER THE CANAL BRIDGE SWEAR IT IN THE BROKEN MIRROR IN YOUR HOSTEL ROOM SWEAR IT IN THE WHISPER THAT NEVER LEAVES YOUR LIPS EVEN IN SLEEP I WILL HEAR YOU I WILL ANSWER I ALWAYS DO BE MY ARCHIVIST BE MY FINAL GUARD  
  
  
**8/3/2022:** AND I  
  
  
**12/30/2025:** WILL BE  
  
  
**5/17/2028:** YOUR CITY

---

[Credits (+)](javascript:;)

[Credits (-)](javascript:;)

> Written by

---

Humanity is at stake, our peers are lost and soon it'll only be us. One by one we are lost, not in space, or time, but our humanity. What even makes us human?

And why do we lose it?

*(An **An Anthology** Page)*

  
 

##### All An Anthology Pages:

| Page Type | Page Title | Page Teaser |
| --- | --- | --- |
| Level | [The Attic of Memories](level-980.md) | How could we possibly be safe, when we rely so much on our memories? How can we live when we know nothing? |
| Object | [Liquid Pain](object-48.md) | Does everything really need an explanation? Was Alan Baker's death even a coincidence at all? |
| Tale | [A Letter to my Past Self](a-letter-to-my-past-self.md) | I know this is hard, you are me, I am you, I know all the challenges you've faced just as I have too. |
| Object | [Object 54](object-54.md) | . . . |
| Level | [Symbolic Angels](level-991.md) | Walk my length. Feel my air. Digest my moonlight sonata. |
| Tale (song) | [Fingers to the Fire](https://backrooms-wiki.wikidot.com/fingers-to-the-fire) | Your team has failed to stabilize a paradox; the consequences await. |

---

« [Level 990](level-990.md) | Level 991 | [Level 992](https://backrooms-wiki.wikidot.com/level-992) »

Footnotes

[1](javascript:;). The numbers don’t account for the scraps of humanity we found—torn, shredded, and unidentifiable. If we counted every mangled jaw or bleeding mass of meat as another soul, we'd be drowning in hundreds.

[2](javascript:;). Took me some time to register most of these as human bodies. They just looked like blobs of sludge. Massimo took longer—he needed a moment when it hit him.

[3](javascript:;). What got to me? It was him—my brother. The older one. Slumped in the ruined chair in front of the house, clutching a newspaper soaked in scarlet. His face melting into the pages, a slow drip. I wasn’t allowed to fix his messy hair or check if my broken glasses still rested in his pockets. He wasn’t a person anymore, just a health hazard. My grief didn’t matter, it was a footnote.

[4](javascript:;). We've found plenty of small, winding animal tunnels. The creators? Nowhere to be found.

[5](javascript:;). Sometimes, you find primitive tunnels in these halls, tunnels that don't make sense. Jagged, random holes dug through concrete, as if someone just wanted to make a mess.

[6](javascript:;). The statues, they’re not provoked, but they can’t keep their eyes off us. The human form—it's like an obsession to them.

[7](javascript:;). I took a hammer to one of those statues. Its insides? Not marble. Organs. Real, pulsing organs. It wasn’t uniform, either—each one had different parts, as if they were just slapped together. Why would a statue need a kidney?

[8](javascript:;). There were about twenty of them. Only God knows where they came from.

---

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Level 991 - "The Architecture of Symbolic Angels"](level-991.md)" by Liurnia, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/level-991](level-991.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/level-991">Level 991 - "The Architecture of Symbolic Angels"</a>" by Liurnia, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/level-991">https://backrooms-wiki.wikidot.com/level-991</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** Duga-1 Radar Data Center  
> **Author:** Joël van der Loo  
> **License:** CC BY-SA 4.0  
> **Source Link:** [House](https://commons.wikimedia.org/wiki/File:Duga-1_radar_data_center_inside_dark_corridor_2018.jpg)

> **Name:** 00 ds bw 042012 klein  
> **Author:** Dorooma  
> **License:** CC BY-SA 4.0  
> **Source Link:** [Cocoon](https://commons.wikimedia.org/wiki/File:00_ds_bw_042012_klein_0395.jpg)

> **Name:** Een hol begroeid  
> **Author:** Lendskaip  
> **License:** CC0 1.0  
> **Source Link:** [Tunnel](https://commons.wikimedia.org/wiki/File:Een_hol_begroeid_met_vegetatie_van_de_pluisjesmos-klasse.jpg)

> **Name:** Hillside in Redlands Wood  
> **Author:** Colin Smith  
> **License:** CC BY-SA 2.0  
> **Source Link:** [Forest](https://commons.wikimedia.org/wiki/File:Hillside_in_Redlands_Wood_-_geograph.org.uk_-_2277339.jpg)

> **Name:** abandoned-subway-master  
> **Author:** John Bartmann  
> **License:** CC0 1.0  
> **Source Link:** [audio](https://commons.wikimedia.org/wiki/File:John_Bartmann_-_abandoned-subway-master.ogg)

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/level-991](https://backrooms-wiki.wikidot.com/level-991)
