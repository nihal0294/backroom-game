---
title: "Entity 64 3"
source: "https://backrooms-wiki.wikidot.com/fragment:entity-64-3"
retrieved_at: "2026-08-23T23:41:07+00:00"
license: CC-BY-SA-3.0
---

# Entity 64 3

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

# This article was made through a collaboration of the entity Puzzle Maker and the M.E.G.

## - Mark, Captain of Team Mystery.

  
  

## The Puzzle Maker

CONCORD ENTITY CLASSIFICATION SYSTEM

ENTITY ID: Entity 52  
HABITAT(S): Puzzle Box

**[IETS](iets.md):**  
**0A+****X****X**

CLASS:

Itemic

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

![Missing alt text.](http://backrooms-sandbox-2.wikidot.com/local--files/collab:nikuchan-entity-puzzle/Puzzle%20Maker)

A beautiful drawing of me, thank you Beach!

# Description

Greetings! I'm the Puzzle Maker, or "Entity 64," as some say! I'm writing this with the help of my friend Mark; he's making sure I put down all the things I have to mention. I'll try not to bore you too much with my description! I hope you'll stay and learn about me in the meantime.

I live in a level called the "Puzzle Box of Mysteries," and I don't really go anywhere else outside of it. It's my special home, and I love it so much. I came up with all the decorations!

I look like one cute jester, I'd say. I have a big tricolor hat with the symbol of a puzzle piece in the middle and a big poofy jester costume that's all colorful too! My skin is a bit purple and pink, like paint splotches. My hair is spiky and of a pretty brighter purple, and my eyes are red for the left and yellow for the right. I also have a little cavity in my chest where my special "life cube" is found. It's the source of my powers and life. So please, don't try to take it or break it, alright? I could get very hurt if you do, so be very careful with me!

P.S. My favorite food is gummy worms. If you come here, you can try to bring a batch of them; I would really appreciate the gesture!

# Behaviors

Mark says I can talk a bit about myself in more detail here. I like to play with wanderers whenever they come into my home. I want to befriend as many of them as I can! People are what make me happy, since with them I'll never be alone anymore.

One important thing about me is that I love puzzles very much. I'm the master of puzzles — the best of the best! I make riddles and all kinds of quizzes too! I won't hesitate to challenge anyone to my extremely complicated challenges. It's just so cool to see others enjoy the things I planned! One day, I hope I can find someone as intelligent as me who can solve one of my hardest puzzles so that we can become challenge partners for life!

The most important thing is that I want to make people smile and have fun. My challenges are all about the enjoyment of a difficult feat, and I prefer to pair wanderers together to do group puzzles. I think they're the best ones! Causing all these positive feelings makes me feel as strong as the bodybuilders I see in the magazines, although I'm still not entirely sure why I am this way. There are many things about my powers that I don't understand.

What I dislike is being alone, not having anybody around me. My level is colorful and cool, but it's quite empty sometimes. Even with my puzzle cats and friends, I still feel lonely without wanderers around. I can offer all kinds of nice things, so just keep me a bit of company, okay? I promise I'll be the best friend that anyone can ever have! So please, if you come by anytime soon, don't leave so quickly!

Sometimes I can be quite clingy, but I won't do it too much. I don't want to become an inconvenience at all! I want to be everyone's friend, so I won't ever mess up a lot. I used to scare people off in the past because of how unstable my form was, so now that I'm better at handling it, I won't ruin new occasions again, since I can turn into anything I like!

I like dressing up and changing my appearance very often. I've tried many modern human styles, and I love each of them so much! If you ever want fashion advice, come to me! I was once a doll, you see, then a mechanical toy, a plushy boy, and now a jester! I guess you could say I suit the period I'm currently living in.

I'm not sure what else to write here. I will finish up this section for now. I apologize if I messed up the "clinical tone." I usually only write in my diary (but no peeking!).

# Abilities

I'm made of puzzles! As such, I'm able to modify my body however I please by editing each piece one by one.

I can also create things out of puzzle pieces! All the architecture on my level is made out of them, even the food and drinks! I can modify everything I make with those pieces, including taste and properties. That means all the puzzle food in my level is entirely edible and tastes like real food! How cool is that? I have full control over this place, so the editing possibilities are endless.

One other power I have is to create all kinds of puzzles, of course. All I have to do is imagine it to make it come true. I can think of the most complex Rubik's Cube to solve or a hard enigma, and it will appear! That's how I'm able to create the most unique challenges in the whole world!

I would tell you that my other abilities are drawing and collecting mini animal figurines, but Mark is telling me they are not "anomalous," so they aren't necessary to be written about. It's a bummer, but you can always come here to my level, and I can talk about it! I have so many!

# Origins

I don't remember much about the years back when I wasn't fully formed. I was like a baby who didn't develop his powers fully. I only briefly remember something from when I first came to life. It was a strange cacophony of voices in my mind, telling me to wake up and bring laughter and joy to the world… The next thing I knew, I was aware of everything around me, and I had the life cube in my chest. The room around me changed and became my level. I suppose that me being given life was the cause of it.

The voice was so kind; I remember it clearly. It sounded sad and tired, yet gentle towards me. I wonder if whoever spoke is still here in the Backrooms, if they still remember me. After all, they're technically my parent, aren't they? I wonder why they left me here.

Sometimes, I really wish I had a family like those in the magazines that fall on my level. I often think about how things would have gone if I were part of one, but I guess there was a reason why the voice left me. They must have had an important mission that led them to focus on it and not me. I'm just a little sad about it. I wish I were as important as that mission.

I wonder how it feels to be the first choice for someone special.

I used to scare people when I first became aware. My form was strange and monster-like, but I learned to be better for everyone! I just wish people didn't get so quickly bored of me and leave over the years. I always tried my best to entertain them all! But things changed quickly, and so did the general enjoyment of certain enigmas and puzzles.

But now I'm as great as I can be! I just wish it would last a little longer than usual. I hope you can understand what I'm saying; I don't want to make it too much about my feelings and bore you. Besides, I have so many friends now. I won't ever be alone again! I hope that it'll stay this way.

# Advice

![DoandDonts](http://backrooms-sandbox-2.wikidot.com/local--files/collab:nikuchan-entity-puzzle/DoandDonts)

---

Source: [https://backrooms-wiki.wikidot.com/fragment:entity-64-3](https://backrooms-wiki.wikidot.com/fragment:entity-64-3)
