---
title: "Database Theme"
source: "https://backrooms-wiki.wikidot.com/theme:database"
retrieved_at: "2026-08-23T23:37:50+00:00"
license: CC-BY-SA-3.0
---

# Database Theme

rating: +41[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  
This theme was created by . To import this theme to your page, put the following text anywhere inside it:

[[include :backrooms-wiki:theme:database]]

# Examples

![Missing alt text.](https://backrooms-wiki.wdfiles.com/local--files/theme:database/terminal.jpg)

Terminal

A horizontal rule can be created with 5 hyphens "-----" and extends across the whole page if it's not placed inside anything (eg a blockquote). The lines separating sections of this document are horizontal rules.

---

Titles can be created by putting between one and six plus "+" at the start of the line

[Titles](javascript:;)

[Titles](javascript:;)

# First Title

## Second Title

### Third Title

#### Fourth Title

##### Fifth Title

###### Sixth Title

  

[SD Classes](javascript:;)

[SD Classes](javascript:;)

SURVIVAL DIFFICULTY:

Class 0

- {$one}
- {$two}
- {$three}

SURVIVAL DIFFICULTY:

Class 1

- {$one}
- {$two}
- {$three}

SURVIVAL DIFFICULTY:

Class 2

- {$one}
- {$two}
- {$three}

SURVIVAL DIFFICULTY:

Class 3

- {$one}
- {$two}
- {$three}

SURVIVAL DIFFICULTY:

Class 4

- {$one}
- {$two}
- {$three}

SURVIVAL DIFFICULTY:

Class 5

- {$one}
- {$two}
- {$three}

SURVIVAL DIFFICULTY:

Class unknown

- {$one}
- {$two}
- {$three}

  
   

- [*Tabulator*](javascript:;)
- [*Tabulation*](javascript:;)
- [*Long Tab*](javascript:;)
- [*This empty tab has a really long name for some odd reason. I wonder why?*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)

This is a tab view.

Hey look, more text here.

How quaint.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

> This is a blockquote, created by putting "> " at the start of each line.  
> More text
>
> ---
>
> That's a horizontal rule
>
> > Nested blockquotes[1](javascript:;)

| This is a | table |
| --- | --- |
| You should know | how to make these |
| already | |

[[div class="styled-quote"]]

[[/div]]

This is a styled blockquote.

It can hold many things.

[[div class="dark-styled-quote"]]

[[/div]]

This is a dark styled blockquote.

It can also hold many things.

[[div class="lightblock"]]

[[/div]]

Lightblock!

[[div class="darkblock"]]

[[/div]]

Darkblock!

You are a cat.  
**You are a cat.**  
*You are a cat.*  
You are a cat.  
You are a cat.

---

The font used for everything is VT323.

---

[Theme Code](javascript:;)

[Theme Code](javascript:;)

```
@import url(https://backrooms-wiki.wdfiles.com/local--code/component%3Apatch/1);
 
@import url('https://fonts.googleapis.com/css2?family=VT323&display=swap');
 
:root {
   --theme-base: "black-highlighter";
   --theme-id: "Database";
   --theme-name: "Database Theme";
 
   --base-font-size: 1.175rem;
 
   --logo-image: none;
   --header-title: "The Database";
   --header-subtitle: "";
   --footer-message: "You've been here before...";
 
   --body-font: VT323, monospace;
   --header-font: VT323, monospace;
   --title-font: VT323, monospace;
   --mono-font: VT323, monospace;
 
    --text: 229, 140, 36;
    --link: 184, 86, 24;
    --back: 29, 18, 7;
 
    --white-monochrome: var(--back);
    --pale-gray-monochrome: var(--back);
    --light-gray-monochrome: var(--text);
    --gray-monochrome: var(--back);
    --dark-gray-monochrome: var(--text);
    --black-monochrome: var(--text);
    --pale-accent: var(--link);
    --bright-accent: var(--link);
    --medium-accent: var(--link);
    --dark-accent: var(--link);
    /* --alt-accent: 255, 0, 255; */
 
   --swatch-text-secondary-color: var(--text);
   --swatch-text-light: var(--text);
   --rating-module-button-plus-color: var(--text);
   --rating-module-button-negative-color: var(--text);
   --rating-module-button-cancel-color: var(--text);
   --rating-module-button-credit-color: var(--text);
 
   --ui-button-hover-bg: var(--link);
   --ui-icon-hover-bg: var(--link);
 
   --cecs-accent: var(--link) !important;
   --cecs-dark: var(--text) !important;
   --cecs-light: var(--back) !important;
 
   --border-styling: solid 0.15rem rgb(var(--swatch-border-color));
 
   --background-gradient-distance: 0rem;
 
   --gradient-header: linear-gradient(to top,
      rgba(var(--back)) 0%,
      rgba(var(--back), 0.90) 100%
   );
   --diagonal-stripes: linear-gradient(transparent 0);
 
   --gradient-topmenu: linear-gradient(
      to bottom,
      hsla(0, 0%, 100%, 0) 0%,
      hsla(0, 0%, 100%, 0) var(--header-height-on-desktop),
      rgba(var(--swatch-topmenu-border-color), 1) var(--header-height-on-desktop),
      rgba(var(--swatch-topmenu-border-color), 1) calc(var(--header-height-on-desktop) + 0.15rem),
      rgba(var(--swatch-topmenu-bg-color), 1) calc(var(--header-height-on-desktop) + 0.15rem),
      rgba(var(--swatch-topmenu-bg-color), 0.95) calc(100% - 0.15rem),
      rgba(var(--swatch-topmenu-bg-color), 1) calc(100% - 0.15rem),
      rgba(var(--swatch-topmenu-border-color), 1) calc(100% - 0.15rem),
      rgba(var(--swatch-topmenu-border-color), 1) 100%
   );
}
 
html {
   line-height: 1.175;
}
 
#skrollr-body {
   background-image:
    radial-gradient(circle, rgb(var(--back)) 50%, transparent 0);
   background-repeat: repeat;
   background-size: 0.25em 0.25em;
   width: 100%;
   height: 7.5rem;
}
 
#container {
   background-image: none;
}
 
div#page-options-bottom-2 > a, div#page-options-bottom > a {
   border-radius: 0em;
   -moz-border-radius: 0em;
   border: none;
   transition: none;
}
 
div#page-options-bottom-2 > a:active, div#page-options-bottom-2 > a:hover, div#page-options-bottom > a:active, div#page-options-bottom > a:hover {
   border: none;
}
 
#header, #top-bar {
   background-attachment: scroll;
}
 
#header {
   background-image: none;
   --search-icon-focus-bg-color: var(--swatch-primary-darkest);
}
 
#login-status #account-topbutton {
    border: none;
}
 
#login-status #account-options ul li > a::before {
  background-color: rgb(var(--swatch-primary-darkest));
}
 
#login-status #account-options ul li > a:is(:hover, :active) {
  color: rgb(var(--swatch-primary));
}
 
#header::before {
   content: "";
   position: absolute;
   height: 100%;
   width: 100%;
   left: 0;
   top: 0;
   background-image: var(--logo-image);
   background-size: auto 16rem;
   background-position: center;
   background-repeat: no-repeat;
   opacity: 0.4;
}
 
::selection {
    background: rgb(var(--link));
    color: rgb(var(--back));
    text-shadow: none;
}
 
#header h1, #header h1 a {
   position: absolute;
   top: 1rem;
   margin: 0;
   width: 100%;
   display: flex;
   justify-content: center;
   z-index: 0;
}
 
#header h2, #header h2 span, #header h2 span::before {
   position: absolute;
   top: 2rem;
   margin: 0;
   width: 100%;
   display: flex;
   justify-content: center;
}
 
#header h1 a::before, #header h2 span::before {
   text-shadow: .063rem 0.1rem 0.1rem #0c0c0c;
}
 
#header h1:before, #header h2:before {
   content: "";
}
 
#header div[class*="top-bar"] > ul > li > a {
  height: calc(100% - 0.575em);
}
 
#header div[class*="top-bar"] > ul > li > ul li:is(:hover, :active, :focus-within) > a {
  color: rgb(var(--swatch-primary));
}
 
#top-bar div.mobile-top-bar > ul > li > ul > li > ul > li a, #top-bar div.top-bar > ul > li > ul > li > ul > li a {
  color: rgb(var(--swatch-primary));
}
 
#top-bar div.mobile-top-bar > ul > li > ul > li > ul > li a:hover, #top-bar div.top-bar > ul > li > ul > li > ul > li a:hover {
  color: rgb(var(--swatch-tertiary-color));
}
 
a.newpage {
   background: transparent;
   text-decoration: none
}
 
a.newpage {
   color: rgb(var(--newpage-color))
}
 
#account-topbutton {
   border: var(--border-styling);
}
 
#account-options {
   background-color: rgb(var(--back));
   border: var(--border-styling);
}
 
#account-options>ul>li a:hover {
   color: rgb(var(--text));
}
 
#search-top-box input.empty:hover {
     color: rgb(var(--back));
}
 
#top-bar>ul>li a {
   color: rgb(var(--text));
}
 
#page-title {
   color: rgb(var(--link));
}
 
#page-title:before {
   content: "> ";
}
 
#top-bar div.mobile-top-bar>ul>li>ul>li,
#top-bar div.top-bar>ul>li>ul>li {
    background-color: rgb(var(--back));
}
 
#top-bar div.mobile-top-bar>ul>li>ul>li a,
#top-bar div.top-bar>ul>li>ul>li a {
    color: rgb(var(--text));
}
 
#top-bar div.mobile-top-bar>ul>li>ul>li:hover,
#top-bar div.top-bar>ul>li>ul>li:hover {
    background-color: rgb(var(--text));
}
 
#top-bar div.mobile-top-bar>ul>li>ul>li a:hover,
#top-bar div.top-bar>ul>li>ul>li a:hover {
    color: rgb(var(--back));
}
 
h1, h2, h3, h4, h5, h6 {
   color: rgb(var(--link));
}
 
h1:before, h2:before, h3:before, h4:before, h5:before, h6:before {
    content: "> "
}
 
:is(div.rate-box-with-credit-button div.page-rate-widget-box, div.page-rate-widget-box) :is(.rateup, .ratedown, .cancel) a:is(:hover, :active, :focus)::before {
  background-color: rgb(var(--swatch-primary));
}
 
blockquote, .blockquote, .darkblock, .dark-styled-quote {
   padding: 0.1rem 0.7rem;
   margin: 1rem 0;
   color: rgb(var(--text));
   background: rgb(var(--back));
   border: var(--border-styling) !important;
   box-shadow: 0;
}
 
.dark-styled-quote {
  border-left: solid 0.5rem rgb(var(--swatch-tertiary-color)) !important;
}
 
.styled-quote, .lightblock {
   background-color: rgb(var(--text));
   padding: 0.1rem 0.7rem;
   margin: 1rem 0;
   color: rgb(var(--back));
}
 
.lightblock {
   border: var(--border-styling);
}
 
.styled-quote {
  border-left: solid 0.5rem rgb(var(--swatch-primary-darkest));
}
 
.page-rate-widget-box {
   border: var(--border-styling) !important;
   background: rgb(var(--back));
}
 
.code {
   border: var(--border-styling);
}
 
.scp-image-block .scp-image-caption {
   border-top: var(--border-styling);
}
 
.scp-image-block {
   border: var(--border-styling);
}
 
hr {
   color: transparent;
   background-color: transparent;
   border: 0;
   border-bottom: var(--border-styling);
}
 
.collapsible-block-link:before {
   content: "> "
}
 
.footnotes-footer {
   border: var(--border-styling);
   border-color: rgb(var(--link));
   background-color: rgb(var(--back));
}
 
div#page-options-bottom-2 > a, div#page-options-bottom > a {
   border: var(--border-styling) !important;
   background-color: rgb(var(--back));
   color: rgb(var(--text));
   margin: 0;
   border-collapse: collapse;
   box-sizing: content-box;
}
 
#side-bar .heading p {
   color: rgb(var(--text));
}
 
.owindow .button-bar a, a.button, button, div.buttons input, file, input.button {
   color: rgb(var(--text));
}
 
.printuser img.small {
    display: none;
}
 
::-webkit-scrollbar-thumb,
#side-bar:hover::-webkit-scrollbar-thumb {
   background-color: rgb(var(--text)) !important;
}
 
::-webkit-scrollbar-track,
#side-bar:hover::-webkit-scrollbar-track {
   background: rgb(var(--back)) !important;
}
 
.owindow .button-bar a, a.button, button, div.buttons input, file, input.button {
   transition: none;
}
 
#top-bar div.mobile-top-bar>ul>li,
#top-bar div.top-bar>ul>li {
   transition: none;
}
 
#top-bar div.mobile-top-bar>ul>li>a:after,
#top-bar div.mobile-top-bar>ul>li>a:before,
#top-bar div.top-bar>ul>li>a:after,
#top-bar div.top-bar>ul>li>a:before,
#top-bar>ul>li {
   transition: none;
}
 
#top-bar>ul>li>:after,
#top-bar>ul>li>:before {
   display: none;
}
 
#top-bar li ul {
   transition: none;
}
 
.yui-navset * {
   transition: none;
}
 
:is(#side-bar, #interwiki) div.menu-item a:is(:hover, :active, :focus) {
  color: rgb(var(--swatch-primary));
}
 
:is(#side-bar, #interwiki) div.menu-item a::before {
  background-color: rgb(var(--swatch-primary-darkest));
}
 
#side-bar div.collapsible-block div.collapsible-block-folded > a.collapsible-block-link:is(:hover, :active) {
  color: rgb(var(--swatch-primary));
}
 
#side-bar div.collapsible-block div.collapsible-block-folded > a.collapsible-block-link:is(:hover, :active)::after {
  background: rgb(var(--swatch-primary));
}
 
#side-bar .side-block:first-of-type div {
  filter: hue-rotate(60deg) saturate(10) !important;
}
 
#side-bar .side-block:first-of-type div a:hover {
  background-color: transparent;
}
 
#main-content::before {
    display: none;
}
 
#main-content {
   --tabs-hover-txt: var(--swatch-secondary-color);
   --editor-icon-hover-bg: var(--swatch-primary-darkest);
   --pagetags-text-hover-bg-color: var(--swatch-primary-darkest);
   --footnotes-footer-num-hover-color: var(--swatch-primary-darkest);
}
 
span.printuser a:first-of-type:not(:last-of-type) {
    aspect-ratio: unset; 
}
 
@media only screen and (max-width: 440px) {
    .top-box .top-text p {
        font: 2.35rem VT323 !important;
    }
 
    .bottom-box ul li {
        line-height: 1.5rem !important;
    }
}
 
#page-content a { transition: 0; }
#page-content :not(.yui-nav > li, .page-rate-widget-box > .btn) > a:hover {
   color: rgb(var(--back)); 
   background: rgb(var(--link)); 
   text-decoration: none;
}
 
#page-content {
    --tabs-selected-bg: var(--text);
}
 
#page-content table.wiki-content-table th {
  color: rgb(var(--swatch-primary));
}
 
#main-content::after {
    background-color: rgb(var(--swatch-background));
    background-image: url("data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+DQo8IURPQ1RZUEUgc3ZnIFBVQkxJQyAiLS8vVzNDLy9EVEQgU1ZHIDEuMS8vRU4iICJodHRwOi8vd3d3LnczLm9yZy9HcmFwaGljcy9TVkcvMS4xL0RURC9zdmcxMS5kdGQiPg0KPHN2ZyB2aWV3Qm94PSIwIDAgMTYgMjA2IiB2ZXJzaW9uPSIxLjEiIGlkPSJzdmc1NSIgc29kaXBvZGk6ZG9jbmFtZT0ic2lkZWJhci1hcnJvd3Muc3ZnIiBpbmtzY2FwZTp2ZXJzaW9uPSIxLjEuMiAoMGEwMGNmNTMzOSwgMjAyMi0wMi0wNCkiIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIiB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGRlZnMgaWQ9ImRlZnM1OSIvPjxzb2RpcG9kaTpuYW1lZHZpZXcgaWQ9Im5hbWVkdmlldzU3IiBwYWdlY29sb3I9IiNmZmZmZmYiIGJvcmRlcmNvbG9yPSIjNjY2NjY2IiBib3JkZXJvcGFjaXR5PSIxLjAiIGlua3NjYXBlOnBhZ2VzaGFkb3c9IjIiIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiIGlua3NjYXBlOnBhZ2VjaGVja2VyYm9hcmQ9IjAiIHNob3dncmlkPSJmYWxzZSIgaW5rc2NhcGU6em9vbT0iMy4xNTA0ODU0IiBpbmtzY2FwZTpjeD0iNy45MzUyODUxIiBpbmtzY2FwZTpjeT0iMTAzIiBpbmtzY2FwZTp3aW5kb3ctd2lkdGg9IjE2MDAiIGlua3NjYXBlOndpbmRvdy1oZWlnaHQ9Ijg0MCIgaW5rc2NhcGU6d2luZG93LXg9IjAiIGlua3NjYXBlOndpbmRvdy15PSIwIiBpbmtzY2FwZTp3aW5kb3ctbWF4aW1pemVkPSIxIiBpbmtzY2FwZTpjdXJyZW50LWxheWVyPSJzdmc1NSIvPjx0aXRsZSBpZD0idGl0bGU0MyI+c2lkZWJhci10YWI8L3RpdGxlPjxwb2x5Z29uIHBvaW50cz0iMTMgMTAwIDggMTAwIDggOTggMyAxMDIgOCAxMDYgOCAxMDQgMTMgMTA0IDEzIDEwMCIgZmlsbD0iI2U1OGMyNCIgaWQ9InBvbHlnb240OSIvPjxwb2x5Z29uIHBvaW50cz0iMTMgNDAgOCA0MCA4IDM4IDMgNDIgOCA0NiA4IDQ0IDEzIDQ0IDEzIDQwIiBmaWxsPSIjZTU4YzI0IiBpZD0icG9seWdvbjUxIi8+PHBvbHlnb24gcG9pbnRzPSIxMyAxNjAgOCAxNjAgOCAxNTggMyAxNjIgOCAxNjYgOCAxNjQgMTMgMTY0IDEzIDE2MCIgZmlsbD0iI2U1OGMyNCIgaWQ9InBvbHlnb241MyIvPjwvc3ZnPg==");
}
 
#footer { --swatch-text-secondary-color: var(--back); --footer-link-color: var(--back); --footer-text-color: var(--back); --footer-link-hover-color: var(--text); }
#license-area { --license-link-color: var(--back); --license-text-color: var(--back); --license-link-hover-color: var(--text); }
 
/* License Box */
#page-content .licensebox .collapsible-block-link {
    margin-left: .25em;
    padding: .25em;
    font-weight: 700;
    opacity: .5;
    color: rgb(var(--text));
    -webkit-transition: opacity .5s ease-in-out;
    -moz-transition: opacity .5s ease-in-out;
    transition: opacity .5s ease-in-out;
}
 
#page-content .licensebox .collapsible-block-link:hover {
     color: rgb(var(--link));
}
 
/* Rater with Info */
#page-content div.rate-box-with-credit-button {
    border: 2px solid rgb(var(--text));
    border-bottom-width: 2px;
}
 
#page-content div.rate-box-with-credit-button div.page-rate-widget-box {
    border-width: 0 !important;
}
 
:is(.footnotes-footer, .bibitems) .title, #main-content .page-tags::before {
  color: rgb(var(--swatch-background));
}
 
:is(form#edit-page-form, form#edit-post-form, form#new-post-form, form#new-thread-form) table.form:first-of-type tr:focus-within td:first-of-type, :is(form#edit-page-form, form#edit-post-form, form#new-post-form, form#new-thread-form) .edit-page-bottomtable tr > td:first-of-type > div:first-of-type:focus-within::before, #odialog-container #rename-error-block + table tbody tr:last-of-type:focus-within td:first-of-type, form[onsubmit*="PageTagsModule"] table > tbody > tr:focus-within > td:first-child, #action-area form[onsubmit*="setParent"] table.form tbody > tr:focus-within > td:first-of-type, #action-area form[onsubmit*="RenamePage"] table tbody tr:last-of-type:focus-within td:first-of-type {
  box-shadow: 0 0 0 .15625rem rgb(var(--swatch-tertiary-color));
  color: rgb(var(--swatch-primary-darkest));
}
 
:is(form#edit-page-form, form#edit-post-form, form#new-post-form, form#new-thread-form) textarea {
  outline: 0 solid transparent;
}
 
:is(form#edit-page-form, form#edit-post-form, form#new-post-form, form#new-thread-form) .edit-help-34 > a::after {
  background-color: rgb(var(--swatch-primary-darkest));
}
 
:is(form#edit-page-form, form#edit-post-form, form#new-post-form, form#new-thread-form) .edit-page-bottomtable tr > td:first-of-type > div:first-of-type:focus-within textarea, :is(input.text, textarea):focus {
  box-shadow: 0 0 0 0 rgb(var(--swatch-primary));
}
 
:is(form#edit-page-form, form#edit-post-form, form#new-post-form, form#new-thread-form) .change-textarea-size a:is(:hover, :active, :focus, :focus-within) {
  background-color: rgb(var(--swatch-primary-darkest));
}
 
input[type="checkbox"]:checked {
  border-color: rgb(var(--swatch-primary-darkest));
  outline: 0 solid rgb(var(--swatch-primary-darkest));
  box-shadow: 0 0 0 0 rgb(var(--swatch-primary));
}
 
input[type="checkbox"]:checked::after, input[type="checkbox"]:checked::before {
  background-color: rgb(var(--swatch-tertiary-color));
  box-shadow: 0 0 0 .05em rgb(var(--swatch-primary-darkest));
}
 
#action-area p a:hover {
  background-color: rgb(var(--swatch-primary-darkest));
}
 
input[type="radio"]:checked::before {
  background: rgb(var(--swatch-primary-darkest));
}
 
input[type="radio"], input[type="radio"]:checked {
  box-shadow: 0 0 0 .0625rem rgb(var(--swatch-tertiary-color)),inset 0 0 0 .0625rem rgb(var(--swatch-tertiary-color));
}
 
:not(:is(.page-rate-widget-box, #search-top-box-form)) > .btn:is(:hover, :active, :focus, :focus-within), #action-area a.action-area-close:is(:hover, :active, :focus, :focus-within), :not(:is(.page-rate-widget-box, #search-top-box-form)) > div.buttons input:is(:hover, :active, :focus, :focus-within), table.page-history tr td.optionstd a:is(:hover, :active, :focus, :focus-within), #site-tools-box ul.nav li a:is(:hover, :active, :focus, :focus-within) {
  color: rgb(var(--swatch-primary));
}
 
a:is(:hover, :active, :focus, :focus-within) {
  background-color: rgb(var(--swatch-primary-darkest));
  text-decoration: none;
}
 
#st-action-area > a:not([href="javascript:;"]):not(.btn):is(:hover, :active, :focus, :focus-within) {
  box-shadow: inset 0 -6.5ch 0 0 rgb(var(--swatch-primary-darkest));
  color: rgb(var(--swatch-primary));
  -webkit-text-decoration: none;
  text-decoration: none;
}
 
table.page-files tr > td > a:not(.btn):is(:hover, :active, :focus, :focus-within) {
  box-shadow: inset 0 -5em 0 0 rgb(var(--swatch-primary-darkest));
  color: rgb(var(--swatch-primary));
  -webkit-text-decoration: none;
  text-decoration: none;
}
 
#odialog-container .owindow :not(:is(.page-rate-widget-box, #search-top-box-form)) > a.btn:is(:hover, :active, :focus, :focus-within) {
  background-color: rgb(var(--ui-button-hover-bg));
  color: rgb(var(--swatch-primary));
}
 
:is(#action-area, #main-content) .pager span a:is(:hover, :active, :focus, :focus-within) {
  color: rgb(var(--swatch-primary));
}
 
.hovertip .f-heading {
  color: rgb(var(--swatch-primary));
}
 
.sd-container {
   --sd-border: var(--swatch-alternate-color);
   --sd-symbol: var(--swatch-primary);
}
```

Footnotes

[1](javascript:;). And here's a footnote!

---

Source: [https://backrooms-wiki.wikidot.com/theme:database](https://backrooms-wiki.wikidot.com/theme:database)
