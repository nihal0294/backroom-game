---
title: "Fragment 1"
source: "https://backrooms-wiki.wikidot.com/fragment:object-73-0"
retrieved_at: "2026-08-23T23:40:34+00:00"
license: CC-BY-SA-3.0
---

# Fragment 1

[+ Theme Code](javascript:;)

[- Hide](javascript:;)

```
:root {
    /* Color */
    --q-black: 55, 55, 55;
    --q-white: 252, 252, 252;
    --q-yellow: 254, 203, 52;
    --q-green: 52, 254, 145;
    --q-red: 254, 104, 52;
 
    /* palatte */
    --background-color: var(--q-yellow);
    --text-color: var(--q-black);
    --light-color-1: var(--q-white);
    --light-color-2: var(--q-white);
    --dark-color-1: var(--q-black);
    --dark-color-2: var(--q-white);
    --dark-color-3: var(--text-color);
    --general-medium-background-color: var(--dark-color-2);
    --general-medium-text-color: var(--text-color);
    --general-dark-background-color: var(--q-green);
    --general-dark-text-color: var(--text-color);
 
    /* Scrollbar */
    --scrollbar-color: var(--q-yellow);
    --scrollbar-background-color: 0, 0, 0, 0.2;
 
    /* Header */
    --header-background-top: 0, 0, 0, 0;
    --header-background-bottom: 0, 0, 0, 0;
    --header-extra-background-image: none;
    --header-text-color: var(--text-color);
    --header-text-shadow-color: 0, 0, 0, 0;
    --header-title-font-size: 2rem;
 
    /* Topb */
    --topbar-text-color: var(--text-color);
    --topbar-height-on-mobile: 4rem;
    --topbar-font-size-on-mobile: 0.8rem;
    --topbar-font-size: 1rem;
    --topbar-hover-background-color: var(--q-green);
    --topbar-hover-border-color: 0, 0, 0, 0;
    --topbar-height: 4rem;
    --topbar-drop-text-color: var(--q-black);
    --topbar-drop-hover-text-color: var(--q-black);
    --topbar-drop-background-color: var(--q-white);
    --topbar-drop-hover-background-color: var(--q-red);
    --topbar-drop-shadow-color: 0, 0, 0, 0;
    --topbar-drop-border-width: 0px;
 
    /* User */
    --account-drop-text-color: var(--q-black);
    --account-drop-hover-text-color: var(--q-black);
    --account-drop-background-color: var(--q-white);
    --account-drop-hover-background-color: var(--q-red);
 
    /* Search */
    --search-button-background-color: var(--q-white);
    --search-button-hover-background-color: var(--q-green);
 
    /* Tag */
    --page-tag-background-color: var(--q-yellow), 0.6;
 
    /* Footer */
    --footer-text-color: var(--q-black);
    --footer-background-color: var(--q-white);
    --license-background-color: var(--q-white);
    --license-text-color: var(--q-black);
    --license-link-color: var(--q-black);
 
    /* Popup */
    --popup-fader-color: 0, 0, 0, 0.7;
    --popup-title-background-color: var(--q-yellow);
    --popup-title-text-color: var(--q-black);
    --popup-tip-color: var(--q-white);
    --popup-loading-color: var(--q-yellow);
 
    /* tab */
    --tabview-button-background-color: 0, 0, 0, 0;
    --tabview-button-text-color: var(--q-black);
    --tabview-hover-button-background-color: var(--q-red);
    --tabview-hover-button-text-color: var(--q-black);
    --tabview-selected-button-background-color: var(--q-green);
    --tabview-selected-button-text-color: var(--q-black);
    --tabview-horizon-color: 0, 0, 0, 0;
    --tabview-content-background-color: var(--q-white);
    --tabview-border-width: 0px;
 
    /* footnote */
    --footnote-block-background-color: var(--q-white);
 
    /* Sidebar */
    --sidebar-handle-text-color: var(--q-white);
    --sidebar-handle-background-color: var(--q-black);
    --sidebar-media-background-color: var(--q-green);
    --sidebar-media-icon-color: var(--text-color);
    --sidebar-title-background-color: var(--q-yellow);
    --sidebar-title-shadow-color: 0, 0, 0, 0;
    --sidebar-hover-background-color: var(--q-red);
 
    /* Sturc */
    --body-width: 50rem;
    --sidebar-width: 20rem;
    --sidebar-width-on-mobile: 18rem;
    --header-subtitle-font-size-on-mobile: 0.8rem;
 
    /* Other Things */
    --general-transition-time-slow: 0s;
    --logo-image: url(https://github.backroomswiki.cn/Super_Liminal/images/black_logo.svg);
}
 
/* Body */
#skrollr-body {
    background-image:  radial-gradient(circle, rgba(0, 0, 0, 0.05) 15%, transparent 0);
    background-size: 2rem 2rem;
}
 
/* Header */
#header h1 a {
    display: flex;
    align-items: center;
    width: fit-content;
}
 
#header h1 a::before {
    content: "";
    display: block;
    flex: none;
    background-color: rgba(var(--q-white));
    background-image: var(--logo-image);
    background-size: contain;
    background-repeat: no-repeat;
    background-position: center;
    width: 4rem;
    height: 4rem;
    box-sizing: border-box;
    border: 0.2rem solid rgba(var(--text-color));
    border-radius: 50%;
}
 
#header h1 a:is(:hover, :active, :focus, :focus-within)::before {
    background-color: rgba(var(--q-green));
}
 
#header h1 a span {
    align-items: flex-start;
    padding: 0;
    margin-left: 1rem;
    transition: margin-left 0.2s;
}
 
#header h1 a:is(:hover, :active, :focus, :focus-within) span {
    margin-left: 1.4rem;
}
 
#header h2 {
    display: none;
}
 
/* User Info */
#login-status {
    font-size: 0;
    top: calc(var(--main-header-height) / 2 - 2rem);
    right: var(--header-margin);
}
 
#login-status .printuser {
    gap: 0;
}
 
#login-status .printuser > a:first-child img {
    background-image: none !important;
    padding: 0;
    width: 4rem;
    height: 4rem;
    box-sizing: border-box;
    border: 0.2rem solid rgba(var(--text-color));
    border-radius: 50%;
    object-fit: cover;
}
 
#login-status a:is(.login-status-create-account,.login-status-sign-in) {
    display: flex;
    width: 4rem;
    text-align: center;
    text-decoration: none;
    justify-content: center;
    align-items: center;
    background: rgba(var(--q-white));
    color: rgba(var(--q-black));
    font-size: 0.8rem;
    box-sizing: border-box;
    border: 0.2rem solid rgba(var(--text-color));
    border-radius: 10rem;
    padding: 0.2rem 0;
    position: relative;
    top: -0.2rem;
}
 
#login-status a:is(.login-status-create-account,.login-status-sign-in):is(:hover, :active, :focus, :focus-within) {
    background: rgba(var(--q-green));
}
 
#login-status a.login-status-create-account {
    font-size: 0;
    margin-bottom: 0.5rem;
}
 
#login-status a.login-status-create-account::before {
    content: "Sign up";
    font-size: 0.8rem;
}
 
a#account-topbutton {
    display: none;
}
 
#account-options {
    font-size: 0.8rem;
    padding-top: 0.6rem;
    background: rgba(0, 0, 0, 0);
    border: none;
    width: 10rem;
}
 
#login-status:is(:hover, :active, :focus, :focus-within) #account-options {
    pointer-events: auto;
    opacity: 1;
}
 
#account-options ul {
    display: block;
    border: 0.2rem solid rgba(var(--text-color));
    box-shadow: inset 0 -0.5rem 0 rgba(0, 0, 0, 0.15);
    border-radius: 0.6rem;
    background: rgba(var(--account-drop-background-color));
    overflow: hidden;
    padding-bottom: 0.5rem;
}
 
#account-options li a {
    height: 2rem;
    padding: 0 1rem;
    justify-content: space-between;
}
 
#account-options li:last-of-type a {
    border-radius: 0 0 0.4rem 0.4rem;
}
 
#account-options li a::after {
    content: "›";
    font-weight: 900;
    font-family: var(--mono-font);
    font-size: 1.25em;
}
 
#login-status > a[href*='account/messages'] {
    position: absolute;
    top: 0;
    right: 0;
    width: 1.2rem;
    height: 1.2rem;
    font-size: 0;
    z-index: 2;
    background: rgb(var(--q-red));
    border-radius: 50%;
    border: 0.2rem solid rgba(var(--text-color));
}
 
/* Search */
#search-top-box {
    right: calc(var(--header-margin) + 4rem + 1rem);
    top: calc(var(--main-header-height) / 2 - 1.6rem);
}
 
#search-top-box-form .button {
    height: 3.2rem;
    width: 4rem;
    font-size: 0;
    border: 0.2rem solid rgba(var(--text-color));
    box-shadow: inset 0 -0.5rem 0 rgba(0, 0, 0, 0.15);
    border-radius: 0.6rem;
    padding: 0 0 0.5rem;
}
 
#search-top-box::after {
    content: "";
    width: 100%;
    height: calc(100% - 0.5rem);
    position: absolute;
    left: 0;
    top: 0;
    -webkit-mask-image: var(--search-icon-mask);
    mask-image: var(--search-icon-mask);
    -webkit-mask-repeat: no-repeat;
    mask-repeat: no-repeat;
    -webkit-mask-position: center;
    mask-position: center;
    -webkit-mask-size: 27.5%;
    mask-size: 27.5%;
    background-color: rgb(var(--text-color));
    pointer-events: none;
}
 
/* Top Bar */
#top-bar div[class*=top-bar] > ul {
    grid-gap: 0.5rem;
}
 
#top-bar div[class*=top-bar] > ul > li {
    border-radius: 0.6rem;
    border: 0.2rem solid rgba(0, 0, 0, 0);
    transition: 0s;
    box-sizing: border-box;
    padding-bottom: 0.5rem
}
 
#top-bar .mobile-top-bar .open-menu {
    flex: none;
    margin-right: 0.5rem;
}
 
#top-bar .mobile-top-bar .open-menu a {
    border-radius: 0.6rem;
    border: 0.2rem solid rgba(var(--q-black));
    transition: 0s;
    box-sizing: border-box;
    padding-bottom: 0.5rem;
    background: rgba(var(--q-red));
    box-shadow: inset 0 -0.5rem 0 rgba(0, 0, 0, 0.15);
}
 
#top-bar .mobile-top-bar .open-menu a::before {
    -webkit-mask-size: 80%;
    mask-size: 80%;
}
 
#top-bar div[class*=top-bar] > ul > li:is(:hover, :active, :focus, :focus-within, .sfhover),
#top-bar .mobile-top-bar .open-menu a:is(:hover, :active, :focus, :focus-within) {
    background: rgba(var(--topbar-hover-background-color));
    border: 0.2rem solid rgba(var(--text-color));
    box-shadow: inset 0 -0.5rem 0 rgba(0, 0, 0, 0.15);
}
 
#top-bar div[class*=top-bar] > ul > li > a {
    padding-bottom: 1.5rem;
}
 
#top-bar div[class*=top-bar] > ul > li > ul {
    border: 0.2rem solid rgba(var(--text-color));
    box-shadow: inset 0 -0.5rem 0 rgba(0, 0, 0, 0.15);
    border-radius: 0.6rem;
    left: -0.2rem;
    min-width: calc(100% + 0.4rem);
    padding-bottom: 0.5rem;
    overflow: hidden;
    transition: 0s;
}
 
#top-bar div[class*=top-bar] > ul > li:last-of-type > ul {
    right: -0.2rem;
    left: auto;
}
 
#top-bar div[class*=top-bar] > ul > li > ul > li {
    overflow: hidden;
}
 
#top-bar div[class*=top-bar] > ul > li > ul > li:last-of-type {
    border-radius: 0 0 0.4rem 0.4rem;
}
 
#top-bar div[class*=top-bar] > ul > li > ul > li > a {
    font-weight: 500;
    justify-content: space-between;
}
 
#top-bar div[class*=top-bar] > ul > li > ul > li > a::after {
    content: "›";
    font-weight: 900;
    font-family: var(--mono-font);
    font-size: 1.25em;
    padding-left: 0.5rem;
}
 
/* Content */
#page-title, .meta-title {
    text-align: center;
    border: none;
    padding: 0;
}
 
/* Rating Module */
div.rate-box-with-credit-button,
div.page-rate-widget-box,
div.creditButtonStandalone {
    border: 0.2rem solid rgba(var(--text-color));
    border-radius: 10rem;
    overflow: hidden;
    padding-right: 0.5rem;
}
 
div.page-rate-widget-box .rate-points {
    padding-left: 0.8rem;
}
 
div.creditBottomRate div.page-rate-widget-box {
    border-bottom: 0.2rem solid rgba(var(--text-color));
}
 
/* Blockquote */
blockquote, .blockquote, .lightblock {
    margin: 1rem 0;
    border-radius: 1rem;
    border: 0.2rem solid rgba(var(--text-color));
    padding: 0.5rem 1rem 1rem;
    box-shadow: inset 0 -0.5rem 0 rgba(0, 0, 0, 0.15);
}
 
/* Page Tags */
.page-tags {
    border-radius: 1rem;
    border: 0.2rem solid rgba(var(--text-color));
    background: rgba(var(--q-white));
    flex-direction: row;
    box-shadow: inset 0 -0.5rem 0 rgba(0, 0, 0, 0.15);
    overflow: hidden;
    padding: 0.5rem 0.5rem 1rem;
}
 
.page-tags::before {
    content: "";
    background-image: url("data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4NCjwhLS0gR2VuZXJhdG9yOiAkJCQvR2VuZXJhbFN0ci8xOTY9QWRvYmUgSWxsdXN0cmF0b3IgMjcuNi4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+DQo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IuWbvuWxgl8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiIHk9IjBweCINCgkgdmlld0JveD0iMCAwIDEwNS43IDg3LjMiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDEwNS43IDg3LjM7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4NCjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+DQoJLnN0MHtmaWxsOm5vbmU7c3Ryb2tlOiMwMDAwMDA7c3Ryb2tlLXdpZHRoOjM7c3Ryb2tlLW1pdGVybGltaXQ6MTA7fQ0KPC9zdHlsZT4NCjxwYXRoIGNsYXNzPSJzdDAiIGQ9Ik0yMy4zLDI3LjhsNC42LDIxLjFjMC40LDEuOCwxLjQsMy40LDMsNC40bDQ1LjIsMzEuMmMzLjMsMi4zLDcuOCwxLjQsMTAuMS0xLjlsMTYuOC0yNC40DQoJYzIuMy0zLjMsMS40LTcuOC0xLjktMTAuMUw1NS44LDE3LjFjLTEuNS0xLTMuNC0xLjUtNS4yLTEuMmwtMjEuMywzLjJDMjUuMiwxOS43LDIyLjQsMjMuNywyMy4zLDI3Ljh6Ii8+DQo8Y2lyY2xlIGNsYXNzPSJzdDAiIGN4PSI0MSIgY3k9IjMzLjYiIHI9IjciLz4NCjxsaW5lIGNsYXNzPSJzdDAiIHgxPSI2MS4yIiB5MT0iMzcuNyIgeDI9IjkyLjUiIHkyPSI1OS4zIi8+DQo8bGluZSBjbGFzcz0ic3QwIiB4MT0iNTYuNiIgeTE9IjQ0LjMiIHgyPSI3OC45IiB5Mj0iNTkuNiIvPg0KPGxpbmUgY2xhc3M9InN0MCIgeDE9IjUyLjEiIHkxPSI1MC45IiB4Mj0iNzkuNyIgeTI9IjY5LjkiLz4NCjxwYXRoIGNsYXNzPSJzdDAiIGQ9Ik0zMy43LDM3LjFjMCwwLDM2LjYtMTIuOS0zLjYtMzMuMkMyMS42LTAuNSwxMS4zLDEuMyw0LjUsOHYwQy03LjgsMjAuNCwyMS44LDM3LjQsMjUuMiwzNy40Ii8+DQo8L3N2Zz4NCg==");
    width: 4rem;
    height: 4rem;
    border: 0.2rem solid rgba(var(--text-color));
    border-radius: 50%;
    padding: 0;
    background-color: rgba(var(--q-yellow));
    background-size: 80%;
    background-repeat: no-repeat;
    background-position: center;
    flex: none;
}
 
.page-tags span {
    border: none;
    padding: 0.5rem 0 0.5rem 1rem;
}
 
.page-tags span a {
    padding: 0.2rem 0.5rem;
    height: fit-content;
    font-weight: 500;
    transition: 0s;
}
 
/* Page Info */
#page-info, .page-watch-options {
    font-weight: 500;
    font-size: 0.8rem;
}
 
/* Buttons, i mean, seriously, buttonS */
div[id*=page-options-bottom] > a,
#edit-page-form div.buttons input,
div.buttons input,
.page-options-bottom a,
.owindow .button-bar > a:not([onclick*=cleanAll]),
.owindow div[style*=margin-top] a,
a.action-area-close,
#view-diff-div > p > a {
    border: 0.2rem solid rgba(var(--text-color));
    box-shadow: inset 0 -0.5rem 0 rgba(0, 0, 0, 0.15);
    border-radius: 0.6rem;
    padding: 0.5rem 0.5rem 1rem;
    line-height: 1.5;
    height: fit-content;
    background: rgba(var(--q-white));
    color: rgba(var(--q-black));
    font-weight: 500;
    font-size: 0.8rem;
}
 
#delete-button,
a.action-area-close,
#view-diff-div > p > a {
    background: rgba(var(--q-red));
}
 
a.action-area-close,
#view-diff-div > p > a {
    font-size: 0;
    height: 3rem;
    width: 3rem;
    box-sizing: border-box;
}
 
div[id*=page-options-bottom] > a:is(:hover, :active, :focus, :focus-within),
#edit-page-form div.buttons input:is(:hover, :active, :focus, :focus-within),
div.buttons input:is(:hover, :active, :focus, :focus-within),
.page-options-bottom a:is(:hover, :active, :focus, :focus-within),
.owindow .button-bar > a:not([onclick*=cleanAll]):is(:hover, :active, :focus, :focus-within),
.owindow div[style*=margin-top] a:is(:hover, :active, :focus, :focus-within),
a.action-area-close:is(:hover, :active, :focus, :focus-within),
#view-diff-div > p > a:is(:hover, :active, :focus, :focus-within) {
    background: rgba(var(--q-green));
    color: rgba(var(--q-black));
}
 
#delete-button:is(:hover, :active, :focus, :focus-within):before,
#delete-button:is(:hover, :active, :focus, :focus-within):after {
    content: "!";
    font-weight: 700;
    padding: 0 0.25rem;
}
 
div[id*=page-options-bottom] > a {
    flex-basis: 7.5rem;
    flex-grow: 0;
}
 
div[id*=page-options-bottom] {
    justify-content: center;
    margin: 0.25rem 0;
}
 
/* Footer */
#footer {
    border-top: 0.2rem solid rgba(var(--text-color));
    padding: 1rem 0;
}
 
/* Popup */
.owindow, div.modalbox, div.infobox {
    border: 0.2rem solid rgba(var(--text-color));
    box-shadow: inset 0 -0.5rem 0 rgba(0, 0, 0, 0.15);
    border-radius: 1rem;
    padding: 0 0 0.5rem 0;
}
 
.owindow .title,
div.modalbox > div:first-child,
div.infobox-title {
    border-radius: 0.8rem 0.8rem 0 0;
    border-bottom: 0.2rem solid rgba(var(--text-color));
}
 
.owindow.owait,
.owindow.osuccess {
    padding: 0.6rem 2rem 1.2rem;
}
 
/* Action */
#action-area > h1 {
    padding: 0.5rem 0;
}
 
#who-rated-page-area > div,
.page-source {
    border: 0.2rem solid rgba(var(--text-color));
    box-shadow: inset 0 -0.5rem 0 rgba(0, 0, 0, 0.15);
    border-radius: 1rem;
    padding: 1rem 1rem 1.5rem;
    background: rgba(var(--q-white));
    color: rgba(var(--q-black));
}
 
/* Image Block */
.scp-image-block {
    border: none;
    gap: 0.5rem;
}
 
.scp-image-block img {
    width: auto !important;
}
 
.scp-image-block img,
.scp-image-caption {
    border: 0.2rem solid rgba(var(--text-color));
    border-radius: 0.6rem;
}
 
.scp-image-caption {
    box-shadow: inset 0 -0.5rem 0 rgba(0, 0, 0, 0.15);
    padding: 0.3rem 0.5rem 0.8rem;
}
 
/* Tabview */
.yui-navset .yui-nav {
    justify-content: center;
    gap: 0.5rem;
}
 
.yui-navset .yui-nav li,
.yui-navset .yui-nav li.selected {
    transition: none;
    flex: none;
    border-radius: 0.6rem;
    padding: 0.5rem 1.5rem 1rem;
    border: 0.2rem solid rgba(0, 0, 0, 0);
    font-weight: 700;
}
 
.yui-navset .yui-nav li.selected,
.yui-navset .yui-nav li:is(:hover, :active, :focus, :focus-within) {
    border: 0.2rem solid rgba(var(--text-color));
    box-shadow: inset 0 -0.5rem 0 rgba(0, 0, 0, 0.15);
}
 
.yui-navset .yui-nav li a,
.yui-navset .yui-nav li.selected a {
    transition: none;
    color: rgba(var(--q-black));
}
 
.yui-navset .yui-nav li a em,
.yui-navset .yui-nav li.selected a em {
    padding: 0;
}
 
.yui-navset .yui-content {
    margin: 1rem 0;
    border-radius: 1rem;
    border: 0.2rem solid rgba(var(--text-color));
    padding: 0.5rem 1rem 1rem;
    box-shadow: inset 0 -0.5rem 0 rgba(0, 0, 0, 0.15);
    background: rgba(var(--q-white));
}
 
/* Code */
.code {
    border-radius: 1rem;
}
 
/* Custom DIVs */
.darkblock {
    border-radius: 1rem;
    border: 0.2rem solid rgba(var(--text-color));
    padding: 0.5rem 1rem 1rem;
    box-shadow: inset 0 -0.5rem 0 rgba(0, 0, 0, 0.15);
    background: rgba(var(--q-yellow));
    color: rgba(var(--q-black));
}
 
.styled-quote {
    border-radius: 1rem;
    border: 0.2rem solid rgba(var(--text-color));
    padding: 0.5rem 1rem 1rem;
    box-shadow: inset 0 -0.5rem 0 rgba(0, 0, 0, 0.15);
    background: rgba(var(--q-green));
    color: rgba(var(--q-black));
}
 
.dark-styled-quote {
    border-radius: 1rem;
    border: 0.2rem solid rgba(var(--text-color));
    padding: 0.5rem 1rem 1rem;
    box-shadow: inset 0 -0.5rem 0 rgba(0, 0, 0, 0.15);
    background: rgba(var(--q-red));
    color: rgba(var(--q-black));
}
 
/* Footnote */
.footnotes-footer, .bibitems {
    border-radius: 1rem;
    border: 0.2rem solid rgba(var(--text-color));
    padding: 0.5rem 1rem 1rem;
    box-shadow: inset 0 -0.5rem 0 rgba(0, 0, 0, 0.15);
    margin: 1rem;
}
 
.footnotes-footer .title {
    font-size: 1.5em;
}
 
.footnote-footer {
    font-size: 85%;
}
 
/* Sidebar */
#side-bar {
    scrollbar-width: none;
    padding-left: 1rem;
    background: rgba(0, 0, 0, 0);
    border: none;
}
 
#side-bar .side-block {
    border-radius: 0.6rem;
    border: 0.2rem solid rgba(var(--text-color));
    box-shadow: inset 0 -0.5rem 0 rgba(0, 0, 0, 0.15);
    background: rgba(var(--q-white));
    color: rgba(var(--q-black));
    margin: 1rem 0;
    padding-bottom: 0.5rem;
}
 
#side-bar .side-block.media {
    padding: 0.5rem 0 1rem !important;
}
 
#side-bar .side-block.languages {
    display: none; /* Temp set */
}
 
#side-bar .heading,
#side-bar .collapsible-block-unfolded-link a,
#side-bar .collapsible-block-folded a {
    border-radius: 0.4rem 0.4rem 0 0;
    padding: 0.2rem 0;
}
 
#side-bar .side-block > *:last-child {
    border-bottom: none;
    border-radius: 0 0 0.4rem 0.4rem;
}
 
#side-bar .heading:last-child {
    border-radius: 0.4rem;
}
 
#side-bar .menu-item {
    overflow: hidden;
}
 
#side-bar .menu-item a {
    padding-right: 0.6em;
    display: flex;
    justify-content: space-between;
    align-items: center;
}
 
#side-bar .menu-item a::after {
    content: "›";
    font-weight: 900;
    font-family: var(--mono-font);
    font-size: 1.25em;
}
 
#side-bar .menu-item a:first-of-type {
    border-left: none;
}
 
/* MOBILE */
@media only screen and (max-width: 1024px) {
    #header {
        background-color: rgba(var(--q-yellow));
        background-image:  radial-gradient(circle, rgba(0, 0, 0, 0.05) 15%, transparent 0);
        background-size: 2rem 2rem;
    }
 
    #header h1 a::before {
        display: none;
    }
 
    #header h1 a {
        height: calc(100% - 2rem);
        margin: 1rem 0;
    }
 
    #login-status {
        right: 1rem;
    }
 
    #search-top-box {
        width: auto;
        height: auto;
        right: calc(var(--header-margin) + 4rem + 2rem);
        top: calc(var(--main-header-height) / 2 - 1.5rem);
    }
 
    #search-top-box-form .button {
        mask-image: none;
        -webkit-mask-image: none;
        width: 3rem;
        height: 3rem;
    }
 
    #search-top-box::after {
        mask-size: 35%;
        -webkit-mask-size: 35%;
    }
 
    #top-bar {
        padding: 0.5rem 1rem;
    }
 
    #top-bar div[class*=top-bar] > ul > li > a {
        padding-bottom: 1rem;
    }
 
    #top-bar div[class*=top-bar] > ul > li > ul {
        min-width: 100%;
        left: 0;
    }
 
    #top-bar div[class*=top-bar] > ul > li:last-of-type > ul {
        right: 0;
        left: auto;
    }
 
    #top-bar div[class*=top-bar] > ul > li > ul > li:nth-child(2n):nth-last-child(1) {
        border-bottom-left-radius: 0;
    }
 
    #top-bar div[class*=top-bar] > ul > li > ul > li:nth-child(2n+1):nth-last-child(1) {
        border-bottom-right-radius: 0;
    }
 
    #top-bar div[class*=top-bar] > ul > li > ul > li:nth-child(2n+1):nth-last-child(2) {
        border-bottom-left-radius: 0.4rem;
    }
 
    #side-bar:target .close-menu {
        width: 100%;
    }
 
}
 
/* SUPER CUTE!! */
.with-bai {
    margin-top: 13rem;
    padding-top: 5rem;
    position: relative;
}
 
.with-bai::before {
    content: "";
    display: block;
    height: 20rem;
    width: 12rem;
    background: url(http://backrooms-wiki.wikidot.com/local--files/theme:super-cute/bai.png);
    background-repeat: no-repeat;
    background-size: contain;
    background-position: center;
    position: absolute;
    top: -14rem;
    right: 2rem;
}
 
.with-bai.no-padding {
    padding-top: 0.5rem;
    min-height: 6rem;
}
 
.with-bai::after {
    content: "";
    display: block;
    height: 8rem;
    width: 10rem;
    background: url(http://backrooms-wiki.wikidot.com/local--files/theme:super-cute/cans.png);
    background-repeat: no-repeat;
    background-size: contain;
    background-position: center;
    position: absolute;
    top: -7.04rem;
    left: 1rem;
}
 
.with-shina {
    margin-top: 15rem;
    padding-top: 3rem;
    position: relative;
}
 
.with-shina.no-padding {
    padding-top: 0.5rem;
    min-height: 4rem;
}
 
.with-shina::before {
    content: "";
    display: block;
    height: 22rem;
    width: 19rem;
    background: url(http://backrooms-wiki.wikidot.com/local--files/theme:super-cute/shina.png);
    background-repeat: no-repeat;
    background-size: contain;
    background-position: center;
    position: absolute;
    top: -17.8rem;
    left: 0;
}
 
.with-shina::after {
    content: "";
    display: block;
    height: 10rem;
    width: 10rem;
    background: url(http://backrooms-wiki.wikidot.com/local--files/theme:super-cute/manstria.png);
    background-repeat: no-repeat;
    background-size: contain;
    background-position: center;
    position: absolute;
    top: -8.69rem;
    right: 0;
}
 
.with-tess {
    margin-top: 18rem;
    padding-top: 1.5rem;
    position: relative;
}
 
.with-tess.no-padding {
    padding-top: 0.5rem;
    min-height: 1rem;
}
 
.with-tess::before {
    content: "";
    display: block;
    height: 20rem;
    width: 23rem;
    background: url(http://backrooms-wiki.wikidot.com/local--files/theme:super-cute/tess.png);
    background-repeat: no-repeat;
    background-size: contain;
    background-position: center;
    position: absolute;
    top: -18.06rem;
    right: 2rem;
}
 
.with-tess::after {
    content: "";
    display: block;
    height: 6rem;
    width: 10rem;
    background: url(http://backrooms-wiki.wikidot.com/local--files/theme:super-cute/boat.png);
    background-repeat: no-repeat;
    background-size: contain;
    background-position: center;
    position: absolute;
    top: -4rem;
    left: 1rem;
}
 
@media only screen and (max-width: 590px) {
    .with-tess::after {
        display: none;
    }
}
 
@media only screen and (max-width: 520px) {
    .with-bai::after,
    .with-shina::after {
        display: none;
    }
}
 
@media only screen and (max-width: 520px) {
    .with-tess::before {
        right: 0.5rem;
    }
}
```

