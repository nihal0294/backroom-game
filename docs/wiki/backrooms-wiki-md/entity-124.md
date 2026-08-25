---
title: "Entity 124 - \"Memory Merchant\""
source: "https://backrooms-wiki.wikidot.com/entity-124"
retrieved_at: "2026-08-23T23:36:54+00:00"
license: CC-BY-SA-3.0
---

# Entity 124 - "Memory Merchant"

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

[+ Show code](javascript:;)

[- Hide code](javascript:;)

```
:root {
                  --theme-base: "Black Highlighter";
                  --theme-id: "highlighter-bhl";
                  --theme-name: "Highlighter";
 
                  --logo-image: url("http://backrooms-wiki.wdfiles.com/local--files/component%3Atheme/pridelogo.png");
                  --header-title: "The Backrooms";
                  --header-subtitle: "You've been here before.";
 
                  --white-monochrome: 252, 252, 252;
                  --pale-gray-monochrome: var(--white-monochrome);
                  --light-pale-gray-monochrome: var(--bright-accent);
                  --very-light-gray-monochrome: var(--bright-accent);
                  --light-gray-monochrome: var(--bright-accent);
                  --gray-monochrome: var(--bright-accent);
                  --dark-gray-monochrome: var(--white-monochrome);
                  --black-monochrome: 12, 12, 12;
                  --pale-accent: var(--bright-accent);
                  --bright-accent: 255, 88, 88;
                  --medium-accent: var(--bright-accent);
                  --dark-accent: var(--bright-accent);
                  --alt-accent: 242, 122, 8;
 
                  --swatch-text-dark: var(--black-monochrome);
                  --swatch-text-light: var(--black-monochrome);
                  --swatch-important-text: var(--bright-accent);
 
                  --swatch-headerh1-color: var(--black-monochrome);
                  --swatch-headerh2-color: var(--black-monochrome);
                  --swatch-topmenu-border-color: var(--bright-accent);
                  --swatch-topmenu-bg-color: var(--white-monochrome);
                  --swatch-menutxt-light-color: var(--black-monochrome);
 
                  --rating-module-button-color: var(--black-monochrome);
                  --rating-module-button-plus-color: var(--bright-accent);
                  --rating-module-button-negative-color: var(--bright-accent);
                  --rating-module-button-cancel-color: var(--bright-accent);
                  --rating-module-button-credit-color: var(--bright-accent);
                  --rating-module-text-color: var(--black-monochrome);
                  --rating-module-text-hover-color: var(--black-monochrome);
 
                  --toggle-roundness: 0.2rem;
 
                  --gradient-header: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='100' height='100' viewBox='0 0 100 100'%3E%3Cg fill-rule='evenodd'%3E%3Cg fill='%23bbbbbb' fill-opacity='0.4'%3E%3Cpath opacity='.5' d='M96 95h4v1h-4v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9zm-1 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-9-10h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm9-10v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-9-10h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm9-10v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-9-10h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm9-10v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-9-10h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9z'/%3E%3Cpath d='M6 5V0H5v5H0v1h5v94h1V6h94V5H6z'/%3E%3C/g%3E%3C/g%3E%3C/svg%3E"), linear-gradient(#fcfcfc,#fcfcfc);
                  --gradient-topmenu-mobile: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='100' height='100' viewBox='0 0 100 100'%3E%3Cg fill-rule='evenodd'%3E%3Cg fill='%23bbbbbb' fill-opacity='0.4'%3E%3Cpath opacity='.5' d='M96 95h4v1h-4v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9zm-1 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-9-10h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm9-10v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-9-10h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm9-10v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-9-10h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm9-10v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-9-10h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9z'/%3E%3Cpath d='M6 5V0H5v5H0v1h5v94h1V6h94V5H6z'/%3E%3C/g%3E%3C/g%3E%3C/svg%3E"), linear-gradient(#fcfcfc,#fcfcfc);
                  --diagonal-stripes: linear-gradient(transparent 0);
 
    --lh-paper-bg: var(--white-monochrome);
    --lh-book-color: var(--black-monochrome);
    --lh-tape-color: var(--black-monochrome),0.1;
    --lh-white-bg: var(--white-monochrome);
    --lh-dark-bg: var(--black-monochrome);
 
    --fnColor: rgb(var(--bright-accent));
}
 
::selection {
    background-color: rgb(var(--bright-accent));
}
 
::-moz-selection {
    background-color: rgb(var(--bright-accent));
}
 
#page-title {
  animation: fadeIn 2s;
}
 
#header {
  background-position: 0 2rem;
  background-size: auto 4rem;
  animation: logo 2.5s;
}
 
#header h1 a:before,#top-bar {
  animation: header 3s;
}
 
#header h2, #header h2 span, #header h2 span::before {
  animation: header2 3.5s;
}
 
#header h1 a:before,#header h2 span::before {
  background: rgba(var(--bright-accent),1);
}
 
  @keyframes fadeIn {
  0% {clip-path: polygon(0% 0%,0% 0%, -10% 100%,0% 100%);}
  100% {clip-path: polygon(0% 0%,110% 0%, 100% 100%,0% 100%);}
  }
 
@keyframes logo {
  0% {background-position: -6rem 2rem;}
  75% {background-position: -6rem 2rem;}
  100% {background-position: 0 2rem;}
}
 
@keyframes header {
  0% {clip-path: polygon(0% 0%,0% 0%, -10% 100%,0% 100%);}
  75% {clip-path: polygon(0% 0%,0% 0%, -10% 100%,0% 100%);}
  100% {clip-path: polygon(0% 0%,110% 0%, 100% 100%,0% 100%);}
}
 
@keyframes header2 {
  0% {clip-path: polygon(0% 0%,0% 0%, -10% 100%,0% 100%);}
  75% {clip-path: polygon(0% 0%,0% 0%, -10% 100%,0% 100%);}
  100% {clip-path: polygon(0% 0%,110% 0%, 100% 100%,0% 100%);}
}
 
div#extra-div-1 {
    content: "";
    position: fixed;
    top:0;
    left: 0;
    width:100vw;
    height:100vh;
    background-color: #fcfcfc;
background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='100' height='100' viewBox='0 0 100 100'%3E%3Cg fill-rule='evenodd'%3E%3Cg fill='%23bbbbbb' fill-opacity='0.4'%3E%3Cpath opacity='.5' d='M96 95h4v1h-4v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9zm-1 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-9-10h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm9-10v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-9-10h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm9-10v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-9-10h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm9-10v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-9-10h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9z'/%3E%3Cpath d='M6 5V0H5v5H0v1h5v94h1V6h94V5H6z'/%3E%3C/g%3E%3C/g%3E%3C/svg%3E");
    background-repeat: repeat;
    opacity: 1;
    z-index: -1;
    background-attachment: fixed;
}
 
    #top-bar {
    --dropdown-border-color: var(--bright-accent), 0.5;
}
 
    #side-bar,
    #side-bar:hover {
    background-color: #fcfcfc;
background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='100' height='100' viewBox='0 0 100 100'%3E%3Cg fill-rule='evenodd'%3E%3Cg fill='%23bbbbbb' fill-opacity='0.4'%3E%3Cpath opacity='.5' d='M96 95h4v1h-4v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9zm-1 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-9-10h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm9-10v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-9-10h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm9-10v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-9-10h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm9-10v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-9-10h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9z'/%3E%3Cpath d='M6 5V0H5v5H0v1h5v94h1V6h94V5H6z'/%3E%3C/g%3E%3C/g%3E%3C/svg%3E");
    background-repeat: repeat;
    padding-left: 0;
    }
 
 #page-content ul {
        list-style-image: url('data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIiA/Pgo8IURPQ1RZUEUgc3ZnIFBVQkxJQyAiLS8vVzNDLy9EVEQgU1ZHIDEuMS8vRU4iICJodHRwOi8vd3d3LnczLm9yZy9HcmFwaGljcy9TVkcvMS4xL0RURC9zdmcxMS5kdGQiPgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHZlcnNpb249IjEuMSIgd2lkdGg9IjFyZW0iIGhlaWdodD0iMXJlbSIgdmlld0JveD0iMCAwIDM1IDM1IiB4bWw6c3BhY2U9InByZXNlcnZlIj4KPGRlc2M+Q3JlYXRlZCB3aXRoIEZhYnJpYy5qcyA0LjYuMDwvZGVzYz4KPGRlZnM+CjwvZGVmcz4KPGcgdHJhbnNmb3JtPSJtYXRyaXgoMSAwIDAgMSAxNy41IDE3Ljc1KSIgaWQ9IlZ5YlMtT3lmWS1tWVRQX3ZwaTVWcSIgID4KPHBhdGggc3R5bGU9InN0cm9rZTogcmdiKDAsMCwwKTsgc3Ryb2tlLXdpZHRoOiAwOyBzdHJva2UtZGFzaGFycmF5OiBub25lOyBzdHJva2UtbGluZWNhcDogYnV0dDsgc3Ryb2tlLWRhc2hvZmZzZXQ6IDA7IHN0cm9rZS1saW5lam9pbjogbWl0ZXI7IHN0cm9rZS1taXRlcmxpbWl0OiA0OyBmaWxsOnJnYih2YXIoLS1icmlnaHQtYWNjZW50KSkgcmdiKDI1Miw4OCw4OCk7IGZpbGwtcnVsZTogbm9uemVybzsgb3BhY2l0eTogMC42OyIgdmVjdG9yLWVmZmVjdD0ibm9uLXNjYWxpbmctc3Ryb2tlIiAgdHJhbnNmb3JtPSIgdHJhbnNsYXRlKDAsIDApIiBkPSJNIC02LjQ3NDM1IC0xMS4wODcxNCBDIC0xMS4wOTkzNTAwMDAwMDAwMDEgLTkuNTAzODEgLTE4LjcyNDM1IDAuMjQ2MTkwMDAwMDAwMDAwMzUgLTE1LjE4MjY4MDAwMDAwMDAwMSA0Ljk1NDUzIEMgLTExLjY0MTAxMDAwMDAwMDAwMSA5LjY2Mjg2IC0wLjE4MjY4MDAwMDAwMDAwMTI5IDE2LjkxMjg2MDAwMDAwMDAwMiAyLjE5MjMxOTk5OTk5OTk5ODcgMTEuODI5NTMgQyA0LjU2NzMxOTk5OTk5OTk5OSA2Ljc0NjIgMjEuNDAwNjUgLTAuMDAzODAwMDAwMDAwMDAwMDI1NiAxNC40MDA2NDk5OTk5OTk5OTkgLTguNDYyMTQgQyA3LjQwMDY0OTk5OTk5OTk5OSAtMTYuOTIwNDcgLTEuODQ5MzUwMDAwMDAwMDAxMiAtMTIuNjcwNDcgLTYuNDc0MzUwMDAwMDAwMDAxIC0xMS4wODcxNCB6IiBzdHJva2UtbGluZWNhcD0icm91bmQiIC8+CjwvZz4KPC9zdmc+');
    }
 
 #page-content a:not([href*="javascript:;"]) {
        color: rgba(var(--swatch-primary), 1);
        -webkit-box-decoration-break: clone;
        box-decoration-break: clone;
        box-shadow: inset 0 0 0 0 rgba(var(--swatch-primary), 1);
        transition:
            box-shadow 0.3s cubic-bezier(0.4, 0.0, 0.2, 1),
            color 300ms cubic-bezier(0.4, 0.0, 0.2, 1);
        border-radius:10px 8px 12px 6px;
    }
 
    #page-content a:not([href*="javascript:;"]):hover {
        box-shadow: inset 45rem 0 0 0 rgba(var(--swatch-primary), 1);
        text-decoration: none;
        color: rgb(var(--black-monochrome))
    }
 
 .collapsible-block a {
        color: rgba(var(--swatch-primary), 1);
        -webkit-box-decoration-break: clone;
        box-decoration-break: clone;
        box-shadow: inset 0 0 0 0 rgba(var(--swatch-primary), 1);
        transition:
            box-shadow 0.3s cubic-bezier(0.4, 0.0, 0.2, 1),
            color 300ms cubic-bezier(0.4, 0.0, 0.2, 1);
        border-radius:10px 8px 12px 6px;
    }
 
    .collapsible-block a:hover {
        box-shadow: inset 45rem 0 0 0 rgba(var(--swatch-primary), 1);
        text-decoration: none;
        color: rgb(var(--black-monochrome))
    }
 
 #page-content a:visited {
        color: rgba(120,120,120);
        -webkit-box-decoration-break: clone;
        box-decoration-break: clone;
        box-shadow: inset 0 0 0 0 rgba(var(--black-monochrome));
        transition:
            box-shadow 0.3s cubic-bezier(0.4, 0.0, 0.2, 1),
            color 300ms cubic-bezier(0.4, 0.0, 0.2, 1);
        border-radius:10px 8px 12px 6px;
    }
 
    #page-content a:visited:hover {
        box-shadow: inset 45rem 0 0 0 rgb(var(--black-monochrome));
        text-decoration: none;
        color: rgb(var(--black-monochrome));
    }
 
 #page-content a.newpage {
        color: rgba(var(--alt-accent), 1);
        -webkit-box-decoration-break: clone;
        box-decoration-break: clone;
        box-shadow: inset 0 0 0 0 rgb(var(--alt-accent));
        transition:
            box-shadow 0.3s cubic-bezier(0.4, 0.0, 0.2, 1),
            color 300ms cubic-bezier(0.4, 0.0, 0.2, 1);
        border-radius:10px 8px 12px 6px;
    }
 
    #page-content a.newpage:hover {
        box-shadow: inset 45rem 0 0 0 rgb(var(--alt-accent));
        text-decoration: none;
        color: rgb(var(--black-monochrome));
    }
 
    .yui-navset .yui-nav li a::before {
        --clip-path:
            polygon(0 0,
                -0.25rem 0,
                -1rem 100%,
                0 100%);
    }
 
    .yui-navset .yui-nav li:hover a::before,
    .yui-navset .yui-nav li:active a::before,
    .yui-navset .yui-nav li:focus a::before {
        --clip-path:
            polygon(0 0,
                calc(100% + 1rem) 0,
                calc(100% + 0.75rem) 100%,
                0 100%);
    }
 
.yui-navset .yui-nav li.selected {
    transform: unset;
}
 
tbody {
    background-color: rgba(var(--white-monochrome),.05);
}
 
table.wiki-content-table {
    border-spacing: 0;
    overflow: auto;
    min-width: 100%
}
#main-content table.wiki-content-table th {
    color: rgba(var(--black-monochrome));
    background: rgba(var(--bright-accent),.6);
}
#main-content table.wiki-content-table td, table.wiki-content-table th {
    padding: 6px 13px
}
table.wiki-content-table tr {
    background-color: rgba(var(--white-monochrome),.05);
}
table.wiki-content-table tr:nth-child(odd) {
    background-color: rgba(var(--bright-accent),.05);
}
 
#page-content table.wiki-content-table th, #page-content table.wiki-content-table td, #page-content div.b-tables table.wiki-content-table th, #page-content div.b-tables table.wiki-content-table td {
    border: 0.15rem solid rgba(var(--tables-border),.6) !important;
}
 
#page-content hr{
display:grid;
margin: .5rem;
height:15px;
background:rgb(var(--bright-accent));
opacity:0.6;
border:none;
transform:skew(-15deg);
border-radius:3px 8px 10px 6px;
}
 
code,.code{
    background:rgba(var(--pale-gray-monochrome),.6);
}
 
.styled-quote {
    background-color: rgba(var(--gray-monochrome),.15);
    border-left: 0.5rem solid rgba(var(--gray-monochrome));
    padding: 0.1rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
}
 
.dark-styled-quote {
    background-color: rgba(var(--gray-monochrome),.6);
    border-left: 0.5rem solid rgba(var(--gray-monochrome));
    padding: 0.1rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
}
 
.lightblock {
    background-color: rgba(var(--gray-monochrome),.15);
    padding: 0.01rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
}
 
.darkblock {
    background-color: rgba(var(--gray-monochrome),.6);
    padding: 0.01rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
}
 
.dark-styled-quote a, .darkblock a{
    background-color: rgba(var(--white-monochrome),.6);
    border-radius:10px 8px 12px 6px;
    padding: 2px 0.6rem;
}
 
#page-content .dark-styled-quote hr, #page-content  .darkblock hr{
    background-color: rgba(var(--white-monochrome));
}
 
.marked{
        border-radius:90px 20px 120px 40px;
}
 
.clipped {
    padding-right:3.2rem;
    clip-path: polygon(-100% -100%,100% 0%,calc(100% - 3rem) 50%,100% 100%,0% 100%);
}
 
.clipblock{
    background-color: rgba(var(--white-monochrome));
    margin: 0.5rem 0.25rem;
    padding: 0.01rem 3.2rem 0.01rem 1rem;
    clip-path: polygon(-100% -100%,100% 0%,calc(100% - 3rem) 50%,100% 100%,0% 100%);
    border: 0.3rem solid rgba(var(--gray-monochrome));
}
 
.holeblock {
    background-color: #fcfcfc;
    background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='100' height='100' viewBox='0 0 100 100'%3E%3Cg fill-rule='evenodd'%3E%3Cg fill='%23bbbbbb' fill-opacity='0.4'%3E%3Cpath opacity='.5' d='M96 95h4v1h-4v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9zm-1 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-9-10h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm9-10v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-9-10h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm9-10v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-9-10h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm9-10v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-9-10h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9z'/%3E%3Cpath d='M6 5V0H5v5H0v1h5v94h1V6h94V5H6z'/%3E%3C/g%3E%3C/g%3E%3C/svg%3E");
    background-repeat: repeat;
    background-attachment: fixed;
    padding: 0.01rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    box-shadow: 0rem 0rem 0.6rem 0 inset rgba(var(--black-monochrome),.6);
}
 
.glassblock {
    background-color: rgba(var(--white-monochrome),.2);
    padding: 0.01rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    box-shadow: 0.1rem 0.1rem 0.2rem 0 rgba(var(--black-monochrome),.6),inset 0rem 0rem 0.2rem 0 rgba(var(--black-monochrome),.6);
    border: 0.15rem solid rgba(var(--black-monochrome));
    border-radius: 0.3rem;
    backdrop-filter: blur(1px);
}
 
div.wiki-note {
    background-color: rgb(var(--bright-accent));
}
 
#toc #toc-list a:hover{
        color: rgb(var(--black-monochrome));
}
 
#page-content .top-box:before {
    display: none;
}
 
#page-content .top-box {
    background: rgba(var(--bright-accent),.2);
    border: 0.1rem solid rgb(var(--bright-accent));
    color: rgb(var(--black-monochrome));
}
 
#page-content .top-box .gradient-box {
    background: unset;
    padding: 0.5rem;
}
 
#page-content .header-diamond {
    background: unset;
}
 
#page-content .header-diamond .diamond-pattern {
    background: unset;
}
 
#page-content .header-diamond .diamond-color {
    mask: unset;
    -webkit-mask: unset;
    background: rgba(var(--bright-accent),.2);
    border: 0.1rem solid rgb(var(--bright-accent));
}
 
#page-content .header-diamond .bg {
    mask: unset;
    -webkit-mask: unset;
    background: transparent;
}
 
#page-content .header-diamond .diamond-image {
    background: rgb(var(--black-monochrome));
}
 
#page-content .header-diamond:after {
    display: none;
}
 
#page-content .bottom-box ul li {
    color: rgb(var(--black-monochrome));
}
 
#odialog-container div.owindow {
    border: 0.2rem solid rgba(var(--swatch-alternate-color), 0.25);
    box-shadow: none;
}
 
.footnotes-footer, .bibitems{
    background-color: rgba(var(--white-monochrome),.2);
}
 
.footnotes-footer .title, .bibitems .title{
    border-radius:10px 8px 12px 6px;
}
 
#license-area a:hover{
    color: rgb(var(--black-monochrome));
}
 
#license-area a::before{
    background-color: rgba(var(--bright-accent),.2);
}
 
.fncon {
    background: rgba(var(--bright-accent),.15);
    border:none;
    border-left: 0.5rem solid rgb(var(--bright-accent));
    padding-right: 2rem;
    clip-path: polygon(-100% -100%,100% 0%,95% 50%,100% 100%,0% 100%);
    backdrop-filter: blur(2px);
}
 
.with-string::before{
    clip-path: polygon(-100% -100%,100% 0%,100% 100%,50% 98%,0% 100%);
}
 
.thread-container .post .long .content .image:not(.collapsible-block .image) {
    object-fit: cover;
    max-height: 2em;
    width: 100%;
    transition: max-height 0.5s;
}
 
.thread-container .post .long .content .image:hover:not(.collapsible-block .image) {
    max-height: 100em;
}
 
div.scpnet-interwiki-wrapper {
    margin: 0;
    width: auto;
}
 
@media (min-width:768px) {
 
    div.scpnet-interwiki-wrapper,
    iframe.scpnet-interwiki-frame {
        width: 100%;
    }
}
 
/* Content Warning */
#page-content div#u-adult-warning {
    width: fit-content;
    margin: 0 auto 1.25rem;
    padding: 0.5rem 1rem;
    border: 3px solid #333;
    background: #e4e4e4;
    color: #333;
    text-align: center;
    font-weight: bold;
}
 
#page-content div#u-adult-warning>div#u-adult-header {
    font-size: 300%;
    text-shadow: 1px 2px 3px rgba(0, 0, 0, .5);
    color: #901;
}
 
#page-content div#u-adult-warning>div#u-adult-header p {
    margin: 0;
}
 
#page-content div#u-adult-warning>.error-block {
    color: unset;
    padding: unset;
    margin: unset;
    border: unset;
    margin-bottom: 1em;
}
 
/* Remove the white border of the user info php */
#odialog-container .owindow>div.modal-body>img[style*="padding: 2px 8px;"]:first-child {
    background-color: initial !important;
}
 
/* SHORT DESCRIPTION OF CHANGES */
form#edit-page-form .edit-page-bottomtable tr>td:nth-of-type(1)>div:nth-of-type(1)::before {
    content: "SHORT DESCRIPTION OF CHANGES:";
}
 
table.page-history tr:nth-of-type(2) td:nth-of-type(1)::before {
    content: "REV.";
}
 
table.page-history tr:nth-of-type(2) td:nth-of-type(3)::before {
    content: "FLAGS";
}
 
table.page-history tr:nth-of-type(2) td:nth-of-type(4)::before {
    content: "ACTIONS";
}
 
table.page-history tr:nth-of-type(2) td:nth-of-type(5)::before {
    content: "BY";
}
 
table.page-history tr:nth-of-type(2) td:nth-of-type(6)::before {
    content: "DATE";
}
 
#site-tools-box::before {
    content: "Site tools";
}
 
#main-content .page-tags::before {
    content: "Tags\0021b4";
}
 
#login-status #account-options li>a[href*="/messages"]::after {
    content: "Messages";
}
 
[id*="u-credit"] div.credit-back::before {
    content: "Back";
}
 
#toc #toc-action-bar a::after {
    content: "Content";
}
 
/* Sidebar logo adaption */
#side-bar .side-block.media a[href*="discord"] {
    --social-logo-mask: var(--discord-mask-round);
}
 
#side-bar .side-block.media a[href*="b23.tv"] {
    --social-logo-mask: var(--bilibili-mask-round);
    --social-color: var(--bilibili-icon-color);
}
 
#side-bar .side-block.media a[href*="fandom"] {
    --social-logo-mask: var(--fandom-mask-round);
    --social-color: var(--fandom-icon-color);
}
 
#side-bar .side-block.media a[href*="tieba"] {
    --social-logo-mask: var(--tieba-mask-round);
    --social-color: var(--tieba-icon-color);
}
```

