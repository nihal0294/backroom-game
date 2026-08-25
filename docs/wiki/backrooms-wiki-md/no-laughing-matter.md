---
title: "No Laughing Matter"
source: "https://backrooms-wiki.wikidot.com/no-laughing-matter"
retrieved_at: "2026-08-23T23:39:18+00:00"
license: CC-BY-SA-3.0
---

# No Laughing Matter

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

rating: +31[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

> It was a day like any other at Housekeeping. Not a calm day, of course, but not stressful either. I had finally closed my last case, which meant I could finally relax some more. While it wasn't a thrilling investigation, it wasn’t too tiring either, which is always welcome in a world like the Backrooms. When you deal with incomprehensible mysteries in a paranormal universe, it was nice to have some normality from time to time. At last, I thought I could get some well-earned rest. But fate decided otherwise.  
> How naive I was to think it was just like any other day.  
> Now I was on the most complex case I ever investigated.  
> The victim? Comedian.  
> The suspects? Members of the Terror Hotel staff.  
> My goal? Resolving this case, so as to save my own life.

![cover](http://backrooms-wiki.wikidot.com/local--files/no-laughing-matter/cover)

# The Characters

---

# The Detective - Kaya Watson

![kaya-photo](http://backrooms-wiki.wikidot.com/local--files/no-laughing-matter/kaya-photo)

In all those years investigating the mysteries of this world, I got to hear and read plenty of logs from operatives, joking about the dangers they were subjecting themselves to. Ironically, all those people would have done a far better job.

# The Victim - [The Comedian](entity-185.md)

![medium.jpg](http://backrooms-wiki.wdfiles.com/local--resized-images/entity-185/comediann/medium.jpg)  

**So like— listen, there's this guy— and xe arrives at a hotel, right? And xe's like, hey, this is a pretty neat hotel! But it seems to just be missing something… Ya feel me? Fancy decorations…pretty swell music, if you ask me, but it's just… *missin'*something!**

# Suspect #1 - [The Concierge](entity-131.md)

![concierge](http://backrooms-sandbox-2.wikidot.com/local--files/captaiin-part-4-diamond-is-unbreakable/concierge)

*The usual four, plus… hm, four on my left arm, five on the right… none on my torso today, thank god. Wow, thirteen people gone! Either the other staff have really picked up the pace or they're slacking off.*

# Suspect #2 - [Housekeeper](entity-111.md)

![medium.jpg](http://backrooms-wiki.wdfiles.com/local--resized-images/entity-111/housekeeper/medium.jpg)

*And then, just as she had requested, the screaming stops. She cleans up the mess made, and gets the work done as always. Another one for the records, I suppose.*

# Suspect #3 - [Jazzheads](entity-197.md)

![Capture.PNG](http://backrooms-wiki.wikidot.com/local--files/no-laughing-matter/Capture.PNG)

*Right, ye, forty-seven years. T'was nice to travel 'round the word with the crew, we got ta meet some pretty incredible people on our travels. But like, sometimes ye just gotta do a wise decision ta get far in life.*

# Suspect #4 - [The Bellhopper](entity-135.md)

![medium.jpg](http://backrooms-wiki.wdfiles.com/local--resized-images/entity-135/thebellhopper/medium.jpg)

I do not know when you came into my life, but ever since you did I was unable to ever take my eyes off of you. Ever since that fateful day you arrived at my hotel you've done nothing but wonders for me and my cause.

# Suspect #5 - [Chef](entity-800.md)

![medium.jpg](http://backrooms-wiki.wdfiles.com/local--resized-images/entity-800/Chef/medium.jpg)  
  

'Another serving, please!', they entreat you.  
  
'It was just so good, I can't go without another serving', they opine.  
  
'Please bring me more, I must leave soon, but not without a third plating!' they urge.

# Case history

---

#### Part 1: [Another Day at the Job](another-day-at-the-job.md)

> To my horror, I gasped, realizing who this person was sitting with the owl-headed bell boy. It was the Beast, in all his terrifying splendor. The clash between the wealthy and gentle look of his suit clashed with his ominous, monstrous octopus head, a detail that was disheartening in a photo, but truly horrifying in real life.

#### Part 2: [A Wild Investigation](a-wild-investigation.md)

> Long gone were the times I would be fooled by the seemingly good people. If humans always had something to hide, I can't even imagine what a troupe of entities from a murderous organization could have on their conscience.

#### Part 3: [A Mantis and a Goat walk into a Bar](a-mantis-and-a-goat-walk-into-a-bar.md)

> She was, of course, covered in blood. If I had a nickel for every time I saw one of the suspects covered in blood, I'd have two nickels, which isn't a lot, but it's concerning that it happened twice. The staff of the hotel was far more disgusting than I remembered, and the gruesome sight didn't help me remain all that distracted from my worrisome thoughts. It didn't phase me as much as it did when I saw Chef covered in blood, which greatly preoccupied me, but I didn't have the time or energy to focus on that. I was going to turn into minced meat if I didn't hurry up, just like the unfortunate victims that the staff killed before me, so I decided to make it quick.

#### Part 4: [The Final Answer](the-final-answer.md)

> I tried my best to collect myself, gathered all my notes, and stood up quickly. Yes, it all made sense at last. I may have stumbled my way through the investigation so far, but now I finally felt like I was in control.

# Affiliated Entries

---

#### Entity 800 - "[Chef](entity-800.md)"

> 'Another serving, please!', they entreat you.  
> 'It was just so good, I can't go without another serving', they opine.  
> 'Please bring me more, I must leave soon but not without a third plating!' they urge.

#### Entity 28- "[Spokeslady](entity-28.md)"

> All the posters have been shipped! It's time to send off my little bunnies to meet our curious future guests. Oh! Then I definitely have to compose a new jingle! So much to do, so little time! It will be a packed day!

---

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[No Laughing Matter](no-laughing-matter.md)" by Praetor3005, Nikuchan, VivamusLudio, Greencell and Sariastuff, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/no-laughing-matter](no-laughing-matter.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/no-laughing-matter">No Laughing Matter</a>" by Praetor3005, Nikuchan, VivamusLudio, Greencell and Sariastuff, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/no-laughing-matter">https://backrooms-wiki.wikidot.com/no-laughing-matter</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** The Show Intro  
> **Author:** Music\_For\_Videos  
> **License:** [Pixabay Licenxe](https://pixabay.com/service/license-summary/)  
> **Source Link:** <https://pixabay.com/it/music/papere-the-show-intro-162872/>

> **Name:** Cover  
> **Author:**   
> **License:** [CC BY SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/)  
> **Source Link:** <https://media.discordapp.net/attachments/695671793570152448/1213967822443511848/Senza_titolo_365_20240303225428.png?ex=65f766a3&is=65e4f1a3&hm=33ad0ffcd2c854993627d7d01130adf615bdf5d747f9f93485da9f660fdaa408&=&format=webp&quality=lossless&width=670&height=670>

> **Name:** Kaya photo  
> **Author:** [https://thispersondoesnotexist.com/](index.md)  
> **License:** Images by thispersondoesnotexist are in the public domain.  
> **Source Link:** <https://media.discordapp.net/attachments/1201600070534045707/1214305842661167147/Screenshot_20240304_211730_Chrome.jpg?ex=65f8a171&is=65e62c71&hm=63372ec2dae92faeaceb2bcc23108964f7301620734da59f7e7c73e4ddcad526&=&format=webp&width=660&height=670>

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/no-laughing-matter](https://backrooms-wiki.wikidot.com/no-laughing-matter)
