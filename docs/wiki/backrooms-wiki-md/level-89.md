---
title: "Level 89 - \"Dreaded Park\""
source: "https://backrooms-wiki.wikidot.com/level-89"
retrieved_at: "2026-08-23T23:37:05+00:00"
license: CC-BY-SA-3.0
---

# Level 89 - "Dreaded Park"

```
:root {
    --lh-red: #c0392b;
    --lh-blue: #2980b9;
    --lh-green: #27ae60;
    --lh-dark-green: #16a085;
    --lh-purple: #8e44ad;
    --lh-orange: #e67e22;
    --lh-yellow: #f1c40f;
 
    --lh-paper-bg: 255, 251, 240;
    --lh-string-color: 192, 57, 43;
    --lh-book-color: var(--gray-monochrome);
    --lh-tape-color: 90,90,90,0.3;
    --lh-white-bg: 249,249,249;
    --lh-dark-bg: 50, 50, 50;
    --lh-highlighter: var(--bright-accent);
    --lh-border-color: var(--gray-monochrome);
    --lh-wiki-note-color: var(--bright-accent)
}
 
/**
 *  旧代码合集
 *  为了向下兼容而保留
 */
 
.grid-container{display:flex;flex-direction:row;flex-wrap:wrap;width:100%}.grid-container,.grid-container [class*=grid]{box-sizing:border-box}[class*=grid]{padding:5px}.grid{width:100%}.grid-large{width:75%}.grid-big{width:50%}.grid-medium{width:33.33%}.grid-small{width:25%}@media screen and (min-width:768px){.wd-grid-large{width:75%}.wd-grid,.wd-grid-big{width:50%}.wd-grid-medium{width:33.33%}.wd-grid-small{width:25%}}.text-hover-hide{opacity:0;transition:opacity .3s}.text-hover-hide:hover{opacity:1}.text-block-hide{background:rgb(var(--black-monochrome));color:rgb(var(--black-monochrome));transition:background .3s}.text-block-hide:hover{background:0 0}.text-blur-hide,.text-blur-hover-hide{filter:blur(.3rem);-webkit-filter:blur(.3rem) transition: blur .3s}.text-blur-hover-hide:hover{filter:blur(0);-webkit-filter:blur(0)}.lyric-box{text-align:center;font-size:1.05rem;display:flex;flex-direction:column;flex-wrap:wrap;justify-content:center}.lyric-box p{margin:1.5em auto}.lyric-box.with-bigger-line p{margin:3em auto}
 
/**
 *  便签纸
 *  notepaper
 */
 
.notepaper {
    background: linear-gradient(rgb(var(--lh-paper-bg)) 95%, #ddd 0);
    line-height: 2em;
    background-size: 100% 2em;
    background-attachment: local;
    border: 2em solid rgb(var(--lh-paper-bg));
    box-shadow: 0 0.1rem 0.3rem rgba(0,0,0,0.2);
    padding: 0;
    margin: 1em auto;
    box-sizing: border-box;
    position: relative
}
.notepaper p {
    margin: 0;
    font-size: 1.05rem;
    letter-spacing: 0.1rem;
    line-height: inherit
}
.notepaper.narrow,
.notepaper.wide {
        width: 90%
}
@media screen and (min-width:768px){
    .notepaper.narrow {
        width: 50%
    }
    .notepaper.wide {
        width: 75%
    }
}
 
.notepaper.tight {
    border-width: 1rem;
    border-left-width: 1.2rem;
    border-right-width: 1.2rem;
    line-height: 1.8em;
    background-size: 100% 1.8em;
    font-size: 13px
}
 
.notepaper.with-string::before {
    content: '';
    width: 0.5em;
    height: 6rem;
    background: rgb(var(--lh-string-color));
    top: -2rem; right: -1rem;
    display: block;
    position: absolute;
    box-shadow: 0 0.1em 0.2em rgba(0,0,0,0.2);
    clip-path: polygon(-100% -100%,100% 0%,100% 100%,50% 98%,0% 100%);
}
.notepaper.with-tape::before {
    content: '';
    border: 1px solid #ddd;
    background: rgba(var(--lh-tape-color));
    width: 1.5em;
    height: 4em;
    transform: rotate(45deg);
    display: block;
    position: absolute;
    top: -3em;
    left: -1.8em
}
 
.notepaper.tight.with-string::before {
    top: -1rem; 
    right: -0.25rem;
}
.notepaper.tight.with-tape::before {
    top: -2.5em;
    left: -1.3em
}
 
.notepaper.page {
    min-height: 36em;
    counter-increment: page;
    display: flex;
    flex-direction: column;
    justify-content: space-between
}
@media screen and (min-width:768px){
    .notepaper.page {
        width: 70%
    }
}
.notepaper.page:after {
    content: counter(page);
    display: block;
    text-align: center
}
.notepaper-group {
    counter-reset: page;
}
 
.book-pattern {
    display: flex;
    flex-wrap: wrap;
    flex-direction: row
}
.book-pattern .notepaper.page:not(.notepaper > .notepaper) {
    width: 100%
}
@media screen and (min-width: 768px) {
    .book-pattern .notepaper.page:not(.notepaper > .notepaper) {
        width: 50%
    }
}
 
.book-wrapper {
    background: rgb(var(--lh-book-color));
    padding: 0.5rem;
    box-shadow: 0 0.1rem 0.2rem rgba(0,0,0,0.2);
    border-radius: 5px;
    margin: 1rem auto
}
@media screen and (min-width: 768px) {
    .book-wrapper .notepaper {
        margin: 0
    }
}
 
/**
 *  文字修饰
 */
 
.text-highlighted {
    position: relative
}
.text-highlighted::before {
    content: "";
    position: absolute;
    height: 0.9em;
    bottom: 2px;
    left: -2px;
    width: 105%;
    z-index: -1;
    background-color: rgb(var(--lh-highlighter));
    opacity: .6;
    transform: skew(-15deg);
    transition: opacity .2s ease;
    border-radius: 3px 8px 10px 6px;
    transition: 0.1s ease background-color;
}
 
.text-underlined {
    text-decoration: underline;
    text-underline-offset: 4px;
    text-decoration-thickness: 2px;
    text-decoration-color: rgb(var(--lh-highlighter))
}
.text-wavy {
    text-decoration: underline wavy;
    text-underline-offset: 4px;
    text-decoration-color: rgb(var(--lh-highlighter))
}
 
.text-circled,
.text-squared {
    display: inline-block;
    border: 2px solid rgb(var(--lh-highlighter));
    border-radius: 100%;
    box-sizing: border-box
}
.text-squared { border-radius: 0 }
 
.text-shadow { text-shadow: 0.075em 0.075em 0 rgb(var(--lh-highlighter)) }
 
.text-highlighted.td-red::before { background: var(--lh-red) }
.text-circled.td-red, .text-squared.td-red { border-color: var(--lh-red) }
.text-underlined.td-red, .text-wavy.td-red { text-decoration-color: var(--lh-red) }
 
.text-highlighted.td-blue::before { background: var(--lh-blue) }
.text-circled.td-blue, .text-squared.td-blue { border-color: var(--lh-blue) }
.text-underlined.td-blue, .text-wavy.td-blue { text-decoration-color: var(--lh-blue) }
 
.text-highlighted.td-green::before { background: var(--lh-green) }
.text-circled.td-green, .text-squared.td-green { border-color: var(--lh-green) }
.text-underlined.td-green, .text-wavy.td-green { text-decoration-color: var(--lh-green) }
 
.text-highlighted.td-darkgreen::before { background: var(--lh-dark-green) }
.text-circled.td-darkgreen, .text-squared.td-darkgreen { border-color: var(--lh-dark-green) }
.text-underlined.td-darkgreen, .text-wavy.td-darkgreen { text-decoration-color: var(--lh-dark-green) }
 
.text-highlighted.td-purple::before { background: var(--lh-purple) }
.text-circled.td-purple, .text-squared.td-purple { border-color: var(--lh-purple) }
.text-underlined.td-purple, .text-wavy.td-purple { text-decoration-color: var(--lh-purple) }
 
.text-highlighted.td-yellow::before { background: var(--lh-yellow) }
.text-circled.td-yellow, .text-squared.td-yellow { border-color: var(--lh-yellow) }
.text-underlined.td-yellow, .text-wavy.td-yellow { text-decoration-color: var(--lh-yellow) }
 
.text-highlighted.td-orange::before { background: var(--lh-orange) }
.text-circled.td-orange, .text-squared.td-orange { border-color: var(--lh-orange) }
.text-underlined.td-orange, .text-wavy.td-orange { text-decoration-color: var(--lh-orange) }
 
/* 隐藏文字 */
 
.text-blank { color: rgba(0,0,0,0) }
.text-block { 
    background: rgb(var(--black-monochrome));
    color: rgb(var(--black-monochrome)); 
}
.text-blur { 
    filter: blur(0.3em);
    -webkit-filter: blur(0.3em)
}
 
.text-hoverback,
.text-selectback {
    transition-duration: 0.3s;
    transition-property: background, transform, color
}
 
.text-blank.text-hoverback:hover,
.text-blank.text-selectback::selection,
.text-blank.text-selectback *::selection { color: rgb(var(--black-monochrome)) }
 
.text-block.text-hoverback:hover { background: transparent!important }
.text-block.text-selectback::selection,
.text-block.text-selectback *::selection { color: rgb(var(--white-monochrome, 255, 255, 255)) }
 
.text-blur.text-hoverback:hover { filter: blur(0)!important; -webkit-filter: blur(0)!important }
 
/**
 * 附加项
 */
.with-border, .with-box-style { border: 1px solid rgb(var(--bright-accent)) }
.with-border-dark { border: 1px solid rgb(var(--black-monochrome)) }
.with-border-light { border: 1px solid rgb(var(--white-monochrome)) }
.with-border-thick { border-width: 2px }
 
.with-shadow-sm { box-shadow: 0 0 0.1em rgba(0,0,0,0.2) }
.with-shadow { box-shadow: 0 0.1em 0.2em rgba(0,0,0,0.2) }
.with-shadow-lg { box-shadow: 0 0.15em 0.3em rgba(0,0,0,0.2) }
.with-shadow-xl { box-shadow: 0 0.2em 0.5em rgba(0,0,0,0.2) }
.with-shadow-xxl { box-shadow: 0 0.25em 0.8em rgba(0,0,0,0.2) }
 
.with-padding, .with-box-style { padding: 0.25em 1em }
.with-p-sm { padding: 0.125em 0.5em }
.with-p-lg { padding: 0.5em 2em }
 
.with-margin, .with-box-style { margin: 1em auto }
.with-m-sm { margin: 0.5em auto }
.with-m-lg { margin: 2em auto }
 
.with-narrow-width { 
    width: 90%!important; 
    margin-left: auto; 
    margin-right: auto 
}
@media screen and (min-width: 768px) {
    .with-narrow-width { width: 75%!important }
}
[class*="with-bg-"], [class*="with-bg-"] h1 { color: #fff!important }
.with-bg-red { background: var(--lh-red)!important }
.with-bg-blue { background: var(--lh-blue)!important }
.with-bg-green { background: var(--lh-green)!important }
.with-bg-darkgreen { background: var(--lh-dark-green)!important }
.with-bg-yellow { background: var(--lh-yellow)!important }
.with-bg-orange { background: var(--lh-orange)!important }
.with-bg-purple { background: var(--lh-purple)!important }
 
/**
 * 删除类
 */
 
.offwith-shadow { box-shadow: none!important }
.offwith-border { border: none!important }
.offwith-padding, .offwith-pam { padding: 0!important }
.offwith-margin, .offwith-pam { margin: 0!important }
 
.offwith-width-limit {
    width: auto!important;
    margin-left: auto!important;
    margin-right: auto!important
}
 
div[class*="grider"].offwith-grid-gap { grid-gap: 0!important }
 
/**
 * 网格布局
 */
 
/* Gridder 容器 */
 
div[class*="gridder"] {
    display: grid;
    box-sizing: border-box;
    grid-gap: 1rem;
    padding: 0
}
div[class*="gridder"] * { box-sizing: border-box }
 
.gridder, .gridder-col-2 {
    grid-template-columns: 1fr 1fr;
}
.gridder-col-3 {
    grid-template-columns: repeat(3, 1fr);
}
.gridder-col-4 {
    grid-template-columns: repeat(4, 1fr);
}
 
@media screen and (min-width: 768px) {
    .pc-gridder, .pc-gridder-col-2 {
       grid-template-columns: 1fr 1fr;
   }
   .pc-gridder-col-3 {
       grid-template-columns: repeat(3, 1fr);
   }
   .pc-gridder-col-4 {
       grid-template-columns: repeat(4, 1fr);
   }
}
 
.spanner, .spanner-2 {
    grid-column-start: span 2;
}
.spanner-3 {
    grid-column-start: span 3;
}
 
/**
 * 告示组件
 */
.signblock,
.signblock-dark,
.signblock-warn {
    margin: 1rem auto;
    box-shadow: 0 0.1rem 0.3rem rgba(0,0,0,0.4);
    background: rgb(var(--lh-white-bg));
    font-size: 1.05rem;
    padding: 2rem
}
@media screen and (min-width: 768px) {
    .signblock,
    .signblock-dark,
    .signblock-warn {
        width: 75%
    }
}
.signblock-dark, 
.signblock-dark h1 {
    background: rgb(var(--lh-dark-bg));
    color: #fff
}
.signblock-warn, 
.signblock-warn h1 {
    background: var(--lh-red);
    color: #fff
}
 
.signblock h1,
.signblock-dark h1,
.signblock-warn h1 {
    text-align: center;
    font-size: 2rem;
    margin: 0;
    font-weight: 700
}
.signblock-img {
    display: flex;
    flex-direction: row;
    justify-content: center
}
.signblock-img img {
    width: 8em
}
.signblock-footer {
    font-size: 0.9em;
    text-align: center;
    margin: 0.5rem 0;
    font-weight: bolder;
    display: block
}
 
/**
 * 报告
 */
 
.reportblock,
.reportblock-dark {
    border: 2px solid rgb(var(--lh-border-color));
    box-shadow: 0 0.1rem 0.2rem rgba(0,0,0,0.3);
    background: rgb(var(--white-monochrome));
    padding: 0.8rem 1.5rem;
    padding-bottom: 0.4rem;
    margin: 1.5rem auto;
    margin-bottom: 1rem;
    position: relative
}
 
.reportblock hr,
.reportblock-dark hr {
    background-color: rgb(var(--lh-border-color));
    margin-left: -1.5rem;
    margin-right: -1.5rem
}
 
.reportblock h1:first-child,
.reportblock-dark h1:first-child {
    position: absolute;
    top: -1rem;
    left: 1.5rem;
    font-size: 110%;
    font-weight: 600;
    background: rgb(var(--lh-border-color));
    color: #fff;
    padding: 0.2rem 0.5rem;
    margin: 0;
}
 
.reportblock-dark,
.reportblock-dark h1 {
    border-color: rgb(var(--lh-white-bg));
    background: rgb(var(--lh-dark-bg));
    color: #fff
}
 
.reportblock-dark hr {
    background-color: rgb(var(--lh-white-bg));
}
 
/* 更好的折叠框 */
 
.bettercollap {
  margin: 1em 0;
}
 
.bettercollap .collapsible-block {
  width: auto;
  overflow: hidden;
  border: 1px solid rgb(var(--lh-border-color))
}
 
.bettercollap .collapsible-block-content,
.bettercollap .collapsible-block-link {
  background: rgb(var(--white-monochrome));
  padding: 0.5em
}
 
.bettercollap .collapsible-block-content {
  padding-left: 1em;
  padding-right: 1em
}
 
.bettercollap .collapsible-block-link {
  color: rgb(var(--lh-border-color));
  background: rgb(var(--white-monochrome));
  transition: .3s;
  display: block;
}
.bettercollap .collapsible-block-link:hover,
.bettercollap .collapsible-block-unfolded .collapsible-block-link,
.styledcollap.bettercollap .collapsible-block-link {
  color: rgb(var(--white-monochrome));
  background: rgb(var(--lh-border-color))!important;
  text-decoration: none
}
 
.bettercollap .collapsible-block-link:hover a { color: rgb(var(--white-monochrome)) }
 
.bettercollap .collapsible-block-link::before {
  content: "\25BC";
  display: inline-block;
  margin-right: 0.5em;
  transform: rotate(-90deg) scale(0.9)
}
.bettercollap .collapsible-block-unfolded .collapsible-block-link::before {
   transform: rotate(0) scale(0.9)
}
 
.bettercollap .collapsible-block + .collapsible-block { border-top: none }
 
.styledcollap.bettercollap .collapsible-block {
  border-radius: 2px;
  box-shadow: 0 0.1rem 0.2rem rgba(0,0,0,0.3)
}
 
.styledcollap.bettercollap .collapsible-block-content {
  background-color: rgb(var(--pale-gray-monochrome));
  border-width: 3px
}
 
.styledcollap.bettercollap .collapsible-block-link:hover {
  background: rgba(var(--lh-border-color),0.95)!important;
}
 
/**
 * 提示框
 */
 
.infoblock {
    color: #f1f1f1;
    font-weight: bold;
    background: #424242;
    padding: 5px 5px 5px 5px;
    border-radius: 4px;
    margin: -0.5rem 0 1rem 0;
    display: block;
    width: fit-content;
    padding-right: 25px;
}
 
.infoblock::before {
    content: "ⓘ "
}
 
/**
 * 单页迭代 
 */
 
.offset-page:not(:target), .offset-page:target ~ div#u-default-page { display: none }
.offset-page:target { display: block }
```

