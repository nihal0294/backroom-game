---
title: "Entity 164 - \"Crimson Eyes\""
source: "https://backrooms-wiki.wikidot.com/entity-164"
retrieved_at: "2026-08-23T23:36:28+00:00"
license: CC-BY-SA-3.0
---

# Entity 164 - "Crimson Eyes"

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

rating: +15[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

CONCORD ENTITY CLASSIFICATION SYSTEM

ENTITY ID: 164  
HABITAT(S): Dark areas saturated with the scent of blood.

**IETS**  
**4A+****X****X**

CLASS:

Chimeric

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

![Missing alt text.](http://backrooms-wiki.wikidot.com/local--files/entity-164/Crimson%20Eye.png)

A lost Crimson Eye hides in the corner.

### Description:

**Crimson Eyes** are complex, intelligent entities with a bizarre biological structure, entirely unlike any known lifeforms in [the Frontrooms.](the-frontrooms.md) Their most distinctive feature is a large central eye, marked by three unmoving, crimson-colored pupils.

They typically live in groups and possess a concealed organ beneath their bodies, likely their primary mouth, specially adapted for blood consumption. Although strictly sanguivorous, their behavior is highly unusual. After completely draining their victims of blood, they silently transport the dried remains to a secret refuge, an undisclosed location unknown to outsiders. How they navigate between levels or identify these refuges remains a mystery. Some theories suggest they can detect signs of imminent death, such as bleeding, and quietly trail their prey, waiting for them to collapse before striking. Due to their predominantly nocturnal and stealthy nature, this behavior is rarely observed.

Intriguingly, they also secrete a substance that slows decomposition in both wanderers and other entities. However, this preservation leaves behind a pervasive, putrid stench in the areas they pass through, and attempts to mask or neutralize the odor often fail or even worsen it.

[‎❗](javascript:;)

[‎](javascript:;)

*I had long since lost track of how long I’d been trapped here after I fell. Time itself became meaningless, driving me toward an inescapable madness. I kept walking the same steps, repeated countless times, in a place whose very existence felt uncertain. The colors around me pulsed unnaturally—especially the vivid red that seemed to consume everything around me.*

### Behaviors:

**Crimson Eyes** often communicate using physical gestures or eye contact. They are hostile toward both other entities and wanderers, frequently choosing to either attack immediately or silently stalk their prey[1](javascript:;). Once they lock onto a target, they strike without warning, typically when the prey is distracted or disoriented. Preferring to hide in dark corners, they move silently through the shadows of a level, usually traveling in groups of three or more. The exact methods they use to traverse levels, as well as their apparent ability to no-clip, remain a mystery.

Their actions following an attack are equally strange. Crimson Eyes feed exclusively on blood, leaving only the external shells of their victims behind. After draining the blood using a specialized organ, they quietly transport the emptied body to a hidden location, presumably their lair. The exact purpose of this behavior remains unknown, largely due to their ability to stay hidden in darkness, which makes direct observation nearly impossible. Most reports suggest that they can detect the scent of blood from injured, bleeding individuals who are near death. However, there is no confirmed evidence that they can sense or detect those who are deceased but without any active bleeding.

Some individuals exhibit leader-like behavior and display significantly higher intelligence than others, though they are difficult to identify due to the uniform appearance of the species[2](javascript:;).

[‎❗](javascript:;)

[‎](javascript:;)

*Tiny droplets… each falling to the ground where I stand, just like how I suddenly fell into this place without any warning, without any sign that it would happen. Though, I suppose that doesn’t really matter anymore. Maybe it’s only natural, considering how strange this place is—how it always brings things beyond what I can comprehend. At this point, I don’t expect anything. All I can do is observe everything unfold like an unwelcome guest in a world that was never meant for me.*

*But… [Why is it red again?](phenomenon-2.md)*

### Biology:

These entities resemble a mass of flesh covered in deep crimson fur[3](javascript:;). They have eight legs, each lined with nearly invisible barbs that allow them to cling tightly to surfaces or prey. A fully grown specimen typically stands around 3'5" tall.

Their most bizarre features lie in their eye and mouth structure. A large central eye dominates the middle of the body[4](javascript:;), marked by three deep crimson pupils and capable of excellent vision even in complete darkness. Resembling a magnified, thickened human eye, it remains beyond known biological classification and reacts intensely to external light. Hidden beneath the body is a massive mouth that is difficult to spot, lined with sharp teeth and connected to a specialized organ designed to pierce victims and extract blood, much like a leech.

They also possess an extraordinary sense of smell, particularly sensitive to the scent of blood. They can detect it from considerable distances across a level[5](javascript:;).

All Crimson Eyes share this trait. However, when the scent carries viral contamination, most instinctively avoid it to protect themselves. A few exceptions exist. Some individuals appear immune, likely due to exposure during early development, though the exact mechanism remains unknown.

Additionally, Crimson Eyes secrete an unidentified substance that significantly slows the decomposition of corpses. This secretion also seems to have anticoagulant properties, allowing them to extract blood more efficiently while preserving the body for later use.

[‎❗](javascript:;)

*My eyes met the sky that was once calm and clear, but now it had turned a deep shade of red. Sounds echoed from afar, spreading through every corner, but I could tell they were steadily moving closer to where I stood. Strange creatures began to emerge from the void, from somewhere I couldn't quite place. They closed in, and the suddenness of their pursuit sent a piercing jolt through my chest.*

*I knew I had to run now. I didn’t want to imagine what would happen if I didn’t.*

*…*

*Eventually, I found a place to hide from those strange things I had never seen before. It was then I realized how desperately they hungered for me. The red droplets clung to their fur, so vivid that it made me shudder.*

*The rain grew heavier, and with it came a stench, sharp and metallic, so foul it felt like it was torturing my senses, invading my breath, and soaking into my skin.*

### First discovered:

In December 2016, strange cases of missing bodies began to occur. According to reports, the bodies of wanderers, including those from various organizations, disappeared after entering the dark levels and never returned. These incidents continued for a long time until the U.E.C. took official action by forming a group to investigate the cause of these disappearances.

During the investigation, the U.E.C. deployed [The Cannibal Cuisines](entity-36.md)[6](javascript:;) and various biological decoys resembling human parts, placing them particularly in dark levels where disappearances often occurred. Fortunately, latent heat sensors near the decoys scanned and recorded the true form of Entity 164, temporarily named "Crimson Eyes" because of their striking appearance.

Finding them is a key part of the investigation, but the disappearances remain unsolved. A complete body has never been found in any location visited by Crimson Eyes, as most bodies have already disappeared. Only remains such as dried internal organs, desiccated blood-stained skin, and torn, incomplete pieces of cloth are found.

[‎❗](javascript:;)

[‎](javascript:;)

*Their strange eyes, when I looked straight into them, felt like something forged in hell itself, as if they could pierce through my soul the moment I stepped out from this fragile safety. The world around me started to bleed red, as if it wanted to drown me along with those creatures outside.*

*My vision grew increasingly blurry with time, and the rain showed no signs of stopping.*

*Oh my… All I can see now is… RED.*

*In a dream, I saw an old friend. Someone I had longed for through this whole journey.*

*Someone I always held dear ever since I fell into this cursed, inescapable place.*

*But what I still regret is that I haven’t found that friend yet.*

*I can't accept this. But what can I even do now? I’m sorry. If there’s a next life, can we meet again, somewhere far from this damned place?*

### Other information:

---

**From:** moc.liamg|ceu.ttocsnivek.rd#moc.liamg|ceu.ttocsnivek.rd  
**To:** moc.liamg|ceu.seyahdnalor.rd#moc.liamg|ceu.seyahdnalor.rd  
**Subject:** Preliminary Report on Crimson Eyes Specimen.

---

Hello, Roland.

We would like to send a preliminary report on the Crimson Eyes specimen that was dead when captured and has just been brought to me for analysis to learn about its structure and how it works. During the dissection process, we discovered a dark, viscous liquid located near the brain region of the entity. The extracted sample has been temporarily labeled CE-#26. Initial biochemical and functional tests indicate that this compound has a significant effect in slowing the decomposition of organic tissue.

When CE-#26 was applied to dead tissue samples, including those from entities such as [Facelings](entity-9.md) and [Skin-Stealers](entity-10.md), which share similarities with human tissue, the rate of tissue breakdown was reduced by an astonishing 80% compared to the natural process. More notably, the treated tissue maintained structural stability for over 48 hours, even in an unpreserved and humid environment. So this could explain one reason why many victims' bodies have yet to be found; perhaps they were taken away and treated with this compound for their purposes or something else.

We'll continue analyzing the microbiological composition and the remaining body parts of CE-#26 in the coming week. If possible, I’ll provide updated information following the next round of testing.

Sent October 9, 2017, at 5:17 AM

**From:** moc.liamg|ceu.ttocsnivek.rd#moc.liamg|ceu.ttocsnivek.rd  
**To:** moc.liamg|ceu.seyahdnalor.rd#moc.liamg|ceu.seyahdnalor.rd  
**Subject:** Post-Dissection Observations—Crimson Eyes Specimen.

---

After completing the dissection and testing of the Crimson Eyes specimen, I’d like to share several critical findings regarding the structure and possible function of its body. During the three-hour dissection, we found that the flesh on their bodies appeared uneven, as if they had been forced together with the same uneven variety of flesh. Tissue samples looked entirely different in composition, suggesting they may have been taken from multiple missing bodies or even other entities and crudely assembled into a single organism.

Most of these subtle features are hidden under the blood-stained crimson fur on their bodies, making them difficult to detect with the naked eye in the dark. However, after removing the fur from their bodies, we noticed that the flesh underneath the fur emitted a strong stench that was obvious upon closer inspection. Strengthens the theory that the missing bodies might be directly linked to their formation, especially the evidence of mismatched, decomposing layers of flesh.

There’s also a working theory regarding why these entities extract blood while taking the corpses. Based on the various parts of their flesh that slowly decompose over the years, the act of consuming only blood can be considered a method of preservation or "rejuvenation" in itself. That allows the decaying tissues of their bodies to survive for extended periods without the need to seek replacement parts.

Sent October 11, 2017, at 8:11 PM

**From:** moc.liamg|ceu.seyahdnalor.rd#moc.liamg|ceu.seyahdnalor.rd  
**To:** moc.liamg|ceu.ttocsnivek.rd#moc.liamg|ceu.ttocsnivek.rd  
**Subject:** Crimson Eyes Preservatives and Their Amazing Ability.

---

Nice to meet you, Kevin.

I’ve received your report, and thank you for the very useful information. We have also recently received some specimens, such as dried skin with blood and dried organs. After conducting tests on the materials sent along with the information you provided, we’ve confirmed that the skin and organ samples contain the same substance released by Crimson Eyes, which has a similar effect in slowing the decomposition process, as you reported.

We’ve discovered something new—the substance even has a certain adhesive property. After testing a small extract from the samples we received, we discovered that the retardant contained human blood or was mixed with the blood of another human-like entity.

But the good thing is that this substance is harmless when exposed directly and does not have any significant side effects. It seems to be a natural substance produced by Crimson Eyes to slow down the process of their cells decomposing.

This could be very useful for the organization if we learn how to apply it properly in different scenarios. We will continue monitoring and conducting further tests to see if we can apply it in future research.

Sent October 12, 2017, at 3:50 PM

[⚠ WARNING ⚠](javascript:;)

[CLOSE](javascript:;)

❗NOTICE❗

**Any act of trading, distributing, or using this substance outside the organization is strictly prohibited. The use of this substance for various purposes, such as murder, torture, or serving acts that harm other individuals in any form, will be strictly handled. This ban is issued to ensure absolute safety for the community and prevent any act of exploiting this substance for wrongful purposes.**

---

### Dos and Don'ts:

### Do:

- Check for bleeding wounds before entering a dark level.
- Bring a flashlight or something that can shine because it will be useful.
- Use the flashlight when attacked by them.
- Leave when you see them.

### Don't:

- Approach or attempt to attack them.
- Carry anything with blood on it.
- Wander in the dark without a flashlight.
- Expose bleeding wounds, as it attracts unwanted attention.

[‎❗](javascript:;)

[‎](javascript:;)

*When I opened my eyes…*

*Blood-red water covered half of my body, cold and foul. I couldn’t feel anything anymore. Every flicker of consciousness was like a blade cutting through my flesh, as if my body was cracking apart. The only sound was the growing patter of rain. I no longer had the strength to move or to feel pain.*

*Then they appeared.*

*They approached slowly, not attacking immediately, almost revering every scrape of their teeth against my skin. It felt as if I were something familiar—a gift.*

*I should have panicked, but when I looked up, or maybe surrendered to death,*  
*I saw that friend.*

*The old friend I had longed for throughout this lonely journey in this hellish place. They stood there, smiling, cheerful and strong, as if nothing had ever fallen apart.*

*Doubt gave way to faint happiness.* *Just seeing them once was enough for me to die without regret.*

*But when I looked closer, I realized it was not them.*

*It was the glowing red eye that had stared at me before I lost consciousness.*

*It was pretending to be them. Or worse, it was them.*

*And in that brief moment, all the pain, all the fear faded into something almost like peace.* *Before I closed my eyes.*

*A faint smile appeared on my lips. Meeting them again, even if just an illusion, a distorted memory inside a body slowly being torn apart.*

*I could no longer move or speak.*

*But in that final silence…*  
*I was grateful that they had always been by my side.*

« [Entity 163](https://backrooms-wiki.wikidot.com/entity-163) | Entity 164 | [Entity 165](https://backrooms-wiki.wikidot.com/entity-165) »

  

[There is something behind you ...](javascript:;)

[Oh, that is the author!](javascript:;)

[+ Open Footnotes](javascript:;)

[- Close Footnotes](javascript:;)

Footnotes

[1](javascript:;). Some accounts suggest Crimson Eyes may ignore the living once they have taken enough victims, though this remains unverified.

[2](javascript:;). Some Crimson Eyes wander alone, most often because their leader is dead.

[3](javascript:;). The fur of the Crimson Eyes resembles human hair, but it feels smoother to the touch.

[4](javascript:;). The large central eye is believed to house the entity's brain, controlling its sensory and cognitive functions, while also serving as a critical weak point.

[5](javascript:;). If the level is infinite, their detection range caps at around 2 to 5 kilometers.

[6](javascript:;). Holding it is a fine choice for distraction but also harmful in other ways.

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Entity 164 - "Crimson Eyes"](entity-164.md)" by Emzy-chan, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/entity-164](entity-164.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/entity-164">Entity 164 - "Crimson Eyes"</a>" by Emzy-chan, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/entity-164">https://backrooms-wiki.wikidot.com/entity-164</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** Red eyes.jpg  
> **Author:** FlowerX3  
> **License:** CC.BY.SA 2.0  
> **Source Link:** <https://live.staticflickr.com/65535/53942043885_3247af897a_z_d.jpg>

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/entity-164](https://backrooms-wiki.wikidot.com/entity-164)
