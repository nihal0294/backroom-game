---
title: "Shoulda' Stayed in Eleven"
source: "https://backrooms-wiki.wikidot.com/shoulda-stayed-in-eleven"
retrieved_at: "2026-08-23T23:38:30+00:00"
license: CC-BY-SA-3.0
---

# Shoulda' Stayed in Eleven

Wherein Mr. Studios discovers how much people love him. (8.3k words)

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

rating: +13[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  

Info

**Shoulda' Stayed in Eleven**

**Author:**

**Total Wordcount:** 8381 words.

**If you enjoyed this work, consider checking out some of my other stuff [by clicking here!](wynths-authorpage.md)**

**This article is based off a tale from the SCP Wiki — [Shoulda' Stayed in Dubai](https://scp-wiki.wikidot.com/shoulda-stayed-in-dubai) — which is currently the lowest rated tale on the site, at -66.**

If staff, in the future, gets around to deleting Shoulda' Stayed, the tale can be found archived [here.](https://web.archive.org/web/20251201231447/https://scp-wiki.wikidot.com/shoulda-stayed-in-dubai)

**Thanks for reading!**

[Close](index.md)

8.3k words

Agents Skeffington and Branks of the Backrooms Non-Aligned Trade Group's "acquisitions unit" were very much *not* men to be trifled with; however, as he heated a slim razor with his pocket lighter and reached for a pair of rusty pliers from the toolbox in his associate's hands, Branks began to smolder with the realisation that they had been trifled with *very* much indeed. The grin on the face of the young man restrained on the table of the Jerrymen's safe house (which Branks had "acquired" by the simple means of shooting the former occupants with his trusty Sig Sauer) began to fade as the knife gained an angry red glow, dark as the blood due to be spilt.  
 The young man spoke, his voice a thin veneer.  
 "Now really, gentlemen, is this necessary?" The man gave them a (what must be said, was quite a convincing smile from someone in his position) smile, still hoping (unreasonably) to talk his way out of his precarious situation. Branks responded by pressing the flat of the heated blade firmly against the mayonnaise skin of the man's chest, wrinkling his nose at the unpleasant smell of burning flesh.  
 After his initial howl, the young man remained mute, looking pleadingly at his captors, his eyes begging for release. They stayed in this way, asking and heating and cutting, for a few hours, until eventually the young man's eyes went half-red, the vessels busting in them.  
 "Hah… you bastards, you'll-" The man started.  
 "He's trying to wretch himself, Skeffington! Hose him down."  
 For possibly the first time ever, the young man, his skin made into window blinds, did his best to *refuse* the Almond Water that came over him in bucketfuls. But he slept, and awoke to new ivory skin.  
 *Fuck!*  
 The young man knew now that he would be absolutely, positively *cooked.*  
 Branks and his partner spent the night and well into the next day twisting and burning and ripping, questioning and confirming until they were *certain* they had extracted the truth from their captive. They did it passionately and unreservedly (they were soldiers, and soldiers could not go to hell) and, when the truth was fully discovered, it was noted down in a little black book, in the neat script of the nigh-illiterate.  
 Branks mused to himself as he gazed down at the writhing young man — what an damning testimony Mr. had given…

---

Mr. Studios was having a very interesting life at the moment. Making his way across the Backrooms on a whim, still riding the rush and the payoff of an enormously successful few days in Eleven, he'd woken up after a night's celebration in a small closet in a cigarette-burned bitch of a hotel on one of the quieter streets of Nine Point Two.  
 He had no memory of how he'd gotten there.  
 Swearing to never drink again (He always did), he checked to make sure his backpack was with him on the bed, and rifled through to check its contents. After a moment of worry that he had lost it, he holstered near his calf the emergency Bowie knife and around his waist a .32 Walther PPK/E. The next order of business was to find out where the front desk was.  
 He would be in danger once out of the hotel, but he like to view it as just another part of the fun.  
 Groaning and stretching, he took stock of his surroundings. There was a completely stripped bedframe[1](javascript:;), a heavily bent coat hanger, a wad of hundreds atop a cheap mahogany desk, and some *serious* black-out curtains. He righted himself, threw a pair of jeans, a tee, and a "MEG Agent" coat on. He hoisted on a pre-prepared backpack, and left the room, ready for a good day.  
 Outside was somewhat surprising. The hotel that he had thought of as dogshit, now seemed to be… what? Godshit? Something like that at least: the hall seemed ornate, with gold-plated[2](javascript:;) flower arrangements and a maid who roamed the halls.  
 She pushed around a 2-level cart full of cleaning supplies, with a large white bag in the center. She seemed about 65, silver hair interspersed with shots of white, noteworthy virtues of Venus[3](javascript:;), and crows' feet near dead blue eyes.  
 He waved her over to absolutely zero effect.  
 "Hello?" He ventured. The lady bent slowly down, reaching into the white bag. Mr. Studios narrowed his eyes, and began walking backwards slowly, working his hand near to his belt where the Blue Steel Gun had been cached moments before. Then —  
  — *Shit!*  
 Amidst a mass of tissues, towels, and handkerchiefs, she removed a solid-black-rifle-looking rifle-thing. Mr. Studios couldn't place the model, because he'd seen it from the corner of his eye as he dashed into a nearby stairwell. The woman let out a battle cry, or at least the decrepit remains of one, and charged to the door, yelling "This one's for my brother, you fucking MEG-pig bastard!"  
 Stud didn't have to wait around any more time to hear more of the colorful insults which this random woman had clearly been preparing for some time. He looked about the stairwell, finding nothing[4](javascript:;) to barricade the door with. So, he instead leapt towards the hand railing, caught it in his grasp, and smoothly turned himself about so that he descended a whole story by the time she cracked the door.  
 "Where are you, you goddamn bitch coward! I'll shoot you so full of holes, you'll look like a bad Minesweeper game!"  
 The steps came down like slow, intermittent thunder above him, and he knew that the threat needed to be directly dealt with. Deciding not to play her game, Mr. Studios threw himself down three or four more floors, forgetting the stupor he'd been in just moments before. Then, taking a gambit, he decided to camp down at the pass to the next, waiting for the woman to become visible through the railing.  
 "Argh! Stop acting like Indiana Jones and face me like a man, you *stupid piece of shit!*"  
 Well, the word "shit" just about summed this bitch up, Mr. Studios thought as he knelt, closed one eye, braced, and squeezed the trigger at the flash of khaki that appeared at the top of the stairs.  
 *Thud.*  
 *"Shoulda' Stayed in Eleven, eh?"*  
 "AH! NO, NO, NO, GET THE FUCK BACK HERE! PLEASE, SON, JUST DIE ALREADY!" The khaki fabric became dark, yet it continued to move. Mr. Scutoid descended another flight. He stayed.  
 After a moment, there was a great shower of concrete dust as a mag's worth of 7.62's found themselves embedded into the walls, making a gross orgasm of iron and industry out of the senile old thing's… (Spy? Vigilante? Whoever she was's) death. Mr. Scutoid covered his ears, and when the dust settled, he calmed himself down, went up the stairs, and took the Kalashnikov 2A from her cold, cold hands.  
 "I guess nothing in this world is free, eh?"

---

After locating the desk[5](javascript:;) and ensuring that the tip of the Kalashnikov didn't protrude from the backpack, Mr. faced the difficulty of keeping his identity under wraps. After all, Mr. Studios was a popular man… as in, there were many people who would like to pop him for the sweet, sweet bounty promised by one of the larger gangs or for some other unresolved business, just like the geezer from before wanted to demonstrate. Thus, he ducked into a restroom, dusted himself off, and washed his face. It was a cue, mentally, for him to assume a new person.  
 He looked up at himself after a quiet moment, and tried out his tongue.  
 "Kunsywilu. Yahknat suritzu." His Arabic was fine enough, even if it was definitely the words of a foreign man.  
 He left the bathroom rejuvenated and asked the concierge in *fluent* Arabic to check him out, delighted to see that he responded well to the gesture of goodwill. "Maybe you'll be useful yet," Mr. Studios mumbled under his breath as the man typed up a flurry on his terminal.  
 Mr. Studios then paid the bill with the customary metal flask[6](javascript:;) then added a couple of grams of [good shit](object-15.md)ⓘObject 15 - "Firesalt"Firesalt is a volatile crystalline formation found within the Backrooms. They are most commonly found as irregular shaped shards between 1 and 5 cm in size, colored orange and slightly translucent. Large artificial firesalt ingots on the other hand are more transparent and colored a dark shade of red. to act as a tip. As the man spluttered gratitudes for such generosity[7](javascript:;), Mr. Stud asked for directions to the nearest bank and headed cheerfully on his way.  
 He smirked as he heard the squeak of a man scooting a stool, and then an unseen voice at his side.  
 The concierge's presence was stern, but not without charm, particularly in his cultivated and tanned pectorals. Now that Mr. Studios knew that he'd have a friend, he put the man's dress to memory: a gray-blue hoodie with gray accent, open; a three-button navy blue work shirt; a silver-gold ring; nondescript black denim and tennis shoes.  
 "My good sir, I should help in your walk there, no?" It was an unspoken rule that part of a good service — for any worker, really — was to go with the client to ensure their safety. Repeat customers were everything in a world that was as interconnected as this midnight city. As the saying went, "A dead man won't pay his funeral, much less his tab."  
 And, Mr. Studios wagered, the man probably wanted more firesalt to get blasted on.  
 "Yes, you should." Mr. Studios added. He started on his way, and as he paced to the door, he added "After all, how else will I deliver my product."  
 He glanced behind him — the concierge nodded knowingly. "Yes, how else will you do so if we do not treat you as well outside as we do in?"

---

As he walked, Mr. Studios hummed to himself, and there was a cheerful spring in his step. The man at himself occupied himself by playing with his fingers, clearly anxious. Could it be that he knew the true identity of Mr. Velano Rosenbaum, the "products negotiator"? Mr. Studios decided it didn't matter much; the man wasn't part of some group, and he could kill the bastard if it came to it.  
 The step-spring returned, and he came to appreciate the warm night. The day had started out so *nicely*, Mr. Scutoid thought. With the morning out of the way, *surely* the noon and the night could give him a break?  
 But, he and his companion made only a few hundred yards of progress when he heard a loud cracking sound.  
 *Shit!*  
 The historic paving stones of the *Fadwā Ṭūqān* street gave way beneath him and his screaming companion, and they fell hard and fast into darkness amidst a cloud of dust, sheetrock, and masonry. The air filled with the stench of rust and fire from the massive, old anti-tank round that had just been implanted into the wall to their side  
 "We got them, we got them! Go, go, go!" The machine-gun-diction of the man Studi couldn't see came from a somewhat distant place. Realizing he'd have a few seconds before they got sights on him, he drew his pistol and crouched behind a large chunk of concrete that had been blasted out of the wall, anxious to return fire.  
 "JESUS FUCK! WHAT THE FUCK!" His companion screamed as he saw Mr. Studios' blue steel pistol.[8](javascript:;)As he stood, he saw a man with a tommy gun strapped over a rotund belly and a fedora draped over his eyes, so as to "obscure" his identity."  
 "THE MAFIA?!" His companion helpfully screamed as he dashed on all fours behind a steel dumpster.  
 "Please shut up, would you?" Mr. Studios said as he took aim and shot at the goons behind a mound of trash bags, forcing a tiny retreat. He looked past the man, hoping to find an escape route. Unfortunately, nothing was safe in the storm of steel  
 *Double shit!*  
 Another round lodged itself into shattered brick. The concierge shrieked, pulled out an old Smith and Wesson revolver from his trench coat, and fired wildly into the general direction of gunfire, hoping to hit someone. Studi was about to admonish the bastard for giving away their location, but there came cries of injury. "Man down, man down!" said one of the goons in an Italian affect. *Unbelievable, he actually hit someone like that!*, he thought as he ran to the man, having noticed a dark door embedded in the wall near the dumpster.  
 "He's getting AWAY!!! Kill him, kill him, kill him!" A voice cried out, high and shredded as like Subway provolone[9](javascript:;) behind them as they cracked the door open and jammed it shut. Inside, the store was dark as the hearts of the Mafiamen.  
 "Would you like me to turn on the lights?" An erudite French voice called out from the front.  
 "Sure!" Mr. Studios said.[10](javascript:;)  
 It took Mr. Studios a moment to realize that the voice that he'd answered was *not* his friend's voice. In this time, his actual friend cried out to him "Sir, this was not an empty building!" and subsequently vanished, instantly silenced by the thing in the room.  
 The lights did not turn on. Mr. Studios felt a barrel on the back of his head.  
 *The shit, cubed.*

---

"Ow! That hurts." said Stud.  
 The man said nothing, keeping the gun leveled at Stud's head.  
 "Why, is this not how all white men greet one another?" The voice replied, suddenly dropping in volume and becoming uncomfortably, impractically close to Mr. Studio's right ear. *I can use this*, he thought as he froze and considered both his options and the absurd statement of the unseen threat.  
 "I'm sorry, I wasn't able to see the color of your skin. In fact, I wonder how you took note of mine."  
 "I've been looking for you for a long time, Mr. , and I know just about everything there is to know about you."  
 "Really? How unfortunate, I'd like to think there's more to me than being the only hot Irishman."  
 The voice snorted, coughed, then growled out, "You little shit, you think I just care about your *body?!* No, no, no — Mr. Studios, I *know* you. I know what you were doing yesterday night at the Mary Jane's.  
 At this, Studi feigned surprise, asking "Oh, wait, what the hell? You've been tracking me?"  
 "For ages! Longer than you will ever know — mostly because you're about to die."  
 "Why would you be stalking me all this time?" Mr. Studios said blankly.  
 The voice laughed, and the gun's impact on Studi's head was *almost* light enough to try to escape.  
 He just needed an *in*, something so shocking that no sane individual could hold their ground against it. But, first, he thought back to his training. He'd need to lower the inquisitor's inhibitions, get him off-kilter just long enough to deliver a kick to the balls.  
 Then, he thought of something. Something so dastardly, so ridiculous, that there was no way it wouldn't work.  
 "Hah, is this some sort of ploy? Do you want me to just yap for hours about how you wronged *me?* Wronged my *father?*" The voice laughed, heartily and readily, not taking the pressure of the barrel off for an instant. "No, Mr. Studios. This will be —"  
  — Suddenly, Mr. Studios moaned to the man[11](javascript:;). It was the sort of thing that came from deep inside, without coaxing nor falsification, and which displayed a frank willingness to admit to things that no man in the entire Level would.[12](javascript:;)  
 The pressure on Mr. Studios' head loosened, and he jerked the barrel of the revolver to the right while pushing on the man's arm with all his strength. The man *tried* to say "What the fuck?", but could barely get the first syllable out before his teeth were driven through his tongue with a kick to the jaw.[13](javascript:;)  
 "Well, that was a curious way of taking care of the threat, my good sir." The friend said, off somewhere in front.  
 "It never fails, that's all that I can say." Mr. Studios felt around as he said this, looking for the light switch.  
 "Still curious, isn't it?" Although he couldn't see him, Studi felt like he could see the man's shit-eating grin.  
 "What, have you got a problem with being alive? I'm sure I can — "  
 "No, no! It's fine, I just didn't expect *that* to be the way that you got out."  
 "You're gonna hate the next step of my plan then." Finally, he found the light switch! Turning it on, Mr. Studios could see that they had been in a bakery, and the confrontation had occurred in a tight space behind the cunter[14](javascript:;) and cookie holder. To Mr. Studios' right, at the very front, was a coffee pot that appeared full.  
 *Fuck, no cups.*  
 "Ah! Looks much better than I would have guessed."  
 "Yeah, it's pretty quaint." Mr. Studios began looking for the cups, wanting some sort of prop for the act that he would engage in next.  
 "What are you looking for? We've got to get out, before — "  
 "They know we're in here, man. If they haven't already, they're going to figure out in the next minute or so that their little spy here didn't do his job, and when they do, they're going to surround us and smoke us out."  
 "Then how are we getting out?"  
 Stud looked at his companion.  
 "What's your name, friend?" He'd realized that he didn't even know the man's name, and that would be a *crucial* part of what came next.  
 "…Enlil."  
 "Alright, Enlil. Like it or not, we need to be above suspicion at all costs." Mr. Studios, in a dresser on the left, near where the register might have been in a normal store, found the cups.  
 "Here, catch." He tossed one to Enlil, walked over to the pot of coffee, and poured himself a lukewarm cup of coffee. He did not add creamer or sugar — this was a moment to lock in.  
 Enlil looked around, uneasy, and poured his own cup, dumping a few spoonfuls of sugar into the cup and closing it with a lid. He began shaking it, desperate to get the sugar to mix in, but it was apparent that there would just be a massive clump at the top no matter what he did.  
 "Hey, look at me, friend."  
 Enlil snapped upwards. Mr. Studios came next to him, put his delicate hands on Enlil's shoulder, and looked into his eyes.  
 "They're going to be looking for 2 single people, split up, armed to the teeth and nervous as hell. We need to defy their expectations to escape."  
 Enlil batted away his hand, but stayed close to him. He seemed suspicious, but his shoulders, formerly professional and proud, now drooped slightly, like they were in the presence of a familiar. Given how he'd saved Mr. Studios' life just moments ago, it was clear that he did have *a* sincere connection with him, even if it was just that of brothers in battle.  
 That was good enough, Mr. Studios thought.  
 As he sized up the man and imagined what it would be like to touch his hairy, rugged skin) he also thought that the subconscious acts needed to solidify the act might, *might* just be good enough as well.  
 Mr. Studios spoke after a long moment of the two being next to each other, the two (secretly) almost enjoying the other's presence. "To maximize our chances of escape, we don't need to be just partners. We need to look like *partners.*" (No homo, of course.)

