---
title: "Level 233 - \"The Lukewarm Hotel\""
source: "https://backrooms-wiki.wikidot.com/level-233"
retrieved_at: "2026-08-23T23:34:52+00:00"
license: CC-BY-SA-3.0
---

# Level 233 - "The Lukewarm Hotel"

rating: +29[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

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

rating: +29[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  

Info

Me, , and my fellow friend and co-author, , have re-written one of if not the most nostalgic pages on the Backrooms Wiki. This project took us 2 months and a lot of determination, and we hope, the Lukewarm Hotel, will live up to its name and stand fully on it's own. Thank you for this opportunity.

We hope you enjoy.

[Close](index.md)

*"I forgot what peace felt like…"*

It had been 7 years since I had ever swum in a pool.

I remember I was a kid when I first wanted to swim. I always wanted to splash and play in the water, but I never really knew how much I enjoyed that. From day to night, I used to beg my father to take me to those water parks where all the kids seemed to play all day until they grew tired from swimming. I remember, since my mother's passing, when I was so little, my father and I were so poor, he couldn't afford to take me places, let alone waterparks. Then, one day -I guess he couldn't take it anymore- he finally gave me money to go to swimming classes.

I was overjoyed by the fact that I was finally able to do something that made me happy, and I just hoped one day I would make my father proud. From the start, I was terrible at this sport. I often thought about the way I was wasting my father's money, the way I let him down every time I tried to fix it. My coach also wasn't really pleased with me, because I wasn't making progress. He eventually started to give up on me. I didn't, though. I made sure to practice every day in the sea in my hometown, on rare occasions when we visited. In the blink of an eye, I was improving and competing with all the best, sportiest folks in my town. My father was so proud of me, often boasting about my success with others. He was my everything, never giving up on me, even when money was tight, always believing in me. Making the man who had raised me proud became my only goal.

But whenever I think of those memories, the ones on my 20th birthday come flooding back as well. The memory of us driving home after we got cheap, plastic birthday decorations from whatever store was open at the moment. My father was driving the car, half-drunk from a small can of beer he bought for himself as a treat. His alcohol tolerance was very low. I didn't have my license, and I couldn't really drive anyway. *Something* happened there, either my dad blacked out, or the car malfunctioned, but what I remembered next was waking up in the blinding light of the hospital room, covered by scars. The nurse who stood beside me had a grim expression on her face; that was the day I learned that my father had died from a car crash.

Devastated, I tried to move on. I moved out of my father's house, far away, got a new job, life, basically made myself a new person. I avoided swimming as much as I avoided alcohol after that; I just couldn't bring myself to swim again, for some reason. Maybe because my will for it died out, or because of the memories. It became repetitive to think about after a while, even though I was getting increasingly frustrated with forgetting his face, so why bother thinking about it all again? Maybe despite everything, it was still nice to remember the memories with him, especially when it was now impossible to go back.

Months passed, and I was finally starting to pull myself together, eating healthier, and leaving distractions behind. Again, I was feeling more confident in myself, I started meeting new people, and life seemed to be on the right path. Of course, life had thrown another brick at me, which was getting 'no-clipped' to the Backrooms.

Which changed my life completely.

---

I was 29 years old. It was a routine expedition on [Level 37](level-37.md). It was supposed to be an ordinary expedition, but I was already in a bad mood. But for protocol reasons, I had to pack everything those guys gave me. Two bottles of [Almond water](object-1.md), some food, the equipment I needed, and, for some reason, a bunch of glowsticks. I thought they were fire salt, but I wasn't quite sure why they were packaged like that. Maybe it was an experimental thing. I couldn't care less. I just wanted to finish this and go rest for the day.

As I passed down the hall, I followed the route for the entrance on Level 37, and finally ended up finding it. The level was comfortable as ever; I almost forgot about this mission, and even my mood was getting better. Maybe it was good that I went alone. When I was just about to reach the mission site, my clumsiness made me trip and fall into a pool. I was shocked by the fall and the cold from the water touching my skin. I probably should've worn a waterproof suit, but I didn't know why I didn't wear one when I went here. Now soaking wet and mad from what happened, my map had also been damaged, now making it hard to know where I was going. Luckily, I had a towel with me, so I dried as much water off my body as I could. Knowing I'd taken this route many times, I brushed myself and got back on my feet; I already had a long day ahead of me, anyway.

I was then met with a dark hallway.

I stood there, clearly confused. Usually, dark hallways meant something *bad, scary,* or anything associated with bad luck, but the hallway was also in my assigned path. Before I could think of what to do, my feet somehow slipped, and I fell into the water.

![The surface of a pool.](https://backrooms-wiki.wdfiles.com/local--files/level-233/pool.png)

…

I found myself staring at the bottom of a pool, in a level that I thought was the Poolrooms; I was pretty new to the Backrooms at the time. I had to look around for quite a while to realize that this place was nowhere like the Poolrooms. I got out of the crystal-clear blue water, splashing as I made my way out of the pool. I scanned my surroundings, being on high alert for anything subtly moving. I was in some sort of hotel, old, devoid of any life, with paintings on the walls, old furniture, and not a single sound could be heard. Walking out of the room, I was greeted by a lobby music playing not too far away. Other than that, I wandered around, getting myself lost in this hotel-like place. The smell in these hallways was nostalgic; the place had a heavy chlorine scent, it was the same as the times when I used to get out of the pool, soaking wet, shouting at my father to get the towel because I was cold. I could imagine myself sitting on the plastic benches, resting and eating food while I gathered my energy for the next swim. It was comforting, to say the least. The rooms that had the swimming areas also had a reception. I couldn't remember much, but I think there was only one front desk there. The strange thing was the way the walls and the tiles from the pool areas mixed. They were always blending in with each other; the hallways didn't look natural, and this just felt weird to me. The staff rooms were dark, though the place was still covered in tiles and dreamy wallpaper… There were computers, a few desks, and pens, gosh, those pens, I remember them, I freaked out when I felt they were warm, almost like they were used before.

I wasn't very freaked out by the place; this just felt like a very nice resort. I felt like I was in a dream, memories rushing in me again, I was remembering the times when I used to swim, the people who didn't believe in me, my precious trophies, the little old me. I was here, maybe not in the real world, but in a place people told comfort wasn't possible, the Backrooms… I liked it in here; nobody was here to gossip about my height, my skills, and I could finally enjoy myself, free from mockery. Privacy felt good, the music soothing me from every direction, the pools waiting for me to jump in, the lights fixated on the water; it was honestly a dream come true. I almost forgot who I once was. Standing there on my feet, far, far lost in a dimension I knew was terrible, suddenly felt weirdly comfortable. I couldn't wait any longer, I undressed myself, leaving only my underwear on, and I took a big leap in the water headfirst, just like coach taught me. The lukewarm water felt amazing. I could not help but smile underwater, swimming across the pool with lightning speed, splashing through the current.

Looking back, I think I made one of the best decisions that day. The way I was swimming was like magic; even though I was entering my 30s, it felt like I had practiced just yesterday. I knew how to flap my arms in precise, calculated moves; everything was coming back to me. I could not stop myself then. Completely lost in it, I was slowly forgetting the problems I had here, even the stress, the worries of surviving in a never-before-seen place, were forgotten. Those minutes truly changed me, in a good way, you could say. It reminded me of the time when I was truly capable of achieving amazing things, swimming until I was proud of myself, and watching people cheer for me. It was just a truly magical experience.

I swam for a long time, until I needed rest; my body had to take a break. I jumped outside of the pool, water streaming down my side, me smiling like never before. I went and got the towel, drying myself and my hair. I lay down on the lounger, water still dripping from my body, exhausted, I wanted to close my eyes. I was still breathing hard; this felt like a workout. I began to tear up. Memories of the years when I could still swim suddenly felt overwhelming, harder than expected. Crying softly and lying on the lounge, looking up at the big room ceiling, I finally began to close my eyes out of regret, sorrow, and pain, even happiness. Before I knew it, I was asleep…

I woke up in the same room. Everything was quiet, and I still lay on the lounge, looking at my surroundings while clearing my head. This place had a piece of me already. I don't know why, but I felt like I belonged here; it was comforting. Chilly air coming from the hallways, my footsteps echoing through the corridors, it just felt right. The place definitely wasn't as massive as the other levels, but you could still find your way around here. So, I figured I should document this place and its properties so I could report it back to my team.

Here goes nothing.

Okay, the Lukewarm Hotel is a place in the Backrooms that's peaceful and soothing. It resembles a hotel-pool-like place that has… stupid, fuck, I'll restart.

**Description**  
  
The lukewarm hotel is composed of a seemingly never-ending complex of hallways and rooms that take the shape of a hotel. There are no signs of life here, and it's honestly better that way. Most of the complexes are made out of different sections, such as the hallways, hotel rooms, the staff rooms, and more. Most of these places have varying designs and patterns; some of these designs may even 'blend', as if mushed together. Another thing that is remarkable and worthy of note in the hotel is the cafeteria. The cafeteria does not seem to have any food at all. Not even the necessities a wanderer needs. The cafeteria is big and separate in a way from the rest of the hotel. Despite being a café, it also has pools like the other rooms. The water sits at around 27 °C[1](javascript:;). A jacuzzi can also be seen.

![A pool room with nice wallpaper, pool showing on the bottom.](https://backrooms-wiki.wdfiles.com/local--files/level-233/Pool3.png)

The wallpaper was quite nice here.

I think that summarizes everything. Even though I suck at writing, I wasn't even good at writing essays at school or anything for that matter. For anyone wondering, I am NOT stuck here; it's quite the opposite, actually. I like being here, probably the pools, because I love to swim. This place just holds something very special for me; I don't think anyone can understand how much I desire to be here.

If someone ever finds these notes, please tell my buddies I said sorry. Not because I did anything bad to them, but just simply because I never really returned from my expedition alone and ended up staying here for quite some time. I will return though, don't worry about that! There isn't food here, and I'm running low on supplies. I just wanted to enjoy myself…

Something that also caught my eye was the vending machines that could be found in the cafeteria. Most of them looked like they needed some sort of payment, but after entering a random number, I was quite surprised to see a water bottle come out of the machine. I tried another one, but it didn't work.  
  
The cafeteria is quite big and unique. Usually very big in size with lots of wooden chairs in it, and many drawings on the walls.

[![A vending machine with buttons to interact with.](https://backrooms-wiki.wdfiles.com/local--resized-images/level-233/vending/medium.jpg)](https://backrooms-wiki.wdfiles.com/local--files/level-233/vending)

A vending machine.

Visiting the hotel rooms is also rather easy! When entering any sort of pool room in the corner, you'll find an escalator leading to the hotel room. So, imagine it like your little penthouse type pool area!

A sad thing about this is the hotel rooms themselves. They are plain and dull, with no design like the other things found here, which makes me sad…

![An escalator and tiles like those from a pool, leading upstairs.](https://backrooms-wiki.wdfiles.com/local--files/level-233/Pool1.png)

A picture I took. The stairs lead to the hotel room. The escalators don't really work here.

The hall was calming for a time, before being slightly irritating. Redundant. Uncomfortable. Not that the place felt *unsafe,* but it became gradually more irritant. At some point, it felt like I was being mocked. Mocked of my memories, and past passions, what I let go, and what I could've become. I could've turned myself into a famous swimmer anytime I wished, and yet I chose to quit and mourn for something that wasn't even under my control. It felt like the walls were laughing at me while I reminisced every little thought and choices that led me here. This wasn't what he would have wanted. My father would have wanted me to-  
  
Nevermind. Some things in life should be enjoyed.

The water here feels very nice to the touch. In whichever room you may enter the pool and the design varies but the water stays as it is, warm, soothing and comfortable. It's just how it makes you feel. The faint muffled sound of the music playing in presumably the next room accompanied by the slow rippling of the water and the pipe over your head makes anyone forget their problems! The only regret I had with this place was not getting in sooner.

A very nice and soothing place I have to say. I honestly don't know why it makes me feel like this? Maybe because of my memories, or the things I used to enjoy are all of a sudden in here and connects me in a way? Whatever it might be, I'm not an investigator nor a detective. I definitely don't have the full piece of the puzzle. Hey, maybe when I return, you'll check this place out! Maybe even give me the answers I currently don't have!

![A very long hotel hallway.](https://backrooms-wiki.wdfiles.com/local--files/level-233/Pool4.jpg)

…

As for entrances and exits, I can only assume I made a transition in a dimly lit corridor on Level 37, I don't even remember. The exit is pretty easy to find, just go to the receptionist desk and you'll probably find a door that's kind of mushed in a way.

And I think that's all you need to know about the Lukewarm Hotel, just don't ask me why I chose this name, I like it. I'm really trying not to waste your time and to tell you as much as possible. I hope to find you all again, I don't know if I'll find my way once I exit, the outside seems wrong after staying here. Whatever.

So, what do you think about this place? I think it's up to standard, anyone can live here, if they want. It's a perfect rest spot for people who are sick or want to relive their stress or problems.  
  
Goodbye.

Last thing I remember here was how I stepped into the hallway, embracing the sterile white of the walls and floors. The hallways stretched longer than I thought it would, it looked so short. The music completely stopped, leaving me with the fluorescent buzz of the lights, though it wasn't as obnoxiously loud as [Level 0](level-0.md). Then came the smell, *chlorine.* Even thicker than in every part of the level. It was as strong as the chlorine smell that clung to my skin after long swimming lessons.

I ignored it and kept walking.

A plastic bench appeared against the wall. Then another. Then a row of lockers. I was certain they weren't there before, but it could've been me going insane. Looking inside, there was a pair of swimming goggles. They reminded me of mine, maybe *they* were mine, or just a copy.

I took it and kept walking.

The floor became damp, water dripped somewhere ahead, and I could hear children laughing as they splashed through the water. Sometimes, I could almost hear my younger self among them, though the strangest part about it was that none of it seemed uncomfortable in any way, nor was it… *comfortable*. Maybe a weird 'somewhere in-between,' with the awkward sense of familiarity, almost plastered onto me. Even nostalgia became mind numbing after a while.

I slipped the goggles in my pocket, and faced the heavy double doors at the end of the hall that seemed like it went forever. I knew what awaited behind those doors. It was a harsh reality where my father was still gone, and so was my youth. I knew that I needed to face it sooner or later; if I kept staying here, this place would have also been a beautifully tiled coffin.

One sigh. Looks like I was going to have to explain everything to my boss.

Unsure of where the door would lead me, I turned the handle to face the absolute unknown.

[YOU HAVE [1] NEW MESSAGE(S)!](javascript:;)

[YOU HAVE [0] NEW MESSAGE(S)!](javascript:;)

  

28th of June  
From: moc.liamkcab|xuorcaed.tnemelc#moc.liamkcab|xuorcaed.tnemelc  
To: moc.liamkcab|1442rethgileldnacnoryb#moc.liamkcab|1442rethgileldnacnoryb  
  
Hey man! It's me! I know I've left you on delivered for quite some time now, two weeks I think to be specific. I didn't finish the mission though, I don't think it matters, really.

I apologies for leaving you worried sick about me, and trust me if anyone deserves an explanation, you'd be the first one I'd tell. Just know that none of this was because I forgot about you or didn't care.

The craziest, most unbelievable thing happened to me while I was away, and it was truly amazing… I wish I could tell you all of it right now, but I cannot tell you yet. One day, I'll sit down with you, and you'll finally understand why I disappeared for the time being.

Take care of yourself.

-Clement D.

« [Level 232](level-232.md) | Level 233 | [Level 234](level-234.md) »

Footnotes

[1](javascript:;). 80.6 degrees Fahrenheit.

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Level 233 - "The Lukewarm Hotel"](level-233.md)" by eggsyl & KillerOreo52, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/level-233](level-233.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/level-233">Level 233 - "The Lukewarm Hotel"</a>" by eggsyl & KillerOreo52, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/level-233">https://backrooms-wiki.wikidot.com/level-233</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** Berlin - S-Bahnhof Brandenburger Tor  
> **Author:** Ingolf  
> **License:** CC BY-SA 2.0  
> **Source Link:** <https://www.flickr.com/photos/ingolfbln/8013457545/in/photostream/>

> **Name:** Swimming lane in a Swimming Pool in Melbourne VIC Australia.jpg  
> **Author:** KeepActive Australia  
> **License:** CC BY-SA 4.0  
> **Source Link:** <https://commons.wikimedia.org/wiki/File:Swimming_lane_in_a_Swimming_Pool_in_Melbourne_VIC_Australia.jpg>  
> **Additional Notes:** This image has been cropped and edited

> **Name:** Umaid Bhawan Palace  
> **Author:** Sandra Cohen-Rose and Colin Rose  
> **License:** CC BY-SA 2.0  
> **Source Link:** <https://www.flickr.com/photos/73416633@N00/2401093893/in/photostream/>

> **Name:** KL hallway.jpg  
> **Author:** Khalid Raffali  
> **License:** CC BY 2.0  
> **Source Link:** <https://commons.wikimedia.org/wiki/File:KL_hallway.jpg>

> **Name:** Vending machines, Coca cola, Coke machine image. Free for use.  
> **Author:** Atlantis\_C  
> **License:** CC0  
> **Source Link:** <https://pixabay.com/photos/vending-machines-coca-cola-276171/>

> **Name:** Level 233  
> **Author:**   
> **License:** CC3  
> **Source Link:** N/A  
> **Notes:** Yes, that is the actual name.

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/level-233](https://backrooms-wiki.wikidot.com/level-233)
