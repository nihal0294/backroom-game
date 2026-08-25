---
title: "Fakeypedia, the fake encyclopedia."
source: "https://backrooms-wiki.wikidot.com/iccaarus"
retrieved_at: "2026-08-23T23:39:27+00:00"
license: CC-BY-SA-3.0
---

# Fakeypedia, the fake encyclopedia.

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

[Level 610](level-610.md)![6SNMh3Ri12wQEfp.jpg](https://s2.loli.net/2022/12/21/6SNMh3Ri12wQEfp.jpg)Level 610 is a small enclosed room with an appearance similar to Level 12. The walls, floor, and ceiling are all bright white. The whole level consists of nothing but an old-fashioned light switch on a wall. The light in this level is stable, but the light source is unknown. Wanderers who have entered this level describe the light as "dazzling"; It is reported that long-term exposure to such light will cause wanderers to contract snow blindness. It is recommended that wanderers wear sunglasses when exploring this level to reduce eye damage caused by bright light. - "Melanoleukophobia"  
Author(s):

(+67) (+69, -2)

[Level 994](level-994.md)![%E6%B5%B7%E6%BB%A91](http://ngfz.wikidot.com/local--files/tuchuang/%E6%B5%B7%E6%BB%A91)Level 994 is a beach facing the sea on the east and surrounded by mountains in other directions. As no animals or plants have been observed, it has been determined that no entities exist in this level. Moreover, there are also no observable structures in this level. The sea facing the beach has irregular flood and ebb tides. The maximum beach area reachable after the ebb tide has been recorded to be about twenty square kilometers, but the minimum beach area reachable after the flood tide is uncertain and unrecorded. - "Exist Here"  
Author(s):

(+114) (+118, -4)

[Level 712](level-712.md)![Brs6yPLfEU9X8Kd.jpg](https://s2.loli.net/2022/11/07/Brs6yPLfEU9X8Kd.jpg)Level 712 is a weald perpetually shrouded in mist. The land consists entirely of a flat cone-shaped hill that is 50 to 100 meters in height with a gentle slope. The main vegetation of the weald is common grass and lone, dried-out trees that lack any fallen leaves around them. This level is finite, but the exact size is difficult to measure due to its spatial properties. Wanderers who enter this level will randomly appear on one side of the hill, and if they try to move away from the hilltop, they will eventually appear on the other side. - "The Weald of Parrots"  
Author(s):

(+40) (+44, -4)

[Level 588](level-588.md)![c588cloud](http://be-the-worthy.wikidot.com/local--files/images/c588cloud)Level 588 is generally regarded as an extremely large piece of immaculate land. The sky is always pink-violet, with the solar angle, the tint of sunlight, and brightness the same as the sunset in the Frontrooms. The land is flat with differences in height usually less than a meter, making the landscape look like a desert. However, the floor of Level 588 is unexpectedly smooth and clean with no visible defects or stains, as if modeled by computers. All attempts to leave traces on the floor have failed. Moreover, its feel is often described as inexplicable, and it is difficult to match it with any material in the Frontrooms. - "Obsession"  
Author(s):

(+68) (+71, -3)

[Level 598](level-598.md)![steve-johnson-RB-L3idV2Wk-unsplash.jpg](http://backrooms-sandbox-2.wikidot.com/local--files/iccaarus/steve-johnson-RB-L3idV2Wk-unsplash.jpg)Level 598 is a massive tunnel-like structure comprised of glass. The floor of this level is incredibly thin and delicate, putting wanderers at risk of falling and being pierced by glass after stepping on it. The level has an unstable light source cycle, and there have been reports of the coexistence of dozens of light sources. The distance and orientation of the light sources frequently change instantly, and the luminance can occasionally be as bright as the simultaneous illumination of dozens of suns. - "Kaleidoscopic Purgatory"  
Author(s):

(+21) (+24, -3)

[Level 808](level-808.md)![shop.jpg](http://vallerback.wdfiles.com/local--files/x/shop.jpg)Level 808 is a synthwave-style continent that many entities composed of polygons and laser gridlines inhabit. The appearance of these entities cannot be determined because the number of edges of the polygon is too small. When wanderers enter this level, their bodies will emit neon lasers, and turning them into a moving light source. According to long-term observations, this laser seems to be the human aura vastly amplified under an unknown effect. - "Synthwave World"  
Author(s):

(+71) (+75, -4)

[Level 353](level-353.md)![vrup60.jpg](http://backrooms-wiki.wikidot.com/local--files/iccaarus/vrup60.jpg)Level 353 is an American-style single-family villa with a swimming pool of about 25 square meters as its main area. For unknown reasons, the time of this level has stopped at 4:30 p.m. The swimming pool's construction is opulent, with granite tiles and crystal-clear water with a nice pineapple aroma, and it is equipped with comprehensive safety facilities. Around the pool, there are two beach chairs and a round white table, as well as some tropical plants on its periphery. - "Clement's Public Private Swimming Pool"  
Author(s):

(+44) (+49, -5)

[Level 912](level-912.md)![Level%20C-912_2](https://scpsandboxcn.wikidot.com/local--files/new-img/Level%20C-912_2)Level 912 is an enclosed room that is about 4 meters long, 3.5 meters wide, and 2.5 meters high. The level's walls, ceiling, and floor are covered with white wallpaper with no pattern or decoration. The room is overall well-equipped, with furnishings of varying quantity, types, and locations, most of which appear to be white. Sofas, beds, tables, and other common furnishings are included. There are no windows in the room, however, a locked door occasionally appears. - "The Underlying Rot"  
Author(s):

(+40) (+54, -14)

[Level 668](level-668.md)![MOSHED-2022-8-15-12-47-9.jpg](http://backroomssandboxcn.wikidot.com/local--files/collab:opto/MOSHED-2022-8-15-12-47-9.jpg)Scene-01.7 is a Ψ-Ranked Scene of the DevRooms, discovered on 17/10/1989. Scene-01.7 appears to be the image seen in an autorefractor in the real world, usually presenting itself as a road stretching forward with an endless field of wheat on both sides and a floating balloon or a distorted house at the end of the road. - "Hor·eye·zon"  
Author(s):

(+75) (+80, -5)

[Level 110](level-110.md)![nasa-cIX5TlQ_FgM-unsplash.jpg](http://backrooms-wiki.wdfiles.com/local--files/level-110/nasa-cIX5TlQ_FgM-unsplash.jpg)The main structure of Level 110 is a massive, artificial, tube-shaped space city surrounding a giant black hole, with an estimated diameter of about 1000AU. There are currently no known laws of physics able to explain how it exists, as it conflicts significantly with the natural laws we know. - "Everlasting End"  
Author(s):

(+61) (+63, -2)

[Level 667](level-667.md)![photo-1556983852-43bf21186b2a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80](https://images.unsplash.com/photo-1556983852-43bf21186b2a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80)Level 667 is comprised of an unknown amount of gigantic PMMA (Polymethyl Methacrylate) hollow spheres and their contents, as well as a heavy water sea with an extremely high concentration of deuterium and tritium. The level features a 24-hour and equally divided day and night cycle. The climate is pleasant, although thunderstorms and heavy water rain frequently occur. - "Dometopia"  
Author(s):

(+37) (+40, -3)

---

Source: [https://backrooms-wiki.wikidot.com/iccaarus](https://backrooms-wiki.wikidot.com/iccaarus)
