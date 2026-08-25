---
title: "Death"
source: "https://backrooms-wiki.wikidot.com/fragment:infinity-2"
retrieved_at: "2026-08-23T23:40:21+00:00"
license: CC-BY-SA-3.0
---

# Death

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

![CygnusSD.png](http://backrooms-wiki.wikidot.com/local--files/level-906/CygnusSD.png)

Hey there, Gani.

I’m not going to drag this out too long. I know you have stuff to do and places to be. I was going through Level 4 when delivering some letters from Blanche to a few folks, and I found a damaged journal. Couldn’t find who it belonged to, but whoever they are, they certainly aren’t alive.

There are a number of diary entries in here, though no name is attached to them. I figured you may want it, or would know someone who does. I haven’t had much time to fully read them—best I could do was a quick skim. I wasn’t able to gather much info about them, though. All I was able to find was that they were a newer accountant in the Frontrooms. Not very telling, but I’m sure you’ll have better luck with finding info about them.

Wish you the best, and let me know if there’s anything I can do to help.

- [TVH](tom-von-haderach.md)

January 15th  
I heard somewhere that writing your thoughts down can help ease anxiety. No clue if that's true or not, but hey, couldn't hurt, right?

For starters, I don't know where I am. I tripped on the sidewalk on the way to the office and woke up here what I think was 8-ish hours ago? I don't know. My phone's been showing the same time ever since I fell: 9:27 AM.

The one thing I do know about where I am is that I fucking hate it here. The carpet's wet and the air is dry and hot, but I somehow feel cold? How does that work? It's also just ugly. The wallpaper is old and peeling, and the pattern is tacky. The fluorescent lighting certainly doesn't help, either.

Am I kind of being overly angry about this whole thing? Probably. But you try spending 8 hours in an old ass building where you can't find the exit and see how you feel about it.

I guess I could look on the bright side of this: I don't have to go to my job. I really, really hate being an accountant. I already hate doing my own taxes, now I have to do everyone else's taxes? It baffles me that my dad finds that enjoyable. I really wish I just didn't listen to him and majored in English & Literature when I graduated high school, but no, I had to take his advice and take the safe career. "There's always money in accounting. As long as there are taxes, there will be the demand for accountants." As if AI isn't going to completely eliminate the industry in a few years.

I guess I can't say the same isn’t going to happen to English & Literature, but at least I wouldn't dread going to my job every day. At least I'd actually like what I do. But hey, I'm writing right now, aren't I?

Maybe I can write a novel about this when I finally find my way out of here. "Missing For A Day" is a pretty solid title for a book. Who knows.

I do feel a bit better. Maybe Alyssa wasn't talking out of her ass for once. I'm going to keep looking for the exit, and hopefully I'll make it out of here before it's dark.

---

January 16th (I think)

No dice. Not one exit in the 15,000 steps (I think, my phone died a while ago) I've taken so far.

I tried calling 9-1-1, no luck. I tried calling my parents, also nothing. I even tried calling my boss - because I'm THAT desperate to get out of here - I got nothing.

I'm starting to worry that there is no exit to this place.

I'm not even wondering "where is this place" anymore, I'm just wondering "*what* is this place?" I've been walking for hours and hours and there has been nothing but the same strange, ugly rooms over and over and over. There’s no one here either. It just feels empty and endless. I don't know what I would've done if I hadn't decided to pack my lunch today (yesterday? I can't tell anymore), because I think I would've passed out by now if it weren't for that sandwich.

I'm still trying to preserve whatever I can. I don't know, a part of me feels paranoid that I'll need it for something. I don't know how long I'll be stuck here, so I guess it is good to try to ration what I have. Really wish that the dress code at my job didn't require me to wear this stuffy, shitty suit, because I would absolutely rip this thing off my body if I wasn't cold as fuck.

That and the fact that I don't want to be found naked here. Would somehow be even more awkward.

I've also put more thought to that novel idea I mentioned earlier, but the problem I'm having is that I don't really know how the details would work. I mean, I went missing, but all I've done is walk around and search for an exit. There's not really much I can do with that, you know? You can only describe walking in repetitive spaces so much before it gets boring.

Maybe I can add something more interesting. Like a monster. People like monsters, right?

The thing is that I don't know what would live in a place like this. Like what kind of monster has a natural habitat of ugly Victorian-style retail space?

Who knows. Maybe I'll think of something later. I'll have to kill the time somehow, because with my current luck, I’m not making it out of here anytime soon.  
  
Well, I shouldn’t say that. I should stay positive. Growth mindset or whatever bullshit they say in schools nowadays.

I'll write some more later. My hand is getting tired.

---

January 17th

I DID IT! I FINALLY MADE IT OUT!!

I'm in some kind of [parking garage](level-1.md) now. I found a room in the last place, which is apparently called "Level 0". I'm in some place called the "Backrooms", whatever the hell that means. It was REALLY messy, littered [with a bunch of papers](manila-room.md) explaining this place and how it works, written by someone named [Meg](the-m-e-g.md). I don't know who you are, Meg, but I owe you my life. I also had to run into a wall to get here, and I did NOT expect that to work. I'm kind of pissed that I spent two-ish days there when the solution to getting out was *that* simple, but better late than never.

Unfortunately I haven't been able to find anyone or any kind of exit back to Earth. The papers said that this Backrooms place doesn't have an exit, but it won't kill me to keep looking, right? You can't enter a place with no exit. That just doesn't make sense.

The one thing I'm concerned about is that I've run out of food. I had to finish it off yesterday or else I was going to pass out. I'm glad I've kept myself conscious, but at one point or another I'll need to eat something, and I don't know what in hell I'll do then.

I really, really hope I find something soon. It'd be great if I could find some more clothes too, because I am getting real fucking tired of this suit. I feel dirty and gross and this stiff, itchy clothing (if you can even call it that at this point) isn't helping. Meg did say that there could be supplies in this new level, which I'm assuming is called "Level 1" given that's what comes after 0. She specifically said that I'd find it in "crates and boxes", so I'll be sure to keep my eye out for those.

I've also been thinking more about my book. If I can actually find someone else in here, then maybe I can get their thoughts on it before I try to publish it. Maybe I can try to even publish it while I'm in here. I mean, I can't be the only person here if that Meg person wrote all those documents, right? And those people need something to do other than aimlessly walk around parking lots and random hallways. Maybe I can help the other people stuck here, if there are still any.

For the actual plot and such, I think it'd be cooler for me to make a kind of immersive guide rather than the typical 3rd person isekai. Help it stand out and all that.

Hopefully thinking about that will distract me from how goddamn hungry I’m getting.

---

January 17th (again)  
I found some chips! And some kind of “almond” water. I’m more focused on the chips if I’m being honest. It’s not the most nutritious meal but it’ll keep me satiated for the next few hours if all goes well. Hopefully.

Unfortunately for me, though, still no exit. Nor people. I really do wish I had just *someone* to talk to right now. I guess I have you, but I can’t exactly have a dialogue with a journal.

This water also tastes weird. I can’t tell if I like it or not. It’s very strong in taste, like Gatorade, but instead of tasting sweet, it tastes almost like nuts. Like it tastes too much like nuts but also doesn’t taste enough like nuts, if you get what I mean. It’s weird. Beggars can’t be choosers though, and it’s certainly filling, so I guess I’ll take it.

As for the other supplies I hoped to find, no dice. Not even something from our ol’ pal Meg. She said in the papers that she set up a kind of base and called it “Base Alpha”, as if that’s not the lamest goddamn name I’ve ever heard. I really do wonder what happened to her and her base though, because I’ve walked another 10,000 steps (I think, again, phone has been long dead) and “no-clipped” through like 4 walls and still haven’t been able to find her.

But I guess it could be worse. I still have my bag, and this journal, and the chips. And my book idea too.

The more I think about the whole guide idea, the more I like it. It could start out calm, boring, simple: you’re in an abandoned building and you don’t know how to get out. Simple strategies to help you get to the next floor, the works.

But then it gets interesting.  
  
It starts guiding you through all of these weird, altered things from reality. Like there could just be a random cloud that glows, milk that’s bright orange and no one knows why, all of these weird, ridiculous things. And you slowly realize that it’s not just an abandoned building, it’s a weird pocket dimension of forgotten things.

Pretty neat, right?

As weird as that’d be, I honestly kind of prefer it to this. This has got to be the most uneventful “I went missing” story in existence. There hasn’t been anything creepy or suspicious, anything worth of note, just a lot of hallways and pipes and parking lots. I’m starting to get real fucking sick of the colors grey and brown.

Nevertheless, I carry on. That exit won’t find itself, you know? It’s gotta be around here somewhere. It has to be.

---

I don’t think I’m going to make it out of here alive.

No, scratch that, I KNOW I’m not going to make it out of here alive.

I’ve been trying to cheer myself up, trying to keep myself happy and calm and focused on just getting out and getting back my life but I. CANNOT. FIND. ANYTHING.

There is nothing here. No food, no weird nut water, no people, no exit. I’m trapped in a place that just goes on forever.

And you know the worst part?

I’m in [my old office building](level-4.md).  
My final moments on this god-forsaken Earth are going to be in the place that sucked me dry of my hopes and dreams.

I just wish I could go home. Hell, I’d never complain about being an accountant again if it meant I’d be sent back home. Because then at least I’d have people to care about me and be with me when I die.

I miss my dad.

I wish I apologized to him for everything before I ended up here. I wish I got to tell him that I love him one last time before I go.

I don’t think I have much time left. I can feel my eyes getting heavier and heavier with each moment. My vision iz bluring and I can barly see wat Im writing.

If anyon finds ths, please, forget the exit Forget the peeple yu love.

[The only chance at a happy life you have is reincarnati](http://backrooms-wiki.wikidot.com/infinity/offset/3)

---

Source: [https://backrooms-wiki.wikidot.com/fragment:infinity-2](https://backrooms-wiki.wikidot.com/fragment:infinity-2)
