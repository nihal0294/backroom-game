---
title: "Metastasis 974 - \"█████'s House\""
source: "https://backrooms-wiki.wikidot.com/metastasis-974"
retrieved_at: "2026-08-23T23:35:43+00:00"
license: CC-BY-SA-3.0
---

# Metastasis 974 - "█████'s House"

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

[+ 展开样式代码](javascript:;)

[- 收起样式代码](javascript:;)

```
/* BHL Style Search Top Box And User Account */
/* By Mercuresphere */
/* Based on BHL Theme */
 
:root, :root:lang(cn) {
    --merc-light-color: var(--swatch-menutxt-light-color);
    --merc-dark-color: var(--swatch-menubg-dark-color);
 
    --user-account-mask: url("https://fastly.jsdelivr.net/gh/Crimone/crimson-anemone@main/files/user-circle.svg");
    --search-top-box-mask: url("https://fastly.jsdelivr.net/gh/Crimone/crimson-anemone@main/files/search-top-box-mask.svg");
}
 
/* ===用户和搜索栏=== */
@media only screen and (max-width: 768px) {
    #login-status {
        right: unset;
        font-size: unset;
    }
 
    #navi-bar, #navi-bar-shadow, #search-top-box-input {
        display: unset;
    }
 
    #search-top-box-input {
        min-width: unset;
    }
 
    #search-top-box {
        top: unset;
        right: unset;
        height: unset;
    }
 
    #search-top-box:focus-within {
        box-shadow: unset;
        background: unset;
        padding: unset;
    }
 
    #search-top-box:not(:focus-within):before {
        -webkit-mask-size: calc(calc(0.9375rem * 1.8) / 2) calc(calc(0.9375rem * 1.8) / 2);
        -webkit-mask-position: center center;
        -webkit-mask-repeat: no-repeat;
        -webkit-mask-image: var(--search-top-box-mask);
        z-index: 14;
        background-color: rgb(var(--merc-light-color));
        color: rgb(var(--merc-dark-color));
        text-align: center;
        cursor: pointer;
        mask-image: var(--search-top-box-mask);
        mask-position: center center;
        mask-repeat: no-repeat;
        mask-size: calc(calc(0.9375rem * 1.8) / 2) calc(calc(0.9375rem * 1.8) / 2);
        pointer-events: none;
        position: absolute;
        top: 0;
        right: 0;
        width: calc(0.9375rem * 1.8);
        height: 100%;
        content: " ";
    }
 
    #search-top-box form[id=search-top-box-form] {
        visibility: unset;
        height: unset;
    }
 
    #search-top-box form[id=search-top-box-form]:focus-within {
        visibility: unset;
    }
 
    #search-top-box form[id=search-top-box-form] input {
        -webkit-appearance: unset;
        -moz-appearance: unset;
        position: unset;
        top: unset;
        transform: unset;
        appearance: unset;
        height: unset;
    }
 
    #search-top-box form[id=search-top-box-form] input[type=text] {
        visibility: unset;
        transition: box-shadow .2s cubic-bezier(.4, 0, .2, 1), font-variation-settings .2s cubic-bezier(.4, 0, .2, 1), font-weight .2s cubic-bezier(.4, 0, .2, 1), background-color .15s cubic-bezier(.4, 0, .2, 1), color .15s cubic-bezier(.4, 0, .2, 1), right .2s cubic-bezier(.4, 0, .2, 1), width .6s cubic-bezier(.4, 0, .2, 1), padding .6s cubic-bezier(.4, 0, .2, 1), max-width .6s cubic-bezier(.4, 0, .2, 1);
    }
 
    #search-top-box form[id=search-top-box-form]:not(:focus-within) input[type=text] {
        position: unset;
        right: unset;
        transform: unset;
        cursor: unset;
        border-width: unset;
        width: unset;
        height: unset;
        color: unset;
    }
 
    #search-top-box form[id=search-top-box-form]:not(:focus-within) input[type=text]:hover {
        background-color: unset;
    }
 
    #search-top-box form[id=search-top-box-form] input[type=submit] {
        background: none;
        transition: unset;
    }
 
    #search-top-box form[id=search-top-box-form]:not(:focus-within) input[type=submit] {
        opacity: unset;
        margin: unset;
        padding: unset;
        width: unset;
    }
 
    #header h1 a {
        z-index: unset;
    }
}
 
@media only screen and (max-width: 56.25rem) {
    #search-top-box form[id="search-top-box-form"]:not(:focus-within) input[type="text"] {
        background-color: rgba(0, 0, 0, 0);
    }
}
 
@media (min-width: 36rem) {
    #login-status {
        flex-grow: unset;
        left: unset;
        right: unset;
    }
 
    #login-status:not(:hover):not(:focus-within) {
        visibility: hidden;
    }
 
    #login-status::before {
        visibility: visible;
    }
}
 
#search-top-box-input {
    min-width: unset;
    display: inline-block;
}
 
#search-top-box-form input[type=submit], #search-top-box-form input[type=submit]:focus, #search-top-box-form input[type=submit]:hover {
    color: transparent;
}
 
#search-top-box-form input[type=submit]:focus, #search-top-box-form input[type=submit]:hover {
    border: none;
    text-shadow: none;
}
 
#search-top-box-form input[type=submit], #search-top-box-input:focus, #search-top-box-input:hover {
    border: none;
}
 
#search-top-box {
    display: flex;
    z-index: 12;
    position: absolute;
    top: 1.5em;
    right: calc(3% - .25em);
    align-items: center;
    justify-content: center;
    width: auto;
    height: calc(0.9375rem * 1.8);
    transform: translateY(-50%);
    font-size: calc(0.9375rem * .86667);
}
 
#search-top-box, #search-top-box * {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    border: none;
    transition: box-shadow .2s cubic-bezier(.4, 0, .2, 1), font-variation-settings .2s cubic-bezier(.4, 0, .2, 1), font-weight .2s cubic-bezier(.4, 0, .2, 1), background-color .15s cubic-bezier(.4, 0, .2, 1), color .15s cubic-bezier(.4, 0, .2, 1), right .2s cubic-bezier(.4, 0, .2, 1), width .6s cubic-bezier(.4, 0, .2, 1), padding .6s cubic-bezier(.4, 0, .2, 1), max-width .6s cubic-bezier(.4, 0, .2, 1);
    will-change: box-shadow, font-variation-settings, font-weight, background-color, color, right, width, padding, max-width;
}
 
#search-top-box:focus-within, #search-top-box:focus-within *, #search-top-box:focus-within :after, #search-top-box:focus-within :before {
    margin: 0;
    padding: 0;
    transition: box-shadow .2s cubic-bezier(.4, 0, .2, 1), font-variation-settings .2s cubic-bezier(.4, 0, .2, 1), font-weight .2s cubic-bezier(.4, 0, .2, 1), background-color .15s cubic-bezier(.4, 0, .2, 1), color .15s cubic-bezier(.4, 0, .2, 1), right .2s cubic-bezier(.4, 0, .2, 1), width .3s cubic-bezier(.4, 0, .2, 1), padding .3s cubic-bezier(.4, 0, .2, 1), max-width .3s cubic-bezier(.4, 0, .2, 1);
    will-change: box-shadow, font-variation-settings, font-weight, background-color, color, right, width, padding, max-width;
}
 
#search-top-box:focus-within {
    background: rgba(var(--merc-dark-color), .7);
    box-shadow: calc(calc(0.9375rem * 1.8) / 2 * -1) 0 calc(calc(0.9375rem * 1.8) / 2) rgba(var(--merc-dark-color));
}
 
#search-top-box:after, #search-top-box:before {
    position: absolute;
    top: 0;
    right: 0;
    width: calc(0.9375rem * 1.8);
    height: 100%;
    content: " ";
}
 
#search-top-box:before {
    -webkit-mask-size: calc(calc(0.9375rem * 1.8) / 2) calc(calc(0.9375rem * 1.8) / 2);
    -webkit-mask-position: center center;
    -webkit-mask-repeat: no-repeat;
    -webkit-mask-image: var(--search-top-box-mask);
    z-index: 14;
    background-color: rgb(var(--merc-light-color));
    color: rgb(var(--merc-dark-color));
    text-align: center;
    cursor: pointer;
    mask-image: var(--search-top-box-mask);
    mask-position: center center;
    mask-repeat: no-repeat;
    mask-size: calc(calc(0.9375rem * 1.8) / 2) calc(calc(0.9375rem * 1.8) / 2);
    pointer-events: none;
}
 
#search-top-box:not(:focus-within):hover:before {
    background-color: rgb(var(--merc-light-color));
}
 
#search-top-box:after {
    --clip-path: polygon(0 0, 100% 0, 100% 100%, 0 100%);
    -webkit-clip-path: var(--clip-path);
    z-index: 13;
    clip-path: var(--clip-path);
    pointer-events: none;
    background-color: transparent;
}
 
#search-top-box:not(:focus-within):after {
    --clip-path: polygon(100% 0, 100% 0, 100% 100%, 100% 100%);
    background-color: rgb(var(--merc-light-color), 0);
}
 
#search-top-box form[id=search-top-box-form] {
    display: flex;
    visibility: visible;
    position: relative;
    right: 0;
    max-width: 100%;
    height: calc(0.9375rem * 1.8);
}
 
#search-top-box form[id=search-top-box-form]:not(:focus-within) {
    max-width: calc(0.9375rem * 15);
}
 
#search-top-box form[id=search-top-box-form] input {
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    position: relative;
    top: 0;
}
 
#search-top-box form[id=search-top-box-form] input[type=text] {
    z-index: 13;
    position: absolute;
    right: 0;
    width: calc(0.9375rem * 15);
    max-width: calc(0.9375rem * 15);
    height: 100%;
    padding: 0 calc(0.9375rem * 1.8) 0 1em;
    outline: 0 solid rgb(var(--merc-light-color));
    background-color: rgb(var(--merc-dark-color), .7);
    box-shadow: 0 0 0 .125rem rgb(var(--merc-light-color));
    color: rgba(var(--merc-light-color));
}
 
#search-top-box form[id=search-top-box-form]:not(:focus-within) input[type=text] {
    max-width: calc(0.9375rem * 1.8);
    padding: 0;
    outline-width: 0;
    background-color: rgba(var(--merc-dark-color), 0);
    box-shadow: 0 0 0 0 rgb(var(--merc-light-color));
    color: rgba(0, 0, 0, 0);
    cursor: pointer;
}
 
#search-top-box form[id=search-top-box-form]:not(:focus-within) input[type=text]:hover {
    background-color: rgba(var(--merc-dark-color), 1);
}
 
#search-top-box form[id=search-top-box-form] input[type=submit] {
    visibility: visible;
    z-index: 14;
    position: absolute;
    right: 0;
    width: calc(0.9375rem * 1.8);
    height: calc(0.9375rem * 1.8);
    outline: 0 solid rgb(var(--merc-light-color));
    background-color: transparent;
    box-shadow: 0 0 0 .125rem rgb(var(--merc-light-color));
    color: t;
    font-size: calc(0.9375rem * .86667);
    cursor: pointer;
    pointer-events: all;
}
 
#search-top-box form[id=search-top-box-form]:not(:focus-within) input[type=submit] {
    box-shadow: 0 0 0 0 rgb(var(--merc-light-color));
    pointer-events: none;
}
 
#login-status {
    --wght: var(--ui-wght);
    display: flex;
    z-index: 11;
    position: absolute;
    top: 1.5em;
    right: calc(3% + calc(0.9375rem * 1.8) - .25em);
    align-items: center;
    justify-content: center;
    height: 2em;
    margin: 0 0 0 .5em;
    transform: translateY(-50%);
    color: rgb(var(--merc-light-color));
    font-weight: var(--wght);
    font-size: 1em;
    font-family: var(--UI-font);
    white-space: nowrap;
    transition: opacity .2s cubic-bezier(.4, 0, .2, 1);
}
 
#search-top-box:focus-within ~ #login-status {
    opacity: 0;
}
 
#login-status span.printuser a:first-of-type {
    width: 1.75em;
}
 
#login-status:not(.page-rate-widget-box):not(#search-top-box-form) > a.login-status-create-account, #login-status:not(.page-rate-widget-box):not(#search-top-box-form) > a.login-status-sign-in {
    margin: 0 1em;
    background-color: rgb(var(--pale-gray-monochrome));
    color: rgb(var(--merc-dark-color));
    padding: 0.1em 1em;
    text-decoration: none;
}
 
#login-status:not(.page-rate-widget-box):not(#search-top-box-form) > a.login-status-create-account:active, #login-status:not(.page-rate-widget-box):not(#search-top-box-form) > a.login-status-create-account:hover, #login-status:not(.page-rate-widget-box):not(#search-top-box-form) > a.login-status-sign-in:active, #login-status:not(.page-rate-widget-box):not(#search-top-box-form) > a.login-status-sign-in:hover, #login-status:not(.page-rate-widget-box):not(#search-top-box-form) > a.login-status-create-account:focus-within, #login-status:not(.page-rate-widget-box):not(#search-top-box-form) > a.login-status-sign-in:focus-within {
    background-color: rgba(var(--merc-light-color), 1);
    color: rgb(var(--merc-dark-color));
    text-decoration: none;
}
 
#login-status span.printuser {
    --wght: var(--ui-wght);
    margin-right: .5em;
    color: rgb(var(--merc-light-color));
    font-weight: var(--wght);
}
 
#login-status a#my-account, #login-status a[href*="account/messages"] {
    color: rgb(var(--merc-light-color));
}
 
#login-status a#my-account {
    --wght: var(--ui-wght);
    -webkit-text-decoration: underline rgb(var(--merc-dark-color)) .125em;
    display: flex;
    align-items: center;
    padding: 0 .5em;
    background-color: initial;
    box-shadow: inset 0 0 0 0 rgb(var(--merc-dark-color));
    font-weight: var(--wght);
    text-decoration: underline rgb(var(--merc-dark-color)) .125em;
    transition: box-shadow .2s cubic-bezier(.4, 0, .2, 1), text-decoration .2s cubic-bezier(.4, 0, .2, 1), -webkit-text-decoration .2s cubic-bezier(.4, 0, .2, 1);
}
 
#login-status a#my-account:active, #login-status a#my-account:hover {
    --wght: var(--ui-hvr-wght);
    -webkit-text-decoration: underline rgb(var(--merc-dark-color)) 0;
    box-shadow: inset 0 -2em 0 0 rgb(var(--merc-dark-color));
    color: rgb(var(--merc-light-color));
    font-weight: var(--wght);
    text-decoration: underline rgb(var(--merc-dark-color)) 0;
}
 
#login-status a#my-account:focus-within {
    --wght: var(--ui-hvr-wght);
    -webkit-text-decoration: underline rgb(var(--merc-dark-color)) 0;
    box-shadow: inset 0 -2em 0 0 rgb(var(--merc-dark-color));
    color: rgb(var(--merc-light-color));
    font-weight: var(--wght);
    text-decoration: underline rgb(var(--merc-dark-color)) 0;
}
 
#login-status #account-topbutton {
    --clip-path: polygon(30% 35%, 70% 35%, 50% 60%, 50% 60%);
    -webkit-clip-path: var(--clip-path);
    position: relative;
    width: var(--account-height);
    height: var(--account-height);
    margin: 0;
    padding: 0;
    background-color: rgb(var(--merc-light-color));
    color: transparent;
    clip-path: var(--clip-path);
    transition: -webkit-clip-path .1s cubic-bezier(.4, 0, .2, 1);
    transition: clip-path .1s cubic-bezier(.4, 0, .2, 1), -webkit-clip-path .1s cubic-bezier(.4, 0, .2, 1);
}
 
#login-status #account-options {
    display: block !important;
    z-index: 12;
    position: absolute;
    top: 1.5rem;
    right: 0;
    width: 10em;
    margin: .25em 0 0;
    padding: 0;
    overflow: hidden;
    background-image: var(--gradient-header);
    background-color: rgb(var(--merc-dark-color));
    opacity: 0;
    pointer-events: none;
    transition: opacity .15s cubic-bezier(.4, 0, .2, 1);
}
 
#login-status #account-options:focus-within, #login-status #account-topbutton:active + #account-options, #login-status #account-topbutton:focus + #account-options {
    opacity: 1;
    pointer-events: all;
}
 
@media (pointer: coarse) {
    #login-status #account-options:hover, #login-status #account-topbutton:hover + #account-options {
        opacity: 1;
        pointer-events: all;
    }
}
 
#login-status #account-options * {
    margin: 0;
    padding: 0;
}
 
#login-status #account-options ul {
    display: grid;
    grid-template-columns: 1fr 1fr;
    grid-auto-rows: 2em;
    flex-grow: 1;
    align-items: center;
    justify-content: center;
    font-size: .85em;
}
 
#login-status #account-options ul li {
    position: relative;
}
 
#login-status #account-options ul li, #login-status #account-options ul li a {
    display: flex;
    align-items: center;
    justify-content: center;
    width: 100%;
    height: 100%;
}
 
#login-status #account-options a {
    --box-shadow: rgba(var(--merc-dark-color));
    --wght: var(--ui-wght);
    position: relative;
    flex-grow: 1;
    height: 100%;
    max-height: 2em;
    padding: 0 .25em;
    box-shadow: inset 0 0 0 .0625rem var(--merc-dark-color);
    font-weight: var(--wght);
    transition: color .15s cubic-bezier(.4, 0, .2, 1), font-weight .15s cubic-bezier(.4, 0, .2, 1), font-variation-settings .15s cubic-bezier(.4, 0, .2, 1);
}
 
#login-status #account-options li > a, #login-status #account-options li > a:visited {
    color: rgb(var(--merc-light-color));
}
 
#login-status #account-options li > a:active, #login-status #account-options li > a:hover {
    --wght: var(--ui-hvr-wght);
    color: rgb(var(--merc-dark-color));
    font-weight: var(--wght);
    text-decoration: none;
}
 
#login-status #account-options li > a:focus-within {
    --wght: var(--ui-hvr-wght);
    color: rgb(var(--merc-dark-color));
    font-weight: var(--wght);
    text-decoration: none;
}
 
#login-status #account-options li > a[href*="/messages"] {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    min-height: 100%;
    font-size: 0;
}
 
#login-status #account-options li > a[href*="/messages"]:after {
    position: absolute;
    left: 50%;
    transform: translateX(-50%);
    content: "信息";
    font-size: calc(0.9375rem * .765);
    pointer-events: none;
}
 
#login-status #account-options li > a:before {
    --clip-path: polygon(0 0, 0 0, 0 100%, 0 100%);
    -webkit-clip-path: var(--clip-path);
    z-index: -1;
    position: absolute;
    top: 0;
    width: 100%;
    height: 100%;
    background-color: rgb(var(--merc-light-color));
    content: " ";
    clip-path: var(--clip-path);
    pointer-events: none;
    transition: -webkit-clip-path .2s cubic-bezier(.4, 0, .2, 1);
    transition: clip-path .2s cubic-bezier(.4, 0, .2, 1), -webkit-clip-path .2s cubic-bezier(.4, 0, .2, 1);
}
 
#login-status #account-options li > a:active:before, #login-status #account-options li > a:hover:before {
    --clip-path: polygon(-15% 0, 115% 0, 100% 100%, 0 100%);
}
 
#login-status #account-options li > a:focus-within:before {
    --clip-path: polygon(-15% 0, 115% 0, 100% 100%, 0 100%);
}
 
/* ===默认收起用户信息栏和搜索栏=== */
#search-top-box {
    top: 23px;
    right: calc(3%);
}
 
#login-status {
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    top: 24px;
    right: calc(3% + calc(0.9375rem * 1.8) + .25em);
    color: transparent;
    pointer-events: none;
    transition: color .2s cubic-bezier(.4, 0, .2, 1);
    user-select: none;
}
 
@media only screen and (min-width: 980px) {
    #search-top-box {
        right: calc(3% + (-100vw + var(--header-width-on-desktop, 61.25rem)) / 2);
    }
 
    #login-status {
        right: calc(3% + calc(0.9375rem * 1.8) + .25em + (-100vw + var(--header-width-on-desktop, 61.25rem)) / 2);
    }
}
 
#login-status:active, #login-status:hover {
    -webkit-user-select: initial;
    -moz-user-select: initial;
    -ms-user-select: initial;
    color: rgb(var(--merc-light-color));
    pointer-events: all;
    user-select: auto;
}
 
#login-status:focus-within {
    -webkit-user-select: initial;
    -moz-user-select: initial;
    -ms-user-select: initial;
    color: rgb(var(--merc-light-color));
    pointer-events: all;
    user-select: auto;
}
 
#login-status:active #account-options, #login-status:hover #account-options {
    pointer-events: all;
}
 
#login-status:focus-within #account-options {
    pointer-events: all;
}
 
#login-status > :not(#account-topbutton):not([href*="account/messages"]) {
    --clip-path: polygon(100% 0, 100% 0, 100% 100%, 100% 100%);
    -webkit-clip-path: var(--clip-path);
    clip-path: var(--clip-path);
    opacity: 0;
    transition: box-shadow .2s cubic-bezier(.4, 0, .2, 1), text-decoration .2s cubic-bezier(.4, 0, .2, 1), color .2s cubic-bezier(.4, 0, .2, 1), clip-path .2s cubic-bezier(.4, 0, .2, 1), opacity .2s cubic-bezier(.4, 0, .2, 1), -webkit-text-decoration .2s cubic-bezier(.4, 0, .2, 1), -webkit-clip-path .2s cubic-bezier(.4, 0, .2, 1);
}
 
#login-status:active > :not(#account-topbutton):not([href*="account/messages"]), #login-status:hover > :not(#account-topbutton):not([href*="account/messages"]) {
    --clip-path: polygon(0 0, 100% 0, 100% 100%, 0 100%);
    -webkit-clip-path: var(--clip-path);
    clip-path: var(--clip-path);
    opacity: 1;
}
 
#login-status:focus-within > :not(#account-topbutton):not([href*="account/messages"]) {
    --clip-path: polygon(0 0, 100% 0, 100% 100%, 0 100%);
    -webkit-clip-path: var(--clip-path);
    clip-path: var(--clip-path);
    opacity: 1;
}
 
#login-status #account-topbutton {
    margin-left: 0;
    background-color: initial;
    pointer-events: all;
    transition: clip-path .15s cubic-bezier(.4, 0, .2, 1), background-color .15s cubic-bezier(.4, 0, .2, 1), -webkit-clip-path .15s cubic-bezier(.4, 0, .2, 1);
}
 
#login-status:hover #account-topbutton {
    background-color: rgb(var(--merc-light-color));
}
 
#login-status:before {
    -webkit-mask-image: var(--user-account-mask);
    -webkit-mask-size: calc(calc(0.9375rem * 1.8) - .5em);
    -webkit-mask-position: center right;
    -webkit-mask-repeat: no-repeat;
    z-index: 2;
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(var(--merc-light-color), 1);
    content: "";
    cursor: pointer;
    mask-image: var(--user-account-mask);
    mask-position: center right;
    mask-repeat: no-repeat;
    mask-size: calc(calc(0.9375rem * 1.8) - .5em);
    pointer-events: all;
    transition: background-color .15s cubic-bezier(.4, 0, .2, 1);
}
 
#login-status:hover:before {
    background-color: rgba(var(--search-icon-hover-color), 1);
}
 
#login-status:active:after, #login-status:active:before, #login-status:hover:after, #login-status:hover:before {
    background-color: rgba(var(--search-icon-hover-bg-color), 0);
    cursor: auto;
    pointer-events: none;
}
 
#login-status:focus-within:after, #login-status:focus-within:before {
    background-color: rgba(var(--search-icon-hover-bg-color), 0);
    cursor: auto;
    pointer-events: none;
}
 
#login-status #account-topbutton {
    --clip-path: polygon(0 0, 100% 0, 100% 100%, 0 100%);
    -webkit-clip-path: var(--clip-path);
    background-color: rgba(var(--merc-light-color), 0);
    clip-path: var(--clip-path);
}
 
#login-status:active #account-topbutton, #login-status:hover #account-topbutton {
    --clip-path: polygon(30% 35%, 70% 35%, 50% 60%, 50% 60%);
    -webkit-clip-path: var(--clip-path);
    background-color: rgb(var(--merc-light-color));
    clip-path: var(--clip-path);
}
 
#login-status:focus-within #account-topbutton {
    --clip-path: polygon(30% 35%, 70% 35%, 50% 60%, 50% 60%);
    -webkit-clip-path: var(--clip-path);
    background-color: rgb(var(--merc-light-color));
    clip-path: var(--clip-path);
}
 
#login-status #account-options {
    margin: 0;
}
 
#login-status a[href*="account/messages"] {
    color: rgb(var(--merc-light-color));
    pointer-events: all;
}
 
#account-topbutton {
    border: none;
}
 
#account-options {
    border: none;
}
```

