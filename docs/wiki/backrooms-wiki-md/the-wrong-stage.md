---
title: "The Wrong Stage"
source: "https://backrooms-wiki.wikidot.com/the-wrong-stage"
retrieved_at: "2026-08-23T23:37:19+00:00"
license: CC-BY-SA-3.0
---

# The Wrong Stage

Oops, xe went the wrong way. (3k words)

[Warning: Theme Code](javascript:;)

[You have been warned.](javascript:;)

```
/*
   2024 Theme
   [2024 Wikidot Theme]
   by Ambersight
*/
@import url('https://backrooms-wiki.wdfiles.com/local--files/theme%3A2024/liminal_archive.css');
@import url('https://backrooms-wiki.wdfiles.com/local--files/theme%3A2024/toggle-sidebar.css');
@import url('https://backrooms-wiki.wdfiles.com/local--files/theme%3A2024/toggle_search_box.css');
@import url("https://backrooms-wiki.wikidot.com/component:user-flairs/code/1");
@import url('https://fonts.googleapis.com/css2?family=Archivo+Black&display=swap');
@import url('https://fonts.googleapis.com/css2?family=JetBrains+Mono:ital,wght@0,400;0,700;1,400;1,700&display=swap');
 
@keyframes collapsible-arrow-spin {
    from { transform: rotate(0deg); }
    to { transform: rotate(-90deg); }
}
 
@keyframes collapsible-arrow-spin-back {
    from { transform: rotate(-90deg); }
    to { transform: rotate(0deg); }
}
 
@keyframes collapsible-arrow-spin-2 {
    from { transform: rotate(0deg); }
    to { transform: rotate(90deg); }
}
 
@keyframes collapsible-arrow-spin-back-2 {
    from { transform: rotate(90deg); }
    to { transform: rotate(0deg); }
}
 
/* ROOT */
:root {
    --2024_red: 212, 39, 39;
    --2024_gray: 255, 237, 221;
    --2024_black: 39, 36, 36;
    --2024_white: 255,255,238;
    --2024_purple: 96, 39, 212;
    --2024_link: 251, 40, 54;
    --2024_visited-link: 210, 12, 12;
    --2024_hover-link: var(--2024_visited-link);
    --2024_dead-link: 251, 163, 31;
    --2024_alt-link: var(--2024_black);
    --2024_alt-visited-link: 0, 0, 0;
    --2024_alt-hover-link: var(--2024_alt-link);
    --2024_alt-dead-link: 255, 202, 45;
    --2024_alt-link-2: 210, 12, 12;
    --2024_alt-visited-link-2: 156, 8, 8;
    --2024_alt-hover-link-2: 210, 12, 12;
    --2024_alt-dead-link-2: 221, 102, 17;
    --2024_pattern: url('https://backrooms-wiki.wdfiles.com/local--files/theme%3A2024/theme2024pattern.png');
 
    --logo-image: url(https://backrooms-wiki.wdfiles.com/local--files/theme%3A2024/dragon-logo.png);
    --header-title: "2024";
    --header-subtitle: "The Backrooms";
    --mono-font: 'JetBrains Mono', Recursive, monospace;
    --white-monochrome: var(--2024_black);
    --pale-gray-monochrome: var(--2024_red);
    --very-light-gray-monochrome: var(--2024_black);
    --light-gray-monochrome: var(--2024_red);
    --gray-monochrome: var(--2024_gray);
    --dark-gray-monochrome: var(--2024_gray);
    --black-monochrome: var(--2024_white);
    --bright-accent: var(--2024_red);
    --medium-accent: var(--2024_red);
    --dark-accent: var(--2024_gray);
    --alt-accent: var(--2024_dead-link);
    --link-color: var(--2024_link);
    --hover-link-color: var(--2024_hover-link);
    --visited-link-color: var(--2024_visited-link);
    --rating-module-button-cancel-color: var(--2024_gray);
    --header-height-on-desktop: 19.5rem;
    --header-height-on-mobile: 19.5rem;
    --header-h1-font-size: calc(var(--base-font-size)*5);
    --header-h2-font-size: calc(var(--base-font-size)*2);
    --topbar-height-on-desktop: 2.35rem;
    --body-width-on-desktop: 61.25rem;
    --toggle-button-bg: rgb(var(--white-monochrome));
    --toggle-border-color: rgb(var(--2024_red));
    --toggle-icon-color: rgb(var(--2024_red));
    --modal-header-bg: var(--2024_red);
    --modal-header-txt: var(--2024_white);
    --base-font-size: max(0.8125rem, min(2vw, 0.9375rem));
    --sidebar-width-on-mobile: calc(var(--base-font-size) * (14 / 15) * 19);
}
 
/* HEADER */
#header {
    --swatch-headerh1-color: var(--2024_white);
    --swatch-headerh2-color: var(--2024_white);
}
 
#header::before {
    background-size: auto 12rem;
    background-position: center top;
    opacity: 1;
}
 
#header h1,
#header h1 a {
    top: 0;
}
 
#header h1 span,
#header h2 span {
    font-size: 0;
}
 
#header h1 a::before {
    display: block;
    position: absolute;
    top: 14rem;
}
 
#header h2, #header h2 span,
#header h2 span::before {
    top: 5.5rem;
}
 
#header h2 span::before {
    font-size: var(--header-h2-font-size);
}
 
#header h1 a::before,
#header h2 span::before {
    --wght: 400;
    --text-shadow: none;
    font-family: 'Archivo Black', var(--title-font);
}
 
#extrac-div-1 {
    position: absolute; top: 0; right: 0;
    width: 100%;
    height: var(--header-height-on-desktop);
    background-image: var(--2024_pattern);
    background-repeat: repeat;
    background-size: 80px auto;
}
 
#skrollr-body {
    background: none;
}
 
/* TOP BAR */
#top-bar div.mobile-top-bar > ul > li > ul > li > a,
#top-bar div.top-bar > ul > li > ul > li > a {
    --wght: 700;
}
 
#top-bar div.mobile-top-bar > ul > li > ul > li > a:hover,
#top-bar div.top-bar > ul > li > ul > li > a:hover {
    color: rgb(var(--2024_white));
    background: rgb(var(--2024_red));
}
 
/* SIDE BAR */
#main-content::before {
    background: rgba(var(--2024_black), .5) 1px 1px repeat;
}
 
#side-bar {
    scrollbar-color: rgb(var(--2024_red)) rgb(var(--2024_black));
}
 
#side-bar .side-block:nth-child(1) {
    background-color: rgb(var(--2024_red)) !important;
    background-image: var(--2024_pattern);
    background-repeat: repeat;
    background-size: 80px auto;
}
 
#side-bar .side-block:nth-child(1) > div {
    gap: 1.75em;
    width: 100%;
}
 
#side-bar .side-block:nth-child(1) a {
    overflow: hidden;
}
 
#side-bar .side-block:nth-child(1) a img {
    position: relative;
    transform: translateX(-80px);
    filter: drop-shadow(rgb(var(--2024_white)) 80px 0);     
}
 
#side-bar div.side-block {
   border: none;
}
 
#side-bar .side-block .heading {
    background: rgb(var(--2024_gray));
    color: rgb(var(--2024_black));
}
 
#side-bar .heading p,
#side-bar #side-bar .side-block > .collapsible-block .collapsible-block-link {
    --text-shadow: none;
}
 
#side-bar div.menu-item a:hover {
    background-color: rgb(var(--2024_red));
    color: rgb(var(--2024_gray));
}
 
#side-bar .side-block > .collapsible-block a.collapsible-block-link {
    padding-right: 0;
    font-size: var(--base-font-size);
}
 
#side-bar .side-block > .collapsible-block a.collapsible-block-link:after,
#side-bar div.menu-item a.collapsible-block-link:after {
    transform: none;
    content: "▼";
    position: static;
    background: none;
    width: auto;
    filter: none;
}
 
#side-bar div.side-block div.menu-item, #side-bar div.side-block div.menu-item > p {
    flex-flow: row nowrap;
}
 
/* CONTENT */
#container {
    background-image: none;
}
 
#main-content :is(h1, h2, h3, h4, h5, h6, blockquote, div.blockquote, div.lightblock, div.darkblock, div.styled-quote, div.dark-styled-quote, hr, div.collapsible-block, table.wiki-content-table, .yui-navset-top, div.code, table, div.paperblock, div.darkerblock, div.darker-styled-quote) {
    margin-top: var(--base-font-size);
    margin-bottom: var(--base-font-size);
}
 
#main-content :is(blockquote, div.blockquote, div.lightblock, div.darkblock, div.styled-quote, div.dark-styled-quote, code, div.code, div.scp-image-block) {
    box-shadow: none;
}
 
#page-title {
    --wght: 700;
    display: flex;
    align-items: center;
    min-height: 1em;
    margin: .5em 0 1em;
    padding: 0;
    border: none;
    color: rgb(var(--swatch-text-general));
    font-weight: var(--wght);
    font-size: 2em;
    line-height: 1;
    font-family: var(--title-font);
    font-variant-ligatures: common-ligatures contextual discretionary-ligatures;
    text-align: left;
}
 
#page-title::after,
#page-title::before{
    content: "";
    flex-grow: 1;
    height: 0.0625rem;
    margin: auto auto auto 1.25rem;
    background: rgb(var(--swatch-primary));
}
 
#page-title::before{
    margin: auto 1.25rem auto auto;
}
 
.yui-navset .yui-nav {
    transition: none;
}
 
.yui-navset .yui-nav a,
.yui-navset .yui-navset-top .yui-nav a {
    background-color: rgb(var(--2024_red));
    background-image: var(--2024_pattern);
    background-repeat: repeat;
    background-size: 80px auto;
    color: rgb(var(--2024_white));
    transition: none;
}
 
.yui-navset .yui-nav a:hover,
.yui-navset .yui-nav a:focus {
    background-color: rgb(var(--2024_gray));
    background-image: var(--2024_pattern);
    background-repeat: repeat;
    background-size: 80px auto;
    color: rgb(var(--2024_black));
}
 
.yui-navset .yui-nav .selected a,
.yui-navset .yui-nav .selected a:focus,
.yui-navset .yui-nav .selected a:active {
    background-color: rgb(var(--2024_black));
    background-image: var(--2024_pattern);
    background-repeat: repeat;
    background-size: 80px auto;
    color: rgb(var(--2024_white)) !important;
}
 
.yui-navset .yui-content,
.yui-navset .yui-navset-top .yui-content {
    background-color: rgb(var(--2024_black));
    background-image: var(--2024_pattern);
    background-repeat: repeat;
    background-size: 80px auto;
    padding: 1px 1em;
}
 
.footnotes-footer {
    background-color: rgb(var(--2024_gray));
    color: rgb(var(--2024_black));
}
 
hr {
    height: 0px;
    border-top: 1px solid rgba(var(--2024_gray), .4);
}
 
#toc {
    margin: 0;
    background-color:rgb(var(--2024_gray));
    color: rgb(var(--2024_black));
    border: none;
}
 
table {
    border-spacing: 0;
}
 
.scp-image-block {
    border: none;
}
 
.scp-image-block .scp-image-caption {
    border: none;
    background-image: var(--2024_pattern);
    background-repeat: repeat;
    background-size: 80px auto;
}
 
table.wiki-content-table th {
    --wght: 700;
    color: rgb(var(--2024_white));
    background-image: var(--2024_pattern);
    background-repeat: repeat;
    background-size: 80px auto;
}
 
table.wiki-content-table td {
    color: rgb(var(--2024_black));
    background: rgb(var(--2024_white));
}
 
table.wiki-content-table td,
table.wiki-content-table th,
table.wiki-content-table tr {
    border: 0.2rem solid rgba(var(--2024_red), 0.6) !important;
}
 
div.rate-box-with-credit-button div.page-rate-widget-box .rate-points,
div.page-rate-widget-box .rate-points {
    font-size: 0.8em;
    align-items: center;
}
 
div.rate-box-with-credit-button div.page-rate-widget-box .rate-points .number,
div.page-rate-widget-box .rate-points .number {
    --wght: 400;
    font-size: 1.3em;
}
 
ul {
    list-style-type: disc;
    padding-inline-start: 20px;
}
 
ol {
    padding-inline-start: 20px;
}
 
a.collapsible-block-link {
    display: block;
    background-color: rgb(var(--2024_black));
    text-align: center;
    color: rgb(var(--2024_white));
    background-image: var(--2024_pattern);
    background-repeat: repeat;
    background-size: 80px auto;
    padding: 0.3em 0.5em;
    --wght: 700;
    font-size: 1.2em;
    text-decoration: none !important;
    transition: background-color 300ms;
}
 
a.collapsible-block-link:hover {
    color: rgb(var(--2024_white));
    background-color: rgb(var(--2024_red));
    background-image: var(--2024_pattern);
    background-repeat: repeat;
    background-size: 80px auto;
}
 
.collapsible-block-folded a.collapsible-block-link::before,
.collapsible-block-unfolded-link a.collapsible-block-link::before,
.collapsible-block-folded a.collapsible-block-link::after,
.collapsible-block-unfolded-link a.collapsible-block-link::after {
    margin: 0 0.5em;
    content: "▼";
    display: inline-block;
}
 
.collapsible-block-folded a.collapsible-block-link::before {
    animation-name: collapsible-arrow-spin;
}
 
.collapsible-block-unfolded-link a.collapsible-block-link::before {
    animation-name: collapsible-arrow-spin-back;
}
 
.collapsible-block-folded a.collapsible-block-link::after {
    animation-name: collapsible-arrow-spin-2;
}
 
.collapsible-block-unfolded-link a.collapsible-block-link::after {
    animation-name: collapsible-arrow-spin-back-2;
}
 
.collapsible-block-folded a.collapsible-block-link::before,
.collapsible-block-unfolded-link a.collapsible-block-link::before,
.collapsible-block-folded a.collapsible-block-link::after,
.collapsible-block-unfolded-link a.collapsible-block-link::after {
    animation-duration: 300ms;
    animation-iteration-count: 1;
    animation-timing-function: cubic-bezier(.32, .38, .39, .94);
    animation-fill-mode: forwards;
}
 
.collapsible-block-content {
    background-image: var(--2024_pattern);
    background-repeat: repeat;
    background-size: 80px auto;
    background-color: rgb(var(--2024_black));
    padding: 1px 1rem;
    color: rgb(var(--2024_white));
}
 
#page-content .licensebox a.collapsible-block-link {
    margin-left: 0;
    opacity: 1;
    color: rgba(var(--2024_white), 0.5);
    transition: background-color 300ms;
}
 
#page-content .licensebox a.collapsible-block-link:hover {
    color: rgba(var(--2024_white), 1);
}
 
#u-infobox {
    background-color: rgba(0, 0, 0, .5);
    z-index: 40 !important;
}
 
.infobox-title {
    background-color: rgb(var(--2024_red));
    background-image: var(--2024_pattern);
    background-repeat: repeat;
    background-size: 80px auto;
    font-family: 'Archivo Black', var(--title-font);
}
 
.infobox-body {
    background-color: rgb(var(--2024_black));
    margin: 0;
    padding: 1px 1em;
}
 
/* DIV */
.darkblock a,
.dark-styled-quote a {
    color: rgb(var(--link-color));
}
 
.darkblock a:visited,
.dark-styled-quote a:visited {
    color: rgb(var(--visited-link-color));
}
 
.darkblock a:hover,
.dark-styled-quote a:hover {
    color: rgb(var(--hover-link-color));
}
 
.darkblock a.newpage,
.dark-styled-quote a.newpage {
    color: rgb(var(--newpage-color));
}
 
blockquote,
div.blockquote {
    --alt-accent: var(--2024_alt-dead-link);
    --link-color: var(--2024_alt-link);
    --hover-link-color: var(--2024_alt-hover-link);
    --visited-link-color: var(--2024_alt-visited-link);
    background: rgb(var(--2024_red));
    color: rgb(var(--2024_white));
    background-image: var(--2024_pattern);
    background-repeat: repeat;
    background-size: 80px auto;
    border: 2px solid rgba(var(--2024_white), .6);
}
 
div.lightblock {
    --alt-accent: var(--2024_alt-dead-link-2);
    --link-color: var(--2024_alt-link-2);
    --hover-link-color: var(--2024_alt-hover-link-2);
    --visited-link-color: var(--2024_alt-visited-link-2);
    margin-left: 0;
    background: rgb(var(--2024_gray));
    color: rgb(var(--2024_black));
}
 
div.paperblock {
    padding: 0.1rem 1rem;
    background: rgb(var(--2024_gray));
    color: rgb(var(--2024_black));
background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='100' height='100' viewBox='0 0 100 100'%3E%3Cg fill-rule='evenodd'%3E%3Cg fill='%23bbbbbb' fill-opacity='0.4'%3E%3Cpath opacity='.5' d='M96 95h4v1h-4v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9zm-1 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-9-10h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm9-10v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-9-10h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm9-10v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-9-10h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm9-10v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-9-10h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9z'/%3E%3Cpath d='M6 5V0H5v5H0v1h5v94h1V6h94V5H6z'/%3E%3C/g%3E%3C/g%3E%3C/svg%3E");
    background-repeat: repeat;
}
 
div.darkblock {
    --alt-accent: var(--2024_alt-dead-link);
    --link-color: var(--2024_alt-link);
    --hover-link-color: var(--2024_alt-hover-link);
    --visited-link-color: var(--2024_alt-visited-link);
    margin-left: 0;
    background: rgb(var(--2024_red));
    color: rgb(var(--2024_white));
    background-image: var(--2024_pattern);
    background-repeat: repeat;
    background-size: 80px auto;
}
 
div.darkerblock {
    background: rgb(var(--2024_black));
    color: rgb(var(--2024_gray));
    background-image: var(--2024_pattern);
    background-repeat: repeat;
    background-size: 80px auto;
    padding: 0.1rem 1rem;
}
 
div.styled-quote {
    --alt-accent: var(--2024_alt-dead-link-2);
    --link-color: var(--2024_alt-link-2);
    --hover-link-color: var(--2024_alt-hover-link-2);
    --visited-link-color: var(--2024_alt-visited-link-2);
    margin-left: 0;
    background: rgb(var(--2024_gray));
    color: rgb(var(--2024_black));
    border-color: rgb(var(--2024_red));
}
 
div.dark-styled-quote {
    --alt-accent: var(--2024_alt-dead-link);
    --link-color: var(--2024_alt-link);
    --hover-link-color: var(--2024_alt-hover-link);
    --visited-link-color: var(--2024_alt-visited-link);
    margin-left: 0;
    background: rgb(var(--2024_red));
    color: rgb(var(--2024_white));
    border-color: rgb(var(--2024_gray));
    background-image: var(--2024_pattern);
    background-repeat: repeat;
    background-size: 80px auto;
}
 
div.darker-styled-quote {
    padding: 0.1rem 1rem;
    background: rgb(var(--2024_black));
    color: rgb(var(--2024_gray));
    border-left: 0.5rem solid rgba(var(--2024_red));
    background-image: var(--2024_pattern);
    background-repeat: repeat;
    background-size: 80px auto;
}
 
div.styled-quote hr,
div.lightblock hr {
    background: rgba(var(--2024_black), .6);
}
 
blockquote hr
div.blockquote hr,
div.dark-styled-quote hr,
div.darkblock hr {
    border-color: rgba(var(--2024_white), .8);
}
 
div.paperblock hr {
    --alt-accent: var(--2024_alt-dead-link-2);
    --link-color: var(--2024_alt-link-2);
    --hover-link-color: var(--2024_alt-hover-link-2);
    --visited-link-color: var(--2024_alt-visited-link-2);
    display: grid;
    height: 6px;
    background: rgba(var(--2024_red), .6);
    border: none;
    transform: skew(-15deg);
    border-radius: 3px 8px 10px 6px;
}
 
div.code {
    background: rgb(var(--2024_black));
    color: rgb(var(--2024_white));
    border: 0.2rem solid rgba(var(--2024_red), .6);
}
 
/* BUTTONS */
div#page-options-bottom > a,
div#page-options-bottom-2 > a {
    background-color: rgb(var(--2024_red));
    color: rgb(var(--2024_white));
    background-image: var(--2024_pattern);
    background-repeat: repeat;
    background-size: 80px auto;
}
 
div#page-options-bottom > a:focus-within,
div#page-options-bottom-2 > a:focus-within {
    text-decoration: none;
}
 
.owindow .button-bar a,
a.button,
button,
div.buttons input,
file,
input.button {
    border-color: rgb(var(--2024_black));
    background-color: rgb(var(--2024_red));
    background-image: var(--2024_pattern);
    background-repeat: repeat;
    background-size: 80px auto;
    color: rgb(var(--2024_white));
}
 
.owindow .button-bar a:hover,
a.button:hover,
button:hover,
div.buttons input:hover,
file:hover,
input.button:hover {
    border-color: rgb(var(--2024_black));
    background-color: rgb(var(--2024_gray));
    color: rgb(var(--2024_black));
}
 
/* PAGE TAGS */
 
#main-content .page-tags {
    border-top: 0.2rem solid rgb(var(--2024_red));
    position: relative;
    margin-top: 2rem;
}
 
.page-tags:before {
    color: rgb(var(--2024_gray));
    content: "TAGS";
    font-weight: bold;
    font-size: 85%;
    background: rgb(var(--2024_red));
    padding: 0.1rem 0.3rem;
    margin: 0;
    display: block;
    width: fit-content;
    position: absolute;
    bottom: 1.4rem;
    left: 0;
}
 
#main-content .page-tags span {
    border-top: none;
    padding-top: 3px;
}
 
.page-tags span a:nth-child(1) {
    margin-left: 0;
}
 
/* OTHERS */
::selection {
    background: rgb(var(--2024_purple));
    color: rgb(var(--2024_white));
}
 
::-moz-selection {
    background: rgb(var(--2024_purple));
    color: rgb(var(--2024_white));
}
 
#footer {
    white-space: nowrap;
    padding: 0.2rem;
    align-items: center;
    height: auto;
    font-size: calc(var(--base-font-size)*.75);
}
 
#footer .options {
    display: flex !important;
    flex-wrap: wrap;
    border: none;
    font-size: 0;
    padding-right: calc(var(--base-font-size)*.75*.4);
}
 
#footer .options a {
    font-size: calc(var(--base-font-size)*.75);
    box-shadow: .0625rem 0 0 0 rgb(var(--2024_red));
    padding: 0.2em;
    padding-right: 0.4em;
    margin: 0.2em;
}
 
#license-area {
    background: rgb(var(--2024_red));
    background-image: var(--2024_pattern);
    background-repeat: repeat;
    background-size: 80px auto;
    color: rgb(var(--2024_gray));
    padding: 0.5em 0;
}
 
#license-area a {
    color: rgb(var(--2024_gray));
}
 
.avatar-hover {
    display: none !important;
}
 
.printuser img.small {
    padding-right: 3px;
}
 
#page-info-break {
    height: 0.8rem;
}
 
#page-options-container {
    margin-bottom: 0.5em;
    display: grid;
    grid-template-areas: 'info watch' 'option1 option1' 'option2 option2';
    max-width: min(90vw, var(--body-width-on-desktop, 45.75rem));
}
 
#page-options-container #page-info {
    grid-area: info;
    text-align: left;
    margin: 0;
    padding: 0;
    font-size: 0.65rem;
}
 
#page-options-container .page-watch-options {
    grid-area: watch;
    margin: 0;
    padding: 0;
    font-size: 0.65rem;
}
 
#page-options-container #page-options-bottom {
    grid-area: option1;
    margin-top: 0.5rem;
}
 
#page-options-container #page-options-bottom-2 {
    grid-area: option2;
}
 
#page-options-container #page-options-bottom,
#page-options-container #page-options-bottom-2 {
    width: 100%;
}
 
.hl-code,
.hl-identifier,
.hl-brackets {
    color: rgb(var(--2024_gray));
 
}
 
.hl-string,
.hl-special {
    color: rgb(96, 39, 212);
}
 
#who-rated-page-area > div > span[style*=color] {
    color: rgb(var(--2024_gray)) !important;
}
 
/* ICONS */
.infomark::before {
    content: "\f05a";
    font-weight: 900;
    font-family: "Font Awesome 5 Free";
}
 
/* MOBILE */
#license-area {
    bottom: 0;
    width: 100%;
    padding-top: 0.5em;
}
 
#top-bar div.mobile-top-bar {
    height: var(--topbar-height-on-mobile);
}
 
@media only screen and (max-width: 768px) {
    :root {
        --rating-module-height: 1.5em;
    }
 
    #content-wrap {
        margin: var(--topbar-height-on-mobile) auto 0;
    }
 
    #page-content {
        font-size: 0.95em;
    }
 
    #page-options-container {
        grid-template-areas: 'info info' 'watch watch' 'option1 option1' 'option2 option2';
    }
 
    #page-options-container .page-watch-options {
        text-align: left;
    }
 
    #license-area {
        padding: 0.8em 0;
        height: auto;
    }
 
    #license-area a {
        display: block;
    }
}
```

