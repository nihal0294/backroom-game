---
title: "Level 682 - \"Suspicion by Suspicion\""
source: "https://backrooms-wiki.wikidot.com/level-682"
retrieved_at: "2026-08-23T23:37:07+00:00"
license: CC-BY-SA-3.0
---

# Level 682 - "Suspicion by Suspicion"

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

  
  

"We suffer more often in imagination than in reality."

- Seneca

  
  
  
  

# Notice

The information in this document comes from multiple sources. For the convenience of identification and organization, the M.E.G. is currently using **PARENT** to mark officially organized information and **FRAGMENT** to mark fragmented records.

![Meglogo](http://natedagreat563.wdfiles.com/local--files/storage-unit/Meglogo)

  
The M.E.G. Database

  
  
  
  
  

# Level 682

#### Suspicion by Suspicion

---

## ⓘ PARENT I

SURVIVAL DIFFICULTY:

4

- {$one}.
- Multiple Hazards.
- Potential for Anomalous Entities.

![{$alt}](https://scp-sandbox-3.wdfiles.com/local--files/dragon-images/682-1)

A small path in **Level 682**, leading to Base "Observers."

**Level 682** is an evergreen coniferous forest that is locked in an oppressive dusk. Although it is at dusk, there is no visible sun in the sky in this level. Dark orange light will be cast into the forest from every direction. The ground of **Level 682** is filled with spongy lichens, like a fluffy carpet. They can muffle all sound of footsteps of wanderers, thus creating a suffocating silence. This silence breaks only when some abnormal phenomena occur in this level. The atmosphere of **Level 682** has a unique smell of disinfectant mixed with the faint smell of welding metal. The origin of these odors has been a mystery, and it is speculated that they may be a by-product of large mechanical operation.

The strategic value of **Level 682** comes with extremely high risk. According to the report sent back by the exploration team, abundant iron and rare earth deposits were found in the level. More importantly, a number of clear blueprints of advanced weapons and equipment were scattered throughout the forest. These findings are enough to drive any organization to establish a long-term base here. However, the environment of **Level 682** is full of persistent unexplained phenomena, which pose a serious threat. This forces the three major organizations to establish highly militarized outposts[1](javascript:;) here. The following are the anomalies of **Level 682** observed by the [M.E.G.](the-m-e-g.md):

- People in **Level 682** sometimes hear a regular low-frequency vibration and roar, whose acoustic characteristics are highly consistent with the activities of large drilling platforms or heavy tracked vehicles.

- All remote communications will be subject to powerful and unnatural full-band pulse interference. It seems to be able to accurately suppress the voice channel and inject unsettling audio signals. This seriously hindered the radio communication and led to many reconnaissance teams' departure from the route due to communication interruption, and they finally disappeared.

The analysis department of the M.E.G. believes that there exists an intangible entity cluster that may possess a hive mind in **Level 682**, temporarily named the Phantasm Network. The entity exhibits a high degree of malice and tactical purpose, aiming to systematically paralyze communications and mentally break down intruders, thereby isolating and hunting down targets. In response to the threat of the Phantasm Network, the M.E.G. has deployed a large interference array near the base 'Observers,' attempting to completely block the entity's influence in an area.It is not a typical offensive electronic warfare device but a system used for defense. Its functions include shielding electromagnetic waves in specific frequency bands and scattering visible light to dim it. In addition, all patrol teams are required to be equipped with short-range bone conduction communicators and have been trained in extreme electronic warfare environments.

The behavior of other organizations may indicate the presence of other harmful entities within **Level 682**: the [U.E.C.](the-u-e-c.md) base "Echo" claims that their cameras captured bulky metal armor, while thermal imaging showed a huge high-temperature mass, which may explain the base's automatic turrets and a large number of unidentified electronic devices. Meanwhile, the continuous projection of light from the [B.N.T.G.](the-b-n-t-g.md) base "Lighthouse" in the distance also suggests that they may be confronting another threat. Due to the existence of the Phantasm Network, reliable long-distance communication has become impossible. So all parties are now in a state of information isolation, each facing a crisis as they perceive it.

  
  

## ⓘ FRAGMENT I

# <File Number: L-682-01>

**Title:** The M.E.G. Patrol Team "Boomerang" Mission Record

**Record date:** 03/03/2050

**Source:** Audio recording clip from a report of the M.E.G. patrol team "Boomerang" on a mission in **Level 682**. The team went missing after [Redacted].

---

<Recording begins>

**A team member:** You're breaking up. The static's too bad. I mean, is there really a 'Phantasm Network' in this damn place? Sounds like a ghost story they use to scare new recruits.

**The Captain:** Don't take it lightly. Our sensors won't lie. Abnormal readings have been recorded again - it's that kind of vibration again, coming from the west, a bit like a large drilling rig.

**A team member:** Look to the east! The lighthouse of B.N.T.G. just flashed. It's too bright, like something exploded.

**A team member:** Is it like this again? Every time something goes wrong on their side, soon there will be gunfire coming from the U.E.C. side. This coincidence is too frequent.

**The Captain:** Focus on our own tasks and don't get distracted. There are reportedly more than one monster in this forest.

**A team member:** However, before team "Ship" went missing last time, the last news also said that they saw the lights of the B.N.T.G. flashing and heard the gunfire of the U.E.C. There must be a connection between this.

**The Captain:** Perhaps there is. But our communication is so bad that it cannot be verified.

(A low, rhythmic roar can be heard in the background, from far to near.)

**A team member:** Damn it! It's here again! This time it's even closer!

**The Captain:** All on alert! Pay attention to the heat signal and sound source, and record all data!

**A team member:** Is this really just the 'Beasts'? Or… or something else?

(The record was interrupted here by an extremely sharp static noise, like many people whispering at the same time, and then the signal was completely lost.)

<Recording ends>

---

**Note:** This record confirms the presence of various abnormal phenomena within **Level 682**. However, due to the information isolation, it is impossible to determine the correlation between these phenomena. The speculation of the team members in the record is a reasonable assumption under pressure, but it is not sufficient as evidence. Archived for further analysis.

  
  

## ⓘ PARENT II

As mentioned earlier, the three main organizations have established highly armed bases in **Level 682**. This section will introduce them one by one. It should be noted that due to the ongoing interference of the Phantasm Network and some well-known diplomatic reasons, most of the information about the bases of the U.E.C. and B.N.T.G. comes from direct observation and signal interception by the M.E.G. The information may be incomplete or inaccurate.

![logo](http://scp-sandbox-3.wdfiles.com/local--files/dragon-images/logo)

#### The M.E.G. Base "Observers"

- This is the only base of M.E.G. in this level. Its primary objectives are:
  - Maintain existence and protect the resource points claimed by the M.E.G.
  - Research and resist the threat of the Phantasm Network.
  - Monitor the activities of other organizations.

- The base operates a large signal interference array aimed at creating a safe zone free from the influence of the Phantasm Network. This array requires continuous maintenance, and its operation periodically causes slight distortion and dimming of light in the surrounding areas.

- All external patrols use short-range bone conduction communication.

![EUC%20%282%29.png](https://backrooms-wiki.wdfiles.com/local--files/the-u-e-c/EUC%20%282%29.png)

#### The U.E.C. Base "Echo"

- This base is heavily guarded, with dense automated defense turrets and electronic warfare facilities deployed around it. These devices release purely aggressive electromagnetic pulses aimed at directly damaging electronic devices without affecting visible light and other things. The M.E.G. monitoring department once intercepted internal communication clips, mentioning internal terms such as the 'Steel Beasts' and the 'Excavation Sound.'

- Its behavior pattern is believed to be a sustained defense against a type of entity with significant physical threats. There was no formal contact between the two sides, and the U.E.C. fired shots at the M.E.G.'s attempts to approach.

![logo.png](https://backrooms-wiki.wdfiles.com/local--files/the-b-n-t-g/logo.png)

#### The B.N.T.G. Base "Lighthouse"

- This base operates at an unusually high intensity. Its most notable feature is a series of massive searchlights powerful enough to burn human retinas, causing temporary blindness and serious light pollution.

- Limited contact with B.N.T.G. personnel shows that they frequently complain of an entity known as the 'Shadow' or the 'Devourer,' which they say devours lights and steals supplies. They are highly secretive about the details of their activities within **Level 682**.

- Some evidence suggests that they dispatched mechanized teams to patrol extensively throughout the entire level. Team members form a formation around 2-3 heavily armored transport vehicles.

Currently, three organizations have been drawn to **Level 682** for its strategic resources, yet each faces its own anomalous threats. That forces them to undertake expensive defenses. The situation remains precariously balanced. Each organization is focusing its efforts on countering the primary threat it identifies, and there are no clear signs of hostile intent between the organizations. However, a small minority believes that the bases' defensive measures themselves have become a new risk.

  
  

## ⓘ FRAGMENT II

# <File Number: L-682-02>

**Title:** Internal logs of the Base "Observers"

**Record date:** 08/03/2050

**Source:** Excerpt from the security memo of Base "Observers".

---

- Entry 1101
  - **Content:** The base received a strong directional electromagnetic pulse. The incident caused all arrays in the area to be paralyzed for two hours. The interference characteristics match the known attack patterns of the Phantasm Network, but the intensity is three times higher than before.
  - **Action:** Personnel have been dispatched to maintain, and their status is being closely monitored.

- Entry 1102
  - **Content:** The sensor detected a continuous explosion and firing sound from the direction of the U.E.C. Base "Echo," lasting for about 15 minutes. Almost simultaneously detected data similar to landslides. Their defense system may be launching an attack on the 'Steel Beasts.'
  - We have applied to the headquarters for additional earthquake monitoring devices to better monitor entity activities from the U.E.C. direction.

- Entry 1103
  - **Content:** The B.N.T.G. Base continuously emitted a heavy engine roar throughout the night. At the same time, the eastern area of our interference array malfunctioned due to overload, and before the malfunction, it was recorded that the area was continuously illuminated by strong light.
  - **Analysis:** The activities of the B.N.T.G. may have indirectly damaged our defense. Their actions are having a negative impact on us. ​

- Entry 1104
  - **Content:** Some sensors display several moving high-temperature heat sources in their thermal imaging during strong light periods. Its acoustic signal matches that of a heavy-duty engine.
  - This data pattern overlaps with some of the features of the 'Steel Beasts' in the U.E.C.'s description. The current assumption is that the defensive patrol activities of the B.N.T.G. may have inadvertently attracted the beasts. Further observation is needed, and this uncertain information will not be used as evidence for negotiations with the U.E.C. at this time.

- Entry 1105 Commander's Note
  - The threats in **Level 682** are increasing synchronously. Is there a connection between the Phantasm Network, the Steel Beasts, and the Devourer that we do not yet understand? Folklores might not be groundless. We must prepare for the worst.

  
  

## ⓘ FRAGMENT III

# <File Number: L-682-03>

**Title:** Attempt to Establish Contact with Base "Lighthouse"

**Record date:** 15/03/2050

**Source:** M.E.G. Liaison Hass' Notebook

---

**15:22**  
I tried calling B.N.T.G. "Lighthouse" again on the emergency longwave channel. Static noise is more severe than before, as if something is intentionally causing electronic interference. What is the purpose of blocking our communication?

**15:24**  
Finally there's a response! A person who claimed to be the 'Foreman' had an intermittent voice and was panting heavily. The situation sounds dire. He mentioned something called the Devourer, saying it can cause the darkness to devour everything. Their strong searchlights seem to only anger it.

**15:25**  
I asked him if he had experienced the Phantasm Network's attack. His answer was unexpected. He said what they encountered was not electronic interference and hallucinations, but silence. The sound disappeared first, and then darkness surged in. He also mentioned the artillery fire of the U.E.C. He said that they may be the cries of the Devourer, as their personnel always disappear in these sounds. The B.N.T.G. are conflating the two; it seems their understanding is severely compromised.

**15:26**  
The tone of the 'Foreman' became urgent. He refused to answer my other questions and repeatedly asked me if there was a way to deal with the Devourer. Just as I was about to respond, the communication channel was completely torn apart by an unprecedented sharp noise. Signal loss, unable to reconnect.

**16:00**  
This contact confirms that the B.N.T.G. is also facing a threat beyond their comprehension. The information they possess is vastly different from ours, making direct communication ineffective. I recommend that headquarters organize a conference outside of **Level 682**. We have to share our findings.

  
  

## ⓘ PARENT III

#### The First Interorganizational Meeting about Level 682

---

**Date:** 18/03/2050

**Location:** Level [Redacted]

**Participating parties:**

- The representative of the M.E.G., code-named "Telescope."
- The representative of the U.E.C., code-named "Sentinel."
- The representative of the B.N.T.G., code-named "Trader."

**Status:** Ended. No consensus was reached.

**Details:**

**"Telescope":** Let's get straight to the point. From the data perspective, the situation in **Level 682** is getting out of control. Threats are not independent; they are interconnected. The Phantasm Network we are facing is an entity that can identify weak points in our communication system, inject junk data, and cause our team members to have illusions. Now, let's go around the room. Please share what you have encountered and whether similar situations have occurred to us.

**"Trader":** Illusion? We hope it's just an illusion! When darkness flows like living creatures, trapping people in a silent and unlit corner, our only response is to turn the searchlight of the Base 'Lighthouse' to its brightest and send out fully armed teams. This is the defensive measure we must take to deal with the Devourer.

**"Sentinel":** However, "Trader," your glaring "defensive measures" have become the countdown to our defense line being attacked. We have a solid record: every time your light intensity reaches its peak, my seismic sensor will capture rhythmic vibrations fifteen minutes later, heading straight towards the Base "Echo." On thermal imaging, there is a huge and blurry heat source signal. My soldier reported hearing metal friction and a low growl. This must be the Steel Beasts being attracted by your light! We have no other choice but to use all military means, such as artillery fire and electronic warfare, to confront.

**"Telescope":** (quickly recording by hand) "Strong light as a clear trigger… rhythmic vibration…" This confirms our hypothesis that there may be a causal chain between different phenomena. Did you observe the Steel Beasts releasing electromagnetic bursts during the response process, "Sentinel"? Or did your people create it? This is usually seen as an action by the Phantasm Network, and we have to turn on the interference array to its maximum power in order to cope. This may absorb some light, and other specific side effects have not been systematically studied yet.

**"Trader":** (interrupted) What happened after the electromagnetic burst was worse than it was. We have already said many times that all sounds are first dried out, and then the light begins to decay, as if it is being sucked away by something. Your defense against the Phantasm Network is like clearing the battlefield for the Devourer!

**"Sentinel":** A perfect closed loop. Three things: one attracts monsters, one provides cover, and the real killer reaps in silence. We must now concentrate our efforts to eliminate the Steel Beasts and break the most obvious link in this chain!

**"Telescope":** According to my model, this is a sensitive symbiotic system! Any attack from either side could trigger a chain crash of the entire system! What we need is precise suppression…

**"Trader":** When darkness devours us, we must make light brighter! We have no way out!

(The meeting room fell silent. The statements of the three representatives seem impeccable, based entirely on their own observational facts.)

---

  
  

## ⓘ FRAGMENT IV

# <File Number: L-682-04>

**Title:** Folklore about the 'Beast of Suspicion.'

**Record date:** 20/03/2050

**Source:** A damaged audiotape. Found in the forest of Level 682, recording an old man's monologue. The recording equipment model is outdated and not the M.E.G. standard.

---

<Recording begins>

(continuous tape wear and tear sound)

"Where did I talk about last time? I remember the last time I finally mentioned the appearance of the 'Beast of Suspicion,' right?"

"Then I'll continue telling this story."

"At this moment, three heroes arrived in the forest, vowing to eradicate the terrifying 'Beast of Suspicion.'"

"All three heroes possess extraordinary abilities."

"The first hero possesses extraordinary power. He can easily shake trees and rocks. He believes that as long as he is stronger than all threats, he can physically defeat them."

"The second hero possesses advanced senses and the ability to create darkness. His way of fighting is to first hide himself in the darkness and observe everything, and then launch a decisive attack when everything about the monster is completely seen through by himself."

"The third hero is capable of emitting strong light and making loud noises. He believed that doing so could make the monster afraid, and then he could eliminate it when it escaped."

"They heard the prophecy that the 'Beast of Suspicion' would transform into their most feared form. So, the three heroes decided to join forces."

"Because the first hero was afraid of stronger forces, he believed that the monster would definitely transform into something even stronger than him. He flattened many irregular trees and rocks, launching attacks on everything he thought might be stronger than his own."

"The second hero, as usual, hid in the darkness to observe the situation and tried his best to use his senses to search for the monster's tracks. He has always been afraid that something might interfere with his observation."

"The third hero is afraid of the silent darkness and believes that monsters must be associated with this phenomenon. So he immediately emitted a strong light and made an extremely loud noise, walking around in an attempt to scare off the monster."

"The creatures of the forest were crying and fleeing. The three heroes heard their cries, and they became even more convinced of the existence of the 'Beast of Suspicon.' The thick fog of the forest made it impossible to see anything, so they attacked in the direction they felt was dangerous…'

(Blank tape sound, lasting for a period of time.)

<Recording ends>

---

**Note:** Folklore's content is becoming increasingly unsettling. The recorded content has a strong metaphorical color, but lacks empirical support. This document has been archived and classified as an informal, and is prohibited from being used as a basis for tactical decision-making.

  
  

## ⓘ PARENT IV

#### Preliminary Report on Major Accident - the 'Great Collapse'

---

**Date:** 28/03/2050

Confidentiality level

8

1. **Overview:**

At around 9:15 p.m. on March 28th, a chain reaction accident with the temporary code name the 'Great Collapse' occurred within **Level 682**. The accident resulted in severe overload and damage to the main interference array of Base "Observers," burying the main mining operation area of Base "Lighthouse," and the impact on the U.E.C. is still unclear. It can be confirmed that all three parties have suffered casualties and significant equipment losses. The specific cause of the accident is currently under investigation, and it is speculated that it is due to abnormal synchronous activity of multiple entities in **Level 682**.

2. **Event Sequence:**

**21:05:** The sensor detected an abnormal surge in light intensity in the direction of the B.N.T.G. "Lighthouse." Then it continues to maintain its peak, far exceeding the conventional level. At the same time, the monitoring channel captured urgent communication from B.N.T.G. personnel regarding the "Devourer's Comprehensive Attack."

**21:10:** Extremely strong and sustained low-frequency vibrations are transmitted from the direction of Base "Lighthouse." Analysis suggests that this is a large-scale response of the 'Steel Beasts' to abnormal lighting.

**21:13:** In response to an unprecedented impact, the U.E.C. "Echo" has activated its strongest level of electronic warfare system.[2](javascript:;)

**21:15:** The interference array of Base "Observers" was overloaded due to the inability to simultaneously handle the existing interference from the Phantasm Network and the newly generated electromagnetic pulses from the U.E.C., resulting in detonation and loss of all functions. The severe distortion of ambient light was recorded before the array failed.

3. **Conclusion and Suggestions:**

- The failure of the array directly exposes the Base "Observers" to the influence of the Phantasm Network, posing a serious threat to communication and personnel mental safety. The defense capabilities of the U.E.C. and the B.N.T.G. have also been significantly weakened. At present, any abnormal activity within the level may cause a fatal blow to the three parties.

- The abnormal phenomenon within **Level 682** has formed a tightly coupled hazardous system. It is recommended to immediately engage in secondary consultations with the U.E.C. and B.N.T.G. to establish a minimum crisis coordination mechanism to prevent similar incidents from happening again; otherwise, the survival of all parties will be difficult to sustain.

---

  
  

## ⓘ PARENT V

#### The Second Interorganizational Meeting about Level 682

---

**Date:** 30/03/2050

**Location:** Level [Redacted]

**Participating parties:**

- The representative of the M.E.G., code-named "Telescope."
- The representative of the U.E.C., code-named "Sentinel."
- The representative of the B.N.T.G., code-named "Trader."

**Status:** Ended. Reached a temporary joint action agreement.

**Reference Material:** Parent IV, Fragment IV.

**Details:**

**"Telescope":** (wearily) Data does not lie. The 'Great Collapse' proves that abnormal phenomena in this level have formed a cycle. Continuing to fight on their own, there is only one dead end.

**"Sentinel":** Data really doesn't lie; it tells us who started all of this first! Every time, it was the damn B.N.T.G.'s extraordinary light that led the beasts towards my defense line. My subordinates are defending themselves!

**"Trader":** Huh? Your 'self-defense' burns down the control systems of my three main mining machines! That's too ridiculous. I'm not sure if there are any 'Steel Beasts,' but we turned on the lights to prevent the 'Devourer' from dragging us into the silent abyss like those missing teams.

**"Telescope":** Calm down! It's now meaningless to argue who is responsible for this. We are like three people who are back-to-back, each facing an invisible enemy in the darkness. However, our bullets hit each other's backs. I… I have an immature guess. Is it possible that what we encounter is not an independent entity but rather some reactive objective law in **Level 682** itself?

**"Sentinel":** Are you saying that the thermal imaging signals my soldiers saw were collective hallucinations? This kind of speculation cannot save anyone. I think these abnormal phenomena may be traps deployed by the M.E.G. to eliminate us. This is also a possible situation, right?

**"Telescope":** OK. So based on the premise that they truly exist, our only way out is to take action before their next coordinated attack completely destroys us. We need to unite.

**"Sentinel":** How to unite? My turret needs clear target parameters, not to waste ammunition on the ghost and the shadow you described.

**"Trader":** We need the maximum range of lighting. But if the U.E.C.'s artillery fire damages my equipment again during the operation…

**"Telescope":** So we need the simplest protocol. Not involving complex command chains, only agreeing on time and basic identification of friend-or-foe signals. For example, we designate a core area. At time A, Base "Lighthouse" is responsible for providing global illumination, Base "Echo" is responsible for clearing all large moving targets that appear under illumination, and I am responsible for monitoring the electromagnetic environment and conducting targeted suppression during abnormal activity in the Phantasm Network.

**"Telescope":** This is currently the only feasible solution. We will set the action time in 10 days. During this period, all parties should repair the most critical defensive systems but recognize that our overall capabilities are far less than they were before the 'Great Collapse.' I will immediately write a paper version of the plan, and if you agree, please sign your names.

(The representatives signed the agreement, and the meeting ended.)

---

#### Attachment A: Key Points of Temporary Agreement

---

**Objective:** Conduct a one-time joint firepower clearance of phenomena identified as abnormal entities within **Level 682**.

**Date:** 10/04/2050

**Core Action Area**: The area near the three bases is the core action area.

**Division of the Action:**

- **The B.N.T.G.:** Starting from time A, increase the power of the lighthouse and all mobile lighting equipment to maximum and continue to illuminate the core action area.
- **The U.E.C.:** After the lighting is turned on, perform saturation strikes on all targets within the area that have not been recognized as friendly units.
- **The M.E.G.:** Monitor electromagnetic signals throughout the process. If the characteristic signal strength of the Phantasm Network exceeds the threshold, immediately activate all interference arrays for countermeasures.

**Identification Method for Friendly Units:** Each unit applies reflective materials of specific frequencies on vehicles and personnel equipment as temporary identification.

**Validity of the Agreement:** This agreement is only applicable to this action and will automatically become invalid upon completion of the action. It does not constitute any form of long-term alliance.

---

  
  

## ⓘ FRAGMENT V

# <File Number: L-682-05>

**Title:** UNTITLED

**Record date:** 10/04/2050

**Source:** A severely damaged audio clip was intercepted, which follows the general encryption mode of the M.E.G.

---

<Recording begins>

**[Unknown]:** Base 'Lighthouse' has provided lighting according to the agreement! Repeat, the Lighthouse is lit up! Good visibility in the area…

**[Unknown]:** Wait… Something's wrong! My goggles have exploded in reading. Damn it, this is not lightning at all; it's an attack! Why is the target the array here?

**[Unknown]:** They fired! They are shooting towards the direction of the light source!

**[Unknown]:** (screaming) Run! We have been locked in by artillery fire!

**[Unknown]:** …incredible…

(long beeping sound caused by equipment damage)

<Recording ends>

---

**Note:** UNNOTED

# <File Number: L-682-06>

**Title:** UNTITLED

**Record date:** 10/04/2050

**Source:** A severely damaged audio clip was intercepted, which follows the general encryption mode of the U.E.C.

---

<Recording begins>

**[Unknown]:** The fucking beasts! We are facing the enemy head-on! There are too many, and the thermal imaging shows a deep red color! They are charging against our artillery fire!

**[Unknown]:** Activate electronic warfare facilities immediately!

**[Unknown]:** (shouting loudly) The facility has been disrupted! It's an electromagnetic pulse! They are prepared too. All units, prioritize clearing interference sources!

(the roar of structural collapse)

**[Unknown]:** (desperately) No! The turret has turned… It's attacking… It's attacking our own support channel…

**[Unknown]:** …the folklore…

<Recording ends>

---

**Note:** UNNOTED

# <File Number: L-682-07>

**Title:** UNTITLED

**Record date:** 10/04/2050

**Source:** A severely damaged audio clip was intercepted, which follows the general encryption mode of the B.N.T.G.

---

<Recording begins>

**[Unknown]:** All vehicles, turn on the lights at maximum power! The Devourer has arrived! I feel…

**[Unknown]:** The light is dimming! This speed is too fast!

**[Unknown]:** This is a normal situation. Immediately approach other friendly units!

**[Unknown]:** (screaming) Vibration! A huge vibration is coming from the direction of Base "Echo"! Ha, artillery fire and tracks? Are they coming towards us?!?

**[Unknown]:** (filled with confusion and anger) No! That silhouette… That's not an entity… That's…

**[Unknown]:** …it's coming true…

(The recording was drowned out by a terrifying sound like the crushing of a huge thing.)

<Recording ends>

---

**Note:** UNNOTED

  
  

## ⓘ PARENT VI

### Entrances

- The main way to enter **Level 682** is by no-clipping into the gray trees in [Level 129](level-129.md). They are usually easy to find.

- Walking along the dirt road in [Level 135](https://backrooms-wiki.wikidot.com/level-135) may also lead wanderers to **Level 682**.

### Exits

- Entering a tree hole, when you come out again, you will find yourself at [Level 47](level-47.md). However, this method may have become ineffective, as there have been no reports of leaving **Level 682** using this method since April 10th.

  
  

Footnotes

[1](javascript:;). The M.E.G. outpost "Observers", the B.N.T.G outpost "Lighthouse" and the U.E.C. outpost "Echo".

[2](javascript:;). The characteristics of this system have not been fully understood, but its behavior pattern shares many similarities with the Phantasm Network.

Did you see that? Those thick smoke. They are still fighting.

Of course.

To be honest, I still don't understand why this is the case.

I don't understand either. The truth behind Level 682 is already as unclear as the true ending of the story of the 'Beast of Suspicion'.

But one thing is certain.

Suspicion by suspicion, the trust ultimately collapses. This is how they viewed each other.

Perhaps, we are also like that.

---

« [Level 681](https://backrooms-wiki.wikidot.com/level-681) |   **SUSPICIONS**   | [Level 683](level-683.md) »

[[+] Author](javascript:;)

[[-] Author](javascript:;)

Written by .

Critics:  
  
*MisterNemu* does not match any existing user name

Greenlighted by the contest.

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Level 682 - "Suspicion by Suspicion"](level-682.md)" by I\_am\_a\_dragon, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/level-682](level-682.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/level-682">Level 682 - "Suspicion by Suspicion"</a>" by I\_am\_a\_dragon, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/level-682">https://backrooms-wiki.wikidot.com/level-682</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** Forest Trees Road Street Avenue  
> **Author:** Pixabay  
> **License:** [CC0](https://creativecommons.org/publicdomain/zero/1.0)  
> **Link:** <https://pixabay.com/photos/forest-trees-road-street-avenue-1598756/>  
> **Note:** Edited by

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/level-682](https://backrooms-wiki.wikidot.com/level-682)