---

Agent Skeffington of the Backrooms Non-Aligned Trade Group's "acquisitions unit" was having a very bad day.  
 First, he had been told to track one infamous "Mr. , who is responsible for over 30% of our losses on Firesalt, Royal Raations, and other *delectable* goodies" and teach the squirming, shifting bug a lesson he would never forget. Unfortunately, the lesson was directed far more towards Mr. Skeffington, he reflected as he lowered his striped fedora and unstrapped his tommy gun, than it was to Mr. Studios. Already, one of his men had been shot, and given the lack of response from the building in which Mr. Studios and his impromptu friend had gone, a second had likely gone down. The radio physically vibrated with the amount of communications going about, 4 different units of 2 or 3 men, as they all simultaneously realized that Mr. Studios had still not left the area at which he was to be stung.  
 The cigar above Agent Skeffington's bold, sharp chin glinted orange with the light of good tobacco, and his eyes were enveloped in light smoke.  
 Agent Branks of the Backrooms Non-Aligned Trade Group's "acquisitions unit" was having a similarly rough day, though it was a little less so, primarily because he knew that the fight was nowhere near over, and that despite the weasel's best efforts, Mr. Studios would be acquired and disposed of soon enough. He raised his pocketknife and flipped it aimlessly about. When he spoke, it was like truck tires on dirt.  
 "It appears the target will be more difficult than even I imagined."  
 "I'm glad to see that you have *some* awareness, Branks." Skeffington's voice was like a cleaver through flesh — determined, difficult, wet.  
 "I'm sure at least some of this is *your* fault, Skeff."  
 "I'm not taking the fall for your actions, Branks. *You* came up with the idea of trapping and bagging him before killing him."  
 "That's not entirely accurate."  
 "Could have told the boss that we couldn't bag him, not the way he wanted."  
 "Asshole. You want me dead, don't you?"  
 "Just as much as I want the don dead."  
 "Thanks for the compliment"  
 "You're *real* welcome."  
 Branks grunted, removed a puffy cigarette from some mysterious compartment of his coat, and lit it. Skeffington's pipe went dark.  
 "Check the north. I'll cover the east. Men're at west and south."  
 "Shit, guess we'll have to smoke 'em out."  
 Branks nodded and drew a cloud of thick, velvet smoke in. He coughed a moment after, thick coughs that sent him whooping afterwards. Skeffington sighed, and hoisted his fun lil' gun.  
 "Eh, you know what they say. The thousandth'll be heaven." Branks said after his coughing fit.  
 "Pretty sure you smoked your thousandth *before* you dropped in."  
 "Fuck you."  
 The two went their separate ways after, acknowledging with shared glances that they *might* be a little fucked in the ass if they were unable to acquire Mr. Studios *right* then and there.  
 And they waited.

