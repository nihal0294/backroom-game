---
title: "Level 308 - \"Life Force\""
source: "https://backrooms-wiki.wikidot.com/level-308"
retrieved_at: "2026-08-23T23:34:37+00:00"
license: CC-BY-SA-3.0
---

# Level 308 - "Life Force"

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

rating: +28[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

SURVIVAL DIFFICULTY:

1E

- Safe.
- Secure.
- Minimal Environmental Hazards.

# Description

**Level 308** consists of a desert and an oasis located at its center. This level has a normal day night cycle. But unlike normal deserts, even at night, the temperature in **level 308** never changes. This results in the temperature of this level always staying at around thirty degrees Celsius. Due to the warm environment, and a special phenomenon found in **Level 308**, the water wanderers may be carrying will dissipate faster, and they may become thirsty more quickly. Because of this, wanderers need to carry sufficient water when crossing this level.

![Missing alt text.](https://scp-sandbox-3.wdfiles.com/local--files/dragon-images/308-2)

A corner of the oasis area.

The oasis area is the main part of **Level 308** and the first area that wanderers arrive at when they reach this level. This area is home to a diverse range of plants, which results in temperatures around five degrees Celsius lower than desert regions. At present, it can be confirmed that these plants are all from the Frontrooms, but they have evolved unique self-protection mechanisms to adapt to the high temperature and water shortage environment of **Level 308**. Their root systems become more developed[1](javascript:;), their leaves degrade, and they have thicker stems to store water. Wanderers can obtain water from the stems of these plants for survival in the absence of water sources.

Beyond the oasis lies the vast desert of **Level 308**. This area is extremely hot, with surface temperatures reaching up to 65 degrees Celsius, so it is recommended for wanderers to leave this desert area as soon as possible. The terrain in this area is also quite monotonous, with only sand in sight and no rivers or lakes. This has resulted in the absence of a stable water source within **Level 308**. However, after multiple attempts to dig downwards, the M.E.G. discovered that soil moisture is directly proportional to its depth[2](javascript:;). This seems to indicate the existence of an underground river deep below the ground. This also explains why plants in the oasis area have developed such deep root systems.

The weather in **Level 308** is also uniform, with an average of 300 days a year being windless and sunny. This climate seems unfavorable for the growth of plants in **Level 308**, but on the few windy days, these plants rely on the wind to spread their seeds. Most seeds will die due to the harsh environment of **Level 308**, but there will always be a certain number of seeds that survive and grow into a complete plant. This has led to the gradual expansion of the oasis area in **Level 308**.

Additionally, there is no Wi-Fi signal anywhere at **Level 308**.

# Bases, Outposts and Communities

### M.E.G. Outpost "Oasis Protecter"

- Stationed in the center of the oasis area.
- Aim to study the various special properties of **Level 308** and help wanderers who have mistakenly entered leave.

# Entrances And Exits

### Entrances

- Entering a ruin with plants growing on a wall in [Level 46](level-46.md) will take you to **Level 308**.
- Wanderers in [level-501](trimmed__level-501--ddc11aa6.md) sometimes come here for unknown reasons.

### Exits

- Going deep enough into the desert at this level will take you to [Level 169](trimmed__level-169--2f6d06e3.md).

# Supplementary Information

When **Level 308** was first discovered, its internal environment was vastly different from what it is now (see [this old version document](level-308.md) for details). Based on the diary discovered at **Level 308** at the time, we infer that the bag of seeds described in the diary sprouted due to the underground river at Level 308, which created the more habitable environment at that level. We are not yet sure how these seeds survived in the harsh environment of **Level 308**, but there is indeed no other reason to explain the environmental changes.

### When those seeds fall into the desert,

### their suffering begins.

### The scorching sand covered the earth,

### depriving them of water and nutrients.

### People say,

### This is the forbidden zone of life,

### where no life can escape the fate of death.

### But the seeds have no choice.

### They gradually root deeper to obtain more nutrients.

### Perhaps most seeds will still die,

### but a few growing green shoots will pass on hope.

### When the sun rises again,

### all of these scenes will be shocking.

### There is an oasis standing,

### like a gem set in that 'dead ground'!

### That's the **Life Force**.

  
  
![308-3](https://scp-sandbox-3.wdfiles.com/local--files/dragon-images/308-3)

|  |
| --- |
| **From:** Daisy |
| **To:** M.E.G. Database Manager |
| **Subject:** New Level |

I discovered a small ruin with plants growing on the walls at [Level 46](level-46.md) and entered it, then I was transported to an unrecorded new level. I conducted a preliminary exploration here and wrote a document for this level. Now I am applying to input this document into the database.

- Daisy

SURVIVAL DIFFICULTY:

5E

- Unsafe.
- Unsecure.
- Non-Entity Hazards.

# Description

![Missing alt text.](https://scp-sandbox-3.wdfiles.com/local--files/dragon-images/308-1)

Part of the monotonous environment at **Level 308**, photographed by Daisy Smith.

**Level 308** is a desert with unknown size and extreme water scarcity, similar to the typical tropical desert in the Frontrooms. This level has a normal day night cycle. The temperature in **Level 308** remains at around 48 degrees Celsius, which puts wanderers at constant risk of heatstroke. And even at night, the temperature does not decrease. Therefore, the level stays at around the same temperature regardless of the time of day.

The most dangerous phenomenon of **Level 308** is that the rate of water loss in this level will be abnormally accelerated. Within this level, even the most tightly sealed container cannot store water for a long time, and water in the human body also can dissipate slowly in unknown ways. It is currently unclear where the excess of water has dissipated to, as it does not rain in this level. Due to this phenomenon, incoming wanderers must leave **Level 308** as soon as possible.

# Bases, Outposts and Communities

There are no known bases, outposts or communities.

# Entrances And Exits

The only way to enter **Level 308** is to enter a ruin with plants growing on a wall in [Level 46](level-46.md). To leave here, you need to move forward far enough, which will take you to [Level 169](trimmed__level-169--2f6d06e3.md).

# Addenda

### Addendum A1: Diary Discovered Within Level 308

**Day 1**  
Dear diary, I am truly unfortunate today. I just wandered around Level 46 and came to this damn place. It's very hot here, and the air is also very dry. I am very thirsty now, but the water in my water bottle is already empty. To be honest, I really don't remember pouring or drinking it, maybe I made a mistake? I don't know what to do now, I can only hope to find the exit soon.  
**Day 2**  
Dear diary, not only did I fail to find the exit today, but I also lost my backpack. It was blown away in the strong wind just now. I tried to look for it everywhere, but couldn't find it. It may have been buried under the sand. My luck is really bad. I lost a lot of things. I think I will make a list of them so that if anyone else at this level can find them, I can retrieve them.

- A pen.
- Two empty water bottles with a capacity of 500 milliliters.
- A laptop computer.
- A bag of seeds.

  
It is currently speculated that the author of this diary has died at **Level 308**.

|  |
| --- |
| **From:** M.E.G. Database Manager |
| **To:** Daisy |
| **Subject:** Re: New Level |

Well, this Level is to be assigned Level 308. Please note your findings as soon as possible. Your document has been approved and saved as a temporary document. But before it is mounted as an official document on a public database, we need to verify whether the content described in the document is true. Due to the danger of this level, it may take a long time. Please be patient and wait for further emails.

- M.E.G. Database Manager

|  |
| --- |
| **From:** Daisy |
| **To:** M.E.G. Database Manager |
| **Subject:** Re: Re: New Level |

Sure.

- Daisy

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

|  |
| --- |
| **From:** M.E.G. Database Manager |
| **To:** Daisy |
| **Subject:** About Level 308 |

I'm sorry for keeping you waiting for a full four months before sending you this email again. After our exploration, we found that the real environment of Level 308 differs significantly from what you have recorded. However, due to the correct entrance, we believe that the overall environment of Level 308 has changed during this period, rather than you providing false information. In short, we will overwrite your file with a new file based of off what we have discovered about Level 308. Thank you for your contribution.

- M.E.G. Database Manager

|  |
| --- |
| **From:** Daisy |
| **To:** M.E.G. Database Manager |
| **Subject:** Re: About Level 308 |

So you're saying that the environment of Level 308 has undergone significant changes in just four months? This is really unbelievable. What has it become?

- Daisy

|  |
| --- |
| **From:** M.E.G. Database Manager |
| **To:** Daisy |
| **Subject:** Re: Re: About Level 308 |

It's difficult to explain this clearly in an email. Simply put, the environment at Level 308 has been changed a lot. The environment has actually significantly improved: Plants have grown here, and have formed an oasis near the entrance. For more information about the current state of level 308, please refer to the new version of the document.

- M.E.G. Database Manager

  
  
  
  
  

This page has a new version, click [here](index.md) to update.

---

[[+] Author](javascript:;)

[[-] Author](javascript:;)

Written by .  
Critics:  
  
*MisterNemu* does not match any existing user name  
  
Robert on Discord

« [Level 307](level-307.md) | Level 308 | [Level 309](level-309.md) »

Footnotes

[1](javascript:;). Research shows that every plant in Level 308 has a root depth of over 20 meters.

[2](javascript:;). The deeper you dig, the more moisture is found in the soil.

---

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Level 308 - "Life Force"](level-308.md)" by I\_am\_a\_dragon, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/level-308](level-308.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/level-308">Level 308 - "Life Force"</a>" by I\_am\_a\_dragon, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/level-308">https://backrooms-wiki.wikidot.com/level-308</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** The Desert  
> **Author:** annewesterhoven on Pixabay  
> **License:** [CC0](https://creativecommons.org/publicdomain/zero/1.0)  
> **Link:** <https://pixabay.com/zh/photos/desert-air-drought-1712090/>

> **Name:** The Oasis  
> **Author:**   
> **License:** CC BY-SA 3.0

> **Name:** Life  
> **Author:**   
> **License:** CC BY-SA 3.0

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/level-308](https://backrooms-wiki.wikidot.com/level-308)
