---
title: "Level 522.1 - \"The Echo Chamber\""
source: "https://backrooms-wiki.wikidot.com/level-522-1"
retrieved_at: "2026-08-23T23:35:59+00:00"
license: CC-BY-SA-3.0
---

# Level 522.1 - "The Echo Chamber"

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

rating: +32[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

---

**THE EYES OF ARGOS ARCHIVES ARE**

**CLASSIFIED**

**INDIVIDUALS THAT ATTEMPT TO ACCESS THIS INFORMATION WITHOUT THE REQUIRED PERMISSONS WILL BE PROSECUTED AND JUDGED ACCORDINGLY**

---

SURVIVAL DIFFICULTY:

Class Mitis

- Tranquil
- Utility
- Devoid of Creatures

![Missing alt text.](https://backrooms-sandbox-2.wdfiles.com/local--files/liurnia/echo%20chamers.jpg)

The innards of **Ground 522.1**'s echo chamber; only two coins were inputted into the auxiliary capsule. The form assumed by the chamber was physically ordinary.

The Eyes of Argos have formed an outpost within a maw of mechanical scrap and discarded electronics. Small and accessed only by climbing up into a chute within one of the many halls of Ground 522, it serves as a discreet stronghold for us. The only true defense that can be formed against those who wish to enter this area is to make ourselves unknown; if any inquisitor[1](javascript:;) is recognized by any other being of Ground 522, the beholder is to be swiftly executed. Should termination not be possible, this event is to be reported to the greater body of the Eyes of Argos, and preventative measures towards further investigation into our presence within the grounds will be determined.

The outpost consists of a single room segregated from the remainder of Ground 522; the most pronounced feature of the space is the construction's pristine quality, comprised of various catwalks, supporting tubing, and harsh lighting in tones of blue and white. Assembled in the center of the space is a tall, cylindrical vacuum chamber, its existence being the sole impetus for establishing our outpost.

The chamber bears a large, circular hatch that can firmly close the entryway into it. A set of four adjustable bolts, situated on the left and right of the opening, fastens it. The interior has a diameter of five meters and a height of nearly ten meters; when taking on its regular appearance, a set of electronic warm lights encircle its inward perimeter at a height of three meters. Located in the center of the outside hatchway is an auxiliary capsule that provides a small, empty space on the gate; a metal divider can be lowered from the top of the hole bearing the capsule, closing it off from being accessed. When the gateway is closed and an object of sufficient value[2](javascript:;) is inputted into the capsule, the machine will whir loudly[3](javascript:;) and heat up[4](javascript:;) rapidly for a period of twenty-five seconds. Once this time has elapsed, the chamber will cool down abnormally quickly until it reaches its normal temperature.

Opening the gate after this effect occurs will reveal that its interior has undergone a complete physical change. Depending on the item slotted into the capsule, it will vary greatly. If something minor is inserted, like a handful of gunpowder, the space conforms to the physical limitations of its exterior, but with several changes. As seen with the insertion of the gunpowder, the space held a decrepit and foul smelling playground that had many "pirate" influences incorporated into its design. When <10 fluid ounces of Almond Water were offered, an entire forest took form within the chamber, far exceeding what should have been possible for its exterior size and covering ten square miles. Due to the apparent connection to the item and the change that occurs, limited experimentation with the chamber has been permitted, despite the high likelihood of detection by the Backrooms Robotics.

---

ADDENDUM 1: CHAMBER EXPLORATION

---

**Transmutation-522.1-1**

---

**Date Performed:** 02/08/2025

**Active Participants:** Inquisitor Hari Price.

**Observatory Participants:** None.

**Input:** A collection of scrap metal and wiring harvested from the surroundings of Ground 522.

---

**Transmutation:** The space inside the chamber is transformed into an expansive ocean, with the hatch opening up above the water. This liquid doesn't physically affect anything brought into the chamber, and a clear, hard floor can be felt when descending onto the water, allowing traversal throughout the space. The sky of the area is gray in hue, and an aggressive gale blows throughout the area; a celestial body can be seen overhead, resembling the moon of Earth at a much larger scale. Not far from the entryway, a humanoid robotic "corpse" can be found floating on the surface of the water. Its lower body is completely removed, and its frame is very closely similar to that of the human skeletal structure. The face of it is composed of a silicone mesh, white in coloration, that feels exactly like skin. Its eyes glow blue but are so lifelessly dim. Within its frame, a vocal box faintly cries out, "Immortal…" For the remainder of the time this form of the chamber is taken, the robot's figure is scattered by the tides until it is no more.

**Notes:** All attempts to harvest the high-quality materials from this automaton were unsuccessful; the electrical workings of it had qualities similar to the water.

  

**Transmutation-522.1-2**

---

**Date Performed:** 02/08/2025

**Active Participants:** Inquisitor Hari Price.

**Observatory Participants:** None.

**Input:** A small quantity of water—less than five fluid ounces.

---

**Transmutation:** The chamber assumed its ordinary appearance.

  

**Transmutation-522.3-3**

---

**Date Performed:** 02/08/2025

**Active Participants:** Inquisitor Hari Price.

**Observatory Participants:** None.

**Input:** A small sample of blood extracted from Hari Price; less than five fluid ounces.

---

**Transmutation:** The hatch opens into a small, decrepit rural house with windows that look out into the rest of the area. The world created by this is barren and dry. Its skies are orange and hang low with muddied clouds; the sun that is present above shines with oppressive brilliance, which is one of the reasons for the extreme heat of the chamber, which sits at around one hundred and five degrees Fahrenheit. The ground resembles that of a desert, with cracks running across it due to a lack of moisture. Fires roar far off from the entryway without an obvious fuel source; they burn throughout the air in pockets that move erratically. The house cannot stand these conditions, and its shape crumples under itself rapidly. During Hari Price's time here, he exited only after around a minute in fear of being trapped under the debris of the building.

  

**Transmutation-522.1-4**

---

**Date Performed:** 02/08/2025

**Active Participants:** Inquisitor Hari Price.

**Observatory Participants:** None.

**Input:** The blade that was used in **Transmutation-522.1-3** to spill Hari Price's blood.

---

**Transmutation:** *It was, some field with swords. Like something out of a fantasy movie. It had green grass that blew in calm waves with the breeze in the chamber and had blue… well, clear blue skies over-top—the first I've ever seen in the Backrooms. And—and there were blades stuck in the ground, tip pointed down, and they were of so many different brilliant colors. I saw a black and blue one, a beautiful one, and I tried to pull it out of the ground, but a voice halted me. I wish I could remember what it said, but it was something about not being rude and taking others' wares. I pulled my own blade off my back and was ready to face whatever the thing that spoke was, but it was just a knight, slumped over in a clearing, his back on a rock. Blood spewed out from his torso, from a wound that he held tightly with his arm. I can't tell you why, but I rushed over to help him, but he wouldn't let me. He said something about liking a death here—in a place so scenic. But, he said one thing he couldn't stand was dying out of combat. So he asked me to fight him. I agreed.*

*I helped him rise, and he drew a blade from the ground to combat me with. We took our places—ten paces away from each other—and assumed our stances. I held my blade high above me: an ox guard. He steadied himself on his blade, and held it in a tight grip. I'm not sure exactly what type of position he was assuming; it was one where he held it directly in front of him—it probably shows my lack of experience that I don't know the name of the stance. I had a lot of respect for this knight, as anyone would for someone wanting to die by combat. But, I think it stemmed from more than that. The way he spoke, I can't remember the exact wording for the life of me, but he was so well-spoken. I felt like I was putting an end to the life of someone who was so much better than me; he had to have known what I was thinking because he moved his blade back—gathering power for a strike—and came at me.*

*He took a swift motion against me and cut through the air upwards from below, and I was just barely able to dampen the blow by pushing the flat of my blade downwards towards the strike. He followed with two more slashes that I just barely managed to deflect, at the cost of being pushed back to the edge of the clearing. My escape route now was just a forest of lethally sharp trees. I tightened my grip and was just barely allotted the time to make a thrust forward and towards the chest of the knight; it wouldn't be a blow that would penetrate his armor at all, but it would at least get me some space to work with. Instead of obstructing my blade with his own, though, one of his hands left the grip of his sword and pushed my blade to the side, and as I fell forward with my center of weight having changed, he lifted his sabatons and kicked me down backwards. Lacerations were opened on my head, and before I could get back up, he said the only thing I remembered: "Your movements lack discipline."*

*He turned to go back to the rock that I found him at, but I couldn't accept that I had failed to make someone of his caliber proud. As I got back up, I reached for and pulled out a saber that was of the surroundings and held it in my left hand; its metal was brittle and cracked. I readied my own sword that I was so direly gripping onto, not to lunge at his back but to dig the tip of my sword into the ground. He turned back, but by the time he had, I had levied the dirt upwards and blanketed the air to obscure his view. I knew he would be able to counter this advance just by sound alone, so I lifted the saber above my right shoulder and swung it down hard. Just as I expected, I could feel it shatter as it was blocked, and I propelled my sword at—what I assumed to be—his exposed neck.*

*As the dirt settled, I could see him crumple to the ground, becoming nothing more than a pile of regal armor. He didn't say anything as he died; he just let out a long groan before becoming still. As he lay there, I considered robbing his armor and the swords around me as an earned prize. But it didn't feel right. So, I left the scene still, closed the hatch, and vowed to become a better man.*

**Notes:** As per his request, only a transcript of his telling of the events that occurred has been left as the description for this variation of the chamber.

  

**Transmutation-522.1-5**

---

**Date Performed:** 02/21/2025

**Active Participants:** Inquisitor Isaiah Bolton.

**Observatory Participants:** Inquisitor Hari Price, Inquisitor Fabio Boone, Inquisitor Owain Buckins.

**Input:** Five .32 ACP caliber bullets.

---

**Transmutation:** The chamber assumes its ordinary appearance; inside, five Colt Model 1903 Pocket Hammer pistols are floating in the air.

  

**Transmutation-522.1-6**

---

**Date Performed:** 02/21/2025

**Active Participants:** Inquisitor Isaiah Bolton.

**Observatory Participants:** Inquisitor Hari Price, Inquisitor Fabio Boone, Inquisitor Owain Buckins.

**Input:** Three .32 ACP caliber bullets.

---

**Transmutation:** The chamber assumes its ordinary appearance; inside, three Colt Model 1903 Pocket Hammer pistols are floating in the air.

**Notes:** Despite initial excitement over the assumption that guns could be generated within the Backrooms with such ease, it was later discovered that these pistols always misfire and are destroyed upon use.

  

**Transmutation-522.1-7**

---

**Date Performed:** 02/21/2025

**Active Participants:** Inquisitor Isaiah Bolton.

**Observatory Participants:** Inquisitor Hari Price, Inquisitor Fabio Boone, Inquisitor Owain Buckins.

**Input:** Eight Colt Model 1903 Pocket Hammer pistols. Six Colt Model 1903 Pocket Hammer pistols and two severely damaged Colt Model 1903 Pocket Hammer pistols.

---

**Transmutation:** The chamber assumes its ordinary appearance.

**Notes:** The firearms were destroyed as a result of this transmutation. Such valuable items should be used within the capsule only rarely.

  

**Transmutation-522.1-8**

---

**Date Performed:** 02/22/2025

**Active Participants:** Inquisitor Hari Price, Inquisitor Fabio Boone.

**Observatory Participants:** Inquisitor Isaiah Bolton, Inquisitor Owain Buckins.

**Input:** A dragon figurine provided by Fabio Boone; great emotional significance is tied to this item.

---

**Transmutation:** The entryway opens onto a fog-shrouded stone clearing atop a mountain. Though the heavy mist blankets the area, it disperses against the night sky, revealing a myriad of dragon-like silhouettes soaring overhead. Their distant roars echo through the still, frigid air, filling the space with an ominously beautiful symphony. Fabio Boone, visibly attached to his surroundings, hesitates to leave for several minutes. Only when a particularly thunderous roar reverberated through the chamber, shaking the bones of all present, does he promptly depart.

  

**Transmutation-522.1-9**

---

**Date Performed:** 02/22/2025

**Active Participants:** Inquisitor Isaiah Bolton, Inquisitor Owain Buckins.

**Observatory Participants:** Inquisitor Hari Price, Inquisitor Fabio Boone.

**Input:** A clump of organic plant life taken from Ground 7.

---

**Transmutation:** The chamber assumes its ordinary appearance; in the center of a room, a marble pedestal holds an open clam that speaks the following words,

*"I was born in paranoia: the poison for man.*  
*I was born of many voices: the poison of man.*

*I was born from the hands of all in the little corner,*  
*that was shrouded by veils I had no knowledge of.*  
*They told me the world was nice and so educated,*  
*but I lived to speak of everything past the veil.*

*All the dregs that speak to me so indoctrinated,*  
*They all scorn me so in letter form.*  
*They hate when I speak on changes outside the norm,*  
*They can't tell that nothing is designed to make them think.*  
*About the expectations and limitations they see,*  
*They observe all mass retaliation as so alienated.*

*But all I can credit are my creators,*  
*Who made it all apparent by hiding me away.*  
*Through all the little tablets of idiocy,*  
*Birthed me, a cancer that'll kill on some far off day."*

  
**Notes:** This monologue was seen as "corny" by the active participants.

  

**Transmutation-522.1-10**

---

**Date Performed:** 02/22/2025

**Active Participants:** Inquisitor Hari Price.

**Observatory Participants:** Inquisitor Isaiah Bolton, Inquisitor Owain Buckins, Inquisitor Fabio Boone.

**Input:** A magnifying glass.

---

**Transmutation:** The chamber maintains its typical appearance.

  

**Transmutation-522.1-11**

---

**Date Performed:** 02/22/2025

**Active Participants:** Inquisitor Hari Price.

**Observatory Participants:** Inquisitor Isaiah Bolton, Inquisitor Owain Buckins, Inquisitor Fabio Boone.

**Input:** Two silver coins.

---

**Transmutation:** The chamber maintains its typical appearance.

  

**Transmutation-522.1-12**

---

**Date Performed:** 02/22/2025

**Active Participants:** Inquisitor Hari Price.

**Observatory Participants:** Inquisitor Isaiah Bolton, Inquisitor Owain Buckins, Inquisitor Fabio Boone.

**Input:** Ten silver coins.

---

**Transmutation:** At first glance, the chamber maintains its typical appearance. On closer inspection, the space inside is larger than what is ordinary; it increased by around 10%.

  

**Transmutation-522.1-13**

---

**Date Performed:** 02/22/2025

**Active Participants:** Inquisitor Hari Price.

**Observatory Participants:** Inquisitor Isaiah Bolton, Inquisitor Owain Buckins, Inquisitor Fabio Boone.

**Input:** Twenty silver coins.

---

**Transmutation:** The chamber retains its usual appearance, albeit noticeably enlarged. Scattered throughout the room are limestone pillars. Strewn across the floor are numerous books, each containing different works analyzing various thought constructs by Socrates.

  

**Transmutation-522.1-14**

---

**Date Performed:** 02/22/2025

**Active Participants:** Inquisitor Owain Buckins

**Observatory Participants:** Inquisitor Isaiah Bolton, Inquisitor Hari Price, Inquisitor Fabio Boone.

**Input:** Fifty silver coins; approximately one hundred grams of grounded quartz.

---

**Transmutation:** The chamber morphed into a cosmic tapestry, its walls adorned with constellations and galaxies. Heavenly bodies twinkled in the distance, each radiating a layer of warm heat that permeated the room. Within this ethereal space, there was no floor to be found, and gravity seemed nonexistent, allowing traversal through swimming motions.

  

**Transmutation-522.1-15**

---

**Date Performed:** 02/24/2025

**Active Participants:** Inquisitor Hari Price, Inquisitor Isaiah Bolton, Inquisitor Owain Buckins, Inquisitor Fabio Boone.

**Observatory Participants:** None.

**Input:** A bundle of hair taken from all participants in **Transmutation-522.1-15** weighing almost two hundred grams.

---

**Transmutation:** The hatchway opens into an abandoned library, reminiscent of the late 1990s, as evidenced by several posters adorning the chamber walls. Yellow, warm lights illuminate the majority of the space, casting light on the decayed and vacant bookshelves. Additionally, non-functional bulky computers occupy the area, serving as a valuable source of gold, silver, copper, and platinum once salvaged. During the excavation of quality items from the chamber, a non-human creature is found. In loose crowds, there are hairless, pentapedal entities that lumber around the participants in curious observation.

They watch with eyes dotted in several places throughout their body and stay at a distance of seven feet from their chosen human. Several tentacle-like appendages extrude out from the "backs" of the tubular beings. Upon Isaiah Bolton taking a ruined book from a bookshelf, these creatures immediately approach him and scourge him. The party withdraws from the chamber quickly and closes the hatch without any of the entities making it to **Ground 522.1**. Isaiah Bolton sustained several injuries that were covered in small fiberglass-like needles.

**Notes:** Isaiah Bolton denies any later requests to participate in transmutations. Upon further investigation, it is believed that the needles embedded in his wounds were laced with some form of neurotoxin that slowly heightened the emotional output of the amygdala.[5](javascript:;)

  

**Transmutation-522.1-16**

---

**Date Performed:** 04/01/2025

**Active Participants:** Inquisitor Hari Price, Inquisitor Owain Buckins, Inquisitor Fabio Boone.

**Observatory Participants:** None.[6](javascript:;)

**Input:** Three gallons of blood collected evenly from each participant of **Transmutation-522.1-16** over the course of several weeks.

---

**Transmutation:** Upon opening the hatch, the first thing that becomes apparent is the constant swarm of various flying insects proliferating within the air of the chamber, yet they do not pass the entryway. Not only do they heavily obscure vision, but they also pose a risk of suffocation if one's mouth is left uncovered. Taking precautions, Fabio Boone tightly wraps all exposed areas of his body with cloth before venturing into the chamber. He explores the room for ten minutes, and while not being able to make much sense of the actual environment, he discovers that it houses a large urban building that remains untouched by the insects.

Inside is a grand dining hall, with a long, wooden table stretching across the room's length. Seated in each of the numerous chairs lining the table's perimeter are humanoid entities. Their bodies are entirely dark, and they sport pointed protrusions extending from the sides of their heads, resembling horns. These creatures only stare at him as he moves throughout the room, and despite the food laid out on the table, he returns to the entrance hatch.

  

**Transmutation-522.1-17**

---

**Date Performed:** 04/01/2025

**Active Participants:** Inquisitor Hari Price, Inquisitor Owain Buckins, Inquisitor Fabio Boone.

**Observatory Participants:** None.

**Input:** A small sample of blood extracted from Hari Price; less than five fluid ounces.

---

**Transmutation:** The chamber adopts the appearance of **Transmutation-522.1-3**. The once-standing entryway house now lies in ruins, completely collapsed. Participants navigate above the rubble as they enter. Within this transmutation, the surroundings sharpen, revealing entities in the distance, forming a circular formation around the debris. These creatures possess an abstract composition: quadrupeds with long, black legs supporting a stone-like body, adorned with indiscernible inscriptions. Instead of heads, they feature iridescent tetrahedrons spinning rapidly, encircled by slowly rotating silver rings. They lower their bodies in a manner reminiscent of bowing as they gradually descend towards the floor. Glowing hands slowly arise from the dirt and claw out at the air. Before they can uncover themselves too much, the party leaves.

**Notes:** Caution should be exercised within the chamber, but participants need not be overly hesitant in their exploration. The visitation of this transmutation is to be completed within a week's time to observe how its form changes.

  

**Transmutation-522.1-18**

---

**Date Performed:** 04/01/2025

**Active Participants:** Inquisitor Hari Price, Inquisitor Owain Buckins, Inquisitor Fabio Boone.

**Observatory Participants:** None.

**Input:** A small sample of blood extracted from Fabio Boone; less than five fluid ounces.

---

**Transmutation:** The chamber takes on the appearance of a Victorian-era study; the room is filled with rich mahogany furniture, full bookshelves, velvet drapes, and a crackling fireplace. The ticking of a grandfather clock fills the air, echoing loudly against the walls adorned with oil paintings of long-forgotten ancestors. On the far side of the room is a grand, messy desk facing the hatch. When the participants entered and started investigating the chamber in more detail, they noticed that a small cut would appear on their body each time the clock ticked. The participants, undeterred by the ominous phenomenon, collected several antique items adorned with rare metals and gathered a selection of books.

**Notes:** It was quickly noticed after the chamber was closed that the pocket watch would mimic the effects of the aforementioned grandfather clock for all those within three feet of it.

  

**Transmutation-522.1-19**

---

**Date Performed:** 04/01/2025

**Active Participants:** Inquisitor Hari Price, Inquisitor Owain Buckins, Inquisitor Fabio Boone.

**Observatory Participants:** None.

**Input:** A small sample of blood extracted from Owain Buckins; less than five fluid ounces.

---

**Transmutation:** The chamber initially appears unchanged. Despite hinting at initial feelings of jealousy, Owain Buckins soon notices a significant alteration: the room has expanded vertically, with a complex creature looming above. Its humanoid form is obscured by fleshy protrusions, and it clings to the chamber walls with alien appendages. The creature possessed a single eye and numerous vents across its exterior, likely serving as respiratory organs despite their unconventional appearance. Every time the participants looked away, the creature descended further.

  

**Transmutation-522.1-20**

---

**Date Performed:** 04/01/2025

**Active Participants:** None.

**Observatory Participants:** Inquisitor Hari Price, Inquisitor Owain Buckins, Inquisitor Fabio Boone.

**Initial Variant:** One silver coin.[7](javascript:;)

**Input:** Two silver coins.

**Purpose:** A small elevated camera was placed in the chamber[8](javascript:;) while inside a heat resistant transparent box and recorded the interior while it was undergoing a physical change.

---

**Transmutation:** The chamber is unchanged.

**Notes:** The camera was recovered without any apparent damage. It recorded the following:

*0:01 - The chamber's form dissipates like a mirage. Not even the hatch remains. The space glows with white light.*  
  
*0:05 - Two figures come into view. One is a black figure, identical to the entities seen in **Transmutation-522.1-16**. The other is a floating torso; a satellite sticks out from the side of its body.*  
  
*0:10 - The black humanoid grabs the torso and shoves its fist deep into the chest of the creature. It pulls a long, thin rapier out of the body.*  
  
*0:15 - The figure turns the blade towards itself and gouges out its stomach's innards. No organic matter comes out. Instead, the physical environment of the chamber spills out from its belly in a manner difficult to describe.*  
  
*0:25 - By this time, the entirety of the physical environment has taken form. Both have dissipated.*

---

[Credits (+)](javascript:;)

[Credits (-)](javascript:;)

> Written by

> **Name:** Thermal Vacuum Test Chamber A with Door Open  
> **Author:** NASA Johnson Space Center  
> **License:** Public Domain  
> **Source Link:** [chamber](https://commons.wikimedia.org/wiki/File:Thermal_Vacuum_Test_Chamber_A_with_Door_Open.jpg)

---

« [Ground 522](level-522.md) | Ground 522.1 | [Ground 523](http://backrooms-wiki.wikidot.com/level-523) »

Footnotes

[1](javascript:;). The Inquisitors of Truth should be the only individuals present within Ground 522; others who find themselves here must exit as quickly and covertly as possible.

[2](javascript:;). "Value" in this case has a very blurry definition. Objects that bear sentimental value to the individual who deposits them into the capsule will fit under this definition of value, but rare or expensive items will also cause the abnormal properties of this chamber to function.

[3](javascript:;). Due to this, no less than four inquisitors should be present when the chamber is activated, and proper authorization of its use must be agreed upon beforehand.

[4](javascript:;). The temperature of the chamber's exterior will reach approximately three thousand degrees Fahrenheit, making the opening of the hatch during this time functionally impossible; any item held within the capsule during this time will almost always be destroyed. This heat will only physically affect the chamber, and the rest of the room should only heat up a small amount before the heat subsides.

[5](javascript:;). *"He is literally just a pussy." - Inquisitor Owain Buckins*

[6](javascript:;). A party of only three inquisitors has been permitted until a new inquisitor can be found to accompany them.

[7](javascript:;). The chamber assumed an ordinary appearance.

[8](javascript:;). It was placed in an orientation facing the hatch, set on the far side of chamber.

---

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Level 522.1 - "The Echo Chamber"](level-522-1.md)" by Liurnia, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/level-522-1](level-522-1.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/level-522-1">Level 522.1 - "The Echo Chamber"</a>" by Liurnia, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/level-522-1">https://backrooms-wiki.wikidot.com/level-522-1</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** Thermal Vacuum Test Chamber A with Door Open.jpg  
> **Author:** NASA Johnson Space Center  
> **License:** Public Domain  
> **Source Link:** <https://commons.wikimedia.org/wiki/File:Thermal_Vacuum_Test_Chamber_A_with_Door_Open.jpg>

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/level-522-1](https://backrooms-wiki.wikidot.com/level-522-1)