```
:root {
   --black: 245, 245, 245;
   --white: 0, 0, 0;
   --m: 53, 99, 102;
   --x: 61, 66, 66;
}
#side-bar .side-block div a img {
    filter: none;
    filter: brightness(0);
}
```

```
@media only screen and (min-width: 769px) {
#main-content {
    padding: 2rem 3rem;
    -webkit-box-shadow: none;
    -moz-box-shadow: none;
    box-shadow: none;
    border-left: none;
    border-right: none;
}
}
```

```
:root {
   --header-subtitle: "A Dream in Reality";
}
```

```
/*
   Лиминальная Тема
   [2020 Wikidot Тема]
   оригинальный код от Линча и Этоиле
   доработка и обновление от Айзека и МХ'а
*/
 
@import url("https://backrooms-wiki.wikidot.com/component:fantasque-sans-mono/code/1");
@import url("https://ru-backrooms-wiki.wdfiles.com/local--files/component%3Atheme/normalize-archived.css");
@import url("https://ru-backrooms-wiki.wdfiles.com/local--files/component%3Atheme/bhl-archived.css");
@import url("https://ru-backrooms-wiki.wdfiles.com/local--files/component%3Atheme/sidebar.css");
@import url("https://ru-backrooms-wiki.wdfiles.com/local--files/component%3Atheme/user-menu.css");
@import url("https://ru-backrooms-wiki.wdfiles.com/local--files/component%3Atheme/owindows.css");
@import url("https://ru-backrooms-wiki.wdfiles.com/local--files/component%3Atheme/forum.css");
 
:root {
   --theme-base: "black-highlighter";
   --theme-id: "liminal";
   --theme-name: "Liminal Theme";
 
   --logo-image: url("https://backrooms-wiki.wikidot.com/local--files/component:theme/logo.svg");
   --header-title: "Закулисье";
   --header-subtitle: "Вы бывали здесь раньше.";
 
   --body-font: Arial, sans-serif;
   --header-font: 'Fantasque Sans Mono', monospace;
   --title-font: 'Fantasque Sans Mono', monospace;
   --mono-font: 'Fantasque Sans Mono', monospace;
 
   --white-monochrome: 237, 233, 223;
   --pale-gray-monochrome: 255, 251, 240;
   --light-gray-monochrome: 160, 160, 160;
   --gray-monochrome: 72, 69, 60;
   --black-monochrome: 25, 20, 16;
   --bright-accent: 140, 136, 126;
   --medium-accent: 72, 69, 60;
   --dark-accent: 140, 136, 126;
   --pale-accent: 140, 136, 126;
 
   --swatch-topmenu-border-color: var(--medium-accent);
 
   --link-color: 230, 23, 68;
   --hover-link-color: 230, 23, 68;
 
   --background-gradient-distance: 0rem;
 
   --gradient-header: linear-gradient(to top,
      rgba(var(--medium-accent)) 0%,
      rgba(var(--medium-accent), 0.90) 100%
   );
   --diagonal-stripes: linear-gradient(transparent 0);
 
   --header-h2-font-size: calc(var(--base-font-size)*1.35);
   --header-height-on-desktop: 10rem;
   --header-height-on-mobile: 10rem;
   --sidebar-width-on-desktop: 20rem;
}
 
body#html-body{
   overflow-x: hidden;
}
 
div.wd-adunit{ display: none !important; }
 
#skrollr-body {
   background-image:
    radial-gradient(circle, rgb(var(--medium-accent)) 50%, transparent 0);
   background-repeat: repeat;
   background-size: 0.25em 0.25em;
   width: 100%;
   height: 10rem;
}
 
#header h1 a {
   line-height: 0.6;
}
 
#side-bar .side-block div a img { filter: none; }
#side-bar .heading p { font-family: var(--title-font); font-size: 1rem; text-shadow: none; }
@media only screen and (min-width: 769px) { #side-bar { padding-left: 0.75rem; top: 0; } }
@media only screen and (max-width: 769px) { #side-bar .img-links { padding: 10px 0; } }
 
#container {
   background-image: radial-gradient(circle, rgb(var(--medium-accent), 0.05) 50%, transparent 0);
   background-size: 0.25em 0.25em;
   background-repeat: repeat;
   background-attachment: fixed;
}
 
div#page-options-bottom-2 > a, div#page-options-bottom > a {
   border-radius: 0em;
   -moz-border-radius: 0em;
   border: none;
}
 
div#page-options-bottom-2 > a:active, div#page-options-bottom-2 > a:hover, div#page-options-bottom > a:active, div#page-options-bottom > a:hover {
   border: none;
}
 
#header, #top-bar {
   background-attachment: scroll;
}
 
#header {
   background-image: none;
}
 
#header::before {
   content: "";
   position: absolute;
   height: 95%;
   width: 100%;
   left: 0;
   top: 0;
   background-image: var(--logo-image);
   background-size: auto 18rem;
   background-position: center;
   background-repeat: no-repeat;
   opacity: 0.5;
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
 
a.newpage {
   background: transparent;
   text-decoration: none
}
 
a.newpage {
    color: rgb(var(--newpage-color))
}
 
a {
    transition: 150ms cubic-bezier(0.4, 0, 0.2, 1);
    text-decoration: underline;
    text-decoration-color: transparent;
}
 
#page-title, .meta-title {
   border-color: rgb(var(--swatch-tertiary-color));
}
 
hr {
    border: none;
    background-color: rgb(var(--swatch-tertiary-color));
}
 
div.block-center {
   min-width: 30%
}
 
@media only screen and (max-width:768px) {
   div.block-center {
      min-width: 40%
   }
}
 
blockquote {
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.styled-quote {
   background-color:rgb(var(--pale-gray-monochrome));
   border-left: 0.5rem solid rgba(var(--gray-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.dark-styled-quote {
   background-color:rgb(var(--gray-monochrome));
   border-left: 0.5rem solid rgba(var(--pale-gray-monochrome));
   color:rgb(var(--white-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.dark-styled-quote a{
color: rgb(var(--swatch-menubg-medium-color));
}
 
.lightblock {
   background-color:rgb(var(--pale-gray-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
.darkblock {
   background-color:rgb(var(--gray-monochrome));
   color:rgb(var(--white-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
.darkblock a {
color: rgb(var(--swatch-menubg-medium-color));
}
 
.interwiki1_title {
 
    color: rgb(80,77,66);
    border-bottom: solid 1px rgb(80,77,66);
    padding-left: 15px;
    margin-top: 10px;
    margin-bottom: 5px;
    font-size: 8pt;
    font-weight: bold;
 
}
 
.interwiki1_entry {
 
    position: relative;
    margin: 2px 0;
 
}
 
.interwiki1_entry p::before {
 
    content: "■";
    font-size: 9px;
    color: rgb(80,77,66);
    position: relative;
    margin: 0 7px 0 5px;
    bottom: 3px;
 
}
 
.interwiki1_entry a, .interwiki1_entry a:visited {
 
    font-weight: bold;
    color: #b01;
    text-decoration: none;
    background: transparent;
 
}
 
.interwiki1_entry a:hover {
 
    background-color: transparent;
    text-decoration: underline;
 
}
 
div.scpnet-interwiki-wrapper {
    margin: 0;
    width: auto;
}
iframe.scpnet-interwiki-frame {
    border: inherit;
    width: 100%;
    height: 230px;
}
@media (min-width:768px) {
    div.scpnet-interwiki-wrapper,
    iframe.scpnet-interwiki-frame {
        width: 100%;
    }
}
 
#toc {
    background-color:rgb(var(--pale-gray-monochrome));
    border: none;
    border-left: 0.5rem solid rgba(var(--gray-monochrome));
    border-right: 0.5rem solid rgba(var(--gray-monochrome));
    margin: 0.5rem 0 0.5rem 0;
    padding: 0;
    box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
#toc.floatright { margin: 0.5rem 0 0.5rem 0.5rem; }
#toc.floatleft { margin: 0.5rem 0.5rem 0.5rem 0; }
#toc #toc-action-bar { padding: 2px 2px 2px 0.5em; }
#toc .title { font-family: var(--mono-font); margin: 0; padding: 0.3em 2em; background-color: rgb(var(--gray-monochrome)); color: rgb(var(--white-monochrome)); }
#toc-list { margin: 0.5em 1em 0.5em 0; }
#toc-list a { transition:0.3s,text-decoration-color 0s; padding:0px 4px; }
#toc-list a:hover { background:rgb(var(--pale-accent));color:rgb(var(--pale-gray-monochrome));text-decoration:none; }
 
span.printuser a { 
    transition:0.3s ease,text-decoration-color 0s;
}
 
span.printuser a:hover {
    text-decoration: none;
    color: rgb(var(--pale-gray-monochrome));
}
 
span.printuser img.small {
   transition: 0.5s;
}
 
span.printuser img.small:hover {
   transform: scale(4);
   transition-delay: 0.5s;
}
 
#avatar-hover-container {
   display: none;
}
 
#search-top-box-input {
    display: none;
}
 
#search-top-box-form input[type='submit'] {
    padding: 5px 10px;
    font-size: 100%;
    background-color: rgb(var(--medium-accent));
    border: 2.5px solid rgb(var(--pale-accent));
    border-radius: 11px 5px 5px 11px;
}
 
#search-top-box {
    right: -25px;
    top: 50px;
}
 
  #search-top-box-form input[type='submit']:hover, #search-top-box-form input[type='submit']:focus {
    text-decoration: none;
    text-shadow: none;
    background-color: rgb(var(--light-gray-monochrome));
    color: white;
    cursor: pointer;
    padding: 5px 10px;
    font-size: 100%;
    border: 2.5px solid rgb(var(--pale-accent));
    border-radius: 11px 5px 5px 11px;
}
 
@media only screen and (max-width: 768px) {
  #login-status {
    right: 6px;
    padding: 1px 8px;
    font-size:80%;
}
  #header::before {
    top: 11px;
}
  #header h1, #header h1 a {
    top: 17px;
    font-size: 150%;
}
  #header h2, #header h2 span, #header h2 span::before {
    top: 31px;
}
  #search-top-box-form input[type='submit'] {
    padding: 1px 8px;
    font-size: 80%;
}
  #search-top-box {
    right: 6px;
    top: 40px;
}
  #search-top-box-form input[type='submit']:hover, #search-top-box-form input[type='submit']:focus {
    padding: 1px 8px;
    font-size: 80%;
}
  #toc {
    display: contents;
}
  #toc #toc-action-bar {
    margin: 0.5rem 0 0 0;
    padding: 2px 0 2px 1em;
    background-color: rgb(var(--pale-gray-monochrome));
    border-left: 0.5rem solid rgba(var(--gray-monochrome));
    border-right: 0.5rem solid rgba(var(--gray-monochrome));
    box-shadow: 0 0.3rem 0.3rem rgb(0 0 0 / 25%);
}
  div#toc-action-bar a { padding: 0 4px; }
  #toc .title {
    margin: 0 0 0.5rem 0;
    padding: 0.5rem 2em 0.5rem 2em;
    background-color: rgb(var(--gray-monochrome));
    box-shadow: 0 0.3rem 0.3rem rgb(0 0 0 / 25%);
}
  #toc-list {
    margin: 0.5rem 0 0.5rem 0;
    padding: 0.5rem 1em 0.5rem 0;
    background-color: rgb(var(--pale-gray-monochrome));
    border-left: 0.5rem solid rgba(var(--gray-monochrome));
    border-right: 0.5rem solid rgba(var(--gray-monochrome));
    box-shadow: 0 0.3rem 0.3rem rgb(0 0 0 / 25%);
}
}
 
#footer {
    height: auto;
    color: rgba(var(--swatch-secondary-color), .7);
    font-size: 80%;
    margin: 0;
}
 
#license-area {
    --link-color: var(--swatch-primary-darkest);
    --visited-link-color: var(--swatch-primary-darkest);
    --hover-link-color: var(--swatch-primary-darkest);
    padding: 0.55em;
    margin: 0;
    width: auto;
    background-color: rgb(var(--swatch-menubg-medium-dark-color));
    color: rgb(var(--swatch-text-secondary-color));
    z-index: 11;
}
 
@media only screen and (max-width: 768px) {
@supports (display:grid) {
#footer {
    font-size: 10px;
}
#license-area {
    bottom: 0;
    margin: 0 auto;
    height: auto;
    font-size: .9em;
    line-height: 1;
    z-index: 2
}
}
}
 
#main-content .page-tags {
    border: 2.5px solid rgb(var(--pale-accent));
    border-radius: 11px 5px 5px 11px;
    padding: 5px;
    display: flex;
    align-items: stretch;
}
 
.page-tags::before {
    content: "Теги";
    font-size: 80%;
    font-weight: bold;
    background-color: rgb(var(--medium-accent));
    background-color: rgb(var(--medium-accent));
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    text-align: center;
    padding: 1px 6px;
    color:rgb(var(--white-monochrome));
    margin-right: 0.3em;
    border-radius: 9px 3px 3px 9px;
}
 
ul { padding-inline-start: 1rem; list-style: disc; }
 
#main-content .page-tags span { border-top: none; max-width: 100%; align-self: center; }
#main-content .page-tags span a { transition:0.3s,text-decoration-color 0s;padding:0px 4px; }
#main-content .page-tags span a:hover { background:rgb(var(--pale-accent));color:rgb(var(--pale-gray-monochrome));text-decoration:none; }
div.page-watch-options a { transition:0.3s,text-decoration-color 0s;padding:2px 2px; }
div.page-watch-options a:hover { background:rgb(var(--pale-accent));color:rgb(var(--pale-gray-monochrome));text-decoration:none; }
```

