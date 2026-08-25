---
title: "Ascension"
source: "https://backrooms-wiki.wikidot.com/ascension"
retrieved_at: "2026-08-23T23:39:15+00:00"
license: CC-BY-SA-3.0
---

# Ascension

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

# Ascension

rating: +16[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  

Info

Hope team will win trust me bro

Written by   
[Author Page](natedagreatap.md)

| Other Pages By This Author | |
| --- | --- |
| Levels | [Electrical Station](level-3.md) | [TH3 SH4DY GR3Y](th3-sh4dy-gr3y.md) | [The Metro](level-903.md) | [The Dark Metro](level-904.md) |
| Sub-Sections | [Terror Hotel Casino](level-5-1.md) | [Level 800.1](level-800-1.md) |
| Entities | [Endless/Nameless](https://backrooms-wiki.wikidot.com/entity-195) | [The Saberzoa](entity-600.md) | [Icarus Procidens](icarus-procidens.md) |
| Objects | [The Ultimate Backrooms Cookbook](object-56.md) | [Spirit Links](object-36.md) | [Almond Water](object-1.md) |
| Tales | [Archived Journals of Lucy Fox](archived-journals-of-lucy-fox.md) | [The Broken City Part 1: City Boy](city-boy.md) | [The Broken City Part 2: Macy](macy.md) | [The Broken City Part 3: Meggies](meggies.md) | [The Broken City Part 4: Terror](terror.md) | [The Broken City Part 5: Good Intentions](good-intentions.md) | [Blanche’s Halloween Party](blanches-halloween-party.md) | [Ascension](ascension.md) | [Cracks](cracks.md) |
| People of Interest | [Eden G.](eden-g.md) |
| Guides/Essays | [Survival Difficulty Class System Guide](sd-class-guide.md) | [Offsets 101](offset-guide.md) |

[Close](index.md)

# **Warning**

### This tale and the imagery below contains some serious descriptions about hallucinations, self-harm, and suicide.

### Viewer discretion is advised.

  
   
   
   
 

![KatHyperdeath](http://natedagreat563.wdfiles.com/local--files/storage-unit-4/KatHyperdeath)

---

Kat sat alone in her office on [Base Beta](level-11.md) with the lights dim. The room was devoid of sound, save for the clacking of keys on her computer. She worked vigorously, reviewing some database entry drafts that required some revisions before they were ready to be posted on the wiki. She took a sip of her energy drink as she typed up the corrections in an email. The silence was interrupted by a sudden, firm knock on her office door. It startled her slightly, but she immediately composed herself.

“Come in,” she responded monotonously. She turned to the door to see her dear friend, [Eden G](eden-g.md), standing in the threshold. She smiled warmly at Eden, happy to see her after what felt like ages.

“Hi, Kat. Sorry to bother you. I just wanted to ask how you were doing,” Eden said softly. Her short, pink hair glistened in the dim light that shone in from the hallway. The sight of her caused a sudden feeling of euphoria to wash over Kat.

“Just the usual stuff. If one more person capitalizes the word “wanderer” like a proper noun, I’m gonna delete the whole database,” Kat retorted slyly. Eden giggled. She sat down on the edge of the desk, facing towards her friend.

“How much more do you have to do?”

“Uh, probably around four or five more, I think. Why?”

“Well, I really think you should take a break and talk to me. I really think I’m on the verge of something big with this [dark one](icarus-procidens.md) entity. I just finished interviewing your brother about it, and it was incredibly valuable to my research!” Listening to Eden excitedly talk about her passions made Kat feel much happier than usual. Most were not used to her smile, but Eden awakened a certain feeling within her that was hard to describe.

“I’m looking forward to revising your article. I actually get surprised when I find a typo or a grammatical error because of how much you proofread them before you send them to me,” Kat replied. Eden laughed. Kat scooted over and made room on the edge of her chair, allowing Eden to happily sit next to her and lean towards the screen.

“I think you and the author forgot a comma a few sentences up,” Eden teased. Kat lightly slapped her on the shoulder, laughing.

“Shut up! This thing is the only thing keeping me going right now, I’m not perfect,” Kat responded, shaking her energy drink. Eden smile seemed to defeat all the tiredness within Kat’s body. They silently stared into each other’s eyes for a while, lost in their thoughts. Eden finally broke the silence.

“You know… [River](a-river.md) was talking to me the other day about how we haven’t hung out in a while. We’ve all been so busy with M.E.G. stuff that it feels like months since we’ve just chilled out together, y’know?”

“It has. Ever since ze started researching that new level…” Kat went quiet for a moment. “Sometimes I feel like I haven’t seen hir in so long, I start to forget what ze looks like. I try to picture hir face in my mind, and I just… can’t. Is that weird?”

“No, it happens to me a lot too. Time is so weird here, that mere days start to feel like years,” Eden responded. Kat smiled again.

“Eden, I don’t really know how to say this, but… I find it hard to be happy when I’m in charge of so many people’s well-being in this place. Sometimes I wish I could’ve just grown up a normal girl and never experienced any of this. When I think these things, it gets hard to find the motivation to get up out of bed. When I remember your smile, however, all of those things go away.” Kat and Eden blushed. Kat put her hand on Eden’s face. “I… really care about you Eden.”

“Kat…” Eden smiled softly. Kat put her arm around Eden’s shoulder as Eden put her hand on the side of Kat’s face.

“I’m not used to being this open with someone, but… I-“ Eden put her hand over Kat’s mouth before she could finish. Kat’s eyebrows went up in surprise and slight confusion.

“Kat, I appreciate the sentiment, but…”

“But what?” Kat asked, concerned.

“Well… you’re too late,” Eden responded, still smiling. The room went silent.

“W-what do you mean?” Kat asked, lowering her hand from Eden’s face. Eden started to laugh.

“Oh, Kat. You really like to joke around, don’t you?” Eden giggled. Kat’s demeanor was filled with horror. “I would have been over the moon if you told me that a month ago. But now? Why would I ever want to be anywhere near someone as rotten as you?”

“E-Eden… What are you talking about?” Kat asked, a tear falling from her face.

“Kat, are you stupid? You killed River. Ze died because you brought her to the bridge ze jumped off. And me?” Eden stood up from her chair and pushed Kat to the ground, toppling her chair over. She winced in pain on the floor from her suddenly falling over. She turned up to see Eden with dark pink skin and glowing purple eyes. Her outfit had changed into a dark black cloak. Her voice was distorted and garbled. Kat froze in shock, slowly crawling backwards on the floor away from her.

“You killed the two people you cared about the most. Two people whom you loved deeply because of your own selfishness… and only now you have the audacity to care?” Eden pulled a long knife from her cloak. “Such a shame you couldn’t have come to your senses when it mattered.” Eden knelt down and grabbed a trembling Kat by the throat and hoisted the knife upwards. Kat closed her eyes and braced herself. Her heart pounded faster and faster as purple light surrounded her. She twitched as the knife came flying towards her chest.

---

Kat gasped as she shot awake, drenched in sweat. She hyperventilated, quickly looking around her dark room. She felt her chest, inspecting for wounds. All she felt was her heart still beating fast.

“A dream… Typical…” Kat whispered to herself, scoffing. She got out of bed and opened her curtains, letting the bright light of Level 11 into her room. She stared down onto the infinite city in a somber silence. It had been a week since Eden went missing to chase after River in [Level 404](level-404.md). Ever since that phone call, Eden’s harsh words echoed in her mind. The vitriol and anger haunted her, leading her to question who the one in the wrong really was. She dismissed these thoughts and came to her senses, getting ready for her day.

Walking down the streets of Level 11, a dark aura emanated from her expression, slightly perturbing pedestrians who passed her by. Her eyes were wide and her face was deadpan, showing no emotion at all — yet, somehow, it was clear to several people she had a lot on her mind. Her long, purple hair hung in front of her face, a little more unkempt than usual. Her stride did not break as she walked purposefully towards Base Beta, her hands in her pockets and her back slightly slouched. Many pedestrians who passed by her were offended by her unbroken path, surprised at the lack of consideration for others.

Finally arriving, Kat walked into the large, spiraling skyscraper and used her fingerprint to enter the door. As she passed through the lobby, some of the front desk staff and secretaries warmly greeted her, but she ignored all of them. Everyone knew Kat was no stranger to the cold shoulder, but something about her demeanor today seemed off — more so than usual. She stepped into the elevator with her back still turned to the door, clearly avoiding eye contact with said lobby staff. She stared at the elevator wall blankly as she ascended to the top of the skyscraper, breathing deeply through her nose. Her expression seemed frozen in an intimidating, deadpanned scowl.

As the elevator finally opened, she was greeted by a small group of people waiting to step inside themselves. She very quickly exited, not giving them a chance to step out of the way, causing her shoulder to even harshly brush against one of them. The woman scoffed in anger at her rudeness, but Kat did not respond to her. As she walked down the hallway, a familiar voice called her name.

“Kat! There you are,” he said. Kat slowly turned around, still not changing her expression. It was her brother, Justin. “Sorry for short notice, but the council is meeting in the conference room in the next few minutes. Everyone’s gonna be there. We need to discuss… you know.”

“No, Justin. I don’t know.” Kat replied sarcastically. “What is the purpose of this meeting?” Justin to hesitated with a bit of shock.

“Uh… River and Eden. We need to… figure out what to do moving forward.” Kat was silent for a moment, her deadpan expression still not changing. She took a deep breath in what Justin assumed was frustration and annoyance, but he was unsure due to her unclear body language.

“Okay. Let’s go,” she eventually responded. The two walked to the conference room in silence. Justin, more than anyone, was used to Kat being an iron-fisted, cold-hearted leader and was by far the best at being objective and not allowing emotion to cloud her judgement. Despite this, Justin was good at knowing how much of that was her typical demeanor and how much was her hiding that something was bothering her. He considered questioning her, but was afraid of the answer and held his tongue.

The two eventually entered the room, greeted by the six underseers and Andrew, Overseer C, at a large, round conference room table. They all turned around and smiled at the pair. Justin giddily greeted them, but Kat did not respond or change her deadpan expression. The two overseers joined the table next to Andrew. The group all engaged in some standard small talk, but Kat silently stared down at the table, completely tuning out the entire room. Her intense expression was extremely noticeable to everyone in the room, causing some concern and discomfort.

“Alright, then. I’m sure we all know why we’re here,” Justin said, finally breaking the silence. Kat sat up slightly, finally tuning into the conversation once again.

“Do we ever. Every single interaction I’ve had with the public has been something relating to Eden and River. The M.E.G. has never endured such a devastating loss during its existence, and they’re looking to the council for guidance,” Underseer Tomas Verne chimed in. The group all looked down at the table somberly. A sense of defeat and hopelessness emanated throughout the council.

“Has the database been updated to reflect these things?” the Effluvium asked quietly. The wisps that made up his body formed into a hand to read his tablet, clicking around to arrive at their pages on the wiki.

“I’ve taken the liberty of updating their profiles to reflect their… uh…” Underseer Somalia paused for a moment. “…deaths.” Kat didn’t move, but her eyes looked up from the counter and at Somalia with a gaze that felt like a knife to the heart. Somalia noticed this and felt a chill run down her spine.

“I’ve been working on planning a memorial event for the two recently. I think it’ll be appropriate given just how crucial and well-known they were to the group and our image,” Verne said somberly.

“I’ve also taken the liberty of compiling a list of potential candidates to replace Eden’s position as Head Field Researcher. We should also consider promoting a junior archivist to fill River’s as well,” Underseer Quonqax signed. The [Faceling](entity-9.md) slid a copy well organized list full of profiles of several Base Leaders, Junior Archivists, and Senior Field Researchers that were eligible to fill the two vacant spots to each member at the table.

“Thank you. We should work to fill their spots as quickly as possible to ensure productivity doesn’t falter too much,” Underseer Jana Cotyledon responded. The table fell silent for a moment as everyone subtly kept glancing at Kat, who was much more reserved and stoic than usual. The group had been pretending not to notice, but the atmosphere was thicker than concrete. Everyone knew how close Kat was to River and Eden, but she never elaborated on the details of their relationship to anyone for what was assumed to be professionalism. Something was different, but nobody could tell exactly what.

“On that note…” Verne quietly mumbled. “I understand many of us were incredibly close with these two. How has everyone been holding up?” Almost everyone turned to Kat, waiting for her to answer. She scowled at everyone, glancing back and forth to each individual person.

“I was never very close with River, but Eden… I considered her such a close friend. I couldn’t believe when I’d heard the news,” Justin responded almost immediately, ignorantly ignoring the subtle hint to ask Kat if she was okay. The room was awkward and silent for this. Kat sighed in frustration.

“Screw it, I’ll just ask. Kat, what’s the deal? Everything okay?” Underseer Gavin Mason bluntly asked. Kat locked her piercing gaze onto him, taking slow, deep breaths.

“The M.E.G. will be okay. People are replaceable, and we must not lose sight of our ultimate goal to sustain this group until we get out of this place,” Kat finally responded coldly. Gavin, while typically quite aggressive, had a very concerned and shocked expression on his face from her response. Justin placed his hand on Kat’s shoulder.

“Kat, it’s okay to tell us how you’re feeling,” Justin responded sympathetically. He placed his hand on her shoulder. “If everything isn’t alright, we won’t judge. I know how close you were with th-“

“As I said,” Kat interrupted, violently hitting his hand away. “The M.E.G. will be alright.” Her speech was monotonous, yet subtly strained. Her voice almost seemed to break at the end, but she cut herself off and took deep breaths before any visible signs of distress.

“Katherine. I’ve been around long enough to know you’re not okay,” The Effluvium responded. His wisps flew around him quickly as they quietly whispered to each other. Kat slammed her hand on the table and stood up.

“I thought we were having a meeting, not a therapy session. If you’re gonna waste my time with small talk and emotional interrogations, I have no reason to be here,” she boomed back. She swiftly made her way towards the exit, shoving her hands into her pockets.

“Kat, wait! I-“ Justin stammered. Kat placed her hand on the doorknob and said nothing.

“You don’t need to apologize. You didn’t do anything wrong,” Kat muttered back. “People are replaceable. The M.E.G. will survive,” Kat muttered coldly. She quickly exited the room and disappeared into the hallway, too fast for Justin to follow. She paced down the hallway, breathing a little heavier and faster than she was in the meeting.

“Kat! Wait!” Justin yelled from down the hallway. Kat covered her face with her hand, struggling even more to hold herself together. She burst through the door to the stairs, ascending up to the roof of the skyscraper. She ran and hid behind a wall on top of the roof, tears now streaming from her eyes. She covered her mouth, sniffing and whimpering as she tried to hold in her emotions. She waited for a moment, trying to be as quiet as possible to avoid being heard.

When she confirmed she was alone, she finally broke down a bit, but still tried her best to stifle her emotions. She dug her fingers into her hair, hyperventilating. Despite her two friends going missing two weeks ago, she had not cried or been visibly upset to anyone, even in private. She lied on the ground alone, trying to collect herself. She could not speak or even think, as her emotions were so intense that it clouded everything. She held back her tears with all of her might.

“Kat? Kat! Is that you?” a voice distantly muttered from the staircase. She tensed up, panicking.

*They can’t see me like this…* she thought to herself. She tried to stifle her heavy breathing.

“Kat! Kat, please tell me where you are!” the voice exclaimed, closer now. Kat knew it was Justin again. He was just too caring. She was supposed to be the strong one; the protector, leader, and iron fist of both the group and her family. She could not falter. She reached into her pocket and grabbed her wallet and pocket knife, revealing the blade. She threw her wallet off the roof, causing it to fall to the ground of the city. With her other hand, with all of her might, she stabbed the knife through her hand, penetrating all the way through to the other side and in-between her bones. She roared in anger and pain, alerting Justin to her location. Justin emerged from around the corner.

“K-Kat! What happened to you?” Justin exclaimed, immediately noticing blood gushing down her arm and dripping onto her leg.

“I-I’m sorry Justin. My stomach wasn’t feeling good, so I went outside to get some fresh air, and some guy mugged me and stole my wallet. It all happened so fast, I-“ Kat stammered. Justin stood there silently.

“Kat, you can’t fool me. I know that’s your knife. You’ve had it since we were kids. Plus, you seem like you’ve been crying a lot longer than just a few seconds. Please, talk to me…” Justin calmly responded. Kat tensed up defensively into the fetal position, covering her face.

“N-no! Nothing is wrong, Justin! Just get away from me and don’t look at me!” Kat screamed.

“Kat…” Justin whispered softly. “You’re such a weakling.” Kat looked up in shock and confusion at Justin. He was smiling at Kat.

“W-what?” she stammered.

“You claim to be the strong one, and yet here you are: crying and throwing a tantrum like a baby. Do you really think someone as weak and pathetic as you deserves love?” Justin asked, laughing.

“No… not again… you’re not real…” Kat whispered. She pulled her knife from her hand and stabbed it into her thigh as hard as she could, causing her to wince in pain again. She looked to her side where Justin was once standing to see that nobody was there. It was another hallucination. Kat hyperventilated and dug into her hair once again, dripping blood down her face. She pulled the knife from her leg and threw it to the side in the direction of the ledge.

As she bled profusely on the ground, she tried to take deep breaths to come to her senses. After what felt like an eternity, she finally calmed herself to an emotionless, catatonic demeanor. She sat stoically for a while, emptying her mind and thinking of nothing. She eventually stood up carefully, limping towards the ledge to grab her knife. After retrieving it, she turned around and saw River standing before her. Hir eyes were blocked out by a grey pixels and distortion. Kat’s eyes widened in shock.

“Kat, I’ve missed you so much. It’s so great to see you again,” ze said softly. Kat stepped backwards in silence.

“No… I’m not falling for it this time. It wasn’t my fault… I-I didn’t know…” Kat stammered incoherently.

“Don’t tell me why, Kat. I understand whose fault it really is.”

“Y-You do?”

“Of course. It’s because you cared about us, right?”

“W-What?”

“Fine, you. Do you want me to spell it out? You push away everyone you love because of your weakness. You even pierce yourself with your own blade to justify what you feel, knowing you shouldn’t.”

Kat stared silently.

“How sad I never got to tell you how we really felt. I was so close, but so far. Lost and lost, forever wondering, right? You can’t live without us, but you don’t want to live do you? So you did this to us as a result. To think I ever loved you… just makes me want to punch you in the face.” River suddenly stepped forward and raised hir hand to punch Kat, causing her to brace for impact. After feeling nothing, she looked up once more to see nobody there. She turned around to face the city below her. The wind blew across her face as her blood dripped to the ground below. She smiled slightly, wiping her tears.

“You’re right. I don’t want to live in a world without you. I… can’t live without you.” She smiled again, the memories of her two dear friends flashing in her mind. The thought of seeing them again flooded her thoughts. A sudden sense of euphoria rushed over her. Kat smiled widely and closed her eyes. She saw Eden and River placing their hands forward, beckoning for Kat to come see them. She placed her knife in her pocket and placed her bloody hand toward them. She leaned forward to reach it, closer, closer, before losing her balance.

Taking a step forward, she fell off the side of the building, falling with her face to the ground. She felt herself flying in the air with the wind blasting in her face. She did not open her eyes as she fell, only envisioning her friends’ faces. The sound of the air hitting her rapidly descending body was the only thing she could hear. It was only a matter of time until she could-

“Well, I definitely didn’t expect that,” a low voice suddenly said, startling Kat. The sound of the wind immediately stopped. Kat slowly opened her eyes and saw the ground below, still feeling like she was falling. Despite this, the ground didn’t seem to get any closer, and she didn’t feel the wind hitting her face either. She was floating. She tried to turn her head to look towards the sound of the man’s voice, but was unable to turn her head. Kat didn’t know what to say.

“Nothing to say, huh? You know, I see a lot of people jump off these things, but they tend to regret it midway through. They fall off, and then their face immediately changes into an expression of shock, regret, fear, whatever you want to think about it. I’m wondering, you may be the one of the few who truly understood what you were doing, no?” he continued.

“W-what…” Kat stammered in confusion.

“Ah, yes. You’re probably a little confused, I imagine. Not a lot of people get to talk to someone so objective before their imminent demise.” Suddenly, Kat snapped out of the euphoria and realized what she had done. She gasped and started breathing heavily.

“I don’t know who or **what** you are, but please… just let me keep falling…” Kat muttered

“So prideful and hard of heart, even unto the end, aren’t you? Reminds me of someone I used to know!” the man giggled impishly. Kat scowled harshly as she held back tears once more.

“What is it you want? Why are you doing this?” Kat boomed. “Are you getting revenge for someone we killed? Torturing me for your own demented pleasure?”

“Why am I doing this? Why do we do anything, dearie? If you are about to die, why continue your persona of an emotionless husk? Why jump off the building? Why start the M.E.G. and run it with such brutish power? Why allow your friends to d-“

“DON’T!” Kat boomed again. The two were silent for a moment. “If you’re going to sit there and patronize me, at least let me look at you.” Kat quickly felt her ability to move return to her. Still suspended in the air, she pushed herself to an upright position with a swimming motion and looked to her right. The man who had been talking to her was completely concealed with a dark black cloak. It was impossible to make out any of his features beneath the darkness. Even his hands and feet were tucked into the darkness of his garment. Kat scoffed.

“I’ve been in this realm for trillions of lifetimes, and yet the beauty of this specific world never ceases to amaze me. The indomitable human spirit persevered and found a way to survive in such a horrible place as this. Even in a desolate, infinite city, you all still found a way to find some form of peace and harmony. It’s a reminder than even in a sea of chaos and destruction, a light still exists deep within,” the cloaked man said softly. His voice was high pitched and almost goblin-like, yet his demeanor was very calm and focused.

“Don’t kid yourself. I expected hell to be full of burning fire, not [mono-yellow wallpaper](level-0.md).” The man began to laugh at her statement as if he had heard one of the funniest jokes in his life. His cloak twitched and vibrated from his intense laughing.

“You and Eden were quite similar. Both so caring, yet tough and stubborn until the bitter end. They always say history doesn’t repeat itself, but it does rhyme…” the man replied softly. Kat’s heart dropped at the mention of her name, and she placed her hand over her face, attempting to bottle her grief again. “You really cared for her, did you not? Despite trying to hard to be distant and professional, you could not contain your true feelings for her.”

Suddenly, Kat stopped crying and stared at the cloaked man once again.

“How do you know her? Who are you?” Kat asked firmly.

“Just a forgotten man who no longer matters to this world. Many people fear not the idea of death, but the fear of being forgotten. One day, whether it be a few days, years, decades, millennia, few have the privilege of persisting past death in the memories of those who they cared about. To imagine a world where you still exist, but nobody knows who you are… your accomplishments, your likes and dislikes, your experiences, your impact on the world.” The man finally turned towards Kat and revealed a feint, purple glow underneath his hood. “Is that truly what you desire? Do you truly wish you exist in a world where you’re just a forgotten spectator? A world where everything you did, all your input and influence, and your mere existence is worth nothing? Despite how important you are, or rather *were*, everything moves on without you.”

Kat clutched her hand over her mouth once more, breathing heavily and trying harder than she ever has to bottle in her feelings. Neither of them talked for a moment. Kat kept trying to stay composed.

“Another thought…” the man continued. “Eternal damnation is bad and all, but is life really considered freedom and free will? Are we truly free or all slaves to a higher being? Your other friend, River… ze wanted to find that out so badly that ze sacrificed hir own life to figure it out. Hir answer was simply confirming what we all already knew, wasn’t it?”

Kat lowered her hand. “So that’s what this is about. You’re here to taunt and mock me for killing my closest friends, my…” Kat paused. “That’s what you want, don’t you?” she snarled, becoming reserved again.

“Your personal matters are of no concern to me,” he muttered. “I just find it fascinating that someone so strong could allow herself to be weakened and humbled so much. You’re one of the most powerful people in this place, and yet the things you desire most: your friends, your happiness, and your life before here… all are things you cannot obtain. All the power in the world, and yet not enough to have what you truly want.” Kat finally broke and burst into tears. She could not hold herself together anymore. She spent the next few minutes crying without interruption from the cloaked man. Kat couldn’t remember the last time she cried, much less this much.

“Feels good, does it not?” the man softly replied, chuckling slightly. “I think we both know you’re not ready to die, dearie.”

“No…” Kat muttered through her crying. “I just don’t want to live without them either.”

“There are many who care about you. You don’t need to pretend to be strong around them and push them away. The strongest are those who keep their loved ones closest and know to confide in them. Acknowledge your shortcomings and push forward no matter what. Don’t drag everyone down into hell because you refuse to let them pull you up.”

“Why? Why are you doing this?” she stammered.

“When you go on in your life, you will not remember me or this conversation, but you will be a changed person. We have met before, and I have been watching you with quite a lot of interest. No organization has ever succeeded as much as M.E.G. has, and it would be a severe tragedy to everyone to lose yet another integral member.”

“Are you like a guardian angel or something?” Kat snickered, joking. The man finally took down his hood and turned to Kat, revealing a charred, black skeleton with crimson purple eyes that shone like flashlights. Kat gasped. The man laughed impishly, contorting the bones that made up his jaw into a toothy smile.

“All the angels I know are dead. I’d just prefer to see how this all plays out. Burning in hell all the time gets a bit boring sometimes, and everyone needs a bit of entertainment in their life, don’t they?” the man giggled like a child in a way that perturbed Kat. The man lifted his hood once more and turned his head back to the distance.

“So… uh… You gonna put me down or what?” Kat asked. The man thought for a moment before nodding.

“Before I do, know that getting me to care about anything or anyone is an accomplishment in of itself. You may forget me, but learn to find joy even in a sea of eternal suffering and torture, will you?”

“Y-yeah…” Kat replied, confused. “Wait. You never told me your name.” The man laughed, this time quietly.

“I’m nobody important. Just a forgotten [man](icarus-procidens.md). Just don’t throw everything you’ve built in the garbage like I did. There’s a reason I’m forgotten. Don’t waste your life too.”

Before Kat could respond, her eyes began to shut. Suddenly, the wind blasted against her body again as screams distantly echoed in the distance. She felt the wind rush faster and faster before it all stopped. She opened her eyes and looked upward to see herself surrounded by horrified and shocked people. She sat up to see Base Beta in front of her. She looked around, slightly dazed and confused.

“She’s alive?” someone in the crowd exclaimed.

“How could she have survived a fall that high?! Unscathed?” another shouted. With confusion, Kat felt around her body inspecting for any injuries whatsoever. Unbelievably, she had not even a scratch present on her. Suddenly, Overseer A burst from within the crowd ran forward towards Kat. Without even saying a word, he descended onto his knees and hugged her tightly. Kat froze.

“D-Did I-“ Kat stammered.

“Please don’t leave me. I can’t lose you…” Justin interrupted, hugging tighter. He began to cry slightly. Kat slowly and hesitantly lifted her hands up and hugged her brother back. At first she leaned into his shoulder and did nothing. Slowly, she felt her eyes begin to water. For a reason she could not understand, she didn’t feel the need to hold it in this time. The crowd watched as the siblings embraced tightly, crying into each others’ shoulders. Some of them began to dissipate as to avoid awkwardness.

“I’m sorry,” Kat whispered into his ear.

“You don’t need to apologize. You didn’t do anything wrong.” Kat’s eyes widened as the tears flowed. “Just promise me you’ll never do that again, okay?” Justin replied softly. Kat nodded silently, tears still dribbling down her cheeks.

“I promise.” Wiping their tears, they lifted their heads and smiled at each other silently.

“Man, I knew you had thick skin, but jumping off a building unscathed is kinda next level!” Andrew crudely interrupted from within the audience. Kat glared at him for the poor joke, causing him to awkwardly laugh and walk away.

“I’m still a bit confused, to be honest, but you don’t need to tell me anything until you’re ready. You can talk to me any time you need. Don’t hesitate, please,” Justin said sincerely.

“Thank you for caring about me so much, loser,” Kat replied slyly, her eyes still watering a bit.

“Of course. You’re never alone, Kitty Kat,” Justin joked in reply, snickering. Kat punched him in the shoulder jokingly before coming to her feet and following him back into Base Beta. It had been many years since Justin had seen her smile this long. Somehow, despite his confusion, he was filled with the hope that regardless of everything going on, even if just for a moment, everything would be okay.

---

[Not every story has a happy ending.](javascript:;)

[x](javascript:;)

[Descent](https://backrooms-wiki.wikidot.com/descent)

---

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Ascension](ascension.md)" by Natedagreat563, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/ascension](ascension.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/ascension">Ascension</a>" by Natedagreat563, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/ascension">https://backrooms-wiki.wikidot.com/ascension</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Filename:** KatHyperdeath  
> **Name:** 2018 Commonwealth Games Trials 10m Platform - Diver - Nicole Ng  
> **Author:** Australian Institute of Sports Images  
> **License:** [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/deed.en)  
> **Source Link:** <https://commons.wikimedia.org/wiki/File:Nicole_Monique_Ng_-_Diver_-_2018_Commonwealth_Games_Trial.jpg>  
> **Notes:** Edited by

> **Filename:** KatHyperdeath  
> **Name:** Skyscraper  
> **Author:** ciocci  
> **License:** [CC BY 2.0](https://creativecommons.org/licenses/by/2.0/?ref=openverse)  
> **Source Link:** <https://openverse.org/image/b14c771b-f967-4ab5-936a-3547957c2149?q=Skyscraper&p=69>  
> **Notes:** Edited by

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/ascension](https://backrooms-wiki.wikidot.com/ascension)
