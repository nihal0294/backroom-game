---
title: "Vultures In The Paper Oasis"
source: "https://backrooms-wiki.wikidot.com/vultures-in-the-paper-oasis"
retrieved_at: "2026-08-23T23:36:25+00:00"
license: CC-BY-SA-3.0
---

# Vultures In The Paper Oasis

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

Then let me in. Don't let me be "just a voice" anymore. Let me be more than that. Let me be there to spoil you as much as you want.

rating: +69[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  
⚠️ Content Warnings ⤴

Info

**Content warning: Mentions and depictions of abuse, trauma, self-harm, and suicide (not explicitly shown). Please read with caution.**

*The div blocks in the climax that covers the text are draggable. Drag them aside to reveal what they say. The scale is quite broken on mobile but still functions. You can also hover your cursor/tap the blurry text to see what they say.*

Written by . ([Author page](yesrooms.md))  
Thank you to the following:  
Css tomfoolery: , , ,   
Critiques:, , , , , ,

[Close](index.md)

{$title}Languages:

  
[![flag-saudi-arabia2x.png](https://cdn3.iconfinder.com/data/icons/142-mini-country-flags-16x16px/32/flag-saudi-arabia2x.png)](vultures-in-the-paper-oasis.md)  
[![china](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/china)](vultures-in-the-paper-oasis.md)  
[![flag-germany2x.png](https://cdn3.iconfinder.com/data/icons/142-mini-country-flags-16x16px/32/flag-germany2x.png)](vultures-in-the-paper-oasis.md)  
[![uk](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/uk)](vultures-in-the-paper-oasis.md)  
[![spain](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/spain)](vultures-in-the-paper-oasis.md)  
[![france](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/france)](vultures-in-the-paper-oasis.md)  
[![indonesia](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/indonesia)](vultures-in-the-paper-oasis.md)  
[![italy](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/italy)](vultures-in-the-paper-oasis.md)  
[![KO](http://backrooms-wiki.wikidot.com/local--files/component:translations/KO)](vultures-in-the-paper-oasis.md)  
[![poland](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/poland)](vultures-in-the-paper-oasis.md)  
[![portugal](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/portugal)](vultures-in-the-paper-oasis.md)  
[![russia](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/russia)](vultures-in-the-paper-oasis.md)  
[![thai](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/thai)](vultures-in-the-paper-oasis.md)  
[![toki](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/toki)](vultures-in-the-paper-oasis.md)  
[![vietnam](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/vietnam)](vultures-in-the-paper-oasis.md)

The door shut behind me.  
Hard, but not a slam.  
A decision made of its own accord.

Darkness.  
Silence.

I turned.  
No handle, just wall.  
I clawed away, to no avail.

Then, out of nowhere, paper stirred the still air.  
Yellowed pages, brittle and thin, spun like dying leaves.  
Dancing across the room in a dreadful manner.

They didn’t fall.  
They lingered.  
Circling me like vultures.

Mocking.  
Taunting.

They danced upon the melancholy ballad.  
I reject the dinner invitation with the hotline.  
Not again. Not this time.

Watching.  
Waiting.

Like memory itself knew I’d try to forget.  
Like memory itself was daring me to remember.

**21st February**  
I got a journal to write my thoughts. Hayley told me it would help me feel better.  
I’ve got a lot on my mind, but I'm too lazy to unpack right now, and guests are coming over in five, so I’ll write when something happens.

Hey, guess what! Something happened. God, she's speaking about me like I can’t hear her. I can. And she knows. She fucking knows, okay? She’s telling everyone that I’m fucking hopeless and there’s no future for me. I don’t study, and my grades are consistent Bs. I get an A for Nursing consistently and that’s not acknowledged. Apparently it's a "useless" subject that requires zero thinking power. I bet she can’t even do any of the questions. This isn’t even the first time I’ve told her to stop. Why?

---

**22nd February**  
After hearing about how those stupid friends of hers have children being valedictorians valadictorians valedictorians and all this, she's now giving me some talk about how I need to be better so I won't be an embarrassment to her. She slapped me for even *trying* to explain myself. Is that all I am? Some sort of trophy for her to flex? I guess birds of a feather really do flock together.

She just gave me some stupid-ass talk about my future and whatnot. Apparently pursuing my dreams isn't "viable" given my grades and that nursing is "not a true career," and that I should aim to be a doctor, as they're of higher importance. One, that's stereotypical, and two, that's a stupid take. Why does she have to keep putting my dreams down?

---

**24 February**  
Didn't write anything yesterday; had too much work to even interact with her. Thank God. I have more fun doing accounting work than talking to her, and that's saying something. Anyway, tomorrow I get to go out with Hayley! This will be our first time meeting in person ever since we separated schools. Her mom's bringing us to Knott's Berry Farm.

I've been wanting to go there for a while because I heard they've got banger rides, and I'm excited to ride on that one water-log thing, especially because it's with her. Apparently that place started because of good fried chicken sales or something. Why won't *my* mom bring me to such places?

---

Hm, I guess she does provide a roof, and she does bring me out sometimes. I just wish she would treat me well all the time rather than only during those scarce, happy moments. I could run away, but the last time I did, I was told to stop wasting the officer's and my mom's time. If I run away again, they’ll just send me back home. They always do. It's not like I can *truly* hate her either. She's my mother. Maybe I should stop thinking about these things and let the planet keep spinning.

**25 February**  
Today was an absolute **blast**. Being with her made me feel like we were kids again, sitting beside each other, cracking jokes and all that. Not to mention she's my best friend. I guess she's right; writing in here makes me feel some sort of warmth about her. I miss her. I hope we can go out again. But today was definitely unforgettable. I got to bring home the picture of us at the log-wood thing, so that was fun. Glad to have that checked off my bucket list. I guess I'll put some pictures here.

---

![The entrance of the amusement park called Knott's Berry Farm](http://backrooms-wiki.wikidot.com/local--files/vultures-in-the-paper-oasis/Knott's%20Berry%20Farm%20Entrance)

We've reached!

  

![A roller coaster called Hangtime.](http://backrooms-wiki.wikidot.com/local--files/vultures-in-the-paper-oasis/hangtime)

Hangtime! Didn't go on it though; the queue was too long.

---

![A timber log ride's finale.](http://backrooms-wiki.wikidot.com/local--files/vultures-in-the-paper-oasis/The%20Timber%20Mountain%20Log%20Ride%20features%20a%2042%20ft%20drop%20finale)

**The Drop.**

---

![A berry pie](http://backrooms-wiki.wikidot.com/local--files/vultures-in-the-paper-oasis/Mrs.%20Knott's%20Chicken%20Dinner%20Restaurant%20Pie)

Berry pie for dessert. Yummers.

Sadly, no chicken dinner. The rides were memorable, and I think the pie was slightly too sweet but still enjoyable. Best day ever. It's like a scrapbook now, lol.

---

**26 February**  
So yesterday was so fun that Hayley's mom is inviting me to go out more witheir with their family! They get to go to parks while I only get to pick up groceries for her. At least it's fun. God, I'm so jealous of Hayley. Her mom treats me like one of her own. Plus, she makes *amazing* mac 'n cheese. Glorious stuff, really.

Update: We're going hiking in Angeles National Forest next week! I'm a big fan of birdwatching, and I'm pretty sure I've nerded out all about birds to Hayley, and it found its way to her mom. Apparently, they've got Green-tailed Towhees there, according to eBird. Best website ever, by the way.

---

# @ **Hxley♡** | AKA Hayley, Cheesemaster, Hamantha

**dawn**  2/5/2016, 21:16 PM  
@Hxley♡

**Hxley♡**  2/5/2016, 21:18 PM  
Yeah?

**dawn**  2/5/2016, 21:19 PM  
So uh  
Mim said I can't go tomorrow  
\*mom

**Hxley♡**  2/5/2016, 21:19 PM  
What? Didnt she agree to let u go like, a whole week ago?  
and aint it like, a bit late to cancel? It's 9pm on the day before the trip

**dawn**  2/5/2016, 21:19 PM  
Yeahhhhh about thatttt  
She suddenly decided that I've been going out too much and that I need to study more

**Hxley♡**  2/5/2016, 21:19 PM  
Didnt ur midterms go quite well? And havent u only been out once, that being with us to the berry farm amusement park?

**dawn**  2/5/2016, 21:19 PM  
Not well enough for her, and yeah

**Hxley♡**  2/5/2016, 21:19 PM  
So how? Could u have a talk with her?

**dawn**  2/5/2016, 21:20 PM  
No point. Sorry to waste your time, enjoy your trip

---

**7 March**  
Mom's yelling at me again. Threatened to pour boiling water on me if I don't stop "fooling around". She always makes these threats. She's always comparing me to Hayley even though she blows off assignments all willy-nilly. Worse still, when I called Hayley and told her about it, she laughed it off. Said all moms were like that. She doesn't get it. Her mom's really, really nice. On the bright side, I saw a few colorful birds today. Didn't get to snap a photo though, flew away when I got my camera.

**8 March**  
Apparently it's International Women's Day today, and Mom made a huge fuss that I didn't wish her. Like I'm not a woman either. Maybe she doesn't even see me as a person anymore. Said something about "respect" or something, but I'd rather just go into my room. I did some neat sketches of the birds I saw yesterday; apparently they're called "Allen's hummingbird". There's something so comforting about its colors. Shame there isn't blue, my *true* comfort color. Who even is Allen, and how dare he get to these beauties before me?

---

# @ **Hxley♡** | AKA Hayley, Cheesemaster, Hamantha

**Hxley♡**  3/9/2016, 10:28 AM  
Yo  
@dawn

**dawn**  3/9/2016, 10:30 AM  
Sup

**Hxley♡**  3/9/2016, 10:31 AM  
Wanna go to a waterpark or something? The birth giver's offering😛😛😛

**dawn**  3/9/2016, 10:31 AM  
BETTTT. I'll ask. Will tell yuh how it goes

---

**9 March**  
Oh great. Now Mom wants me to cut contact with my best friend of eleven years because her grades ain't as "good" as mine. I only said I scored higher, not by how much. She's now a "bad influence" for "wanting to go out all of the time". Something-something about modesty and dignity and a woman's role—all that misogynistic shit is all I'm hearing. Also, I'm grounded for even daring to ask. How nice.

It is so hard to call Hayley now since Mom's just looming over my room always. Wishing I could get some privacy, huh, mom? Don't you have anything better to do? Wishing I could say that out loud too. I think she knows I'm disobeying her instructions, but oh well, what can I say? I'm a girl's girl. At least she hasn't found out about Discord… yet. Maybe. Hopefully not.

---

**10 March**  
I think she caught me calling Hayley, but I hope she didn't hear what I said. I was complaining about her and said something 'bout what she's been saying, but Hayley asked how come I don't just leave. Well, yeah, I guess that's a valid question, and I'm wondering that too. I think part of me still sees her as my mom through and through, you know. She may treat me like some puppet, but she's *still* my mom. Hm. She brings up a good point, though, but it's not like I have the funds to do so…

**11 March**  
Woke up today, and the lock on my door is gone! Yayy, hooray for privacy. Yeah, then she gave me some talk about how she’s "the boss of the house" and "It is your choice whether you want this family to be a thing". Then she got mad when I used the word "trigger" to describe how I felt, and she said she doesn't like that word and it "triggers her."

---

Is she a child or what? Does she not get that her acting like this is exactly why I don't want to respect her? Respect is a mutual thing, not just earned. Since I don't "respect" her, she doesn't have to respect me; that includes my privacy, it seems. Wow. This is how you get a one-way trip to the old folks home. It's fine, calm down. I can still draw my birds, so I guess this isn't a total loss? Hmph.

Should I tell Hayley? I don't want to trouble her, we just met up after all this time. She's all that I have for now. I don't have many friends in school. I just wish I had someone I could be my true self with and they'd love me for who I was, no matter the circumstances. One can only hope for their Prince Charming. Or would it be knight in shining armor? Huh.

---

**14 March**  
My sketchbook is actually growing; it looks really awesome now. I love the little annotations and highlights I made. Maybe I can pursue something related to zookeeping in the future? Maybe a vet?

**15 March**  
I hate her so much. Why the hell did she have me if she didn't want me? The bruises hurt so much. It all hurts. I'd rather drop dead than continue interacting with her. I want to tell this to someone, but my throat closes up every time I try to explain. Like something’s choking me. I'm scared they'll think I'm lying. Worse still, what if she finds out?

---

# @ **Hxley♡** | AKA Hayley, Cheesemaster, Hamantha

**dawn**  3/15/2016, 11:18 PM  
please call me

**Hxley♡**  3/9/2016, 11:20 PM  
Dawn? U ok?

**dawn**  3/15/2016, 11:20 PM  
call

🕻   dawn started a call that lasted 3 minutes. — 3/15/2016 11:20

---

### Call log

---

*[Hyperventilation from Dawn's end with choked sobs.]*

**Hxley♡**: Oh God, are you okay?

**dawn**: Which part of me sounds okay?

**Hxley♡**: What happened?

**dawn**: The sketchbook… I showed it to her when she said I have no future, no passion, and no *care*. Said that was my passion. I wanted to become a vet. And she… she tore it all up, all twenty-something pages. I didn't even take a single picture of any of the pages. Gone, all gone. She said this isn't something I should pursue; it'll just get my hands dirty, and then no one would want to date me and give her her grandchildren. If my looks are only subpar, then the rest of me has to make up for it, and she called everything I did worthless. Sh-she said all of that was just a waste of time, then tore it up in my face before slapping me. My face still stings. Then she just sent me back into my room and told me to study.

*[A long, silent pause, with the occasional nose snuffling.]*

**Hxley♡**: Oh… I, uh, *Jesus*, I don't know what to say. I’m so sorry. That’s… that’s not okay. None of that is okay. I’m here, okay? You’re not alone. Do you want me to call anyone?

**dawn**: No. I hate it here. But I still love her. She's my mum no matter what. But I fucking wish she wasn't like this. She said this is her form of love. But it hurts. It hurts a lot. It makes me feel as if… I wished I was never bor-  shit. Shit, shit, shit. DAWN? WHO ARE YOU TALKING TO? DO YOU KNOW HOW MUCH I SACRIFICED FOR YOU? *THIS* IS HOW YOU REPAY ME? BY WASTING MY TIME AND HARD-EARNED MONEY? I TOLD YOU THAT YOU COULDN'T TELL ANYBODY OR ELSE. COME HERE AND FIND OUT WHAT I MEANT. PLAY STUPID GAMES, WIN STUPID PRIZES.

**Hxley♡**: Dawn?

**dawn**: I DIDN'T SAY YOU COUL- COME HERE. Mom, please don't hit me, please… I'm beggin-

---

### End of log

---

**16 March**  
Not much motivation to write or even do anything anymore. It's too painful; my arm hurts from all the beatings. My arm is still burned from the scalding water. The bandage itches. It doesn't look like me in the mirror. Half my arm is covered. I don't want to burden Hayley much. I know she cares about me. Where else can I go? My phone's gone, and I have no money. At least she still gives me food…

**17 March**  
She brought me out for my favorite lunch today; this burrito joint down the street. She never brings me there but said that I ought to enjoy myself. Why is she being so nice? We had a good chat, and she didn't scream at me for once. I don't know anymore.

---

**19 March**  
She told everyone I spilled boiling hot tea on myself. Not that it was her. On *purpose.* Now she's asking me to come over so that they can make me a laughingstock. Great. I can't do this anymore. I think I'm just gonna igno

---

No, no, no, not that, *please.*

"Oh, so *THIS* is what you think of me? Someone who just nags and nags and nags, right? Is that so?"

"Why would I stop reading? It's only getting interesting, right. I did everything for you, and you want to repay your debt like this? I let you go out with Hayley, and it's the only positive thing written here? Nothing about your dearest mom?"

Mom, I wrote that we had a nice chat, you were ni- you *are* nic-  
"You also wrote that you'd rather drop dead than continue interacting with me. Go on, then. Do it. It'll make life easier for the both of us anyway, right?"

"No, don't cry. You did this to yourself. I should be the one crying. What about *my* mental state? My parents treated me tenfold of my "abuse" towards you. You should be grateful for how I take care of you. I had nothing growing up, and I turned their rags into my riches. Oh wait, nothing about me matters, right? Because it's always about you. All you wrote about was how *meaningless* I am. You're the protagonist. You're the main character. Jump."

Mom, please, sto-  
"JUMP. I said jump. Don't make me shout. Jump, you coward. Good riddance, please jump. Jump to make both our lives stress-free. Please God, *please* strike this ungrateful brat down. I don't see her anymore. That's not my daughter, that's a demon. A demon. God, answer my prayers, please."

**19 March**  
She told everyone I spilled boiling hot tea on myself. Not that it was her. On *purpose.* Now she's asking me to come over so that they can make me a laughingstock. Great. I can't do this anymore. I think I'm just gonna igno

If you find this, Im sorry, Hayley. I wish we could have bonded more, especially since our time spent together was so short. But you were my best friend till the end. I dont regret a single moment spent with you, and every second is playing through right now. I didnt want to burden you with all this. Im so sorry. I hope you live a long and healthy and prosperous and love-filled life.

![New%20York%20architecture](http://backrooms-wiki.wikidot.com/local--files/vultures-in-the-paper-oasis/New%20York%20architecture)

---

I'm… back in this room? Why? I thought I’d left these thoughts behind. Why now — why these memories? Not again, please. Don’t make me hear them again. Especially… that. My attempt. That was a decade ago. I’ve moved on. I have. Please, just take it away. I don’t want to hear them. I don’t want to see them.

"Honey? Are you okay? Hayleigh fell asleep waiting outside; thank the Heavens you're okay. You’re barely two months postpartum — you need to take it easy, okay? Cut yourself some slack. Come on, let's just go ho-"  
  
*He leans in for a hug.*  
  
"If this is about your past, I promised I wouldn't ask, remember? No matter who you are, I still love you. Unless you were some sick psycho child-eating killer that nourishes your nutrients through baby blood. Plus, you've been wonderful to me and our baby, so I doubt you ate children… I hope. Are you even sure this is your first time taking care of a child?"  
  
*He lets out a soft chuckle before patting your head and continuing.*  
  
"My bad, my bad. I forgot I was your 'first' child and that you have to baby me too, right? Just like how we met. I was at the brink of death, and my knight in shining armor showed up. Patched me up, and you really… are an angel, you know. Shit, you’r—sorry—I mean, sorry honey. See? You're already fixing my language around Hayleigh. You're gonna be such a good mom. You're not as bad as you make yourself out to be, Dawn."  
  
"You're rambling again," you mumble, sniffling as you wipe your eyes. "And I wasn't your angel. I'm not an angel. You were just bleeding so badly I couldn't ignore you."  
  
"A true romantic."  
  
"Shut up," you whisper with a weak smile. "You always make everything sound easier than it is."  
  
*You give him a playful smack on his back. You use your hands to brush the tears off.*  
  
"Ha! What do you mean the massive gash on my leg wasn't life-threatening? Please, I was gonna faint. Remember when you patched that up and then lectured me about 'proper first aid technique' for twenty minutes? I knew I was falling for you then. Your 'second' child, Hayleigh, seems particularly fond of you too, so you know it ain't just me who likes you, like you always say. And you *know* toddlers are the embodiment of evil. You're the greatest gift this place has ever given me. Don't let anyone make you think otherwise. Look, if you want me to give you the classic lis—"  
  
"Don’t you dare."  
  
*You give him another smack, harder this time. But he retaliates with a hug. You turn away from him to hide your blush.*  
  
"You're such a dork," you say quietly. "But you’re my dork." You pause. "You really think I’m… a good mom?"  
  
He nods. You meet his eyes.  
  
"Then I’ll try to believe it, too. Just… just be patient with me, okay? I want to be better. For you. For her."  
  
"You're a beautiful person, you know. I find it *really* cute when you go all bird-nerd mode. Come on, let's go. I've prepared some Lucky O' Milk ice cream."  
  
"Wait, what? Lucky O’? You said we were almost out!"  
  
"What? No, I said that there's enough for one; being mine. Sure, we could share, but you can't have any yet, unless you finish your dinner faster than I do. How about this: you tell me alllll about how incredible hummingbirds are on the way back, and I'll *consider* letting you have some."  
  
"Deal. But you're getting the full hummingbird TED talk, just so you know."

**25 August**  
Hayley. I found someone truly dear to me. Someone who wouldn't judge. He didn’t ask why I was crying yesterday — he promised he never would — but he still stayed, held me, waited. He didn’t know why I broke down, but he didn’t need to know to hold me like that. He assured me, maybe there is hope at the end of the dark tunnel. Not just here, but for life.

Maybe someday I’ll tell him. Just… not yet. I won't make the same mistake I made with you. I miss you Hayley. I wonder how are you doing. I got back into drawing and journaling again. It was fun while it lasted but I want to write more positive stories now. The bird drawings will now be photographed though, even if they're unsightly here. [One even unshits itself](entity-40.md). I hope to see you again and to tell you all the wonderful adventures I've had in the last decade.

![A sketch drawn on paper by Dawn depicting the final scene: Dawn in a fetus position while her husband embraces her](http://backrooms-wiki.wikidot.com/local--files/vultures-in-the-paper-oasis/Ending%20photo%20Dawn%20and%20husband)

A new step forward. Together.

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Vultures In The Paper Oasis](vultures-in-the-paper-oasis.md)" by Yesserning, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/vultures-in-the-paper-oasis](vultures-in-the-paper-oasis.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/vultures-in-the-paper-oasis">Vultures In The Paper Oasis</a>" by Yesserning, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/vultures-in-the-paper-oasis">https://backrooms-wiki.wikidot.com/vultures-in-the-paper-oasis</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Filename:** Knott's Berry Farm Entrance  
> **Name:** Knott's Berry Farm Entrance  
> **Author:** METRO96  
> **License:** CC BY-SA 4.0  
> **Source Link:** <https://commons.wikimedia.org/wiki/File:Knott%27s_Merry_Farm_Entrance.jpg>

> **Filename:** The Timber Mountain Log Ride features a 42 ft drop finale  
> **Name:** The Timber Mountain Log Ride features a 42 ft drop finale  
> **Author:** METRO96  
> **License:** CC BY-SA 4.0  
> **Source Link:** <https://commons.wikimedia.org/wiki/File:Timber_Mountain_Log_Ride_20.jpg>

> **Filename:** hangtime  
> **Name:** hangtime  
> **Author:** METRO96  
> **License:** CC BY-SA 4.0  
> **Source Link:** <https://commons.wikimedia.org/wiki/File:Hangtime_18.jpg>

> **Filename:** Mrs. Knott's Chicken Dinner Restaurant Pie  
> **Name:** Mrs. Knott's Chicken Dinner Restaurant  
> **Author:** [jericl cat](https://www.flickr.com/people/79761301@N00/)  
> **License:** Public domain  
> **Source Link:** <https://flic.kr/p/RtEiU2>

> **Filename:** New York architecture  
> **Name:** New York architecture  
> **Author:** [Naberacka](https://www.flickr.com/photos/naberacka/)  
> **License:** [CC BY-SA 2.0](https://creativecommons.org/licenses/by-sa/2.0/)  
> **Source Link:** <https://flic.kr/p/YLY8aj>

> **Filename:** Ending photo Dawn and husband  
> **Name:** Ending photo Dawn and husband  
> **Author:** Gabriel  
> **License:** CC BY-SA 3.0  
> **Source:** <http://backrooms-wiki.wikidot.com/local--files/vultures-in-the-paper-oasis/Ending%20photo%20Dawn%20and%20husband>

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/vultures-in-the-paper-oasis](https://backrooms-wiki.wikidot.com/vultures-in-the-paper-oasis)
