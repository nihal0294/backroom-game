---
title: "Object 48 - \"Liquid Pain\""
source: "https://backrooms-wiki.wikidot.com/object-48"
retrieved_at: "2026-08-23T23:37:09+00:00"
license: CC-BY-SA-3.0
---

# Object 48 - "Liquid Pain"

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

###### An Anthology

[Toggle Font](index.md)[Toggle Font](index.md)

{$title}Languages:

  
[![flag-saudi-arabia2x.png](https://cdn3.iconfinder.com/data/icons/142-mini-country-flags-16x16px/32/flag-saudi-arabia2x.png)](object-48.md)  
[![china](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/china)](object-48.md)  
[![flag-germany2x.png](https://cdn3.iconfinder.com/data/icons/142-mini-country-flags-16x16px/32/flag-germany2x.png)](object-48.md)  
[![uk](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/uk)](object-48.md)  
[![spain](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/spain)](object-48.md)  
[![france](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/france)](object-48.md)  
[![indonesia](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/indonesia)](object-48.md)  
[![italy](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/italy)](object-48.md)  
[![KO](http://backrooms-wiki.wikidot.com/local--files/component:translations/KO)](object-48.md)  
[![poland](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/poland)](object-48.md)  
[![portugal](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/portugal)](object-48.md)  
[![russia](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/russia)](object-48.md)  
[![thai](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/thai)](object-48.md)  
[![toki](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/toki)](object-48.md)  
[![vietnam](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/vietnam)](object-48.md)

rating: +60[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  

Info

Theme by and edited by

Huge thanks to for all of the tech help. You’re a real one.

Critics/Reviewers:  
  
Artemisia on discord  
Orkyius on discord  
  
John John Johnson on discord  
  
  
  
  
  
  
  
Kit on discord  
  
  
*MisterNemu* does not match any existing user name

Originally written by   
[Original Page](https://web.archive.org/web/20211006151321/http://backrooms-wiki.wikidot.com/object-12)

| Page Type | Articles |
| --- | --- |
| Author Page | [ReyDay](reyday.md) |
| Levels | [Level 988 - “Belphegor’s Nightmare”](level-986.md) |
| Unnumbered Levels | [Death’s Door](deaths-door.md), [Agoraphobia](agoraphobia.md), [The Celestial Cathedral](cathedrale-celeste.md)(translated) |
| Sub-Layers | [Level 800.1](level-800-1.md) |
| Entities | Coming Soon! |
| Unnumbered Entities | Coming Soon! |
| Objects | [Object 48 - “Liquid Pain”](object-48.md), [Object 33 - “RoboPets”](object-33.md), [Object 64 - "Whisperers"](object-64.md), [Object 5-FR - “Anemophosis”](objet-5-fr.md)(translated) |
| Phenomena | [Phenomenon 28 - “Mourning Nothing In Particular”](phenomenon-28.md) |
| Tales | [The Echo of Creation](echo-of-creation.md), [Five Years Since You Went Missing](five-years-since-you-went-missing.md), [Knight’s Gambit](knights-gambit.md), [INFINITY](infinity.md), [For Christmas](pour-noel.md)(translated) |
| Groups | [Ariane Circle](cercle-ariane.md)(translated), [The Black Knights](the-black-knights.md)(owned) |
| POIs | [Nyx](nyx.md)(translated) |
| Canons | [Black Knights](black-knights.md)(owned) |
| Joke Pages | Coming Soon! |
| Tech | [Enchanted Forest Theme](theme__enchanted-forest--3d44f9e9.md), [Music Theme](theme__music--20ace3b7.md), [Deep Sea Theme](theme__deep-sea--ff961a64.md), [Tesseract Theme](theme__tesseract--a9c83ab3.md), [Ariane Circle Theme](theme__cercle-ariane--c0b45b69.md)(translated) |
| Guides/Essays | Coming Soon! |
| Art | [Diana Evelynn](art__reyday-black-knights--01ea6f5d.md), [Fia](art__fia--f5c3d51a.md), [Tess Welcome Banner](art__reydaybanner--f13dff81.md) |

---

Humanity is at stake, our peers are lost and soon it'll only be us. One by one we are lost, not in space, or time, but our humanity. What even makes us human?

And why do we lose it?

*(An **An Anthology** Page)*

  
 

##### All An Anthology Pages:

| Page Type | Page Title | Page Teaser |
| --- | --- | --- |
| Level | [The Attic of Memories](level-980.md) | How could we possibly be safe, when we rely so much on our memories? How can we live when we know nothing? |
| Object | [Liquid Pain](object-48.md) | Does everything really need an explanation? Was Alan Baker's death even a coincidence at all? |
| Tale | [A Letter to my Past Self](a-letter-to-my-past-self.md) | I know this is hard, you are me, I am you, I know all the challenges you've faced just as I have too. |
| Object | [Object 54](object-54.md) | . . . |
| Level | [Symbolic Angels](level-991.md) | Walk my length. Feel my air. Digest my moonlight sonata. |
| Tale (song) | [Fingers to the Fire](https://backrooms-wiki.wikidot.com/fingers-to-the-fire) | Your team has failed to stabilize a paradox; the consequences await. |

[Close](index.md)

Offsets

[0](http://backrooms-wiki.wikidot.com/object-48/offset/0)

Offset 0

Name: Object 48 0

(Click to view the offset)

[1](http://backrooms-wiki.wikidot.com/object-48/offset/1)

Offset 1

Name: Object 48 1

(Click to view the offset)

[2](http://backrooms-wiki.wikidot.com/object-48/offset/2)

Offset 2

Name: Object 48 2

(Click to view the offset)

  

### Not interested in narrative?

No worries! You can skip ahead to the clinical part of the page.

*[Click here](http://backrooms-wiki.wikidot.com/object-48/offset/1)*

  

---

*We searched and searched for some kind of exit or clippable material in the [infinite wasteland of sand](level-46.md). I could tell Alan was fatigued; we'd walked for about three hours, and he winced in pain and held his chest the entire time. I wasn't exactly doing great either. I was barely able to drag myself through the desert, my mouth dry and my eyelids heavy as the world was spinning around me. Nearly out of breath, Alan said:*

*"Kia, we should rest. We're both tired out of our minds, and my stomach feels awful."*

*I assumed it was just the dehydration. It was foolish of me not to think otherwise.*

*"We have to keep going, or else we'll die out here. We'll make it to [Level 4](level-4.md) soon, I just know it, and we'll stock up on [Almond Water](object-1.md) there."*

*"You don't know that. We could be out here for hours before we find the exit. We should try to conserve our energy, and I just feel like something's wrong."*

*"I do know that the sun likely isn't setting anytime soon, and if we don't get out of here soon, we'll bur—"*

*He then started coughing without stop. You could hear just how exhausted and dehydrated he was with every miserable hack, and suddenly, he hurled out deep, red blood. It drooled from his mouth as he fell into my arms, and I felt something soak through my shirt. I looked down to see his stomach gushing with ichor, pouring from his body as something ate away at his insides, staining both of our clothes and the white sand beneath us. His eyes rolled to the back of his head as he gasped for air.*

*"Alan! Please, Alan, stay with me!"*

*No response. His face got paler with every second, his weight fully against me as I cried and screamed. I tried everything I could to prevent him from losing more blood.*

*"Alan, please!! I can't lose you! Wake up! Wake up! Someone, anyone,* **help!***"*

  
  
  
  

![Death](http://backrooms-sandbox-2.wikidot.com/local--files/collab:reyday-liquid-pain/Death)

[[+] Show Transcript](javascript:;)

[[-] Hide Transcript](javascript:;)

**Case Number:** 986

**Date of Death:** 04/11/2020

**Investigator:** Olivia Smith

**ME:** Jonah Miller

# Decedent Information

**Name:** Alan Baker

**Aliases:** N/A

**DOB:** 03/21/1997

**Age:** 23

**Sex:** M

**Race:** White

**Marital Status:** Never married

**Address:** L3

**Pregnant at Time of Death:** No

**Decedent Currently Under Governmental Supervision:** No

# Witnesses

**Name:** Kiara Rodriguez

**Relationship to Decedent:** Friend

**Address:** Level 3

  

**Date:** 04/11/2020  
**To:** rkb.puorgrerolpxerojam|htimsaivilo#rkb.puorgrerolpxerojam|htimsaivilo  
**From:** rkb.puorgrerolpxerojam|ekardmail#rkb.puorgrerolpxerojam|ekardmail  
**Subject:** Alan Baker Autopsy

---

Hello Operative Smith,

We got the autopsy results back, and we found irregular amounts of hydrochloric acid in the victim's stomach, along with traces of potassium chloride in their bloodstream. We believe that the victim fell to an undiscovered object, one that needs to be researched and documented as soon as possible. Is there anyone on your team who could further investigate this?

Thank you,  
Liam Drake  
M.E.G. Forensic Pathologist

[[+] Show File](javascript:;)

[[-] Hide File](javascript:;)

![Autopsy1](http://backrooms-sandbox-2.wikidot.com/local--files/collab:reyday-liquid-pain/Autopsy1)  

- - \_

  [+ Show block](javascript:;)[- Hide block](javascript:;)

  **Name:** Alan Baker

  **Age:** 23

  **Sex:** M

  **Address:** L3

  **Length:** 5’9”

  **Weight:** 193

  **Eyes:** Blue

  **Hair:** Brown

  **Beard:** N

  **Blood Type:** O+

  **Contents in Blood:** Potassium cyanide

  **Rigor Mortis:** N

  **Liver Mortis:** Y

  **Marks and Wounds:**

  - Severe acid burns in stomach and lower abdomen

  - Signs of corroding tissue

  - Unusually high hydrochloric acid concentration in stomach

  - Damaged digestive track

  **Probable Cause of Death:** Blood loss, acid burns, cyanide poisoning, organ failure

  **Date of Autopsy:** 04/11/2020

  **Location of Autopsy:** Beta Medical Center

  

**Date:** 04/11/2020  
**To:** rkb.puorgrerolpxerojam|ekardmail#rkb.puorgrerolpxerojam|ekardmail  
**From:** rkb.puorgrerolpxerojam|htimsaivilo#rkb.puorgrerolpxerojam|htimsaivilo  
**Subject:** Re: Alan Baker Autopsy

---

Dear Dr. Drake,

Thank you so much for taking the time to conduct the autopsy. I have someone on my team who would be well suited for the task. If you have any other relevant documents to this case, please send them at your earliest convenience.

Best wishes,

Olivia Smith  
M.E.G. Head Operator C

  

04/11

Well, in light of my new assignment, I’ve decided to journal my notes and findings. A part of me is inclined to say that this is the work of [Cashew Water](object-44.md), due to the cyanide poisoning and the fact that the autopsy suggests the substance was ingested, but there is one large factor that disproves that theory: the hydrochloric acid. Cashew Water doesn’t contain any hydrochloric acid and therefore cannot be the cause for Mr. Baker’s death. I’ll continue to come up with a solution for this case when I have more information, but the substance being ingested is a good start.

There is one major lead that I have in this investigation that could potentially provide me with all of the information I need, or a majority of it: the witness’s testimony. Apparently Mr. Baker was joined by a person named Kiara Rodriguez on the day that he died, and she witnessed everything he did up to the moment that he passed. She was also the one who reported the incident. She could be the key to determining just what happened to Mr. Alan Baker.

  

*Date of Audio Recording: 04/18/2020*  
*Interviewer: Operative Lea Harper*  
*Interviewee: Kiara Rodriguez*  
*Subject: The Alan Baker case and Unknown Object 48*

---

**Operative Harper:** Could you state your name for the record?

**Kiara:** Kiara Rodriguez.

**Operative Harper:** And just to confirm: do you consent to this conversation being recorded?

**Kiara:** Yes, I consent.

**Operative Harper:** Alright, thank you so much for taking the time to do this. Your testimony will help us significantly in understanding this new substance.

**Kiara:** It’s no problem; I just don’t want anyone else to have to experience the same thing Alan did.

**Operative Harper:** I completely understand. Now tell me, what happened on the day of the incident? Please spare no detail.

**Kiara:** Well, uh… We were walking on Level 46…

*We'd spent what felt like a few days in the level already and had run out of our Almond Water supply. My stomach growled at me for sustenance, my throat itchy and my back scorched by the sun. Alan wasn't doing any better from what it seemed. He slouched and limped and had sunburns as red as tomatoes. We needed water, food, medicine, anything to help us continue on. We looked and looked for any resources to help, barely keeping ourselves moving forward. As we were about to collapse and accept our fates, Alan tripped over something, and we looked and saw two bottles of Almond Water half-buried in the sand. One of them was notably dented and had a broken seal, while the other was in perfect condition. I wasn't sure if we should take it or not, and offered to leave it while we shared the other bottle. Alan, though a bit reluctant, took the bottle so that I'd be able to fully hydrate.*

*"Relax, a little bit of Almond Water never hurt anyone." He assured me. I wish I'd gone with my instincts, but I thought, "He's right; we need to take whatever we can get."*

*We both sat there for about 15 minutes as we drank our respective bottles, talking about miscellaneous things as we always did. Alan always steered conversations in every way possible, taking twists and turns on crazy-long rants. Not that I minded, anyway. After we both finished off the last of the Almond Water, my energy returning and my sunburns throbbing notably less, we got back up and trudged through the desert. [We searched and searched for some kind of exit or clippable material in the infinite wasteland of sand...](object-48.md)*

**Kiara:** …I carried him the rest of the way through the level. I luckily found a stone door soon enough and got to Level 4, but by then, it was already too late…*<sniff>* I r-really did try everything, I—

**Operative Harper:** It’s okay; you can stop there. You’ve provided more than enough information, and I don’t want to get you too worked up. I encourage you to visit one of our well-being specialists if you need resources or someone to talk to after this. I just have a few questions for you.

**Kiara:** Y-yeah, okay.

**Operative Harper:** What were the specific symptoms that Mr. Baker mentioned experiencing?

**Kiara:** He mostly mentioned heartburn, stomachaches, sore/dry throat, and fatigue.

**Operative Harper:** Mhm… Do you still have the bottle that Mr. Baker drank out of?

**Kiara:** Yeah, it’s in my bag. I didn’t know who to give it to, so I just held onto it.

**Operative Harper:** May I have it, please?

**Kiara:** Yeah, give me a second.

*<The sounds of rummaging can be heard.>*

**Operative Harper:** Thank you so much; this will help a lot. Now, did you notice anything else that was strange about the Almond Water that Mr. Baker drank?

**Kiara:** Yeah, it was weird. I looked in the bottle, and it had this red tint to it. It looked like watered-down fruit punch.

**Operative Harper:** I see… Did you notice a strange smell or consistency?

**Kiara:** No, nothing out of the ordinary almond smell. Was a bit more bitter than usual, though.

**Operative Harper:** And is there anything else that could possibly be related to Mr. Baker's death?

**Kiara:** No, not that I'm aware of.

**Operative Harper:** Alright, that’s all. Thank you again for meeting with me, and feel free to call us if you need anything. Your contributions to this investigation are greatly appreciated.

  

4/18

I was kind of right. This substance is Almond Water-adjacent, but not in the way I originally thought. Cashew Water is officially off the table because, while it holds a lot of similarities to this substance, it doesn't account for the red tint or the acid. Liam was right; this is a new substance. The next course of action I should take is to test the remnants of the substance in this bottle and take note of anything else that is different from regular Almond Water. For the sake of simplicity, I'll be referring to this new substance as Object 48.

Notes:

- It certainly smells more bitter than Almond Water.  
- The bottle is no different from a regular bottle of Almond Water, the only main difference being the seal being broken and a few dents like Kiara mentioned.  
- Upon further testing and inspection of the remaining liquid, albeit minimal in amount, I have found that it is a solute of hydrochloric acid and potassium cyanide.  
- The red tint is pretty prevalent if observing with a light, albeit still unexplained, but it is a good way to differentiate between the substance and regular Almond Water.

  

If we combine all of this information with Kiara's testimony, we get a good idea of what this substance is and a pretty solid basis for the documentation of it. I could only imagine how truly horrific this was to ingest; it sounds like pain liquified.  
  
I actually like the ring of that quite a bit: Liquid Pain.  
  
Regardless, the biggest thing I want to clarify is just how similar Object 48 is to Almond Water, beyond sensory observations. From my findings

today, I have determined that they are very similar chemically yet have wildly different effects. My goal is to determine just how this is possible and what distinguishing factor can be used to explain the red tint and bitterness, which will allow us to avoid future incidents. My plan for finding this is that I will go into the lab tomorrow and conduct a series of tests on the two substances, though it may be tricky to test with how little is left in the bottle of Object 48. I'll check back in with my findings.

  

4/19

I just got back from the lab. There was barely any difference in the tests; nothing worth noting, anyway. I don't understand how this is possible, there has to be some difference other than the color red. It's like they're the same substance.  
  
Oh my god. That's it.  
  
It all makes so much sense now. I haven't found any differences because there *aren't* any . They're just variations of each other. That’s why they’re so chemically similar; they’re just reactants and products.

But I have to prove it. If Almond Water and Liquid Pain are the same substance, there has to be something that causes Almond Water to turn into Liquid Pain, or vice versa. Kiara mentioned that the bottle Alan drank out of was notably damaged and had a broken seal, and that appears to be true, so maybe it’s the conditions of the bottle that cause it?  
I’ve decided to leave out a few bottles of Almond Water overnight: one in good condition, one with a broken seal, one that’s dented, and one that’s both dented and has a broken seal. I’ll write again tomorrow with my findings.

  

4/20

No differences. Not a single spec of red or slightly bitter smell. They are all exactly the same as they were yesterday. I don’t get it. Why won’t it work? What am I missing? Why can’t I find it? I know I’m right, there’s no other explanation, but I can’t prove it for the life of me. There has to be a difference, there has to be some cause, some explanation that I can use to protect everyone. I know there’s something--some sort of pattern--that I’m missing. I’m so close.

Maybe I’m overthinking all of this. Maybe it’s just random or caused by [Liminal Echo](phenomenon-7.md). Yeah, that’s it. It’s just the Backrooms being the Backrooms. Liminal Echo causes the reaction at random and creates Liquid Pain. That sounds right.  
I guess I’m done then. I figured it out: Liquid Pain is the product of Liminal Echo causing a reaction between the two compounds in Almond Water. I was hoping I’d feel more satisfied with myself when this was all over. Oh, I know, I just need to write the article and I’ll feel happier.

  

**Date:** 04/21/2020  
**To:** rkb.puorgrerolpxerojam|htimsaivilo#rkb.puorgrerolpxerojam|htimsaivilo  
**From:** rkb.puorgrerolpxerojam|reprahael#rkb.puorgrerolpxerojam|reprahael  
**Subject:** Object 48/Liquid Pain Article

---

Hello Operative Smith,

I have finished the draft of the article about Object 48, nicknamed "Liquid Pain" for its deadly nature and violent effects. I would like to get this posted as soon as possible, so I would appreciate it if you responded as soon as you can.

Thanks,

Lea Harper  
M.E.G. Operative

[http://backrooms-sandbox-2.wikidot.com/object-48](http://backrooms-wiki.wikidot.com/object-48/offset/1)

  

**Date:** 04/23/2020  
**To:** rkb.puorgrerolpxerojam|reprahael#rkb.puorgrerolpxerojam|reprahael  
**From:** rkb.puorgrerolpxerojam|htimsaivilo#rkb.puorgrerolpxerojam|htimsaivilo  
**Subject:** Re: Object 48/Liquid Pain Article

---

Hello Operative Harper,

Looks good. Go ahead and post it to the database.

Olivia Smith  
Department C Head Operative

  

5/3

No, this is wrong. There has to be more than this. There has to be something more gratifying, something scientific that explains all of this. It can’t just be random, it can’t. I know there’s something that I’m missing, something that I can use to prevent this from happening ever again. I need to find it.

  

**Date:** 05/01/2020  
**To:** rkb.puorgrerolpxerojam|reprahael#rkb.puorgrerolpxerojam|reprahael  
**From:** rkb.puorgrerolpxerojam|htimsaivilo#rkb.puorgrerolpxerojam|htimsaivilo  
**Subject:** Re: Object 48/Liquid Pain Article

---

Hello Operative Harper,

I gave you the go-ahead to post the Object 48 article a few days ago, yet I have not seen it on the database. When do you plan on uploading it? I'm eagerly awaiting your response.

Best wishes,

Olivia Smith  
M.E.G. Head Operator C

  

**Date:** 05/05/2020  
**To:** rkb.puorgrerolpxerojam|reprahael#rkb.puorgrerolpxerojam|reprahael  
**From:** rkb.puorgrerolpxerojam|htimsaivilo#rkb.puorgrerolpxerojam|htimsaivilo  
**Subject:** Re: Object 48/Liquid Pain Article

---

Hello Operative Harper,

It has been a week and I haven’t heard from you. Please respond to my calls and/or emails ASAP to let me know that you are okay. Your silence has concerned me and the rest of the operative team.

I hope you are alright.

Olivia Smith  
M.E.G. Head Operator C

  
  
  
  

![logo.svg](http://backrooms-wiki.wdfiles.com/local--files/component%3Atheme/logo.svg)  
  

# MISSING PERSON

### LEA HARPER

  
![Headshot](https://backrooms-wiki.wdfiles.com/local--files/fragment%3Aobject-48-0/Headshot)

**GENDER:** F  
**AGE:** 34  
**DESCRIPTION:** BLOND, BLUE EYES, FAIR SKIN, FRECKLES  
**LAST WEARING:** WHITE TOP, BLUE JEANS  
**LAST SEEN:** M.E.G. BASE GAMMA

PLEASE CALL 312-555-4208 IF FOUND.

  

# HIDDEN FILE FOUND

## Open file?

### [Yes](http://backrooms-wiki.wikidot.com/object-48/offset/2)

### [No](start.md)

---

« [Object 47](object-47.md) | Object 48 | [Object 49](object-49.md) »

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Object 48 - "Liquid Pain"](object-48.md)" by ReyDay, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/object-48](object-48.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/object-48">Object 48 - "Liquid Pain"</a>" by ReyDay, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/object-48">https://backrooms-wiki.wikidot.com/object-48</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** Liquid Pain Logo  
> **Author:**   
> **License:** CC BY-SA 3.0

> **Name:** Death Form  
> **Author:** Michigan Public Health Institute,   
> **License:** Used without permission or license; will be replaced.

> **Name:** Autopsy  
> **Author:**   
> **License:** CC BY-SA 3.0

> **Name:** Red and blue liquids inside graduated test tubes  
> **Author:** horiavarlan  
> **License:** [CC BY-SA 2.0](https://creativecommons.org/licenses/by/2.0/deed.en)  
> **Source Link:** <https://www.flickr.com/photos/horiavarlan/4273224901>

> **Name:** Sketchy Looking Right  
> **Author:** DualD FlipFlop  
> **License:** [CC BY-SA 2.0](https://creativecommons.org/licenses/by/2.0/deed.en)  
> **Source Link:** <https://www.flickr.com/photos/duald/7156763780/in/album-72157628435748183>  
> **Additional Notes:** This image has been cropped.

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/object-48](https://backrooms-wiki.wikidot.com/object-48)
