---
title: "Level 301 - \"The Window of Hope\""
source: "https://backrooms-wiki.wikidot.com/level-301"
retrieved_at: "2026-08-23T23:35:29+00:00"
license: CC-BY-SA-3.0
---

# Level 301 - "The Window of Hope"

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
:root {
    /*=== S-CSS-P ===*/
    --theme-base: "black-highlighter";
    --theme-id: "nuterminal";
    --theme-name: "NuTerminal Theme";
 
    /*=== Colors ===*/
 
    --swatch-background: var(--black-monochrome);
    --swatch-primary: var(--light-gray-monochrome);
    --swatch-primary-darker: var(--dark-gray-monochrome);
    --swatch-primary-darkest: var(--dark-gray-monochrome);
    --swatch-border-color: var(--white-monochrome);
 
    --swatch-text-dark: var(--black-monochrome);
    --swatch-text-light: var(--white-monochrome);
    --swatch-text-general: var(--swatch-text-light);
    --swatch-important-text: var(--pale-accent);
 
    --swatch-menubg-color: var(--dark-gray-monochrome);
    --swatch-menubg-light-color: var(--light-gray-monochrome);
    --swatch-menubg-medium-color: var(--gray-monochrome);
    --swatch-menubg-medium-dark-color: var(--gray-monochrome);
    --swatch-menubg-dark-color: var(--dark-gray-monochrome);
    --swatch-menubg-black-color: var(--black-monochrome);
    --swatch-menubg-hover-color: var(--gray-monochrome);
 
    --swatch-menutxt-dark-color: var(--black-monochrome);
    --swatch-menutxt-light-color: var(--white-monochrome);
    --swatch-menutxt-general-color: var(--swatch-menutxt-light-color);
    --sideblock-heading-text-color: var(--swatch-menutxt-general-color);
 
    --swatch-secondary-color: var(--gray-monochrome);
    --swatch-tertiary-color: var(--pale-gray-monochrome);
    --swatch-alternate-color: var(--gray-monochrome);
 
    --swatch-text-secondary-color: var(--white-monochrome);
    --swatch-text-tertiary-color: var(--white-monochrome);
} 
 