[SHOW CONTENT WARNINGS!](javascript:;)

[HIDE CONTENT WARNINGS!](javascript:;)

Topics such as murder, suicide *will* be mentioned, though not explicitly. (In that order.)

  
> **Overseer B:** Justin, I'm going to need your attention. This is urgent.
>
> **Overseer A:** *\*Slightly annoyed, looking up from his device\** What is it, Kat?
>
> **Overseer B:** I really have to show you these. Here, take these files. Meet with me at my office when you understand the correlation between them. The only thing I can say is that it is still unclear whether it's a phenomenon or a level.

*Kat puts the files in her hand on Justin's desk as she storms out of the office.*

> **Overseer A:** Kat, what do you mean- Kat, wait! KAT!

*… But she had already left the room.*

> **Overseer A:** Oh my GOD, has she *always* been so annoying like this?!

*Justin's eyes caught the files; they looked rather intriguing to him, since he had nothing to do that day. The files seemed to be a copy, modified with footnotes from Kat herself. The first file was… Kat's handwriting.*

> Hey, Justin.
>
> I've summed up these files from the M.E.G. database. You will see the relation between these files once you read them all.
>
> -Katherine

—

## LOG 1 - 16.11.2018[1](javascript:;)

  
You know, there are so many words to start with a diary, or a journal perhaps? I've seen people use "Dear diary," or something along those lines, but I still couldn't decide what to start with. So, I wrote this instead. Hopefully, no one will ever be able to see this.

