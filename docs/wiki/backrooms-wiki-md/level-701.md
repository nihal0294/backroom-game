---
title: "Level 701 - \"Fields of Divus\""
source: "https://backrooms-wiki.wikidot.com/level-701"
retrieved_at: "2026-08-23T23:34:31+00:00"
license: CC-BY-SA-3.0
---

# Level 701 - "Fields of Divus"

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

rating: +17[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

Zachary's eyes tore open as ragged breaths escaped his dry lips. He looked around dazedly, his hand finding its way to the stained bottle of [almond water](object-1.md) tucked into his blue net bag. The entrance to the level was more disorienting than he expected—Zachary stood and took in his surroundings.

[![A foggy field with a large tree and grandfather clocks spread around.](https://backrooms-wiki.wdfiles.com/local--resized-images/level-701/field/medium.jpg)](https://backrooms-wiki.wdfiles.com/local--files/level-701/field)

"*This is the paradise?*"

The rolling field before him sat in silent abeyance—the sun shone brightly through the thick brume, yet Zachary felt no warmth. Sporadically across the field stood an array of old grandfather clocks. Their discordant ticks were the only sound to permeate the still air. He remembered the stuttered words of his last victim.

*Take this… please… it leads to a paradise… you can live forever…*

The thought of her wide, panicked eyes brought a slight smile to his face.

"*That bitch better not've been lyin'.*"

He looked down at his bloodied white shirt, not a drop of it his own. He put down his bag and rummaged through it, finally finding the rolled-up fabric he was looking for. After donning a dingy, ill-fitting tan shirt, he pocketed his shiv in his orange jumpsuit pants, pulled the bag strings shut, and slung it over his shoulder. It was then that Zachary realized that he lost the weird [key](object-2.md) that he had so distastefully acquired to get here.

Not having a clue as to where he should go, Zachary walked to the nearest clock. He stared at the face; it read 1:53. Looking down at his cracked, stolen watch, he scoffed, "*stupid clock—ain't even the right time.*" He shoved hard, toppling the old dusty cabinet to the ground. The sounds of calamity echoed through the quiet fields.

He walked for what felt like forever until he finally arrived at the colossal tree he saw when he awoke in the level. Immediately catching his attention was the metal shard wrapped in blue shoestring, a shiv just like his own. He took a second to appreciate the notches on the blade, far more than his own—to the point it barely resembled a blade at all, more akin to a two-sided saw than a makeshift dagger. Beneath the knife a message was carved into the gnarled bark:

**10 o clock from the sun  
youll find it**

Zachary looked to the sun, then adjusted himself two steps to the left—far away he could see a flickering light. He ripped the shiv from the tree and slid it in the pocket next to his; he pulled out a crumpled pack of smokes. "*Shit… Only three left.*" He lit a bent cigarette with a match and begrudgingly trudged towards the distant illumination.

---

About halfway towards it, Zachary could just barely see the faint outline of his destination… A flickering campfire. Eyes locked on his target, he didn't notice the desiccated remains underfoot. With a sickening crunch he stumbled forward—shoe stuck haphazardly in a corpse's ribcage. "*Goddamn, look at this shit.*" He crouched and peeled his shoe from the carcass, pausing to take notice of the object in its bony hand. A small shiv, with a blue shoestring—this one nearly identical to his own.

Zachary scratched at his stumbled chin—something felt wrong, but he didn't know why. *Did that old hag pull one over on me?* He bent over again, picking up the shiv and inspecting it. Twenty-four notches, one more than his own. He glanced back to the corpse, taking a closer look at the scrap of clothing clinging to it. A white shirt and orange pants—just like he wore when he'd entered the level.

"*This place must be playing tricks on me…*"

He knew not the depth of fuckery to be found in a place like this.

Eventually, as he walked towards the camp, he spotted the outlines of two people, sitting near the raging fire.

---

Zachary approached slowly; there was no way they hadn't seen him coming, so there was no need for stealth. The fire itself was huge, a dozen or more clocks smashed and strewn into a slapdash bonfire. Near it sat two older men perched atop a makeshift bench, likewise made of a collage of grandfather clocks. He thought they looked similar, like one was the older brother of the other. They were dirty, caked with what appeared to be years of grime and filth.

"*Took you long enough—what was it, two hours, Zeek?*" The older of the two men spoke with a gravely yet familiar voice, nudging the man next to him. The younger nodded vigorously before letting out a forced cackle. "How long you been here, boy? You look like you just got—"

"*Are you two fuckers in on it?!*" Zachary brandished his shiv, pointing it as he questioned the unserious men.

"*In on it? Oh…*" The older man made an exaggerated knowing look towards his counterpart, "*…shit-for-brains here thinks we're in on it, Zeek!*" The two men shared a laugh, each holler spiked Zachary's anger.

"*No, we aren't in on it, kid—just as fucked as any of us can be, right Zeek?*" The younger of the two finally spoke, and his voice was even more familiar than the last, but Zachary still couldn't place a finger on it. "*Can we just hurry it up, Z Man, I'm starvin'…*"

"*Oh c'mon, Zeek, can't we have a little fun, I've been so bored—*"

The way the man's eyes narrowed on him bothered Zachary in a most familiar way.

"*Listen, you old fucks, I'll carve you up like that hag if you don't start talkin'!*" Zachary had enough of their shenanigans, and the older man knew there were no more games to be played.

"*Alright, kid, have it your way—you wanna know where paradise is, right? That's what the old bitch told'ya?*"

"*You know where it is? Why the fuck didn't you just say so?*" The older man stood and waved a weathered hand, indicating Zachary to follow.

"*Just over here, I'll show'ya the way.*" With Zeek in tow behind them, the three men walked a dozen meters from the campfire before the eldest of them came to a stop.

"*Well, this is it, Zacky-boy!*" The man gestured to a small indentation in the ground, no more than a few meters wide. "*H-how'd you know my—*" He stammered off as his eyes finally focused on what laid before him.

The pit was filled with corpses—more than Zachary could possibly count. Most had been dismembered, missing most if not all of their limbs. Some were clothed, in various combinations of the stolen clothes kept within his bag, others were not. Through the gore Zachary could see his own face, scores of them, each staring back at him in a different stage of decomposition.

He barely had time to register the gruesome scene as he turned to move away—THWACK. The hand of Zeek slammed into his face, embedding a small shiv through his eye socket, the handle wrapped in a faded blue shoelace.

---

The two oldest Zacharies once again took their place beside the fire, slowly roasting their victim's left calf on a spit. The prison tattoo of a snake they all shared is still visible through the charred flesh.

They did the same thing they did every night: reminisce about all the many cruel and unusual ways they've killed other Zacharies over the decades they've been trapped here. Each story was worse than the last till they ate their fill and grew tired.

"*Pass me another stogie, Zeek—I'm almost ready to call it a night.*"

Zeek looked down at the pack and nudged open the lid. "*There's only one left.*" The two men looked at each other knowingly till the eldest finally broke the silence.

"*Well, it's been fun while it lasted, right, Zeek?*"

"*Yeah.*"

---

A fourth Zachary stumbles into the horrid campground and comes across the bodies of the two old men, both filled with a plethora of still leaking holes—in each their hands a small shiv with a blue shoestring handle, of course.

The new Zachary steps over the men and sits down by the fire, enticed by the smell of his own scorched shin. He takes the now unrecognizable, burnt hunk of meat off the spit, sniffs it, shrugs, and takes a bite.

---

[● Credits](javascript:;)

[○ Close](javascript:;)

*[𝅘𝅥𝅮𝅘𝅥𝅮 "But now living's a struggle, except when it isn't, yeah! I woke up this morning and, I wasn't in prison—I can't promise that I'm far from it, I'd still kill a man for cigarette. But with friends like you, who needs homicide?" 𝅘𝅥𝅮𝅘𝅥𝅮](https://youtu.be/tO3jOFtCkNA?is)*

**Written by:** [DrAkimoto](akirooms.md)

**Critque by:**

**More from me:**

|  |  |  |
| --- | --- | --- |
| Levels: | [Level 0](level-0.md), [Level 24](level-24.md), [Level 77](level-77.md), [Level 79](level-79.md), [Level 80](level-80.md), [Level 102](level-102.md), [Level 103](level-103.md), [Level 108](level-108.md), [Level 116](level-116.md), [Level 117](level-117.md), [Level 406](level-406.md), [Level 701](level-701.md), [Ataraxia](ataraxia.md), [In Extremis](in-extremis.md), [You've Been Served (J)](joke-level-youve-been-served.md) | |
| Entities: | [Entity 2](entity-2.md), [Entity 4](entity-4.md), [Entity 21](entity-21.md), [Entity 51](entity-51.md), [Entity 70](entity-70.md), [Entity 88](entity-88.md), [Entity 116](entity-116.md) | |
| Objects: | [Object 2](object-2.md), [Object 52](object-52.md) | |
| Phenomenon: | [Phenomenon 51](entity-51.md), [Phenomenon 71](phenomenon-71.md) | |
| Tales: | **[:)](smiley.md)**, [Crossroads](crossroads.md), [All in a Day's Work](all-in-a-days-work.md) | |
| Other: | [B.N.T.G. Hub](the-b-n-t-g.md), [Akirooms](akirooms.md) | |

---

« [Level 700](level-700.md) | Level 701 | [Level 702](https://backrooms-wiki.wikidot.com/level-702) »

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Level 701 - "Fields of Divus"](level-701.md)" by DrAkimoto, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/level-701](level-701.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/level-701">Level 701 - "Fields of Divus"</a>" by DrAkimoto, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/level-701">https://backrooms-wiki.wikidot.com/level-701</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Filename:**field  
> **Name:**field of divus  
> **Author:**DrAkimoto  
> **License:**CC BY-SA 4.0  
> **Source Link:** This page  
> **Derivative of:** <https://commons.wikimedia.org/wiki/File:Haltern_am_See,_Westruper_Heide_--_2021_--_4714-8.jpg>, <https://commons.wikimedia.org/wiki/File:Mulliken_-_Tall_Case_Clock_-_HNT.jpg>, <https://commons.wikimedia.org/wiki/File:Longcase_clock_MET_DP280612.jpg>, <https://commons.wikimedia.org/wiki/File:Grandfather_clock_q.jpg>

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/level-701](https://backrooms-wiki.wikidot.com/level-701)
