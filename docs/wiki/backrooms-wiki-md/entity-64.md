---
title: "Entity 64 - \"The Puzzle Maker\""
source: "https://backrooms-wiki.wikidot.com/entity-64"
retrieved_at: "2026-08-23T23:34:46+00:00"
license: CC-BY-SA-3.0
---

# Entity 64 - "The Puzzle Maker"

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

Offsets

[0](http://backrooms-wiki.wikidot.com/entity-64/offset/0)

Offset 0

Name: Entity 64 0

(Click to view the offset)

[1](http://backrooms-wiki.wikidot.com/entity-64/offset/1)

Offset 1

Name: Entity 64 1

(Click to view the offset)

[2](http://backrooms-wiki.wikidot.com/entity-64/offset/2)

Offset 2

Name: Entity 64 2

(Click to view the offset)

[3](http://backrooms-wiki.wikidot.com/entity-64/offset/3)

Offset 3

Name: Entity 64 3

(Click to view the offset)

  

rating: +42[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

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

# The Abandoned Puzzle Box

There was once a proud, large box of puzzle pieces, beloved and cherished by both of its human playmates. It was perfect: colorful and well taken care of. The two boys cherished it in such a deep way, always storing all kinds of toys in it, including those beloved puzzle pieces.

The box was never alone. The box was happy.

If the box could think, it would be proud to always be put to great use. It would ramble about all the games its playmates would come up with, as it happily observed from the comfortable chair it was placed on.

If it could talk, it'd say, "I'm the ruler of this room! I am playing there with my friends, and I am happy!"

The colorful box was part of the boys' lives for many years. If it were alive, it would have memorized all their little quirks and details: the blonde boy's exciting stories and the brown-haired boy's rough battles. If it were capable of having desires, it would wish to grow a body and a brain so it could play with them like a real boy would.

However, as the years began to pass, the two boys progressively stopped playing with the colorful box as much as they used to. The toy would be used less and less until, at one point, it was never brought down from its shelf ever again, now forgotten.

If the box were able to express its thoughts, it would wonder why the children left it behind. It would cry, feeling the dreadful despair of loneliness slowly eating it. But unanimated objects do not feel, so why would the boys care? It was an object… and it reached the end of its use. It was time for them to move on from it.

The box stayed on that shelf for a very long time. If it had eyes, it would see the dust growing around it. Mold grew on its surface, erasing the toy's bright colors. At one point, the boys stopped coming into that room at all. Where did they go? Why would they leave the box alone, that toy that brought them so much joy years ago?

The box was forgotten by them. It was left behind, no longer bearing any importance. That was how things were for many other years. Stale. Grim. Unchanging.

Then, on a fateful day, the door of that room opened again. The puzzle box, if it could be aware of its surroundings, would notice that whoever entered the door wasn't one of the boys. It was an unknown girl, accompanied by a grown man and a grown woman.

How long has it been since anyone entered the room? Who were these unknown faces? If the box could speak, it would say that it had never seen grown-ups in its life. If it could think, it would say that they were quite strange. The grown man had a faint resemblance to one of his playmates, but the box would refuse to accept it. Why would its beloved playmates grow up? That was impossible. They were supposed to have fun together endlessly; they weren't supposed to change, to lose their playful selves.

The little girl said something quietly and pointed at the shelf. The box's shelf. The grown man noticed and grasped a small chair on the side. Standing on it, he tried to reach for the box, but the sudden movement, the first in years of dust and mold, made the already damaged shelf shake before brutally collapsing on the ground, dragging the box down with it.

What happened afterwards was unclear. If the box had a memory, it would remember phasing through the ground and landing in a white room. This place was new and unfamiliar, far away from its home. It was full of other trash, but no people were in sight. If the box were aware, it'd call out desperately for its friends, its fear of loneliness haunting it.

The box had been so close to being used again, yet it was forgotten once more. If the box could feel, it would deem it to be unfair for it; it couldn't age, yet it couldn't move on like the boys did. It would still be hoping to be picked back up once more, even years and years later.

This time, however, the time that passed wasn't so long before a presence was felt again. A colorful, floating flame approached the box, its presence warm and beautiful, almost like a rainbow. It turned around the toy, curious, calculating, before entering it.

All of a sudden, the box could finally hear.

**"Wake up, little box. Bring laughter and joy to the world. Wake up…"** It said in a cacophony of voices, before vanishing just as fast as he appeared.

The box could see, think, feel, and perceive. It could witness the colorful environment around it. Its box body had morphed into a mess of the puzzle pieces that were once stored inside the box. The Rubik's Cube that used to be left behind inside it was part of its new form. It was emitting a warm glow, rotating slightly for each of its new, clumsy movements. The thing, for it could no longer be called a box, yelped fearfully. First confused and frightened, it quickly turned joyful when it realized it was finally like a real boy. It was alive! It needed to do everything in its power to learn how to act like other real people. Maybe then it could find its playmates again.

The thing attempted to learn all that was needed. Walking was a big, difficult feat, but it eventually was able to get the hang of it. It examined every little thing that would fall in its new home, discovering many "books" and "magazines." Unfortunately for it, it didn't understand what the words in the book meant. It needed to learn to speak and read by itself to decode and talk about them instead of producing senseless noise from its mouth.

The thing studied, progressively finding it easy to do so. It learned of human words and human things. Its once scattered puzzle body assumed a more solid form to resemble a person, using the magazine photos as a prompt. Although it wasn't as successful as the now-creature expected, it hoped that it would be enough to convince friends to stay, to not force him to be alone ever again.

Over time, people began ending up in its new room. It was glad to have more playmates, but none of them seemed to like it. Instead, they grew afraid and ran away, screaming, calling it a monster. The creature was no monster, so why would they think that? No matter what it offered and tried to do, they'd still be afraid. It needed to be better, more human, more perfect.

That is when it decided to become something smaller. Something pretty, colorful, and amazing. He searched for what humans enjoyed, ending up with the find of a pretty doll with a bowtie and elegant clothes. Its hair was silky and soft like cotton, and its face was delicate to the touch. The creature thought it had made an amazing discovery, and, driven by its interest in the toy, shifted into a doll like the one it found. A pretty doll that people could play with and hug.

The doll was now approached by those whom he met in its home; no longer feared, but craved. They were amazed by its ability to dance and entertain them like the humans in the magazines did, so they looked at it in awe and played with it. The doll was happy, believing that this fixed its unfortunate situation and that it would never be alone again. And it did, at least, it did for a very short time, until people grew bored of the same dances and games. Once again, the people moved on.

They gradually stopped visiting. Those who were new didn't spend any time watching him. They would rush past and leave as soon as they came. So, the doll examined the new things that fell into its home, shifting over and over again. It went from a doll to a stuffed toy, from a stuffed toy to a toy robot, and from a toy robot to a wooden puppet. Each time, the outcome was the same. Each time, the creature would cry in sorrow, abandoned, left alone.

*Why does everyone leave?* It asked between its sobbing. *Am I not fun enough? Am I not good enough?* How could it ever fulfill the goal it was given if it wasn't even able to make it last? It couldn't even find his old playmates or his old home. It was lost, scared, and lonely.

The years kept passing quickly. Oh, how it hated the passage of time. It truly wished it could stop it somehow. That way, he could be everyone's favorite thing for just a bit longer. But time was cruel and never lasted long enough. The creature found it unfair. Time made people leave, losing their playful side, but it couldn't move on.

One day, when the creature was truly about to give up after all these years, it came across a strange toy. A jigsaw puzzle that created the image of a circus. The creature was amazed. How could one little thing look so enjoyable, so engaging? Every time it played with the toy, it used a different method to complete it. It was fun, but it was finite. The creature needed more of those objects, more of those "puzzles," as the books seemed to name the thing. Puzzles had endless possibilities, always offering new things, never becoming boring. They could truly be anything. As such, the creature resolved to make its own puzzles, certain that it would finally entertain people enough.

It made all kinds of puzzles, mysteries, and enigmas. Colorful cubes to solve, keys to find hidden across the objects of its home… It was pure, endless fun. It couldn't believe how happy it was to have found something that truly made it happy. It wasn't about its purpose given by the voice solely, but it was something it truly enjoyed. It was part of who it was.

As such, it decided to incorporate it to the fullest. It wanted to create something new, not copy something that was already seen. That is when it crafted something called an "identity," something new that was personal just to it. It assumed a body that was the closest to the one of a real boy, it made itself colorful clothes like those on the jesters he so admired from the magazines, and it gave itself something that made it truly special. It gave itself a name, "Puzzle Maker."

He was a real boy, no longer a toy. He had a name after all this time; he was finally a person. If a toy could not bring enjoyment to others normally, then he would become a person who brings fun to others. That way, he would finally be listened to the way he desired to. That way, people would never leave his side.

He was now an entertainer, making all kinds of puzzles for those who found his level. He saw them laugh. He saw them play and relax. He couldn't be happier, being able to achieve what he desired the most. The purpose that gave it life was being fulfilled.

It then wondered if the voice was satisfied. If it would one day return and congratulate him for what he was able to achieve. If it would be proud of how many hearts he was able to fill with joy. Even if there still weren't so many people visiting him, he was sure that he could change it. Everything was doing so well; things had to improve.

The Puzzle Maker truly wished he could be the greatest playmate everyone could have. He hoped that he would no longer be alone, but there was still doubt in his mind. Time was going to get back at him one day. One day, he would have to change again.

Even if he acted and looked like a real boy, he knew deep down that he was still a toy. A toy desperate to play for the rest of its life. A toy that desperately tried to deny his origins in order to be loved as much as he could be. A toy that would never be thrown away again.

The Puzzle Maker wished he was born a real boy with a strong heart. Because his toy heart made him weep in that moment of reflection.

How unfair, to be born as something that can be easily replaced no matter what he does.

[As such, time continues marching on.](https://backrooms-wiki.wikidot.com/entity-64/offset/1)

Offsets

[0](http://backrooms-wiki.wikidot.com/entity-64/offset/0)

Offset 0

Name: Entity 64 0

(Click to view the offset)

[1](http://backrooms-wiki.wikidot.com/entity-64/offset/1)

Offset 1

Name: Entity 64 1

(Click to view the offset)

[2](http://backrooms-wiki.wikidot.com/entity-64/offset/2)

Offset 2

Name: Entity 64 2

(Click to view the offset)

[3](http://backrooms-wiki.wikidot.com/entity-64/offset/3)

Offset 3

Name: Entity 64 3

(Click to view the offset)

  

---

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Entity 64 - "The Puzzle Maker"](entity-64.md)" by Nikuchan , from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/entity-64](entity-64.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/entity-64">Entity 64 - "The Puzzle Maker"</a>" by Nikuchan , from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/entity-64">https://backrooms-wiki.wikidot.com/entity-64</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** blue pink and green textile  
> **Author:** Alexander Grey  
> **License:** [Unsplash License](https://unsplash.com/license)  
> **Source Link:** <https://unsplash.com/photos/blue-pink-and-green-textile-jYbKxinWQGk>

> **Name:** Happy-planet-3ma.jpg  
> **Author:** Happy Planet Loc de joaca si de distractie  
> **License:** [Free Art License](https://en.wikipedia.org/wiki/Free_Art_License)  
> **Source Link:** <https://commons.m.wikimedia.org/wiki/File:Happy-planet-3ma.jpg>

> **Name:** Global illumination illustration  
> **Author:** Gtanski  
> **License:** Public Domain  
> **Source Link:** <https://commons.m.wikimedia.org/wiki/File:Global_illumination.JPG>

> **Name:** a surfboard sticking out of the side of a sand dune  
> **Author:** Eduard Gross  
> **License:** [Unsplash License](https://unsplash.com/license)  
> **Source Link:** <https://unsplash.com/photos/a-surfboard-sticking-out-of-the-side-of-a-sand-dune-CfwmYwwAA2g>

> **Name:** Rukes  
> **Author:**   
> **License:** CC.BY-SA 3.0  
> **Source Link:** <https://backrooms-sandbox-2.wdfiles.com/local--files/collab%3Anikuchan-entity-puzzle/Rules>

> **Name:** The drawing of Puzzle Maker  
> **Author:**   
> **License:** CC.BY-SA 3.0  
> **Source Link:** <http://backrooms-sandbox-2.wikidot.com/local--files/collab:nikuchan-entity-puzzle/Puzzle%20Maker>

> **Name:** Puzzlemark  
> **Author:**   
> **License:** CC.BY-SA 3.0  
> **Source Link:** <https://praetor.wdfiles.com/local--files/puzzle/puzzlemark.PNG>

> **Name:** DoandDonts  
> **Author:**   
> **License:** CC.BY-SA 3.0  
> **Source Link:** <https://backrooms-sandbox-2.wdfiles.com/local--files/collab%3Anikuchan-entity-puzzle/DoandDonts>

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/entity-64](https://backrooms-wiki.wikidot.com/entity-64)