rating: +31[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

***[Search](level-974.md)*** **Metastasis** **974**

Loading…

**You received a new message!**

Ms. Frieda,

I assume you've already caught wind of the anomalous shifts occurring within **Metastasis** 974. Given your role as the Administrator for Levels 900–999, I thought you might find it necessary to restructure the relevant logs. To that end, I have flagged several critical files from my review and attached them below. Additionally, I've drafted a new archive entry of my own and included it as well. Would you mind taking a look? I'm curious to see if this draft has the potential to be promoted to official status.

[https://central-database.com/sandbox:koyako-974](javascript:;)

# **Metastasis** **974**

SURVIVAL DIFFICULTY:

2

- Unsafe.
- Secure.
- Unique Entity.

![A blurry picture of a pink room, from which we can vaguely make out a shapeless black tall figure by the window.](http://brsandbox-pro.wikidot.com/local--files/worthy-i/Metastasis-974-Door-Shadow)

The original image of the level.

**Metastasis** **974** is the 975th level of the Backrooms.

# **#** Description

This level is composed of dozens of pink rooms, interconnected by concrete corridors sharing the same decorative motifs.

Wanderers are prone to total disorientation within this level; the spatial alignment between the sprawling rooms is often inconsistent, and the chambers themselves are virtually indistinguishable.

The aesthetic of these rooms is remarkably uniform: a profusion of ribbons, sheer fabrics, and ambient lights dangle from the ceilings. Wallpapers alternate between pink and white, frequently adorned with bows or polka-dot patterns. Massive wardrobes, capable of occupying entire walls, are filled with various cartoon-themed feminine garments and an array of accessories.

However, a closer inspection reveals profound underlying chaos. Ribbons may hang suspended from the ceiling without any physical support; wallpaper patterns are crooked and misaligned; bows are tied into haphazard tangles or even dead knots. Every room is marred by minute, distinct errors.

Any attempt to damage the interior decor will draw the attention of a specific entity native to this level: **█████**. Furthermore, beneath the pink decoration lies its absolute antithesis.

Peeling back the pink sheets, quilts, or pillows reveals sponge foundations riddled with moth-eaten cavities. Close observation shows that the undersides of all wooden furniture are mottled and decaying; looking up into the fluorescent lights uncovers the remains of dead insects, while long, shed strands of hair can be found scattered across the carpets below.

The sole exception is a room located at the level's geometric center. Its interior is devoid of any flaws or anomalies, and its colors are significantly more vibrant than the surrounding rooms. Consequently, this central chamber stands out starkly against the monotonous environment. The frequency of the aforementioned errors increases proportionally with the distance from this center.

While the level is generally silent, it occasionally erupts with Japanese female-vocal or Vocaloid tracks from the 1990s through the 2010s. Some are recognizable classics of high aesthetic quality, while others are of indistinguishable origin—exhibiting "musical incoherence" and "unintelligible" vocal lyrics. These tracks typically persist for three to four minutes. Music, whether native to the level or played by wanderers, can pacify **█████**, causing it to cease its pursuit or active searching.

Supplies such as [Almond Water](object-1.md), [Spoiled](https://backrooms-wiki.wikidot.com/rotten-ration) [Royal Rations](object-16.md), and [Greasy Marshmallows](object-30.md) can be found here. According to wanderer reports, these items are universally greasy and possess a dull, stale flavor. Interacting with refrigerators or storage jars is strongly discouraged, not only because it attracts **█████**, but because such facilities are prone to failure within this level. Multiple wanderers described murky, unidentified fluids leaking from the top compartments of fridges, luring insects and ants from beneath the carpet; extreme caution is advised to ensure these pests are not consumed during meals.

Note that current records suggest the level is gradually expanding. It is increasingly evident that every few days, the time required to travel from the central room to a dead-end increases. This suggests that the rooms are capable of self-proliferation, albeit at the cost of constant qualitative degradation.

![The image with enhanced brightness, in which the black figure could be clearly seen amidst the overexposed pink decorations.](http://brsandbox-pro.wikidot.com/local--files/worthy-i/Metastasis-974-Door-Shadow-Brightness)

By editing the original image, the appearance of the entity can be seen.

## **#** Entities

As mentioned previously, a unique entity exists within this level: **█████**. The entity's whereabouts is uncertain. As no further investigations have been conducted, the available data is insufficient to reconstruct its complete physical profile. Current intelligence is limited to the following:

- It stands 3.2 meters tall, possessing a humanoid form with abnormally elongated limbs that lack hands or feet;
- Its skin is a matte black, with a texture resembling leather;
- While it appears to lack any facial features, it is theorized to perceive its surroundings similarly to most wanderers. It is exceptionally sensitive to any damage dealt to the interior—capable of rapidly tracking the location of compromised decor—though there are currently no records of interaction with wanderers, whether friendly or hostile;
- It moves smoothly and rapidly, and may trail several rooms behind a wanderer;
- It is designated as **K** **Meta** **█████**.

The entity's behavior seemingly suggests hostility toward wanderers—accidental disturbances of fragile ribbons or patches in random locations can alert it, leading some to perceive these rooms as traps. However, this remains unsubstantiated. Only a few wanderers have sighted the entity, and all reported cases involved the witnesses fleeing the room out of sheer intimidation. Crucially, the entity does not pursue the wanderers; instead, it tracks only the damaged interior, which it reportedly repairs through unknown means.

# **#** Bases, Outposts and Communities

Due to the scarcity of documented wanderer reports and transient traffic, there are currently no known bases, outposts, or communities within this level. Furthermore, there appears to be no strategic value or logical justification for establishing a permanent presence here in the foreseeable future.

# **#** Entrances and Exits

##### **#** Entrances

This level lacks a stable point of entry. Data suggests that whenever a wanderer transitions into a new level, there is a marginal probability of diverting into **Metastasis** **974** rather than their intended destination. This phenomenon may be contingent upon specific and unidentified conditions or may simply be a matter of random statistical chance.

##### **#** Exits

According to all recorded instances, wanderers have only managed to depart the level through the use of objects or entities with no-clip properties. There are currently no known virtual exits.

The following are the supplementary files of the document. There are a total of **5** files. Please open them in sequence.

# #1 The Dilation of Level 974

Level 974 is expanding at a rate of several rooms per day. I suppose that regardless of how unstable or unsafe a level may be, they generally appear static from an external perspective. If we were to liken a level to a living organism, most have already completed their growth stage; this place, however, is an outlier.

To me, it feels like **Metastasis**. **Metastasis** grows and proliferates. There is no such thing as "adulthood" for **Metastasis**; it exists in a state of perpetual, unyielding growth.

To be honest—and perhaps I am just catastrophizing—it leaves me feeling a bit unsettled. [Level 0](level-0.md) and [Level 11](level-11.md) are merely vast or infinite in scale, which is fundamentally different from a space that is caught in a rolling, never-ending expansion. Initial reports cited thirty-two rooms; now, they say there are over fifty. It is a… chronic affliction, much like the metastasis of cancer.

Yet, in reality, it grows increasingly wretched with every duplication. Those roughly-identical pink elements reorganize and meld together, but how can a layer of pink bedding, so thin it is appalling, ever hope to shroud a sponge foundation that is already so ravaged?

We endlessly repeat lives that only deteriorate, much like this place, choosing to mask the reality with "cute" things—even though we long ago ceased to be worthy of them. Executing a string of bugged code a trillion times over will never yield a functional result.

"It is far beyond saving now."

I imagine that if I ever find myself in this pink world, picking up a tattered doll that resembles one from my childhood amidst the distorted, "cute" melodies,I will surely think exactly that.

# #2 Investigation on the Level's Degradation

I opened the middle compartment of the fridge and saw what looked like rotting fruit; I could identify apples, apricots, and the like. The bottom drawer wouldn't open—it seemed to be sealed shut. When I opened the top section, a jar leaning against the door fell out, spilling some strange liquid that soaked my shoes.

It smelled like strawberry. Unfortunately, I wasn't the only one who could smell it. There were some termite-like creatures beneath the carpet, and they crawled out almost immediately.

So, whatever you do, do not eat anything here.

Sometimes there might be candy on the table; it's edible, but be careful—there could be needles inside. And if you still want to be able to stomach anything, don't let curiosity get the better of you and lift the carpet. Besides, you might attract a certain entity.

Note that the further you go, the more frequent these things become. I think I clipped in through a room with a white color scheme, but the further I wandered, the filthier the rooms became, until I ran into all this. So, try to leave as quickly as possible: minimize your exploration time, or just noclip and get out of here.

# #3 An SNS, Posted by a Wanderer Who Left a Record in the M.E.G.

I suppose everyone, to some degree, has harbored those so-called "cute" thoughts in their hearts.

I was born in the Backrooms. A cherry blossom tree from the Frontrooms was once planted in District 1 of [Level 11](level-11.md); I stood beneath it, watching the petals drift overhead like swirling snow, brushing against my face. It was then that the urge to return to the Frontrooms first took root—a sense of indignation, I think; a mixture of resentment and longing for the life that should have been mine.

And so, I finally came to understand those pink, sugar-coated, and glossed-over dreams of girlhood.

My parents met in the Backrooms. My father was single before he arrived; my mother was someone's fiancée. I grew up listening to them describe how beautiful life was in the Frontrooms, their tales of radiant youth—meanwhile, my own youth is withering away, draining into these sterile, infinite spaces.

I have just stepped into an integration of unfulfilled realities. Upon the decaying husk of the real world, its architect has applied layer after layer of vibrant filters and face powder, desperately trying to paint it into the true likeness of a dream. In the end, they stood there—crying, laughing—gazing upon their own hideous creation, lost in thought before the glistening closet of their dreams.

——*Liminal Art Union[1](javascript:;), Kaya*

# #4 A Record Left by a Wanderer

It's true; I'm certain that within that proliferating grid of rooms, I caught sight of at least one or two that were hauntingly reminiscent of the pink rooms from my childhood—the wardrobes, the beds—back when I could still be called a young girl.

Yet, this world is a product of nothing but mindless mimicry. It reminds me of how, years ago, many AI-generated images were riddled with fused details and artifacts in the strands of hair and the joints of fingers. It simply doesn't know what they are. It only knows it has to render them, without any grasp of what "hair" actually is, resulting in a crude imitation of chaotic lines. Even things that once seemed masterful appear, in this light, like the fumbling attempts of a novice just learning to draw.

It is exactly the same here.

Handbag zippers are grafted onto the straps; the frames of petticoat hoops vary wildly in length. The faces of anime characters on stickers are blurred, their anatomy displaced. Bows are contorted, trailing ribbons that connect at random. It clumsily replicates the dreams of every  
single one of us.

# #5 Unconfirmed Rumors of █████

***It is at once the architect and the prisoner.***

Ms. Lin Ming-hui,

Thank you so much for the vital materials you collected; I am incredibly grateful. The recent shifts within the levels are truly inscrutable—we must keep pushing forward. Furthermore, I was pleasantly surprised to see this document of yours. Having glanced through it, I have the following suggestions:

The two accompanying images are, in fact, identical. Therefore, only one should be retained. Unless the blurriness is an inherent result of anomalous properties or potential hazards, I suggest keeping the one with the clearest subject.  
Certain portions of the supplementary files can be integrated into the main archive after some reorganization.  
Are there truly no other points of entry or exit? We can afford to be a bit more flexible in this regard—for now, let's simply log any levels mentioned in the reports as potential transition points.  
Lastly, there were a few SPaG issues throughout the document, which I've already corrected for you in the sandbox.  
Beyond that, I can really see your progress; for instance

**Message successfully delivered!**

Connection timeout. The information you requested has been updated. Please refresh the page.

***[Search](level-974.md)*** **Level 974**

Loading…

# M.E.G. File Storage System

#### **#** INTERVIEW RECORD L/974/I/02

##### Interviewer Elina Bellhart

##### Interviewee Janine Brown

---

**<Record Starts>**

**B:** It's a bit hard to admit… but I really did have a dream of filling a room with all sorts of pink things.

**E:** [We've interviewed you before](level-114.md). I've read the transcript and learned about your past. I'm very sorry to hear about all that.

**B:** Yeah. This level… it just feels like that. Sometimes I think that as I get older, busier, losing more hair, and my body starts aging—I realize I just can't fit into that little room anymore.

**B:** Besides, the home I left behind must be moth-eaten and ruined by now; I don't even want to imagine what color the wallpaper has turned. But seeing those things doesn't really upset me much. Maybe after these years in the Backrooms, I've become immune to this kind of emotional toll.

**E:** We've seen how much you've grown, ma'am. We're just as proud of you.

**B:** When I was in that level, I opened a jar of candy on a cabinet, and there seemed to be a dead cockroach inside… ugh, so gross. It gave me such a fright that my hand slipped, and it fell onto the pink carpet, spilling black fluid everywhere.

**E:** So, that's what drew the entity? That fits the behavioral patterns we've observed.

**B:** I heard a slithering sound, like a snake. I… my heart just sank. At that moment, I felt like it was right on top of me.

**E:** How did you manage to get away after that?

**B:** The room I was in was a dead end; there was nowhere to run. And you know, it's just so tall. It stood right outside the doorframe, even taller than the frame itself, just standing there stiff as a board… I really thought I was going to die right then and there.

**E:** Oh, what did it do to you?

**B:** It reached out with those long arms: no fingers, just that smooth, matte black texture like you guys described. I… I was so terrified that I lost all my survival instincts. I practically just lay back on the bed—which, if I had to fight, would've put me at a total disadvantage.

**B:** It… it tried to wrap around my wrist. I felt like I was suffocating! But it only picked up a bracelet I was wearing.

**E:** Huh?

**B:** *(Chuckles)* Exactly, that was my reaction too. Honestly, that's just how I felt at the time.

*She notices her expression was a bit exaggerated and starts to relax.*

**B:** It was something I bought at a small shop in [Level 11](level-11.md). Just some plastic pearls strung together with a pink cord—to be honest, I didn't even care about that thing.

**B:** It tried to slide the bracelet onto its long arm, but it just kept slipping… falling to the floor. It picked it up again, trying over and over to put it on. It looked like it was trying to mimic the way I wear it, but its physiology just wouldn't allow it.

**E:** Wow… so, did it ever manage to put it on?

**B:** I finally snapped out of it and stood up. It lowered its head and placed the bracelet back in my hand. I looked at its featureless face, and then it hit me—I stood up on the mattress, leaned against its leathery shoulder, and looped the bracelet around its neck.

**E:** *(Smiling)* So it wears a choker now?

**B:** Haha, pretty creative, right? It seemed… happy.

*Elina Bellhart falls silent for a moment, then slowly nods.*

**E:** Happy…

**B:** I really started to feel for it. It just wants to make itself a little cuter, maybe to soothe whatever is going on inside.

**E:** You really have a way with humanoid entities, ma'am. That's a profound discovery. A profound interaction.

*Janine Brown thinks of something and starts to laugh.*

**B:** After that, I just drifted off to sleep. When I woke up, I was in [Level 48](level-48.md). A day trip to a habitable beach—do you have any idea how happy that made me?

**E:** …That sounds lovely. It really does seem like a decent entity. I'm almost tempted to visit its home myself. Finally, for the record, I have one last question for you.

**B:** Oh, what is it?

**E:** Do you know its name?

**B:** Ah… I don't. It can't talk, after all. Come to think of it, does it even have a concept of a "name"?

**E:** That, I wouldn't know. But since we're short on clues, as a key explorer, would you like to give it a name, Janine Brown? We're not fond of referring to things in the Backrooms by cold, sterile ID numbers.

*She gives Janine a playful wink.*

**B:** …Then, I'll give it… something a bit cuter.

**B:** Let's call it  **Kitty** .

*Elina opens her mouth as if to say something, then closes it again.*

**E:** …*Kawaii*.

**<Record Ends>**

# #Updates

---

##### **#** Exits

At present, the only known method of exiting Level 974 is to present "Kitty" with a *cute* item obtained prior to your arrival. This gift may be offered to "Kitty" at any point during your stay. Once the gift is handed over, you will immediately lapse into a deep sleep and awaken within a safe level.[2](javascript:;)

***Log out***

Processing info…

**[(｡･ω･｡)](level-974.md)**

---

[Author & Translator](javascript:;)

[Hide](javascript:;)

**Originally written by**

The concept of [Level 974](level-974.md) originated from . This article has used some paragraphs from the new version of [Level 974](level-974.md), written by and , and translated (into Chinese) by and . Thank you for your rewriting and translation.

**Translated by**   
**Proofread by &**

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Metastasis 974 - "█████'s House"](metastasis-974.md)" by Be the worthy and translated by EnderstrayKPC, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/metastasis-974](metastasis-974.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/metastasis-974">Metastasis 974 - "█████'s House"</a>" by Be the worthy and translated by EnderstrayKPC, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/metastasis-974">https://backrooms-wiki.wikidot.com/metastasis-974</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** newkitty.jpg  
> **Author:** and friends  
> **License:** [CC BY SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/deed.en)  
> **Original URL:** <http://backrooms-sandbox-2.wikidot.com/local--files/fragment:andromedeadwips-1/newkitty.jpg>

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

« [Level 973](https://backrooms-wiki.wikidot.com/level-973) | **Level 974** | [Level 975](https://backrooms-wiki.wikidot.com/level-975) »

Footnotes

[1](javascript:;). **Translator's note:** Liminal Art Union is an organization dedicated to the study of aesthetics in the Backrooms.

[2](javascript:;). **Translator's note:**  
This paragraph is directly quoted from [Level 974 of the Chinese branch](level-974.md) (translated by and ) .

According to the original author's instructions, when translating, the translator did not refer to the English original text of this page, but translated based on the Chinese original text. Therefore, it differs slightly from [Level 974](level-974.md).

---

Source: [https://backrooms-wiki.wikidot.com/metastasis-974](https://backrooms-wiki.wikidot.com/metastasis-974)
