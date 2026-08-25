---
title: "Desolation Level 10"
source: "https://backrooms-wiki.wikidot.com/desolation-level-10"
retrieved_at: "2026-08-23T23:37:04+00:00"
license: CC-BY-SA-3.0
---

# Desolation Level 10

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
    --bright-accent: 100, 170, 100; /* link */
    --medium-accent: 143, 160, 150;
    --dark-accent: 87, 96, 91;
    --alt-accent: 255, 125, 125; /* newpage link */
 
    --link-color: var(--bright-accent);
    --visited-link-color: 215, 246, 193;
    --newpage-link-color: var(--alt-accent);
 
    --swatch-background: var(--pale-accent);
    --article-image: url("http://scutoidbox.wikidot.com/local--files/level-10-deso/level-10-deso.png");
 
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

[+ 展开样式代码](javascript:;)

[- 收起样式代码](javascript:;)

```
:root {
    --ani-speed: 1;
}
 
/*====所有的动画===*/
 
/*基础*/
 
@keyframes rightin0{
    0%{
    transform:translateX(-1rem);
    opacity:0;
    }
    100%{
    transform:translateX(0);
    opacity:1;
    }
}
 
@keyframes upin0{
    0%{
    transform:translateY(1rem);
    opacity:0;
    }
    100%{
    transform:translateY(0);
    opacity:1;
    }
}
 
@keyframes staggerUp {
    0% { transform: translateY(1.2rem); opacity: 0; }
    100% { transform: translateY(0); opacity: 1; }
}
 
@keyframes opacity-1 {
  0% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}
 
@keyframes letter-spacing-opacity {
    0% {
        letter-spacing: 10px;
        opacity: 0;
    }
    100% {
        letter-spacing: 0;
        opacity: 1;
    }
}
 
@keyframes fadeInScale {
    0% {
        transform: scale(0.8);
        opacity: 0;
    }
    100% {
        transform: scale(1);
        opacity: 1;
    }
}
 
@keyframes blur5 {
    0% {
        filter: blur(5px);
    }
    100% {
        filter: blur(0px);
    }
}
 
@keyframes fadeIn-sd {
  0% {clip-path: polygon(0% 0%,0% 0%, -10% 100%,0% 100%);}
  100% {clip-path: polygon(0% 0%,110% 0%, 100% 100%,0% 100%);}
  }
 
@keyframes rightin{
    0%{
    transform:translateX(-1rem);
    opacity:0;
    }
    80%{
    transform:translateX(-1rem);
    opacity:0;
    }
    100%{
    transform:translateX(0);
    opacity:1;
    }
}
 
@keyframes rras-space{
    from { transform:rotateX(90deg); }
    to{ transform:rotateX(0deg); }
}
 
@keyframes leftin{
    0%{
    transform:translateX(1rem);
    opacity:0;
    }
    80%{
    transform:translateX(1rem);
    opacity:0;
    }
    100%{
    transform:translateX(0);
    opacity:1;
    }
}
 
@keyframes leftin0{
    0%{
    transform:translateX(1rem);
    opacity:0;
    }
    100%{
    transform:translateX(0);
    opacity:1;
    }
}
 
@keyframes upin1{
    0%{
    transform:translateY(1rem);
    opacity:0;
    }
    50%{
    transform:translateY(1rem);
    opacity:0;
    }
    100%{
    transform:translateY(0);
    opacity:1;
    }
}
 
@keyframes upin2{
    0%{
    transform:translateY(1rem);
    opacity:0;
    }
    50%{
    transform:translateY(1rem);
    opacity:0;
    }
    75%{
    transform:translateY(0);
    opacity:1;
    }
    100%{
    transform:translateY(0);
    opacity:1;
    }
}
 
@keyframes sd-diamond-pattern {
  0% {
    opacity: 0;
  }
  100% {
    opacity: 0.15;
  }
}
 
/*
        这什么逆天写法
        transform: translateX(-1rem);
        transform: rotate(30deg);
*/
 
@keyframes ic-right {
    0% {
        transform: translateX(-1rem) rotate(30deg);
        opacity: 0;
    }
 
    80% {
        transform: translateX(-1rem) rotate(30deg);
        opacity: 0;
    }
 
    100% {
        transform: translateX(0) rotate(0deg);
        opacity: 1;
    }
}
 
@keyframes ic-border {
    0% {
        border-bottom: rgba(var(--ic_border-color), 0) solid var(--ic_interspace);
    }
 
    100% {
        border-bottom: rgba(var(--ic_border-color), 1) solid var(--ic_interspace);
    }
}
 
@keyframes ic-add-h {
    0% {
        clip-path: polygon(50% 0%,50% 0%,50% 100%,50% 100%);
        background-color: rgba(var(--ic_border-color), 1);
    }
 
    100% {
        clip-path: polygon(0% 0%,100% 0%,100% 100%,0% 100%);
        background-color: rgba(var(--ic_add-habitability-bg-color), 1);
    }
}
 
@keyframes ic-add-r {
    0% {
        clip-path: polygon(50% 0%,50% 0%,50% 100%,50% 100%);
        background-color: rgba(var(--ic_border-color), 1);
    }
 
    100% {
        clip-path: polygon(0% 0%,100% 0%,100% 100%,0% 100%);
        background-color: rgba(var(--ic_add-resource-bg-color), 1);
    }
}
 
@keyframes ic-add-s {
    0% {
        clip-path: polygon(50% 0%,50% 0%,50% 100%,50% 100%);
        background-color: rgba(var(--ic_border-color), 1);
    }
 
    100% {
        clip-path: polygon(0% 0%,100% 0%,100% 100%,0% 100%);
        background-color: rgba(var(--ic_add-signal-bg-color), 1);
    }
}
 
@keyframes border-spin-pc {
        0%{
    clip-path: polygon(0% 0%,0% 0.4rem,0% 0.4rem,0% 0%);
        transform: scaleX(5000%);
    }
 
    30% {
        clip-path: polygon(0% 0%,0% 0.4rem,100% 0.4rem,100% 0%);
        transform: scaleX(5000%);
        opacity: 1;
    }
 
    60% {
        clip-path: polygon(0% 0%,0% 100%,100% 100%,100% 0%);
        transform: scaleX(5000%);
        opacity: 1;
    }
 
    100% {
        transform: scaleX(100%);
        opacity: 1;
    }
}
 
@keyframes border-spin-mo {
    0% {
        clip-path: polygon(50% 0%,50% 100%,50% 100%,50% 0%);
    }
 
    70% {
        clip-path: polygon(50% 0%,50% 100%,50% 100%,50% 0%);
        opacity: 1;
    }
 
    100% {
        clip-path: polygon(0% 0%,0% 100%,100% 100%,100% 0%);
        opacity: 1;
    }
}
 
@keyframes rightin {
    0% {
        transform: translateX(-1rem);
        opacity: 0;
    }
 
    80% {
        transform: translateX(-1rem);
        opacity: 0;
    }
 
    100% {
        transform: translateX(0);
        opacity: 1;
    }
}
 
@keyframes rightin2 {
    0% {
        transform: translateY(1rem);
        opacity: 0;
    }
 
    80% {
        transform: translateY(1rem);
        opacity: 0;
    }
 
    100% {
        transform: translateY(0);
        opacity: 1;
    }
}
 
@keyframes upin0 {
    0% {
        transform: translateY(1rem);
        opacity: 0;
    }
 
    100% {
        transform: translateY(0);
        opacity: 1;
    }
}
 
@keyframes right0 {
    0% {
        transform: translateX(-1rem);
        opacity: 0;
    }
 
    100% {
        transform: translateX(0);
        opacity: 1;
    }
}
 
@keyframes fadeIn-nu-sd {
    0% {
        clip-path: polygon(0% 0%,0% 0%, -10% 100%,0% 100%);
        transform: rotateY(180deg);
    }
 
    100% {
        clip-path: polygon(0% 0%,200% 0%, 100% 100%,0% 100%);
        transform: rotateX(0deg);
        opacity: 1;
    }
}
 
@keyframes upin1 {
    0% {
        transform: translateY(1rem);
        opacity: 0;
    }
 
    50% {
        transform: translateY(1rem);
        opacity: 0;
    }
 
    100% {
        transform: translateY(0);
        opacity: 1;
    }
}
 
@keyframes upin2 {
    0% {
        transform: translateY(1rem);
        opacity: 0;
    }
 
    50% {
        transform: translateY(1rem);
        opacity: 0;
    }
 
    75% {
        transform: translateY(0);
        opacity: 1;
    }
 
    100% {
        transform: translateY(0);
        opacity: 1;
    }
}
 
@keyframes fadeIn-nu-exit {
    0% {
        clip-path: polygon(0% 0%,0.4rem 0%,0.4rem 0%,0% 0%);
    }
 
    25% {
        clip-path: polygon(0% 0%,0.4rem 0%,0.4rem 100%,0% 100%);
    }
 
    100% {
        clip-path: polygon(0% 0%,100% 0%,100% 100%,0% 100%);
    }
}
 
@keyframes fadeIn-nu-env {
    0% {
        clip-path: polygon(0% 0%,0.4rem 0%,0.4rem 0%,0% 0%);
    }
 
    25% {
        clip-path: polygon(0% 0%,0.4rem 0%,0.4rem 100%,0% 100%);
    }
 
    100% {
        clip-path: polygon(0% 0%,100% 0%,100% 100%,0% 100%);
    }
}
 
@keyframes fadeIn-nu-enti {
    0% {
        clip-path: polygon(0% 0%,0.4rem 0%,0.4rem 0%,0% 0%);
    }
 
    25% {
        clip-path: polygon(0% 0%,0.4rem 0%,0.4rem 100%,0% 100%);
    }
 
    100% {
        clip-path: polygon(0% 0%,100% 0%,100% 100%,0% 100%);
    }
}
 
@keyframes no-opacity {
    0% {
        opacity: 0;
    }
    25% {
        opacity: 0;
    }
    100% {
        opacity: 1;
    }
}
 
@keyframes cecs-stripe {
    to {
        opacity: 1;
        transform: skew(45deg);
    }
}
 
@keyframes cecs-class-wrapper {
    to {
        background-color: rgb(var(--cecs-dark));
    }
}
 
@keyframes cecs-class-clip {
    0% {
        clip-path: polygon(0% 0%,0.5em 0%, 0.5em 0%,0% 0%);
    }
 
    25% {
        clip-path: polygon(0% 0%,0.5em 0%, 0.5em 100%,0% 100%);
    }
 
    100% {
        clip-path: polygon(0% 0%,100% 0%, 100% 100%,0% 100%);
    }
}
 
@keyframes cecs-border-top {
    0% {
        border-top: rgb(var(--cecs-accent)) solid 0em;
    }
 
    100% {
        border-top: rgb(var(--cecs-accent)) solid 0.2em;
    }
}
 
@keyframes fadeIn-cecs-wrapper {
    0% {
        clip-path: polygon(0% 0%,100% 0%, 100% -10%,0% 0%);
    }
 
    100% {
        clip-path: polygon(0% 0%,100% 0%, 100% 100%,0% 100%);
    }
}
 
@keyframes cocs-safety {
    to {
        height: 4.5em;
    }
}
 
@keyframes cocs-border-top {
    0% {
        border-top: rgb(var(--cocs-accent)) solid 0em;
    }
 
    100% {
        border-top: rgb(var(--cocs-accent)) solid 0.2em;
    }
}
 
@keyframes cocs-border-bottom {
    0% {
        border-bottom: rgba(var(--cocs-accent),0) solid 0em;
    }
 
    100% {
        border-bottom: rgba(var(--cocs-accent),1) solid 0.2em;
    }
}
 
@keyframes fadeIn-cecs-wrapper {
    0% {
        clip-path: polygon(0% 0%,100% 0%, 100% -10%,0% 0%);
    }
 
    100% {
        clip-path: polygon(0% 0%,100% 0%, 100% 100%,0% 100%);
    }
}
 
@keyframes paper-in{
from{transform: skew(10deg, 10deg) scale(0.8);opacity: 0;}
to{    transform: skew(0deg, 0deg) scale(1);opacity: 1;}
}
 
@keyframes paper-in-object{
from{transform: skew(0);opacity: 0;}
to{    transform: skew(45deg);opacity: 1;}
}
 
@keyframes ebcs-iets{
0%{
box-shadow: inset var(--box-shadow, 0 0.05rem 0.15rem rgba(0, 0, 0, 0));
background-color: rgb(var(--blockquote-bg-color, 0, 10, 8, 0));
opacity: 0;
}
1%{
opacity: 1;
}
100%{
box-shadow: inset var(--box-shadow, 0 0.05rem 0.15rem rgba(0, 0, 0, 0.4));
background-color: rgb(var(--blockquote-bg-color, 0, 10, 8, 0.03));
opacity: 1;
}
}
 
@keyframes dark-bd{
     to{
         border-bottom: solid 0.1em rgba(255,255,255,1);
     }
}
 
@keyframes standard-bd{
     to{
         border-bottom: solid 0.1em rgba(51,51,51,1);
     }
}
 
/*======最基本的SD=====*/
/*简写了下，另外我在思考为啥看起来一样的代码又出错了*/
 
/*
{$sd}/
 
.sd-container{animation-fill-mode: forwards;}
 
.sd-container .top-box,
.top-box-x,.top-box-e{
  animation: fadeIn-sd calc(2s / var(--ani-speed) );
}
 
.sd-container .top-text,
.top-text-x,.top-text-e{
  animation: rightin calc(2.25s / var(--ani-speed) );
}
 
.sd-container .bottom-text,
.bottom-text-x,.bottom-text-e{
  animation: rightin calc(2.5s / var(--ani-speed) );
}
 
.sd-container .diamondy,
.diamondy-x,.diamondy-e{
  animation: upin1 calc(3s / var(--ani-speed) );
}
.sd-container .diamond-image,
.diamond-image-x,.diamond-image-e
{
  animation: upin2 calc(4s / var(--ani-speed) );
}
 
.sd-container .bottom-box ul li {
    opacity: 0;
    animation: staggerUp calc(0.6s / var(--ani-speed)) ease-out forwards;
}
 
.sd-container .bottom-box ul li:nth-child(1) {
    animation-delay: calc(2.2s / var(--ani-speed));
}
 
.sd-container .bottom-box ul li:nth-child(2) {
    animation-delay: calc(2.4s / var(--ani-speed));
}
 
.sd-container .bottom-box ul li:nth-child(3) {
    animation-delay: calc(2.6s / var(--ani-speed));
}
 
.sd-container .diamond-pattern {
  animation: sd-diamond-pattern calc(0.5s / var(--ani-speed)) forwards;
  animation-delay: calc(2.5s / var(--ani-speed));
}
 
.sd-container .header-diamond .bg{
  opacity: 0;
  animation: opacity-1 calc(0.5s / var(--ani-speed)) forwards;
  animation-delay: calc(2.5s / var(--ani-speed));
}
 
/{$sd}
*/
 
/*RRAS，我寻思是*/
 
/*
{$rras}/
 
.rras--level span{
    opacity: 0;
    opacity: 0;
animation: letter-spacing-opacity calc(1s / var(--ani-speed) ) forwards , rightin0 calc(1s / var(--ani-speed) ) forwards , blur5 calc(1s / var(--ani-speed) ) forwards ;
}
 
.rras--bg {
clip-path: polygon(0% 0%,0% 0%, -10% 100%,0% 100%);
  animation: fadeIn-sd calc(1s / var(--ani-speed) ) forwards;
}
 
.rras--text{
opacity: 0;
animation: fadeInScale calc(0.7s / var(--ani-speed) ) calc(1.7s / var(--ani-speed) ) forwards;
}
 
.rras--space{
transform:rotateX(90deg);
  animation: rras-space calc(0.7s / var(--ani-speed) ) calc(1s / var(--ani-speed) ) forwards;
}
 
.rras .rras--info{
opacity: 0;
animation: fadeInScale calc(0.7s / var(--ani-speed) ) calc(1s / var(--ani-speed) ) forwards , blur5 calc(0.7s / var(--ani-speed) ) calc(1s / var(--ani-speed) ) forwards;
}
 
/{$rras}
*/
 
/*FDSD*/
 
/*
{$fdsd}/
 
.title-bar{
  animation: fadeIn-sd calc(1s / var(--ani-speed) );
}
 
.sd-image{
  animation: upin1 calc(2s / var(--ani-speed) );
}
 
.list-item{
opacity:0;
}
 
.list-item:nth-child(1) {
  animation: rightin0 calc(0.5s / var(--ani-speed) ) calc(1.5s / var(--ani-speed)) forwards;
}
 
.list-item:nth-child(2)  {
  animation: rightin0 calc(0.5s / var(--ani-speed) ) calc(1.7s / var(--ani-speed)) forwards;
}
 
.list-item:nth-child(3)  {
  animation: rightin0 calc(0.5s / var(--ani-speed) ) calc(1.9s / var(--ani-speed)) forwards;
}
 
/{$fdsd}
*/
 
/*====================岛屿分级系统================*/
/*
{$ic}/
 
.ic_wrap-box .ic_top-left-box {
    animation: right0  calc(1s / var(--ani-speed) );
    animation-fill-mode: forwards;
}
 
.ic_wrap-box .ic_top-left-box .ic_text {
    animation: right0  calc(1.1s / var(--ani-speed) );
    animation-fill-mode: forwards;
}
 
.ic_wrap-box .ic_h-icon {
    animation: ic-right  calc(1s / var(--ani-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.3s / var(--ani-speed));
    opacity: 0;
}
 
.ic_wrap-box .ic_r-icon {
    animation: ic-right  calc(1s / var(--ani-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.4s / var(--ani-speed));
    opacity: 0;
}
 
.ic_wrap-box .ic_s-icon {
    animation: ic-right  calc(1s / var(--ani-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.5s / var(--ani-speed));
    opacity: 0;
}
 
.ic_wrap-box .ic_sd-box {
    clip-path: polygon(0% 0%,0.4rem 0%,0.4rem 0%,0% 0%);
    animation: fadeIn-nu-exit calc(1s / var(--ani-speed) );
    animation-fill-mode: forwards;
}
 
.ic_wrap-box .ic_infobox-1,.ic_wrap-box .ic_infobox-2 {
    clip-path: polygon(0% 0%,0.4rem 0%,0.4rem 0%,0% 0%);
    animation: fadeIn-nu-env calc(1s / var(--ani-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.1s / var(--ani-speed));
}
 
.ic_wrap-box .ic_infobox-3 {
    clip-path: polygon(0% 0%,0.4rem 0%,0.4rem 0%,0% 0%);
    animation: fadeIn-nu-enti calc(1s / var(--ani-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.2s / var(--ani-speed));
}
 
.ic_wrap-box .ic_sd-box .ic_text {
    animation: rightin2 calc(1s / var(--ani-speed) );
    animation-fill-mode: forwards;
}
 
.ic_wrap-box .ic_sd-box .ic_sd {
    animation: rightin2 calc(1.1s / var(--ani-speed) );
    animation-fill-mode: forwards;
}
 
.ic_wrap-box .ic_infobox-1 .ic_text {
    animation: rightin calc(1s / var(--ani-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.1s / var(--ani-speed));
}
 
.ic_wrap-box .ic_infobox-1 .ic_info {
    animation: rightin calc(1.1s / var(--ani-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.1s / var(--ani-speed));
}
 
.ic_wrap-box .ic_infobox-2 .ic_text {
    animation: rightin calc(1s / var(--ani-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.2s / var(--ani-speed));
}
 
.ic_wrap-box .ic_infobox-2 .ic_info {
    animation: rightin calc(1.1s / var(--ani-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.2s / var(--ani-speed));
}
 
.ic_wrap-box .ic_infobox-3 .ic_text {
    animation: rightin calc(1s / var(--ani-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.3s / var(--ani-speed));
}
 
.ic_wrap-box .ic_infobox-3 .ic_info {
    animation: rightin calc(1.1s / var(--ani-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.3s / var(--ani-speed));
}
 
.ic_wrap-box .ic_add-h {
    clip-path: polygon(50% 0%,50% 0%,50% 100%,50% 100%);
    animation: ic-add-h  calc(1s / var(--ani-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.3s / var(--ani-speed));
}
 
.ic_wrap-box .ic_add-r {
    clip-path: polygon(50% 0%,50% 0%,50% 100%,50% 100%);
    animation: ic-add-r  calc(1s / var(--ani-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.4s / var(--ani-speed));
}
 
.ic_wrap-box .ic_add-s {
    clip-path: polygon(50% 0%,50% 0%,50% 100%,50% 100%);
    animation: ic-add-s  calc(1s / var(--ani-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.5s / var(--ani-speed));
}
 
.ic_wrap-box .ic_add-h .ic_text {
    animation: rightin2 calc(1s / var(--ani-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.5s / var(--ani-speed));
}
 
.ic_wrap-box .ic_add-h .ic_info {
    animation: rightin calc(1.1s / var(--ani-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.5s / var(--ani-speed));
}
 
.ic_wrap-box .ic_add-r .ic_text {
    animation: rightin2 calc(1s / var(--ani-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.6s / var(--ani-speed));
}
 
.ic_wrap-box .ic_add-r .ic_info {
    animation: rightin calc(1.1s / var(--ani-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.6s / var(--ani-speed));
}
 
.ic_wrap-box .ic_add-s .ic_text {
    animation: rightin2 calc(1s / var(--ani-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.7s / var(--ani-speed));
}
 
.ic_wrap-box .ic_add-s .ic_info {
    animation: rightin calc(1.1s / var(--ani-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.7s / var(--ani-speed));
}
 
.ic_addbox .ic_text,.ic_addbox .ic_info{
        opacity: 0;
}
 
.ic_top-box {
    animation: ic-border  calc(1s / var(--ani-speed) );
    animation-fill-mode: forwards;
}
 
.ic_wrap-box {
    border-bottom: rgba(var(--ic_border-color), 0) solid var(--ic_interspace);
    animation: ic-border  calc(1s / var(--ani-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.7s / var(--ani-speed));
}
 
/{$ic}
*/
 
/*====================新版层级================*/
 
/*
*/
 
.sdnumber p {
    opacity: 0;
    animation: right0 calc(2s / var(--ani-speed));
    animation-fill-mode: forwards;
}
 
.sdnumber p {
    opacity: 0;
    animation: right0 calc(1s / var(--ani-speed) );
    animation-fill-mode: forwards;
}
 
.sdnumber strong {
    opacity: 0;
    animation: right0 calc(1.2s / var(--ani-speed) );
    animation-fill-mode: forwards;
}
 
.sdnumber .lines {
    opacity: 0;
    animation: fadeIn-nu-sd calc(1s / var(--ani-speed) );
    animation-fill-mode: forwards;
}
 
.sd-container .exit {
    animation: fadeIn-nu-exit calc(1s / var(--ani-speed) );
    animation-fill-mode: forwards;
}
 
.sd-container .environment {
    animation: fadeIn-nu-env calc(1s / var(--ani-speed) );
    animation-fill-mode: forwards;
}
 
.sd-container .entity {
    animation: fadeIn-nu-enti calc(1s / var(--ani-speed) );
    animation-fill-mode: forwards;
}
 
.sd-container .syntax .sd{
    animation: rightin calc(1s / var(--ani-speed) );
    animation-fill-mode: forwards;
}
 
.sd-container .syntax p strong {
    animation: rightin calc(1.05s / var(--ani-speed) );
    animation-fill-mode: forwards;
}
 
.class.customclass strong::after{
    animation: no-opacity calc(1.05s / var(--ani-speed) );
    animation-fill-mode: forwards;
}
 
.sd-container .exit strong {
    animation: rightin2 calc(1s / var(--ani-speed) );
    animation-fill-mode: forwards;
}
 
.sd-container .exit p span:nth-child(3) {
    animation: rightin2 calc(1.1s / var(--ani-speed) );
    animation-fill-mode: forwards;
}
 
.sd-container .environment strong {
    animation: rightin2 calc(1s / var(--ani-speed) );
    animation-fill-mode: forwards;
}
 
.sd-container .environment p span:nth-child(3) {
    animation: rightin2 calc(1.1s / var(--ani-speed) );
    animation-fill-mode: forwards;
}
 
.sd-container .entity strong {
    animation: rightin2 calc(1s / var(--ani-speed) );
    animation-fill-mode: forwards;
}
 
.sd-container .entity p span:nth-child(3) {
    animation: rightin2 calc(1.1s / var(--ani-speed) );
    animation-fill-mode: forwards;
}
 
@media only screen and (min-width: 1071px) {
 
    .sd-container .border {
        animation: border-spin-pc calc(1s / var(--ani-speed) );
        transform-origin: right;
    }
 
.sdnumber p {
    animation-delay: calc((2s / var(--ani-speed))*0.6);
}
 
.sdnumber p {
    animation-delay: calc((1s / var(--ani-speed))*0.6);
}
 
.sdnumber strong {
    animation-delay: calc((1.2s / var(--ani-speed))*0.6);
}
 
.sdnumber .lines {
    animation-delay: calc((1s / var(--ani-speed))*0.6);
}
 
}
 
@media only screen and (min-width: 620px) and (max-width: 1070px) {
    .sd-container .border {
        animation: border-spin-mo calc(1s / var(--ani-speed) );
        animation-fill-mode: forwards;
    }
}
 
@media only screen and (max-width: 620px) {
 
    .sd-container .border {
        animation: border-spin-mo calc(1s / var(--ani-speed) );
        animation-fill-mode: forwards;
    }
 
    .sd-container .exit {
        clip-path: polygon(0% 0%,0.4rem 0%,0.4rem 0%,0% 0%);
        animation-delay: 0;
        animation-fill-mode: forwards;
    }
 
    .sd-container .environment {
        clip-path: polygon(0% 0%,0.4rem 0%,0.4rem 0%,0% 0%);
        animation-delay: calc(0.5s / var(--ani-speed) );
        animation-fill-mode: forwards;
    }
 
    .sd-container .entity {
        clip-path: polygon(0% 0%,0.4rem 0%,0.4rem 0%,0% 0%);
        animation-delay: calc(1s / var(--ani-speed) );
        animation-fill-mode: forwards;
    }
}
 
/*
*/
 
/*===================标签式分级系统================*/
/* 难做的钥匙啊 */
 
/*
{$bqsd}/
 
.block-right{
     opacity: 0;
     transform: translateX(1rem);
     animation: leftin calc(1s / var(--ani-speed)) forwards;
}
 
.block-right .diamond-image{
     clip-path: polygon(0% 0%,0% 0%, -10% 100%,0% 100%);
     animation: fadeIn-sd calc(1s / var(--ani-speed)) forwards;
     animation-delay: calc(1s / var(--ani-speed));
}
 
.class-inner a{
     animation: letter-spacing-opacity calc(1s / var(--ani-speed)) forwards,blur5 calc(1s / var(--ani-speed)) forwards;
     filter: blur(5px);
     letter-spacing: 10px;
     opacity: 0;
}
 
.level-wrapper:nth-of-type(3){
    opacity: 0;
    animation: rightin calc(0.5s / var(--ani-speed)) ease-out forwards;
    animation-delay: calc(1s / var(--ani-speed));
}
 
.level-wrapper:nth-of-type(4){
    opacity: 0;
    animation: rightin calc(0.5s / var(--ani-speed)) ease-out forwards;
    animation-delay: calc(1.25s / var(--ani-speed))!important;
}
 
.level-wrapper:nth-of-type(5){
    opacity: 0;
    animation: rightin calc(0.5s / var(--ani-speed)) ease-out forwards;
    animation-delay: calc(1.5s / var(--ani-speed))!important;
}
 
.properties{
        transform: scale(0.8) translateY(1.2rem);
        opacity: 0;
        filter: blur(5px);
        animation: staggerUp calc(3s / var(--ani-speed)) forwards calc(2s / var(--ani-speed)),blur5 calc(2s / var(--ani-speed)) forwards calc(2s / var(--ani-speed)),fadeInScale calc(1s / var(--ani-speed)) forwards calc(2s / var(--ani-speed));
}
 
/{$bqsd}
*/
 
/*PLS现象组件*/
 
/*
{$pls}/
 
.pls .pls-title em {
    opacity: 0;
}
 
.pls .pls-title .pls-subtitle {
    clip-path: polygon(0% 0%,0% 0%, -10% 100%,0% 100%);
    animation: fadeIn-sd calc(1s / var(--ani-speed)) forwards;
}
 
.pls .pls-title em {
    opacity: 0;
    animation: letter-spacing-opacity calc(1s / var(--ani-speed)) forwards;
    animation-delay: calc(1s / var(--ani-speed));
}
 
.pls .pls-list li {
    opacity: 0;
    animation: staggerUp calc(0.6s / var(--ani-speed)) ease-out forwards;
}
 
.pls .pls-list li:nth-child(1) {
    animation-delay: calc(1.2s / var(--ani-speed));
}
 
.pls .pls-list li:nth-child(2) {
    animation-delay: calc(1.4s / var(--ani-speed));
}
 
.pls .pls-list li:nth-child(3) {
    animation-delay: calc(1.6s / var(--ani-speed));
}
 
.pls-icon {
    opacity: 0;
    animation: fadeInScale calc(0.8s / var(--ani-speed)) forwards;
    animation-delay: calc(1.8s / var(--ani-speed));
    position: relative;
}
 
.pls-icon:before {
    animation: blur5 calc(0.8s / var(--ani-speed)) forwards;
    animation-delay: calc(1.8s / var(--ani-speed));
    position: relative;
}
 
.pls-icon-title {
    opacity: 0;
    animation: staggerUp calc(0.6s / var(--ani-speed)) forwards;
    animation-delay: calc(2.2s / var(--ani-speed));
    display: inline-block;
}
 
.pls-side p span {
    opacity: 0;
    display: inline-block;
    animation: staggerUp calc(0.5s / var(--ani-speed)) forwards;
    animation-delay: calc(2.3s / var(--ani-speed));
}
 
@media screen and (max-width: 768px) {
 
.pls .pls-title em {
    animation-delay: calc(0s / var(--ani-speed));
}
 
.pls .pls-list li:nth-child(1) {
    animation-delay: calc(0.5s / var(--ani-speed));
}
 
.pls .pls-list li:nth-child(2) {
    animation-delay: calc(0.7s / var(--ani-speed));
}
 
.pls .pls-list li:nth-child(3) {
    animation-delay: calc(0.9s / var(--ani-speed));
}
 
.pls-icon {
    animation-delay: calc(1.2s / var(--ani-speed));
}
 
.pls-icon:before {
    animation-delay: calc(1.2s / var(--ani-speed));
}
 
.pls-icon-title {
    animation-delay: calc(1.8s / var(--ani-speed));
}
 
.pls-side p span {
    animation-delay: calc(1.9s / var(--ani-speed));
}
 
}
 
/{$pls}
*/
 
/*统合实体分类系统*/
 
/*
{$cecs}/
 
.class-wrapper {
    clip-path: polygon(0% 0%,0.5em 0%, 0.5em 0%,0% 0%);
    background-color: rgb(var(--cecs-light));
    animation: cecs-class-wrapper calc(1s / var(--ani-speed)) calc(4s / var(--ani-speed)) forwards , cecs-class-clip calc(1.1s / var(--ani-speed)) calc(2.9s / var(--ani-speed)) forwards;
}
 
.class-stripe {
    opacity: 0;
    transform: skew(0deg);
    animation: cecs-stripe calc(0.5s / var(--ani-speed)) calc(4s / var(--ani-speed)) forwards;
}
 
.class-label {
    z-index: 1;
    opacity: 0;
    animation: rightin0 calc(0.5s / var(--ani-speed)) calc(3.5s / var(--ani-speed)) forwards;
}
 
.class-inner {
    opacity: 0;
    animation: rightin0 calc(0.5s / var(--ani-speed)) calc(3.7s / var(--ani-speed)) forwards;
}
 
.properties-label {
    opacity: 0;
    animation: upin0 calc(0.5s / var(--ani-speed)) calc(4.2s / var(--ani-speed)) forwards;
}
 
.properties {
    animation: blur5 calc(0.5s / var(--ani-speed)) calc(4.2s / var(--ani-speed)) forwards , fadeInScale calc(0.5s / var(--ani-speed)) calc(4.2s / var(--ani-speed)) forwards;
    opacity: 0;
}
 
.wrapper .label-wrapper .hexa-outerline .hexa-midline {
    opacity: 0;
    animation: fadeInScale calc(0.5s / var(--ani-speed)) forwards;
}
 
.wrapper .label-wrapper .hexa-outerline .hexa-innerline {
    opacity: 0;
    animation: fadeInScale calc(0.5s / var(--ani-speed)) forwards;
    animation-delay: calc(0.2s / var(--ani-speed));
}
 
.wrapper div .label-wrapper .label strong {
    opacity: 0;
    animation: rightin0 calc(1s / var(--ani-speed) ) forwards;
    animation-delay: calc(0.2s / var(--ani-speed));
}
 
.cecs-wrapper {
    border-top: rgb(var(--cecs-accent)) solid 0em;
    animation: cecs-border-top calc(1s / var(--ani-speed) ) forwards;
    animation-delay: calc(0.2s / var(--ani-speed));
}
 
.cecs-wrapper .base,.cecs-wrapper .base:after {
    opacity: 0;
    animation: opacity-1 calc(1s / var(--ani-speed) ) forwards;
    animation-delay: calc(1.2s / var(--ani-speed));
}
 
.cecs-wrapper .last-stripe {
    opacity: 0;
    animation: rightin0 calc(1s / var(--ani-speed) ) forwards;
    animation-delay: calc(1.2s / var(--ani-speed));
}
 
.cecs-wrapper .text-box {
    opacity: 0;
    animation: fadeInScale calc(0.8s / var(--ani-speed)) forwards;
    animation-delay: calc(1.8s / var(--ani-speed));
}
 
.cecs-wrapper .iets:before {
    clip-path: polygon(0% 0%,100% 0%, 100% -10%,0% 0%);
    animation: fadeIn-cecs-wrapper calc(1s / var(--ani-speed) ) forwards;
    animation-delay: calc(1.8s / var(--ani-speed));
}
 
.iets-wrapper strong {
    opacity: 0;
    animation: rightin0 calc(0.5s / var(--ani-speed) ) forwards;
    animation-delay: calc(2.8s / var(--ani-speed));
}
 
.iets-wrapper .iets-val strong {
    opacity: 0;
    animation: rightin0 calc(0.5s / var(--ani-speed) ) forwards , blur5  calc(0.4s / var(--ani-speed) ) forwards;
    animation-delay: calc(2.9s / var(--ani-speed));
}
 
/{$cecs}
*/
 
/*物品*/
/* 跟HW的实体那个略微改了一下 */
 
/*
{$cocs}/
 
.cocs-wrapper + div {
    clip-path: polygon(0% 0%,0.5em 0%, 0.5em 0%,0% 0%);
    animation: cecs-class-clip calc(1.1s / var(--ani-speed)) calc(2.5s / var(--ani-speed)) forwards;
}
 
.wrapper .label-wrapper .hexa-outerline .hexa-midline {
    opacity: 0;
    animation: fadeInScale calc(0.5s / var(--ani-speed)) forwards;
}
 
.wrapper .label {
    animation: letter-spacing-opacity  calc(0.5s / var(--ani-speed) ) forwards;
    animation-delay: calc(1s / var(--ani-speed));
    opacity: 0;
}
 
.wrapper .label-wrapper .hexa-outerline .hexa-innerline {
    opacity: 0;
    animation: fadeInScale calc(0.5s / var(--ani-speed)) forwards;
    animation-delay: calc(0.2s / var(--ani-speed));
}
 
div[class*=base2] {
    height: 0;
    animation: cocs-safety calc(0.5s / var(--ani-speed)) forwards;
    animation-delay: calc(2.2s / var(--ani-speed));
}
 
div[class*=custom-color] {
    height: 0;
    animation: cocs-safety calc(0.5s / var(--ani-speed)) forwards;
    animation-delay: calc(2.2s / var(--ani-speed));
}
 
.purpose-stripe {
    opacity: 0;
    z-index: 3;
    animation: paper-in-object calc(0.4s / var(--ani-speed)) calc(3.4s / var(--ani-speed)) forwards,blur5 calc(0.5s / var(--ani-speed)) calc(3.2s / var(--ani-speed)) forwards;
}
 
.purpose-label {
    z-index: 2;
    opacity: 0;
    animation: rightin0 calc(0.5s / var(--ani-speed)) calc(3.4s / var(--ani-speed)) forwards;
}
 
.cocs-purpose {
    opacity: 0;
    z-index: 1;
    animation: fadeInScale calc(0.5s / var(--ani-speed)) calc(3s / var(--ani-speed)) forwards,blur5 calc(0.5s / var(--ani-speed)) calc(3s / var(--ani-speed)) forwards;
}
 
.purpose-inner {
    opacity: 0;
    z-index: 2;
    animation: rightin0 calc(0.5s / var(--ani-speed)) calc(3.4s / var(--ani-speed)) forwards;
}
 
.cocs-wrapper {
    border-top: rgba(var(--cocs-accent),0) solid 0em;
    animation: cocs-border-top calc(1s / var(--ani-speed) ) forwards calc(0.2s / var(--ani-speed)), cocs-border-bottom calc(1s / var(--ani-speed)) backwards calc(2.3s / var(--ani-speed));
}
 
.cocs-wrapper .base,
.cocs-wrapper .base:after {
    opacity: 0;
    animation: opacity-1 calc(1s / var(--ani-speed) ) forwards;
    animation-delay: calc(1.2s / var(--ani-speed));
}
 
.cocs-wrapper .last-stripe {
    opacity: 0;
    animation: rightin0 calc(1s / var(--ani-speed) ) forwards;
    animation-delay: calc(1.2s / var(--ani-speed));
}
 
.cocs-wrapper .text-box {
    opacity: 0;
    animation: fadeInScale calc(0.8s / var(--ani-speed)) forwards;
    animation-delay: calc(1.8s / var(--ani-speed));
}
 
.status {
    animation: blur5 calc(0.5s / var(--ani-speed)) calc(4.4s / var(--ani-speed)) forwards , fadeInScale calc(0.5s / var(--ani-speed)) calc(4.4s / var(--ani-speed)) forwards;
    opacity: 0;
}
 
.status-label {
    opacity: 0;
    animation: upin0 calc(0.5s / var(--ani-speed)) calc(4.2s / var(--ani-speed)) forwards;
}
 
/{$cocs}
*/
 
/*实体生物学分类系统*/
 
/*
{$ebcs}/
 
.ebcs{
transform: skew(10deg, 10deg);
opacity: 0;
animation: paper-in calc(0.8s / var(--ani-speed)) calc(0s / var(--ani-speed)) forwards;
}
 
.ebcs-title h2{
transform:translateX(-1rem);
    opacity:0;
animation: rightin0 calc(0.5s / var(--ani-speed)) calc(0.85s / var(--ani-speed)) forwards;
 
}
 
.ebcs-number p span{
        opacity: 0;
animation: leftin0 calc(0.5s / var(--ani-speed)) calc(0.87s / var(--ani-speed)) forwards;
}
 
.ebcs-number p strong{
letter-spacing: 10px;
        opacity: 0;
animation: letter-spacing-opacity calc(0.5s / var(--ani-speed)) calc(0.9s / var(--ani-speed)) forwards;
}
 
.ebcs-iets{
animation: ebcs-iets calc(1.5s / var(--ani-speed)) calc(1s / var(--ani-speed)) forwards;
box-shadow: inset var(--box-shadow, 0 0.05rem 0.15rem rgba(0, 0, 0, 0));
background-color: rgb(var(--blockquote-bg-color, 0, 10, 8, 0));
opacity: 0;
}
 
.ebcs-iets strong{
animation: blur5 calc(1.5s / var(--ani-speed)) calc(1s / var(--ani-speed)) forwards , opacity-1 calc(1.5s / var(--ani-speed)) calc(2s / var(--ani-speed)) forwards;
opacity: 0;
}
 
.ebcs-meta span:nth-child(1){
opacity: 0;
animation: rightin0 calc(0.5s / var(--ani-speed)) calc(2s / var(--ani-speed)) forwards;
}
 
.ebcs-meta span:nth-child(3){
opacity: 0;
animation: rightin0 calc(0.5s / var(--ani-speed)) calc(2.25s / var(--ani-speed)) forwards;
}
 
.ebcs-meta span:nth-child(5){
opacity: 0;
animation: rightin0 calc(0.5s / var(--ani-speed)) calc(2.5s / var(--ani-speed)) forwards;
}
 
.ebcs-des{
animation: fadeIn-sd calc(1s / var(--ani-speed)) calc(2.5s / var(--ani-speed)) forwards;
clip-path: polygon(0% 0%,0% 0%, -10% 100%,0% 100%);
}
 
.ebcs-img{
opacity: 0;
animation: blur5 calc(1s / var(--ani-speed)) calc(2.5s / var(--ani-speed)) forwards , fadeInScale  calc(1s / var(--ani-speed)) calc(2.5s / var(--ani-speed)) forwards;
}
 
/{$ebcs}
*/
 
/* 人物 */
/*
{$poi}/
.footerbox{
    animation: fadeIn-sd calc(1s / var(--ani-speed)) forwards;
}
 
.footerbox > h4{
    animation: fadeInScale calc(1s / var(--ani-speed)) forwards calc(1s / var(--ani-speed));
    opacity: 0;
}
 
.footerbox > h4{
    animation: fadeInScale calc(0.5s / var(--ani-speed)) forwards calc(1s / var(--ani-speed));
    opacity: 0;
}
 
.footerbox img{
    animation: blur5 calc(1s / var(--ani-speed)) forwards calc(1.5s / var(--ani-speed)), fadeInScale calc(1s / var(--ani-speed)) forwards calc(1.5s / var(--ani-speed));
    opacity: 0;
}
 
.footerflavor{
    animation: upin0 calc(0.5s / var(--ani-speed)) forwards calc(1s / var(--ani-speed));
    opacity: 0;
}
 
.footerflavor > *:not(img,hr):nth-child(1){
    animation:staggerUp calc(1s / var(--ani-speed)) forwards calc(1.8s / var(--ani-speed));
    opacity: 0;
}
 
.footerflavor > *:not(img,hr):nth-child(2){
    animation:staggerUp calc(1s / var(--ani-speed)) forwards calc(2.2s / var(--ani-speed));
    opacity: 0;
}
 
.footerflavor > *:not(img,hr):nth-child(3){
    animation:staggerUp calc(1s / var(--ani-speed)) forwards calc(2.6s / var(--ani-speed));
    opacity: 0;
}
 
.footerflavor > *:not(img):nth-child(4){
    animation:staggerUp calc(1s / var(--ani-speed)) forwards calc(3s / var(--ani-speed));
    opacity: 0;
}
 
.footerflavor > *:not(img):nth-child(5){
    animation:staggerUp calc(1s / var(--ani-speed)) forwards calc(3.4s / var(--ani-speed));
    opacity: 0;
}
 
.footerflavor > *:not(img):nth-child(6){
    animation:staggerUp calc(1s / var(--ani-speed)) forwards calc(3.8s / var(--ani-speed));
    opacity: 0;
}
 
.footerflavor > *:not(img):nth-child(7){
    animation:staggerUp calc(1s / var(--ani-speed)) forwards calc(4.2s / var(--ani-speed));
    opacity: 0;
}
 
.footerflavor > *:not(img):nth-child(8){
    animation:staggerUp calc(1s / var(--ani-speed)) forwards calc(4.6s / var(--ani-speed));
    opacity: 0;
}
 
.footerflavor > *:not(img):nth-child(9){
    animation:staggerUp calc(1s / var(--ani-speed)) forwards calc(5s / var(--ani-speed));
    opacity: 0;
}
 
.footerflavor > *:not(img):nth-child(10){
    animation:staggerUp calc(1s / var(--ani-speed)) forwards calc(5.4s / var(--ani-speed));
    opacity: 0;
}
 
.footerflavor > *:not(img):nth-child(n + 11){
    animation:staggerUp calc(1s / var(--ani-speed)) forwards calc(5.8s / var(--ani-speed));
    opacity: 0;
}
 
/{$poi}
*/
 
/* upes */
 
/*
{$upes}/
 
.phenomenon-content{
     animation: fadeIn-sd calc(1s / var(--ani-speed)) forwards;
}
 
.colmod-link-top .foldable-list-container a{
     animation: leftin calc(1.5s / var(--ani-speed)) forwards calc(-0.5s / var(--ani-speed));   
    opacity: 0;
}
 
div.colmod-content-anti,
div.colmod-content{
    animation: fadeInScale calc(1.5s / var(--ani-speed)) backwards, blur5 calc(1.3s / var(--ani-speed)) backwards!important;
}
 
.standard-border {
    border-bottom: solid 0.1em rgba(51, 51, 51, 0);
}
 
.dark-border {
    border-bottom: solid 0.1em rgba(255,255,255,0);
}
 
.dark-border:nth-of-type(1){
    animation: dark-bd calc(0.5s / var(--ani-speed)) forwards calc(1.25s / var(--ani-speed));
}
 
.standard-border:nth-of-type(1){
    animation: standard-bd calc(0.5s / var(--ani-speed)) forwards calc(1.25s / var(--ani-speed));
}
 
.phenomenon-content div[class*=level] > *{
     opacity: 0;
    animation: letter-spacing-opacity calc(0.5s / var(--ani-speed)) forwards calc(1.5s / var(--ani-speed));
}
 
.dark-border:nth-of-type(2){
    animation: dark-bd calc(0.5s / var(--ani-speed)) forwards calc(1.75s / var(--ani-speed));
}
 
.standard-border:nth-of-type(2){
    animation: standard-bd calc(0.5s / var(--ani-speed)) forwards calc(1.75s / var(--ani-speed));
}
/{$upes}
*/
```

