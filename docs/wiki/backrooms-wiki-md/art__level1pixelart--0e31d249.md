---
title: "Backrooms Artwork: Level 0 - \"Tutorial Level\""
source: "https://backrooms-wiki.wikidot.com/art:level1pixelart"
retrieved_at: "2026-08-23T23:38:49+00:00"
license: CC-BY-SA-3.0
---

# Backrooms Artwork: Level 0 - "Tutorial Level"

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

rating: +10[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

Greetings! Thank you all once again for taking the time to look at another one of my works of art. As opposed to my [previous work of art](art__cwn--cec8c8e1.md), this one takes on a pixel art medium, which I've both recently started taking on and felt that there wouldn't be a more appropriate medium for what I had in mind. So, without further ado, I present to you **[Level 0!](level-0.md)**

![Level0revamped.png](https://upload.wikimedia.org/wikipedia/commons/9/9c/Level0revamped.png)

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Backrooms Artwork: Level 0 - "Tutorial Level"](art__level1pixelart--0e31d249.md)" by coldwinternights, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/art:level1pixelart](art__level1pixelart--0e31d249.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/art:level1pixelart">Backrooms Artwork: Level 0 - "Tutorial Level"</a>" by coldwinternights, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/art:level1pixelart">https://backrooms-wiki.wikidot.com/art:level1pixelart</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** level0revamped.png  
> **Author:** coldwinternights  
> **License:** CC BY-SA 4.0  
> **Source Link:** <https://upload.wikimedia.org/wikipedia/commons/9/9c/Level0revamped.png>

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/art:level1pixelart](https://backrooms-wiki.wikidot.com/art:level1pixelart)
