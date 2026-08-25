---
title: "Phenomenon 77 - \"REIFIER\""
source: "https://backrooms-wiki.wikidot.com/phenomenon-77"
retrieved_at: "2026-08-23T23:38:26+00:00"
license: CC-BY-SA-3.0
---

# Phenomenon 77 - "REIFIER"

Surely it’s you; you were made to the size of my body.

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

[+ 版式代码](javascript:;)

[- 版式代码](javascript:;)

```
/*
 
    Ethereality Theme
    [2023 Wikidot Theme]
    By Eltrac
 
*/
 
:root {
    /* 基本信息 */
    --header-title: "Gardenrooms";
    --header-subtitle: "卧于自然怀抱中的宁静与平和";
    --logo-img: url('');
    /* 设置狐步舞/sigma-9 */
    --accent: 108, 125, 70;
    --header-txt-color: rgb(var(--accent));
    --link-txt-color: rgb(var(--accent));
    --page-font-size: 0.832rem;
    /* 排版工具组 */
    --lh-white-bg: 245,245,245;
    --lh-dark-bg: var(--accent);
    --lh-highlighter: var(--accent);
    --lh-border-color: var(--accent);
    --lh-wiki-note-color: var(--accent);
    /* 适配部分黑标属性 */
    --white-monochrome: 250,250,250;
    --dark-gray-monochrome: var(--accent);
    --black-monochrome: 60,60,60;
    /* 飘渺愿景自定义属性 */
    --header-bg-img: url('http://koalarooms.wdfiles.com/local--files/theme%3Aethereality/369hallway_%E5%89%AF%E6%9C%AC.jpg');
    --header-height: 320px;
    --body-bg-color: var(--white-monochrome);
}
 
@media screen and (min-width: 768px) {
    :root {
        --page-font-size: 1rem;
    }
}
 
/* 修改版头 */
 
body { 
    background-image: none;
    background-color: rgb(var(--body-bg-color))
}
 
div#header { 
    height: var(--header-height);
}
 
#extra-div-6 {
    /* 版头图片 */
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    background-image: var(--header-bg-img);
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
    z-index: -1;
    height: calc(var(--header-height)/10*9)
}
 
#extra-div-6::after {
    content: '';
    position: absolute;
    bottom: 0;
    left: 0;
    right: 0;
    height: 100%;
    background-image: linear-gradient(to bottom, transparent 20%, rgb(var(--body-bg-color)))
}
 
/* 版头文字 */
 
#header h2,
#header h2::before  {
    text-shadow: 0.05em 0.05em 0.01em #666;
    color: #eee
}
 
#header h1 a,
#header h1 a::before {
    text-shadow: 0.05em 0.05em 0.01em rgba(var(--accent), 0.25)
}
 
#header h1 {
    padding-top: calc(var(--header-height)/9);
    padding-bottom: 1rem
}
 
/* 顶栏 */
 
#header #top-bar {
    position: absolute;
    top: height: calc(var(--header-height)/10*9);
    height: height: calc(var(--header-height)/10);
    display: block;
    left: 0
}
 
@media not all and (max-width: 767px) {
    #header #top-bar { max-width: 708px }
}
 
#header #top-bar .top-bar > ul,
#header #top-bar .mobile-top-bar > ul {
    width: 100%;
    display: flex;
    justify-content: space-between
}
@media screen and (max-width: 767px) {
    #header #top-bar .top-bar > ul,
    #header #top-bar .mobile-top-bar > ul {
        justify-content: center
    }
}
 
#header #top-bar ul {
    background: none;
    border-radius: 0
}
 
#header #top-bar a {
    color: rgb(var(--accent));
    background: transparent;
    font-size: 120%
}
 
#header #top-bar a:not(ul li ul li a) {
    padding-bottom: 1rem
}
 
#header #top-bar ul li ul {
    box-shadow: none;
    border: 1px solid #ddd;
    background-color: rgba(245,245,245,0.75);
    backdrop-filter: blur(5px);
    -webkit-backdrop-filter: blur(5px);
}
 
#header #top-bar ul li ul li a {
    line-height: 200%;
    transition: background 0.3s
}
 
#header #top-bar ul li ul li a:hover {
    color: #eee !important;
    line-height: 200%;
    text-indent: 0;
    background-color: rgba(var(--accent), 0.75)
}
 
#top-bar ul li.sfhover a,
#top-bar ul li:hover a,
#top-bar ul li a, #top-bar ul li {
    border: none
}
 
#header #top-bar .open-menu a { 
    font-size: 30px!important;
    padding: 0.25rem;
    border-radius: 100%;
    background: rgba(var(--accent), 0.65);
    box-shadow: 0 0 0.1rem rgba(0,0,0,0.2);
    color: #eee
}
#header #top-bar .open-menu a:hover { box-shadow: none }
 
#header #top-bar .mobile-top-bar {
    position: static;
    display: flex!important;
    justify-content: center
}
 
/* 分割线 */
 
#page-content hr {
    border-bottom: 3px dashed rgb(var(--accent));
    margin: 1em 0;
    background: none;
    border-radius: 5px;
    height: 0
}
 
/* 图片框 */
 
.scp-image-block .scp-image-caption,
.scp-image-block img {
    margin: 0;
    border: none;
    background-color: transparent
}
 
.scp-image-block {
    border: 2px solid #c6c6c6;
}
 
.scp-image-block.block-right { margin-right: 0 }
 
/* 页面标题 */
 
#page-title {
    border: none;
    position: relative;
    font-size: 220%
}
 
#page-title::after {
    content: '';
    position: absolute;
    bottom: -0.5rem;
    left: calc(50% - 4rem);
    height: 5px;
    width: 8rem;
    background-color: rgba(var(--accent), 0.8);
}
 
/* DIV 元素 */
 
.jotting {
    padding: 0 1em;
    margin: 1em 2em
}
 
#page-content .colored-div {
    border-color: rgb(var(--accent));
    background-color: rgba(var(--accent), 0.3)
}
 
.lightblock, .darkblock,
.styled-quote, .dark-styled-quote,
.candyblock, .borderblock {
    padding: 0 1em;
    margin: 0.5em 0.1em;
    border-radius: 5px;
    border: 1px solid transparent
}
 
.lightblock,
.styled-quote {
    background-color: rgba(var(--accent), 0.1)
}
 
.darkblock,
.dark-styled-quote {
    background-color: rgba(var(--accent), 0.75);
    color: #eee
}
 
.styled-quote, .dark-styled-quote {
    border-left: .5rem solid rgb(var(--accent))
}
 
.candyblock {
    background: linear-gradient(45deg,rgba(var(--accent), 0.1) 25%,rgba(var(--accent), 0.3) 0,rgba(var(--accent), 0.3) 50%, rgba(var(--accent), 0.1) 0,rgba(var(--accent), 0.1) 75%,rgba(var(--accent), 0.3) 0);
    background-size: 2em 2em;
}
 
.borderblock {
    border: 1px solid #c6c6c6
}
 
/* 排版工具组 */
 
div.wiki-note::before { color: #eee }
 
.reportblock h1:first-child,
.reportblock-dark h1:first-child {
    top: -1rem;
    left: 0
}
 
.reportblock,
.reportblock-dark {
    padding: 0.4rem 1.5rem;
    padding-top: 0
}
 
.bettercollap .collapsible-block { border-radius: 3px }
 
#page-content .bettercollap .collapsible-block-link:hover,
#page-content .bettercollap .collapsible-block-link:hover a,
#page-content .bettercollap .collapsible-block-link a:hover,
#page-content .bettercollap .collapsible-block-link:hover a:hover { 
    color: #eee;
    text-decoration: none
}
 
/* 插入图片 */
 
.styled-img img {
    display: block;
    margin: 0.5rem auto;
    max-width: 75%;
    border-radius: 5px
}
 
/* 页内标题（Headings） */
 
#page-content h1 {
    position: relative;
    width: fit-content
}
 
#page-content h1:not(.reportblock h1)::before {
    content: '';
    position: absolute;
    bottom: 0;
    left: 0;
    right: 0;
    height: 0.5em;
    width: 100%;
    background-color: rgba(var(--accent), 0.5)
}
 
/* 其他页面元素 */
 
a.newpage { color: rgb(229,194,38) }
a.newpage:hover{ background-color: rgb(229,194,38) }
 
/* 页面选项 */
 
#page-options-bottom {
    border-top: solid 1px rgba(213, 213, 213, 0.5);
    margin-top: 0;
}
 
#page-options-bottom a { margin-top: 0 }
 
/* 页脚 */
 
#license-area {
    background-image: linear-gradient(to bottom, rgb(var(--body-bg-color)), rgb(236, 238, 232));
    border-top: 0;
    margin-top: -1rem;
    padding: 1rem 0
}
 
/* 脚注 */
 
.hovertip { 
    background: rgba(236,238,232, 0.75)!important;
    backdrop-filter: blur(5px);
    -webkit-backdrop-filter: blur(5px);
    min-width: 8rem
}
 
.hovertip .footnote .f-footer { display: none }
.hovertip .footnote .f-heading { font-size: 80% }
.hovertip .footnote .f-content { font-size: 110% }
 
div.footnotes-footer {
    border-top: 1px solid #c6c6c6;
    border-bottom: 1px solid #c6c6c6;
    padding: 0.5rem 1rem;
    padding-bottom: 1rem;
    margin: 1rem 0
}
 
/* 侧边栏 */
 
#side-bar { 
    background: rgba(236,238,232, 0.9)
}
#side-bar:target { box-shadow: 0 0 4rem rgba(0,0,0,0.15) }
 
#side-bar .side-block {
    border: none;
    background: transparent
}
 
@media screen and (max-width: 767px) {
    #side-bar:target .close-menu {
        background: unset;
    }
}
 
/* 分页 */
 
.yui-navset .yui-nav,
.yui-navset .yui-navset-top .yui-nav,
.yui-navset .yui-content,
.yui-navset .yui-navset-top .yui-content {
    border-color: rgb(var(--accent));
}
 
.yui-navset .yui-nav a,
.yui-navset .yui-navset-top .yui-nav a {
    color: rgb(var(--accent));
}
 
.yui-navset .yui-nav a:hover,
.yui-navset .yui-nav a:focus,
.yui-navset .yui-nav .selected,
.yui-navset .yui-navset-top .yui-nav .selected,
.yui-navset .yui-nav .selected a:focus,
.yui-navset .yui-nav .selected a:active {
    background-color: rgb(var(--accent));
}
 
/* 生存难度组件 */
 
#page-content .sd-container {
    --sd-border: 80,80,80;
    --sd-bullets: 80,80,80;
    --sd-image: 80,80,80;
    --sd-symbol: 60,60,60;
    --sd-text: 240,240,240
}
 
/* PLS */
 
#page-content .pls {
    --dark-gray-monochrome: var(--accent);
    --pale-gray-monochrome: 246,246,246;
    font-size: 0.85rem
}
 
#page-content .pls-title,
#page-content .pls-list { 
    margin: 0!important
}
 
#page-content .pls-title { font-size: 1.5rem }
 
#page-content .pls-list { font-size: 1.1rem }
 
/* COCS / CECS */
 
.wrapper {
    --cocs-dark: var(--accent);
    --cocs-light: 240,240,240;
    --cecs-dark: var(--accent);
    --cecs-light: 240,240,240;
}
 
/* IETS */
 
.box {
    margin: 0;
    border: none;
    padding: 0 0.5rem;
}
 
/* 评分模块 */
 
#main-content div.page-rate-widget-box,
#page-content .rate-box-with-credit-button {
    border: none;
    box-shadow: none;
    background: transparent;
    padding: 0
}
 
#main-content span.rate-points,
#main-content span.btn {
    background: transparent!important;
}
 
#main-content .creditButtonStandalone p a {
    background-color: rgb(var(--accent));
    font-size: 1rem;
    padding: 0.25rem;
}
 
/* 其他 */
#account-topbutton { border: none }
 
#login-status {
    background: rgba(var(--body-bg-color),.4);
    padding: 0.35rem 0.5rem;
    border-radius: 2px;
}
 
#search-top-box-form {
    margin-top: 0.25rem;
}
```