---

After a short time, Misters Scutoid and Enlil al-Darwish emerged back onto the streets of 9.2, made now into a deep and foreboding field of landmines between every dark spot and alleyway. Glancing around to check that no one was with them, he rifled through the wallet that he had snatched from the bakery man. It contained a few hundred dollars[15](javascript:;), a BNTG card[16](javascript:;), and a Coalition ration card for 10 liters of almond water, expired by a day.  
 *Damn it.*  
 But he supposed he didn't need that water anyways.  
 "Dear, looks like that'll be the *last* time we go cratedigging." Studi said through a small, hopefully meek smile.  
 "Aw… are you sure about that?" Mr. Enlil, to his credit, did his best to play along. Scutoid couldn't help but notice, however, an embarassed blush creeping up his companion's cheek — it was fine for now, but he wouldn't want anyone else to see that.[17](javascript:;)  
 "Yeah. It was good, though, I really enjoyed the coffee from that one store, whatever it was called." Scutoid squeezed Enlil's hand, then let go.  
 The two of them walked for about 30 seconds before, seemingly from the shadows, there stepped a giant man dressed for a funeral.[18](javascript:;)  
 No matter. He wasn't Mr. Studios, or even Mr. Chisa Rosenbaum anymore. He was Mr. Scutoid al-Darwish, and by God, he wasn't going to let this random man do anything to get in his dress-husband's way.[19](javascript:;)  
 "Ho! Who the hell are you?" Enlil narrowed his eyes and balled his fist, clearly not happy with the situation; Studi was pleased to see that it was in a familiar sort of way, like they had been interrupted on their way to the movies[20](javascript:;).  
 "Hello, you two." The man started. He lit a cigarette, coughed viciously, then went on speaking, the bud still lit in his mouth. "I've a simple question to ask, before I get out you bastards' ways.  
 "Bastards? Now, who — "  
 "Take bastards, or else some verbal hurt will be the least of your problems, *bucko.*"  
 Studi pretended to back down, intimidated. What he did *not* expect to do was see Mr. al-Darwish so quickly rise to the occasion. He was taller than Studi in his boots, and he wasn't much shorter than the man before them.  
 *We could take him*, Scutoid realized.  
 The man from the shadows appeared to realize this, and with a small grin, he raised his head, spat the cigarette whole out onto the ground, and drew a long knife in his left hand impossibly fast.  
 "You're going to tell me where two people who just came out of a shop you passed by went. And, if you do, you get to leave without any new scars."  
 "What the fuck?" Enlil asked.  
 "I said what I said." The man's voice went gravelly, showing not an iota of fear.  
 Enlil laughed. Heartily. It struck a deep admiration into Scutoid, seeing how unbelievably calm he was in the face of the hunter. The man relaxed, and seemed to realize that the couple in front of him would be cooperative. "My good sir, just point out who it is and let us be on our way!"  
 "Here, I have a picture…"  
 A jolt of fear shot down Studi's spine. *If he realizes how similar we look, we need to bolt.*  
 The interrogator paused and seemed to inspect the photo for a moment, twiddling it in his thumbs and keeping an intent eye on Enlil, who seemed to wilt as Sucti's realization came to him.  
 "Hmph — I'll say, you're not *too* similar to the suspects here, so I'll let you off with a warning." The words gave life to the embattered ""gay couple"".  
 The interrogator turned the sheet around.  
 "Look, take a good look."[21](javascript:;) He gave them a sheet that read "WANTED PERSONS, REWARD TO BE GIVEN FOR ID," with their faces under that simple, menacing red text.  
 Enlil donned an eye patch and had trimmed his beard with some kitchen scissors, while Scutoid had ditched the MEG coat and jeans for some spares he'd found in the supply room of the store, a hood covering his hair. Could that be enough?  
 "My God! Well, I don't know who these people are, but I'll make sure to look for them." Enlil started.  
 "And you mind telling us the cash reward for finding them?" Studi finished.  
 "They say it's 2 kilos of royal rations, pay't on annuity." The man said.  
 Enlil paused for a moment, just a moment, before answering "2 kilos! Quite a lot, isn't it?"  
 "Sure it is." The man said. He then looked at the paper, and then at the two of them, and then back.  
 *FUCK.*  
 "What?" Enlil asked.  
 The man took a radio out from his pocket.  
 Instantly, Enlil and Studi sprang into action, with Enlil lunging forward and striking the man in the gut and Studi grabbing the radio mid-fall to prevent it from being broken, and thus, from being flagged and noticed. The air around them grew ice-cold, or perhaps, Studi thought in the back of his mind, it was Desperation.[22](javascript:;)  
 The man didn't fold immediately, but without backup, it was trivial with two men to disarm him and to deliver a good few whacks to the head, the whole while muffling him and ensuring that there was as little chance of anyone hearing them as possible.  
 Unfortunately, they had failed.  
 As the two of them sprinted out of the makeshift perimeter, a slim and nimble figure dashed behind a dumpster. In his right hand, he held his Glock. In the left, a videocamera. He got a quick shot of the two of them, then folded his camera and unclipped his radio from his shirt pocket.  
 *You're not getting away that easy, gay-ass motherfuckers.*

