---
title: "Unumbered Level - \"In extremis\""
source: "https://backrooms-wiki.wikidot.com/in-extremis"
retrieved_at: "2026-08-23T23:38:04+00:00"
license: CC-BY-SA-3.0
---

# Unumbered Level - "In extremis"

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

rating: +29[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  
⚠️ Content Warnings ⤴

Info

**Content Warning:** Contains an image with fake blood and described violence.

[Close](index.md)

[![windmill](https://backrooms-wiki.wdfiles.com/local--resized-images/in-extremis/windmill/medium.jpg)](https://backrooms-wiki.wdfiles.com/local--files/in-extremis/windmill)

I opened my eyes to ethereal plains, the clouds formed an empyrean terrace that stretched as far as I could see. The point where sky and ground diverged was marked only by withered trees that bestrewed the achromatic landscape. I could not remember how I got there, my whole life before that moment was like a fever dream that I had just woken up from. Through the fog of countless fleeing memories, a searing pang in my forehead refocused me.

Before me was a monumental structure—drifting clouds obscured its finer details as I made my approach. The air lacked texture, offering one of the most vapid tactile experiences I had ever known. There was no temperature, not in the normal way one would perceive it. As I neared the structure, its features began to emerge: impossibly long sails stretched from the windmill's summit, and a steep stairway led to a door-shaped void.

From the base of the stairs, I felt like I was on the precipice of perfect equilibrium, a centeredness no man was ever meant to know. The clouds churned in convoluted spirals, spun to life by the sail's methodical turning. Each rotation fell in tempo with my labored breath. Whether by the gravity of their rhythm or by some predestined pull, I found myself irresistibly drawn to the structure—beckoned by it.

Each step on the weathered wooden stairs bore the weight of the lifetime of forgotten moments that led me there. I gripped the railway as I pulled myself forward, and it too lacked the texture one would expect of its appearance. I winced, overwhelmed by another pain in my head—a wet, burning sensation that shook me to my core. When I opened my eyes, I was at the apex of the stairway, the doorway stood before me like waiting jaw. I blinked again, and I was inside the windmill—the familiar sound of an old door closing echoed somewhere in the distance behind me.

[![theonewhoknows](https://backrooms-wiki.wdfiles.com/local--resized-images/in-extremis/theonewhoknows/medium.jpg)](https://backrooms-wiki.wdfiles.com/local--files/in-extremis/theonewhoknows)

Something was with me in the room, silent, waiting, as if it knew the exact moment I would arrive. It is hard to describe it… It was a man, or at least man-shaped, with a head not so dissimilar to a sunflower. Where one would expect seeds, there was instead an eye, carved from an endless pit with the vibrancy of a million infinitesimal stars. Its presence stirred within me an unfamiliar feeling, like every question I had ever thought just landed on the tip of my tongue. And yet, only one managed to tear itself free from my lips…

*"Who are you?"*

*"I do not have a name, but you may know me as* *[![name](https://backrooms-wiki.wdfiles.com/local--resized-images/in-extremis/name/medium.jpg)](https://backrooms-wiki.wdfiles.com/local--files/in-extremis/name)."*

Its voice was soft and loud and ever‐knowing, the discordant harmony of a thousand whimpering dogs, and yet words formed nonetheless. Its name was incomprehensible, an unwelcome impurity of countless broken promises—a name I've always known since the moment I forgot it.

*"Where am—"*

It placed a finger where its mouth should be, the movement causing the words in my throat to swell, lodging themselves between breaths. It stood like that for a moment before gesturing broadly.

*"There are only so many truths left here, you should choose your words more carefully."*

The silence between us was punctuated by the rhythmic tick of an unseen clock, its melody matched the pace of my faltering heartbeat. I stared at the visage in front of me, and only after what felt like forever did I realize I was holding my breath. Exhaling, I finally found the words I was looking for.

*"Why am I here?"*

The stars realigned as the being focused on me, I could feel it tearing through my thoughts, my past, my future. It was a nauseating pressure—the weight of infinity boring into my soul.

*"You have fallen, like all men before you, and all that will remain when you are gone. You—*"

The chime of the unseen clock interrupted it, breaking its focus for only a moment. Each reverberation felt like a jagged puncture in my skull.

*"There is not much time left, yet fate has not yet made up her mind. However fleeting, there is still hope for you."*

I knew its words in the way a hammer knows a nail, it had no meaning, and yet it meant everything. The pain returned to the forefront of my mind, throbbing in harmony with the tick of the clock, a countdown to something I could not see. It was faster now, as was my pulse—my mind was being pulled from my body like a broken tooth. My words came in hot, ragged breaths as a warmth flowed across my face.

*"What do you mean? I can't remember anything! I was—I was doing something, and then I was here. What does fate have to do with anything? I don't understand what's going on!"*

There was a knock at the door behind the being, each strike reverberated like a gunshot that shook the world around us. The pain faded as my vision started to blur. I could barely make out the faint outline of the being, its hand outstretched, pointing towards the door.

*"You are in luck, it looks like she has chosen in your favor… I will see you at the end."*

The door behind it crumbled to dust, and my vision was overwhelmed by an impossibly bright light.

[![alive](https://backrooms-wiki.wdfiles.com/local--resized-images/in-extremis/alive/medium.jpg)](https://backrooms-wiki.wdfiles.com/local--files/in-extremis/alive)

And then I was here.

The report said I was on a routine exploration, and we were ambushed by a pack of hounds. McKinley was the one who saved me—a hound had my head clamped in its mouth as it dragged me down the hallway. They said she chased it for a few dozen meters before eventually shooting it six times.

I was told it was all a near-death hallucination, but I don't believe them. I know I went somewhere, somewhere I wasn't meant to see. It was too real to have just been a hallucination. The shrink can call it whatever he wants, but I know what I saw.

All the doctors say I was lucky, that if all I got out of this was a weird dream, I should be happy. But they can't explain away everything—I still have questions that there are no answers for. When they found me, I had a small sunflower clenched in my hand. I still have it. Still just the same as the day I woke up with it all those months ago. Though it hasn't wilted, it has lost a petal or two since then. I keep it on my nightstand as a reminder, and sometimes, late at night when all is silent, I can hear the faint tick of that unseen clock. And I don't know where I went that day, but somewhere deep down I know I'll have to go back eventually.

[![flower](https://backrooms-wiki.wdfiles.com/local--resized-images/in-extremis/flower/medium.jpg)](https://backrooms-wiki.wdfiles.com/local--files/in-extremis/flower)

---

[author](javascript:;)

[thanks for reading!](javascript:;)

*"In extremis"*

Written by [DrAkimoto](akirooms.md).

---

Critique by:   
Greenlit by:

---

|  |  |  |
| --- | --- | --- |
| Levels: | [Level 0](level-0.md), [Level 24](level-24.md), [Level 77](level-77.md), [Level 79](level-79.md), [Level 80](level-80.md), [Level 102](level-102.md), [Level 103](level-103.md), [Level 108](level-108.md), [Level 116](level-116.md), [Level 117](level-117.md), [Level 406](level-406.md), [Level 701](level-701.md), [Ataraxia](ataraxia.md), [In Extremis](in-extremis.md), [You've Been Served (J)](joke-level-youve-been-served.md) | |
| Entities: | [Entity 2](entity-2.md), [Entity 4](entity-4.md), [Entity 21](entity-21.md), [Entity 51](entity-51.md), [Entity 70](entity-70.md), [Entity 88](entity-88.md), [Entity 116](entity-116.md) | |
| Objects: | [Object 2](object-2.md), [Object 52](object-52.md) | |
| Phenomenon: | [Phenomenon 51](entity-51.md), [Phenomenon 71](phenomenon-71.md) | |
| Tales: | **[:)](smiley.md)**, [Crossroads](crossroads.md), [All in a Day's Work](all-in-a-days-work.md) | |
| Other: | [B.N.T.G. Hub](the-b-n-t-g.md), [Akirooms](akirooms.md) | |

  
  

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Unumbered Level - "In extremis"](in-extremis.md)" by DrAkimoto, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/in-extremis](in-extremis.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/in-extremis">Unumbered Level - "In extremis"</a>" by DrAkimoto, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/in-extremis">https://backrooms-wiki.wikidot.com/in-extremis</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:**windmill  
> **Author:** DrAkimoto  
> **License:** CC BY-SA 3.0  
> **Source Link:** This page  
> **Derivative of:** <https://commons.wikimedia.org/wiki/File:Traumwelten.jpg>

> **Name:** truth  
> **Author:** DrAkimoto  
> **License:** CC BY-SA 3.0  
> **Source Link:** This page  
> **Derivative of:** <https://flic.kr/p/KzuFHG>, <https://commons.wikimedia.org/wiki/File:Sunflower_(Helianthus_annuus)_D35_5966_01.jpg>, <https://commons.wikimedia.org/wiki/File:Interior_view,_painted_inscription_on_beam_in_the_living_room,_looking_from_the_northeast_-_National_Park_Seminary,_Dutch_Windmill,_2750_Dewitt_Circle,_Silver_Spring,_HABS_MD,16-SILSPR,2M-16.tif>, <https://commons.wikimedia.org/wiki/File:Helix_Nebula_The_Eye_Of_God_Deography.jpg>

> **Name:** alive  
> **Author:** Mostafameraji  
> **License:** CC0 1.0  
> **Source Link:** <https://commons.wikimedia.org/wiki/File:Surrealism_in_photography_09.jpg>  
> **Notes:** slight editing of shadows and lighting

> **Name:** death  
> **Author:** DrAkimoto  
> **License:** CC BY-SA 3.0  
> **Source Link:** This page  
> **Derivative of:** <https://commons.wikimedia.org/wiki/File:Sunflower_(Helianthus_annuus)_D35_5966_01.jpg>, <https://commons.wikimedia.org/wiki/File:Open_Palm_of_the_Left_Hand,_Fingers.jpg>

> **Name:** song  
> **Author:** DrAkimoto  
> **License:** CC BY-SA 3.0  
> **Source Link:** This page  
> **Derivative of:** <https://commons.wikimedia.org/wiki/File:Ice_Demon_(ISRC_USUAN1200061).mp3>  
> **Note:** A remixed and edited version of the original song.

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/in-extremis](https://backrooms-wiki.wikidot.com/in-extremis)