Dear diary. Even though I don't remember anything, life feels distant and new to me. I am in some sort of outpost, and the adults in it told me that they had found me unconscious, and that I had been wandering in "[Level 0](level-0.md)" for maybe days. They also say that I have been out for 3 whole days. I'm -or mostly the adults- are trying to find out who I am, asking questions like: "What's your name?" Or, "How old are you?" "Do you know what happened?" I'm really not getting any privacy, and it is hard to believe this bullshit. I mean, what do you *mean* you are from the "Meg," and that I am safe? I'm starting to think that these people will send me off to a freak show, or a factory, even! I really don't want to think about it!! :( answered that I was "Byron Candlelighter," and that I was 11 years old. That's all I remember, I think. So, hello, I'm Byron!

---

## LOG 2 - 18.11.2018

Dear diary (fuck I really need to do something original), I don't see anything. This fuckass place goes on forever. I don't want to die, especially when I don't remember anything. Shit.

---

### **Update 1:** I escaped.

I made a run for it. Everyone chased me like I was some sort of a criminal escaping from prison, but I think they lost track of me. I'm pretty sure that parking lots like this shouldn't be… this big. It's more of a maze, even. Who the hell even constructed this place?! The doors won't even lead anywhere! I'll update when something different happens.

---

### **Update 2:** A door?

