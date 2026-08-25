---
title: "Level 323 - \"Island Use Policy\""
source: "https://backrooms-wiki.wikidot.com/level-323"
retrieved_at: "2026-08-23T23:40:20+00:00"
license: CC-BY-SA-3.0
---

# Level 323 - "Island Use Policy"

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

|  |  |
| --- | --- |
| Level 323 - "Island Use Policy" | rating: +27[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")     Info  Author:   Thank you to these people:  Critics: ,,,,,  cleared it.  [Close](index.md) |

# This Page is Currently Being MODIFIED >:(

This may be due to significant changes in the nature of the level/entity/object described on this page, or excessive errors or omissions in previous records. If you have any questions about this, please e-mail moc.liamkcab|evihcragem#moc.liamkcab|evihcragem. We apologize for any inconvenience caused to you!

I haven't checked the database for a few days, and I didn't expect those guys to delete those archived files. Fortunately, I have administrator privileges to restore those files to the database.

- Anonymous User

  
  
  
  

**File "L32300090524.PDF"**

SURVIVAL DIFFICULTY:

habitable

- {$one}.
- {$two}.
- {$three}.

**Level 323** is a recently discovered level. Due to its comfortable climate and abundant resources, it is marked as "habitable" in the database.

---

# Description

---

![Missing alt text.](https://scp-sandbox-3.wdfiles.com/local--files/dragon-images/323-1)

A smaller island.

**Level 323** is a vast ocean with a large number of small and medium-sized islands located in close proximity. At present, it is believed that the islands in **Level 323** are all products of submarine volcanic eruptions, as they are mainly composed of basalt, and an exploration of the seabed has shown the existence of volcanic craters about 100 feet below the water surface. All volcanoes in the current **Level 323** are dormant or extinct, so new islands are not considered to form.

**Level 323** has a comfortable tropical climate. Depending on the island, the temperature in **Level 323** ranges from 22 degrees to 30 degrees Celsius. This level also rarely experiences severe weather; Usually, the wind speed in this level does not exceed five meters per second. Precipitation is mainly in the form of showers, usually very mild, and does not last long or transform into thunderstorms. This climate also makes the waters of **Level 323** very calm, which can be used for various activities.

**Level 323** has a stable day-night cycle. Its cycle is almost the same as the day-night cycle in the Frontrooms, about 25 hours, of which 15 hours are daytime and 10 hours are nighttime. When night falls, the temperature within the level will decrease by 1-3 degrees Celsius, and environmental noise will also significantly decrease. So, wanderers who fall asleep in **Level 323** have better sleep quality, and some insomnia patients have also been cured in **Level 323**.

There are no signs of intelligent life on the islands of **Level 323**, but there are a large number of marine fish living in the ocean. These fish are non-toxic and can be consumed with simple cooking after fishing, making them an important food source. There are also a large number of edible plants (mainly coconuts and various wild vegetables) growing on the islands, which can serve as a stable source of vitamins.

In addition, **Level 323** has stable Wi-Fi throughout the entire level, and it has been proven feasible to establish stable connections with other levels through them.

---

# Bases, Outposts & Communities

---

Not yet, but due to the habitable nature of **Level 323**, it is recommended to establish a base, outpost, or community in this level.

---

# Entrances & Exits

---

### Entrances

- Continuously sailing for several kilometers through the ocean in [Level 48](level-48.md) will eventually reach **Level 323**.

- Real islands occasionally appear in [Level 422](level-422.md). Once you board them, you will arrive in **Level 323**.

- Lost in a storm in [Level 711](level-711.md), there is a big probability of reaching **Level 323**.

### Exits

- The above entrances are also stable exits.

  
  
  
  

**File "L32300090724.PDF"**

|  |
| --- |
| **From:** moc.liamkcab|32104ylil#moc.liamkcab|32104ylil |
| **To:** moc.liamkcab|eucsergem#moc.liamkcab|eucsergem |
| **Subject:** Level 323 |

---

Hello,

I am Lily, a wanderer residing on Island 243 in Level 323. I recently noticed some unusual situations in Level 323: the seawater in an area between Island 234 and Island 246 changed from blue to green within two days. I suspect this is an unrecorded anomaly, and I hope the M.E.G. can investigate this matter to ensure the safety of residents within the level.

- Lily

---

|  |
| --- |
| **From:** moc.liamkcab|eucsergem#moc.liamkcab|eucsergem |
| **To:** moc.liamkcab|32104ylil#moc.liamkcab|32104ylil |
| **Subject:** Re: Level 323 |

---

We have understood the situation you have reported and it has been confirmed by our personnel in Level 323. We will investigate the cause of this phenomenon as soon as possible. If the phenomenon is hazardous, the M.E.G. will dispatch rescue personnel to Level 323 to ensure the safety of every wanderer.

- M.E.G. Emergency Response Department

---

|  |
| --- |
| **From:** moc.liamkcab|32104ylil#moc.liamkcab|32104ylil |
| **To:** moc.liamkcab|eucsergem#moc.liamkcab|eucsergem |
| **Subject:** Re: Re: Level 323 |

---

Thanks.

- Lily

---

  
  
  
  

|  |
| --- |
| **From:** moc.liamkcab|eucsergem#moc.liamkcab|eucsergem |
| **To:** moc.liamkcab|32104ylil#moc.liamkcab|32104ylil |
| **Subject:** Findings |

---

Hi,

We have investigated the cause of the abnormal change in seawater color reported by you. After investigation, it was found that there is a factory established by personnel from the B.N.T.G. on Island 238, and the change in seawater color is caused by the factory discharging wastewater into the sea during production, rather than a Backrooms phenomenon.

- M.E.G. Emergency Response Department

---

|  |
| --- |
| **From:** moc.liamkcab|32104ylil#moc.liamkcab|32104ylil |
| **To:** moc.liamkcab|eucsergem#moc.liamkcab|eucsergem |
| **Subject:** Re: Findings |

---

Thank you to the M.E.G. for taking the situation I have reported seriously. Now I want to know what measures you plan to take to solve it? Currently, most residents living in Level 323 believe that this factory will affect the ecosystem of that level and cause harm to people's health.

- Lily

---

|  |
| --- |
| **From:** moc.liamkcab|eucsergem#moc.liamkcab|eucsergem |
| **To:** moc.liamkcab|32104ylil#moc.liamkcab|32104ylil |
| **Subject:** Re: Re: Findings |

---

We have reached an agreement with the B.N.T.G. They will withdraw the factory from Level 323 within a week, and we will provide appropriate resource compensation. Afterwards, we will establish a policy to determine who can settle in this level.

Please rest assured that we will not harm the interests of any wanderer within our jurisdiction.

- M.E.G. Emergency Response Department

---

  
  
  
  

**File "L32300090824.PDF"**

# Notice

In order to safeguard the interests of all **Level 323** residents and maintain the habitable environment for **Level 323**, after internal discussions within the M.E.G., it has been decided to establish the Island Use Policy.

This policy requires personnel to report the future use of **Level 323**'s islands to the examiner designated by the M.E.G. before using them. After the their review, if they believe that you can fully utilize the natural resources of **Level 323**, you can establish facilities on the island. Here is a template for reporting:

\*\*Island Number:\*\* #  
\*\*Facility Type:\*\* (home, coffee shop, etc.)  
\*\*Detailed Description:\*\*

\*\*Possible Pollution:\*\*

In order to implement this policy, the M.E.G. has decided to establish a base (tentatively named "Holiday Resort") within **Level 323**. If there are any issues during the policy implementation process, please report to the base.

Finally, it should be pointed out that this is a requirement rather than a suggestion. If you attempt to bypass reporting and directly establish any form of facility at **Level 323**, it will be dismantled.

![Meglogo](http://natedagreat563.wdfiles.com/local--files/storage-unit/Meglogo)

  
M.E.G. Base "Holiday Resort"

  
  
  
  

**File "L32300090924.PDF"**

#Base "Holiday Resort"

Kevin20

Today 4:20 PM

@Reviewer Aiden (do not disturb) How is your work going?

Kevin20

Today 4:28 PM

?

Kevin20

Today 4:30 PM

@Reviewer Aiden (do not disturb)@Reviewer Aiden (do not disturb)

Reviewer Aiden (do not disturb)

Today 4:31 PM

Sorry for the late reply, I have been reviewing their reports all along. More than 10 people are ping me now :{

Kevin20

Today 4:31 PM

oh my god

Reviewer Aiden (do not disturb)

Today 4:31 PM

@Kevin 20 can't the M.E.G. send more people to be reviewers? i am so busy right now

Kevin20

Today 4:32 PM

Probably not. Shortage of manpower has always been an important issue we face. And obviously, the M.E.G. cannot allocate all the manpower to the reviewer position, as there are many other positions available.

Reviewer Aiden (do not disturb)

Today 4:32 PM

oh damn

Reviewer Aiden (do not disturb)

Today 4:32 PM

if i continue to work at such high intensity i will die in the office

Kevin20

Today 4:32 PM

i understand you very well, but reality is like that, and no matter how much you complain, you can't change it

Reviewer Aiden (do not disturb)

Today 4:35 PM

speaking of change, to be honest, this Island Use Policy does need some changes. it not only increased my workload, but also drove many wanders who wanted to settle here to other levels

Kevin20

Today 4:35 PM

so what do you want to do

Reviewer Aiden (do not disturb)

Today 4:36 PM

in my opinion, we can have residents within the level vote (by giving 0~5 stars) on the usage of each island.

Reviewer Aiden (do not disturb)

Today 4:36 PM

If the number of stars of an island is lower than a certain value, the facilities on that island can be dismantled.

Kevin20

Today 4:36 PM

oh great idea

Kevin20

Today 4:36 PM

what do you want to set this value to

Reviewer Aiden (do not disturb)

Today 4:36 PM

100 stars

Kevin20

Today 4:36 PM

what

Kevin20

Today 4:36 PM

how many residents are there in L323 now

Reviewer Aiden (do not disturb)

Today 4:36 PM

about 30

Kevin20

Today 4:37 PM

that's too little

Kevin20

Today 4:37 PM

Are you sure that each facility in L323 can reach 100 stars?

Reviewer Aiden (do not disturb)

Today 4:37 PM

It is certain that some facilities will be demolished. But this won't cause anything, because of the huge influence of the M.E.G., no one would dare to oppose it. And our base employees cannot refuse to dismantle these facilities unless they want to lose their jobs.

  
  
  
  

**File "L32300091024.PDF"**

# Notice

According to internal discussions within Base 'Holiday Resort', some changes have been made to the Island Use Policy to facilitate the development of Level 323 for wanderers. The specific changes are as follows:

- Anyone can construct facilities within Level 323 without reporting.

- Anyone can vote on the reasonableness of someone else's use of islands and rate it 0-5 stars.

- Facilities on islands that do not receive 100 stars within three days will be dismantled by M.E.G. personnel.

If you have any questions, please send an email to moc.liamkcab|02nivek#moc.liamkcab|02nivek.

![Meglogo](http://natedagreat563.wdfiles.com/local--files/storage-unit/Meglogo)

  
M.E.G. Base "Holiday Resort"

  
  
  
  

**File "L32300091224.PDF"**

|  |
| --- |
| **From:** moc.liamkcab|02nivek#moc.liamkcab|02nivek |
| **To:** moc.liamkcab|nedialanrete#moc.liamkcab|nedialanrete |
| **Subject:** {no subject} |

---

How did you come up with this terrible idea in the first place?! Three days have passed, but none of the facilities have reached the standard to avoid being demolished! Angry people curse and obstruct employees who come to dismantle facilities on every island!

- Kevin

---

|  |
| --- |
| **From:** moc.liamkcab|nedialanrete#moc.liamkcab|nedialanrete |
| **To:** moc.liamkcab|02niveK#moc.liamkcab|02niveK |
| **Subject:** Re: {no subject} |

---

Oh, no, this is too chaotic. We must do something. You should immediately go to the broadcasting station in the base and announce to the residents that the policy is abolished.

- Aiden

---

|  |
| --- |
| **From:** moc.liamkcab|02nivek#moc.liamkcab|02nivek |
| **To:** moc.liamkcab|nedialanrete#moc.liamkcab|nedialanrete |
| **Subject:** Re: Re: {no subject} |

---

This won't work anymore.

- Kevin

---

|  |
| --- |
| **From:** moc.liamkcab|nedialanrete#moc.liamkcab|nedialanrete |
| **To:** moc.liamkcab|02niveK#moc.liamkcab|02niveK |
| **Subject:** Re: Re: Re: {no subject} |

---

Why?

- Aiden

---

|  |
| --- |
| **From:** moc.liamkcab|02nivek#moc.liamkcab|02nivek |
| **To:** moc.liamkcab|nedialanrete#moc.liamkcab|nedialanrete |
| **Subject:** Re: Re: Re: Re: {no subject} |

---

Those idiotic employees have already dismantled our base because it only has 95 stars and no one is protecting it.

- Kevin

---

|  |
| --- |
| **From:** moc.liamkcab|nedialanrete#moc.liamkcab|nedialanrete |
| **To:** moc.liamkcab|02niveK#moc.liamkcab|02niveK |
| **Subject:** Re: Re: Re: Re: Re: {no subject} |

---

Damn. So what else can we do now?

- Aiden

---

|  |
| --- |
| **From:** moc.liamkcab|02nivek#moc.liamkcab|02nivek |
| **To:** moc.liamkcab|nedialanrete#moc.liamkcab|nedialanrete |
| **Subject:** Re: Re: Re: Re: Re: Re: {no subject} |

---

Nope. Nothing we can do. The M.E.G. will leave, all the files will be deleted, and everything we've tried to do amounts to nothing.

- Kevin

---

---

« [Level 322](https://backrooms-wiki.wikidot.com/level-322) | Level 323 | [Level 324](https://backrooms-wiki.wikidot.com/level-324) »

  

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Level 323 - "Island Use Policy"](level-323.md)" by I\_am\_a\_dragon, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/level-323](level-323.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/level-323">Level 323 - "Island Use Policy"</a>" by I\_am\_a\_dragon, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/level-323">https://backrooms-wiki.wikidot.com/level-323</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** Tropical Island With Lush Greenery And Blue Sea  
> **License:** CC0  
> **Author:** Photo by Ingo\_Joseph from Freerange Stock  
> **Link:** <https://freerangestock.com/photos/173090/tropical-island-with-lush-greenery-and-blue-sea.html>

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/level-323](https://backrooms-wiki.wikidot.com/level-323)