rating: +16[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  

Info

Poor fella. Just can't catch a break. :c

This article is written in Bri*i*ish English in case the writing confuses you.

Written by for Secret Santa 2024. It's a gift for .

He wanted an article that combines two unrelated pages into one. The two I chose were Entity 185 and Level 74, which works well because TH is one of his fav canons, and it's also my number one fav.

Check out [My Author Page](pnn-wepm.md) for more.

A huge thank you to , , and for their crit… and for attempting to crit it. Another thanks to for the greenlight.

The theme used is [Theme: 2024](theme__2024--3cc06b29.md) made by .

[Close](index.md)

{$title}Languages:

  
[![flag-saudi-arabia2x.png](https://cdn3.iconfinder.com/data/icons/142-mini-country-flags-16x16px/32/flag-saudi-arabia2x.png)](the-wrong-stage.md)  
[![china](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/china)](the-wrong-stage.md)  
[![flag-germany2x.png](https://cdn3.iconfinder.com/data/icons/142-mini-country-flags-16x16px/32/flag-germany2x.png)](the-wrong-stage.md)  
[![uk](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/uk)](the-wrong-stage.md)  
[![spain](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/spain)](the-wrong-stage.md)  
[![france](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/france)](the-wrong-stage.md)  
[![indonesia](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/indonesia)](the-wrong-stage.md)  
[![italy](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/italy)](the-wrong-stage.md)  
[![KO](http://backrooms-wiki.wikidot.com/local--files/component:translations/KO)](the-wrong-stage.md)  
[![poland](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/poland)](the-wrong-stage.md)  
[![portugal](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/portugal)](the-wrong-stage.md)  
[![russia](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/russia)](the-wrong-stage.md)  
[![thai](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/thai)](the-wrong-stage.md)  
[![toki](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/toki)](the-wrong-stage.md)  
[![vietnam](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/vietnam)](the-wrong-stage.md)

**Good day, Comedian.**

**Your next performance in the Terror Hotel Theatre has been scheduled for next Wednesday at 5pm. I implore you to spend as much time as you can preparing.**

**I do not want to see another incident like what happened last week; starting a brawl because they were dismissing your jokes is irresponsible behaviour. I am well aware of your struggles in trying to make the guests laugh, but I assure you that with enough practice, you can be met with a round of applause.**

**Nothing to you is more important than entertaining these guests. And you know the cost of failure all too well.**

**Yours sincerely,**  
**— The Gentleman**

[The Comedian](entity-185.md) read the message with a look of nerves.

*"Here we go again."* Xe thought to xemselves.

---

(One week later…)

---

Today's the day!

Xe can hear the muffled applause through the [hotel's](level-5.md) vintage walls. [The boss](entity-18.md) must be greeting the pleased guests at this very moment. *"Oh shit!"* The dedicated performance isn't far now, but xe is still not ready. If there was ever an award for the most underprepared comedian, it would have gone to this fella by now; it wouldn't even be a competition.

The last performance went badly, so did the one before, and the one before that, and so on. It's just not fair. Why doesn't any sensible person find xir jokes funny? They clearly don't respect xir work. It's no wonder xe started a brawl last time in a fit of anger. Xe has spent months, no, years, revising every… single… important detail on how to make people laugh.

Asking others for advice: failure. Reading guides on humour: failure. Asking the boss for help: failure. Xe had even read every possible book under the sun from [that library](level-5-3.md) in a fit of desperation, even though all the readable ones were extracted from people's minds unwillingly. *"Why can't I pull it off?"* If xe fails again, the Gentleman will certainly enact a much harsher punishment this time.

*"Oh shoot, not more distractions."* Xe brushed the bothersome thoughts off for what must be the tenth time while xe was getting ready. But then, the sudden sound of a door opening accompanied by a voice saying, "Comedian?" caught xem off-guard. Xe spins round and sees [Bellhopper](entity-135.md) standing there in the doorway, his owl-like face sticking out like a sore thumb.

"Oh no, no, no, no, I'm still not ready yet! Just give me more time. It's unfair for ya' Comedian to be underprepared, ya' know." Xe splurted out.

"You said this before numerous times, and on every occasion you just forget something. Whatever. The Gentleman wants you on the stage in five minutes." He responds in a neutral tone. This news only worries Comedian further.

"Five minutes?! Nah, nah, nah, that's crossing the line. I ain't got five minutes!" Xe said, desperately trying to increase the preparation time. "The Gentleman isn't accepting excuses like that anymore. He's had enough, he says. Just stop getting distracted and get ready before it's too late. Oh, and this time, please don't pick a fight with the guests." And with that, Bellhopper closes the door and leaves the premises.

Xe had no time to lose. In a hurried frenzy, the Comedian proceeds to do everything xe can to fix xir appearance, but everything xe tries only makes things worse. *"Screw it!"* Maybe the audience will laugh harder at a dishevelled look? In the end, xe hurriedly leaves the room to visit the stage for another performance. There have been so many that xe can no longer keep count; all of them have ended in embarrassment. *It's time to try something new — the audience will surely crack up at the sight of someone who looks like they just woke up. It'll be even better when the jokes start coming.*

Xe leaves the room and runs to the stage. *"I can't be late again, the boss will kill me!"* Xe thinks to xemself. There was just one problem. Despite arriving at this hotel many years ago and having worked here since, xe still wasn't sure where to go. But who can blame them? The Backrooms is designed to be a confusing labyrinth. Even the Gentleman didn't inform his staff or put up directions, citing that it, "Gives guests an easy exit."

Going entirely from memory, Comedian ran left. Split path. Went left again. Another split path. Right this time. Multiple doors in a hall. But which one? At this point, Comedian completely forgot where to go. "How many times do I have to tell da boss? Just put some bloomin' signs in the halls. Now I'm gonna be late again. What a way to treat ya' only jokester." Xe muttered to xemself, clearly frustrated.

Comedian chose and entered a door at random, panic flooding xir mind. *"What if I'm late? What if I miss it? Will the boss do something to me?"* Through the door was another long corridor stretching so far it was impossible to see the other side. *"You've gotta be kidding me."* Without thinking, Comedian ran down the hallway for what must have been longer than five minutes. Xe ran so far that xir legs began to hurt slightly, an oddity which rarely happens to the hotel's staff.

But after an intense sprint, salvation eventually shows itself in the form of a glamorous golden door at the end. *"Wait, I don't remember going through a door like this before."* But now's no time for distracting thoughts. Comedian quickly opens this door and rushes inside, more desperate than ever to make a good performance.

To xir immense relief, xe found xemself in a theatre, each seat occupied by a guest. As soon as Comedian busted in, xe said, "Oh, barnacles, I'm late again! I think I fell… heh, gettit, fell…" Weirdly, there was not a single reaction. No head movements. No remarks. No laughing. Just… Nothing. It was quite peculiar.

Then an indescribable feeling struck as the Comedian felt something off about the place. Surely this wasn't the stage xe went on in the past, it couldn't be. There were fewer guests, the stage is devoid of activity, and the architecture appears different. It just doesn't look right. Then, to add fuel to the fire, xe noticed that xe came from the audience entrance this time instead of from behind the red velvet curtain. *"Maybe the boss thought it would be funny to change my entry point?"*

Regardless, the Comedian has a job to do, so xe shuts the door, descends the stairs, and strides onto the stage, doing xir best to hide xir uncertainty. Xe looks at the guests sitting down, and they feel a little familiar, but something about them still feels wrong. On the stage are two seats — useless to the Comedian of course, jokes aren't funny enough sitting down — and a microphone within its holder. Despite the uncertain feelings xe has, stepping onto a grand stage always gives Comedian a sense of purpose, enough to give these feelings a backseat in xir mind. Instead, xir mind was now racing with ideas to make the people gag. Xe grips the mic, picks it up, and, wasting no more time, begins the performance.

A performance that xe would soon wish xe had never started.

"Ahem, ello?!"

…

No response.

"I've got plenty of funny jokes for y'all. Wanna hear 'em?"

…

No response.

"Okay, so, there's this guy, yeah, and xe's like, preparing for a show, yeah…?"

For the first time in forever during this stressful career, the audience had no reaction. Had xe finally gotten better? Had all that practice finally paid off?

"Then xe looks at the time. Then xe says, OH NO, I'M LATE! …Are ya listenin'?"

At that moment, a sudden high-pitched scream fills the room. The Comedian's survival instincts kicked in, and xe looks round at its source. What xe saw was an unrecognizable dark figure violently mutilating an audience member in the back. Xe looks at the scene for a moment… then shrugs it off. The Hotel does things like that all the time. The only concern xe noticed was the lack of that [phonograph](object-18.md). Whenever a planned occurrence like this was happening during performance, it was always supposed to be there. The Comedian never found out why — xe didn't run the Hotel of course — but xe never questioned it. After all, the instrument's presence was never bothersome by any means. But its absence fuelled the Comedian's suspicions further, not enough to make Comedian stop, however.

"Anyway, xe ran out of the door, but the door was locked and closed, so xe-" Comedian struggled to contain xir laughter. "… Hit it face-first!"

…

No reaction, still. The room was filled with nothing but the sound of the Comedian's uncontrollable laughter, even though the joke was very unfunny. But then another scream cuts it out. Another figure was mutilating an audience member, as the Comedian expected to happen. Once again, xe ignored it.

"Uh… You're all just gonna sit there? Fine, fine. But I got more for y'all."

Something about this audience didn't sit right with Comedian. They appeared largely out of place among the previous performances. And why didn't they react to xir jokes? For the first time during a performance, the Comedian started feeling uneasy. And it wasn't because of how terrible the joke was.

"So- Uh… Yeah- So there's this guy who—" Xe looks away from the audience for a second to recollect xir thougths, and xir heart nearly stops when xe looks back.

Nobody was there. As if they vanished in an instant.

Of course, the hotel makes a habit of giving guests a taste of disappearing, but there was no way that everyone was removed this fast. Xe had only looked away for just a second. At this point, the feelings in the backseat of xir mind have overtaken once again, and Comedian feels a chill run down xir spine as a sudden realization hit. *"This can't be the hotel. It was [a different place](level-74.md) entirely."*

"You're exactly right, Comedian." said a voice from behind.

Xe spins round instantly. There, in all his glory, is the Gentleman. "Boss. Thank goodness you're he- Hold on a sec, this ain't the hotel. Ain't it?!"

The Gentleman chuckles amusingly. "You're a clever one. Usually our guests never notice. But you're not a guest — I can tell you that much."

This remark creates a sense of confusion for Comedian. Why would the Comedian's own boss call xem, out of all the staff, the clever one? "What…? What are you saying?"

"I'm saying that you are not welcome here. This theatre is reserved for humans only." Strange. The Gentleman was the one who told xem to perform, and now he's saying that the Comedian's presence is disallowed? Perhaps xe went the wrong way?

"Hold on, are ya' tellin' me that I'm on the wrong stage?!"

"If you say so. I was about to hold a performance for my gain, until your infuriatingly awful joke interfere—"

"Ay c'mon, where's your sense of hum—"

"Don't interrupt me!" the Gentleman said, raising his voice. "In case you weren't listening before, this theatre has one rule: Foreign non-humans are strictly forbidden!"

*"This isn't the Gentleman I know. He never gets as angry as that."*

"W- Who are—"

"You wish to know who I am, intruder?" The Gentleman chuckled, "I'm not really that hideous, ugly, slime-faced tuxedo beast. You're absolutely correct in your assumptions, intruder."

"T- t- then w- who are you… really?" The Comedian asks as a sense of fear creeps in.

"A shapeshifter, one who steals and mimics the thoughts of those whom enter this premises."

"I c- can't believe it y- y- you- s- stol—"

"Stole his identity from your perfectly clear mind when I had the opportunity? Of course I did. Now enough chatting. It's time I get rid of you for good."

At this moment, immense panic that had never been experienced before flooded through Comedian's veins in a flash. The Gentleman — or whoever it was — had clicked their fingers, and none other than familiar terror hotel staff manifested from thin air, or at least fake clones of them taken from the Comedian's memory. [Concierge](entity-131.md) stands at the front. [Housekeeper](entity-111.md) lingers behind, brandishing a sturdy broom. And [Chef](entity-800.md) is at the back wielding a large knife stained in crimson blood.

"Care to show our intruder the door, would you?"

It's flight or fight now. The Comedian turns around and runs for dear life. But in the panic, xe falls off the stage onto the red-carpeted floor below, dropping the mic xe was holding. Seeing the opportunity, the Concierge clone jumps off towards Comedian, fists at the ready. Thinking fast, the Comedian rolls out of the way and gets up. The fists slammed into the floorboards mere inches from where xir face would have been. The Concierge's many eyes then turned round to meet the Comedian's gaze as xe hastily fled.

Xe needs to get out of here, and the only way out — that Comedian knew of — was where xe came from. So xe makes a beeline to the nearest staircase, but the Housekeeper clone is waiting on top of the stage. As the Comedian speeds past, the Housekeeper swings the broom's handle towards xir face, intending to knock xem out cold. But xe has good reflexes, and dodges the blow just in time.

Xe's sprinting up the stairs now, heart pounding the hardest it had ever pounded. "Don't let the intruder leave!" Xe hears the fake Gentleman yell. At this moment, the fake Concierge and Housekeeper charge up the stairs after the Comedian, fuelled by murderous intent. Soon, the Comedian reaches the exit. *"Nearly there."* Then xe sees it. The fake Chef threw the large knife with perfect precision, heading right for the Comedian's vulnerable head. Xe speedily opened the door, entered, and closed it, just before the knife can hit with a dramatic thud… but it never came.

Xe looks behind, and sees that xe is back in the Hotel. Xe is safe, for now. The relief that came through was huge. Immense, even. Xe uses this opportunity to catch xir breath from all that running. So much more energy was used to sprint than to walk. But soon the Comedian began trying to rack xir brain after nearly being killed. *"What the fuck just happened?"*

Xe needs to calm down before this becomes too much. *Deep breaths… Deep breaths…* It's fine, xe's safe. That imposter Gentleman can no longer harm xem. But it's not all good news. *"So entering that place just gave knowledge of the boss to that shapeshifter? WHAT HAVE I DON—"*

"Oh, there you are." Xe hears a comforting voice say, stopping the Comedian in xir thoughts. Looking round, xe sees it is Bellhopper, standing in an adjacent hallway. "Where were you? You've been missing for an hour. The boss got very concerned. And trust me, I know him more than anyone else, not once have I ever seen such a worried look on his face."

The Comedian doesn't respond, the trauma of what happened holds xem back from saying anything.

"Do you… Need something, perhaps?"

Then Comedian splurted out. "No- No- It's uh… Nothin'. Is th- the- Performance still on?"

"I'm afraid you missed it."

"Ah, nuts! The boss is gonna kill me!"

Maybe it would be best if nobody knew. After all, the great Gentleman of this hotel is unlikely to believe such a ridiculous story from such a ridiculous being.

---

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[The Wrong Stage](the-wrong-stage.md)" by pnn wepm, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/the-wrong-stage](the-wrong-stage.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/the-wrong-stage">The Wrong Stage</a>" by pnn wepm, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/the-wrong-stage">https://backrooms-wiki.wikidot.com/the-wrong-stage</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** Old paper7.jpg  
> **Author:** Unknown  
> **License:** [CC0 1.0](http://creativecommons.org/publicdomain/zero/1.0/)  
> **Source Link:** <https://commons.wikimedia.org/wiki/File:Old_paper7.jpg>

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/the-wrong-stage](https://backrooms-wiki.wikidot.com/the-wrong-stage)