Yeah. Shocker. I found a door of sorts, but it was in such a weird shape, I got curious. Somehow, it led to a narrow walking trail, surrounded by metal fences, and it is quite enjoyable. The place has occasional trees with yellow shedded leaves, and some street lights, and it gives me a really cozy feeling. Thank God, I may have escaped. I ran as far as I could for good measure, though nobody knows what can happen. I came across bottles of funky-tasting bottles, and they make me feel really hazy, and they make my head hurt, even though I'm not hungry anymore. It's as if I'm… addicted to them.

---

### **Update 3:** My home, for now, at least.

I found a tent. Looked a bit terrifying at first, but now I feel calm knowing no one is inside. I may as well use the tent since the owner seems to be nowhere nearby, and maybe find a city, or gosh, anything will do. I don't know how I even managed to make it this far. I just hope I find a highway and get back home, wherever that is…

---

—

# <File Number: 3952>

## Radio Log 3952 — [Level 1](level-1.md), [Base Alpha](base-alpha.md)

**Record date:** 20/11/2018

**Source:** Audio recording clip from a report of the M.E.G. Base Alpha.

---

*<Recording begins>*

*<A Base Alpha radio picks up a clean transmission at 103 Hz. at approximately 2.03 PM.[2](javascript:;).>*

**Overseer B:** If you've reached 103 Hz., you're speaking with Overseer B. Please identify yourself.

