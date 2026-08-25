---
title: "Hellbound Part I: Crossroads"
source: "https://backrooms-wiki.wikidot.com/crossroads"
retrieved_at: "2026-08-23T23:38:32+00:00"
license: CC-BY-SA-3.0
---

# Hellbound Part I: Crossroads

```
:root {
   --black: 245, 245, 245;
   --white: 0, 0, 0;
   --m: 53, 99, 102;
   --x: 61, 66, 66;
}
#side-bar .side-block div a img {
    filter: none;
    filter: brightness(0);
}
```

```
@media only screen and (min-width: 769px) {
#main-content {
    padding: 2rem 3rem;
    -webkit-box-shadow: none;
    -moz-box-shadow: none;
    box-shadow: none;
    border-left: none;
    border-right: none;
}
}
```

```
:root {
   --header-subtitle: "A Dream in Reality";
}
```

```
/*
   Лиминальная Тема
   [2020 Wikidot Тема]
   оригинальный код от Линча и Этоиле
   доработка и обновление от Айзека и МХ'а
*/
 
@import url("https://backrooms-wiki.wikidot.com/component:fantasque-sans-mono/code/1");
@import url("https://ru-backrooms-wiki.wdfiles.com/local--files/component%3Atheme/normalize-archived.css");
@import url("https://ru-backrooms-wiki.wdfiles.com/local--files/component%3Atheme/bhl-archived.css");
@import url("https://ru-backrooms-wiki.wdfiles.com/local--files/component%3Atheme/sidebar.css");
@import url("https://ru-backrooms-wiki.wdfiles.com/local--files/component%3Atheme/user-menu.css");
@import url("https://ru-backrooms-wiki.wdfiles.com/local--files/component%3Atheme/owindows.css");
@import url("https://ru-backrooms-wiki.wdfiles.com/local--files/component%3Atheme/forum.css");
 
:root {
   --theme-base: "black-highlighter";
   --theme-id: "liminal";
   --theme-name: "Liminal Theme";
 
   --logo-image: url("https://backrooms-wiki.wikidot.com/local--files/component:theme/logo.svg");
   --header-title: "Закулисье";
   --header-subtitle: "Вы бывали здесь раньше.";
 
   --body-font: Arial, sans-serif;
   --header-font: 'Fantasque Sans Mono', monospace;
   --title-font: 'Fantasque Sans Mono', monospace;
   --mono-font: 'Fantasque Sans Mono', monospace;
 
   --white-monochrome: 237, 233, 223;
   --pale-gray-monochrome: 255, 251, 240;
   --light-gray-monochrome: 160, 160, 160;
   --gray-monochrome: 72, 69, 60;
   --black-monochrome: 25, 20, 16;
   --bright-accent: 140, 136, 126;
   --medium-accent: 72, 69, 60;
   --dark-accent: 140, 136, 126;
   --pale-accent: 140, 136, 126;
 
   --swatch-topmenu-border-color: var(--medium-accent);
 
   --link-color: 230, 23, 68;
   --hover-link-color: 230, 23, 68;
 
   --background-gradient-distance: 0rem;
 
   --gradient-header: linear-gradient(to top,
      rgba(var(--medium-accent)) 0%,
      rgba(var(--medium-accent), 0.90) 100%
   );
   --diagonal-stripes: linear-gradient(transparent 0);
 
   --header-h2-font-size: calc(var(--base-font-size)*1.35);
   --header-height-on-desktop: 10rem;
   --header-height-on-mobile: 10rem;
   --sidebar-width-on-desktop: 20rem;
}
 
body#html-body{
   overflow-x: hidden;
}
 
div.wd-adunit{ display: none !important; }
 
#skrollr-body {
   background-image:
    radial-gradient(circle, rgb(var(--medium-accent)) 50%, transparent 0);
   background-repeat: repeat;
   background-size: 0.25em 0.25em;
   width: 100%;
   height: 10rem;
}
 
#header h1 a {
   line-height: 0.6;
}
 
#side-bar .side-block div a img { filter: none; }
#side-bar .heading p { font-family: var(--title-font); font-size: 1rem; text-shadow: none; }
@media only screen and (min-width: 769px) { #side-bar { padding-left: 0.75rem; top: 0; } }
@media only screen and (max-width: 769px) { #side-bar .img-links { padding: 10px 0; } }
 
#container {
   background-image: radial-gradient(circle, rgb(var(--medium-accent), 0.05) 50%, transparent 0);
   background-size: 0.25em 0.25em;
   background-repeat: repeat;
   background-attachment: fixed;
}
 
div#page-options-bottom-2 > a, div#page-options-bottom > a {
   border-radius: 0em;
   -moz-border-radius: 0em;
   border: none;
}
 
div#page-options-bottom-2 > a:active, div#page-options-bottom-2 > a:hover, div#page-options-bottom > a:active, div#page-options-bottom > a:hover {
   border: none;
}
 
#header, #top-bar {
   background-attachment: scroll;
}
 
#header {
   background-image: none;
}
 
#header::before {
   content: "";
   position: absolute;
   height: 95%;
   width: 100%;
   left: 0;
   top: 0;
   background-image: var(--logo-image);
   background-size: auto 18rem;
   background-position: center;
   background-repeat: no-repeat;
   opacity: 0.5;
}
 
#header h1, #header h1 a {
   position: absolute;
   top: 1rem;
   margin: 0;
   width: 100%;
   display: flex;
   justify-content: center;
   z-index: 0;
}
 
#header h2, #header h2 span, #header h2 span::before {
   position: absolute;
   top: 2rem;
   margin: 0;
   width: 100%;
   display: flex;
   justify-content: center;
}
 
#header h1 a::before, #header h2 span::before {
   text-shadow: .063rem 0.1rem 0.1rem #0c0c0c;
}
 
a.newpage {
   background: transparent;
   text-decoration: none
}
 
a.newpage {
    color: rgb(var(--newpage-color))
}
 
a {
    transition: 150ms cubic-bezier(0.4, 0, 0.2, 1);
    text-decoration: underline;
    text-decoration-color: transparent;
}
 
#page-title, .meta-title {
   border-color: rgb(var(--swatch-tertiary-color));
}
 
hr {
    border: none;
    background-color: rgb(var(--swatch-tertiary-color));
}
 
div.block-center {
   min-width: 30%
}
 
@media only screen and (max-width:768px) {
   div.block-center {
      min-width: 40%
   }
}
 
blockquote {
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.styled-quote {
   background-color:rgb(var(--pale-gray-monochrome));
   border-left: 0.5rem solid rgba(var(--gray-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.dark-styled-quote {
   background-color:rgb(var(--gray-monochrome));
   border-left: 0.5rem solid rgba(var(--pale-gray-monochrome));
   color:rgb(var(--white-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.dark-styled-quote a{
color: rgb(var(--swatch-menubg-medium-color));
}
 
.lightblock {
   background-color:rgb(var(--pale-gray-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
.darkblock {
   background-color:rgb(var(--gray-monochrome));
   color:rgb(var(--white-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
.darkblock a {
color: rgb(var(--swatch-menubg-medium-color));
}
 
.interwiki1_title {
 
    color: rgb(80,77,66);
    border-bottom: solid 1px rgb(80,77,66);
    padding-left: 15px;
    margin-top: 10px;
    margin-bottom: 5px;
    font-size: 8pt;
    font-weight: bold;
 
}
 
.interwiki1_entry {
 
    position: relative;
    margin: 2px 0;
 
}
 
.interwiki1_entry p::before {
 
    content: "■";
    font-size: 9px;
    color: rgb(80,77,66);
    position: relative;
    margin: 0 7px 0 5px;
    bottom: 3px;
 
}
 
.interwiki1_entry a, .interwiki1_entry a:visited {
 
    font-weight: bold;
    color: #b01;
    text-decoration: none;
    background: transparent;
 
}
 
.interwiki1_entry a:hover {
 
    background-color: transparent;
    text-decoration: underline;
 
}
 
div.scpnet-interwiki-wrapper {
    margin: 0;
    width: auto;
}
iframe.scpnet-interwiki-frame {
    border: inherit;
    width: 100%;
    height: 230px;
}
@media (min-width:768px) {
    div.scpnet-interwiki-wrapper,
    iframe.scpnet-interwiki-frame {
        width: 100%;
    }
}
 
#toc {
    background-color:rgb(var(--pale-gray-monochrome));
    border: none;
    border-left: 0.5rem solid rgba(var(--gray-monochrome));
    border-right: 0.5rem solid rgba(var(--gray-monochrome));
    margin: 0.5rem 0 0.5rem 0;
    padding: 0;
    box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
#toc.floatright { margin: 0.5rem 0 0.5rem 0.5rem; }
#toc.floatleft { margin: 0.5rem 0.5rem 0.5rem 0; }
#toc #toc-action-bar { padding: 2px 2px 2px 0.5em; }
#toc .title { font-family: var(--mono-font); margin: 0; padding: 0.3em 2em; background-color: rgb(var(--gray-monochrome)); color: rgb(var(--white-monochrome)); }
#toc-list { margin: 0.5em 1em 0.5em 0; }
#toc-list a { transition:0.3s,text-decoration-color 0s; padding:0px 4px; }
#toc-list a:hover { background:rgb(var(--pale-accent));color:rgb(var(--pale-gray-monochrome));text-decoration:none; }
 
span.printuser a { 
    transition:0.3s ease,text-decoration-color 0s;
}
 
span.printuser a:hover {
    text-decoration: none;
    color: rgb(var(--pale-gray-monochrome));
}
 
span.printuser img.small {
   transition: 0.5s;
}
 
span.printuser img.small:hover {
   transform: scale(4);
   transition-delay: 0.5s;
}
 
#avatar-hover-container {
   display: none;
}
 
#search-top-box-input {
    display: none;
}
 
#search-top-box-form input[type='submit'] {
    padding: 5px 10px;
    font-size: 100%;
    background-color: rgb(var(--medium-accent));
    border: 2.5px solid rgb(var(--pale-accent));
    border-radius: 11px 5px 5px 11px;
}
 
#search-top-box {
    right: -25px;
    top: 50px;
}
 
  #search-top-box-form input[type='submit']:hover, #search-top-box-form input[type='submit']:focus {
    text-decoration: none;
    text-shadow: none;
    background-color: rgb(var(--light-gray-monochrome));
    color: white;
    cursor: pointer;
    padding: 5px 10px;
    font-size: 100%;
    border: 2.5px solid rgb(var(--pale-accent));
    border-radius: 11px 5px 5px 11px;
}
 
@media only screen and (max-width: 768px) {
  #login-status {
    right: 6px;
    padding: 1px 8px;
    font-size:80%;
}
  #header::before {
    top: 11px;
}
  #header h1, #header h1 a {
    top: 17px;
    font-size: 150%;
}
  #header h2, #header h2 span, #header h2 span::before {
    top: 31px;
}
  #search-top-box-form input[type='submit'] {
    padding: 1px 8px;
    font-size: 80%;
}
  #search-top-box {
    right: 6px;
    top: 40px;
}
  #search-top-box-form input[type='submit']:hover, #search-top-box-form input[type='submit']:focus {
    padding: 1px 8px;
    font-size: 80%;
}
  #toc {
    display: contents;
}
  #toc #toc-action-bar {
    margin: 0.5rem 0 0 0;
    padding: 2px 0 2px 1em;
    background-color: rgb(var(--pale-gray-monochrome));
    border-left: 0.5rem solid rgba(var(--gray-monochrome));
    border-right: 0.5rem solid rgba(var(--gray-monochrome));
    box-shadow: 0 0.3rem 0.3rem rgb(0 0 0 / 25%);
}
  div#toc-action-bar a { padding: 0 4px; }
  #toc .title {
    margin: 0 0 0.5rem 0;
    padding: 0.5rem 2em 0.5rem 2em;
    background-color: rgb(var(--gray-monochrome));
    box-shadow: 0 0.3rem 0.3rem rgb(0 0 0 / 25%);
}
  #toc-list {
    margin: 0.5rem 0 0.5rem 0;
    padding: 0.5rem 1em 0.5rem 0;
    background-color: rgb(var(--pale-gray-monochrome));
    border-left: 0.5rem solid rgba(var(--gray-monochrome));
    border-right: 0.5rem solid rgba(var(--gray-monochrome));
    box-shadow: 0 0.3rem 0.3rem rgb(0 0 0 / 25%);
}
}
 
#footer {
    height: auto;
    color: rgba(var(--swatch-secondary-color), .7);
    font-size: 80%;
    margin: 0;
}
 
#license-area {
    --link-color: var(--swatch-primary-darkest);
    --visited-link-color: var(--swatch-primary-darkest);
    --hover-link-color: var(--swatch-primary-darkest);
    padding: 0.55em;
    margin: 0;
    width: auto;
    background-color: rgb(var(--swatch-menubg-medium-dark-color));
    color: rgb(var(--swatch-text-secondary-color));
    z-index: 11;
}
 
@media only screen and (max-width: 768px) {
@supports (display:grid) {
#footer {
    font-size: 10px;
}
#license-area {
    bottom: 0;
    margin: 0 auto;
    height: auto;
    font-size: .9em;
    line-height: 1;
    z-index: 2
}
}
}
 
#main-content .page-tags {
    border: 2.5px solid rgb(var(--pale-accent));
    border-radius: 11px 5px 5px 11px;
    padding: 5px;
    display: flex;
    align-items: stretch;
}
 
.page-tags::before {
    content: "Теги";
    font-size: 80%;
    font-weight: bold;
    background-color: rgb(var(--medium-accent));
    background-color: rgb(var(--medium-accent));
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    text-align: center;
    padding: 1px 6px;
    color:rgb(var(--white-monochrome));
    margin-right: 0.3em;
    border-radius: 9px 3px 3px 9px;
}
 
ul { padding-inline-start: 1rem; list-style: disc; }
 
#main-content .page-tags span { border-top: none; max-width: 100%; align-self: center; }
#main-content .page-tags span a { transition:0.3s,text-decoration-color 0s;padding:0px 4px; }
#main-content .page-tags span a:hover { background:rgb(var(--pale-accent));color:rgb(var(--pale-gray-monochrome));text-decoration:none; }
div.page-watch-options a { transition:0.3s,text-decoration-color 0s;padding:2px 2px; }
div.page-watch-options a:hover { background:rgb(var(--pale-accent));color:rgb(var(--pale-gray-monochrome));text-decoration:none; }
```

