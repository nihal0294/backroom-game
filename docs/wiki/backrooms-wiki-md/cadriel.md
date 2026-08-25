---
title: "“Cadriel”"
source: "https://backrooms-wiki.wikidot.com/cadriel"
retrieved_at: "2026-08-23T23:37:26+00:00"
license: CC-BY-SA-3.0
---

# “Cadriel”

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

rating: +28[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

- [](javascript:;)

  [close](javascript:;)

  ## Info

  ---

  [X](javascript:;)

  **Due to its formatting, this page cannot be properly read on a regular mobile phone screen. Please use desktop mode if viewing on mobile.**

  **CW: Mentions of suicide**

  Written by and , with the help of

  Crit by

  Greenlit by

Date: 12/01/2024

**Person of Interest**  
**Lou Khoi**  
**Documented by Jean Meier**

## MISSING

![lou](http://alba-zone.wikidot.com/local--files/cadriel/lou)

### LOU FILIPPE KHOI

##### Height: 169 cm[1](javascript:;)

##### Age: 46

##### Race: Mixed Asian-White

##### Hair: Silver, short

##### Eyes: Brown

##### Last seen: 18/12/2023 at Pytheas HQ, Level 4, 7:00

###### Other: Wears round glasses, has a mole on his left cheek, has tattoos on the chest, shoulder and upper arm areas, last seen wearing a burgundy-colored sweater

##### If found, please contact Cercle Ariane Team Pytheas at moc.liamkcab|saehtypeac#moc.liamkcab|saehtypeac

![logo1](http://alba-zone.wikidot.com/local--files/cadriel/logo1)

Attached above is the missing poster for my coworker, Lou Khoi. He has been missing for three weeks.

Khoi joined Team Pytheas around two months ago as a researcher. He mainly specialized in documentation and fieldwork that has to do with postmortem examination. According to his file[2](javascript:;), he used to be a forensic investigator working with the French *Gendarmerie*.

If I had to describe his personality, I would say that he’s evasive. I suppose it takes one to know one. There is little to be gathered from our conversations. We talked about work sometimes, but mostly we talked about nothing. I don’t really know anything about him at all. There are times when I feel that I cannot get through to a person because their mind is so dense and impenetrable; Khoi is the opposite. Talking to him feels like talking to [a pile of forgotten ashes](phenomenon-44.md) something hollow, a ghost perhaps. Something that is already dead.

How long does it take for one to notice a missing cadaver from the morgue?

I started looking into Khoi’s disappearance the day it was reported. Apparently, Khoi had last been seen four days prior to the report, and it was likely that nobody noticed until days later. Quickly, I discovered that Khoi was most recently assigned to Level 7, following a case of reported mass suicides. He had to navigate from M.E.G. Base Omega to Level 6, then Level 7 without requesting any personnel or assistance, so it is entirely possible that he did not make the trip. Not only have all attempts to communicate with him failed, but there have also been no sightings of him by anyone stationed in the aforementioned levels. More and more people at the office are presuming him dead. But somehow, I doubt that.

While investigating his office, I found a stack of letters written by Khoi addressed to no one. I couldn't fully grasp the meaning of them, but I could sense a feeling of longing between the lines. A desire to find something that's been lost, a desire to become whole.

I think he’s out there somewhere, searching for himself. And he’s close.

![merging](http://alba-zone.wikidot.com/local--files/cadriel/merging)

The date is 02/02/2024, six weeks since Lou Khoi has gone missing.  
  
I looked into the case that he was assigned to, and I was only able to find a single report of the incident. It was documented in [Phenomenon 52](phenomenon-52.md) by an independent researcher, and it seemed to imply that the mass suicides were related to the marine life present on the level, or perhaps a specific area on the level designated the Sixth Sea. I’m honestly not quite sure what to make of it.  
  
I feel like it is worth noting that Khoi, according to his file, experiences “moderate ichthyophobia” and “mild thalassophobia”.

A strange man showed up at the office today.  
   
It’s hard to describe him. He looked both like a stranger and so deeply familiar. He had an expression that was knowing, and it felt like he was staring directly into my being. Like he knew more about me than I knew myself.  
  
He smiled like a mentor and like a wild beast. I knew that smile—it was driving me crazy, the fact that I knew that smile. It was like we knew each other.  
  
  
He called himself

**Cadriel:** (To someone else) Hey, I’m not looking to start anything, just here to see a pal. No, no, not suspicious—here, I got my ID, see? Just let me see him and this’ll all get cleared up, alright?

**Jean Meier:** What’s happening?

**Someone else:** This guy just barged in here—wants to see you. Do you know him?

**Cadriel:** He-ey, Jean.

**Jean Meier:** Uh…

# ENCOUNTER

(The two sit across from each other in Meier's office. Cadriel is sitting cross-legged in an uncomfortable-looking chair. He grimaces slightly at the smell and condition of the room.)

---

**Cadriel:** You can call me Cadriel.

**Jean Meier:** Cadriel… Last name..?

**Cadriel:** …

**Jean Meier:** (He checks something on his computer) “Huynh”[3](javascript:;)? Researcher of [Phenomenon 52](phenomenon-52.md)?

**Cadriel:** You’re pronouncing it wrong. Huynh.[4](javascript:;)

**Jean Meier:** Sorry. Huynh. You were previously situated in Level 7?

**Cadriel:** Sure was.

**Jean Meier:** Have you seen this person? He was a researcher of ours who went missing on that level. He went by himself to investigate a case which I believe to be related to your research.

(Meier shows Cadriel the missing poster of Khoi.)

**Cadriel:** Hm… went missing in the sea, you say? You really think he's out there?

**Jean Meier:** I believe so.

**Cadriel:** Is this person important to you?

**Jean Meier:** …

**Cadriel:** How are you so sure he didn’t just… not make the trip there? Perhaps he died along the way, that’s likely, don't you think?

**Jean Meier:** I don’t know. I don’t know…

**Cadriel:** Anything could’ve happened. Maybe he made it and died on the way back. Or he didn’t feel like coming back. Or maybe he got lost and he’s being pulled apart by creatures in a level you’ve never heard of.

**Jean Meier:**…

**Cadriel:** Maybe he's drowning. You know, as they say, sleeping with the fishes.

**Jean Meier:** If you don’t know him, then I’m asking you to leave.

**Cadriel:** I do. He’s me.

---

  
   
   

![fish](http://alba-zone.wikidot.com/local--files/cadriel/fish)

  
   
 

Date: 22/02/2024

**Person of Interest**  
**“Cadriel”**  
**Documented by Jean Meier**  
**Edited by The Pytheas Archival and Conservation Commission**

**NAME:** Cadriel

**ALIASES:** Cadriel Huynh, Lou Khoi, Cadriel Lou, Cadriel L.M.S. Huynh-Khoi, etc.[5](javascript:;)

**LAST KNOWN LOCATIONS:** [Level 7](level-7.md), [Level 4](level-4.md)

**KNOWN AFFILIATIONS:** [Cercle Ariane Team Pytheas](cercle-ariane.md), Head Archivist Jean Meier

# Physical Description

Cadriel is an Asian male of unknown age[6](javascript:;). He has light-brown skin, black hair that is partially bleached and showing signs of graying. He has dark brown, nearly black irises which appear to be unnaturally large. He has a slim build and measures around 170 centimeters[7](javascript:;) in height. He has a prominent scar from his left cheek to his jaw, as well as a mole on the right side of his mouth and two on his upper left cheek. He wears round glasses, a loose red sweater, and dog tags around his neck. Old scars, appearing to be rope burn scars of various sizes cover the visible amount of skin, including his hands and neck.

# Behavioral Description

Cadriel can be described as cryptic both in the way he speaks and acts. He shows little emotion aside from constantly smiling in a carefree manner. His tone of speaking is overly casual, but he often uses figurative, almost poetic language. His speech patterns are also often erratic. This is in contrast with his body language, which is more still and calculated, almost eerily so.

He carries a small notebook in his pocket, along with a Cercle Ariane-issued ID card belonging to Researcher Lou Khoi, who had previously gone missing in Level 7.

Cadriel has extensive knowledge of marine biology, and an overall love for the ocean. He claims that he is a sailor, that one day he will return to the sea. His current location is unknown.

# Reification

Cadriel was subjected to [Phenomenon 77](phenomenon-77.md), undergoing a process referred to as “Reification”. Little is known about the phenomenon, but it appears to involve two individuals physically fusing together, resulting in them inhabiting the same body. Further information pending. See log P77-1 and the following notice.  
  
The following recording and transcript can only be accessed by authorized members of Team Pytheas.

[Show Interview Log P77-1](javascript:;)

[Hide Interview Log P77-1](javascript:;)

# Interview

**Subject：** Cadriel  
**Interviewer：** Jean Meier  
**Date:** 20/02/2024

---

**Jean Meier:** Okay. Rolling. First, basics. Who are you?

**Cadriel:** I'm Cadriel. Lou Khoi. Whatever you'd like to call me. I'm a researcher.

**Jean Meier:** Your name was originally Cadriel Huynh, correct?

**Cadriel:** Yes. It was. It is. Um.. There's a lot of blurred lines there. And you're Jean Meier. It's nice to meet you again.

**Jean Meier:** Right.. What is your relationship—or rather, connection to Researcher Lou Khoi?

**Cadriel:** That's a stupid question, no offense. I mean, you're looking right at him. What, you don't recognize even a little bit of me?

**Jean Meier:** No, of course, I mean, um… Would you mind explaining what is it exactly that happened when Khoi—you went to Level 7?

**Cadriel:** It's a long story. I saw myself in the water, like a reflection. A reflection. I spent a hell of a lot of time down there, just thinking and seeing things. Have you heard of Phenomenon 52?

(He leans forward in his chair, almost leering at Meier. His hands are still folded in his lap.)

**Jean Meier:** Yes, actually. I've looked into it, although it seems quite incomplete. You are the author of documentation relating to it, correct?

**Cadriel:** Incomplete? I'm working on it, pal. Research takes time, and we don't even understand how time works down here to the fullest extent. But yeah, that's me. I carried the majority of the research regarding P-52. Everyone else…

(A pause.)

Gave up.

**Jean Meier:** And Lou Khoi? Was he involved in your work?

**Cadriel:** At the start, no. Not really. Just me. I was a little.. protective, I guess, of my research. Can you blame me? I'm surrounded by idiots in my field. But I learned that there was no point in hiding things from myself.

**Jean Meier:** Okay… How did you meet him? What did he do while he was there?

**Cadriel:** I didn't meet anyone. I mean, I got to know myself a little better, you know? Did a lot of reflection. Looked at pictures of whales until I couldn't see straight. Needed some fresh air after all of that, so I'm here.

**Jean Meier:** (Sigh) Alright, I won't beat around the question. I suspect that some sort of phenomenon happened in Level 7, and as a result of it you are now two different people who share a single body. Can you confirm this?

**Cadriel:** Sure. If that helps you sleep at night.

(He puts out his hands, signing wire[8](javascript:;). Then he turns his wrists to wrap the wire into a circle. Then he shrugs, putting his hands back in his lap. It's the most obvious thing in the world to him.)

It's highly conceptual at the moment. You have two. And then you have one. It's like mitosis, but, well… flip it and reverse it. But it's a lot harder to achieve. Think about it like this…

Do you feel complete?

**Jean Meier:** Complete? In what way?

**Cadriel:** (He shrugs.)

Complete. What are you missing, Jean Meier?

**Jean Meier:** Listen, I… This is about the phenomenon, not me.

**Cadriel:** (He leans closer.) You can tell me. We're friends. Who am I gonna tell, huh? *What are you missing?*

**Jean Meier:** Fine. I'll play along, if you tell me about it. My mother, I'm missing her. And I think I'm also missing a purpose.

**Cadriel:** Oh? A purpose?

**Jean Meier:** Uh, to life, you know? Everything's a drag, this whole place, it's all pointless.

**Cadriel:** If it's all pointless, why don't you just kill yourself and get over it? You're searching for something.

**Jean Meier:**… I suppose so.

**Cadriel:** You're very easy to read. Well, I guess it's not fair since I already know you, is it? (He smiles)

**Jean Meier:**… Right. I get it, I believe you. So how does one become "complete" like yourself?

**Cadriel:** (He does the 'wire' sign with his hands again, then shakes them like a magician finishing a trick.)

Two halves make a whole.

**Jean Meier:** But I'm not “half” of anything. I'm a person. I'm me.

**Cadriel:** You are you, and you are you again. It's not rocket science, Meier.

Have you ever heard of reification?

**Jean Meier:** What… No. What is that?

**Cadriel:** Really? I have a whole file for it in my office. But in short, it's… a communication of sorts.

**Jean Meier:** Communication?

**Cadriel:** Communication. But not with words. Something else. How do you say it?

(Slowly, he gestures as if drawing an imaginary line between him and Meier.)

Telepathy.

To speak without words; to know without saying. You can see a vast, violent emptiness without having to say it's there. You fill it.

**Jean Meier:** And you achieve this by becoming one. Two minds in a single body. I think I'm beginning to understand.

**Cadriel:** You understand, but you don't. You're not complete, but you could be. Think about it harder, Meier.

**Jean Meier:** There's nothing to think about. Nothing is going to magically fulfill me.

**Cadriel:** No, of course not. Not if you don't go looking for it. You can't just sit here stagnant as a corpse and mope about the world. Your job sucks, your life sucks, whatever the hell. But I can fix that.

I can help you.

**Jean Meier:** Please, stop this. You don't know about me, you really don't.

**Cadriel:** Of course not. You don't even know yourself.

**Jean Meier:** I have been trying to find myself! All these years, I have been trying to make sense of what has been happening to me! I have been chasing ghosts my entire life.

**Cadriel:** Think. Think hard, Jean. What are you missing?

Or perhaps… *Who* are you missing?

(A long pause.)

**Jean Meier:** My mother, maybe she was the only one who could find me even at my lowest—no. No. There's no way to find her anymore. This… isn't going anywhere—

**Cadriel:** Who's your other half? Who is it that has what you lack?

(Another pause. Meier's eyes widen.)

**Jean Meier:**… It's her.

(He suddenly stands up, frantically looking around the room.)

No, no, no. Damn it. The mirror. I don't have the mirror anymore.

**Cadriel:** (He smiles.) A breakthrough! You were able to figure it out, after all. It all comes naturally beyond this point, like a primordial instinct.

**Jean Meier:** Oh god, it's definitely her. She has *Maman* and i don't. You're right, shit. I need to find her. This will fix everything—

**Cadriel:** (He stands up to leave.) You don't need my help anymore. Come visit me sometime once you're complete.

**Jean Meier:** I'll be home… I'll be…

(Abruptly, Meier ends the recording.)

---

Cadriel was seen leaving the office after Meier. He has not been seen in any level since then.

## Notice from the Pytheas Archival and Conservation Commission

  
Head Archivist Jean Meier has displayed highly unprofessional behavior surrounding this phenomenon. Meier's documentation is deemed unreliable from this point of the article, as he has been severely psychologically affected by his findings. The Pytheas Archival and Conservation Commission will be granted ownership of Meier's research regarding the Person of Interest, “Cadriel”, and will edit and revise the information according to necessity.  
  
The previous versions of the article are accessible only to editors personally authorized by Pytheas.  
  
We apologize for the inconvenience.  
 

![logo1](http://alba-zone.wikidot.com/local--files/cadriel/logo1)

###### Pytheas

  

![communication](http://alba-zone.wikidot.com/local--files/cadriel/communication)

**Phenomenon XX — “Reification”**  
**Researcher Cadriel L.M.S. Huynh-Khoi**  
**Report #1 — Telepathy**  
  
 What is your life’s purpose? As humans, we are constantly forced to perceive and address a massive, overarching sense of emptiness in our own lives. We are afraid of being meaningless; utterly and entirely insignificant animals that are a waste of the world’s resources. What if there was a way to eradicate this sense of impending doom? No one would have to die in vain anymore.

Reification is the act of making two halves into a whole. It is an act of communication; a confession, perhaps, or a prayer. It is a reverse Genesis of sorts, involving not only the flesh but the psyche as well. Despite certain adverse effects, it is almost certain that the benefits outweigh any sort of consequence.

The first sign of being incomplete is an all-encompassing sensation of loneliness in the world. The feeling or idea that nobody will ever truly see into your soul behind a thick barricade you’ve put up for whatever reason. Reification is a complicated process; it is the answer, but not an immediate remedy. The body can do as it likes, but the spirit must be willing. Bodies will reject the act of reification if the individuals—hereafter referred to as carcasses—have not yet established a mutual understanding and synchronization of thought with each other.

Carcasses often exhibit some if not all of the following symptoms: paranoia, insomnia, nyctophobia, inability to spell their own name, and either an extreme disdain for or attraction towards mirrors. They are often unaware of their own condition. Without reification, they are nobody.

 Haven’t you always wanted to know who you really are?  
   
   
![telepathy](http://alba-zone.wikidot.com/local--files/cadriel/telepathy)

To Esdras

Please don’t be alarmed, I am not a thief. I know that you only bought [the mirror](for-sale-mirror-looked-at-once.md) from me just a few days ago, but I urgently need to borrow it. I would have asked you personally, but I wasn't able to find you, so I took it from your desk. I will return it to you after my business is done.

J. Meier

  
 

- [*VIDEO FEED*](javascript:;)
- [*VIDEO FEED*](javascript:;)

[0:00] - Jean Meier backs away from the camera. The blinds of his office are shut, and a single light is on. In the center of the room, there is a mirror placed atop a carpet. Meier kneels down on the floor beside it, and begins speaking to the camera.

[0:20] - He holds up the mirror so that it faces the camera.

[0:30] - A pause. He lowers the mirror back onto the carpet.

[0:50] - Another pause. Meier looks longingly into the mirror.

[1:10] - Meier reaches offscreen to retrieve a folder of papers. He shows it to the camera. On the first page is a missing poster for Lou Khoi.

‎

[2:00] - He puts the folder away and looks directly at the camera.

‎[2:20] - Meier turns towards the mirror. He shuts his eyes and takes a deep breath.

‎

[2:30] - He opens his eyes.

‎

It's you.

I'm sorry…

I haven't been able to get you out of my head.

To be honest, I…

I got very scared after I saw you. I kept thinking about what a sad boy you must've been.

I was scared that you would hate me. I was scared that there was a part of me that was like you, and it would grow to hate me.

‎

That's not true.

No, no. I'm sorry.

‎

Oh dear.

Please, I'm sorry. Please don't say these things…

‎

You're so cold. Oh, Jean, you carry so much pain with you. So much suffering.

You know that that's not how it works, your pain won't go away no matter what.

It hurts. It hurts me so immensely. I can't bear this… this weight. How can I live with it?

Please, you know that this is wrong. I see it in your eyes.

‎

Poor thing… Cry all you need.

‎

Jean Meier, you're beautiful. I love you.

You're allowed to be you.

‎

I know that you'll be alright. Let's not see each other again. I won't forget you, okay?

‎

Goodbye, Jean.

[BEGIN AUDIO TRANSCRIPT]

  
This is a video visually demonstrating the recently discovered phenomenon, “Reification”. The date is the 2nd of February, 2024, and the time is… ten o'clock. I’m Jean Meier, and I will be the subject in this demonstration.

Before I begin, I will briefly explain what I know about this phenomenon, and the circumstances leading to my discovery of it.

At first, it seemed like an ordinary mirror. I got it as a “gift” from my co-workers. And… thinking back to it, I’m not really sure whether they knew about its anomalous properties or not. But for a while, I didn’t even touch it because I was so engrossed in my work.

But when I did…

Okay, so what happened was… I decided to take a break for myself, and then I remembered about the mirror. I set it down in this exact spot and I closed my eyes. And when I opened them, what I saw was… Well, how do I put this—I saw myself, but not me. I saw someone else’s reflection, someone else’s life. There was a woman. She was me, but she wasn’t, you know? Like, I don't know, like a parallel dimension of sorts.

But I realized that she had what I was missing. I mean, first of all, she wasn’t stuck here like I am. She was living in our house, with our mother. I recognized everything immediately—I saw my room, I heard my mother’s voice, and I really thought I was dreaming.

Anyways, I ended up selling the mirror after that. I just couldn’t bear to see it, or think about it. But there is a reason why I want to look at it again. It has to do with this phenomenon called “Reification”.

It started when my co-worker, Lou Khoi, went missing. I’ve already written about my findings regarding the investigation, so to keep it short, I will just say that I’ve found that he wasn’t missing at all, because he came back to see me.

He looked different, and he spoke differently, and he knew things he wouldn’t have known, but it was surely him. He called himself Cadriel. He… He is what happens when you find your true other half, the piece of yourself that has been cast into the ocean. He was complete, so much so that it made me realize just how incomplete he was before, and I wondered how a person could even bear to live with such a big gaping hole in their being. And I realized I was that way.

No, I can’t bear it anymore. Not after I’ve realized who it was that I was looking for. The person who had everything I was missing.

Now, I will attempt to recreate the phenomenon with the mirror. If it doesn’t work… No, it has to. I know it will. I’m going to demonstrate what it looks like to become embodied, to be fulfilled, to be whole.

  
  
  
  

…  
  
  
  
  
It's you.  
  
  
…  
  
  
You're—  
  
  
What? What for?  
  
  
  
  
  
  
  
  
  
  
Scared? Why?  
  
  
  
  
  
  
  
  
  
… Well, I haven't been able to stop thinking about you either.  
  
  
I think…  
  
I think you are everything and I am nothing.  
  
  
  
But it is. You're everything that I'm missing.  
  
  
  
I don't need your pity. I just need to… How do I put this…  
  
You could complete me.  
  
  
  
The door's already open, can't close it now.  
  
  
  
  
Listen, Jeanne, you don't understand. I miss my life so badly. I miss my home, I miss *Maman*.  
  
  
We could be all that we need. Feel my hand again.  
  
  
  
  
  
But I won't have to anymore.  
  
  
  
  
  
  
Why are you pulling back? We're made for each other, aren't we?  
  
  
  
  
  
…  
  
  
  
  
  
  
I..  
  
  
  
  
  
  
  
  
  
I'm sorry… I'm so sorry. I knew I couldn't do it.  
  
  
  
  
  
  
  
  
I have to go now, before I do something stupid again. I shouldn't have done this. I'll leave you alone.  
  
I think I'll be alright.  
  
  
  
  
  
  
I could never forget you.  
  
  
  
Goodbye, Jeanne.

  
  
  
  

To Lou Khoi  
  
  
I hope you are doing well. I don't know if you will even receive this, wherever you are.

From Jean Meier

We were both lost at one point, but you managed to find yourself. You had good intentions, you wanted me to find what you had too, but it wasn't what I needed. I came to the realization that she wasn't my other half, she was already complete, and I was only capable of hurting her. I'm going to keep searching, no matter how long it takes, but I know now that the answer will come from within myself. I still want you to know that I'm truly happy for you.  
  
Let's not see each other again. Thank you for everything.

  

[+ Open Footnotes](javascript:;)

[- Close Footnotes](javascript:;)

Footnotes

[1](javascript:;). 5 feet and 5 inches

[2](javascript:;). Access to Khoi’s personal files was granted by Pytheas himself.

[3](javascript:;). Meier pronounces it as “ou-en”

[4](javascript:;). Cadriel pronounces it as “hwin” with a downwards inflection.

[5](javascript:;). He also responds to other variations of these names.

[6](javascript:;). Based on his appearance, he could be aged anywhere between 25-35 years old

[7](javascript:;). 5 feet and 6 inches

[8](javascript:;). In American Sign Language

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[“Cadriel”](cadriel.md)" by pubie and doctrinator, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/cadriel](cadriel.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/cadriel">“Cadriel”</a>" by pubie and doctrinator, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/cadriel">https://backrooms-wiki.wikidot.com/cadriel</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** header  
> **Author:** doctrinator  
> **License:** CC BY-SA 4.0  
> **Link:** <http://alba-zone.wikidot.com/local--files/cadriel/header>

> **Name:** lou  
> **Author:** doctrinator  
> **License:** CC BY-SA 4.0  
> **Link:** <http://alba-zone.wikidot.com/local--files/cadriel/lou>

> Name: Logo of Ariane Circle  
> Author: Mel-Raspberry (modified by doctrinator)  
> License: CC BY-SA 3.0  
> Source: <http://alba-zone.wikidot.com/local--files/cadriel/logo1>

> **Name:** telepathy  
> **Author:** doctrinator  
> **License:** CC BY-SA 4.0  
> **Link:** <http://alba-zone.wikidot.com/local--files/cadriel/telepathy>

> **Name:** merging  
> **Author:** Stinging Eyes (modified by doctrinator)  
> **License:** CC BY-SA 2.0  
> **Link:** <https://flic.kr/p/nfS8xB>

> **Name:** fish  
> **Author:** The Public Domain Review (modified by doctrinator)  
> **License:** Public Domain  
> **Link:** <https://flic.kr/p/BYNfwc>

> **Name:** communication  
> **Author:** The Public Domain Review (modified by doctrinator)  
> **License:** Public Domain  
> **Link:** <https://flic.kr/p/ShRCzo>

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/cadriel](https://backrooms-wiki.wikidot.com/cadriel)