**Researcher Jean G:** Hi, this is Researcher Jean G speaking, from Level 1, Base Alpha.

*<Overseer Kat takes a deep breath.>*

**Overseer B:** I see, the new hire… You were on Exploration Team 1, right? I've heard great things about you. Still, honey, you aren't required to disclose your location; I can already see it from my device.

**Researcher Jean G:** Apologies, miss!

**Overseer B:** No need, go on.

**Researcher Jean G:** So, uh… a few days ago, I found a kid who looked to be around his early teens. He had a small backpack full of stuff, and looked very worn-down, probably because of [Level 0](level-0.md) stuff. I brought him to the base and also modified his tablet. The kid had either short-term memory loss or amnesia; he didn't remember anything at all. And… the kid snuck away from the base, somehow, even though there were people on every corner of it. I guess they weren't paying attention? I hacked into his device-

**Overseer B:** Albeit, Jean, you do know that hacking into someone's device is illegal, right?

**Researcher Jean G:** Y-yes, I'm really sorry! But, I did find evidence of a suspected new level in his diary logs..?

**Overseer B:** I see… Could you send the information via backmail? I can send some people to check it out when I confirm.

**Researcher Jean G:** Of course, miss! Thank you!

*<End of log>*

—

> ## Voice log — Level 89 — Agent Megan B.

#### **21.11.2018**

### 0.01

> Exploration Team 1, on a mission about a newfound level. So far, we have spotted public toilets, spread unevenly, street lights, and trees that make me feel we're in autumn. That's about it, I think… The others are telling me not to mess around, and I'm just walking here without a purpose. Great.
>
> Well, it *might* be infinite, but that's not really confirmed. I mean- it's like a maze; it has narrow sidewalk-like roads, and then it leads to a huge forest area, with four sides leading to roads again. There are plenty of forests- you know what? I give up. I'm terrible at explaining things. I wasn't the one to do the mapping, anyway! It's a park, for short. It has trees with shedded leaves, and it looks to be in autumn.

### 0.56