[- Hide](javascript:;)

# Description:

SuperGreen SuperApples! We promise you apple lovers out there a sweet but tart snack that'll help you get back onto your feet and ready for whatever the day throws at you!

Ever since we founded[1](javascript:;) our business, We've cultivated[2](javascript:;) three types of trees in our orchard to provide you three nutritious[3](javascript:;) types of apples!

Now, these apples aren't just like your average anomalous food like [Chocobytes](object-67.md). Our apples give you a variety of super awesome effects!

You can read more about our three types of apples below!

---

- [*SuperGreen SuperApples!*](javascript:;)
- [*ExtraGreen SuperApples!*](javascript:;)
- [*HyperGreen SuperApples!*](javascript:;)

![A SuperGreen SuperApple](https://backrooms-wiki.wdfiles.com/local--files/object-73/SuperApple.jpeg)

A SuperGreen SuperApple

Our Signature Apple! These apples give you an extra energy and health boost and are the most popular apple we serve! An apple a day will keep the pain and fatigue away!

![An ExtraGreen SuperApple](https://backrooms-wiki.wdfiles.com/local--files/object-73/ExtraApple.jpeg)

An ExtraGreen SuperApple

These Apples have an extra kick to them! They'll get your adrenaline pumping! Great for a workout or when you need that boost of extra energy quickly! You'll also heal your injuries![4](javascript:;)

![A HyperGreen SuperApple](https://backrooms-wiki.wdfiles.com/local--files/object-73/HyperApple.jpeg)

A HyperGreen SuperApple

Our HyperGreen SuperApples are Hyper Nutritious![5](javascript:;) They'll give you superhuman speed, agility, heightened senses, and more![6](javascript:;)

---

# M.E.G. WARNING!

#### ☢ Radiation warning! ☢

"SuperGreen SuperApples", made by "The SuperGreen Company" contain a radioactive substance that makes these apples dangerous to eat.  
The list of how much radiation each type of apple emits is below.  

| "SuperApple" Type | Dose of radiation upon consumption | Effects of radiation |
| --- | --- | --- |
| SuperGreen Apples: | 1 rem of radiation | Causes no noticeable effects. |
| ExtraGreen Apples: | 10 rem of radiation | Causes no noticeable effects, except if eaten in bulk, in which case these apples can cause [Acute radiation syndrome](https://en.wikipedia.org/wiki/Acute_radiation_syndrome). |
| HyperGreen Apples: | 100 rem of radiation | Causes [Acute radiation syndrome](https://en.wikipedia.org/wiki/Acute_radiation_syndrome).[7](javascript:;) |

These apples were harvested from 3 apple trees growing along the perimeter of [Level 174](level-174.md), trees that grew some time after all the bases in the level were abandoned. The apples that grow from these trees do indeed give the effects mentioned above, but it is not recommended to buy them or try to get them yourself. The group selling these apples are not to be interacted with.

---

### [Contact us!](https://backrooms-wiki.wikidot.com/object-73/offset/1)

---

Footnotes

[1](javascript:;). found, not founded! You were lucky to even find those apples.

[2](javascript:;). You stumbled upon them, you egotistical jerk.

[3](javascript:;). anomalous and dangerous, stop lying.

[4](javascript:;). It is not recommended to eat more than one apple a week.

[5](javascript:;). Dangerous! Don't eat these, they'll kill you! I swear, if my old boss says one more lie-

[6](javascript:;). *By buying this product, you agree that we are not responsible for feelings of chest pain, arrhythmia, tachycardia, heart attacks, strokes, cancer, radiation poisoning, or death.*

[7](javascript:;). Eating a singular apple can cause nausea, vomiting, a slight headache, increased risk of infection, fatigue, weakness, and a 5% mortality rate.

---

---

Source: [https://backrooms-wiki.wikidot.com/fragment:object-73-0](https://backrooms-wiki.wikidot.com/fragment:object-73-0)
