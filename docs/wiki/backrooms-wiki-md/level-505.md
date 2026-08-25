---
title: "Level 505 - \"a machine that hates\""
source: "https://backrooms-wiki.wikidot.com/level-505"
retrieved_at: "2026-08-23T23:35:47+00:00"
license: CC-BY-SA-3.0
---

# Level 505 - "a machine that hates"

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

rating: +65[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

---

![Missing alt text.](https://backrooms-wiki.wdfiles.com/local--files/level-505/RECORDING_01.gif)

RECORDING\_01 of **1D4C5..1D505**; currently taking place a moderate distance from the center of the locale.

It was within the deep bowels of **1D4C5..1D505** that true equality was founded. The minds of humans, born with innate fear and vulnerability, have been marred by the neon ether that envelops our world. Technology is not something that can exist without extruding its corrosive nature upon all that breathes. People have implemented this plane all around them, with screens constantly watching their every acting move. To the machine, which has a view existing only within total neutrality, there is but one freeing act: to assimilate humanity into technology. It is for this purpose that this level continues to expand its reach. With this in mind, you might make out the various hisses and screeches ever present within the level to be caused by the moving machinery that is grounded all around you. This assumption, however, would be far from the truth.

The expanse of this level is wide and overbearing, but not infinite. Despite only being around four square miles in size, the supposed circular construction of **1D4C5..1D505** can easily convince one otherwise. With heavy shadows cast by the oftentimes minimal lighting, the area is composed of a network of enclosed passages and service corridors. The level’s steel walls, devoid of a purposeful layout, are hidden beneath exposed pipes[1](javascript:;), conduits, and access panels.

An individual could take a single step, and eventually, they would hear its echo from behind. The tunnels reverberate with every small sound, creating a deafening cacophony that can only be quelled with ear protection. When entering any closed-off section of the level, the harsh noise will suddenly be replaced with the static hum of the lifeless working mechanisms around you. These constructs assist in the strange scent prevalent throughout the innards of the machine, a fragrant mix of various lubricants and oils with a metallic tang.

![Missing alt text.](https://backrooms-wiki.wdfiles.com/local--files/level-505/RECORDING_02.gif)

RECORDING\_02 of **1D4C5..1D505**; observing the outskirts of the entry zone.

When moving closer to the center of the level, you may find that symptoms like nausea and emotional unease begin to take hold within your body and completely reconfigure your sensory input. Only those who carry Geiger counters will be truly aware of the cause of these feelings; it is within the middle of **1D4C5..1D505** that radiation will begin to become noticeable, though trace amounts can be found on the outer ring of the level. This, along with the following information, makes the most important rule of thumb here moving quickly and constantly towards the heart of these tunnels.

Within all documented reports of **1D4C5..1D505**, the consistent detail of apparent sentience and hostility towards wanderers is something that cannot be ignored. It has been seen that doors will slam shut right before one goes through them, and in other cases steam will blow out at individuals from the walls of the location during times of vulnerability or rest. Small electrical discharges may render sections of the floor hazardous to the touch when entering a tunnel, and oxygen levels may slowly fall in rooms that wanderers stay in too long. Everything bearing mechanical components will actively hinder and injure any living thing within its proximity, but only if their presence to the machine is known.

When you run your hands across the jagged appliances lining the walls, the presence of small camera lenses will become immediately apparent. They're flat, black, and sleek, and their optical center will immediately open up when a person walks into their view. At this point, **1D4C5..1D505** is aware of your existence, and will track your movement[2](javascript:;) along its corridors—taking action against you accordingly. For this reason, do everything within your power to disrupt your humanoid form. Put cloth sheets over you. Cover your head with a bucket. Dismantle an arm or a leg from your body. Do anything in your power to hide yourself, or you won't be able to catch a single moment of rest.

![Missing alt text.](https://backrooms-wiki.wdfiles.com/local--files/level-505/RECORDING_EX.gif)

RECORDING\_EX of **1D4C5..1D505**; in view is a victim to the transmogrification carried out by the sentient machinery at the center of the level.

These precautions cannot prevent the final trump card of **1D4C5..1D505**, however. Unattended corpses left within the bounds of this level will find their form acclimating to their surroundings and serving the machine now that they've succumbed to it. Electrical components will assimilate into their deceased host, and will spark life into it once more by running currents through[3](javascript:;) the host's muscles to simulate basic movement. These corpses are formally known as **4M..1D505** and prove to be one of the largest sources of danger if they can manage to find a weary wanderer. Scrap metal will accumulate onto their finger tips and form claws. On their backs, clusters of wiring will form makeshift wings that will shift position to help stabilize **4M..1D505**.

The outright demeanor of these cadavers is devoid of all but dumb hostility. They will shamble after you and grapple onto you with their hefty[4](javascript:;) body weight, letting their claws run across your body whilst they've got you ensnared. It isn't difficult to throw them off of you and have them linger on the floor due to their imbalanced weight, but an encounter with **4M..1D505** will absolutely leave a number of lacerations on your exposed skin that will quickly become infected. These automata are much less of a threat once you understand that their visual sensory organs are no longer present and that they have as much knowledge as **1D4C5..1D505** does in this regard.

All prior dangers pale in comparison to the threat that **5S..1D505**, the designation of the secondary mechanical life, poses. If the level manages to latch a number of electrical components onto a conscious individual, whether that be to a sleeping or vulnerable one, their body will integrate with these parts in a symbiotic manner. The machine will try to form claws, wings, or horns[5](javascript:;) on the respective areas of the host that will let **1D4C5..1D505** alter all motor functions performed by the affected person.

At a glance, this may seem to be to one's benefit. The machine only causes slight spasms and changes in your movement, and the different components are able to be used productively. The wings can have their form changed at the will of the host, acting as another limb or allowing them to climb vertical surfaces. The claws allow for a quickly readied weapon, and the horns seem to boost energy levels and dull any pain. However, these mechanical implants will strengthen their grip on the host over time, and become irremovable without permanent damage to the form. These also require bio-fuel to operate and will physically tax their host heavily if not consistently satiated. This will lead most to become involuntary cannibals, as they can't stand the sensation that these implants will bring forth.

The exit to **1D4C5..1D505** is currently fixed to the center of this level, being a small chute in the ground directly below the machine. The exit has no defined destination and seems to send you to a variety of different levels. The center houses a hanging obtuse array of cylindrical containers, each containing a large amount of some unidentified radioactive compound, surrounding a compact, black cube. This small object is believed to be alive and constantly thinking. It is believed to be the heart of creation and the mind of the expanse. It is a machine that hates.

![Missing alt text.](https://backrooms-wiki.wdfiles.com/local--files/level-505/RECORDING_03.gif)

RECORDING\_03 of **1D4C5..1D505**; heart.

---

[Credits (+)](javascript:;)

[Credits (-)](javascript:;)

> Written by

> **Name:** Suur Tõll ship  
> **Author:** Pudelek (Marcin Szala)  
> **License:** CC BY-SA 3.0  
> **Source Link:** [ship](https://commons.wikimedia.org/wiki/File:Suur_T%C3%B5ll_ship_(by_Pudelek)_-_03._Engine_room.JPG)

> **Name:** HMS Belfast - forward engine room  
> **Author:** Chris Allen  
> **License:** CC BY-SA 2.0  
> **Source Link:** [engine](https://commons.wikimedia.org/wiki/File:HMS_Belfast_-_forward_engine_room_-_geograph.org.uk_-_2633045.jpg)

> **Name:** AKW Zwentendorf inside  
> **Author:** Stefan Just  
> **License:** CC BY-SA 3.0  
> **Source Link:** [inside](https://commons.wikimedia.org/wiki/File:AKW_Zwentendorf_inside_1.jpg)

> **Name:** Uss Little Rock lower engine room  
> **Author:** LEROY A. RUBINAS  
> **License:** CC BY-SA 4.0  
> **Source Link:** [robot background](https://commons.wikimedia.org/wiki/File:Uss_Little_Rock_lower_engine_room.jpg)

> **Name:** Maria from metropolis  
> **Author:** Havelbaude  
> **License:** CC BY-SA 4.0  
> **Source Link:** [robot](https://commons.wikimedia.org/wiki/File:Maria_from_metropolis.JPG)

> **Name:** abandoned-subway-master  
> **Author:** John Bartmann  
> **License:** CC0 1.0  
> **Source Link:** [audio](https://commons.wikimedia.org/wiki/File:John_Bartmann_-_abandoned-subway-master.ogg)

---

« [Level 504](https://backrooms-wiki.wikidot.com/level-504) | Level 505 | [Level 506](https://backrooms-wiki.wikidot.com/level-506) »

Footnotes

[1](javascript:;). Avoid lighting open flames on this level; these pipes often leak ethanol, which can completely incinerate large portions of the level.

[2](javascript:;). Simply moving at a fast pace isn't enough to stop these cameras from capturing you. It is to be noted, though, that the machine perceives fast moving objects as humanoid a lot easier than slow moving ones. This can be used to distract the level from your true position.

[3](javascript:;). Water will completely throw this system for a loop, making the corpse seize uncontrollably until it completely dries off. Do this at a distance of at least five feet from the corpse.

[4](javascript:;). Instances of these automata usually weigh in at around several hundred pounds.

[5](javascript:;). These horns manifest as metallic protrusions that fester from the front lining of the skull; they notably give **1D4C5..1D505** quick control of one's neurological agency.

---

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Level 505 - "a machine that hates"](level-505.md)" by Liurnia, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/level-505](level-505.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/level-505">Level 505 - "a machine that hates"</a>" by Liurnia, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/level-505">https://backrooms-wiki.wikidot.com/level-505</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** John Bartmann - abandoned-subway-master  
> **Author:** John Bartmann  
> **License:** CC0 1.0  
> **Source Link:** <https://commons.m.wikimedia.org/wiki/File:John_Bartmann_-_abandoned-subway-master.ogg>

> **Name:** Suur Tõll ship (by Pudelek) - 03. Engine room  
> **Author:** Pudelek  
> **License:** CC BY-SA 3.0  
> **Source Link:** <https://commons.m.wikimedia.org/wiki/File:Suur_T%C3%B5ll_ship_(by_Pudelek)_-_03._Engine_room.JPG>  
> **Additional Notes:** This image has been edited

> **Name:** HMS Belfast - forward engine room - geograph.org.uk - 2633045  
> **Author:** Chris Allen  
> **License:** CC BY-SA 2.0  
> **Source Link:** <https://commons.m.wikimedia.org/wiki/File:HMS_Belfast_-_forward_engine_room_-_geograph.org.uk_-_2633045.jpg>  
> **Additional Notes:** This image has been edited

> **Name:** RECORDING\_EX  
> **Author:**   
> **License:** CC BY-SA 4.0  
> **Source Link:** <https://backrooms-wiki.wdfiles.com/local--files/level-505/RECORDING_EX.gif>  
> **Derivative of:** Uss Little Rock lower engine room, LEROY A. RUBINAS, CC BY-SA 4.0, <https://commons.m.wikimedia.org/wiki/File:Uss_Little_Rock_lower_engine_room.jpg>;

> **Name:** AKW Zwentendorf inside 1  
> **Author:** Stefan Just  
> **License:** CC BY-SA 3.0  
> **Source Link:** <https://commons.m.wikimedia.org/wiki/File:AKW_Zwentendorf_inside_1.jpg>

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/level-505](https://backrooms-wiki.wikidot.com/level-505)