#page-content .licensebox .collapsible-block-link {
  color: rgb(255, 255, 255);
}
```

[- Close](javascript:;)

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

rating: +35[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

![meg-header](http://backrooms-wiki.wikidot.com/local--files/level-997/meg-header)

Today is the 365th day since the execution of the Second Divine Bird Plan. In the actions related to Level 301 aimed at exiting the Backrooms (two Divine Bird Plans), 32 people have left us forever. But our efforts will not stop, and the sacrifices of these people will not be in vain. We believe that one day, humanity will overcome the Backrooms.

According to the consensus of the Overseers, all files related to Level 301 or the Divine Bird Plan/Second Divine Bird Plan should be archived on this page. These files are compiled from a large number of internal archives of the M.E.G., thus the information is accurate and detailed. I hope you can gain something from the reading process.

Humanity is immortal, hope lasts forever.

  
  

# **Level 301**

  
  

![{$alt}](http://scp-sandbox-3.wikidot.com/local--files/rewrite-301/window.png)

The Window of Hope.

---

# PART I

### Level 301 - Last Revision

---

SURVIVAL DIFFICULTY:

deadzone

- Strictly Unhabitable.
- Deadly Environmental Hazards.
- Exit Only.

# **Description**

**Level 301** is a desolate indoor space shrouded in darkness. A minimal amount of glowing dust hangs in the air, but it is insufficient to light up the area, necessitating additional light sources for navigation. Through the weak light, the first thing that can be seen is the gray walls. They are covered with a thick layer of dust, but for other places at this level, this is nothing. The level is cluttered with damaged furniture, much of which has lost its paint. All pieces are significantly corroded, with some sections worn down to create small, mesh-like holes.

![Missing alt text.](http://scp-sandbox-3.wdfiles.com/local--files/dragon-images/301-2)

The typical structure of Level 301.

**Level 301** has a corrosive atmosphere making it impossible for people to establish any base here. As of now, no one who has entered **Level 301** has survived. As such, those who enter without permission will immediately be recorded as MIA. In these premises, oxygen is scarce, accounting for only 5% of the atmosphere. Meanwhile, the remaining 95% is occupied by a mixture of hydrogen fluoride and carbon monoxide. Once the protective clothing is corroded, carbon monoxide will quickly cause symptoms of faintness and lightheadedness ultimately leading to a loss of consciousness and eventual death. Even if the atmosphere didn’t kill you, the floors would. Indeed, under the corrosive effects of the environment, the wooden floor is carbonized into a viscous fluid. As a result, the structure of the floor can only withstand the average human weight for roughly five minutes before weakening. After the five-minute threshold, there is a risk of sinking into the floor and ending up trapped. Due to these lethal environmental hazards, all exploration of **Level 301** is now conducted using drones.

### The Modulation Room

The Modulation Room, situated on the left side of **Level 301**, contains numerous electronic devices that were all damaged during the destruction. Some of these devices could potentially explode at any moment. Fortunately, the stone floor remained intact, providing a stable base for our drones.

### The Window Room

The Window Room is on the right side of **Level 301**. This is an empty room of approximately 10 square meters. A two meter long and two meter wide glass window on the wall opposite the door. For the following reasons, the M.E.G confirmed that this is an exit to the Frontrooms:

- One of the iconic buildings of the Frontrooms can be observed from this window: the Eiffel Tower.
- Within **Level 301**, [Object 2](object-2.md) emits a weak vibration that is very similar to the vibration emitted by Keys from the Frontrooms. This can serve as a validation and supplement to the first point.
- Although the attempt to send a message to the outside world has failed, Wi-Fi from the Frontrooms can be connected within **Level 301**.

The above confirms the existence of the entrance to the Frontrooms in **Level 301**, and it seems to be spatially co-located with a window in the Frontrooms. However, the severe environmental dangers of **Level 301** make it impossible for people to access the window. To avoid exposing personnel to uncontrollable risk, the M.E.G. has initially opted to use drones to assess the corrosion resistance of our different protective gears, and develop protective clothing specifically for the special environment of **Level 301**. This research is still ongoing.

# **Entrances And Exits**

#### Entrances

- Currently, all entrances to **Level 301** are tightly guarded, and no one is allowed to enter.

#### Exits

- [The Frontrooms](the-frontrooms.md).

  
  

---

# PART II

### Archive of Files Related to Level 301, Part I

---

# Reports on Recent Abnormal Phenomena

**Report I**

**Date:** Oct 24th  
**Location:** [Level 300](level-300.md)  
A wanderer in Level 300 attempted to use [Level Keys](object-2.md) to measure the distance between other levels, but when he tried to use the key from the Frontrooms, the result returned was 2.

**Report II**

**Date:** Oct 31st  
**Location:** [Level 299](level-299.md)  
A wanderer walking on Level 299 tried to contact the M.E.G.'s base on this level. However, she found that she was connected to an unknown Wi-Fi. The name of this Wi-Fi is French for "Hotel de la Tour Eiffel". Its IP address does not belong to any level that currently possesses network signals.

**Report III**

**Date:** Sep 5th  
**Location:** [Level 171](level-171.md)  
An expedition member of the M.E.G. was besieged by entities on Level 171. In desperation, he fled through a wooden door with a carving of a cockatiel. He was then trapped on an unexplored level and called the M.E.G.'s rescue hotline. However, due to the difficulty in locating, the M.E.G. was unable to carry out any rescue operations. Eventually, the man lost contact with the M.E.G. due to the battery running out of his communication device. However, he reported an important piece of information - he was connected to the same WI-FI as in Report II inside this level, and the signal was even stronger.

> **Summary and Analysis:** These reports seem to indicate that there is a level near Level 300 that could lead to the Frontrooms. Since the levels close to Level 300 have been fully/partially explored, we believe the exit is in the undocumented Level 301. Report III has provided us with a method of entry (which should be this level). The M.E.G. will send a team to explore as soon as possible.

# Level 301 Exploration Report

**Exploration Team:** Team "Bagpipe"  
**Exploration Goal:** The main objective is to find an exit to the Frontrooms. Secondary objective is to understand the basics of Level 301; its security, and whether entities exist or not.

### The First Exploration

This exploration mainly confirmed the structure and safety of Level 301, and the results are as follows:

- We confirmed that Level 301 is safe and no abnormal phenomena or hostile entities have been found so far.

- We found out that Level 301 is an indoor level of limited size and consists of 4 areas. They are named the Living Room, the Modulation Room, the Window Room and the Human Living Area.

![Missing alt text.](http://scp-sandbox-3.wdfiles.com/local--files/dragon-images/301-1)

The scene of the living room.

- The Living Room is the first room you will find yourself in after entering Level 301, the room is about 40 square meters in size and has a lot of furniture. The Modulation Room is located to the left of the Living Room and contains many electronic devices. The Window Room is located to the right of the Living Room and has the only window. The Human Living Area is a very larger area[1](javascript:;) located behind the Living Room and is a simulation of the Frontrooms environment. It is assumed that it requires the electronics in the Modulation Room to function properly.

- Found the lost personnel in Report III.

### The Second Exploration

The main goal of this exploration is to find the exit to the Frontrooms. After some experimentation and research, we set our sights on the window in the Window Room. The reason for this is as follows:

- You can connect to the Frontrooms Wi-Fi from all over Level 301, but the closer you get to the Window Room, the stronger the Wi-Fi signal gets.

- From this window you can see the Eiffel Tower in the distance and the Eiffel Tower Hotel close by. Also, "Hôtel de la Tour Eiffel" is the name of the Wi-Fi, so this serves as a validation and complement to the previous point.

- Using Level Keys from the Frontrooms with several other Level Keys positioned by this window, the team calculated the distance to the Frontrooms to be 0.6 at this point.

### The Third Exploration

The original goal of this exploration was to thoroughly investigate and confirm the potential exit to the Frontrooms reported in the Second Exploration, but this plan was disrupted by an unexpected discovery.

On the morning of October 6th, the atmospheric sensor carried by the exploration team detected a significant increase in inhalable particulate matter content in the Level 301 atmosphere. Two days later, the air quality index in the level had reached 160, causing discomfort for some members of Team 'Bagpipe'. At the same time, paint on the wall coverings and furniture began to peel off. Obviously, the environment of Level 301 is deteriorating.  
﻿  
After a period of reasoning and analysis, the M.E.G. senior management found that this level has significant infohazard. Specifically, when the informed window serves as the exit to the Frontrooms, the environment at that level will begin to deteriorate until it is completely unsuitable for human living. The significant evidence for this inference is as follows:

- Two days before the second exploration record was returned (at this time, only six members of Team "Bagpipe" knew the exit), the environment at Level 301 was normal.
- On the evening of the second exploration record being transmitted back (when about 50 people knew the exit), atmospheric sensors began to sound alarms. The number of inhalable particulate matter in the air has increased, and trace amounts of carbon monoxide have been detected.
- Two days after the second exploration record was transmitted back (at which point about 80 people knew the exit), the air quality continued to deteriorate, and multiple team members began coughing, also observed scratches on the walls and tables.

Due to this reason, the M.E.G. immediately blocked all information about that level.

# The M.E.G. Internal Meeting Minutes

# Team "Overseer"

Team "Overseer" is the highest leader team of the M.E.G., who regularly holds meetings to propose and approve/reject various plans. At the meeting, approval or rejection of the plan is determined by voting. This team consists of three "Overseers": Justin, Kat, and Andrew.

  
**Justin:** Has everyone read the exploration report?

**Kat & Andrew:** Yes.

**Justin:** That's good. Then I don't have to spend too much time detailing everything we found in Level 301. The good news is that we have finally discovered an exit to the Frontrooms, while the bad news is that the infohazard at this level is preventing us from using it.

**Andrew:** Yeah. But the exit is an opportunity, we must seize it.

**Justin:** Do you have any good ideas?

**Andrew:** I don't have any good ideas, but one thing is necessary, which is that wanderers must not know where this is when passing through the exit.

**Justin:** It's actually not difficult to achieve this. We can blindfold them when they pass, and if necessary, we can take coercive measures. We just need to make them think they are secretly moving towards some M.E.G. base. As for what they do after arriving at the Frontrooms, it doesn't matter.

**Andrew:** But there is another issue here. How can we gather them in advance? If we transport wanderers one by one, sooner or later the plan will leak out.

**Justin:** I think we can utilize the Human Living Area by making it publicly available on a small scale as the Frontrooms. This can efficiently concentrate and temporarily place wanderers. I think I will carefully write down the final version of this plan later.

# The Divine Bird Plan

Confidentiality level

10

**The main target:** Let as many people as possible leave the Backrooms.  
**Participants:** M.E.G. Base “Breaking Door” (Team "Bagpipe").  
**Start date:** 10/10/2022  
**Implementation steps:**

1. The Team "Bagpipe", which had been in charge of exploration, was stationed at Level 301 to establish a base. The new base will be called the Base "Breaking Door" and will be responsible for all matters related to the implementation of the Divine Bird Plan.
2. Bring the wanderers into Level 301 and take them to the Human Living Area. In this way, the wanderers will think they have returned to the Frontrooms. This step is to gather more people within Level 301 to allow more people to leave the Backrooms.
3. Ordinary wanderers are not allowed to enter the Window Room.
4. When enough people gather within Level 301, open the window. Cover the eyes of the wanderers who need to be brought into the Frontrooms and lure them into the window.
5. After the first success, we will continue until all the wanderers are brought back to the Frontrooms.

  
**Kat:** This idea is great, but since you have already convinced them that you have returned to the Frontrooms, how can you lure them into entering the exit?

**The discussion time has ended. Now the voting time starts.**

|  |  |  |  |
| --- | --- | --- | --- |
|  | Agree | Neutral | Oppose |
| Justin | ⬤ |  |  |
| Kat |  | ⬤ |  |
| Andrew |  | ⬤ |  |

**The voting has ended and the result is 1:0. The Divine Bird Plan will begin the execution phase today.**

  
  

---

# PART III

### Archive of Files Related to Level 301, Part II

---

**Application U30173873**

**Applicant:** The team responsible for liaising with Base "Breaking Door" in Base Alpha.

**Situation:** Since five days ago, we have not been able to contact Base "Breaking Door". All our messages are automatically rejected, so we suspect that the equipment used by Base "Breaking Door" to receive messages has been destroyed. We then dispatched personnel to Level 301 to check the situation. However, none of the three people we sent returned and no one sent us a message. This suggests that Level 301 may have suffered a major incident that requires immediate investigation.

**Measures Applied for:** Fly a drone into Level 301 to find out its status. And confirm as soon as possible what happened at Base "Breaking door".

**Status:** Approved.

**Reason for Rejection:** /

**Overseer's Signature:**

![co.PNG](http://scp-sandbox-3.wikidot.com/local--files/rewrite-301/co.PNG)

# Level 301 Second Exploration Report

**Exploration Team:** The M.E.G. Drone Operators Team  
**Exploration Goal:** Use of drones to gain knowledge of the current interior of Level 301. And find out what happened to Base "Breaking Door".

### The First Exploration

**Model of Drone Used:** Hawthorn I

Actually, this exploration was not a successful one, but we still collected some useful information, so we recorded it. The camera of the Hawthorn I drone becomes blurry upon entry and cannot return images. According to data transmitted by atmospheric sensors, the atmosphere at Level 301 now contains 45% hydrogen fluoride and 50% carbon monoxide. So we believe that the infohazard has already devastated Level 301, and the Base "Breaking Door" has also been completely destroyed.

### The Second Exploration

**Model of Drone Used:** Hawthorn II

This time we reinforced the drone's camera so that it can be protected from corrosion and return images correctly. This exploration shows that Level 301 has been destroyed by the infohazard entity. Here is the current status of each of its parts[2](javascript:;):

#### The Living Room

![Missing alt text.](http://scp-sandbox-3.wdfiles.com/local--files/dragon-images/301-2)

The first image captured after the destruction of Level 301. Please note that this photo has been artificially adjusted for brightness, otherwise no one may be able to see that it is not pure black.

The Living Room has suffered severe damage. Furniture and walls are carbonized into black by corrosive atmosphere. The chandelier was damaged, resulting in a lack of lighting at Level 301, with a light intensity of only about two lux[3](javascript:;).

#### The Modulation Room

The Modulation Room also suffered irreversible damage. A large number of electronic devices were destroyed, and a considerable portion had the potential for explosion due to corrosion. This makes the Modulation Room more dangerous than the Living Room.

#### The Window Room

This is included in the next exploration report.

### The Third Exploration

**Model of Drone Used:** Hawthorn III

The focus of this exploration is to understand the current situation inside the Window Room. Although it is only 10 square meters in size, it provides us with three extremely important pieces of information.

- We found an incompletely damaged laptop in the Window Room. When discovered, its display screen was still working. The content displayed on the screen seems to be a distress letter that the members of the Base "Breaking Door" did not have time to send. The letter indicates that the destruction of Level 301 was caused by too many wanderers taking off their eye masks out of curiosity, which activated the infohazard.

- After further disclosure of Level 301 information, its environment did not continue to deteriorate. We speculate that this is because the environment at Level 301 has deteriorated to the extreme.

- The most important point is that the window leading to the Frontrooms was not destroyed. This means that Level 301 still has considerable utilization value. And if someone can solve the environmental hazards in Level 301, anyone can easily leave the Backrooms.

# A Letter to the Overseers

*Dear M.E.G. Overseers,*

![Missing alt text.](https://scp-sandbox-3.wdfiles.com/local--files/rewrite-301/Jack)

R.I.P.

*The person in the photo is my elder brother, Jack. He joined the M.E.G. at the age of 21 and successfully completed multiple exploration missions. He was a diligent member of the M.E.G. until his death - that was when he was transferred to Level 301.*

*As his sister, I have the authority to know everything about the Divine Bird Plan. I learned the terrible news of his passing three days ago. I was very sad at that time and found it difficult to accept. In the past three days, I have been hoping that he has no-clipped to leave Level 301 and survived. I searched everywhere for information about him, but still found nothing until I wrote this letter.*

*I didn't hear much more about him. But I gained one thing - don't do things that are destined not to succeed. These three days of searching put a huge psychological burden on me, and I didn't sleep even for a minute during the whole seventy-two hours. But what of the results? The Divine Bird Plan is the same as this one, and no matter how hard we try, we find success right behind that one wall we are bound to hit. So, please don't have any illusions about the windows of Level 301. On behalf of the families of all Base "Breaking Door" members, I would like to advise you to stop the Divine Bird Plan immediately and completely, and to stay as far away from this fucking Level 301 as possible. Please consider this very carefully.*

*Sincerely,*  
*Jane*

  
  

---

# PART IV

### Archive of Files Related to Level 301, Part III

---

# The M.E.G. Internal Meeting Minutes

**Justin:** I admit that the last plan was not rigorous. I didn't consider some special circumstances. But I think we still have hope and the possibility of success. The window of Level 301 was not destroyed in the damage, it is still there. Cheer up, this time we need to make a rigorous and perfect plan as much as possible. Now I will write out the draft plan that comes to mind first.

(a moment of silence, occasionally accompanied by murmurs and the sound of writing with a pen)

# The Second Divine Bird Plan

Confidentiality level

2

**The main target:** Let as many people as possible leave the Backrooms.  
**Participants:** The entire M.E.G.  
**Start date:** 2/10/2023  
**Implementation steps:**

1. Investigate the environment of Level 301 even further and try to get a full picture of what's going on with Level 301.
2. Developing protective clothing that addresses the various environmental hazards of Level 301. (e.g. adding an anti-corrosion layer to protect against atmospheric corrosion, etc.)
3. In order to avoid unnecessary casualties, a drone was used to bring the developed protective suit in Level 301. If the suit is not perforated by corrosion within 10 minutes, it is considered to have passed and the next step is taken. If the suit does not meet this condition, go back to the previous step.
4. All human and material resources are utilized as much as possible to mass-produce this protective clothing. Distribute it to wanderers so that they can successfully leave the Backrooms.

**Andrew:** Oh my goodness. We have already failed once, yet you have come up with such a more unrealistic plan.

**Justin:** Why you say that？

**Andrew:** Don't you understand yet? You are wasting, wasting the resources of the M.E.G. and our energy. This is irresponsible.

**Justin:** I don't agree. We will indeed invest a lot of resources and time, but it is all for the purpose of returning to the Frontrooms. The result will prove that everything is correct.

**Andrew:** Do you really think we can still leave this damn hell? This is too stupid. We have tried countless times, even if it is really possible, the probability is too small.

**Andrew:** Have you read Jane's letter? It was sent yesterday and should be on your desk now.

**Justin:** Yes.

**Andrew:** That's good. This letter should have told you not to do things that are impossible to succeed.

**Justin:** Why do you think we can't succeed? Now is the moment when we are closest to success, and we have seen the window of hope. To be honest, we only need to take one step forward to…

**Andrew:** You always rely on vague fantasies, but ignore that these hopes are all flawed lies. To be fair, do you really think we can succeed this time? Do we really have enough materials to develop protective clothing?

**Kat:** Andrew, let him talk.

**Justin:** Who said hope and effort only have meaning after success? Do you remember our slogan? 'We are a glimmer of hope, we are the M.E.G.' Yes, hope may be slim, but as long as we strive to achieve it, it gives us the meaning of the M.E.G.'s existence, and the M.E.G. is still alive. But as long as we give up our efforts, all that remains for the M.E.G. is waiting, no longer alive.

**Kat:** I support Justin. Hope gives us meaning to exist, without hope, we can never achieve success.

**Kat:** Let's move forward with hope.

**The discussion time has ended. Now the voting time starts.**

|  |  |  |  |
| --- | --- | --- | --- |
|  | Agree | Neutral | Oppose |
| Justin | ⬤ |  |  |
| Kat | ⬤ |  |  |
| Andrew |  |  | ⬤ |

**The voting has ended and the result is 2:1. The Second Divine Bird Plan will begin execution today.**

  

# Justin's speech at Base Alpha

I believe everyone already knows about the recent destruction of Level 301. We express our deep condolences to those who died in Level 301. The M.E.G. did not protect you well.

However, some people believe that humans can never leave the Backrooms because of this incident. And as a result, hope was lost. But these tragedies cannot hold us back. Since entering the Backrooms, humans have shown tenacious vitality. We established the M.E.G., dedicated to making every wanderer leave the Backrooms. We have also encountered disasters time and time again - but we have all persevered.

Don’t give up. Hope is a beacon for people to persevere. So, I hope that each of us has hope in our hearts. Human beings have survived for thousands of years, and because of hope, we survive today. Hope is passed on from generation to generation. Humanity is immortal, hope lasts forever!

**Phase Results Report of the Second Divine Bird Plan**

**Reporter:** Aiden Soctt, current overall manager of the Second Bird Plan

During the four months since the implementation of the second Divine Bird Plan until today, the protective suit development team of the M.E.G. has developed and tested 109 protective suits numbered from H001 to H109. Among them, the H109 protective suit was corroded after 13 minutes in the highly corrosive environment of Level 301, meeting the quality requirements.

After direct approval from the Team "Overseers", the H109 underwent human wearing tests in a simulated Level 301 environment. The results of this test were successful, showing that if nothing unexpected happens, everyone can use this protective suit to go to the exit at Level 301.

The only drawback of this protective suit at present is its high cost, mainly due to the extreme difficulty in obtaining the raw materials used to manufacture it in the Backrooms. The M.E.G. is currently vigorously searching for the raw materials needed for manufacturing to give more wanderers the opportunity to leave the Backrooms. We have taken a significant step towards success.

  
  

This page uploaded a new attachment 1 minute ago, do you want to read it? (Y/N)

/Y

This attachment contains a password, please enter it to view.

/hopelastsforever

Welcome.

  
  
  
  

|  |
| --- |
| **From:** moc.liamkcab|reesrevoehtnitsuj#moc.liamkcab|reesrevoehtnitsuj |
| **To:** moc.liamkcab|5751werdna#moc.liamkcab|5751werdna |
| **Subject:** {no subject} |

Dear Andrew,

*I think we can officially announce the success of the second Divine Bird Plan now. Just yesterday, senior researcher Kevin entered the exit wearing protective clothing, becoming the first person to successfully leave the Backrooms. The biggest challenge we are currently facing is that it takes several months to manufacture a protective suit, which means that even if it takes ten years, only about twenty people can leave the Backrooms. But I think we will eventually solve it.*

*You may find this unbelievable, but it's easy to understand. Almost all wanderers have a consensus that the Backrooms cannot be left. But we, the M.E.G., have proven this to be wrong through continuous attempts. If you asked me to say what made us persevere and succeed in the end, I would say 'hope'.*

*Do you still not believe in the power of hope? I used to be like this before, but it wasn't until I read O Henry's novel 'The Last Leaf'.*

*In the ward, a critically ill patient looked out the window at a tree, its leaves falling one by one in the autumn wind. The patient looked at the fallen leaves, and her health deteriorated day by day. She said, 'When all the leaves fall off, I will also die.' After learning about it, an old painter climbed up to a high wall in the rain on the night when the last leaf fell, and painted a green leaf with a colored pen. As a result, the last leaf never fell off. Because of this hopeful green leaf, the patient miraculously survived.*

*Yes, that's hope - it can create miracles in the impossible. Just like the leaf in the novel that will never fall.*

*And we are the old painter.*

![Meglogo](http://natedagreat563.wdfiles.com/local--files/storage-unit/Meglogo)

  
M.E.G. - Bettering Humanity

Footnotes

[1](javascript:;). The exact size is unknown as it could not be explored in detail. But it is estimated to be at least one square kilometer in size.

[2](javascript:;). Excluding the Human Living Area, as drones will immediately go missing once they enter.

[3](javascript:;). Slightly lower than the intensity of light emitted by fireflies.

---

[I hope you like this :D](javascript:;)

[If you remember correctly, the text here should be "No, it's actually just the author”](javascript:;)

Number of days writing this article: **466**  
Number of times deleted: **3**  
Number of times to edit this article: **769** (including all drafts)

Author:

Critics:

Also, thank you to for providing me with CSS assistance and for giving me a Clear.

« [Level 300](level-300.md) | Level 301 | [Level 302](level-302.md) »

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Level 301 - "The Window of Hope"](level-301.md)" by I\_am\_a\_dragon, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/level-301](level-301.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/level-301">Level 301 - "The Window of Hope"</a>" by I\_am\_a\_dragon, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/level-301">https://backrooms-wiki.wikidot.com/level-301</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** M.E.G. Header  
> **Author:**   
> **License:** CC BY-SA 3.0  
> **Link:** <http://backrooms-wiki.wikidot.com/local--files/level-997/meg-header>

> **Name:** My Home  
> **Author:**   
> **License:** CC BY-SA 3.0  
> **Link:** <http://scp-sandbox-3.wdfiles.com/local--files/dragon-images/301-1>

> **Name:** The Signature  
> **Author:**   
> **License:** CC BY-SA 3.0  
> **Link:** <https://scp-sandbox-3.wdfiles.com/local--files/rewrite-301/117.136.85.87_0809190322_edit_715875269170871.jpg>

> **Name:** Jack  
> **Author:** [ThisPersonDoesNotExist](index.md) AI  
> **License:** [CC0](https://creativecommons.org/publicdomain/zero/1.0)  
> **Link:** <https://scp-sandbox-3.wdfiles.com/local--files/rewrite-301/Jack>

> **Name:** The Death World  
> **Author:**   
> **License:** CC BY-SA 3.0  
> **Link:** <http://scp-sandbox-3.wdfiles.com/local--files/dragon-images/301-2>

> **Name:** Window  
> **Author:**   
> **License:** CC BY-SA 3.0  
> **Link:** <http://backrooms-sandbox-2.wdfiles.com/local--files/fragment%3Acollab%3Arewrite-301-1/window.PNG>

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/level-301](https://backrooms-wiki.wikidot.com/level-301)