> Alright… so, our team has decided to split up, for some reason, and the team wanted me to explain it over the voice record. We split into three: One is exploring the place in detail, looking into the bathrooms, collecting samples, and, I think, there were three or so people? I don't know. There were eight people in the mission because most of the M.E.G. research teams were busy with other stuff. Anyways, the other group is trying to research the plants here, while also mapping the place out. And, the third group is just… me. They told me not to mess up their work and record everything they find. I mean, they get to do the boring stuff, I guess? Though I really feel as if I'm unnecessary here. Our bottles are scarce, and I am not advised to drink the Almond Waters until they're proven to be safe. Great! They didn't have to be so mean about it, though!

### 09.19

> I used one of the toilets, and it seems that they didn't wait for me. They promised they would wait for me! I'm probably just a bit behind them; maybe I'll catch up. *\*Mumbling\** I don't even know which direction they went. Great.

### 19.52

> Okay, there's something obviously wrong. My team hasn't responded in 10 or so minutes — actually, never mind, I could be overreacting. I've tried to contact them, but all I got was silence from the other side. I'm not *that* annoying, am I? I mean, honestly, everyone here finds me annoying despite how hard I work. I'm not that surprised. It's getting a bit dark, and I'll have to use my flashlight.

### 26.21

> *Sounds of leaves rustling can be heard, aside from Megan's.*
>
> Oh — uh… is someone there? Hello?

### 48.05

> *\*Whispering\** I might be getting followed by something, I'm a bit scared, I really need to find my group- SHIT!
>
> *\*Sound of body hitting the ground.\**
>
> Stupid pebbles! I'm starting to hate it here! Why the hell won't the group answer my calls, anyway? Why did they just leave me here, alone, anyway?! Fucking idiots!

### 52.27

> Wait, I see someone, I might be saved! It's-
>
> *\*Megan is heard screaming in a high-pitched voice.\**
>
> OH MY GOD! SHE'S DEAD! AMANDA'S DEAD!
>
> *\*Megan presses on their radio.\**
>
> Does anyone hear me?! Hello? HELLO?!
>
> … ANSWER FOR FUCKS SAKE!
>
> Holy shit, sweet mother of Jesus, I… Am I literally the only person alive, right now? What the hell is in here?! Oh God, I'm dead, aren't I? I- I- I never even got to say my goodbyes! …

### 2.20.32

> Everyone is fucking dead. Literally everyone. I don't know why they even left me here, but I'm glad they did. I don't think I'll survive much longer. Why did I even willingly sign up for this?! I-
>
> ---
>
> *End of log. The reason for the abrupt end was that Megan's device ran out of charge. Megan managed to find the location they entered the level, and safely got out, which they gave a notice. However, the state of the other M.E.G. agents besides Amanda is unproven.*

—

## LOG 3 - 21.11.2018

I can't get out of this place. I've tried. I have been hearing screams for quite some time, and I can't seem to focus anymore, and my vision is getting blurry. They're still trying to find me. Are they that hellbent on catching me? The bottles are surely doing something to me. This place leads to nowhere in particular, and I'm just… lost. Is this what life is? Am I going to get killed before I can even find out who I am? Am I even a person? Do I have memories? Have I ever even had memories? I can't answer any. I can't think properly anymore.

—

# Interview Log

**Interviewer:** Melody Parker  
**Interviewee:** Megan Bythesea

---

**Interviewer:** Hello, Megan.

**Interviewee:** H-hi, Miss…

**Interviewer:** Melody Parker. You can call me Melody. Shall we get on with the questions?

**Interviewee:** Yes, please.

---

### **QUESTION 1:** What condition was Amanda's body in?

---

**Interviewer:** I'm really sorry if this is a sensitive topic for you.

**Interviewee:** No, it really is okay. I'm having quite a lot of trouble, actually, remembering her condition. I mean, it probably is because of the stress of it. I remember her… decapitated, I guess? She had a really bad smell, it reminded me of… the time I spent at my uncle's lab. It smelled just like it. The whole level did, actually, but it was stronger near her. I think she also had a slash in her abdomen, probably with something sharp. There was nothing that could cause injury like that there, but I'm guessing… it was them.

---

### **QUESTION 2:** Who are *them?*

---

**Interviewee:** I'm guessing you're a high-ranked member of the M.E.G, yes? You probably have access to most files, if I'm correct.

**Interviewer:** Only when I'm on Kat's good side!

*They both awkwardly chuckle.*

**Interviewer:** But yes, you're right. Go on.

**Interviewee:** Then, you've probably seen the kid's journal entries, which is the entire reason this level was discovered.

**Interviewer:** I have. What are you trying to tell me?

**Interviewee:** I think it's all the kids doing. I really can't prove it, but I really think they are behind this.

**Interviewer:** They are most likely dead, but that is a possibility, too.

---

### **QUESTION 3:** Did you encounter any beings?

---

**Interviewee:** Well, my team did, *obviously.* But I haven't met with anything there. Though I kind of felt as if I was being watched.

---

### **QUESTION 3:** Were the supplies safe? What about the toilets?

---

**Interviewee:** About the Almond Water, I guess it was safe? I mean, it did smell like Amanda's dead body, so I really didn't drink any of them. The people warned me about not drinking it until it was confirmed that it was safe. As for the toilets, they weren't much worthy of note, just dirty.

---

### **QUESTION 4:** What happened after your voice recorded died out?

---

**Interviewee:** Basically, I stayed there for a few hours, trying my best to keep an eye on everything, and there I saw… something.

**Interviewer:** What something?

**Interviewee:** It was the kid, I think. It looked really like the kid. I was chased for a few minutes until I lost sight of it. I walked for a few hours, trying to keep an eye on my surroundings. That was when I found the exit. It lead to where our group came from.

**Interviewer:** Thank you for participating, Megan.

—

> *From: Abbie\_G25147@backmail.com  
> To: OverseerB@backmail.com  
> Re: Level 89.*
>
> Hello, Overseer B.
>
> We have finished Amanda's autopsy, and the results were quite interesting. It seems that we have discovered a parasite unique to the level. The parasite seems to latch on to any individual's brain, making them feel hazy, and confused. Also, if the kid is alive, they could be affected by this parasite.
>
> Regards, Abbie.

> *From: OverseerB@backmail.com  
> To: Abbie\_G25147@backmail.com  
> Re: Level 89.*
>
> Greetings, Abbie.
>
> Thank you for informing me. I'll send some people once I get the time.
>
> Regards, Overseer B.

—

# M.E.G. Notice