|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Hellbound Part I: Crossroads | rating: +24[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")     Info  Written by [DrAkimoto](akirooms.md).   ---   Critique by:           ---  |  |  |  | | --- | --- | --- | | Levels: | [Level 0](level-0.md), [Level 24](level-24.md), [Level 77](level-77.md), [Level 79](level-79.md), [Level 80](level-80.md), [Level 102](level-102.md), [Level 103](level-103.md), [Level 108](level-108.md), [Level 116](level-116.md), [Level 117](level-117.md), [Level 406](level-406.md), [Level 701](level-701.md), [Ataraxia](ataraxia.md), [In Extremis](in-extremis.md), [You've Been Served (J)](joke-level-youve-been-served.md) | | | Entities: | [Entity 2](entity-2.md), [Entity 4](entity-4.md), [Entity 21](entity-21.md), [Entity 51](entity-51.md), [Entity 70](entity-70.md), [Entity 88](entity-88.md), [Entity 116](entity-116.md) | | | Objects: | [Object 2](object-2.md), [Object 52](object-52.md) | | | Phenomenon: | [Phenomenon 51](entity-51.md), [Phenomenon 71](phenomenon-71.md) | | | Tales: | **[:)](smiley.md)**, [Crossroads](crossroads.md), [All in a Day's Work](all-in-a-days-work.md) | | | Other: | [B.N.T.G. Hub](the-b-n-t-g.md), [Akirooms](akirooms.md) | |  [Close](index.md) |

Peter stepped into the center of the crossroads and set a small black box down on the cracked asphalt. He stood up and took in his surroundings for what he hoped was the last time. Four identical roads stretched into the distance, vanishing behind rows of silent houses. The only sound he could hear was the gentle, uneven hum of the dim streetlight above.

He crouched beside the box, wiping a layer of sweat from his forehead before flipping it open. Inside were the things the ritual had called for—the *offerings* he spent weeks acquiring. A jar of grave dirt he had dug up from [Level 249](level-249.md), the squishy femur of a [blub cat](entity-29.md), and a bundle of dried yarrow he'd scavenged from [414](level-414.md).

Each item felt stupid in its own way—such a random assortment of trinkets—but together they were supposed to do *something*. Peter stared at the strange little collection, half expecting it to rearrange itself into something profound. Instead, the femur made a wet sound when he poked it. He sighed. "You better be worth all that trouble," he muttered to the box as he closed it.

It was dark, as always on [Level 9](level-9.md), and the streetlight provided barely enough light for Peter to read the instructions he scribbled down on his now-crumpled paper. Removing the chalk from his pocket, he began to draw a circle around the box, the rough concrete not doing any favors for the unskilled artist. Peter nervously chewed the corners of his lip as the emblem slowly took shape.

![white outline of demonic emblem](http://grave-box.wikidot.com/local--files/offsettemp/sigil)

"Yeah, that looks about right." Peter held up the piece of paper, comparing the sigil printed on it to the one he shakily drew around the box. It wasn't perfect, but he figured it was close enough. It would have to be.

He exhaled and glanced back at his notes. "Light a candle on the box's lid, and wait until it fully melts." He dug around in his pocket until his fingers found something smooth and waxy. He finally pulled out a small, slightly bent, blue birthday candle—the one he had reluctantly traded half of a perfectly good [ChocoBytes bar](object-67.md) for. Peter shook his head while he gently straightened it. "I sure hope this counts."

Unconfident in the viability of his plan, Peter placed the candle on the box and balanced it the best he could. The absurdity of the situation began to dawn on him as he retrieved the matchbook from his bag. He struck four matches to no avail, cursing under his breath before he finally got the fifth to ignite. Peter inhaled sharply as he lit the candle, singeing the tip of his finger in the process. He flicked the match towards the vacant sidewalk and took a few steps away from the box.

![A blue candle birthday candle with a burning flame](http://grave-box.wikidot.com/local--files/offsettemp/candle)

"So… I guess I just wait now."

Standing alone in that intersection, wait Peter did—for about five minutes. As the candle slowly melted away, an all-too-familiar feeling began to creep up his spine, shame. "What am I even doing here?" Disappointed, Peter began to walk away from his presumably fumbled summoning before a voice froze him stiff.

"That's my line, Kid." The streetlight above flickered as the silky voice cut through the silence like paper. Peter's heart leapt into his throat, stirred up by a wave of mixed emotions. He slowly spun around to be greeted by a tall, slim man, his blood-red skin contrasting his well-fitting, grey three-piece suit.

"There's a reason the recipe calls for a desolate crossroads—I enjoy a certain level of anonymity…" The devil slicked back his jet-black hair, tucking it neatly around the short pointy horns protruding from his head. "…down the road from your mom's house doesn't scream *anonymous*, does it?" His face wore a mirthless smile—something honed over centuries until it became muscle memory.

"H-holy shit—I didn't actually think it would work!" Unsure how to greet the figure before him, Peter took a few steps forward in excitement, but the widening of the devil's sly smile gave him further pause.

![A devilish smile from a red hued man.](http://grave-box.wikidot.com/local--files/offsettemp/smile)

"Ah yes, they never do, and yet here I am nonetheless…" The devil reached out his hand, sharp, manicured claws adorning the tip of each finger. Peter tore his gaze from his horned visage down past his claws, finally settling on the devil's polished shoes. "…The name's Barnabas, it's a pleasure to meet you." He could see the hesitation building up in young Peter—a reaction he was quite familiar with. "Don't worry, kid, I don't bite unless you ask," he said, giving Peter a playful wink. That seemed to be enough to draw Peter back in.

"Yeah, sorry about that, man. I—uh, well, you know…" Peter murmured as he lightly gripped Barnabas's surprisingly cold hand. "…My name is Peter." Barnabas squeezed his hand firmly, not breaking eye contact until Peter coughed nervously and looked down the desolate suburban street.

Seemingly satisfied, Barnabas ungripped Peter's hand and paced away from him, slowly treading a circle around the young man, eyeing him up and down. Peter could nearly feel his cold, assessing eyes as they traced him, and it sent a shiver down his spine. The rhythm of his steps echoed off the empty homes around the intersection—Barnabas walked with an inhumanly graceful fluidity; it was almost mesmerizing.

"Well, Pete, as much as I love the foreplay, I do have better things to do this evening—so what'll it be? Money, power… women?" The devil stopped behind him and placed a cold hand on Peter's shoulder, making him flinch slightly at the touch. "Just let ol' Barnabas know, and I'll make it happen."

"I-I just want to go home, man." Peter said, nearly choking on his words. Barnabas snapped back in shock, his dark eyes widening in disbelief. "Home‽" He let out a boisterous laugh and it reverberated with more bass than someone with his stature should produce. "That's a good one, kid. Never traded a soul for a ride home before." He let out a few more cackles, each making Peter wince more than the last—his hope for a way back to the [Frontrooms](https://backrooms-wiki.wikidot.com/frontrooms) dwindling, slowly replaced by a creeping frustration.

"You can grant any wish, though, right? That's what the book said—that was the whole point of all this." Peter's pulse hammered in his throat, but sudden assertiveness in his tone splashed an even wider grin across Barnabas's face. "No need to get upset now, Pete—I'll take you wherever you want to go."

Peter opened his mouth to speak, but Barnabas paid him no mind. "First there's a deal to be made." Barnabas scratched his chin, feigning deep thought as he hummed a curious tone. "You know what, Pete, I like you, it takes a lot of balls to call me up like an Uber. A little rude, but ballsy. How does 10 years off your lifespan sound? Fair enough?"

"Yeah, I mean, I'll do whatever as long as you get me out of here." The rekindled hope was apparent in Peter's words, the faintest smile touching the corner of his lips.

"Good, good…" Barnabas used a claw to slice his palm, the pain barely registering in his mind as he extended his hand to Peter once again. "…How about we shake on it, *friend*." Every fiber of his being told Peter not to touch the devil's hand, but desperation got the better of him. '*I've already come this far, what's one more bad decision.*'

![A red hand shaking a normal hand.](http://grave-box.wikidot.com/local--files/offsettemp/shake)

"As much as I'd just *love* to stay and chat—I am quite busy, as I said, so if you'll be so kind as to imagine wherever it is you'd like to go. And make sure you think carefully—we wouldn't want my precious cargo landing *off course*, now would we?"

Peter squeezed his eyes tight and imagined he was back in his mother's house. He could picture it perfectly—warm light in the windows, the old oak tree outside his room, and the quiet safety he hadn't felt in years. "Okay, I'm ready."

"Yeah, that'll do…" Barnabas placed his hand on Peter's shoulder and raised his other hand above his head. "…I'll be seeing you around, kid." With that, Barnabas ceremoniously snapped his fingers.

And absolutely nothing happened.

"I swear this never happens to me, Pete." Barnabas playfully teased as he prepared a second attempt. ***Snap*** — For a moment Peter believed that maybe it had worked, that the silence surrounding them was some void between worlds. But he opened his eyes only to be met with the bewildered gaze of Barnabas. "Did I do something wrong?"

Barnabas waved off the question as he retrieved a cell phone from his pocket to check the time, the blue glow of the screen painting his crimson face in an almost human light. He let out an exaggerated sigh as he noticed "**No Service**" in the top right corner. "No, Pete, it just looks like cell service isn't the only thing lacking in this bum-fuck town—let's try again."

Barnabas snapped thrice more, each cracking through the silence like a gunshot, only to be met with the mocking flicker of the streetlights. Peter let out a sigh. "I guess not even you can get me out of the Backrooms." The devil stopped mid-snap, his slick smile faltering for the first time since he arrived.

"The… Backrooms? Where have I heard that before…" With a flick of his wrist, a small black book appeared in Barnabas's hand, the motion was so quick it left a faint reddish trail in the air. The cover of the book was made from old, worn leather adorned with the seal Peter drew to summon Barnabas.

![A small book flippedopen, the page has unreadable writting and a demon sigil.](http://grave-box.wikidot.com/local--files/offsettemp/book)

He flipped through the pages at a blinding speed. "Let's see. Ah, here it is." He stopped wide-eyed on the page he was looking for. He mumbled the words aloud as he quickly read the page, "The Backrooms, blah blah, endless hallways, yada yada, no escape…" Barnabas snapped his attention back to Peter, then back to his book, and once again back to Peter. "Do you have any idea what you've done‽" His grip on the small book tightened as white-hot rage burned its way through his playful demeanor.

"I-I-I'm sorry, I just thought that—" His words choked in his throat as Barnabas jabbed a pointed finger at his face. The sudden change in atmosphere sent waves of conflicting emotions through Peter's mind—with an accelerated pulse, his breath came quick and shallow.

"Well, you thought wrong, *Pete*, and now I'm stuck in this extra-dimensional trash bin shithole with you!" Barnabas's voice grew louder with each word as he threw his hands up in frustration. He dramatically turned his back to Peter, his figure casting an unnaturally long shadow down the street.

The night's events looped in his flustered mind, while Peter looked for logic in the illogical. "But, you got here, didn't you? Doesn't that mean you can leave?" Peter's frustration came dangerously close to bubbling to the surface.

"Does it look like I can leave‽" Barnabas spun back on his heel, eyes ablaze as he annoyingly snapped his fingers in front of Peter's face—each loud crack making him back away slowly. The berating reminded him of every teacher he ever hated, every shitty evaluation, and a lifetime of mistakes—Peter finally had enough.

"I'm sorry, okay?" Peter burst out, his voice cracking. "I didn't mean to drag you into this, I swear. I just…" He rubbed at his eyes and shook his head. "I was sick of it. The endless levels, the fucking monsters, the constant fear that never stops. I can barely sleep, and every day feels the same—I just wanted out. I just wanted to go home. That's all. I didn't think it would… trap you, or fuck with your powers, or whatever the hell this place does. I didn't know."

The silence sat in the air like a dead bird, and the reality of the situation settled into Barnabas. Peter's shaky hands slowly steadying as the adrenaline faded to despair.

Finally, Barnabas let out a low whistle, leaning back against the streetlight. "Listen, kid… I get it. From what I've heard, this place is a real hellhole, and that means something coming from the folks I know. I might be stuck here too, but now we're stuck in the shitshow together, at least until our agreement is fulfilled. So I guess you can consider yourself my tour guide and me your unwilling customer."

The devil flashed Peter a wide grin, and for once it felt almost genuine. The gesture helped melt away the anxiety that had been ready to boil over moments ago. The tension around them seemed to loosen its grip as they finally came to an understanding.

"So… what do we do now?" Peter asked, mind still reeling from the night's events. He shifted awkwardly in place, not sure where this newfound union would take them.

"We should get to the important stuff first…" Barnabas begins to walk down the road, his polished shoes clicking softly against the cracked asphalt. The sound echoed faintly, swallowed quickly by the emptiness beyond the glow of the streetlight. He motioned for Peter to join him. "… You know where we can find a bar around here?"

Peter hesitated for only a moment before following. The mismatched pair made their way down the worn pavement of Level 9, shadows mingled in the glow of the yellow lights above. While he might not have found a way home yet, for the first time in a long while, Peter didn't feel entirely alone.

"I'm pretty sure there's one near the M.E.G. on [Eleven](level-11.md)"

"I don't know who Meg is, but she better make a strong drink."

![Two silhouettes walking down a suburban street.](http://grave-box.wikidot.com/local--files/offsettemp/friends)

## …To Be Continued.

---

|**Crossroads**|**Happy Hour**

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Hellbound Part I: Crossroads](crossroads.md)" by DrAkimoto, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/crossroads](crossroads.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/crossroads">Hellbound Part I: Crossroads</a>" by DrAkimoto, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/crossroads">https://backrooms-wiki.wikidot.com/crossroads</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** Samigina.jpg  
> **Author:** Samuel Liddell MacGregor Mathers  
> **License:** Public domain  
> **Source Link:** <https://commons.wikimedia.org/wiki/File:Samigina.jpg>

> **Name:** candle  
> **Author:** DrAkimoto  
> **License:** CC BY-SA 4.0  
> **Source Link:** this page  
> **Derivative of:** <https://flic.kr/p/3hkXfp>

> **Name:** smile  
> **Author:** DrAkimoto  
> **License:** CC BY-SA 4.0  
> **Source Link:** this page  
> **Derivative of:** <https://flic.kr/p/t3u4Vo>

> **Name:** Hermandad - friendship.jpg  
> **Author:** Rufino  
> **License:** Creative Commons Attribution-Share Alike 2.0  
> **Source Link:** <https://commons.wikimedia.org/wiki/File:Hermandad_-_friendship.jpg>

> **Name:** book  
> **Author:** DrAkimoto  
> **License:** CC BY-SA 4.0  
> **Source Link:** this page  
> **Derivative of:** <https://www.flickr.com/photos/132707542@N06/18141923061>, <https://commons.wikimedia.org/wiki/File:46-Bifrons_seal.png>

> **Name:** friends  
> **Author:** DrAkimoto  
> **License:** CC BY-SA 4.0  
> **Source Link:** this page  
> **Derivative of:** <https://www.flickr.com/photos/ragesoss/3514574166>, <https://commons.wikimedia.org/wiki/File:A_man_walks_on_the_courtyard_of_the_European_Parliament_(motion_blur).jpg>, <https://commons.m.wikimedia.org/wiki/File:Lecce_-_Comune_di_Lecce_-_2024-09-09_10-26-55_001.jpg>

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/crossroads](https://backrooms-wiki.wikidot.com/crossroads)
