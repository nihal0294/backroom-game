---
title: "Knocking On Heaven's Door"
source: "https://backrooms-wiki.wikidot.com/knocking-on-heaven-s-door"
retrieved_at: "2026-08-23T23:34:51+00:00"
license: CC-BY-SA-3.0
---

# Knocking On Heaven's Door

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

rating: +25[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  
⚠️ Content Warnings ⤴

Info

**Content warning: Mentions of death.**

Written by . ([Author page](yesrooms.md))  
Had this idea lying around in the back of my head for like 7 months, so decided to finally write it on a random Thursday. Yes.

[Entity 246](entity-246.md) by

Thank you to the following:  
Critiques: , Anonymous User, , , .  
Greenlit by: .

[Close](index.md)

{$title}Languages:

  
[![flag-saudi-arabia2x.png](https://cdn3.iconfinder.com/data/icons/142-mini-country-flags-16x16px/32/flag-saudi-arabia2x.png)](knocking-on-heaven-s-door.md)  
[![china](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/china)](knocking-on-heaven-s-door.md)  
[![flag-germany2x.png](https://cdn3.iconfinder.com/data/icons/142-mini-country-flags-16x16px/32/flag-germany2x.png)](knocking-on-heaven-s-door.md)  
[![uk](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/uk)](knocking-on-heaven-s-door.md)  
[![spain](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/spain)](knocking-on-heaven-s-door.md)  
[![france](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/france)](knocking-on-heaven-s-door.md)  
[![indonesia](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/indonesia)](knocking-on-heaven-s-door.md)  
[![italy](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/italy)](knocking-on-heaven-s-door.md)  
[![KO](http://backrooms-wiki.wikidot.com/local--files/component:translations/KO)](knocking-on-heaven-s-door.md)  
[![poland](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/poland)](knocking-on-heaven-s-door.md)  
[![portugal](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/portugal)](knocking-on-heaven-s-door.md)  
[![russia](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/russia)](knocking-on-heaven-s-door.md)  
[![thai](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/thai)](knocking-on-heaven-s-door.md)  
[![toki](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/toki)](knocking-on-heaven-s-door.md)  
[![vietnam](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/vietnam)](knocking-on-heaven-s-door.md)

![A waiting room with tables and chairs. On the table contains corrupted all-white books and one black file.](http://backrooms-wiki.wikidot.com/local--files/knocking-on-heaven-s-door/Waiting%20room)

[Welcome.](entity-246.md)

Welcome… I guess? You should find a chair to sit on. I’ve tried standing here for a while, but it just felt awkward, and I got tired. The pretty wo- receptionist. Yeah, that's the word. The receptionist told me to wait here and to pass on the message should anyone appear. I’ve been waiting here for months, so I’m guessing it’ll take a while.

Oh *god.*

  
  
  
  
Yeah, I had the same reaction… It was relieving, I’d say? It feels… calming. I don’t remember anything, though. It was like waking up from a really good nap. My brain felt so scrambled. Don’t worry, it’ll settle down quickly. I just hope we can get out of here soon.  
  
  
  
Ah, I’m Andrew, by the way. Nice to meet you.  
  
  
  

I’m… Justin. Do y-

  
  
  
  
Huh… Justin. Sorry to interrupt, but that seems to do something to my head, but it’s not like I can remember much.  
I can still speak, and I know what ketchup is, but like, my experiences are gone.  
Not that it matters here.  
Anyway, there are tissues there and some magazines on the table. Feel free to do whatever.  
You can't turn off the lantern, though. It's oddly bright. That's saddening indeed.  
  
  
  
  

…  
  
  
… Do you not remember anything at all?

  
  
  
  
No, but as I mentioned before, it doesn’t feel like it matters much to me anymore.  
I feel kind of carefree?  
Unless we were lovers or something, but I don’t feel any attraction to you, so I doubt so.  
Take a seat, you're just standing there gawking at me. That's weird.  
  
  
  

Don't mind me then I'll sit uhh… here then.

  
  
  
  
Directly opposite me? Now it *really* feels like an interview.  
  
  
  

Hm, well, there aren't many options to sit in a comfortable conversing spot when you're sat in the corner of the room.

  
  
  
  
Touché.  
  
  
  

So, what do you like?

  
  
  
  
For this to be all over, I guess. I've been here for months.  
  
  
…  
  
  
I think.  
The room is boring.  
It has not changed once. I've just been here; existing.  
Until you came along, so that's cool I guess.  
  
  
  

Months? That seems terribly inefficient.  
How long do you think they're planning to make you wait?

  
  
  
  
I don't know. Maybe there's some deeper meaning, but right now, all I've ever known is to wait.  
I'm just killing time because time refuses to kill me.  
  
  
  

That's deep… and we're also kinda already killed. But I get what you're trying to say.  
Do you ever get tired of it?

  
  
  
  
Tired of what?  
  
  
  

Waiting. Sitting. Not knowing.

  
  
  
  
Not really.  
I think if I was tired, I’d know why.  
It’s easier when there’s nothing to miss.  
  
  
  

That doesn’t bother you?

  
  
  
  
I don’t know what I’d compare it to.  
Feels… neutral.  
Like background noise you stop hearing.  
  
  
  

What about knowing the reason for all this waiting?

  
  
  
  
I think I stopped caring about the purpose somewhere along the way.  
I just want to know why now.  
Why let me wait if there was no end to it?  
That just feels cruel and pointless.  
  
  
  

Then what did you do to keep yourself entertained? It seems mindless here.

  
  
  
  
I just sat. And waited.  
Then I started reading a while back, I don't remember how long exactly, those books over there are quite nice.  
Amazing, really. It seems almost suited towards me.  
  
  
  

But they’re… white?  
Completely white.  
You see them too, right?

  
  
  
  
White? Yeah? Paper is white.  
It’d be a terrible waste to ink the whole page to have white words as cool as that’d be.  
  
  
  

No, it’s completely blank.

  
  
  
  
Huh. That’s weird. They’re solid black to me.  
Like someone went over them with a marker. Guess I’ll leave them alone.  
  
  
  

…  
  
  
… How are you reading that?

  
  
  
  
Because it’s just a book? Just because I don’t remember anything doesn’t mean I can’t read.  
There’s pictures in here too, man.  
  
  
  

No, it’s… white and weird an- ah, forget it. Never mind.

  
  
  
  
Hahahaha! Oh man, look at this photo of the otter. It just looks so funny making this "bwahh" face.  
  
  
  

Yeah… that's hilarious.

  
  
  
  
Well, that was a fantastic experience. Did you know that owls can turn their heads 270 degrees?  
Man, I love NatGeo. Why were you just staring at me, though? That’s creepy man…  
  
  
  

H-how was it?

  
  
  
  
Great! But it’s kind of hard to actually enjoy reading about crabs moulting when you’re just staring at me, and you look like you’re choking.  
  
  
  

Ju-j…just continue reading…

  
  
  
  
That’s… the plan. Are you sure you’re okay, man?  
  
  
  

I… it’s nice to have a calm break without any stress.  
Usually, moments like these are the calm before the storm. It’s nice to finally talk like this without…  
  
Without anything. At all…

  
  
  
  
You sound like you’re trying to convince yourself that you’re okay, more than me. You sure it was okay?  
  
  
  

Yes.  
  
  
Yes it was. And it was beautiful.

  
  
  
  
Sounds like a biologist’s experience. I’d like to try that some day.  
  
  
  

We… yeah, we could. I was, and… it was horrifying.

  
  
  
  
Oh. Well, maybe I’ll reconsider. What about exploration? Lemme see this.  
  
  
  

Wait. I can see that magazine.

  
  
  
  
Yeah?  
  
  
  

It’s not white.

  
  
  
  
Yeah, NatGeo has a signature yellow.  
  
  
  

Hmph… neat. That didn’t look like that before. It uhh, looks wrong to me. Like…

  
  
  
  
Like?  
  
  
  

Like… a curtain revealing what's behind. Like uhhh… never mind. So, do you like NatGeo?

  
  
  
  
I think that might have been my favourite. Why don’t you read some books? You seem to be more interested in the black ones there than I am. I've finished quite a few magazines already. Oooo, Machu Picchu. 400 years older than Oxfo- Are you okay?  
  
  
  

…

  
  
  
  
Woah, fuck! Are you crying? Wait a second I'll find the lad-  
  
  
  

Fuck… Fuck. I wished we never [went camping that day](the-beginning-of-the-m-e-g.md).  
How would life have been?

  
  
  
  
What?  
  
  
  

Fuck…

  
  
  
  
You alright? There's tissues there, I can get it if you want me to.  
  
  
  

Nah, it's alright. I… I, uh, guess I never pictured you ever liking home decor.

  
  
  
  
Yeah, no shit, right?  
  
  
  

Yeah…

  
  
  
  
…  
  
  
  

…

  
  
  
  
Dude, is there something you want to tell me?  
You've been acting weird since you've stepped foot in here. And that's coming from the amnesiac.  
Like, you were just shifting in your chair and avoiding eye contact with me. That's textbook  
"I'm hiding something from you".  
I'm worn out and I'd rather just know than sit in suspense.  
  
  
  

…

  
  
  
  
Anything?  
  
  
  

…

  
  
  
  
At all?  
  
  
  

We… we were brothers… in the truest sense. We, alongside Kat, saved millions in the Backrooms.  
And it was hard. You've never smiled. This was the first time you've seemed so free…

  
  
  
  
Then what happened to Kat?  
  
  
  

We're both dead. I died attempting to retrieve your corpse. Funny how you seem most alive when you're dea-

  
  
  
  
Funny?  
  
  
  

In the ironic sense. That was in the past. You were always so serious and…

  
  
  
  
*And?*  
  
  
  

Are you okay?

  
  
  
  
Are *you* okay? We were saving people. Was I supposed to smile while doing it?  
If what you said was true, tell me.  
Was I supposed to be happy at the sight of death, injury, and more death?  
You say that me being serious is an insult when you…  
It doesn't seem like you cared about *any* of them at all.  
  
  
  

…

  
  
  
  
You knew who *I* was… and *you* decided I didn’t deserve to know. We could have done more good.  
  
  
  

I was protecting you.

  
  
  
  
Protecting me? You chose to withhold the truth from me and deemed it as protecting?  
You decided which version of myself deserved to exist.  
  
  
  

We *are* dead. Okay? Gone. There's no going back. You were belittling us during the rescue effort.  
Saying we abandoned you. And how did that end? With me dying too.  
You were pushing us away while you were gone… and now you're doing it again.  
I don't fault you for anything, and I'm not putting this on you but…  
What good is there left? What good *can* you do? What good… can you *still* do?

  
  
  
  
Fuck you. I'm finding a way out of here. There must be one. There *always* is.  
  
  
  

No, Andrew… stay here. Don't go.

  
  
  
  
Isn’t that what we promised? To find a way out no matter what?  
  
  
  

Andrew…

  
  
  
  
Fuck you.  
  
  
  
  
  
  
  
  
  
  
  
  

**[Entity 246](entity-246.md)**, formerly 29-year-old Andrew Donovan, is a corpse that has be

---

rating: +25[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Knocking On Heaven's Door](knocking-on-heaven-s-door.md)" by Yesserning, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/knocking-on-heaven-s-door](knocking-on-heaven-s-door.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/knocking-on-heaven-s-door">Knocking On Heaven's Door</a>" by Yesserning, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/knocking-on-heaven-s-door">https://backrooms-wiki.wikidot.com/knocking-on-heaven-s-door</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Filename:** Waiting room  
> **Name:** Waiting room  
> **Author:** [East Midtown](https://www.flickr.com/people/115079893@N05)  
> **License:** CC BY-SA 2.0  
> **Source Link:** [<https://commons.wikimedia.org/wiki/File%3AWaiting_room_(13877682754).jpg>]  
> **Additional Notes:** Edited by

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/knocking-on-heaven-s-door](https://backrooms-wiki.wikidot.com/knocking-on-heaven-s-door)