---

The thuds on the pavement are quiet and contemplative, and the warmth at his side is restrained and powerful, like a rain cloud under the power of a shaman. The patterns of the new rain are unreadable and strange. The warmth at his side is crystalline and diamond, and for some reason, deeply familiar.  
 He took stock of himself — he was a little winded, honestly. The lunch at W. Sothesby's was good, but that felt like it was ages ago. It'd been a while since he'd walked this long — 10 hours! — through the streets of 9.2. It would be good to take another break.  
 "Hey, Enlil, let's stop here for a bit. Just wanna make sure that they don't spot us out." Mr. Studios[23](javascript:;) said.  
 "Alright, then." Enlil answered curtly, seeming to also realize that they couldn't run forever. "How about the gray place to the front?"  
 The two-story brick thing was so unassuming that Scutoid hadn't even paid attention to it until Enlil pointed it out. It would be perfect, assuming no one was inside.  
 They came to the entrance, and, seeing that the windows were blacked out, cracked the door. No one was inside.  
 "Perfect." They both said in unison.  
 Scanning through the front lobby, it was quickly evident that it was supposed to be a clone of a hotel in the Real World; its bogwater qualities came with the execution. As they slithered through its infinite halls, twin needles in architectural veins, they saw how quickly the whole structure broke down: doors to nowhere, grass as carpet, lights that sparked the moment you flipped them on. They regrouped after a quarter hour of this nonsense.  
 "I couldn't find anything complete, shit's all fucked up to the north. You had any better luck?"  
 "Why, I did, Mr. Studios — there were two complete rooms. One was far, but the other happens to be just the third door in the left-west hall."  
 "Alright then. It's got everything you want inside?"  
 "You want?"  
 "Well, I guess," Mr. Studios stammered, "I mean 'expect'. Water and a bed and all."  
 "A bed?" Enlil looked up now from the door at him, and, almost imperceptibly, his lips turned up at the right, seeming to hide his approval of the idea.  
 "Oh — I was thinking of, uhm, continuing on later. Since we've lost them, we might as well rest. I sure as hell am tired, and I just got up."  
 Enlil looks at Mr. Studios, and he chuckles. "Alright, my good sir, but I hope you rest up quick; I'd hate to delay my return to the hotel."  
 Mr. Studios looks away to the hall. He sighs, walks a bit, clicks his tongue, then looks back. "I can take it from here. You don't need to continue with me and get your ass shot." Mr. Studios shakes his head as he looks at Enlil, then chuckles slightly. "Hell, I actually might prefer it if you didn't."  
 Enlil walks to his side and places his hand, hesitantly, across Mr. Scutoid's shoulder. His hand is like a snooker ball in a pillow: a sincere, **hard** core in a soft vessel. Mr. Scutoid wonders why in hell, for the first time, how the hell a supposed receptionist was able to conduct himself the way he did.  
 "You know already I am not a normal desk worker, don't you?" *The bastard read him like a book.*  
 "I hadn't actually thought about it until right now." Scutoid answered truthfully, assured somehow that he could be candid.  
 "Hmph." Enlil responded.  
 He took his hand away from Scutoid and looked at the door.  
 "My job is explicitly to get VIP's to where they're going. Part of the amenities the hotel provides. *Another* aspect of what I do is getting close to any guest that's working alone, that might need a break of some kind…" Enlil glances at Scutoid, who nods.  
 Scutoid smirks. "So you're a hooker?"  
 Enlil went beet-red. "No!"  
 "Sounds to me like that's what you're confessing."  
 "It's exactly the opposite, Scutoid!"  
 Scutoid shoots up.  
 "Hey, I didn't tell you my name." Mr. Studios narrowed his eyes at the man before him, and laid a hand across the blade in his hoodie pocket.  
 Enlil throws his hands up. "I was getting to that aspect. Will you let me explain myself *without* endangering anybody?"  
 "Fine." Mr. Studios made a show of drawing the blade, flipping it closed, and tucking it in his back slacks pocket.  
 "*Thank* you."  
 Enlil looked out to the hallway where they had wanted to go just moments before, then sighed.  
 "What I *was* going to say was this: my name isn't Enlil, and I was not originally a worker at the Marionette."  
 "Okay?" Mr. Studios had no idea where the man in front of him wanted to go, and while he still thought him a far more… *interesting* person than he should, he also wanted to get the day's errands over with. *Why does this shit always take forever,* he mused to himself.  
 "My name, and this you might recognize, is Khaled al-Walid."  
 *Shit!*  
 Mr. Studios looked away from the man, trying to place the name. "Uhh… I…"  
 Khaled laughed. A nasty one. Mr. Studios could do nothing but say "Sorry, I just don't remember you…"  
 "Well, I suppose you've met many people." He said after he composed himself.  
 "I was formerly with the MEG, at Base Delta. We worked a few times together on missions to the more distant levels — it was a good time, we had."  
 "Oh, shit!" Mr. Studios remembered what he had recalled the man as now: "You were Kali!"  
 He smiled sheepishly, then continued. "Yeah, it was fun looking through that lakeside level, that's true."  
 Khaled nodded. "It was."  
 There was a moment of silence between the two men. They could have sworn they felt each other, and they dared not brush against the other.

