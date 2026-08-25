---
title: "Level 510 - \"... --- ...\""
source: "https://backrooms-wiki.wikidot.com/level-510"
retrieved_at: "2026-08-23T23:37:45+00:00"
license: CC-BY-SA-3.0
---

# Level 510 - "... --- ..."

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
:root {
    --nusd-speed: 1;
}
 
/*岛*/
.ic_wrap-box {
}
/*上*/
.ic_wrap-box .ic_top-left-box {
    animation: right0  calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
.ic_wrap-box .ic_top-left-box .ic_text {
    animation: right0  calc(1.1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
.ic_wrap-box .ic_h-icon {
    animation: ic-right  calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.3s / var(--nusd-speed));
    opacity: 0;
}
 
.ic_wrap-box .ic_r-icon {
    animation: ic-right  calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.4s / var(--nusd-speed));
    opacity: 0;
}
 
.ic_wrap-box .ic_s-icon {
    animation: ic-right  calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.5s / var(--nusd-speed));
    opacity: 0;
}
 
/*sd*/
.ic_wrap-box .ic_sd-box {
    clip-path: polygon(0% 0%,0.4rem 0%,0.4rem 0%,0% 0%);
    animation: fadeIn-nu-exit calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
.ic_wrap-box .ic_infobox-1,.ic_wrap-box .ic_infobox-2 {
    clip-path: polygon(0% 0%,0.4rem 0%,0.4rem 0%,0% 0%);
    animation: fadeIn-nu-env calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.1s / var(--nusd-speed));
}
 
.ic_wrap-box .ic_infobox-3 {
    clip-path: polygon(0% 0%,0.4rem 0%,0.4rem 0%,0% 0%);
    animation: fadeIn-nu-enti calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.2s / var(--nusd-speed));
}
/*字*/
.ic_wrap-box .ic_sd-box .ic_text {
    animation: rightin2 calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
.ic_wrap-box .ic_sd-box .ic_sd {
    animation: rightin2 calc(1.1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
.ic_wrap-box .ic_infobox-1 .ic_text {
    animation: rightin calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.1s / var(--nusd-speed));
}
 
.ic_wrap-box .ic_infobox-1 .ic_info {
    animation: rightin calc(1.1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.1s / var(--nusd-speed));
}
 
.ic_wrap-box .ic_infobox-2 .ic_text {
    animation: rightin calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.2s / var(--nusd-speed));
}
 
.ic_wrap-box .ic_infobox-2 .ic_info {
    animation: rightin calc(1.1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.2s / var(--nusd-speed));
}
 
.ic_wrap-box .ic_infobox-3 .ic_text {
    animation: rightin calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.3s / var(--nusd-speed));
}
 
.ic_wrap-box .ic_infobox-3 .ic_info {
    animation: rightin calc(1.1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.3s / var(--nusd-speed));
}
/*info*/
.ic_wrap-box .ic_add-h {
    clip-path: polygon(50% 0%,50% 0%,50% 100%,50% 100%);
    animation: ic-add-h  calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.3s / var(--nusd-speed));
}
 
.ic_wrap-box .ic_add-r {
    clip-path: polygon(50% 0%,50% 0%,50% 100%,50% 100%);
    animation: ic-add-r  calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.4s / var(--nusd-speed));
}
 
.ic_wrap-box .ic_add-s {
    clip-path: polygon(50% 0%,50% 0%,50% 100%,50% 100%);
    animation: ic-add-s  calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.5s / var(--nusd-speed));
}
/*字*/
.ic_wrap-box .ic_add-h .ic_text {
    animation: rightin2 calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.5s / var(--nusd-speed));
}
 
.ic_wrap-box .ic_add-h .ic_info {
    animation: rightin calc(1.1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.5s / var(--nusd-speed));
}
 
.ic_wrap-box .ic_add-r .ic_text {
    animation: rightin2 calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.6s / var(--nusd-speed));
}
 
.ic_wrap-box .ic_add-r .ic_info {
    animation: rightin calc(1.1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.6s / var(--nusd-speed));
}
 
.ic_wrap-box .ic_add-s .ic_text {
    animation: rightin2 calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.7s / var(--nusd-speed));
}
 
.ic_wrap-box .ic_add-s .ic_info {
    animation: rightin calc(1.1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.7s / var(--nusd-speed));
}
 
.ic_addbox .ic_text,.ic_addbox .ic_info{
        opacity: 0;
}
/*bubor*/
 