rating: +24[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

I desire your goodness  
I think of  
burning the surface of  
your face.  
There's changes on  
this side of paradise  
it means nothing to us.

I dream of you often.  
touching you,  
a diamond, like skin,  
It makes me weep.  
the surface, warped by  
heat and friction,  
It means nothing to us.

![lung](http://alba-zone.wikidot.com/local--files/centipede/lung)

![disem](http://alba-zone.wikidot.com/local--files/centipede/disem)

![stamp1](http://alba-zone.wikidot.com/local--files/centipede/stamp1)  
![mark](http://alba-zone.wikidot.com/local--files/centipede/mark)

To : No One  
I've lost something. Can you help me find it?  
This will probably not find you, but if it does,  
you know where to find me.

Forgive me, won't you?  
LK

I haven't come to terms with my own body. I don’t think I ever will.  
  
Yesterday, I watched a star explode, and I felt shards of glass raining on my face. One of the little star pieces cut me deep to the bone.[1](javascript:;) They are old bones that hold empty promises. Old skin drapes over the hollow—you could tell in its wrinkles and its scars that it doesn’t seem to fit right.  
  
Earlier that day, I told you to meet me at *Rue de la Mémoire*. When I saw you, I inched closer to you, and we were [somewhere else](level-7.md), and we were so close and so far from each other.  
  
You were covered in sugar and sweet things. You were covered in blood and rot. You were covered in the wrath of the sea, like a ghost ship. I felt your ectoplasm; I felt déjà vu. Then I kissed you. And it was like we were meant to be and not meant to exist at all.  
  
My line: You are my soul mate, I think. Your line: The ghost was sad because it had no-body to dance with, ha-ha-ha. Ha-ha, I laughed. The world laughed at us.

![bodied](http://alba-zone.wikidot.com/local--files/centipede/bodied)

![stamp2](http://alba-zone.wikidot.com/local--files/centipede/stamp2)  
![mark](http://alba-zone.wikidot.com/local--files/centipede/mark)

WHEN I'M DRUNK, I ALWAYS WANT TO TALK TO  
YOU. I USED TO MAKE YOU LAUGH. I LOVED YOU  
FOR A LONG TIME, A LONG TIME AGO.

DON'T BE A STRANGER,  
CH

I have come to the conclusion that you have to be part of me.  
  
We pass each other as strangers first. There are things I feel that I should say to you, but you don’t look twice at me. I am unsure if you see me. Do you see me? I’m impossible to miss.  
  
I drift towards you on purpose. Like currents, swirling, you can’t avoid me. How could I have known that it was you who would ruin me? Who would bring me to completion, the hand of God, plunging me into blind darkness while covered in blood like a newborn whale—yes, it’s you.  
  
Surely it’s you; you were made to the size of my body.  
  
To encapsulate it. The amniotic sac bursts and I crawl out of the seafoam, jaws dripping. It’s like a rush of blood in the ears. I’m wet, gather me up in your arms. In your mouth, an oyster with a pearl of flesh. Only I fit there, surely…

There is one thing separating us,  
the things I could do  
I don't tell you any of it  
because I know you  
like maybells  
and my only desire  
that I believe in

there is only one thing I want  
with your hands  
even the ways that you ruin me  
are sweet and clean  
like dying,  
like everything else  
is violent and derelict.

I  
see you  
from across  
a wide ocean of  
pale blue tears. It is  
massive in wingspan but  
the water only hits your knees.  
I want to drown in the water of this  
womb, become formless, skin to your skin,  
You’re in the subscript of my veins. Even my  
hands are your hands. At night I find you restless.

I’m  
looking  
at you and I’m  
no longer scared.  
Can I hold you tonight  
and every night? We can still  
sit on our little chairs eating little  
sweet things and talking our little talks.  
I think we could work—yes, it’s all written  
in the protoplasm. My membrane wraps around  
the both of us and we find that we are the punchline.

  

We sink into each other, lapsing, deep blue and black. Like tectonic plates shifting. There is no you, there is no me. The self is not the self.

# Interview Log

**Interviewer：Lou K.**  
**Subject：Cadriel H.**

---

It’s you.

  
I’m sorry.  

Something’s missing. Do you feel it too?

  
Yes.  

Where was it that we were supposed to meet?

  
Do you not remember?  

I think I've lost everything. What am I to you?

  
You destroy me. I don’t know how to tell you. You complete me.  
The whole of me, every last breath. Do you remember *Rue de la Mémoire*?  

To be honest, I don’t think I liked it all that much there anyway. I didn’t hate it.  
Oh. It seems I am indifferent. I’ve lost the ability to give a shit.

  
All the time, I want to tell you about my life. But it never happens. It’s a transparent landscape.  

I think I want to clean up your blood again. I liked the way you looked at me.

  
I know.  

If you want, we can be whole again.

  
You are as near as I come to being complete.  

I've been selfish. I guess I should apologize.

  
You don’t mean that.  

…

  
I don’t care… Look, it doesn’t mean anything to me. We both know how this ends.  

Will you come back?

  
I will. I’m sorry. I still love you.

---

Their bodies dissipate into each other as if they were making love—but it is far from anything lovely, it’s more like matted ash in one’s mouth.[2](javascript:;) Even they do not know how it ended up this way. Their transubstantiation of matter, vestigial structures one non-entity, is blood from a stone. It is sharp and excruciating and beautiful. They phase right through each other, indistinguishable as smoke. A piece of driftwood looks like a dead calf. A fallen tree looks like a frozen strike of lightning. Now they pass as ships in the night. Finger to finger, the hand of God.

ILOVEYOUOYEVOLI  
ILOVEYOYEVOLI  
ILOVEYEVOLI  
ILOVEVOLI  
ILOVOLI  
ILOLI  
ILI  
I

[+ Open Footnotes](javascript:;)

[- Close Footnotes](javascript:;)

Footnotes

[1](javascript:;). Made sure it hurt.

[2](javascript:;). From the last cigarette in an ashtray.

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Phenomenon 77 - "REIFIER"](phenomenon-77.md)" by pubie and doctrinator,, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/phenomenon-77](phenomenon-77.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/phenomenon-77">Phenomenon 77 - "REIFIER"</a>" by pubie and doctrinator,, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/phenomenon-77">https://backrooms-wiki.wikidot.com/phenomenon-77</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** header  
> **Author:** doctrinator  
> **License:** CC BY SA 4.0  
> **Link:** <http://alba-zone.wikidot.com/local--files/centipede/header>

> **Name:** lung  
> **Author:** doctrinator  
> **License:** CC BY SA 4.0  
> **Link:** <http://alba-zone.wikidot.com/local--files/centipede/lung>

> **Name:** disem  
> **Author:** doctrinator  
> **License:** CC BY SA 4.0  
> **Link:** <http://alba-zone.wikidot.com/local--files/centipede/disem>

> **Name:** bodied  
> **Author:** doctrinator  
> **License:** CC BY SA 4.0  
> **Link:** <http://alba-zone.wikidot.com/local--files/centipede/bodied>

> **Name:** embodied  
> **Author:** doctrinator  
> **License:** CC BY SA 4.0  
> **Link:** <http://alba-zone.wikidot.com/local--files/centipede/embodied>

> **Name:** centipede  
> **Author:** doctrinator  
> **License:** CC BY SA 4.0  
> **Link:** <http://alba-zone.wikidot.com/local--files/centipede/centipede>

> **Name:** stamp1  
> **Author:** Post of Algeria  
> **License:** Public Domain  
> **Link:** <https://commons.wikimedia.org/wiki/File:Stamp_of_Algeria_-_1974_-_Bird-of-Paradise-Strelitzia-reginae.jpg>

> **Name:** stamp2  
> **Author:** Post of Åland Islands  
> **License:** Public Domain  
> **Link:** <https://commons.wikimedia.org/wiki/File:Aland_post_1984_1.10_Sailing-boat.jpg>

> **Name:** mark  
> **Author:** Richard Stambaugh  
> **License:** Public Domain  
> **Link:** <https://commons.wikimedia.org/wiki/File:France_stamp_type_DB7.jpg>

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/phenomenon-77](https://backrooms-wiki.wikidot.com/phenomenon-77)