"Well, thanks for telling me that, Kali."

"So," Khaled eventually started, "I am guessing we have only a few hours before they find us — the BNTG doesn't respond well to dispatched ops."  
 "Yeah." Scutoid answered.  
 "I suppose that, in the meanwhile, we've got to rest, like you say." Khaled said.  
 The two of them went to the room. Scutoid opened the door. There was a two room space; two beds to the north, under windows; a long desk to the south, right at the end of the entry hall, filled with cabinets, plastic flowers, and inoffensive decoration; a closet to the east, closed, probably empty; a door west, just after the desk, that presumably held the bathroom.  
 "Two beds?" Scutoid said.  
 "Well, yes." Khaled responded.  
 "Ah, well that sucks — *loved* the sleeping bag situation." Scutoid said as he grabbed a TV remote and habitually perused the junk cable programming.  
 Kali chuckled. "Hey, you were the one that made it intolerable!"  
 Scutoid pointed at his chest, trying to summon his inner Shakespearean actor. "Me! No, how could you pin the blame unto me?"  
 Khaled shook his head, grinning, and said, "Just get some rest, Stud."  
 "Asshole."

---

Benny peeled back the leaves of the bush once more, just to confirm no one was around except his four men. Not a soul was in sight of the gray brick. *Those assholes have no idea how to shake a trail,* he thought as he chambered his Beretta and made sure he was on Command's frequency.  
 At the cue of a silent pager, the four men emerged from their hiding places. A man with red shades looked inside the hotel, and gave a thumbs up at the sight of total dark. They all lined up, and as Benny approached, they drew their choice of weapon.  
 Benny cleared his throat. "This will take no more than 60 seconds. You know what to do — take him *alive*. No one is around."  
 The men nodded, and they braced. As soon as the red-shaded man saw them with their heads down, earbuds active, he drew his pistol and fired three clean shots into the glass door.  
 Inside, the couple instantly awoke. Khaled rolled left off the bed and took up his S&W while Mr. Studios looked furiously for his underwear[24](javascript:;). Khaled did not scream this time — didn't so much as make a sound: it was never wise to reveal your position to the enemy. As he made his way to the door, Mr. Studios found the clothes, wrinkled his nose at the slimy texture, and elected to throw a pair of jeans on from the floor instead.  
 Khaled threw a thumbs-up as he closed the door.  
 "Do you think they might be looking for us?" He whispered, so close to Scutoid that he could feel the man's breath on his cheek.  
 "Fuck if I know. I just know we need to hunker down."  
 "There's going to be far more than two agents if they breached the hotel." Kali's voice was stoic, but Scuti could feel the panic emanating from his very being. He laid an arm across Kali's shoulders, and felt the coolness of his own skin counterbalance Kali's.  
 "Yeah, but not that many. We set ourselves up, we'll be able to take them, I think."  
 "I think?" Kali asked as he broke away from Scuti.  
 "We'll see how it goes." He shrugged as he opened the closet and donned one of the generic white tees inside it.  
 After many long minutes of the two of them waiting by the door, they heard footsteps at the head of the hallway.  
 "*I think* it's time we engage them, Scut."  
 From behind the door, they heard someone shout "Third door! I heard the bastards!"  
 Horrified, Mr. Studios and Khaled dove down, but no bullets came.  
 *Shit, quatrice!*  
 As they heard the thunder of men running down the halls, Mr. Studios ran to barricade the door with the closet furniture, while Khaled went and grabbed two chairs. He threw the chairs at the front, and with Mr. Studios' help, they *barely* managed to get the closet in front of the door before a kick wrenched the door's faceplate from the frame.  
 "Son of a bitch!" The unseen man exclaimed as he kicked to no avail.  
 "Benny, they got a barricade up!" Another said.  
 "Disable them!!" A voice thundered back.  
 At this, the couple dashed to stand on the chairs that had been placed, as a torrent of drywall and smoke was kicked up from the low bullets. The chairs bucked from the grazings, but held. The two of them returned fire, half-expecting death but clinging viciously to the vision of life.  
 Instead, a call of "Two man down! Two man down!" buoyed their hopes. Shadows flitted through the chunky holes in the wall. Khaled and Mr. Studios jumped down and took refuge further back, in an alcove. Mr. Studios prepared his Kalashnikov as Khaled fired wildly at the door, completely taking down the last barrier they had to the enemy.  
 Mr. Studios peeked outside when Khaled's clip ran out — no one. He wanted to assume they had taken cover, having gravely underestimated the firepower the two would bring, but he had no way of knowing. He unloaded a few bullets into the hallway, then ran to the door, the stench of dying against his sweaty and love-made skin invigorating him. No one to the left, no one to the right.  
 It had to be a trap. Mr. Studios called out to the emptiness, "GET THE FUCK OUT OF HERE BEFORE YOU GET A SEVEN TO THE FACE!" And nothing stirred.  
 With the upbeat metronome of his heart, Mr. Studios counted off a minute. Two minutes. No response. He signed for Khaled to come with him to the broken bit of wall, and he did. Then, as Mr. Studios took his eye off the hallway —  
  — He had no time to think now as the cries of three barrels brought down more death, their cracking sound ringing in his head, killing his thoughts before he could finish thinking them. He returned fire, but they were covered. Khaled reared back just in time to avoid the line of sight.  
 There was nothing to do except to press and press, the weight of the hot rifle growing with each kick it gave to Mr. Studios. He only stopped when the *click* of the empty high-volume magazine came.  
 As he began to breathe again, he felt his right calf burning. He looked down — the jeans were torn, and a brilliant red bubbled up from a graze.  
 "Fuck! They got me on my leg-" Mr. Studios bit down and grated his teeth before he could scream; the pain was getting worse.  
 Khaled rushed to him with another white tee from the floor, tearing it in half and tying it tight around the wound.  
 "I'll go see what the hell happened — I think they ran." Khaled said as he wrapped Scuti.  
 "You're fucking *insane.*" He replied between gasps.  
 "What else do you suggest?"  
 Mr. Studios couldn't suggest anything, but Scuti sure as fuck knew he was opposed to it.  
 "They're gonna fucking *kill you.*"  
 "One of *them* is dead, Scutoid!"  
 "Wait, what?"  
 "Oh my-" Khaled stopped himself before he could go on a tirade, and looked out.  
 "That guy at the left corner was downed with your fire, and his comrades left him because of how much you were letting loose."  
 "Ah."  
 Kahled finished tying the shirt and left Scutoid there, wielding two pistols as he went down the hall. Mr. Studios tried to stand. It hurt like a son of a bitch — the thing moved as he walked, literally rubbing salt on his wound — but he still needed to get to the bank, and it would be quite difficult to explain what business he'd had with it exposed.  
 He'd succeeded in making his way to the bed and laying across it with bated breath when Khaled returned.  
 "The coast is clear." It was the largest, brightest smile Scutoid had ever seen, made cute as fuck by the overwhelming relief that he felt now that the danger was gone.  
 Scutoid laughed — the laugh of the saved. "I can't believe we did that shit."  
 "Me neither, Scut."  
 Khaled came to his side, laying with his partner on the ruffled bed in the broken room, safe and whole. They were near each other for a long time, until Scutoid felt that he could stand, despite the pain.  
 And the first thing he did after regaining *some* mobility was lean against a wall and let Khaled's kisses come over him.