.ic_top-box {
    animation: ic-border  calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
.ic_wrap-box {
    border-bottom: rgba(var(--ic_border-color), 0) solid var(--ic_interspace);
    animation: ic-border  calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.7s / var(--nusd-speed));
}
 
@keyframes ic-right {
    0% {
        transform: translateX(-1rem);
        transform: rotate(30deg);
        opacity: 0;
    }
 
    80% {
        transform: translateX(-1rem);
        transform: rotate(30deg);
        opacity: 0;
    }
 
    100% {
        transform: translateX(0);
        transform: rotate(0deg);
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
 
/*nusd*/
 
/*左*/
 
.sdnumber p {
    opacity: 0;
    animation: right0 calc(2s / var(--nusd-speed));
    animation-fill-mode: forwards;
}
 
.sdnumber p {
    opacity: 0;
    animation: right0 calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
.sdnumber strong {
    opacity: 0;
    animation: right0 calc(1.2s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
.sdnumber .lines {
    opacity: 0;
    animation: fadeIn-nu-sd calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
/*右*/
 
.sd-container .exit {
    animation: fadeIn-nu-exit calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
.sd-container .environment {
    animation: fadeIn-nu-env calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
.sd-container .entity {
    animation: fadeIn-nu-enti calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
.sd-container .syntax .sd{
    animation: rightin calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
.sd-container .syntax p strong {
    animation: rightin calc(1.05s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
.class.customclass strong::after{
    animation: no-opacity calc(1.05s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
/*字*/
/*ex*/
.sd-container .exit strong {
    animation: rightin2 calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
.sd-container .exit p span:nth-child(3) {
    animation: rightin2 calc(1.1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
/*ev*/
.sd-container .environment strong {
    animation: rightin2 calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
.sd-container .environment p span:nth-child(3) {
    animation: rightin2 calc(1.1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
/*en*/
.sd-container .entity strong {
    animation: rightin2 calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
.sd-container .entity p span:nth-child(3) {
    animation: rightin2 calc(1.1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
/*动画*/
 
@keyframes clip0 {
    0% {
        clip-path: inset(0 0 100% 0);
    }
 
    100% {
        clip-path: inset(0 0 0 0);
    }
}
 
@media only screen and (min-width: 1071px) {
 
    .sd-container .border {
        animation: border-spin-pc calc(1s / var(--nusd-speed) );
        transform-origin: right;
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
 
.sdnumber p {
    animation-delay: calc((2s / var(--nusd-speed))*0.6);
}
 
.sdnumber p {
    animation-delay: calc((1s / var(--nusd-speed))*0.6);
}
 
.sdnumber strong {
    animation-delay: calc((1.2s / var(--nusd-speed))*0.6);
}
 
.sdnumber .lines {
    animation-delay: calc((1s / var(--nusd-speed))*0.6);
}
 
}
 
@media only screen and (min-width: 620px) and (max-width: 1070px) {
    .sd-container .border {
        animation: border-spin-mo calc(1s / var(--nusd-speed) );
        animation-fill-mode: forwards;
    }
}
 
@media only screen and (max-width: 620px) {
 
    .sd-container .border {
        animation: border-spin-mo calc(1s / var(--nusd-speed) );
        animation-fill-mode: forwards;
    }
 
    .sd-container .exit {
        clip-path: polygon(0% 0%,0.4rem 0%,0.4rem 0%,0% 0%);
        animation-delay: 0;
        animation-fill-mode: forwards;
    }
 
    .sd-container .environment {
        clip-path: polygon(0% 0%,0.4rem 0%,0.4rem 0%,0% 0%);
        animation-delay: calc(0.5s / var(--nusd-speed) );
        animation-fill-mode: forwards;
    }
 
    .sd-container .entity {
        clip-path: polygon(0% 0%,0.4rem 0%,0.4rem 0%,0% 0%);
        animation-delay: calc(1s / var(--nusd-speed) );
        animation-fill-mode: forwards;
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
```

rating: +27[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

[Dragon](javascript:;)

Written by .

Thank you to these great people who have given criticism:

Greenlit by:

LEVEL  
**510**

SURVIVAL DIFFICULTY  
**CLASS 2**

**Exit: 5/5**  
Dead End

**Environment: 2/5**  
Some Environmental Risk

**Entities: 0/5**  
No Hostile Entities

  

---

# DESCRIPTION

---

![Missing alt text.](https://scp-sandbox-3.wdfiles.com/local--files/dragon-images/510-1)

A corridor in Level 510.

**Level 510** consists of monotonous, gray halls that repeat endlessly— each hallway maintains a width and height of two meters. This level is believed to have a similar isolating effect to [Level 0](level-0.md), as no traces of other humans have been discovered within it so far.

The tunnel that makes up **Level 510** extends infinitely in both directions, lined with random entrances on either side. The way these intersections behave suggests that **Level 510**'s space might be Euclidean, since they merely lead wanderers into different corridors rather than causing more unusual effects.

All wanderers who entered **Level 510** reported a profound sense of unease. Despite the absence of entities posing significant hazards in **Level 510**, the M.E.G. attributed this phenomenon to the pervasive noise inside that level. Wanderers in **Level 510** intermittently hear the sounds of people varying in age bashing objects against one another as well as sobbing. At times, these sounds intensify, leading wanderers to believe something is chasing them.

**Warning:** If you find yourself in this section, find the nearest exit—this is located at the right side of the hall, with a passage containing a glowing light behind it. All wanderers who have remained in **Level 510** for 30 minutes have lost contact without exception. We have not confirmed the status of these wanderers.

[.-- . .- .-. . - .-. .- .--. .--. . -.. ... .- ...- . ..- ...](javascript:;)

[We are trapped. Save us.](javascript:;)

  

It took you some time to recall that you arrived at this place through an iron gate in [Level 3](level-3.md). Your eyes dart around the dimly lit hallway, half-crouched as you scan the place. No entities?

You've been walking for what feels like hours. A sigh, both in relief and exhaustion, rolls out of your mouth…

Who's knocking? Is it SOS? Why use signals down here when phones don't work? Since these sounds pose no danger, you decide to sit down and rest. Perhaps it's the monotonous environment you've been observing for too long; the world begins to spin.

  

---

# THE 510 SYNDROME

---

The 510 Syndrome is a collective term for a series of symptoms that manifest in individuals entering **Level 510**. The pathogenesis of this syndrome is currently unknown; however, it is known to worsen the longer a wanderer remains in **Level 510**, which can be found below:

| Time of Stay | Symptoms |
| --- | --- |
| 5 minutes | Dizziness and itchy skin. There have been uncommon reports of villi growing on the skin during this stage. |
| 10 minutes | The patient begins to cough which may lead to hemoptysis. This is occasionally accompanied by severe pharyngitis.[1](javascript:;) |
| 15 minutes | At this stage, patients begin to experience hallucinations, a typical example of which is feeling the ceiling rising. These hallucinations are very dangerous, as they usually slow down the speed of wanderers escaping **Level 510**. |
| 25 minutes | Patients often display confusion, with many even believing that feathers or bird beaks are growing from their bodies. Because almost no one escapes **Level 510** after reaching this stage, the exact effects on individuals remain unknown. |

Some people suspect that the wanderer who disappeared in **Level 510** died due to the 510 Syndrome. However, since no bodies of wanderers have been discovered in **Level 510**, this hypothesis remains unverified.

No known method can treat 510 Syndrome aside from leaving the level itself.

[... .- ...- . ..- ... .-- . .- .-. . .- .-.. .. ...- .](javascript:;)

[Save us. We are alive.](javascript:;)

  

Rough coughs force their way out of your mouth, leaving a metallic aftertaste. What kind of disease is this? You need to leave.

One step, two, ten, twenty. Your eyes dart around, looking for an escape, yet are only met with disappointment. At that moment, a familiar voice echoed in your ear: **three quick knocks, three slow knocks, three quick knocks** again. Is it closer? The environment here is repetitive, so moving toward the sound source seems to be your best option at this time.

The sound imprints itself in your mind. You should be there by now. You just know it. You walk to an intersection and observe the situation in another tunnel. To your surprise, unlike the usual lifeless state, you discovered some… Wait, are those living beings?

  

---

# THE GREY SPARROWS

---

CONCORD ENTITY CLASSIFICATION SYSTEM

ENTITY ID: 1  
HABITAT(S): Level 510

**[IETS](iets.md):**  
**?B+****X****X**

CLASS:

Anthropoid

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

The Grey Sparrows are the only entities in **Level 510**. They appear to be proportionally enlarged versions of sparrows found in the Frontrooms, with the only notable difference being their overall gray coloration. Their height is approximately 1.5 meters, which is slightly shorter than the average height of normal adults[2](javascript:;). They also possess intelligence similar to that of adults.

When Gray Sparrows encounter wanderers, they become quite excited and attempt to follow them. They also try to communicate with wanderers using their own form of language. Additionally, they use their beaks to knock on the floor and make regular sounds that resemble Morse code. Most of these sounds follow the sequence of **three quick knocks, three slow knocks, three quick knocks**[3](javascript:;).

Although supplies are limited in **Level 510**, we strongly discourage the consumption of grey sparrow meat. Some wanderers have developed symptoms of prion[4](javascript:;) infection after consuming it.

In addition, most Gray Sparrows produce a distinctly different sob from their call, resembling the sound of human crying. Their anatomy reveals that they possess a vocal system similar to that of humans; however, its location is quite unusual, and airflow through it occurs only in rare instances.

[.-- . .-- . .-. . .... . .-. . .- .-.. .-.. .- .-.. --- -. --.](javascript:;)

[We were here all along.](javascript:;)

  

Three sharp knocks. Three slow. Three quick.  
   
They peck autonomously at the wall as you stepped past quietly, making a knocking noise—disinterested in your presence, until they aren't. One pauses. Then another. A chorus of high, frantic chirps erupts, urgent, almost… pleading.  
   
Were they hungry? Lonely? Calling out for mates perhaps? No… this was different.  
   
For a brief moment, their presence brought a strange comfort… You brush your hand against your arm and feel something foreign.  
   
A downy texture. Too soft to be anything else.  
   
You don't look.  
   
Once you turn to leave, they quiet again. One tilts its head, making a loud squawk. Another backs away. The rain of chirps is now replaced with the hush of something withheld.  
   
You feel them watching as you step away. A kind of sorrow one only gets from seeing a loved one pass away.

  

---

# ENTRANCES & EXITS

---

### Entrances

  
In [Level 2](level-2.md) and [Level 3](level-3.md), a heavy iron door can be found that leads you to **Level 510**.  

### Exits

  
There will be some very narrow corridors randomly appearing. Passing through it leads to [Level 15](level-15.md). It is worth noting that many Grey Sparrows often gather in front of these exits, even if their size does not allow them to pass through.  
  
  

[... .- ...- . ..- ... .-- . .-- . .-. . --- -. -.-. . .... ..- -- .- -. ...](javascript:;)

[Save us. We were once humans.](javascript:;)

  

You've been walking for so long.  
   
Everything blurs together at this point; same colors, same corners, same quiet. How long has it been? Hours? Days? Years maybe? It's possible you've only been walking a few minutes. You're not sure.  
   
And yet, you still walk. It's all you know how to do.  
   
Then… Footsteps.  
   
Soft. Simple. Another person.  
   
Your heart rises before you can properly process.  
   
You call out. Your voice is raw from disuse, but still, it tries. You step towards him, searching for recognition, connection, something. Anything.  
   
He simply ignores you; walks past nonchalantly, as if you were never there to begin with.  
   
You want to follow, yet your body lurches. You fall.  
   
For some reason, the ground feels soft, almost like something broke your fall. You try picking yourself back up, to start again, but your fingers never feel the cold concrete ground. You can't move them. Why can't you?  
   
You look at your hands, only to realize there's nothing there. Just a wing. Soft. Grey and trembling.  
   
A knot forms in your stomach as you reach to touch your face. There's no nose. No facial structure. No soft mouth or skin. Not even the basic amount of hair. Just soft feathers… A beak.  
   
You sit there for a moment, knees drawn close to what's left of your inhuman body and begin to cry.  
   
Soft. Exhausted. Tired of everything turning against you in life. The kind that comes when you've been too strong for too long and you finally come to terms with that.  
   
You reminisce on a time not so long ago. One where you were heard. One where you could laugh. One where you knew others could understand.  
   
You remember being human.  
   
But you don't even have that anymore.  
   
You slam your beak into the wall. Autonomously. Over and over, expecting a result each time, and every moment being let down, hoping someone will hear. Hoping someone will knock back.

  

---

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Level 510 - "... --- ..."](level-510.md)" by I\_am\_a\_dragon, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/level-510](level-510.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/level-510">Level 510 - "... --- ..."</a>" by I\_am\_a\_dragon, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/level-510">https://backrooms-wiki.wikidot.com/level-510</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Filename:** DSC00347.JPG  
> **Author:** Bob Mazza  
> **License:** [CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0)  
> **Additional Notes:** Edited by .

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

« [Level 509](http://backrooms-wiki.wikidot.com/level-509) | Level 510 | [Level 511](level-511.md) »

Footnotes

[1](javascript:;). The main symptoms are pain and a feeling of something stuck in the throat.

[2](javascript:;). About 1.7 meters.

[3](javascript:;). This pattern is similar to the international distress signal SOS.

[4](javascript:;). A protein based infectious factor that can be contracted through contact with infected animals and the ingestion of human tissue.

---

Source: [https://backrooms-wiki.wikidot.com/level-510](https://backrooms-wiki.wikidot.com/level-510)