Dear Research Teams.

We request all of our teams to explore Level 89 for any instances of a kid with black hair, a blue shirt, and a white t-shirt. Upon finding them, please bring them back to Level 11, Maplewood Hospital. Be wary that the child may be dangerous.

![IMG_3130.PNG](http://backrooms-sandbox-2.wikidot.com/local--files/trailmixncocoa-meg-theme/IMG_3130.PNG)

  
M.E.G. - Oversight Council

—

## LOG 4 - 29.11.2018

  
I'm not going to sugarcoat it. It seems that word got out. I'm seeing groups of men, armed with guns and other weapons. They're coming for me, aren't they?

### **Update 1:** It's true.

I tried to confront them. I don't remember what happened, as everything went black, but I woke up in my tent, blood on my hands. I'm freaking out, and I can't even tell if it's my blood, or…

**Small update:** I realised that they shot me with a literal gun. I guess escaping wasn't a good idea overall. My ear is bleeding like crazy, and I think one of my fingers is gone. I don't even know why I just realised this. It's so dark and cold here.

---

I know someone is reading this as I write, and that is probably the exact reason I even managed to uncover this place. It's over for me; nothing I do will ever matter anymore. They're getting closer. I don't want to die.

## **ADDENDUM:**

> About the diary log shown up,
>
> The level seemed to have disappeared two days after the log, and the remaining teams were cut off from contact with.[3](javascript:;) This means that we can't make a full document about the level, which has been shown to be quite deadly. We are still making an effort to relocate it, but it seems to be in vain as of now. Byron was successfully found in their tent, and taken into Maplewood Hospital, where an interview was conducted with them.

# Interview Log

**Interviewer:** Matthew Gold  
**Interviewee:** Byron Candlelighter.

---

**Interviewer:** Greetings.

**Interviewee:** …

**Interviewer:** Don't be shy now.

**Interviewee:** You kidnapped me. You fucking kidnapped me-

---

### **QUESTION 1:** Why?

---

**Interviewee:** What the hell do you mean why?

**Interviewer:** I am asking *why* you attempted to harm our research teams, and even murdered an entire bunch!

**Interviewee:** I-I don't remember, okay?!

**Interviewer:** Answer.

<Despite not being a part of the interview, Matthew pulled a gun on Byron, likely as an intimidation technique.[4](javascript:;)>

**Interviewee:** \*Stuttering\* What the hell is wrong with you?! First, you kidnap me, and then pull a gun on me?!

**Interviewer:** It's fake.

**Interviewee:** I-I don't care! Let me go!

**Interviewer:** We can't let you go. You have literal parasites in your brain. Now, answer.

**Interviewee:** LIAR! I WON'T BELIEVE-

**Interviewer:** ANSWER!

**Interviewee:** *\*Barely audible\** Because you tried to kidnap me. You kidnapped me, and you're getting mad at me. I just protected myself. Please let me go.

---

### **QUESTION 2:** What about your diary logs?

---

**Interviewee:** W-what about them..?

**Interviewer:** Were they fake?

**Interviewee:** Why would they be fake?!

**Interviewer:** I don't know, maybe you lured our teams to butcher them.

**Interviewee:** I- Liar! Let go of me! I want to go home!

---

### **QUESTION 3:** Was your memory loss fake?

---

**Interviewee:** LET ME GO!

**Interviewer:** Not until you answer my question.

**Interviewee:** I DON'T REMEMBER! OKAY?!

---

### **QUESTION 4:** Why didn't you kill us back at Base Alpha?

---

**Interviewee:** BECAUSE I WASN'T GOING TO! You guys tried to kill me! You were-

**Interviewer:** Thank you for participating, I guess. I'm heading out.

> A brain surgery was later schedhuled, and conducted on Byron, having positive results. Byron managed to slowly regain his memories, and had his identity changed with the M.E.G. witness protection program.[5](javascript:;)

Footnotes

[1](javascript:;). A physical copy of Byron's digital logs; I don't know how he didn't even run out of charge.

[2](javascript:;). Standard M.E.G. time.

[3](javascript:;). Thankfully, no major losses were made.

[4](javascript:;). Matthew later confirmed that the gun wasn't legitimate and had no bullets.

[5](javascript:;). Matthew was also fired and blacklisted on the spot; I couldn't stand him anyway. An apology was later made to Byron.

—

> **Overseer B:** You all came.
>
> **Overseer C:** Mind telling us what this is about? I get it, it's some sort of phenomenon/level hybrid, even though it is mostly a level, but what does this have to do with anything?
>
> **Overseer B:** The substance. You two have read it all the way through, right?
>
> **Overseer C:** Yes, we have.
>
> **Overseer B:** An autopsy was done on Amanda's corpse after she was retrieved back from Level 89.
>
> **Overseer A:** We know the rest.
>
> **Overseer B:** Still, why Amanda has them is still unclear.
>
> **Overseer A:** And?
>
> **Overseer B:** What do you mean "and?" Byron drank made them corrupted, hence their anxiety, and weird behaviour. That's also the reason he went on a rampage when the research team arrived on Level 89. Was that what you wanted to hear?
>
> **Overseer C:** We already know that. What are you planning to use that information for?
>
> **Overseer B:** For now, only research. We shouldn't take any actions before we identify the substance completely. There's also one more thing, which is the reason I called you both here…
>
> **Both Overseers:** What?
>
> **Overseer C:** Didn't that incident happen years ago?
>
> **Overseer B:** Yes, and… \*Sigh\* It's back.
>
> **Overseer A:** What do you *mean?*
>
> **Overseer B:** It happened again. I received a Back-mail from researcher Lina Jackson an hour ago. She seems to have discovered the exact same level…
>
> **Overseer C:** Oh…

rating: +11[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

« [Level 88](level-88.md) | Level 89 | [Level 90](level-90.md) »

  
  

[And what may have created such thing?!](javascript:;)

[Of course, the Author.](javascript:;)

---

Level written by

I'd like to thank the following people for critiquing my draft!! ^^

Thanks for the clear!! :D

---

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Level 89 - "Dreaded Park"](level-89.md)" by KillerOreo52, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/level-89](level-89.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/level-89">Level 89 - "Dreaded Park"</a>" by KillerOreo52, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/level-89">https://backrooms-wiki.wikidot.com/level-89</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/level-89](https://backrooms-wiki.wikidot.com/level-89)