---

*That should teach you not to go around pulling guns on people,* Mr. Studios thought as he looked back on the "quiet, low-key" building where so much had happened  
 With a shurg[25](javascript:;)[26](javascript:;), Studi limped to the cab that his partner had called. He followed close behind.  
 After a good hour-long drive, the two arrived at a bank of sorts.[27](javascript:;) Mr. Studios used one of the complimentary blood-washing stations to remove the ugly stain from his overcoat, then waited in line hand-in-hand with Kahled for a teller behind a very fat man with an impressive number of ink stains on his skin[28](javascript:;) When a spot at the cunter[29](javascript:;) became available, Mr. Studios gave his most friendly smile and spoke in Spanish with a carefully cultivated Floridian accent. "Hi… My name is Velano Rosenbaum, and I'm coming on behalf of the MEG with my partner Khaled al-Walid."  
 "Business?" A bored voice asked.  
 "I'm a Base Alpha'er here to make a withdrawal of some 50 liters of Almond Water." He slid a phony MEG member card and ID across the cunter[30](javascript:;) to the teller, who spent a few moments humming and typing noisily on an old computer.  
 "I'm sorry sir, but the system seems to be unable to process your request." The teller leaned closer to the monitor, and blurted out, "Yes — it's a communications error, between Levels."  
 "Really?" Those were unbelievably rare, occurring *maybe* once a third blue moon. For it to happen now, right when Mr. Studios had finally gotten to the bank, seemed a catastrophic blow of fate.  
 Or, well, not catastrophic, he supposed. The teller went on: "If you'd follow me, I'll take you to the manager's office and see if we can get this sorted out."  
 Mr. Studios nodded to Khaled, who stepped out of the line and made his way to a waiting area.  
 The teller led Mr. Studios past a couple well-dressed mafiamen and down a short hallway to a small, tastefully decorated office. Inside, a swarthy man in an exquisitely tailored suit sat at the desk, engrossed in a phone call.  
 "Yes. Yes. I see. Of course we will. This bank has the sensitivity of our client's investments at the forefront of our minds. The workers'll be arriving shortly? Good, good. And a good day to you as well." He hung up the phone and stood, giving Mr. Studios a warm smile and a firm handshake. "Mister Rosenbaum, it's good to meet you. I'm terribly sorry for the hassle, and I'm sure we'll be able to get your difficulties cleared up in no time. First, however, I'm afraid I need to visit the restroom — so if you'll wait here?" The banker gestured to an overstuffed leather chair in front of the desk. "I'll be only a moment."  
 Nodding, Studi took a seat, glancing around the windowless office as the man walked out, closing the door behind him with a soft click. Odd — doors didn't typically make that sound.  
 "You should have stayed in Eleven, Mr. ."  
 *An endless barrage of SHIT.*  
 Some minutes later, the soft scrape of a key in a lock alerted Mr. Studios that the heavy door[31](javascript:;) was being unlocked. Grabbing a heavy paperweight from the desk, Studi strode quickly to the door and pressed himself against the wall, so that when it opened he'd be hidden behind it. Soon enough, the door swung open, and a person entered the office. Mr. Studio brought the paperweight down in an arc into the back of the person's head, and they slumped to the floor unconscious. It was the banker from before — unfortunate, he hoped to kill a BNTG agent instead, pay some goddamned revenge. Mr. Studios thought for an instant that he had been the one to err, but then, there was a noise in the distance: the clattering of rubber combat boots on cheap faux marble tile.  
 Dropping the weight, Studi sprang over the prone banker and dove out the door — he had to escape *now*, before the man hunting him got down the hall. He called out, "KALI!"  
 …Annnnnnnnnnnd, as he made the nearest turn, he dove directly into the arms of a large man in a greasy suit who'd plainly been waiting for him to do just that. "Heyo Branksy, looks like we've got our Fire thief," the man said offhandedly in a dumb Midwestern American's accent as he grabbed Mr. Studios by the neck and brought the handle of a Colt .32 down on Mr. Studio's skull.  
 Clearly, Agents Branks and Skeffington of the Backrooms Non-Aligned Trade Group's "acquisitions unit" are *very* much not men to be trifled with.

