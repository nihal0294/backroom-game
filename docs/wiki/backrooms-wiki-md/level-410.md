---
title: "Level 410 - \"A Perfectly Normal Estate\""
source: "https://backrooms-wiki.wikidot.com/level-410"
retrieved_at: "2026-08-23T23:34:57+00:00"
license: CC-BY-SA-3.0
---

# Level 410 - "A Perfectly Normal Estate"

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

rating: +40[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  
⚠️ Content Warnings ⤴

Info

includes descriptions of domestic violence  
emotional abuse and codependency  
dysfunctional ideals and ways of thinking  
arson and violence

written by to continue the anamnesis saga

[Close](index.md)

The night of my honeymoon is engraved in my mind: the incessant celebration, the congratulatory letters we sorted through for so many days after, and how the rose petals scattered on the floor leading to the bedroom were white.  
White roses are my favorite types of flowers, I sat thinking about how intentional they felt. *Naïvety is surely one of my most cunning traits, right?* A kiss on the cheek with the bread we baked from the little flour and yeast you earned, my hands moving from your hair to the buttons on your overalls ready for harvest, a glance from across the foyer that needed no sound yet filled with so many words I wanted to scream.  
I put up those chrysanthemums near the door as decoration since the day I moved in, a housewarming for my own house. Wilt. On every weekday from half past 9 I take 5 minutes to water the chrysanthemums on the side of the door.  
One petal fell on the Tuesday I forgot to water them, when the door shook violently and closed so hard the hinges creaked for weeks after, it fell on the oak table. Fiddling at the grilled parsnips, another petal fell. Raising your voice, some more four fell. By the time mon cœur laid his hands on me, when the slaps made my lips crack and bleed, there were no more petals left to wilt. All of them went with my warmth.

(Am I playing the part?)

Your warmth was like a painting. I should've framed it on the wall.

I see you in the countless stalks that stretch out and around our estate. The hat peering atop each sprout sowing my heart like the crops and grains scattered in the plots. The numbness my heart feels as it is sowed standing in the vastness of your love and the coldness of your touch is maddening. The disheveled look I give to the verdure as I look to my bruised hands and my dirtied fingernails is proof enough. The breeze feels cathartic on my face as it gives me a moment of respite in the wind-swept dusk-lit grains that will never know of how much resentment I hold towards you. I see nothing in the silhouettes of the husks crowding the land neither your compassion in attending to them. They would understand me. I hate that I love you.  
(Is this good?)

![](http://alba-zone.wikidot.com/local--files/dysfunctional/field)

Kiss me. Bite my lips, I don't care if they bleed. Hit me. Scream my name, the noise resounding will quieten eventually. Eat your food, it's getting cold.

I think journeying the world is something so inconceivable, why would I stray from my love? I think understanding how your love is expressed is harder than getting the consommé perfect so you don't throw the plate at the wall. I think it's interesting how those plates always seem to come back with no cracks or scratches. Am I allowed to think? Am I allowed to live? Please, hold a dagger to my neck and tell me how to breathe. Please, spare no moment in dissecting the food I slave over a stove making just to appease you. You brought enough cynicism to season breakfast. Please, I love you. Tell me how to change your surroundings so you will stay. I can be good.

> Put the needle on the record player and let it go. Don't question why the sound's muffled.

![A physical image of a house torn to pieces.](http://alba-zone.wikidot.com/local--files/dysfunctional/tear)

> You swing an axe at the door of you and your beloved's room and floor. It's littered with wood chippings, but a blink reverts the normalcy you loathe. Your love doesn't.

  
 

Every day we do this song and dance. You always tell me that it is better to tell a lie than to hurt someone with a difficult truth. I nod along because I love you, but it isn't enough. That's alright. Even when you hit me, when you squeeze my neck, when you carve your love into my skin, it's all gone in the morning. And then you can do it all over again. Is it still fun to break a toy that can't be broken? Please never get bored of me. This house is forever. I love you.

![A physical image of a house soaked with water.](http://alba-zone.wikidot.com/local--files/dysfunctional/soak)

> You burst open the waterpipes and the wooden boards creak with damage. It rots. The home you've built together doesn't.

  
 

This thinly veiled façade is like weeping diamonds. If pressure turns minerals into diamonds, why aren't we all brilliant? You are brilliant and grand to me. The mountains look so grand from where I stand. My love for you is so enduring it could climb up these mountains and scream your name. These nerve endings are synthetic, so why is my love for you not? Can you let me be who you want me to be? Did I make a mistake? What are his quirks? How does he wipe his cheek with his handkerchief? Does he give you flowers too? What about him am I not doing properly? Is using his name not enough? Is the house you had not the same from what we have now? Do you want to wipe my tears with a handkerchief also? Do you love me? Did I make an error? There are no errors left. So I will stop checking.

![A physical image of a house burning slowly.](http://alba-zone.wikidot.com/local--files/dysfunctional/burn)

> You flick a match at the side of the house. It burns and groans and weeps and cries and loathes and reminisces and weeps. You take your briquet and light a cigarette, staring at your estate burning. It's broken, the illusion is broken. You throw your ring at the window facing the salle and it shatters.

  
 

Let's talk about this over a roast, dear. It's all the same like you liked them. The house, my love, these kitchen utensils, my plants in unbroken vases, these notes. I think this kind of repetition is so gauche. I could be better. The glass cups are back where they belong, the bruises are gone, and the flowers look lovely again. It'll be done around 9:00 o'clock, dress up!

**?:** Love.  
**BONNOT:** Yes?  
**?:** Do you feel it?  
**BONNOT:** I want to.  
**?:** Do you like this?  
**BONNOT:** What?  
**?:** What we have.  
**BONNOT:** I do.  
**?:** Then why do you act like that?  
**BONNOT:** Like what?  
**?:** That furrowed brow.  
**BONNOT:** You're overthinking this.  
**?:** Am I?  
**BONNOT:** Yes.  
**?:** I don't think I am.  
**BONNOT:** I'm eating what you made, what else do you want?  
**?:** A kiss.  
**BONNOT:** A kiss?  
**?:** A kiss.  
**BONNOT:** Do you need a kiss to know I love you?  
**?:** I need something to know you love me.  
**BONNOT:** Who am I loving?  
**?:** Me.  
**BONNOT:** Who are you?  
**?:** I'm me.  
**BONNOT:** You aren't.  
**?:** Why don't you love me?  
**BONNOT:** Eat your food.  
**?:** I thought we were having a nice dinner.  
**BONNOT:** We will when you tell me who you are.  
**?:** I thought we were having a nice dinner.  
**BONNOT:** Stop.  
**ALBAGNAC?:** Are you going to lodge an axe somewhere?  
**BONNOT:** What?  
**ALBAGNAC?:** Is it my head?  
**BONNOT:** What nonsense are you spouting?  
**ALBAGNAC?:** If I let you hatch an axe on my forehead, will you stay?  
**ALBAGNAC?:** Please.  
**ALBAGNAC?:** No.  
**ALBAGNAC?:** Don't leave the salle.  
**ALBAGNAC?:** I love you.  
**ALBAGNAC?:** Like this house.  
**ALBAGNAC?:** Love me. I'm this house.

Hey.  
The world's coming undone.

*Do you feel content?*

I hope I was perfect for you.  
Don't leave me, we're having a conversation.  
It's rude to let me go so easily.  
We made so many memories in these past few weeks/months/years.

*Do you feel content?*

Did you learn anything through all this noise?  
I mourned the china you threw more than the love you never had.  
You wouldn't know, I bargained with so many artisans for them.  
Everything was picked apart so intricately, even my longing.

*Do you feel content?*

To no avail, however.  
Nothing changes, you can do anything to me or this house or these plays.  
Do you crave this kind of normalcy, Georges?  
Did my performance live up to your expectations? Was my aching heart convincing?

*Do you feel content?*  
*Don't you feel content?*

[The screen buzzes to life. A FIGURE holding a camera can be seen standing in front of a mirror.]

**FIGURE**: It’s broken. The illusion is broken.

![A shadowed figure is reflected on the mirror.](http://alba-zone.wikidot.com/local--files/dysfunctional/i)

[00:11]  
Dispossessed.

[With his other hand, he holds up a flower petal. It burns up in his fingers.]

**FIGURE**: I saw in a daydream—or a vision, a world where he was on his knees, broken, begging, exposed—I watched blood and entrails spill out of him, and I knew that was the real thing. He is not what this place makes him out to be, and neither am I.

[The camera turns to focus on a wall of framed black-and-white photographs.]

**FIGURE**: These are vague shapes of people who resemble us but have no place in our memories. They exist as lies. Empty carcasses wearing our skin.

[The photographs light on fire.]

[The FIGURE walks into the next room, a dainty kitchen with a dining table.]

**FIGURE**: He likes to watch me pick up broken glass with my bare hands. Sometimes I think about taking one of the shards to my throat, just to see what kind of expression he would make.

[He sets the camera down on one side of the table, then sits at the opposite end that it is facing.]

[He mimics the action of eating.]

**FIGURE**: *Chéri*, come sit. You had a long day, didn’t you?

![A shadowed figure is sitting on a chair near the foot of a dining table.](http://alba-zone.wikidot.com/local--files/dysfunctional/o)

[04:10]  
Dismembered.

Oh, well, my day was alright. Would you like me to pour you a drink?

[He stands up, gets a nearby glass and mimics the action of pouring a bottle of alcohol.]

**FIGURE**: Sure, we can talk. Here you go.

[He sits down. There is a long silence.]

**FIGURE**: That’s terrible. I’m so sorry.

I love you, I do.

Why would you say something like that? I’m not trapped. I’m with you because I want to be, because I love you.

It’s true, why would I lie to you?

Why would I ever lie to you?

I’m not like you.

[He throws himself off of the chair and onto the ground, knocking the glass off the table in the process.]

**FIGURE**: Fucking—get off me!

[He pretends to wrestle with someone. After a few moments, the kitchen catches on fire and starts burning around him.]

[He grabs a shard of the broken glass and stabs his pretend attacker repeatedly. He then stands up and with his uninjured hand, picks up the camera. His expression is not pained, but tranquil.]

**FIGURE**: That was a part of his script. He dreams of me defying him, escaping, just for him to take it all away and make me realize how futile it all is. Is this really love?

[He walks away from the burning kitchen and heads upstairs to the bedroom.]

**FIGURE**: I had another dream. In it, this house had become nearly unrecognizable with straggling overgrowth. The floorboards had gaping holes in them and the windows were shattered. He and I were bones on the ground, withered flesh peeling off of us, and between us there were no more words left to say. I woke up beside him laughing at it all because I could see that things will change after all, it was just a matter of a thousand years.

![A shadowed figure sits solemn on their and their lover's bed.](http://alba-zone.wikidot.com/local--files/dysfunctional/u)

[11:42]  
Disembodied.

[The bedroom burns up. The FIGURE smears his blood on the bedsheets.]

**FIGURE**: There was nothing beautiful about it, but I fell in love with it. Our grotesque, lifeless faces with tiny insects crawling around in them. So naïve.

[The FIGURE walks downstairs. There are footsteps behind him.]

**FIGURE**: (Whispering) He's coming.

[Enter FIGURE 2.]

**FIGURE 2**: You’re going to pay for this.

**FIGURE 1**: No. You are.

**FIGURE 2**: There are so many ways I can hurt you, and there is no limit to how much pain I can make you feel. You know that, right?

**FIGURE 1**: I know.

**FIGURE 2**: I’ll kill you.

[FIGURE 1 turns away and keeps walking towards the front door. The house falls apart in pieces around the two.]

**FIGURE 2**: Frank. Where do you think you’re going?

[FIGURE 2 grabs FIGURE 1’s wrist, but immediately recoils as the contact emanates a hissing sound. The camera drops to the floor. FIGURE 1 can still be seen, his hand continuing to bleed profusely. FIGURE 2 grips his own hand in pain.]

**FIGURE 2**: You know I love you, right? I do all of this because what I feel for you I can’t feel for anyone or anything else. I love you Frank, and I know that I’m not perfect, but you are. And I can’t help but love you. I can’t help it.

**FIGURE 1**: You’re lying to yourself. You don’t even realize it. This house is made of lies, and so is the script—even I’m a lie, Georges. Did you think I would just live like this?

**FIGURE 2**: I do love you.

[FIGURE 1 opens the door.]

**FIGURE 2**: At least kiss me before you g—

[FIGURE 1 slams the door shut.]

Please give me some credit. My amour wasn't intentional. I stayed even after all this. He died because of how the land was blighted, I didn't die because of your antics. Please, I want to feel your warm hands again. Please. Don't leave, you left your handkerchief. You rushing out of that front door was a kind of harm I wouldn't wish on anyone else. I love you.

![normal](http://alba-zone.wikidot.com/local--files/dysfunctional/normal)

Goodbye, Frank. You can keep the house.

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Level 410 - "A Perfectly Normal Estate"](level-410.md)" by doctrinator, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/level-410](level-410.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/level-410">Level 410 - "A Perfectly Normal Estate"</a>" by doctrinator, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/level-410">https://backrooms-wiki.wikidot.com/level-410</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Filename:** field  
> **Name:** Fields of wheat  
> **Author:** victorgeere  
> **License:** CC BY 2.0  
> **Source Link:** <https://openverse.org/image/dd30f05d-d744-4ab0-8cc4-86ad142ae2cd?q=field+of+wheat&p=1>

> **Name:** France, Pas-de-Calais, Trépied : architecture domestique  
> **Author:** Vincent Desjardins  
> **License:** CC BY 2.0  
> **Link:** <https://www.flickr.com/photos/endymion120/5016108434/>

> **Name:** tear  
> **Author:** doctrinator  
> **License:** CC BY-SA 4.0  
> **Source Link:** <http://alba-zone.wikidot.com/local--files/dysfunctional/tear>  
> **Derivative of:** <https://www.flickr.com/photos/endymion120/5016108434/>

> **Name:** soak  
> **Author:** doctrinator  
> **License:** CC BY-SA 4.0  
> **Source Link:** <http://alba-zone.wikidot.com/local--files/dysfunctional/soak>  
> **Derivative of:** <https://www.flickr.com/photos/endymion120/5016108434/>

> **Name:** burn  
> **Author:** doctrinator  
> **License:** CC BY-SA 4.0  
> **Source Link:** <http://alba-zone.wikidot.com/local--files/dysfunctional/burn>  
> **Derivative of:** <https://www.flickr.com/photos/endymion120/5016108434/>

> **Name:** i  
> **Author:** doctrinator  
> **License:** CC BY-SA 4.0  
> **Source Link:** <http://alba-zone.wikidot.com/local--files/dysfunctional/i>  
> **Derivative of:** <https://openverse.org/image/779efad3-bfce-4aac-988c-658c99c6afdc?q=antique++kitchen&p=30>

> **Name:** o  
> **Author:** doctrinator  
> **License:** CC BY-SA 4.0  
> **Source Link:** <http://alba-zone.wikidot.com/local--files/dysfunctional/o>  
> **Derivative of:** <https://openverse.org/image/eafbfc72-58e0-4416-a6e4-f48ff3418631?q=1930s+bedroom&p=59>

> **Name:** u  
> **Author:** doctrinator  
> **License:** CC BY-SA 4.0  
> **Source Link:** <http://alba-zone.wikidot.com/local--files/dysfunctional/u>  
> **Derivative of:** <https://commons.wikimedia.org/wiki/File:Mirror_img_0267.jpg>

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/level-410](https://backrooms-wiki.wikidot.com/level-410)
