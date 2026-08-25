---
title: "Level 0.5 - \"Aquaclaustrophobic Infirmary\""
source: "https://backrooms-wiki.wikidot.com/level-0-5"
retrieved_at: "2026-08-23T23:35:25+00:00"
license: CC-BY-SA-3.0
---

# Level 0.5 - "Aquaclaustrophobic Infirmary"

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

rating: +32[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  
⚠️ Content Warnings ⤴

Info

### Thanks to the critters!

Swordpopa  
Narwhal  
CROOOKIE  
Wynths  
Sky3

##### Written by Moose🫎/FuneralBouncer

##### Cleared by Limdoc

### !!CONTENT WARNINGS!!

##### Descriptions of injuries

##### Suicidal thoughts

##### Claustrophobia (obv)

##### Self Harm

[Close](index.md)

### By Percy Ghan - The Backrooms Level Critic

### Date of Post: 02/08/2026

### Date of Experience: 23/01/2026

SURVIVAL CLASS  
**3**

**Resources: 2/5**  
Food is Uncommon

**Exit: 3/5**  
Difficult to Exit

**Environment: 4/5**  
Extreme Environmental Risk

**Entities: 2/5**  
Some Hostile Presence

This is a sub-level shithole I found in [Level 0](level-0.md)'s Blackout Zones. I couldn't fathom coming back here, I still lay awake at night thinking of that place. I see those halls in every corridor I look down; I feel that water against my legs every time I shower. This review is my one and only warning: stay away from this place.

'I've been here so long… I almost miss that fucking buzz, now all that's engraved into my brain is the echoed drip of dirty water and the loud swash as my legs rip through the liquid. My lower half has blackened and gone completely soggy, the slightest graze against any surface rips my skin open. I can't even take a break to even sleep because my head will go under and I've never been so helpless and tired, there's literally no way I can rest. I just want someone to come save me, but I'm all alone… alone in these hallways that have swallowed me whole.'

*~ Diary entry found floating in the waters of the Waterlogged Passages.*

I was stuck in that place for a whole week, quite a horrible experience to go through right after first noclipping here. I was asleep in front of the computer after a long day of working on it, when I noclipped while unconscious and woke up in Level 0. I thought I was having a lucid dream when I came to, until I realised I wasn't. I was stuck in those endless yellow rooms for around a day, then I found a blackout zone after a while. It was almost peaceful being alone in the dark with those fucking loud lights gone until I realised how tough it would be to escape without vision. I was stuck in there until I was lured to the Aquaclaustrophobic Infirmary by that familiar buzz. I found a staircase leading down into the place; if I had known what awaited me in there, I would never have descended those steps.

# Waterlogged Passages

![a dark hallway with dim lights on the ceiling](https://upload.wikimedia.org/wikipedia/commons/f/f1/The_Corridor.jpg)

One of the many corridors

#### Day 1 - 3 — Entrance

The level stunk of wet mouldy laundry and the inside of a chemical storage closet, giving me a sinus infection after the first few days due to the potency. The wallpaper was the same as Level 0, however it was a uglier pale-cream colour and strips of it peeled from underneath the water. The water was knee length and so dirty I couldn't see the bottom: brown with oily looking splotches floating in it. The lights were short blue rectangles which spanned across the roof and hung from frayed wires which sparked often; I was terrified the whole time one would hang into the water and kill me. After the first day I missed the buzz of Level 0, the echo that ran through those hallways was deafening and eventually moving my legs through the water hurt my ears.

I was lost in the first bit of the sub-level for three days- *three whole days* I didn't get a wink of sleep for. I was so determined to find an exit I didn't even realise how long it had been. I was so tired I just sat down into the sewage-y liquid and slumped against the wall, my nose barely sat above the water. That fucking level wouldn't even let me *breathe* while I slept. I struggled to fall asleep in the cold dirty liquid and when I did, I didn't stay that way long. I woke up with my head underneath and stood up as fast as possible. For that next day, I couldn't stop throwing up, must've been some virus or bacteria that lurked in the water. I eventually became so dehydrated from vomiting that my lips split every time I flexed them. I craved water so much even the swampish stuff was strangely appetising despite how polluted and brown it was.

'When I first found that place, I didn't realise it would be so much worse than 0. That place literally grooms you with the quiet buzz and the lowered humidity, also providing an escape from Blackout Zones. I came to hate it worse than 0, it was insane how merely the sounds of the hallways were enough to make me crazy.'

*~ M.E.G. agent - Michael Roberts.*

#### Day 4

The level began to transition. The wallpaper began to disappear, showing an ugly wooden wall and a rot that formed deep holes in the timber like a wormy apple. The lights changed in shape to be longer, and they were attached to drop ceiling tiles, similar to Level 0. Trollies with snacks began appearing, which I enthusiastically stuffed my pockets (and mouth) with. I tried to climb up inside the roof and through the ceiling tiles by pressing my back against the wall and feet on the other side, then shuffling up but I couldn't manage; the space being too skinny.

# The Hospital

#### Day 5

I found a ledge at the end of the halls, leading into the new area I was more than happy to discover, the change in architecture graced my eyes like putting glasses on for the first time. The hospital was absolutely rank, oily floors, misplaced ceiling tiles, debris blocking the path and the smell of rotten flesh filled my surroundings but after being in the previous area for so long, it may as well have been Disneyland. The beds were the most exciting part for me; I hadn't even slept since I entered the Aquaclaustrophobic Infirmary and even though they were damp and smelled like moth balls it was still the happiest I have been in my time in the backrooms.

![a hospital room with shredded walls and a dusty floor.](https://upload.wikimedia.org/wikipedia/commons/a/a8/Slovakia%2C_Kom%C3%A1rno%2C_hospital%2C_abandoned_building_3%2C_55.jpg)

A particularly ruined room in The Hospital

#### Day 6 — *The Drowned*

It was lucky I locked the door of the room I slept in by complete accident, because I awoke to violent banging. I backed into the corner of the room as the door shook and rattled erratically; I was too scared to move. It was the first time I had encountered an entity; it was the moment my fears that had been brewing slowly the entire time I had been here finally came to a boil, I was stuck somewhere otherworldly. I heard gurgling come from the other side of the door, like when water is emptied down a drain. Eventually I was relieved to hear that the banging stopped, and I cautiously stepped outside the door, however it turned out it was *waiting for me*.

It was almost gelatinous, humanoid in shape but inhuman in nature. Its face was drooped as if it had a stroke and its legs were nothing but a blob that slid around the floor. I backed away and it began a slow slither toward me, gurgling and reaching out its arms. I ran down the hall, and it followed at just above average walking speed which I thought was anticlimactic at first. It followed me for hours through the halls of that infinite hospital, making desperate choking sounds out to me. Despite running several times, The Drowned caught up every time, knowing exactly where I was even if I hadn't seen it in ages. It was this Backrooms' take on the Immortal Snail, I guess. I got so tired walking for hours, but I couldn't slow down or it would catch me. My mouth was dry and I kept finding entrances to the Waterlogged Passages over and over without rest, but I refused to go back to that shithole. Eventually I reached the end of a long hallway to find the Waterlogged Passages waiting for me like the level was playing a sick joke. I turned around and saw The Drowned blocking the way, still gurgling and moving toward me like a snail.

I cursed to myself and finally relented, hopping back into the cold stagnant water. The Drowned followed me in but as soon as it touched the water it shrieked, then dissolved into a thick paste like fucking Sandman in Spiderman 3.

I walked back up the hall to the hospital and stepped up onto the ledge, then immediately fell over from exhaustion. I had been trying shake that thing for hours without a break and I was relieved to see it dead.

'The Drowned chases its prey slowly, always knowing where it is despite the distance between the two. The prey has no time to stop and rest unless they want the entity to catch up to them, eventually passing out from exhaustion or giving up and becoming a meal for it.'

*~ GPD - The Drowned.*

#### Day 7 - 8

Through these next few days, I would only look forward to dreaming. I would purposely knock myself out by holding my breath or hitting my head just for a few minutes asleep. I knew I was dreaming every time I was asleep and that I was just back there passed out on the floor or in some hospital bed. But I had given up hope in ever finding my way out of there, I didn't care if something attacked me in my sleep or I gave myself brain damage. I would dream of home, I dreamt of work for fuck's sake. Sometimes I would be laying down in front of an apple tree in my dreams, just taking in the peace and daylight that I thought I would never see again. Even though I knew they weren't real, I would talk to my family there just to free myself from the true isolation I was in. They were disconnected and nothing like them, not even their faces were theirs.

Between times I wasn't forcing myself to pass out or bathed in subconscious reality I would make a half effort to look for food and water. I was almost disappointed when I found it but forced myself to consume it because all I was picturing was an imaginary audience watching me fail. I survived but let me tell you- there were sometimes there where I really wanted to let a Drowned catch me or skip drinking water for the day.

#### Day 9 — Exit

On Day 9 I found a metal grate stairway that led down to a silent and cold carpark: [Level 1](level-1.md). I didn't even celebrate; I just dropped to my knees in so much relief I couldn't breathe. A few M.E.G. guys found me lying on the ground unconscious; I was so out of it I didn't even realise the injuries I sustained. My legs were full of fluid-filled blisters and lesions as well as infected lacerations all over my body. Doctors said if I left it another day, I would have went septic and most likely died.

![the underneath of a rough metal staircase.](https://upload.wikimedia.org/wikipedia/commons/3/36/D%C3%BClmen%2C_Kirchspiel%2C_Sondermunitionslager_D%C3%BClmen-Visbeck%2C_Wachturm%2C_Treppe_--_2024_--_5893.jpg)

My pink sheep, my shiny Pokémon, my four-leaf clover.

My dreams were the only thing that let me escape the place when I was there, but now it *haunts* them. Every night I'm in those hallways, in that hospital. It's been months and I'm still not over it, I think to myself I should stop complaining; that I should stop thinking about it but even on good days it still claws its way back to me in my sleep. I hoped by starting a review page and trying to make my new life in here as similar as I could to my one back home, the cold sweats would stop and so would the persistent nightmares. So here it is folks, hope you enjoyed reading about my suffering and heeded my warning to not go looking for this place.

If I could go back I absolutely wouldn't in 100 million years (if that wasn't already obvious), it's difficult to find an exit beyond belief and the eerie vibe ate me slowly but surely. I asked a few M.E.G. staff at Base Alpha what they thought of the level, and they told me about a few more exits.

'You have no idea how happy you can get after finding an exit to a level you've been stuck in for a long time. I remember finding an oddly clear patch in the stagnant water of the first part of the level, it was also warmer and smelled of chlorine. I put my head under, came up and found myself in [Level 37](level-37.md).'

*~ M.E.G. Researcher - Bonnie McRae.*

'Eventually, after a while of walking, I realised the hospital had transitioned into [Level 109](level-109.md) without me even picking up on it. It was almost a pleasant surprise to run into a hound which tried to eat me.'

*~ M.E.G. Agent - Michael Roberts.*

  

## M.E.G. NOTICE

  
The discovery of Level 0.5 - "Aquaclaustrophobic Infirmary" was made on 23/01/2026. Due to the discovery being so recent, it puts into question whether the level has not been escaped from previously or its new. It is unlikely that nobody has escaped from here because it is not difficult enough for this to be the case (and the sudden influx of new reports of this place). It is widely theorised by Dr. Alison Brown that a new phenomenon of level generation has been detected and will be investigated thoroughly in the near future. Due to the unresearched status of this level, it is advisable to not visit it or go looking for it. If you have any information, please contact Base Alpha.

*~ The M.E.G. - Level Discovery*

  
  

[+ Break the fourth wall](javascript:;)

[- Live in a fantasy](javascript:;)

**Written by** FuneralBouncer  
(Moose🫎 on Discord))

---

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Level 0.5 - "Aquaclaustrophobic Infirmary"](level-0-5.md)" by FuneralBouncer, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/level-0-5](level-0-5.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/level-0-5">Level 0.5 - "Aquaclaustrophobic Infirmary"</a>" by FuneralBouncer, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/level-0-5">https://backrooms-wiki.wikidot.com/level-0-5</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** The Corridor  
> **Author:** Aragonofdoros  
> **License:** [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/)  
> **Source Link:** <https://commons.wikimedia.org/wiki/File:The_Corridor.jpg>

> **Name:** Dülmen, Kirchspiel, Sondermunitionslager Dülmen-Visbeck, Wachturm, Treppe — 2024 — 5893  
> **Author:**[Dietmar Rabich](https://www.wikidata.org/wiki/Q34788025)  
> **License:**[CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/deed)  
> **Source Link:** <https://commons.wikimedia.org/wiki/File:D%C3%BClmen,_Kirchspiel,_Sondermunitionslager_D%C3%BClmen-Visbeck,_Wachturm,_Treppe_--_2024_--_5893.jpg>

> **Name:** Slovakia, Komárno, hospital, abandoned building 3, 55  
> **Author:** [Christo](https://commons.wikimedia.org/wiki/User:Christo)  
> **License:** [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/deed.en)  
> **Source Link:** <https://commons.wikimedia.org/wiki/File:Slovakia,_Kom%C3%A1rno,_hospital,_abandoned_building_3,_55.jpg>

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

« [Level 0.3](level-0-3.md) | Level 0.5 | [Level 0.7](level-0-7.md) »

---

Source: [https://backrooms-wiki.wikidot.com/level-0-5](https://backrooms-wiki.wikidot.com/level-0-5)
