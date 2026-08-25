---
title: "Phenomenon 12 - \"Botanicancer\""
source: "https://backrooms-wiki.wikidot.com/phenomenon-12"
retrieved_at: "2026-08-23T23:35:34+00:00"
license: CC-BY-SA-3.0
---

# Phenomenon 12 - "Botanicancer"

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

rating: +31[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

[Effect](http://backrooms-wiki-cn.wikidot.com/component:pls) - *Lv.4*

  

- Short Duration
- Low Frequency
- Irreversible Impact

Transforming

# Description

**Phenomenon 12**, commonly known as Botanicancer, happens in areas where man-made construction takes up more space than original buildings and local flora, which is the main reason why there is hardly any large base or settlement in nonarchitectural levels.

Botanicancer can affect both inner structures and outer walls of construction, wildly growing a variety of plants at an alarming rate, which will quickly cover every inch of the affected building and eventually replace every concrete or brick with roots and vines. During the early stage of Botanicancer, hundreds of green shoots crawl out of the wall like hungry worms. Then in a few minutes, leaves and buds sprout, and flowers bloom immediately after they appear. The overwhelming growth of plants continuing, leaves grow much wider and blossoms expand longer than regular plants. It all happens within less than an hour.

When the aggressive flora reach a certain scale, its growth slows down, leaving the building fully covered by toxic leaves and blossoms. If the people are not evacuated in time, they will be trapped by these plants. In the next few days, their destruction continue until the whole structure is completely ruined.

![Missing alt text.](http://backrooms-wiki.wikidot.com/local--files/phenomenon-12/House)

**Phenomenon 12** happening a few minutes ago, shot by the owner of the house.

![Missing alt text.](http://backrooms-wiki.wikidot.com/local--files/phenomenon-12/Road)

"Diseased" road. The plants have been removed.

The "diseased" construction usually collapses in a few days, leaving contagious plants spreading throughout the neighborhood. The only way to prevent their spread is to burn the remains as soon as possible. Once the vines reach another building, the same disaster happens all over again, and there is no way to stop botanicancer in the middle of its attack. However, since most of the plants have lost their energy then, it is less dangerous to take care of them.

It is unadvisable to approach those cancerous plants during the attack, not to mention to exterminate them. In fact, those plants always try to grasp any object they can reach to expand their territory as much as possible. If caught, vines will wind around wanderers' bodies and drag them into the twirling plant complex.

# Flora

**Phenomenon 12** happens with various kinds of plants growing, most of which resemble but differ from those in [the Frontrooms](the-frontrooms.md). They are harmful in many ways.

## Beasten Ivy

Beasten Ivy is the most common cancerous plant making up the body of the botanicancer flora. Like Boston Ivy, it is a woody vine with huge leaves, attaching itself to things like walls. But differently and more violently, it is natuarlly drawn to any object that can be wound up by it. Its unbelievable strength and growing speed make it almost impossible to escape once caught by it. Those who are not careful will be made a part of the flora in a nonhuman way.

## Siris

**Siris**, initially named Silencing Iris, is a kind of flower commonly seen during a botanicancer attack. It is believed to be capable of blocking certain types of information.

The most obvious situation it leads to is that wanderers fail to hear sound in the surroundings. When near a siris, it absorbs many kinds of waves in the air, excluding most of the electromagnetic waves like visible light. These sirises can somehow affect brain waves, making wanderers nearby stop thinking from time to time. With one's mind blank, it is much harder to escape from the disaster.

## Mourning Glory

As its name suggests, mourning glory mourns for the wanderers' death, or to be more accurate, feeds on their death. They immediately appear after someone is dragged into the complex of plants and then quickly decompose their bodies to imbibe nutrients from them.

## Great Buster

Great Buster refers to the entirety of roots inside walls of an infected construction. Contrary to common senses, these roots are not parts of a plant that convey water and nutrients, but an individual plant that grows as fast as Beasten Ivy does, squeezing and busting structures from inside.

# Human Infection

Some of those exposed to botanicancer flora and lucky enough to escape from it have come down with a strange disease, which is likely to be an infection from buildings to humans. To make a distinction, this disease is named Human Botanical Cancer, often abbreviated HBC.

The pathogenesis, the way HBC develops, is related to the extremely resilient seeds of botanicancer flora. It seems that those seeds can normally grow inside human bodies, slowly and painfully tearing apart one's organs and tissues.

*Notes taken by Dr. Elliot K. Miller, M.D. from [the M.E.G.](the-m-e-g.md), on symptoms of a HBC patient he treated.*

**Less than an hour after being infected**

The patient claims to suffer from headache, stomachache and bellyache. According to his description, he constantly feels his limbs and chest swelling from inside, and something squeezing their veins and organs. It cause slight but long-lasting pain.

---

**After 4~7 hours**

He starts to have trouble breathing, talking and swallowing. A few stems and leaves stretch out from his mouth, anus, ears, nose and even eyeholes. Some shoots sprout in the pores of the skin.

I've never seen any symptom like this before. It's mind-blowing and horrible to look at. I have to find out what it is.

---

**After 7~10 hours**

Leaves have covered his whole body. I heard a continual weak noise…… The poor guy's screaming out of pain but could barely utter a sound. It's getting worse, and I couldn't find a cure for this.

---

**After 10~15 hours**

It's both a miracle and a disaster that he's still alive. I could hardly tell he's an actual humam being. Roots tightly gripping the ground, he's now complete lost the ability to move. A tree…… That's what he became.

---

**After 15~19 hours**

I thought he had become a tree but it's just not that simple. He's still breathing. I can see it. The heartbeat…… He literally got every space in his poor body stuffed with plants. My goodness, what horrible pain! I have to do something right now.

---

**After 19~22 hours**

Simply cutting off the stems and leaves did not help. They grow so fast that it's impossible to conduct any operation. His breath was weakening. The last time I checked on him, his body is already cold and dead. I'm more than sorry……

# Cause

Unfortunately, **Phenomenon 12** is rather unpredictable, unstoppable and irreversible. The cause of this phenomenon remains debatable, with the most accepted statement being "the defence of the Backrooms".

Oddly enough, Botanicancer only infects construction built by wanderers while what consists the backrooms long before human beings set foot here is free of its threat, which many people believe is the way backrooms itself expel those who do not belong, which is *us*.

*A speech delivered at M.E.G. base alpha, by Dr. Elliot K. Miller, after his 2-year long battle with Botanicancer.*

[The humans](entity-1.md), the plague of backrooms, are cursed with [deadly euphoria](phenomenon-3.md), spied on by [avatars of darkness](entity-3.md), trapped in hells where homesickness can never be cured. Now that our hard-won sanctuary is once again shown on mercy to, we give in to backrooms' absolute might, which we wouldn't even dare to fight against.

We crawl back to that [endless city](level-11.md), a "home" backrooms arranged for us, sharing a place with creatures we fear, living under thumbs of a selfish god. It is a perfect clone of Frontrooms but nothing like home.

Our existence is detested. Our search for home is unpromising. Our shelters are torn apart. Our lives are at the risk of being taken away by unexpected attacks of literally any-goddamn-thing.

Despite our misery, the backrooms itself stays perfectly unchanged. The marching vines and roots, their cure yet our disease, forthwith wreck what's enthetic to them. On days like this, when we fail to find our way out of hell over and over, the birds are still singing and flowers keep blooming, silently killing hopes of humanity.

We come here with plagues. They treat us with cancer.

Fair enough, fair enough.

# Do’s and Don’ts

### Do

- Seek shelters in levels like [Level 11](level-11.md) where original construction can provide accommodations.
- Burn the remains immediately after botanicancer finishes its attack.
- Leave the building when botanicancer occurs.
- Keep constructions at a reasonabe size.

### Don’t

- Stay in buildings infected by botanicancer.
- Touch any part of a cancerous plant.
- Build large-scale architectural complex.

---

[Author(s)](javascript:;)

[Oh, it's a koala.](javascript:;)

**Author:**

**Image Source:**

> *"Phenomenon 12 happening a few seconds ago"*, originally by [Marwan Haidar](https://unsplash.com/@marwan_haidar), edited.  
> <https://unsplash.com/photos/2snwb48ZzvY>  
> Under Unsplash License.
>
> ---
>
> *"'Diseased' road. The plants have been removed."*, originally by [Colin Lloyd](https://unsplash.com/@onthesearchforpineapples), edited.  
> <https://unsplash.com/photos/D7jnhK1xFPU>  
> Under Unsplash License.

**CSS:**

- [PLS component](http://backrooms-wiki-cn.wikidot.com/component:pls) is from the CN site, made by .
- Heading style is made by GaplouelPew and edited by .

« [Phenomenon 11](phenomenon-11.md) | Phenomenon 12 | [Phenomenon 13](phenomenon-13.md) »

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Phenomenon 12 - "Botanicancer"](phenomenon-12.md)" by Eltrac, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/phenomenon-12](phenomenon-12.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/phenomenon-12">Phenomenon 12 - "Botanicancer"</a>" by Eltrac, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/phenomenon-12">https://backrooms-wiki.wikidot.com/phenomenon-12</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** Chicago at Fall  
> **Author:** Nicomachian  
> **License:** CC BY-SA 4.0  
> **Source Link:** <https://commons.wikimedia.org/wiki/File:University_of_Chicago_at_Fall.jpg>

> **Name:** Road damaged by flood  
> **Author:** Apelcini  
> **License:** CC BY-SA 4.0  
> **Source Link:** <https://commons.wikimedia.org/wiki/File:Road_damaged_by_flood.jpg>

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/phenomenon-12](https://backrooms-wiki.wikidot.com/phenomenon-12)