rating: +13[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

[SHOW FOOTNOTES](javascript:;)

[HIDE FOOTNOTES](javascript:;)

Footnotes

[1](javascript:;). The soreness in his back now made sense, given the lack of a mattress

[2](javascript:;). Of course it was plated, Mr. Studios doesn't live *that* well

[3](javascript:;). which were, unfortunately, shriveled and likely dusty to the touch

[4](javascript:;). It's a fucking stairwell.

[5](javascript:;). Unfortunately, no one did help him in this endeavour

[6](javascript:;). He did not know *why* so many people fauned over the Almond Water, though, as someone allergic to them, he may have operated from a faulty perspective

[7](javascript:;). In all actuality, Mr. Studios had a good supply of the stuff at all times, and it was no trouble to him to sacrifice some — he *had* stopped with that little red angel, anyways — in order to buy a potential ally

[8](javascript:;). It was a good decision to get the blue steel one after all — at least *one* person was dealt fear through it.

[9](javascript:;). That is to say, the voice was actually incredibly calm for how poorly the situation had gone.

[10](javascript:;). Dumbass.

[11](javascript:;). I'll withhold his words from you, I don't trust you with them. *They're for me ^\_^.*

[12](javascript:;). What I wouldn't give to be the guy trying to kill Mr. Studios right now </3…

[13](javascript:;). **I mean, I've been thinking about how Mr. Studios vocalized, and, well, I would imagine it would *snap* you to focus, not bring you out of it. Really, it seems to me like whoever that man in the shadows was really had no taste I mean, he… uh… fuck.** I forgot to size 30% that text I'm sorry 🥹

[14](javascript:;). *[sic]*

[15](javascript:;). Worth almost nothing in 9.2

[16](javascript:;). Worth its weight in *gold* when it came to information

[17](javascript:;). Secretly, he wanted it to be *his…*

[18](javascript:;). *Their* funeral, he was probably hoping to imply.

[19](javascript:;). Hey, that isn't me editorializing, alright — that's what he thought! Can you see why I headcanon this now?

[20](javascript:;). Which, maybe they were! one never knew where feigned relationships would go.

[21](javascript:;). Dumbasses, all of them!

[22](javascript:;). It was Desperation.

[23](javascript:;). it was Mr. Studios now that they had no one to answer to

[24](javascript:;). He had *some* dignity

[25](javascript:;). [sic]

[26](javascript:;). Only the elite know why its [sic]

[27](javascript:;). It was more of a refurbished convenience store, with aisles for teller lanes, a low ceiling that seemed doomed to fall at any moment, and lame paint which *tried* to peel itself from the walls

[28](javascript:;). The tattoos the thugs passed around really weren't much more than that, not since they had resorted to using superheated ballpoint pen.

[29](javascript:;). [sic]

[30](javascript:;). [sic]

[31](javascript:;). *Very* heavy, judging by how his kicks had simply bounced off the fucking thing.

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Shoulda' Stayed in Eleven](shoulda-stayed-in-eleven.md)" by Wynths, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/shoulda-stayed-in-eleven](shoulda-stayed-in-eleven.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/shoulda-stayed-in-eleven">Shoulda' Stayed in Eleven</a>" by Wynths, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/shoulda-stayed-in-eleven">https://backrooms-wiki.wikidot.com/shoulda-stayed-in-eleven</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/shoulda-stayed-in-eleven](https://backrooms-wiki.wikidot.com/shoulda-stayed-in-eleven)
