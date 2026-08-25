---
title: "Level 184.1 - \"Daisy Fields\""
source: "https://backrooms-wiki.wikidot.com/level-184-1"
retrieved_at: "2026-08-23T23:34:51+00:00"
license: CC-BY-SA-3.0
---

# Level 184.1 - "Daisy Fields"

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

rating: +26[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  

Info

> **Content warning:** Includes body horror.

Written by , with 's permission.

Special thanks to the following people!

, , , and *MisterNemu* does not match any existing user name for providing critique!

Anonymous User for greenlighting whatever this is! ^^

[Close](index.md)

{$title}Languages:

  
[![flag-saudi-arabia2x.png](https://cdn3.iconfinder.com/data/icons/142-mini-country-flags-16x16px/32/flag-saudi-arabia2x.png)](level-184-1.md)  
[![china](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/china)](level-184-1.md)  
[![flag-germany2x.png](https://cdn3.iconfinder.com/data/icons/142-mini-country-flags-16x16px/32/flag-germany2x.png)](level-184-1.md)  
[![uk](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/uk)](level-184-1.md)  
[![spain](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/spain)](level-184-1.md)  
[![france](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/france)](level-184-1.md)  
[![indonesia](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/indonesia)](level-184-1.md)  
[![italy](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/italy)](level-184-1.md)  
[![KO](http://backrooms-wiki.wikidot.com/local--files/component:translations/KO)](level-184-1.md)  
[![poland](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/poland)](level-184-1.md)  
[![portugal](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/portugal)](level-184-1.md)  
[![russia](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/russia)](level-184-1.md)  
[![thai](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/thai)](level-184-1.md)  
[![toki](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/toki)](level-184-1.md)  
[![vietnam](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/vietnam)](level-184-1.md)

The following interview was conducted with Esther, self-titled "Oracle," a 57-year-old woman who had lived in [Level 184](level-184.md) for most of her life.

# Interview - Voice Log

**Interviewer:** Victor G.  
**Interviewee:** Esther - "Oracle."

---

**Victor:** …Yeah, sorry, we have to record this in case of anything.

**Esther:** No worries. *<Small cough>*

**Victor:** So, let's not chit-chat too much. I heard you wanted to arrange this meeting because you issued that an upcoming disaster would soon destroy this level, am I right?

**Esther:** Good. You have already caught on. Well, look outside the wooden window; do you happen to see the daisies?

**Victor:** Yeah? The ones in your garden? They smelled terrible. I have heard that these flowers were a new type of flora, though it's still unclear how they managed to start growing.

**Esther:** They were always here, but they were underground. The daisies start growing every few hundred years.

**Victor:** But there weren't any found despite the excavation done on Level 184.

**Esther:** I didn't tell you *how* deep they were.

**Victor:** Alright, sure… But can you tell me how this relates to a disaster?

**Esther:** This tale predates the M.E.G. by generations. Whenever the daisies bloomed, it meant something was drifting closer to the wheat fields. I was a child when I heard that story, you see; I don't remember the details, but I know it had something to do with a sun…

**Victor:** There aren't any suns on Level 184.

**Esther:** But soon, there will be; it will burn everyone. My mother told me that the daisies were the remains of our ancestors. That's why they smell bad.

**Victor:** I mean, a literal sun burning everything?

**Esther:** You don't believe me.

**Victor:** You can't blame me; that is hard to believe. Do you have any evidence to support this?

**Esther:** Do I have any proof that an afterlife exists? Some things are not meant to be proven until they happen.

**Victor:** I see. Thank you, miss…

**Esther:** Esther.

**Victor:** Yes, Miss Esther. Thank you.

---

### Additional notes/remarks from interviewee:

I like her personality; she seems like a wise woman. But in no way is an apocalypse going to actually happen on Level 184 out of anywhere for God's sake!

As a safety precaution, a temporary outpost had been settled to record temperatures and other values of Level 10, while also making expeditions. An apocalypse still seems unlikely, despite the sudden changes.

# Day 1 — Team Wheatly — 17/12/25

"Average level temperature became higher by 2°C, and the daisies seem to be spreading to other parts of the level, even the infertile areas with rocks. They also smell terrible. No changes in the wind can be seen, aside from sudden gushes of wind every few hours. It's faint, but noticeable." — Researcher John C.

|  |  |
| --- | --- |
| Grain Fields | Nothing unusual was discovered, which was to be expected. Some of the daisies have been taken to [Base Alpha](base-alpha.md) for further research. |
| Canola fields | This area of the level was researched, as the daisies first started growing in here. No variation in the daisies could be seen, but the smell is way worse in here. |
| Unkempt Plains | It seems the daisies grow on here less often than the others, but several gushes of wind can be more commonly seen on this part of the level. |

> Addendum 1:

Upon further research, the supposed "daisies" have proven to contain an unknown material, resembling dried bone. It is still unclear whether these are bones or humans at all, but research is still ongoing. Despite the sudden temperature changes, an apocalypse is still unlikely. These changes are theorised to be caused by the atmospheric cycle, though the reason for the lack of a source remains unexplained.

> Addendum 1.1:

Due to the increased temperatures, the crops, which were making 39% of the profit, have been put under a giant greenhouse.[1](javascript:;)

# Interview - Video Log

**Interviewer:** Victor G.  
**Interviewee:** Esther - "Oracle."

---

*<UNRELEVANT PARTS OF VIDEO TRANSCRIPT ARE CUT.>*

14:02

<M.E.G. agent *Victor G.* enters *Esther's* house, while the door creaks. *Esther* can be seen occupied in the kitchen, back turned.>

**Esther:** Come on in, dear. Here for another interview? I baked your favorite cookies. Well, I mean, they are almost out of the oven.

**Victor:** How did you know it was me? Also, how do you know which pastry is my favorite?

**Esther:** I suppose you'd believe anything I say. Strange, isn't that?

**Victor:** I- I guess..?

<*Esther* turns around, now facing *Victor.*>

**Esther:** Then why didn't you believe me when I warned you about the apocalypse?

**Victor:** Mostly because there is no proof whatsoever. I *have* been getting reports of increased temperature in Level 10, but that's about it.

**Esther:** What if I told you it happened before?

**Victor:** Well, that would mean that there wouldn't be much vegetation.

**Esther:** Well, the level reverts to its old state after it ends. Every man-made structure collapses, and only the ones that were absorbed to the level remain.

**Victor:** But… shouldn't you be evacuating?

**Esther:** I thought you already understood why the house was empty. This house, thankfully, won't disintegrate like the others. This one, in particular, has stood for a long time.

**Victor:** Alright, sure… But one thing I don't get is why all this will happen.

**Esther:** And, you expect answers?

**Victor:** Why wouldn't I?

**Esther:** Because sometimes, there isn't space for answers; you just gotta survive. Or, at least that's what life in here taught me…

**Victor:** One more thing. How did you know I entered your house?

**Esther:** The same reason my family knew me as the oracle, I can guess the future, or make calculated guesses. Turns out, I have been pretty good at this game.

<A sound of a ding can be heard, likely from the oven.>

**Esther:** My cookies seem to be done. Would you like some, dear? I've baked them just for you.

**Victor:** Yes, thank you.

---

### Additional notes/remarks from interviewee:

I feel as if she knows something. This can't all be just a calculated guess.

# Day 5 — Team Wheatly — 21/12/25

"Average level temperature became higher by 8°C, and the daisies have completely taken over the level, leaving an unpleasant smell. As for the wind, it's a literal storm in here. We need to get out." — Researcher John C.

|  |  |
| --- | --- |
| Grain Fields | By far the least hot part of the level, and the section with the most daisies. |
| Canola fields | Completely the same as the Grain Fields, but hotter, showing a temperature of 2°C higher. The canola seems to be disappearing, and the level seems to be blending with each other. |
| Unkempt Plains | By far the hottest part of the level, racking up to 69°C. Total deadzone. Further research of the section suspended indefinitely. |

  
  
  

—

  
  
  
*It was a day like any other for Overseer B; working, greenlighting drafts, working again… sometimes, she wondered what would've happened if she weren't a boss; going on adventures without having to check her phone every few minutes…*

*Suddenly, as she was reading a draft about an object that wasn't assigned a number yet, a noticeable, but small, backmail appeared in her in-box.*

[YOU HAVE [1] NEW MESSAGE(S)!](javascript:;)

[YOU HAVE [0] NEW MESSAGE(S)!](javascript:;)

  

### Title: Urgent

##### From: VictorUnimaginable1943@meg.org

##### To: OverseerB@meg.org

##### Re: We need to leave.

Our group has been suffering from heatstroke caused by a giant, fiery orb in the sky, which is descending as we speak. Somehow, our crops are still growing, but it seems that we need to evacuate, fast. The wind in here almost caused our base to be destroyed, and I don't think we are going to survive much longer. We are awaiting permission to leave.

Apologies that I couldn't write this in a formal way. We are currently in a life-or-death situation, and we need your help.

- Victor Goldstone.

*After reading the back-mail, Overseer B storms over into Overseer A's beige office after walking for a while, with the door creaking.*  
  
— Hey, Kat. What happened? You would usually call me-  
  
— Justin, this is insane. This is all insane!  
  
— Calm down, and tell me what is insane.  
  
— Level 184! We *have* to evacuate! Something is obviously going to happen, and it will destroy everything! There won't be time to take anything!  
  
— And, right; we're going to ignore all our settlements, and leave behind all the money we've spent? Every crop we've picked? Every supply we've carried there? We aren't leaving just because an old woman said so.  
  
— What about the increasing temperatures?! The daisies?! The literal *sun* descending onto the level?! The M.E.G. workers want *out,* Justin. Everyone *needs* out!  
  
— You're overreacting, Kat. This will all pass, you know. There's data in the M.E.G. files that indicates an anomaly like this had happened before, and passed a few days later with no harm.  
  
— You're underreacting! Most of our agents are having heatstroke! The entirety of *Base Crop Archive* has gotten heatstroke! They're dying, Justin!  
  
*— People die all the time.*  
  
*Silence.*

— Justin… NO! About half of our agents are there, think about it!  
  
— And, about half our debt to the [B.N.T.G.](b-n-t-g.md) are there.  
  
— So, you're choosing to kill them?!

*Silence again.*

— That's it, I'm going to do this myself.  
  
— I will banish you from the M.E.G. if you even think about it. I can also banish whoever tries to get out.  
  
— What?! We're equals. Remember your promise!  
  
— Then, act smart for God's sake! They're fine!  
  
— If they all die, it will all be on you.  
  
— And Andrew. It's two against one.  
  
— The crops won't even matter if everyone's dead-  
  
— Get out.

—

  
  

# Overseer Council Notice

We advise any M.E.G. worker in Level 184 to evacuate **immediately.** The consequences will be heavy if not followed.

![IMG_3130.PNG](https://backrooms-sandbox-2.wdfiles.com/local--files/trailmixncocoa-meg-theme/IMG_3130.PNG)

  
M.E.G.

  
  
  

—

  
  
  
*Set scene.*

A figure sits on top of a bed in a pitch-black bedroom, only illuminated by the bright screen of the phone. They wait for an answer to a call they made.

LOCATION: *TEAM WHEATLY - BASE "CROP ARCHIVE"*

STATUS: PENDING.

  

***Ring! Ring!***

  
The phone rings for nearly a minute, and the figure sits with complete stillness, and silence overtook the room, except for the phone, which was buzzing. They had to pick up. They were their boss, after all.  

***Ring! Ring!***

  
Another minute passes before suddenly stopping, with a "beep" sound.

LOCATION: *TEAM WHEATLY - BASE "CROP ARCHIVE"*

STATUS: CALL TERMINATED. DIAGNOSIS: *TIME OUT.*

No. It couldn't be. It really couldn't be. It couldn't be right.

She got up from the bed, feeling sick to the stomach. The base had already been destroyed, hadn't it? She wept a tear, but quickly brushed it off. Being emotional would be irrational, especially for an overseer.

Rechecking her phone, she looked at the last-minute news; they were full of incident reports about… *Level 184.* Shit. Another tear fell down her cheek; she couldn't take it anymore. Being an overseer meant watching people die, again and again. Without being allowed to stop it. Why hadn't she warned them sooner? Why hadn't she ignored Justin?

The stone heart she carried for years on end had started to feel heavy. It was impossible to ignore all the [lost](a-river.md) [friends.](eden-g.md) It was impossible to unhear the shoutings of widowed women, and enraged men who had lost a friend due to the M.E.G., due to *her.* The M.E.G. killed thousands of people just for the sake of money, not even for an income.

She sighed; she was going to Level 184. But, she couldn't go without a team to research what was actually happening there.

—

  
  

# Unknown Radio Log

3/01/2025  
*All individuals regarding the radio log are anonymous M.E.G. agents.*

---

AGENT 1: Are you there Agent 2?

AGENT 2: Here. What happened?

AGENT 1: I'm… standing at the edge of Level 184. The interdimensional level locator shows that this is "Sub-Section 184.1." Level 184 doesn't have any known sub-sections.

AGENT 2: I know, our team is already researching it. The entire M.E.G.'s focus is on Level 184, since most of their agents are dead.

AGENT 1: I see—

*<A loud thud can be heard.>*

AGENT 1: Holy.

AGENT 2: What happened?

AGENT 1: A… base just exploded. Everything looks like it's melting.

*<Brief pause.>*

AGENT 1: And also, there's something in the air coming closer. It just shot up into the sky-

AGENT 2: Run away! It might be an entity!

AGENT 1: Oh my God, oh my-

*<Another, even louder thud is heard.>*

AGENT 1: Oh no, NO, NO! WHAT THE HELL?! IS THAT A BODY?!

AGENT 2: Calm down, and back away from it just in case.

AGENT 1: I-I need to check something…

*<Another brief pause.>*

AGENT 1: They're alive, but barely breathing. They look so… weird. They're literally smoking…

AGENT 2: What do you mean, *weird?*

AGENT 1: Partially… melted. Their head is…

AGENT 2: … Yeah?

AGENT 1: Nevermind.

AGENT 2: No, no. Do tell.

AGENT 1: … Their head is literally a daisy.

AGENT 2: Wh- what?! I almost spit out my coffee; what do you mean a *daisy?!*

AGENT 1: I'm only telling you what I'm seeing! Their skin is somewhat of a greenish color on some areas too…

AGENT 2: Bring them to the nearest hospital, now!

AGENT 1: … I don't even know if I can even carry the-

AGENT 2: Just do it, for God's sake!

  
  
  

—

  
  
  
*Two figures stand at the far edge of Level 184.1, away from the chaos. Awkward silence ensues until one finally gets the courage to speak.*  
  
— You win.  
  
*She won, but at what cost?*

— Half of our recruits, gone.  
  
— I- I know. It's all my fault. Bravo. I let the entire world down.  
  
— Can you believe it? We were the biggest group in all of the Backrooms, and we ruined it in a mere week. We founded the M.E.G.; keeping it in charge was our responsibility.  
  
— Are you implying that you're going to fire me? We're equal, just so you know.  
  
— No, but I can fire myself. I'm resigning, Justin. It's over. Just find a replacement for me, maybe an underseer, and everything will be fine.  
  
— Kat. You're starting to spew nonsense right now. I admit; I acted shitty, absolutely like an idiot, but that doesn't mean you should quit on the spot! We sadly can't grieve for too long, or else the M.E.G. will fall apart.  
  
— Didn't it already? I'm sick of all this, Justin! Not just this incident! I'm sick of my friends going missing, I'm sick of every worker I've met having a chance of dying, *I'm sick of being a heartless-*

She bursts into tears before she can even finish her sentence. They both sit on top of the grass.  
  
— No. We might have lost the first half, but there is still another half left. We are still the biggest group of interest in Backrooms' history. Focus on what's there, not what's gone.  
  
— That lecture's rich coming from you.  
  
— Fine. You're right. I messed up.  
  
*…*

— Justin.  
  
— What?  
  
— What will happen? I mean, the people will be outraged.  
  
— I already planned us a public apology.  
  
— Do you seriously think a public apology will fix everything?  
  
— It bought us time last time. Besides, it's the only thing we can do if we want to keep this organization.  
  
— You're still acting like I'm going to stay.  
  
— Because you *are.* You have to, to prevent more deaths. You know, there would've been a way higher mortality rate if it weren't for us.  
  
— But do I have to endure every single death and its consequences just for the sake of others' safety?  
  
— That's the thing about being an Overseer. If you can't, nobody will.  
  
— Fine. But I'm only staying here, just for our people. Don't even think that I forgave you for this. I'll commission a draft from the archivists and grab a drink from [The Snackrooms](level-6-1.md). Are you coming?  
  
— Sure. Whatever it takes for me to forget this.

—

  
  
  

- [*Level 184 - "Daisy Fields" - 10/01/2026*](javascript:;)

SURVIVAL DIFFICULTY:

deadzone

- Unsafe, Unsecure.
- Enviromental Hazards.
- Strictly Unhabitable.

**Level 184** is a melting wasteland of daisies.

![A stretch of vast, yellow/green fields.](https://killeroreo52-sandbox.wdfiles.com/local--files/idkwhatthefuckisthisbutiloveit-smh/Beautiful%20Fields)

What remains of [Level 184](level-184.md). Note the lack of buildings.

# **Description**

**Level 184,** The Daisy Fields, formerly known as Field of Forgotten Forts, is an infinite stretch of greenery that is mostly occupied with supposed "daisies." Despite having fertile soil and growing crops, the level has been classified as a deadzone for its unhabitable conditions, such as temperature exceeding normal conditions,[2](javascript:;) and harsh wind conditions.[3](javascript:;) Note that these are all caused by the supposed light source of the level.[4](javascript:;)

### Theories[5](javascript:;)

- According to *Esther,* a 57-year-old woman, the daisies appear with an increase of temperature, which was confirmed by the daisy sent to the lab. The daisy had dissolved into thin air due to decreased temperature.[6](javascript:;)

- In another interview made with Esther, she theorised that the incident happens in cycles, and reverts back to its original state for hundreds of years, before happening again, creating a cycle. This theory stands unproven, and likely will not be proven.

# **Bases, Outposts, and Communities**

No communities or outposts exist because of the nature of the level.

# **Entrances and Exits**

### Entrances[7](javascript:;)

- This level can, albeit rarely, be entered seamlessly through other levels that resemble it, such as Level 10, Level 811, or Level 205.

- There is also a specific entry point in Level 10, by finding a patch of canola among the wheat.

- This level may also be entered through Level 170 by finding an especially degraded concrete structure, walking into it, and turning around. Level 170 will be gone, replaced with Level 184.1.

### Exits

No exits.

---

« [Level 184](level-184.md) | Level 184.1 | [Level 184.2](https://backrooms-wiki.wikidot.com/level-184-2) »

[YOU HAVE [1] NEW MESSAGE(S)!](javascript:;)

[YOU HAVE [0] NEW MESSAGE(S)!](javascript:;)

  

### Title: Urgent

##### From: Agent\_Ruby2113@meg.org

##### To: OverseerB@meg.org

##### Re: Sub-section 184.1

I stumbled across the entrance of Level 184, and…

I think the draft you just released to the database should already be trimmed. Call me as soon as possible.

- Ruby.

- [*Report Log - Level 184(?)*](javascript:;)

> It appears some unfortunate individuals have survived the **Sub-section 184.1** incident, and are classified as "Entity X" until further notice.

##### LEVEL REPORT: 30/01/2026

The deadly phenomenon affecting Level 184 has seemed to disappear without a trace, and has "reverted" back to its original state, now with all man-made structures being completely destroyed. The exact origin of this phenomenon, and the reason all this has happened, remains an *enigma.*

Several survivors have been spotted in quite a bizarre condition. It seems that the "sun" -that descended onto Level 184- mutated most people who came into contact with it.  
Listed below are the only known survivors.

| Victims | General Info | Condition | Status |
| --- | --- | --- | --- |
| John Doe[8](javascript:;) | 24 years old, 5'11, male | Found right after *Base Crop Archive* was destroyed, the victim was found launched from Base Crop Archive, with 3rd degree burns. The victim appears to have their entire head replaced by a daisy. Most of their internal organs seem intact. | Comatose, status pending. |
| Taylor Rose | 19 years old, 5'7, female | Taylor was found in the remaints of a destroyed M.E.G. base. Taylor was seen to have green bruises all over her body, and a chunk of her hair was burnt. There were also flowers growing out of her arms, and she was sent to the nearest hospital for an examination. | Alive. |
| Holly River | 11 years old, 5'2, female | Despite being conscious enough to give a brief statement, their condition stands as the worst out of the three people found alive. Their leg is completely burnt, replaced with what appears to be ivy, and flowers seem to be growing out of the ivy. Half of their face is melted off. | Comatose, status pending. |

# Interview - Voice Log

**Interviewer:** Melody Parker.  
**Interviewee:** (Anonymous for privacy reasons, and will be mentioned as "C. A." C. A. is a former M.E.G. operative who worked in Team Wheatly, before quitting after the incident.)

---

**Interviewer:** Hey.

**Interviewee:** … Right. Hi.

**Interviewer:** So, let's start. Was the M.E.G. ethical, in your opinion?

**Interviewee:** Bold question, especially because that is the question you mostly avoid. My answer would be 'yes,' but not to every job you work in here. I truly believe that research teams should be able to retire earlier.

**Interviewer:** Yes, I agree too, but… what about *your* position? I mean, former position.

**Interviewee:** I suppose you're talking about the incident. Hopefully, I'm not being rude, but I think the M.E.G. screwed up by choosing fertile soil over the lives of innocent people.

**Interviewer:** That was mostly a… technical mistake.

**Interviewee:** What do you mean by a technical mistake? I was almost burnt alive, if it weren't for me escaping, despite the bosses threatening to fire people! Not to mention that the warning came too late…

**Interviewer:** I understand your concerns. The M.E.G. promises to never do such a mistake again, you can count on me.

**Interviewee:** I hope so. Good day.

**Interviewer:** Good day to you, too, miss.

  
  

\*\*\*

  

[May the daisies burn,](javascript:;)

[and may july never return.](javascript:;)

Written by

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Level 184.1 - "Daisy Fields"](level-184-1.md)" by KillerOreo52, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/level-184-1](level-184-1.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/level-184-1">Level 184.1 - "Daisy Fields"</a>" by KillerOreo52, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/level-184-1">https://backrooms-wiki.wikidot.com/level-184-1</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:**???  
> **Author:** Unknown  
> **License:** CC0  
> **Source Link:** <https://pxhere.com/tr/photo/1361384>

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

Footnotes

[1](javascript:;). Which have cost the M.E.G. numerous gallons of [Almond Water](object-1.md).

[2](javascript:;). Approximately 120°C to 140°C.

[3](javascript:;). The wind is usually seen to go 100 to 110 km/h.

[4](javascript:;). The "sun," which is suspected to be a pseudo-star, or perhaps an artificial stellar anomaly. Nothing can be said for certain, unfortunately.

[5](javascript:;). All theories made here are hypothetical; it is advised to take these with a grain of salt.

[6](javascript:;). Despite being asked, Esther shows no detectable anomalous properties based off Level 184, and denies being assosciated with anything extraordinary.

[7](javascript:;). Despite everything, the entrances haven't been affected.

[8](javascript:;). The individual was unidentifiable, hence the nickname. They are theorised to be a M.E.G. agent by the name "Victor," but the theory is unproven as of now.

---

Source: [https://backrooms-wiki.wikidot.com/level-184-1](https://backrooms-wiki.wikidot.com/level-184-1)