[- Hide code](javascript:;)

Entity 124 - "Memory Merchant"

CONCORD ENTITY CLASSIFICATION SYSTEM

ENTITY ID: 124  
HABITAT(S): Level 9 and Level 227

**[IETS](iets.md):**  
**4A+****X****X**

CLASS:

Enigmatic

PROPERTIES:

HVM

VRL-A

VRL-B

NCR

MCH

CBR

SYN

DMN

SSV

CVL

RLA

UNQ

AGR

BNV

{$custom-tag-name}

{$custom2-tag-name}

{$custom3-tag-name}

RAD

NRO

TXC

PYR

# General Description:

Entity 124, often regarded as **"Memory Merchant"** is a singular entity that inhabits [Level 227](level-227.md) and takes its victims from [Level 9](level-9.md)[1](javascript:;), possessing powers that can affect one's neurological network. Entity 124 can cause confusion, lightheadedness, dizziness, and temporary memory loss. The strength of these effects is proportionate to the distance from it.

Other than distorting brain signals at proximity, it is also capable of making deals and signing contracts, with the main currency traded being memories. Memories can be borrowed, sold, or traded for another memory of the same value, all according to the entity's evaluations. Sometimes, trades accommodate for knowledge[2](javascript:;), fame, or physical abilities like better eyesight, stronger limbs, and more. Besides raw memories, trades with memory jars are also possible, with similar functionality.

