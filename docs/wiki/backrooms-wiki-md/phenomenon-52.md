---
title: "Phenomenon 52 - \"Whale Falls\""
source: "https://backrooms-wiki.wikidot.com/phenomenon-52"
retrieved_at: "2026-08-23T23:38:27+00:00"
license: CC-BY-SA-3.0
---

# Phenomenon 52 - "Whale Falls"

|  |  |
| --- | --- |
| Phenomenon 52 - "Whale Falls" | rating: +22[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")     Info  **CW:**  Suicide, overdose  Written by  [Close](index.md) |

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

**PHENOMENON 52 — “Whale Falls”  
Ichthyologist Cadriel Huynh  
Report #2**[1](javascript:;) — **BMM-1**

Over the past week, 52 (fifty-two) whale carcasses have been recorded at the bottom of a body of water in [Level 7](level-7.md), hereafter referred to as ‘the Sixth Sea.’ The carcasses vary in size, shape, and stage of decomposition. Some appear to be juveniles. They have been discovered in various locations on the floor of the Sixth Sea, sitting atop vents and hills that were not previously there.

The first carcass to be discovered was nicknamed BMM-1 (*Balaenoptera musculus musculus*, 1), found 2000 (two-thousand) fathoms[2](javascript:;) below the surface. It lays upon a seamount, almost fully intact; as of this report being written, it is still there. There is nothing abnormal in terms of quantitative data. Due to its location and desire for preservation, a weighing was not possible—however, an approximate length of 52 (fifty-two) feet was recorded. At the present moment, the carcass’s sex is still indeterminate.

Researchers and field experts have examined underwater images, small tissue samples, and the carcass itself in-person, determining it to be from the North Pacific ocean. It is entirely possible that BMM-1 was migrating in the Sea of Cortez before accidentally entering the Sixth Sea. A cause of death has not yet been established due to its almost pristine condition—it is unclear whether its entry into Sea 6 (six) was at fault. No scar tissue resulting from teeth or suction cups was visible on the exterior of the whale, though the belly and internal organs have yet to be examined. Normal coating of barnacles recorded.

BMM-1’s existence is not anomalous in itself. Instead it is the creatures that the carcass attracts, breeding new specimens that have not been previously recorded prior to the fall. Large multicellular organisms akin to human bodies have been observed crawling over the body, similar to *Homo sapiens*, but possessing a few differing traits. Their skin is translucent and stretched taut, with pallid, hollow features. They lack body hair and are reclusive in nature. For now, they are classified by our team as *Homo piscis*, though some scientists have argued against this classification under the *Homo* genus.

*H. piscis*, though it may be a trick of the light—or lack thereof—appears to emit a seagrass green bioluminescence from two large swim bladders located in the upper sternum that vaguely resemble lungs. Their bodies are seemingly unaffected by the extreme pressure in the oceanic deep, displaying agility in their movements as if they were walking on land. The interdigital webs have significant definition in comparison to a human. As more of them appear, the condition of both the imaging systems and the carcass worsens. Our team has collectively decided to halt research on BMM-1 due to the 3 (three) researchers looking the carcass in the eye and promptly committing suicide.[3](javascript:;)

For now, BMM-1 is a mystery.

**Indifference**

**Interviewer:** Cadriel H.  
**Subject:** Man from two years ago, hereafter referred to as ‘he’ as a pronoun, no name is given.

---

**This document contains classified information. Viewing is not permitted without proper authorization or sufficient credentials. Psychological evaluation is strongly advised for the viewing of this material.**

[Show Interview Log-52](javascript:;)

[Hide Interview Log-52](javascript:;)

**HE**: Can you hear me?

**CH**: Why are you here?

**HE**: To see you.

**CH**: No, that can’t be right. You left me first. Why are you really here?

**HE**: To haunt you. To taunt you. Think. Do you remember?

**CH**: Oh, sure…

**HE**: Tell me.

**CH**: I left first.

**HE**: Yes. You left me when I needed you the most.

**CH**: I left first. It was a terrible thing to do, I’m sorry… You know I’m sorry. But I had no choice. There are things that you do to me… things that I tell nobody, nobody at all. The blood is between you and me. I never even got to tell you happy birthday.

[There is a brief moment of charged silence. HUYNH attempts to reach out for HIM, but thinks better of it and places his hands in his lap.]

**HE**: No, of course I don’t. We never talk. I told you that you hurt me, I told you I was afraid of you, but you keep trying to bring me back. You’re only sorry because you want to stop feeling bad about it. About us. I don’t want to talk to you. Our lives have nothing to do with each other anymore. I never want to see you again.

**CH**: Somewhere, in the darkest parts of me, I still love you. We were a beautiful thing.

**HE**: I'm sorry we couldn't make it work. God, I'm so sorry.

**CH**: Things were all fucked up. I just wanted to party with you, all night, I just wanted to touch your body and your skin. It doesn't belong to me… did it ever? No, don't answer that. I don't want to know.

[HUYNH is struggling to catch his breath. HE watches listlessly.]

Just tell me one thing…

**HE**: Anything.

**CH**: Will you stay?

**HE**: I think you know the answer. Please don’t make me say it.

**CH**: All right. I’ll see you tomorrow.

**HE**: I know you will.

[END]

---

Following the interview, ichthyologist Cadriel Huynh proceeded to spend the next 52 (fifty-two) hours locked in his personal office. Huynh did not speak. He only wept soundlessly, confirmed by the evident tears streaking down his face by the time he came out. When questioned about this incident, Huynh claims he has no recollection of the matter. After medical evaluation, reports came back negative for mental disarray or brain damage.

However, his lungs seem to have gotten bigger. Further investigation required.

**Ichthyologist Cadriel Huynh[4](javascript:;)  
Report #5 — BMM-2**

Shortly after the discovery of *Balaenoptera musculus musculus-1*, another whale carcass of the same species was found approximately 5 (five) fathoms away from the original landing site of BMM-1; this carcass was nicknamed BMM–2. It stayed in place for less than 3 (three) days before disappearing. As of this report, BMM–2 has yet to be found.

The data collected on BMM–2 was extremely scarce due to researchers refusing to interact with the body, including participating in any discussion of related matters. This included but was not limited to: refusal to say the words/phrases *whale, BMM-1, BMM-2,* and *Homo piscis.* Some have even gone as far as to avoid being in the same room as people who are discussing Sea 6 (six). Those who have come into contact with BMM-2 report symptoms of nausea, loss of appetite, extreme bouts of grief, and an impending sense of doom.[5](javascript:;) Despite this, we are still working hard to ensure that adequate data on BMM-2 is collected.

BMM-2 is significantly more advanced in stages of decay. Most of the right-hand side of the whale has been consumed; analyses on the bite marks are still being developed. Its body is inexplicably cooler to the touch than the water that surrounds it, not having reached equilibrium with its surroundings, which is strange. BMM-2 is significantly smaller than BMM-1, recorded at 20 (twenty) feet long, suggesting it may be a juvenile. There is irregular barnacle growth on its back; certain scientists have been attempting to argue that it may spell something out. No scars have been located or photographed, though the carcass is in rather poor condition in comparison to BMM-1. The majority of the internal organs had already been eaten or otherwise destroyed by the time BMM-2 was discovered. Neither sex nor cause of death have been established. A few samples of tissue and imaging of BMM-2 are being currently examined in the lab, though results are inconclusive.

As of now, 2 (two) more researchers have committed suicide. More information needed.

I can't help but wonder if this is all worth it.

  
 

![photograph](http://alba-zone.wikidot.com/local--files/whalefalls/photograph)

*Fig. 1 — I miss you, my little angel. I don't know how to swim.*

**Ichthyologist Cadriel Huynh  
Report #52 — The Last One**

The last recorded whale fall out of all 52 (fifty-two) was not a blue whale.

PM-1 (*Physeter macrocephalus* 1), colloquially known as a sperm whale, is in perfect condition. The whale has no externally visible damage and was dying on the way down. Cries from PM-1 breached 230 (two hundred thirty) decibels at their peak; said cries immediately ceased, without echo, once it reached the sea floor. Size was recorded as 52 (fifty-two) feet. No members of species *Homo piscis* have been observed feeding on PM-1. Sex and cause of death has not been established. Its body is of expected temperature and texture. It has yet to explode due to gas build-up. Nothing is anomalous about this carcass.

PM-1 was perfect. Now PM-1 is grey, PM-1 is dead.

Upon the first recordings of PM-1’s cries, several scientists in the room began to weep. A new researcher, freshly promoted, sat at her desk for the next hour without moving or blinking. Another young man bit through his own finger and had to be forcibly moved to the first aid department.

At approximately 14:00 Level 7 Standard Time, I was informed that 46 (forty-six) of my coworkers had committed mass suicide by ascending to the workplace rooftop and jumping, bringing the grand total to 51 (fifty-one). After receiving this information, I continued to work. The pursuit of knowledge is all that matters to me now. I have to know why. Despite the sporadic appearance of blue whales every few hours over the past week, the whale falls had seemingly stopped after PM-1. None of my coworkers were left to help me, and I was alone in the office, listening to PM-1’s cries on repeat.

Imaging shows no irregularities, but I need to get closer. At least 2 (two) properly certified people are required for a deep dive such as this, especially when dealing with such a seemingly dangerous phenomenon. But PM-1 is different from the rest of them. There’s something strangely magnetic about it, the waxy liquid seeping out of its head. If I take this risk, I can fix things. I can fix Sea 6 (six) for good. I will learn to breathe underwater.

It is late as I type this report—only a few dying candles illuminate my workspace. It seems strange to describe them as dying. They’ve never known real death. PM-1 knows what it’s like to die. I can see its limp, lifeless body in my peripheral vision; I can see the ash coloured corpse every time I close my eyes. Something awaits me down there, something with a name I've forgotten how to pronounce…

Exhaustion seeps into every part of me. There’s a photograph on my desk that I refuse to turn over. It can stay face down until I’ve earned the right to look at it again.

I have personally nicknamed PM-1 *Angel*. I do not tell anyone this. There is no one left to tell. This will be my last report and, very possibly, last expedition into the deep.

I am the 52nd suicide of my team.

  
 

# WHALE FALL:

  

A whale carcass sinking to the depths of the sea, providing the basis of a new ecosystem for deep water marine life. A whale carcass sinking to the depths of the sea, providing the basis of a new ecosystem for deep water marine life. A whale carcass sinking to the depths of the sea, nothing and nowhere. A whale carcass sinking to the depths of the sea, providing the basis of a new ecosystem for deep water marine life. A whale carcass sinking to the depths of the sea, a final disappearing act. A whale carcass sinking to the depths of the sea, providing the basis of a new ecosystem for deep water marine life. A whale carcass sinking to the depths of the sea, sharp bone, rotted flesh. A whale carcass sinking to the depths of the sea, providing the basis of a new ecosystem for deep water marine life.

It smells like salt air and sweat. A body crawls over a body in the abyssopelagic zone, the bottom of the barrel. Something hungry gathers here, an amorphous lump. It is not an animal carcass but rather something much more putrid and undefinable, a disgusting accumulation of desire akin to black mold fingering the hollows of a wall covered in peeling yellow paper. Hunger defines everything in a mind like that.

A man lays on the floor in a hallway lit by a singular bulb. It is not yet dawn.

*— Where?  
— By the sea, of course.*

There's a beating in his chest, very close to the walls of his body that contain it. He phases halfway through the floor. His body is encompassed by another body, he shuts his eyes. It evokes nothing in particular. He’d like to be indifferent, careless, free of all desire, but it’s not possible. There are hydrothermal vents at the bottom of the ocean. The corpses that dwell there are perfect wax statues, preserved by salt.

— *Do you know how deep the ocean is?*

A study found that 100% of amphipods in the hadal zone contained at least one synthetic material in their stomach. There’s blood under his fingernails. Glass in his mouth. His skin is covered in white specks of microscopic life. What a thing, to be breathing in the chlorinated air, the pleasure of summer, summer alone.

— *Come wander with me.*

A man looks down at the surface, covered in sparkling white slits of light. They look like seabirds spreading their wide wings. He is not afraid of what waits below, the freefall, the bullet of his body that will shatter that surface. Surely he knows what follows after something like that. He’d be stupid not to.

— *What is it like to take flight?*

It’s like turning your insides upside down. It feels so good. You don’t even know you’re up there until you come down. He sees the water, all of its massive and terrible beauty, he wants to be there. On the floor, on the top of the world, the apex of a longitudinal needle, the dark heat of his body pulses. It begins to slow.

— *We'll have the easy life.*

A whale is split open by the jaw by a speeding vessel. She dies weeping. Her carcass spirals downwards, surrounded by plumes of bright red blood. A whale with a broken frequency cries out. No one can hear her.

— *What does it mean to drown?*

A man walks up to a rooftop, naked and covered in snow. It is the middle of summer. His nose is red. The air is hot, humid. Flakes of marine debris rain down and dust the surface of the water. Like kisses, like stars, cosmic litter. So beautiful, the softest thing. A man plunges 52 (fifty-two) feet down and breaks his neck. He is dead before he hits the bottom.

— *A dead man’s a strange thing.*

He was something I loved. Now no one will ever cry out for me again. When after dawn will I stop waiting for him to come home? I can't recall his face anymore. Put that needle in me, darling, just put it in. Every morning I wake and wash fresh blood from my hands. The most beautiful dreams are the ones you forget.

[+ Open Footnotes](javascript:;)

[- Close Footnotes](javascript:;)

Footnotes

[1](javascript:;). First draft was lost to the waves.

[2](javascript:;). 1 fathom is equal to 6 feet, or approximately 183cm.

[3](javascript:;). Notably, a junior scientist who argued against the classification of *Homo piscis* was one of the three deaths. Whether these two incidents are related is unclear.

[4](javascript:;). Am I really me?

[5](javascript:;). Myself included. I’m not worried.

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Phenomenon 52 - "Whale Falls"](phenomenon-52.md)" by pubie, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/phenomenon-52](phenomenon-52.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/phenomenon-52">Phenomenon 52 - "Whale Falls"</a>" by pubie, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/phenomenon-52">https://backrooms-wiki.wikidot.com/phenomenon-52</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** photograph-of-a-lover  
> **Author:** Cadriel Huynh  
> **License:** CC BY SA 4.0  
> **Source Link:** <http://alba-zone.wikidot.com/local--files/whalefalls/photograph>

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/phenomenon-52](https://backrooms-wiki.wikidot.com/phenomenon-52)