rating: +31[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

LEVEL  
**10**

SURVIVAL DIFFICULTY  
**CLASS 1**

**Exit: 2/5**  
Somewhat Difficult to Exit

**Environment: 2/5**  
Some Environmental Risk

**Entities: 0/5**  
No Hostile Entities

![Missing alt text.](http://backrooms-wiki.wikidot.com/local--files/desolation-level-10/day2.jpg)

The fields during midday.

**The Fields**, designated by [the M.E.G.](https://backrooms-wiki.wikidot.com/desolation-the-m-e-g) as **Level 10**, are an endless series of fields flanking a long country road on either side. The level is typically bright and sunny in the mornings, with conditions optimal for travel. As the day progresses, a layer of mist rolls over the landscape, making navigating difficult.

## Description

Level 10 closely resembles the world back home, with its day-night cycle, shifting temperatures, and occasional gusts of wind sweeping over the wheat fields. It is only natural that many wanderers, especially those new to the affair, would tend to veer off-road in search of civilization. However, this is a highly dangerous course of action. Due to the level's mist cycles during the latter parts of the day, the view back to the road could be obscured within seconds. Solo wanderers lost in the fog are known to simply vanish, so you should remain within eyesight of another wanderer **at all costs**.

> *At first, it was like waking up from an awful dream. I had Ari's hand in mine as I took gulps and gulps of fresh air, testing my palm perpendicular to the sky just to feel the cool wind rushing through my fingers. I couldn't believe it. We had made it out.*

There have been reports of a vast array of structures found situated throughout the main street and the surrounding fields, including but not limited to, stocked lemonade stands, wind turbines devoid of nacelles, bathroom sinks without any of their associated inner fixtures, and even still-playing box televisions left sitting in the center of the road. At random intervals, you may notice the faint cries of voices or the screeching of vehicles in the distance. Following the efforts of various exploration bands, it has been concluded that these sounds are wholly detached from any source.

> *We went off into the green pastures, and I held my breath, hoping beyond hope that at any moment we would see something. Something stiff and inorganic emerging from beneath the horizon – some gas station, or bus stop, or even a single traffic sign by the road, just anything to confirm my prayers that this was not just another stop in our sequence of nightmares. I both longed for and dreaded that moment as Ari skipped happily behind me.*

Occasionally, it is possible to make successful telephone calls within Level 10, but they tend to be susceptible to static interference. This results in the connection quickly devolving into nothing more than white noise, regardless of the wanderer's efforts. Many wanderers appear to be under the misconception that the wheat fields provide improved reception over the road, but this has been thoroughly debunked by independent fact-checkers at the M.E.G..

If you happen to be one of the lucky few who have managed to carry your cellular device unscathed and sufficiently charged into Level 10, remember to conserve. The optimal strategy is to ration your mobile battery so that you may maintain extended contact with your fellow survivors situated back on Level 4 for the remainder of your journey.

> *I saw the greying sky in all its glory, both tranquil and foreboding. On the ground, a strange calmness hung in the air, silent save for the sound of me ushering Ari through the wheat. We walked, for what seemed like hours, through the whitening mist, folding back up to close the distance we had just traveled. Soon enough, the sign we needed greeted us from out of the fog, but it was not a gas station or a bus stop or a traffic sign. No, our pointer came in the shape of a large white windmill, standing against the fog like a pale finger. Its blades were not attached to its tower, floating clean in midair with no motion.*
>
> *Behind me, Ari screamed.*

Although the road through the wheat fields appears to be continuous and straight as far as the eye could see, there are times when a wanderer may come back around on their own markers, as if they were going in circles. For unknown reasons, the mist that settles over the level does not touch the road.

![Missing alt text.](http://backrooms-wiki.wikidot.com/local--files/desolation-level-10/strangetracks.jpg)

Strange tracks that appeared overnight, stretching for miles across the fields.

## Misinformation

There are countless instances of Level 10 becoming the subject of false information and outlandish reports.

Despite the fog which shrouds the area, making it difficult to either confirm or disprove such claims, the M.E.G. has remained resolved in their pursuit of debunking common myths with meticulous research and reliable sources. And, with each publication produced in conjunction with dedicated investigators, we draw ever closer to an unblemished understanding of the level.

> *a little after the last of the rain clouds cleared from the sky, Cleo took my hand and we walked back into the sunlight. the mist was very clear that morning, and i was the first one to spot a little dot of white on the horizon. from above, i heard Cleo gasp with her back to me. she stuttered something through laughter and took off into a run.*
>
> *though, she didn't get very far before i sped past her.*

---

#### List of misconceptions regarding Level 10

*By Level 10 Outpost Member, June Lyman*

For the sake of brevity, only the most common misconceptions regarding Level 10 will be covered below:

**1. Level 10 is a means of exit back into the real world.**

It has been a long-standing theory that Level 10 bears the strongest proximity to back home. You've heard the rumors: meteorological events, constellations, and radio waves bleed through. You could allegedly dial up a radio on Level 10, and it would connect back to a pre-existing station in the country. People have come to us in hysterics, claiming that they had heard loved one's voices, asking for them on the other side of the phone.

Simply keep in mind that no M.E.G.-headed investigation was able to replicate the effects of a successful phone call without the connection dissolving in moments into static.

> *there, she left me with the strangers we found: Mr Whittaker, who tells me to call him Jamal, and a mean lady with a large, ugly scar across her cheek who never smiles. Cleo took the bag off my back and told me that she had to go back to that tunnel from last week, even though she promised she was never leaving me again. i didn't know what to say for a few moments as the fog began to blow towards us from afar.*

**2. Hostile entities are abundant on Level 10.**

This is a myth often spread by new wanderers traveling through the unearthly fields, who fail to consider that it is only natural that the human brain would conjure up elements to fill the space. Ordinarily, the fields rustle when there is wind. On some occasions, the field rustles when there is no wind. Wanderers sent off into the pastures often report a feeling of increasing paranoia, especially when the fog is thick. Almost every single investigator I've talked to described a growing dread of "a figure wavering in the distance" that persists until the next structure is found.

Do keep in mind that out of all these accounts, not a single wanderer has ever been found attacked or injured by these alleged entities.

> *she told me not to worry too much and that she was very close to getting through to our mother with the phone at the tunnel. she shook me until she made me promise that i wouldn't go out into the fields again, no matter what, and that Jamal was going to look after me. when she finally disappeared past the horizon, i ignored Jamal for a long time, but eventually we started joking around with each other.*

**3. It is easy to become lost on Level 10.**

This is an understandable presumption given the open nature of the level. However, Level 10 is really not as patternless as one would initially believe. Simply do not wander around aimlessly like a headless chicken, follow antifog protocols, and routinely perform checks on your supply level before making a retreat back to 4. Mazeophobia is not an excuse to avoid the level, given its high loot potential with its structures.

> *just when i was starting to feel like i've known Jamal forever, he suddenly brought up something about sending me to the white office, and made it clear that he wasn’t coming with me. he told me that it was too dangerous for me to stay here and Ms Lyman chimed in with how i wasn’t doing any work! but then, Jamal pulled me back and said that the leaving was later and we could still have fun the entire day. he managed to nag me into helping Ms Lyman write about the fields, which i did. for him. Jamal also mentioned that i could visit in the future if i wanted, so i think he must still like me inside.*

It is not possible to walk too far away from an entrance or exit, given the nature of the doorways present within the level (see Access). It is possible to wander off into the fields for hours, but one would always walk back to the same road.[1](javascript:;)[2](javascript:;)[3](javascript:;)

## Acounts

The section below covers a variety of structures, events, and phenomena that have been reported in The Fields. All accounts regarding Level 10 should be taken with a grain of salt.

#### List of abnormalities discovered in Level 10

*Various assorted accounts, compiled by The M.E.G.*

**1) Class: Common**

![Missing alt text.](http://backrooms-wiki.wikidot.com/local--files/desolation-level-10/badweather.jpg)

Bad weather.

Abnormalities encountered by multiple wanderers on multiple occasions.

- (Type A: Structure) A collection of stands, booths, and tables stretching for 150 meters along the roadside. The wood was wet with rain, and the stalls were empty – no fruits nor pastries, nothing indicative of a farmer’s market — with the air that smelled of silence. Passing through the scrambled fliers and empty stands gave the impression of walking through a ghost town, standing thinly against the mist-filled sky.

- (Type A: Structure) A white telephone booth. It stood out from afar, glowing dull gold in the twilight. Possibly a mid-20th-century American model, according to the description. The white outer skeleton was erected directly into the soil, and the glass doors creaked open without resistance, despite visible damage to the windows. There were no spare coins left to attempt a call.

- (Type B: Event) Inclement weather. Periods of erratic wind patterns, accompanied by excess cloud formation over the fields. Conditions last for approximately 2 to 6 hours, resulting in the accumulation of dirt and other debris, such as wheat, on the roadway. It is recommended for wanderers caught out on the wheat fields to seek immediate shelter.

**2) Class: Rare**

![Missing alt text.](http://backrooms-wiki.wikidot.com/local--files/desolation-level-10/nightmirage.jpg)

An example of a night mirage.

Abnormalities that lack substantial information. Many are still under research.

- (Type B: Event) Premature night.

Interruption of the typical day-night cycle. All occurrences have been recorded to begin before noon and persist until the next sunrise, typically proceeded by the symptoms of inclement weather before progressing to full darkness. Following the event, the level's sky returns to a state where the sun continues to shine during the standard daytime hours.

- (Type: Pending) the overgrown road.

my sister and i were looking for structures all day. after we finally circled back to the road, she noticed that it was completely overgrown. it made her very distressed, but after hours of huddling together on the strange grass, the mist did not come over us. after we left, as soon as the sun was up again, the next road we came across was made of asphalt.

- (Type C: Phenomena) Night mirages.

During the period of nightfall or when visibility is otherwise decreased, one might spot signs of civilization on the horizon. This includes, but is not limited to, artificial lights, houses, construction cranes, or outlines of cityscapes on the horizon. Due to the lack of tangible evidence of these structures, this phenomenon has been attributed to wishful thinking and homesickness-induced hallucinations.[4](javascript:;)

**3) Class: Singular**

![Missing alt text.](http://backrooms-wiki.wikidot.com/local--files/desolation-level-10/verybadweather.jpg)

Very bad weather.

For unique abnormalities only reported by one party. Submissions in this category are impossible to verify until more information is discovered.

- (Type A: Structure) A drainage tunnel covered in graffiti. A shallow stream flows from within the opening out into the fields.

> *When the storm came, Ari and I sheltered under a low tunnel in the field. We crouched in heel-deep waters as the wheat outside wilted and the sky brewed gunmetal grey. A little paper boat came drifiting down the stream, and Ari caught it with her hands, unfurling it to read the morning news. "Look, Cleo! It's me…and you."*

- (Type A: Structure) A wooden entrance. Allegedly exists two hours beyond the tunnel entrance.

> *There was no metal grate at the end of the tunnel. As the thunder crackled and the ground shook, I led Ari deeper and deeper into the heart of the drainage. After god knows how many hours of twisting and turning, we finally saw a light up ahead, growing brighter. We emerged onto a small platform covered in a welcome mat before our light, in the shape of a small incandescent bulb, hanging atop a little red door with its hinges rusted off.*

- (Type A: Structure) A tornado shelter(?)

> *Beyond that door, there was a breath of something warm – a blend of freshly baked goods and sun-dried linen in the countryside summer. Ari stuck their head around me, and we peered down at what we had found: a pristine, snuggly carpeted floor coupled with shiny water-proof walls to make a sanctuary with everything we ever needed nestled just beyond the old red door. We saw a living room, a kitchen, hallways, and at least five bedrooms, all spacious and wide and so unlike the tunnel. We saw a bookshelf, a fridge and a mahogany table to make a writing desk, with the feathered pen of my dreams. I was the first to break out of my stupor to step onto the carpet and run my hands over the surface, feeling it slide – smooth and solid – under my fingers.*

> *My friends, you have to come with me. We have to go down to the tunnel as soon as the mist lifts. We will move there, all four of us, and it can keep us warm through all future storms. There is food and shelter aplenty; Ari already loves the vintage television we found on the shelf, which plays only her favorite shows from her childhood. I've stuffed myself with the soft pastries in the oven that were exactly like what my grandma used to make me. That was where we laughed and waited as the dreary drizzle outside faded away. That can be where we may rest and dine and play, like the good old days back home – give Ari back a normal childhood like other kids their age.*

> *Please*
>
> *you have to believe me*

![Missing alt text.](http://backrooms-wiki.wikidot.com/local--files/desolation-level-10/hill.png)

The sky goes brilliant and blue.

## Survival Guide

Pack like you're preparing for a road trip. Bring at least one kettle, a couple of paper cups, and enough almond water for both you and any companions. Acquiring almond water from the structures scattered throughout the level isn't unheard of, but it is exceedingly rare and not generally something you should place your bets on.

Diverging from the road should only be attempted if you have enough supplies to make the return trip. Keep in mind that you may walk for hours without encountering a structure. Do not approach targets on the horizon smaller than your thumb. Do not walk towards groups of people you see against the skyline before dusk. Always make the bulk of your travel in the first half of the day before the mist settles in.

> i went back to the tunnel without Mr Jamal's permission. there, I saw a shape wearing a gold-yellow sundress and a hat. i ran up to it, but it wasn’t my sister; it was a scarecrow wearing my sister’s clothes. anyways, then i went back to camp and had dinner.

There is a temporary M.E.G. team stationed on **Level 10** that collects new wanderers clipping in from the real world along the road. The team currently consists of a dark-haired man (mid-thirties), a woman with a scar across her face (early-thirties), a girl with freckles across her cheeks and arms (late teens), and a younger kid with two moles on their cheek (preteen). The team is equipped with an ample supply of almond water and returns to Level 4 every two weeks to restock.[5](javascript:;)[6](javascript:;)

## Access

- (Entrance 1) Walking into the dense foliage of Level 9 until the bushes turn to tall grass brings you to the road of Level 10.

- (Exit 1) Closing all the doors in a building with a light source and closing your eyes until you can feel the room start to sway around you will transport you seamlessly to Level 7.

- (Exit Pending) Those traveling without food or water for extended periods sometimes report catching a glimpse of a gleaming unreal city in the distance before losing contact with their group.

---

« [Level 9](desolation-level-9.md) | Level 10 | forward »

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Desolation Level 10](desolation-level-10.md)" by centurys lute, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/desolation-level-10](desolation-level-10.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/desolation-level-10">Desolation Level 10</a>" by centurys lute, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/desolation-level-10">https://backrooms-wiki.wikidot.com/desolation-level-10</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Filename:** day2.png  
> **Name:** Rice fields in the morning fog, Ban Huisak, Thailand.  
> **Author:** margothierry  
> **License:** [CC BY 2.0](https://creativecommons.org/licenses/by/2.0/)  
> **Source Link:** [Flickr](https://www.flickr.com/photos/33683401@N07/14278185949|)

> **Filename:** strangetracks.png  
> **Name:** Wheat Field  
> **Author:** Terry Kearney  
> **License:** [CC BY 1.0](https://creativecommons.org/publicdomain/zero/1.0/?ref=openverse)  
> **Source Link:** [Flickr](https://www.flickr.com/photos/24490288@N04/52319115122|)

> **Filename:** badweather.png  
> **Name:** Fog on the field (0720)  
> **Author:** The D34n  
> **License:** [CC BY 2.0](https://creativecommons.org/licenses/by/2.0/)  
> **Source Link:** [Flickr](https://www.flickr.com/photos/38000408@N05/4909967487|)

> **Filename:** nightmirage.png  
> **Name:** Fog on the Field  
> **Author:** Kit Case  
> **License:** [CC BY 2.0](https://creativecommons.org/licenses/by/2.0/)  
> **Source Link:** [Flickr](https://www.flickr.com/photos/36119531@N07/51859706022|)

> **Filename:** verybadweather.png  
> **Name:** nssl0234  
> **Author:** NOAA Photo Library  
> **License:** [CC BY 2.0](https://creativecommons.org/licenses/by/2.0/)  
> **Source Link:** [Flickr](https://www.flickr.com/photos/51647007@N08/5053917451|)

> **Filename:** hill.png  
> **Name:** Over The Hill  
> **Author:** dolbinator1000  
> **License:** [CC BY 2.0](https://creativecommons.org/licenses/by/2.0/)  
> **Source Link:** [Flickr](https://www.flickr.com/photos/126654539@N08/23364494180|)

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

Footnotes

[1](javascript:;). this is possibly because of non-Euclidean geometry.

[2](javascript:;). Ari, this is an actual phenomenon given you walk long enough without landmarks.

[3](javascript:;). oh ok, my mistake.

[4](javascript:;). If you see any of the above in photographs of Level 10, you might already be affected.

[5](javascript:;). Jamal, should we remove Cleo's description before next print?

[6](javascript:;). What? Don't be crass.

---

Source: [https://backrooms-wiki.wikidot.com/desolation-level-10](https://backrooms-wiki.wikidot.com/desolation-level-10)