After a trade, the victim will be rendered incapable of recalling details regarding the encounter, the deal, or the entity's presence. It is not exactly known what entity 124 can do, but based on the transcripted audio file from underneath, it is clear that The Memory Merchant can and will kill humans in certain situations.

The entity is presumably believed to be unable to move, as none of the videotapes had recorded its traversing method. However, every time a new victim may stumble upon its grasp, a completely new and dissimilar environment from the previous is formed. From this, it's possible that entity 124 either only moves when it's not in an interaction, or that its surroundings constantly change.

In testing, it is confirmed that victims during the encounter with Entity 124 will stay asleep, no matter the disturbance of the environment or damage to the body. The victim also won't be clipping out of [Level 9](level-9.md) as long as they stay within 124's pocket dimension (or supposedly [Level 227](level-227.md)).

# Behaviors:

Entity 124 is normally neutral and composed. However, it is also very spontaneous and can be agitated, sometimes to the point of causing harm. It communicates in a psychic-type sound wave that can't be recorded by any capturing devices; however, still creates static and blurs video recordings. Its voice is described as warm and nostalgic, almost sounding like the entity had been met and befriended before. It also seems highly sensitive towards mentions or remarks relating to [Level 9](level-9.md), where talking about it may cause the entity to lose its temper - the leading cause of casualties. Consideration in communication with the entity will determine whether one survives or perishes.

