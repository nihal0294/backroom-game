---
title: "A Wanderer Journal"
source: "https://backrooms-wiki.wikidot.com/a-wanderer-journal"
retrieved_at: "2026-08-23T23:38:23+00:00"
license: CC-BY-SA-3.0
---

# A Wanderer Journal

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

rating: +21[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

New journal, new me!  
  
It's been a while since I took notes of my travels. And to be fair? I kinda missed it.  
  
I met this guy two days ago, he called himself the [Infinite Wanderer](phenomenon-18.md). He had a journal as well, and that reminded me of how good it felt to consign memories of the days that passed in the Backrooms. That's the little things to keep around that make us feel better when we look back at them. I still look at my old journal from time to time, remembering things like my breathtaking visit to [Sublimity](level-37.md), or the time I spent with the Blue Knight in [Stormstone Keep](level-28.md).  
  
I went to the [Abandoned Utility Halls](level-2.md) to reach [Office Space EL3A](office-space-el3a.md), where I managed to get a notebook. This one should be big enough to last several months, even if a lot of events somehow happen every day!

Got into the [Abandoned Office](level-4.md) (funny how so many names have "abandoned" in them now that I think about it), where I should be able to set a small camp to sleep for the "night". Hopefully I don't get attacked by a [Growler](entity-180.md) like last time… Level 4 isn't really as safe as people say it is on the G.P.D. forums.  
  
And tomorrow? I'm not sure to be honest. Probably will end up [no-clipping](phenomene-1-fr.md) in a wall and see where the Backrooms take me. That's how I like to do this usually after all, it allows for more exciting travel, even if I never really settle anywhere for long.  
  
But right now, sleep awaits! I look forward to filling my new notebook with the many stories I will live.

---

I wonder where no-clipping will take me today!  
  
Oh man, I nearly forgot about this! I need to make this a habit before another journal goes to waste. The past few days have been eventful, so much so that I didn't even think of writing anything down! (Let's make sure I don't forget about this again).  
  
First, when I no-clipped, I landed right in [Level 1](level-1.md)! I was expecting something more exciting, something to make my adrenaline rush, but well, this was fine. I made my grand entrance right into the center of [Base Alpha](base-alpha.md), and although that seemed like something that'd be in the spotlight, well. Let's say that a group of people rushing in with someone melting and dying in their arms was a slight bit more worrying.  
  
The one that was seeing the light at the end of the tunnel turns out to be Ellis Moorings. That was quite a spectacle.

And after not long, I simply stopped worrying about it. The rest of that day, I spent my time talking with folks about what comes next. I met a man, Dr. Kettler, and well, he had some depressing stuff to say. I'm not the guy to linger on it though, so after I finished up that conversation, I skipped along to another level.  
  
Little did I know, this was going to be [Level 834](level-834.md). Fun. Now it's easy to picture why I forgot to write in this journal. Running on few hours of sleep, and hours since my last rest, it's honestly astonishing how I even survived. If I ever have time I might come back and really describe how I got out.  
  
Then I found myself in [Level 980](level-980.md). Again, nearly died, I'll explain later. And here I am now, in [Level 0](level-0.md), half awake and writing this down. I think I'm going to sleep before I write down the rest. I'm tired. Amidst the fluorescent lights, sleep awaits!

---

I actually remembered to do this today! Hopefully I can make it a habit. Today was about as normal as a day in the Backrooms can be. I woke up in [Level 4](level-4.md), even though I fell asleep in Level 0. I think I no-clipped in my sleep. Weird. Anyways, I spent quite a bit of time just walking around and making small talk with the people I encountered. Most of the people I was already acquainted with, but I did meet one new person. I think her name was Addie? Aggie? Allie? Something like that. She was nice, said she started working as a researcher recently. I gotta respect those folks at [the M.E.G.](the-m-e-g.md), they go through some tough shit.  
  
Anyway, after that, I no-clipped to Level 800, which is where I am now. It’s pretty boring in here to be honest, nothing more than a bunch of clocks. I did see some writing on one of the walls, though.

It said [“I miss you, Giana.”](level-800-1.md) I feel bad for whoever wrote that, hopefully they found Giana. I also saw someone, but they didn’t say anything to me. They were wearing this [weird black armor](the-black-knights.md), I’m honestly not even sure if they were human. They ran away and then there was a blue flash. I’m probably just imagining things, though.  
  
That’s really all that happened. Nothing too exciting, but maybe tomorrow will be more eventful. I’ll try to remember to write again, but who knows if that’ll actually happen. The clocks are telling me that it’s time to sleep, though, so we’ll just have to wait and find out in the morning.

---

Hello again journal. Not gonna lie. Today's kind of been a bad day. My shoes gave out but haven't found a replacement yet. (I forgot to stock up on those whoops) Found some duct tape though, so I put the sole back on to the top of the shoe. Hopefully that'll last me a bit. Should probably avoid anywhere with water though. But owwwww. My feet hurt :(  
  
I suppose I could go to [Level 196](level-196.md). That place has a whole door dedicated to shoes.  
  
I forgot how much walking I do. I don't really understand why I wander so much. I just…feel an itch. There are plenty of places to settle, but I just can't. Like, I feel uncomfortable in [Level 11](level-11.md), even though people have attempted to recreate their lives again. I dunno. It just feels… fake. The sun is too bright, the smiles are too forced. Something in the back of my mind says, "You don't belong here."

I'm afraid I'll never find a place to belong.  
  
Anyway, I think I'll rest my feet for now. I'll take a train from [Level 185](level-185.md) and see if there's a sleeper car or something. Maybe even just stay for a bit on there. See where it takes me (after I get some new shoes).

---

Scribbling this down real quick before I sleep today! Actually, not really sure if it's still the same day, to be honest. When I was back in school, I've heard about this experiment where they tried putting a guy in a cave to sleep and wake as he pleased. He ended up with a really weird schedule where he went crazy I mean, to bed every thirty hours. Maybe that's what's happening to me.  
  
Sorry, I feel sorta out of it today. And yeah, not doing too well in the health department. Had a killer headache the past couple of hours, which is just the worst without ibuprofen to get me through. I actually managed to stop by a stall with the [B.N.T.G. logo](the-b-n-t-g.md) taped on earlier, but the guys there only wanted to deal me [cartons of red lemons](object-85.md) and [unlabeled glass bottles](object-201.md). The lemons there smelled a bit like my grandma's wine cellar, which is probably the only reason why I didn't buy anything (trust me I would've traded away my fortunes otherwise because I was literally starving). Hopefully, the next stall I find is an M.E.G. soap kitchen. Oh man, I wish.

Silver lining is that I didn't really leave empty-handed. Turns out, on my way out from the stall, there was [this girl](entity-57.md) who stopped me. She wanted paper, and was willing to trade clothes, so I jumped at the chance! Ended up tearing out a few pages from the journal in exchange for tennis shoes. They're a few sizes too big, but it's better than nothing. I don't know what someone would badly need paper for, but I hope she got what she wanted.  
  
(Oh look, my headache went away just now!)  
  
Argh, going to sleep with an empty stomach is just the worst. Recently, I keep worrying about eyes on the back of my head, ever since I got off that train. Either something weird's going on or I've just gotten really paranoid. It's probably fine, I have bigger worries right now. Oh, did I just spend an entire entry complaining? :( Crap, on a lighter note, I doodled some [blub cats](entity-29.md) on the next page. Maybe if I ever decide to settle down, I'll get my own one day.

---

It's weird how all the cats depicted on the database's article have closed eyes. The article itself did say that some of them have round eyes. Maybe there’s way more of the closed eyes variant than the round eyes variant…? Never met one though much less an entire population, so no idea.  
  
(Yeah, that also means my doodles prob aren't realistic. Just a note to my future self or whoever comes across this journal if it ever falls out of my hands.)  
  
Come to think of it, will this journal be the ‘only thing that was left’ if something ever happens to me? Like if I ever decide to be the first person to venture out into a level (scary) and I’m never found, and some days later a team of actual experts (or some random lucky rookie) go in after me and only find this notebook? Or if I wear myself out and give this away after I give up traveling?  
  
It’s somewhat worrying to think about but…it kind of motivates me in a way. It would be really cool if this thing could help other people in their adventures after I’m done with mine! Honest.  
…Not that the end of my journey is a very enticing thought right now…probably shouldn’t dwell on that.

Back to business! Finally had a good day in a long while. Shoe problem was solved and I did actually end up finding food (thank you so much [snackrooms](level-6-1.md) vending machines!!!!!!!). No idea how I got there honestly, I just know I took a few extra turns and no-clipped through a few things—that’s the Backrooms for ya. Managed to stock up and I don’t think nourishment would be a problem in the next few days(?).  
  
In other news the tingling feeling hasn’t gone away…it’s not uncommon for some levels being inherently paranoia-inducing, but I’ve gone through several now and I still feel wrong. Traveling alone has been fun but I’m considering picking up a companion or two for the time being. Who knows, my gut might be right.

![blubcatspaper](http://backrooms-sandbox-2.wdfiles.com/local--files/collab%3Aa-wanderer-journal/blubcatspaper)

---

I couldn't really sleep well tonight… that headache just keeps getting worse by the hour, and it even brought in other side effects, dizziness and a weakly distorted vision… I tried to ignore it but I just couldn't; I think going to [the "Poolrooms"](level-37.md) might help.  
  
a few hours have gone away, but the headache has definitely not; don't get me wrong [the poolrooms](level-37.md) are definitely relaxing… but my head just can't stop drumming and beating, it's like if a musical band was singing right into your ears, but ten times worse… and for some unknown reason… memories, that I long had forgotten, came back, flooding, always reminding me of the danger I'm in… that day I got attacked by the [smilers](entity-3.md), or that other day when I was barely ["coded"](https://backrooms-wiki.wikidot.com/enity-136), or the time [the M.E.G](the-m-e-g.md) interrogated me about some [Partygoers](entity-67.md) who were literally in the room next to me… that impending sense of being followed or watched is just growing… it's driving me insane…

I decided to leave the poolrooms, going through an [abandoned aquarium](level-43.md) (oh look, another abandoned place), [the rusty hallways](level-2.md), [the empty park lot](level-1.md), and oh it's that [wildlife park](level-876.md) level… they used to say this place was conscious or something, but I couldn't really focus or attempt contact, all I was thinking of was that headache, what could it represent, where did it come from… those negative memories and feelings have kind of wiped away even the simplest of memories… but I kept on going, past a [dark forest](level-445.md), which might have developed my negative thoughts even more, till I reached ["Home On The Road."](level-864.md)  
  
I heard that [two lovers scavenge this place](she-hangs-my-fingers-around-her-neck.md), holding the hand of the other, looking for each other… doesn't help with my paranoid thoughts I have developed… I need to find someone to help me, I can't… think… or even focus in that matter… here I am just laying down on one the beds… waiting for sleep… but will it ever come? will I be alive till then? who actually am I? could I be going mad?

---

[Level 125](level-125.md) today. You’d think the egotists of the world wouldn’t make it far in the Backrooms but apparently some survive longer than they deserve. Some man found me pretty much as soon as I got here and kept pestering me. Said he hadn’t met a woman in a while and kept asking if I had a boyfriend. Was asking if I wanted a boyfriend next. I said I’m not that kind of guy and that sent him into a rant. “Women aren’t acting like women anymore. What has the world come to that a woman can refer to herself as a guy?” Who gives a fuck in a place like this? It didn’t turn him away from me though. He said he could save me and that it would all work out cause he has a thing for Asians. I told him I’m Sioux and he asked if that was near China. I hate him.

But I got lucky. There was this roughed up lady. Missing an ear and some fingers. She looks tough too, like she’d beat her way through the Backrooms with only her hands. She scared him enough to keep from going on his rant about women not being womenly anymore. He was gone fast. She told me her name (Lucia) and asked what mine is. I actually told her my real name. I felt so weak asking if I could stick by her but she has a sweet smile. She has a small set up for the moment that she’s letting me crash in.  
  
I’m feeling better now.

---

There was this island.  
  
The grass was soft, the wind gently caressed my skin.  
  
Nothing in the horizon, save for other smaller landmasses.  
  
There was this island.  
  
My lungs filled with fresh air, my wounds mended.  
  
My blood replenished, no more hounds feasting on my flesh.

There was this island.  
  
A single cow by my side. It ate the grass and mooed.  
  
I felt my legs again, and I got up on my feet.  
  
Her skin was soft, her presence was reassuring.  
  
There was this island. A safe haven, away from despair.  
  
Was it even real?

---

Hi again journal, today I was actually incredibly lucky: I’ve found a memory jar! I heard that they are not only rare, but also some-what expensive, which can’t get any better. I will head towards Level 1 — it is filled with life and real trading, not just half-bad barter between two half-broke wanderers stuck in the desert of empty corridors. Additionally, I’m running out of resources, this jar was the last thing I was able to find, and I certainly don’t want to go deeper with just one bottle of Almond water and 2 crystals of firesalt.  
  
I wonder how much I would be able to actually get from this one, M.E.G. must be more interested in them than traders of the B.N.T.G. or just random lost souls, so I’ll try to sell it to them, yet even then – does this jar contain at least something useful for them? Or they buy them anyways? Like, just to study or something… I don’t know, but it better be worth it.

I’ve heard that nowadays there is a new standard for safe equipment’s base level: at least 2 bottles of almond water, 8 crystals of firesalt, it gets wasted a lot of disinfection of the normal water, campfires, and other stuff, and a machete for all kinds of utilitarian uses. List also includes nice boots and a coat, but I already have those. A machete though… This one would make things much easier. Yeah, I’m totally getting it after selling the jar!  
  
One last note for today… I was too curious with this one.  
I decided to check what was the memory within the memory jar, to know what I’m selling. It wasn’t a pleasant memory.  
This poor guy… I feel so bad for him now. To face just an end, being a couple of steps behind the exit.  
I must be cautious with these smiling monsters.  
  
Not even sure if I want to sell it anymore. Shall I just leave it somewhere? Or shall I give it to someone else? Now none of it feels right, knowing the origin of this memory.  
  
If only I wasn’t that curious.

---

Hey Journal. It’s been a while. Not dead yet. Been busy I guess. Just forgot, as [humans](entity-1.md) do, and unlike you. Went to a lotta places since. Lotta stuff happened. I could write about them but I don’t know if I feel like it. There doesn’t really feel like a point to it. It’s fun, level hopping like this, but I don’t know, it’s also kind of tiring. The fun stops periodically cuz this place can’t wait to remind you of what it is.  
  
I got cut up kinda badly on [9](level-9.md). Place is a bitch I’ll tell ya that. Luckily [striders](entity-96.md) are destroy-able, even if I wasted more than a few things in the process. Met a few.. [Interesting people](poi-s.md) during recovery. Not sure if I’d be thrilled to see more of them. I’m okay-ish now. Sitting around writing this in some room in [11](level-11.md). It’s peaceful here but kind of boring, and some of the people around are uh not the best.

I visited the [Infinite Valley](level-186.md) a while ago on my way to the uh [train place](level-185.md). It was really nice. Reminded me of [Earth](the-frontrooms.md) a bit, barring the deity thing. It was really homey and all that. Maybe I should settle down sometime. I think that would be nice. Maybe it’d make me feel better.  
  
Man, home. I miss them. Memory gets less and less reliable. Glad I still have that old shitty phone. I wish I took more pictures back then. Guess my mom’s words came to bite me in the ass.  
  
I think that's all for now.

---

Good journal, I remember a passage on a wall that I don't seem to remember being mine yet I was also the one who wrote it. I think it was in a dream or something like that. I don't really know anymore. This day is like… very odd for some reason. Yet I am happy that it is odd. It goes like:  
  
"Priceless.  
The eternal longing, ringing, growling.  
Calmly caressing the dawn break scorching.  
Kisses from the soft leaves of spring, lost in the embraces of snow and sand.  
Sighing, smiling, growing into a great big whale.  
Lying on soft seagrass, sputtering crowns of small fish and great birds.

Hugs of the infernal comfort in the cities of tranquil winds where crawling is affectionate.  
The sparkling space between the darkness of a great resting place under a tiny tree.  
Crying happiness in the halls of adorable, divine animals.  
Encapsulating the isolated feelings to wander into every crack and corner into each living room of every living thing.  
Special emotions reserved for a tired thing.  
This is true love."  
  
Or hate. I don't know if it was love or hate.

---

It’s been a while since I’ve taken the time to really sit down and write an entry in this thing— and for good reason.  
  
Remember that memory jar from earlier? Yeah, I had to ditch it. I was making my way through Level 11, thinking it was just going to be a normal day of trading— (I had made up my mind on selling it,) but nooooooo that would just be too easy.

A freaking earthquake started— at least that’s what I thought. I was getting my bearings, when this colossal… *thing* burst out from the street in front of me. I had no idea hostile creatures could even *exist* in 11– much less anything of this size.  
  
I couldn’t think of what to do, so I threw the jar at it as some sort of distraction, and I started running. For some reason, it took that bait and left me alone.  
  
Yikes

---

[More about the community project](javascript:;)

[More about the community project](javascript:;)

The goal of this community project is to help authors either learn or put into practice their skills in active collaboration by participating in the creation of a co-written tale taking the form of a wanderer journal. To participate, you must be on discord, in the [dedicated community thread](https://discord.com/channels/695664941247627274/1284956359262998580).

It consists of writing a short message as a journal entry, following what others did before. Therefore, you will have a lot of creative control over additions of the character and their story, but be careful and respect what people created before!

### How does it work?

- I am posting the first entry of the journal, then I will ping someone
- This person has to write a follow-up entry in 2000 characters or less (the discord text limit) of that journal
- Once you're done, send the message on Discord and (if possible) put it in the page, below the other entries ([http://backrooms-wiki.wikidot.com/a-wanderer-journal](a-wanderer-journal.md)) . Use the code below to separate it from the others. If you can't post it there, you can ping me so that I do it.
- Ping the next writer! It can be anyone but try to ping someone who hasn't contributed yet.
- If that person cannot or doesn't want to participate, it's fine! You can ping someone else, or ask me to choose another person for the next entry.
- And so on! There isn't any planned ending but it will probably stop when enough people will have participated.

### What are the guidelines for each entry?

- Your entry can have an ellipsis of just some hours to entire days or even weeks, all depending on when you want your entry to be.
- You can also use links in your page to refer to onsite pages.
- You can use anything for your entry! Whether it is your unwritten lore, mentions of articles you created, or other onsite pages, you can make this wanderer encounter basically anything you want.
- The only hard-encoded rule is to **do your best to not contradict previous entries!** Outside of this, you are free to expand the character, their backstory, and their actions by using previous entries as a source or other Backrooms element.

### How to format my entry?

```
[[div class="notepaper-group book-pattern book-wrapper"]]
[[div class="notepaper page"]]
[[*user your username]]
@@@@
@@@@
first half
@@@@
of your
@@@@
part
[[/div]]

[[div class="notepaper page"]]
other half
@@@@
of your
@@@@
part
[[/div]]
[[/div]]
```

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[A Wanderer Journal](a-wanderer-journal.md)" by Praetor3005, Super-Robot14, ReyDay, BlueSignet, centurys lute, akarine147, Abdallah Amr, Liminaldoctor, camaradealbabar, Poliacci, InspectingCritters, Schulzenreich and Spectre48, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/a-wanderer-journal](a-wanderer-journal.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/a-wanderer-journal">A Wanderer Journal</a>" by Praetor3005, Super-Robot14, ReyDay, BlueSignet, centurys lute, akarine147, Abdallah Amr, Liminaldoctor, camaradealbabar, Poliacci, InspectingCritters, Schulzenreich and Spectre48, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/a-wanderer-journal">https://backrooms-wiki.wikidot.com/a-wanderer-journal</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** IMG\_2702.png  
> **Author:**   
> **License:** CC BY-SA 3.0  
> **Source Link:** <https://media.discordapp.net/attachments/1284956359262998580/1292062637273911306/IMG_2702.png?ex=67025e9a&is=67010d1a&hm=ed507f785da5babe4b33888b99b10439f0f65b2b87e0da5186ad90b4cf81054a&=&format=webp&quality=lossless&width=670&height=670>

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/a-wanderer-journal](https://backrooms-wiki.wikidot.com/a-wanderer-journal)
