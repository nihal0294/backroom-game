---
title: "Entity 21 - \"Anna\""
source: "https://backrooms-wiki.wikidot.com/entity-21"
retrieved_at: "2026-08-23T23:37:25+00:00"
license: CC-BY-SA-3.0
---

# Entity 21 - "Anna"

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

rating: +33[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  
⚠️ Content Warnings ⤴

Info

CW: This article contains content involving domestic and implied sexual violence.

---

Written by [DrAkimoto](akirooms.md) & [DivineAtlas](divineatlas.md) as part of the [2026 Valentines Blitz](valentine2026.md)

---

Atlas & Akimoto Collabs:

|  |  |  |
| --- | --- | --- |
| Levels: | [Level 80](level-80.md), [Ataraxia](ataraxia.md) | |
| Entities: | [Entity 21](entity-21.md) | |
| Tales: | [Canticle](canticle.md) | |

---

[Close](index.md)

David scratches at the unsightly scab on the side of his neck, eyes darting back and forth along the wall, fingers contorting along to keep track as he counts. He finishes and retrieves the recorder from his back pocket. His grubby hands grip the small plastic device; he takes a deep breath as his finger finds its way to the little red button.

**click**

> "*It's been five thousand, five hundred, and forty three days. We have managed to survive, my beloved and I, without any contact from the outside… I found another cache of supplies, enough for me—us, to survive. Anna… Anna has been quiet lately—the isolation has taken its toll on both of us. Maybe there isn't a way out—no—there's always a way, always, we just need to find it.*"

**click**

---

In the morning, David kisses Anna on her forehead, asking her to tidy up as he walks through the door. Her forehead is a little cold, but he finds no cause for concern. He leaves their makeshift home, carved into a nondescript room filled with years of filth and clutter.

Another hallway, another warehouse, another multitude of empty, thoughtless rooms, another day of not finding an exit. At the end of his excursion, David carries what he's able to from the warehouse—various cans and boxes filled with semi-edible whatnots to sustain him another day.

He opens his door to be greeted by the same room, just as he left it. He shuffles through a pile of empty boxes to a white wall where he has painstakingly mapped the level around them. He etched his daily findings into the wall with his dull, rusty pocket knife. As he turns to add the daily notch to the wall, he trips over a, luckily sealed, jar of piss.

*"I ask for one thing… One thing, Anna! Just clean this fucking mess—I go out every day, risking my ass out there, for what—for you to sit here on your ass all day! I'm sick of it—I'm sick of you!"*

Silence. She stares unblinkingly at the wall, not bothering to acknowledge him, let alone respond. This only infuriates David more. He storms across the room and grabs her by the arms and drags her to the closet—she does not protest; she never does.

Once his fury has been satiated, David locks the door behind him, leaving Anna in the closet for the night. He retrieves a rectangular can from his bag; his dirty, untrimmed nail chips as he flips the tab to open it. David barely notices the injury as he feverishly scoops the pinkish-white fleshy substance from the can with his other hand and shovels it into his waiting gullet. He thinks it's fish—it smells like fish. When he's finished, he makes his way to the wall where he tracks the day, retrieves the knife from his pocket, and makes another score. He stands there slack-jawed as he counts.

**click**

> "*It's been five thousand, five hundred, and forty four days. We have managed to survive, my beloved and I, without any contact from the outside… I—I was so happy when I found Anna. She was a becon of beauty in this infinite dullness. Her skin like porcelain, her chiseled features framed by curly blonde hair—docile, compliant, my beloved. Lately though… Lately, that just hasn't been enough. I need a woman who can cook, and clean, and–uh…I need a **real** woman. I will continue my search for an exit tomorrow… I really hope to find **something**… I'm beginning to lose hope.*"

**click**

David curls up in the corner of the room and drifts to sleep.

---

**click**

> *"It's been five thousand"*

**click** , **click**

> *"It's been five thousand"*

**click** , **click**

> *"…happy when I found Anna…"*

**click** , **click**

> *"…Anna…"*

**click** , **click**

> *"…need a real…"*

**click**, **click**

> *"…Anna…"*

**click** , **click**

> *"…Anna…"*

**click**

David is startled awake by his own voice, his hand frantically searching for his glasses on the floor next to him. *"Who's there?!"* He can hear something plastic and hollow clatter to the ground as the closet door slams shut. He scrambles to his feet, brandishing his pocket knife as he approaches. He swings open the door to see Anna lying on the floor, just as she was when he left her. He turns on his heels and scans the room around him—his eyes settle on the small black recorder amongst the clutter on the floor. He places his hand on his back pocket, turns to look at Anna, and then back at the recorder. David scoops it up and stores it in his pocket once again. He figures it must've fallen out, shrugging his shoulders as he looks to Anna.

David apologizes, ushering Anna to their indelibly stained mattress. She wordlessly joins him, her hand making a resounding clack against the makeshift nightstand composed of salvaged crates. Silence ensues, leaving David to gently scratch the pulsating scab on his neck as he tries to rest.

---

The monotony eats at David as he trudges his way through another disheveled warehouse. And once again another dingy, dim hallway, and then—something different, something new. After nearly 6 years, David found himself in a room he had not seen before. It was another warehouse but filled with pool supplies instead of its normal trappings. David is beside himself—hopping from one aisle to the next, admiring the change of scenery. He opens a fresh jar of pickled *something* and vigorously devours it.

He floats through the warehouse for hours, noting each newly found hallway that branches from it. Hunger pangs sober David as he realizes how long he's been away. He gathers himself and marches home with news of his victory.

David swings the door open to the hobbled dwelling, barely able to contain his excitement—Anna sits in the center of the room, oblivious to his presence.

*"I found something today!"*

*"No, not an exit—but it was a new room. I'm—we're getting close…"*

*"I know, it's not an exit, but… but it's something, right?"*

Not wanting her silence to sully the mood, he paces away from Anna and towards his wall-bound map. As he etches the new room onto the wall, he notices a section he does not remember drawing—but he must've, "who else could've mapped it?" he thinks as he puts the knife back in his pocket.

**click**

> "*It's been five thousand, five hundred, and forty five days. We have managed to survive, my beloved and I, without any contact from the outside… I'm almost there—I can feel it. The first new room after all this time. I'll finally be able to leave this shithole… I haven't talked to Anna yet, I… I don't want ruin what we have preemptively… But I don't think I can take her with me… If I find an exit, I don't think I'm turning back… I gotta get the fuck out of here.*"

**click**

David crouches in the center of the room, heedlessly gorging himself on several cans of mystery meat. He relieves himself into an empty pickle jar before going to retrieve Anna. He takes her to the sleeping corner, and after a few moments of appeasement, he drifts to sleep.

---

David wakes, and to his surprise, Anna is nowhere to be found. He winces as he wipes a layer of pus and blood from his neck; he thinks the scab must've cracked in his sleep. He checks around the cluttered room before walking to the closet—he slowly opens it to find Anna lying on the floor inside. He doesn't remember locking her in here last night, but the pain in his neck and hunger in his stomach quickly push the thoughts aside. He closes the door and goes to find some food.

After his hunger is satiated, David gathers himself and makes his way all the way to the first of the new hallways. To his dismay, it was more of the dull sameness he's seen a hundred times before. Feeling parched, David retrieves his canteen from his bag, unscrews the lid, and guzzles the room-temperature liquid. He jolts back in disgust, throwing his canteen to the floor; dark yellow piss flows from its mouthpiece and puddles on the floor.

*"How the fuck!?"*

He barely has time to process the event as he hears a door slamming somewhere in the direction he came from.

*"Hello—is anyone there?!"*

His voice is hoarse from dehydration. He topples out of the room he was in, regaining his balance as he stumbles into the hallway. He bursts into the pool supply warehouse, expecting to find some poor soul trapped there much like himself—but there is no one. As always, David is alone.

On the way home David secures himself several fresh bottles of "water" from the warehouse, indulging in several bottles before continuing the journey. He feels feverish, he is sweating more than usual, and the pain in his neck is throbbing relentlessly. David barely remembers the trip home as he opens the door.

Anna is sitting in the center of the room; she doesn't acknowledge David's arrival.

"*Yes, yes—another disappointment—another dead end.*"

"*I can't—I don't want to talk right now!*"

David trips over some empty meat cans, grunting in frustration.

"*Why don't you do something useful for once.*"

He gestures broadly to the mess before turning to face the map. But the hallway has already been mapped—

"*Did I…*"

David reaches to scratch his face and feels the cold, crusted steel of his pocketknife brush across his cheek.

"*I must've—*"

"*No, I'm fine, **Anna**—*"

David staggers over to her.

"*You'll see—I'm gonna find the fucking exit.*"

He grabs her by the hair, dragging her to the closet. She doesn't even protest. After locking the door behind him, David shambles to the wall of notches and begins to count.

**click**

> "*It's been five thousand, five hundred, and fifty…*
>
> *fifty… Eight?*
>
> *No, that cant be right..*
>
> *ten, twenty, thirty, forty, fifty, sixty, seventy, eighty, ninety, one hundred, one hundred ten, one hundred twenty, one hundred thirty, one hundred forty, one hundred fifty, one hundred sixty, one hundred seventy, one hundred eighty, one hundred ninety, two hundred…*
>
> *…five thousand two hundred sixty, five thousand two hundred seventy, five thousand two hundred eighty, five thousand two hundred ninety, five thousand three hundred, five thousand three hundred ten, five thousand three hundred twenty, five thousand three hundred thirty, five thousand three hundred forty, five thousand three hundred fifty, five thousand three hundred sixty, five thousand three hundred seventy, five thousand three hundred eighty, five thousand three hundred ninety, five thousand four hundred, five thousand four hundred ten, five thousand four hundred twenty, five thousand four hundred thirty, five thousand four hundred forty…"*
>
> *…five thousand five hundred fifty five, five thousand five hundred fifty six, five thousand five hundred fifty seven, five thousand five hundred fifty… Eight.*
>
> *No, no, no. I'm sure it isnt…*

**click**

The closet door slams behind him; David hears shuffling from within. He scratches heavily at his neck until a warm flow runs down his shoulder.

"*Anna!*"

He reaches for his pocketknife, but it's not in his pocket.

"*What did you do, you worthless bitch, you—you, you fucking—*"

David rips open the door and is met by Anna, face-to-face, and the words lodge in the back of his throat.

"*But, but, you're not—you're not—*"

Anna's arm moves unnaturally, like a stiff hinge bent from the frame—she plunges David's knife through his collarbone, lodging it in his upper chest. He stumbles backwards, gasping for air as he falls to the ground. His hands frantically grasp for something to aid him—he knocks over a jar of piss, and its contents empty and pool around the back of his head. He lifts the jar towards Anna, gargling confused vulgarities as she swats it from his hand.

"*Y—you're not even real!*"

He spews and coughs blood and mucus, cutting his breaths short. Anna's mouth snaps open, a long fleshy tendril uncoils from it, a leech-like mouth gnashes from its tip. It finds perch on David's neck, and the world fades to black.

---

David wakes up in the morning; he stumbles from his bed and retrieves a can of meat. Ignoring the pains in his neck and chest, he scoops the slop with his hand and eats it.

He does all the things he always does… He walks the halls, he plunders the warehouse, and he checks the rooms.

He comes home to his beloved Anna, he eats the slop, he drinks the piss, and he takes and is taken from. He survives… They survive.

[![anna](https://backrooms-wiki.wdfiles.com/local--resized-images/entity-21/anna/medium.jpg)](https://backrooms-wiki.wdfiles.com/local--files/entity-21/anna)

---

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Entity 21 - "Anna"](entity-21.md)" by DrAkimoto and DivineAtlas, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/entity-21](entity-21.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/entity-21">Entity 21 - "Anna"</a>" by DrAkimoto and DivineAtlas, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/entity-21">https://backrooms-wiki.wikidot.com/entity-21</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:**Mannequin with necklace  
> **Author:**Oxfordian Kissuth  
> **License:**CC BY SA 3.0  
> **Source Link:** <https://commons.wikimedia.org/wiki/File:Mannequin_with_necklace.jpg>

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/entity-21](https://backrooms-wiki.wikidot.com/entity-21)