# Biology:

![{$alt}](http://backrooms-sandbox-2.wdfiles.com/local--files/nonutfor-imortal-2/124.jpg)

A blurry photograph of Entity 124[3](javascript:;).

Entity 124 appears to be a floating [stellated octahedron](https://en.wikipedia.org/wiki/Stellated_octahedron)[4](javascript:;) with side lengths of approximately 12 meters in its "base form". The inside of its structure is completely transparent, most likely hollow. Entity 124 has a light magenta hue on its main body structure, emitting a blinding lime glow. However, being a reality warper, the entity can modify its appearance, shape, size, or color, and is seemingly unrestricted in doing so. Physical interactions with the entity have proven ineffective, implying that the entity is either non-physical or exists on strange virtual dimensions.

# Discovery:

Entity 124's discovery was very late(thanks to its memory-wiping abilities, which hindered wanderers' ability to describe its existence after leaving its domain)[5](javascript:;). It was finally discovered on 13/Aug/2023 by an unknown individual via an audio file from a recorder. The recorder was found lying on a bed in one of [Level 9](level-9.md)'s houses, likely turned on accidentally while they were slumbering. Underneath is the transcribed text file of the audio recording. The main subject will be regarded as "A" from this point on for the sake of convenience.

[View 'transcripted text file 1'?](javascript:;)

['transcripted text file 1' shown. Close?](javascript:;)

> ### **>Begin of Recording**
>
> **11/Aug/2023 01:32AM**

---

*[the audio started with 3 hours of continuous snoring]*

*[loud shuffling and sliding sounds can be heard]*

*[a loud thud]*

**A:** *[grunts]* Huh?

*[static]*

**A:** Whaa…?

*[abrupt shifts and shuffles]*

**A:** What's…happening…?

*[returns to static for a while.]*

**A:** What…do you mean by deals…?

*[static]*

**A:** No, why would I ever want to do that? How can I leave this place? I just wanted to rest on my bed, now I'm here in this…huh…is this…is this a dream?

*[static]*

**A:** I told you, why would I ever want to do that? Can you shut the *[foul language]* up? It's rare for this kind of dream to occur…

*[static, but this time much louder and more distorted]*

**A:** What can you do? Kinda menacing *[foul language]*, aren't you?

*[static, but this time even louder, longer, and more distorted than before, accompanied by a rising low hum]*

**A:** Whoaa?! *[screaming can be heard fading in the background along with glitchy voices and loud thuds]*

*[distorting and eerie sounds continue to get picked up for over 4 more minutes before the audio file is cut short]*

> ### **>End of Recording**
>
> ---
>
> Wave noises and sounds of wooden creaks were recorded throughout the time A was interacting with the merchant, supposing that they had arrived at [Level 227](level-227.md), landing on a boat near the shore. A loud, low hum was also present throughout the entire encounter.  
> It's suspected that the recorder no-clipped back to [Level 9](level-9.md) on its own, though not in great condition. A was never identified and is currently marked as deceased. The root of this occurrence is unknown, but based on the recording, it is reasonable to assume to be the entity's actions.

After the initial discovery via the transcribed audio file above, more audio files, photographs, and video footage have been received. Underneath is the transcription of another audio file that was turned in. The main subject will be regarded as "B" from this point on for the sake of convenience (and privacy).

[View 'transcripted text file 2'?](javascript:;)

['transcripted text file 2' shown. Close?](javascript:;)

> ### **>Begin of Recording**
>
> **5/Sep/2022 9:04PM**

---

*[an hour and a half of shuffling, mumbling, snoring, and gusts of wind]*

*[loud sliding and cracking sound is heard]*

*[a loud thud, signalling contact with a wooden surface]*

*[water splashes]*

**B:** Ah.. Oww… W-what is this…?

*[static]*

**B:** Oh…Hi…? Where…-what are you?

*[long static, almost 10 minutes]*

**B:** I.. see. I'm not really interested, but if you insist.

*[static]*

**B:** Well, I don't like the sound of that. How about that time when I *[censored personal information]*? It'll be great if you can swap it out.

*[static]*

**B:** Yea…That'll be a good one.

*[soft static]*

**B:** Ow… So it's hur- OW! AHH! MAKE IT STOP!! AHHH!

*[contact with a wooden surface along with screaming]*

*[slightly louder static]*

*[bumping and sliding]*

*[soft contact with fabric]*

**B:** WOAhh!…

*[loud bump as if the recorder had fallen onto the ground]*

**companion 1:** Hey! What's wrong? You were screaming!

**companion 2:** Was it a nightmare? Are you alright?

**B:** Oh… sorry. I think it was… I… I'm fine.

*[shuffles]*

**B:**(Whispering) Huh? Why is my recorder on? Probably laid on it while slee-

*[recorder gets turned off by the wanderer]*

> ### **>End of Recording**
>
> ---
>
> B successfully survived an encounter with the entity. The recording was fortunately found and turned in for documentation by B's group[6](javascript:;). However, it is unclear what was traded to B, as the details of the deal were erased by the merchant's nature. as if

  

# **Dos and Don'ts:**

### **Do:**

- Only trade unremarkable and/or insignificant memories unless you absolutely understand what you are doing.
- Stay polite, friendly, and cooperative.
- Create your own requests instead of waiting for the entity to offer you.
- Simply avoid resting in [Level 9](level-9.md) as much as possible. If it's required for long-period traversals through [Level 9](level-9.md), limit your time to a minimum.

### **Don't:**

- Mention anything about [Level 9](level-9.md).
- Be impolite, swear, or mock the entity.
- Attempt to assault or harm the entity with any methods.
- Express general hostility.

## **Documented and published by the M.E.G.**

![Mind%20altering.png](http://backrooms-sandbox-2.wdfiles.com/local--files/nonutfor-imortal-2/Mind%20altering.png)

###### M.E.G. - For humanity's better future.

---

Entity 124 is still neither well understood nor fully documented; unknown behaviors or abilities can afflict unpredictable consequences. If one may attempt an intentional encounter with it despite this, it is strongly advised to stick to known precautions and stay alert at all times.

---

[+ Open Footnotes](javascript:;)

[- Close Footnotes](javascript:;)

Footnotes

[1](javascript:;). It's unclear whether the entity no-clip wanderers from [Level 9](level-9.md) to [Level 227](level-227.md) or to its pocket dimension as all of its reported encounters have only been from [Level 9](level-9.md), and as they share a great resemblance. Other than this, there have also been unconfirmed reports of the entity supposedly saying the location is somewhere within [Level 227](level-227.md).

[2](javascript:;). From this, it is also theorized and partially confirmed that the entity had acquired endless knowledge on possibly all aspects. This earned the entity an A+ intelligence rating on [IETS](iets.md).

[3](javascript:;). This photograph of the entity was taken during a special operation by drone on the 14th of November, 2023. It is also believed to be the first-ever visual evidence captured of this entity.

[4](javascript:;). Simply put, it is a compound formed by 2 regular tetrahedra intertwined in such a way that the faces of one correspond to the vertices of the other, and their edges crossing at right angles. The Stella Octangula numbers are figurate numbers that count the number of spheres that can be arranged into the shape of a stellated octahedron, which includes 124 (when given side lengths of 12 spheres), and hence the entity's ID number.

[5](javascript:;). There have been multiple reports of wanderers forgetting large amounts and/or having wrong memories before the entity's discovery.

[6](javascript:;). Their exact names won't be mentioned at the request of B's group.

[Wish to remember?](javascript:;)

[It's just a burning memory.](javascript:;)

**Written by**:  
  
  
**Special thanks to:**  
, , and as critics.  
  
Page's [theme](theme__highlighter--22b78a54.md) made by .  
Greenlit by .

« [Entity 123](entity-123.md) | Entity 124 | [Entity 125](entity-125.md) »

  

rating: +10[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Entity 124 - "Memory Merchant"](entity-124.md)" by Nimortal, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/entity-124](entity-124.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/entity-124">Entity 124 - "Memory Merchant"</a>" by Nimortal, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/entity-124">https://backrooms-wiki.wikidot.com/entity-124</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** ezgif.com-speed.gif  
> **Author:** **Brokk**  
> **Source:** [link](http://www.brokk.me.uk/polyhedra/two_tetrahedra.gif) or his [page](index.md).  
> **License:** [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0)  
> **Note:** Background removed and sped up by me .

> **Name:** 124.jpg  
> **Author:**   
> **License:** [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0)

> **Name:** Mind altering.png  
> **Author:**   
> **License:** [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0)

> **Name:** 1st encounter with 124's 10 mins aftermath.wav  
> **Author:**   
> **License:** [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0)

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/entity-124](https://backrooms-wiki.wikidot.com/entity-124)
