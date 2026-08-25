---
title: "Backrooms Ethnography: Dwelling with Death"
source: "https://backrooms-wiki.wikidot.com/how-we-farewell"
retrieved_at: "2026-08-23T23:38:10+00:00"
license: CC-BY-SA-3.0
---

# Backrooms Ethnography: Dwelling with Death

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

- [](javascript:;)

  [close](javascript:;)

  ## Info

  ---

  [X](javascript:;)

  ***A Backrooms Ethnography Series***  
  ***Dwelling with Death***  
  [The homepage of Backrooms Ethnography (Untranslated)](https://backrooms-wiki-cn.wikidot.com/backrooms-folk-custom)

  Dedicated to  
  **Our Past, Present, and Future**

  Presented by

  Translated by

  Special Thanks

  Guest Starring

  Greenlighter

  
  

## Terminus

![lethe](https://brsandbox-pro.wikidot.com/local--files/collab:death/lethe)

There are three ossuary towers of comparable scale within the City That Never Sleeps; among them, "Lethe"[1](javascript:;)is the most renowned.

Under the boundless gray skyline, Lethe resembles a forgotten scar. This highly anomalous skyscraper is nothing but a naked skeleton of cement, exposing every space that could have been. There is no glass, no interior decor; the wind sweeps unhindered through every floor slab, marking it as starkly out of place amidst the concrete forest.

Nameless weeds, vines, and shrubs surge forth from the cracks in the slabs and the gaps in the rebar. This unrestrained greenery fills the reinforced concrete skeleton with vibrant life. From a distance, the entire structure appears as a vertical wilderness. The dust of concrete mixes with the bitter, earthy aroma of the vegetation. The ethereal sound of the wind passes through the empty levels, causing the whole expanse of green to undulate softly.

**In this Endless City of nearly 130,000 inhabitants, an average of six people die each day.** The manners of their deaths vary widely—some are mundane, some heroic, and some utterly absurd. Yet after death, most are reduced to a small metal urn, carried up a few flights of stairs by their families, and placed into a reserved niche.

They place the urn upon shelves entangled with vines, gaze at it for a long moment, then turn to leave. Some East Asians might offer a cup of wine; those seeking a touch more ritual might prepare a bouquet of artificial flowers.

After this, unless for a new funeral, these people rarely appear before the gates of Lethe again.

Unmourned, unwept, unvisited. Occasionally, wanderers pass by, asking for the destination of a certain journey, yet few realize that this greenery-draped concrete jungle beneath their feet is, in itself, the Terminus.

## The Funeral of Sector B38

![candles](https://backrooms-wiki.wdfiles.com/local--files/how-we-farewell/candles)

Sector B38 is a low-density area within Level 11, currently home to approximately 300 residents. Most of them no-clipped here from Level 9; their shared tribulations have made Sector B38 one of the most tight-knit communities in the entire level.

Due to the sheer distance from "Lethe," the residents of B38 have repurposed an entire parking garage on the sector's edge as their cemetery. When the author entered this cemetery, the funeral of 12-year-old Sophie Mart was taking place.

Like all children born in the Backrooms, Sophie had been kept under strict supervision by her parents since birth to avoid Level 11's notorious random exit phenomena or other potential risks.

Sophie's death was a complete and utter accident.

At the time, she was accompanying her mother, Ann, along a side street within the sector. Sophie was skipping along, still mindful of her parents' teachings to stay in the center of the road. However, tragedy struck nonetheless: Sophie suddenly vanished. The ceaseless shifting of Level 11 had caused an entrance to Level 3 to manifest right in the middle of that road. A week later, the Mart family received a death report from the M.E.G.; their daughter had encountered a Hound in that gloomy electrical station.

More than half of Sector B38's residents attended the funeral. People mourned the loss of a young life, yet knew deep down they were powerless. Still, they did what they could: the side street that caused Sophie's death was blocked off with barricades and, following the custom of B38 and many other sectors in Level 11, was named Sophie Street.

Level 11 is just such a place. One simply steps out their door, walks a few paces, and is thrown into a completely alien environment. Such things happen constantly. Like Sophie, the victims are not necessarily dead, but to their families in Level 11, this is a parting as final as death. There are thousands of streets named after people throughout Level 11, and behind every street name lies a shattered family.

"When we lost Sophie, my wife was just two or three months pregnant," Hent, Sophie's father, told the author after the funeral. "We thought about leaving Level 11. But where else could we go?"

For an ordinary person, traversing multiple levels is no different from playing a round of Russian Roulette. Although Level 11 harbors absurd forms of death unlike other levels, it remains one of the most populous levels in the Backrooms; it remains the City of Hope.

## The Wailing Wall

![hospital](https://backrooms-wiki.wdfiles.com/local--files/how-we-farewell/hospital)

> *Jews may often be seen sitting for hours at the Wailing-place bent in sorrowful meditation over the history of their race, and repeating oftentimes the words of the Seventy-ninth Psalm. On Fridays especially, Jews of both sexes, of all ages, and from all countries, assemble in large numbers to kiss the sacred stones and weep outside the precincts they may not enter.*
>
> Charles Wilson, 1881. (Picturesque Palestine, vol. 1, p. 41).

Javier Rodriguez's job was utterly banal. His daily routine consisted of standing under the eternal fluorescent lights, stirring pungent paint, and using a roller to coat the partition walls of apartments, the outer walls of warehouses, or the inner linings of newly established outposts with layers of drab gray or beige.

The work was dull, but stable, enough to trade for Almond Water and canned food. His peers—plumbers, electricians, masons—lived the same way, maintaining the illusion of a "normal" life within the capillaries of this infinite metropolis.

Yet, the illusion is always fragile. A mason Rodriguez knew suddenly no-clipped while repairing a weak wall in Level 11 and has not been heard from since. An agile decorator, while painting a high-altitude ventilation duct, had his safety rope snap inexplicably, falling like a bird with broken wings into the abyss between the buildings. Death did not come from horrifying entities, but more often from a moment of negligence, a defective part, or the unpredictable "temper" of the Backrooms itself.

Usually, the critically injured would be carried by their coworkers on makeshift stretchers, rushing through the bustling streets to a first-aid station converted from an old warehouse. Rodriguez saw it once with his own eyes: a victim with his abdomen pierced by rebar, dark red blood soaking his rough work clothes, the veins on the bearers' arms bulging as they roared, "Make way!" He didn't think much of it at the time, until he took that unusually well-paid job—to paint the walls of the first-aid station itself.

Sector Beta First Aid Station spoke nothing of medical standards; it was merely a distribution center for pain and death. Within the cavernous space, beds were packed as dense as a honeycomb. Sheets were mottled with stains and blood, contrasting sharply with the pale or ashen skin of the patients. The smell of disinfectant in the air struggled stubbornly to mask the complex stench of sweat, pus, and despair. The shouts of nurses echoed through the tents, and the names of medicines they called out often meant "out of stock."

Pfizer was originally a surgeon in the Frontrooms, but now his profession had become treating every form of injury the Backrooms could manufacture. His lab coat had long been washed to a dull gray, and exhaustion was etched permanently onto his face. He had seen an entire back nearly cooked by steam, its owner still struggling to ask in a raspy voice, "Can I still walk?" He had treated a young man whose pelvis was shattered while fleeing an entity, dragged in still clutching a broken trekking pole.

"Most of them won't survive," Pfizer said calmly, "but they want to live."

Families clustered around the beds, wearing distinct expressions. Some covered their mouths tight, bodies trembling violently from suppressed sobbing; others stood expressionless, as if their souls had departed before their bodies; and some simply held their loved one's hand, whispering softly—a tenderness akin to resignation, after all intense emotions had been exhausted.

In the center of this chaos—composed of healers like Pfizer, scarce resources, and naked survival instinct—stood a wall. It was the result of Rodriguez's work: a pure white wall, rolled evenly, cold, and without impurities. It was empty, with no decorations, no markings, like a vacuum of thought.

People spontaneously gathered before this wall, turning their backs on the life-and-death struggle behind them. They pressed their foreheads against the cold surface, whispering their grievances, sobbing, or simply standing in silence.

This white wall, finished by the painter Rodriguez, thus bore more, and more devout, prayers than any icon in any cathedral.

## Lestrade of the Capital

![hand](https://backrooms-wiki.wdfiles.com/local--files/how-we-farewell/hand)

As one of the largest human settlements in the Backrooms, Level 11—spearheaded by "The Capital" and supported by major organizations—has established a police force of over a thousand officers. While their authority does not entirely mirror that of their counterparts in the Frontrooms, they remain a crucial component in maintaining order throughout the level.

The author met Officer Hou last week, just after he had concluded a homicide investigation. At the precinct, Officer Hou is nicknamed "Lestrade"; much like Sir Arthur Conan Doyle's inspector at Scotland Yard, he is a rather stubborn middle-aged man.

"Of the six people who die in Level 11 on average each day, at least one dies of homicide," Officer Hou explained. "And seventy percent of those murders happen here in The Capital."

When people first no-clip into the Backrooms, the inherent dangers of the levels often compel them to display extraordinary unity. However, in Level 11—a place that signifies safety, a semblance of Frontrooms life, and even a lack of work or academic pressure—malice breeds faster than one might imagine.

"I started as a rookie eight years ago, and now I'm an inspector," Hou shrugged. "There aren't this many opportunities for merit in the Frontrooms."

Officer Hou was able to disclose some details of his previous case because the victim had no kin in the Backrooms. The deceased was named Starry Polis, a middle-aged man who lived alone. His neighbors had little impression of him; just like any ordinary neighbor in a contemporary city, he merely existed, rarely intersecting with others. In the Frontrooms, people often lament that neighborhoods are no longer as warm and friendly as in movies or the memories of the older generation. In the Backrooms, however, few express such sentiments—the perilous environment deepens the suspicion and estrangement between people. Keeping one's distance has become a consensus for a significant number of wanderers, even in the relatively safe Level 11.

"He was killed by mistake. Some bastard scammed the killer out of a large sum of money, and the killer mistook the victim for the scammer," Hou took a sip of coffee as he spoke. "Honestly, I don't trust that whole 'Presses' system the B.N.T.G. came up with. Although it's somewhat useful in the Endless City, dealing with economic disputes related to Presses is a headache for us police—you know, the only trade everyone universally accepts in the Backrooms is bartering. Maybe I'm digressing, but I truly believe this: without that loophole-ridden currency system, there wouldn't be so many economic disputes, and Starry wouldn't be dead."

"How will the killer be dealt with?"

"Hmm…" Hou pondered for a moment. "Level 11 has **NO** death penalty. This might be unacceptable in the Frontrooms, or at least in my country, but given it was, to some extent, manslaughter, he should receive a slightly lighter sentence. But that's a matter for the Capital Court. He'll probably be confined in some factory for forced labor and released in a dozen years."

When asked how those guilty of heinous crimes are handled, Officer Hou shook his head. "Regrettably, in The Capital, they are merely exiled from Level 11 after serving their labor term. After that, no one cares about them. Some might even return to the Endless City; as long as they don't enter The Capital, they won't be expelled again. You might be interviewing the wrong person—after all, we've never implemented the death penalty. The M.E.G. and U.E.C. controlled zones do have death penalties; you can ask them later. But I must say, it's remarkable for The Capital, as the most populous settlement, to have such a legal system at all."

"Sometimes it hurts to see a scoundrel who killed several people be arrested without a shred of remorse, then walk away swaggering after serving his labor. They might go on to commit atrocities in other inhabited levels. I've doubted the meaning of being a police officer, and I've questioned the current penal system of The Capital. But if I just washed my hands of it and left, the expectations I carry would be gone."

When asked what he meant by *expectations*, Officer Hou fell into deep thought. "Expectations… in the eyes of the victims' families, in the souls of the victims—I can feel them. Our punishment may not be severe enough, but at least we bring the guilty to book rather than letting them roam free. This is our job, and our faith. Justice must be done. Once we identify the killer, even if he no-clips away to escape, the wanted posters from The Capital—backed by its reputation—will ensure his 'social death.' They must pay the price because, no matter where—be it The Capital or Base Beta, Level 11 or anywhere else, the Frontrooms or the Backrooms—life is the most important, most precious thing people have."

"At least for Starry, justice has been done."

Before leaving, Officer Hou gave the author a notebook, part of Starry's belongings. "Because there are so many people with no kin in the Backrooms, many police officers actually collect a significant number of items like this. I'm giving this notebook to you; perhaps after looking at it, you'll understand me a bit better."

Regrettably, although it was densely filled, the author could not read the text, which appeared to be Greek. Perhaps Starry had recorded the inner thoughts he never revealed to anyone, but the author had no way to pry into them. I could only flip through the pages quickly, trying to feel the power contained within those words.

When the notebook was flipped to the middle, a drawing appeared. Delicate strokes of colored pencils sketched an ultimately dreamlike starry sky. Soft pinks and pale blues wove together into a hazy canopy, with silver-white starlight bearing exquisite texture. Shades of purple and orange bloomed into nebulas; there were no heavy, bold colors, only a quiet romance woven from gentle hues. Perfectly merging the vastness of the universe with the tenderness of the pencil, a gentle galaxy was thus suddenly revealed before the author's eyes. Shocked for a long while, I finally turned to the next page, returning to the monotonous, dense black letters.

In those fifty or sixty pages of content, only that one page was different. Was it really Starry's artwork? Did that gloomy middle-aged man who interacted with no one, that victim who died for no clear reason, hold such a brilliant *starry* sky in his heart?

It is hard to find the answer to this question now, because *Starry* is no longer here.

## Twilight

![heart](https://backrooms-wiki.wdfiles.com/local--files/how-we-farewell/heart)

In the hospital attached to Base Beta, we met Eric Jeece, an explorer of high repute within the M.E.G. One of the squads in the famous Regiment of the Compass Point, under the Major Explorer Group, is named after him.

However, even legends must eventually draw to a close. Eric was already in his fifties when the M.E.G. was founded in 2014. His legendary experiences often made us overlook his body, which was declining with age. Now, this seventy-nine-year-old man lay on his hospital bed, haggard and withered.

Eric was diagnosed with liver disease the year before last, though the specific condition remains unclear. In the Backrooms, one can find all sorts of substances with miraculous healing properties; yet, precisely because we are in the Backrooms, Eric's illness became an intractable terminal condition.

With treatment impossible, Eric was settled into a private ward. The old man preferred quiet, so he was the sole occupant of the room. When we first arrived at the door, he was lying with his back to us, his emaciated silhouette appearing frail and lonely.

His caregiver told us that the old man's life had entered its countdown; the M.E.G. was merely trying to help him survive until his eightieth birthday. As one of "Old Eric's" most loyal fans, the author was momentarily speechless upon seeing him: Eric's skin was bronzed by years of toil, and due to the torment of his illness, it did not sag but was pulled taut. Yet, on this desiccated frame, it only made the old man appear even more frail and powerless.

"I've lived long enough. I've dealt with countless dangerous environments and monsters[2](javascript:;)in this life. I've had a good run," the old man said with impassioned spirit during the interview, though his voice was heartbreakingly weak.

Eric had a wife in the Frontrooms who had passed away long ago, but he remained single after no-clipping into the Backrooms. On the ring finger of his left hand, he wore a silver wedding band. It had lost its luster after the baptism of long years, yet the old man still cherished this small artifact from the Frontrooms.

The old man's only worry was his son, Blake, who remained in the Frontrooms. Although Blake was already an adult when Eric no-clipped, the father's concern for his son had never ceased over these decades. "I'm really afraid something might have happened to him. He was only 19 then, very rebellious. Without my guidance, would he have gone down the wrong path?" the old man poured his heart out to us, even though there was absolutely no possibility that Blake would ever hear his father's heartfelt words.

Our interview lasted only twenty minutes—a time limit set by the M.E.G. before our visit due to the old man's poor condition. As we were leaving, a nurse was bringing in liquid food.

"He can't eat anymore," the caregiver told us. "His nutrition isn't keeping up, but the old man insists he has no appetite. We can't force-feed him; he can't withstand that kind of strain anymore."

"He is in a lot of pain. Don't let his calm face fool you. Every night[3](javascript:;), he can't sleep; he's scratched through the bedsheets several times from the agony. Sometimes I wonder… would it be better for him if we just *let him go*?"

We could not, and were not qualified to, answer this question. The nurse came out of the ward and shook her head at the caregiver. Before she closed the door, I saw the old man lying in bed, quietly gazing at the daylight outside the window.

Eric passed away two months later. Inside the body of the aged, legendary explorer was a very ordinary heart. This heart began to beat approximately on the 22nd day of his mother's pregnancy, and it faithfully followed him to the very end of his long journey.

## The Compass Point

![street](https://backrooms-wiki.wdfiles.com/local--files/how-we-farewell/street)

In the long maritime history of humanity in the Frontrooms, *compass points* were a fundamental method for sailors to orient themselves. In the Backrooms, the M.E.G. regiment bestowed with the name *Compass Point* shoulders a similar responsibility.

Unlike the controversial Department of Archives within the Major Explorer Group, the Regiment of the Compass Point enjoys extraordinary prestige, often regarded as the backbone of the Group and even of all humanity in the Backrooms. According to G.P.D. records, since the M.E.G.'s establishment in 2014, 84% of new levels discovered by humans have been found by the Regiment of the Compass Point, and the documentation of thousands of levels relies on the exploration of squads organized by the Regiment. In Level 11, members of the Regiment enjoy superior benefits: single rooms allocated by Base Beta, priority supply of internal M.E.G. resources, more holidays, and regularly organized parties.

Glory often comes at a price. Corresponding to the generous treatment of the Compass Point members is a staggering casualty rate. The annual report published by the M.E.G. mentioned that last year, 1,872 members of the Regiment died or went missing during missions, accounting for 72% of the Group's total losses. The number of injured is likely even higher.

"I stay in Level 11 for maybe only one week a year," said Charles Loman, a member of the Regiment. "It's not that we are always on missions. Except for certain squads, most Compass Point members are stationed in Level 1. Contrary to what many imagine, a significant number of squads actually explore within Level 0 and Level 1."

In the Compass Point, a member only needs to serve for one year, or participate in the exploration of three new levels, to apply for retirement or transfer to a relatively safer post. Yet, few actually do so.

"The Group offers this choice to everyone," said Overseer C, one of the key leaders of the M.E.G., in an interview. "But evidently, a loftier ideal supports them in doing this dangerous work—that is, the Home."

"The Compass Point doesn't fit in Level 11," Charles said. "Nor does it fit in Level C-28. People need a settlement, a relatively safe city level or a habitable level, and that is not wrong… I just mean, the Compass Point doesn't fit them."

"It's not about the spirit of adventure, and often it's not for fame. We just want to go home. Even if we die in the process, at least we fall on the road home."

Under Charles's guidance, the author was able to enter the floor in "Lethe" rented exclusively by the M.E.G. Unlike other floors, the M.E.G. upholds the tradition of earth burial and tombstones, making the rows of milky-white gravestones on this floor particularly striking. For years, all Group members who died in the line of duty have been buried here. "Few of us die in Level 11, but we all come here after death." Charles pointed to a tombstone. "I still remember the days when I first no-clipped into Level 1; Hannah guided me through the basic work at Base Alpha."

He was silent for a while before continuing: "Now, I can only come here to find her."

"Before coming here, I told you that we stay in the Compass Point to go home. Ironically, what we return to after death is this—a place we would never want to call home." Charles stared at Hannah's tombstone as he spoke. "It's truly contradictory, but if one day we finally resign ourselves to fate, all our sacrifices will have been in vain."

"From its inception, the Group has had only one goal: to unite all humanity and go home together," Overseer C stated in the interview. "The M.E.G. has never broken its promise."

"I want to go to Munich," Charles said finally. "I want to see her home."

The Compass Point points out the direction for everyone in the Backrooms, yet they themselves might have long been lost in their own obsession. The people of Level 11 always try their best to reconstruct the world they once possessed, generation after generation, to forget the myriad threats and terrors of the Backrooms. One cannot judge which of these two mindsets is right or wrong; neither is wrong. After all, humans didn't come to the Backrooms because they made a mistake.

Before leaving, I looked at the emblem hanging at the entrance: a black eagle spreading its wings, gazing in silence at the firmament outside the building.

Below the black eagle was written a line of small, barely legible bold text:

*"We are a glimmer of hope."*

## The Homeward Journey

![tags](https://backrooms-wiki.wdfiles.com/local--files/how-we-farewell/tags)

In the Backrooms, the reasons for peace vary, but the purposes of battle are often similar. Clearly, not every soldier meets an end as relatively complete as Eric's. Conflict erupts for a stable water source, a patch of arable land, or merely a passageway deemed reliable. Bullets, blades, and even crude clubs claim lives, while the corpses left behind in the levels become the remnants that victors disdain, yet which sting the souls of some.

The "Homecoming Regiment" was born against this backdrop. As a non-profit organization spontaneously founded by wanderers with fewer than 100 members, its influence is minimal—so small that its name does not even appear in the official documents of Level 11. However, shockingly, its members are distributed across almost every level of the Backrooms, maintaining contact with major organizations and even holding knowledge of some classified entrances and exits.

The founder, Marco, is a battle-hardened veteran of the M.E.G. Now, in his humble office piled high with maps, the air is thick with the scent of old bandages mixed with metal. His story is essentially a roll call of his early comrades who fell in battle.

"We were scattered by a pack of Hounds in Level 2. Ryan was dragged into an alley; all we found was his shredded backpack." Marco's voice was calm, as if recounting someone else's affairs. "In the operation against the U.E.C. the year before last, Cham died covering a child. We still don't know where the bullet came from."

"And in Level 3, Wilson… he held up his flashlight to lure away the Smilers so we could cut those damn chains. Everyone who started with me is in Lethe now. Sometimes I feel like I'm not bringing them home; I'm walking the rest of their unfinished journey, bringing them back to this place we once promised to build together."

Eva, a young member of the Homecoming Regiment, added more realistic and cruel details. Her reason for joining was simple yet heavy: after her brother—Ryan, whom Marco mentioned—died in battle, it was Marco and his team who carried his body back.

"We don't just encounter cold corpses," Eva explained. "Sometimes, it's people clinging to their last breath. Deep in the pipes, we found a recruit who had been cornered by Smilers for God knows how long. His legs were gone. We gave him our last dose of painkillers. He kept muttering not about the pain, but, 'Get me out, don't leave me here.' He died on the way back to Level 11—at least he died in a place with light, not in the darkness."

"On a corner platform—I forget exactly where—we found a skeleton leaning against a wall. The equipment was very old. Next to it, scratched with a stone, was a line: 'Tell Lily I made it.' We didn't know who Lily was, or what she meant to the deceased. We carefully collected his bones and brought them out. Perhaps Lily, too, has long been lying in some niche in Lethe."

Marco took over, his tone carrying a deep exhaustion: "The most powerless moments are in Level 2, a place I've been to countless times. We received a distress call saying a squad went missing there. When we found them, all that was left was scattered equipment and… gnawed remains. We couldn't even piece together a complete body; we could only collect some fragments as best we could, to give an answer to those still waiting."

These bodies—retrieved with difficulty, whether whole or fragmented—are ultimately sent to Lethe. Yet, death is not the absolute end of the story. In the Endless City, you will see the names of the fallen carved on the low walls of public squares; you will see their families, upon receiving the ashes of their loved ones, come to the greenery-covered walls of Lethe and quietly place a small bouquet of shimmering flowers. Even the Homecoming Regiment itself holds a brief ceremony for every member they bring back—reading aloud their name and the venue of their last battle.

These bodies, exchanged for at a great cost by the Homecoming Regiment, obtain an equal standing in Lethe alongside suicides, victims of disease, and those who died by accident. Individual heroism, fear, loyalty, or betrayal ultimately all dissipate into the same silence, covered tenderly by the same shade of green.

---

People often refer to the regularly occurring cold spell in Level 11 as *Winter*, using it to gaze back at the homelands in their memories. Now, the temperature is gradually warming, and a brand-new cycle is at hand. However, the Frontrooms poet Fernando Pessoa once penned a profound wisdom: "Spring is not even a thing: it is a manner of speaking." He even asserted that the flowers and green leaves of old will not return—there will only be *new* flowers, *new* green leaves.

**In this Endless City of nearly 130,000 inhabitants, an average of six people die each day.** Fortunately, life is ceaselessly stitching up the gaps torn open by death. When all affectation is stripped away, the cycle of life and death appears stark and naked as never before—when people face it directly, all fear ultimately transforms into something natural.

Thus, all clamorous desires, fears, and despair ultimately flow into this concrete skeleton, quietly transformed into a boundless, verdant serenity. Vines entwine the shelves housing the urns, much like forest roots embracing an ancient slumber. The ethereal sound of the wind passes through the empty levels, causing the whole expanse of green to undulate softly.

Level 11 is exactly this—clamor and silence together compose a heaving chest, inhaling specific and blazing life stories, and exhaling the warm breath of life.

![flowers](https://backrooms-wiki.wdfiles.com/local--files/how-we-farewell/flowers)

---

rating: +25[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

[We run with no retreat, hurling ourselves against the precipice of tomorrow.](javascript:;)

[We become sparks in the wild, burning to light the long night of the sky.](javascript:;)

Written by

Translated by

*The original Chinese version was published on November 25th, 2025*

Footnotes

[1](javascript:;). Lethe (also known as the "River of Oblivion") is one of the five rivers of the Underworld in ancient Greek mythology. Legend holds that the newly deceased, upon drinking the waters of Lethe, would forget their earthly past.

[2](javascript:;). Eric stubbornly refused to use the term *entities*. He insisted on calling hostile entities *monsters*, while for friendly ones, depending on their form or intelligence, he would refer to them as *little fellows* or *friends*.

[3](javascript:;). Although Level 11 never experiences night, it still follows a 24-hour schedule. Hospital wards will dim lights and draw curtains during the "night" hours to simulate the effect of nighttime as much as possible.

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Backrooms Ethnography: Dwelling with Death](how-we-farewell.md)" by EnderstrayKPC & wild ghost377, translated by EnderstrayKPC, from the [Backrooms Wikidot CN](index.md). Source: [https://backrooms-wiki-cn.wikidot.com/how-we-farewell](how-we-farewell.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/how-we-farewell">Backrooms Ethnography: Dwelling with Death</a>" by EnderstrayKPC & wild ghost377, translated by EnderstrayKPC, from the <a href="https://backrooms-wiki-cn.wikidot.com/">Backrooms Wikidot CN</a>. Source: <a href="https://backrooms-wiki-cn.wikidot.com/how-we-farewell">https://backrooms-wiki-cn.wikidot.com/how-we-farewell</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** low angle photography of gray concrete high rise building  
> **License:** CC0 1.0  
> **Author:** Liam Andrew  
> **Source Link:** <https://unsplash.com/photos/low-angle-photography-of-gray-concrete-high-rise-building-W7CopGaHkEM>

> **Name:** Christmas candles  
> **Author:** Markus Grossalber  
> **License:** CC BY 2.0  
> **Source Link:** <https://flic.kr/p/AWWvGL>

> **Name:** Queensland State Archives 2878 Brisbane General Hospital and Womens Hospital Womens Ward 1946  
> **Author:** Agriculture And Stock Department, Publicity Branch  
> **License:** Public Domain  
> **Source Link:** <https://commons.wikimedia.org/wiki/File:Queensland_State_Archives_2878_Brisbane_General_Hospital_and_Womens_Hospital_Womens_Ward_1946.png>

> **Name:** Shadow Hand  
> **Author:** kencf0618  
> **License:** CC BY-SA 2.0  
> **Source Link:** <https://flic.kr/p/4M6nNe>

> **Name:** Heart Rate and Arterial pressures wave  
> **Author:** jlcampbell104  
> **License:** Public Domain  
> **Source Link:** <https://flic.kr/p/GTinEB>

> **Name:** Manhattan  
> **Author:** Kanesue  
> **License:** CC BY 2.0  
> **Source Link:** <https://flic.kr/p/2eiE8Zg>  
> **Additional Notes:** This image has been cropped and edited.

> **Name:** Dog Tag  
> **Author:** nSeika  
> **License:** CC BY 2.0  
> **Source Link:** <https://flic.kr/p/938Ugz>

> **Name:** Roy's Funeral  
> **Author:** wickenden  
> **License:** CC BY-SA 2.0  
> **Source Link:** <https://flic.kr/p/7cx8RM>

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/how-we-farewell](https://backrooms-wiki.wikidot.com/how-we-farewell)
