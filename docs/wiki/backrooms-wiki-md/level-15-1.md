---
title: "Level 15.1 - \"Futility\""
source: "https://backrooms-wiki.wikidot.com/level-15-1"
retrieved_at: "2026-08-23T23:34:41+00:00"
license: CC-BY-SA-3.0
---

# Level 15.1 - "Futility"

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

rating: +12[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

SURVIVAL DIFFICULTY:

Lambda

- Unsafe and Unsecure.
- Constant Human Hostility.
- Multiple Cognitive Hazards.

---

# **Description**

![Missing alt text.](https://imgur.com/ZIHUPtk.png)

A closeup image of one of the simulation devices

**Level 15.1**, commonly referred to as **"Futility"** by its clientele, is a highly advanced sector of **[Level 15](level-15.md)** that contains hyperrealistic simulation rooms and headgear devices that can portray any environment or setting that a wanderer desires. There seems to be no limit to the complexity and uniqueness of the simulation, and many claim it to be even more "real" than reality itself.

The technology in this sector is so advanced that it is impossible to reverse engineer. Multiple groups, including**[Backrooms Robotics](backrooms-robotics.md)** and **[The B.N.T.G.](b-n-t-g.md)**, have attempted to commercialize the technology by trafficking it out of the sub-section, but every time a wanderer no-clips out of the level with the devices, it explodes and kills any would-be smugglers.

![Missing alt text.](https://imgur.com/Undeleg.png)

The right side of the Control Room

Located inside the middle of the sub-section is a room that is believed to be the central nexus for the power supply of the entire level, which has been dubbed **"The Control."** The only entrance into the room is a sealed door with only a small porthole to view through, which shows multiple obscured figures that are positioned in front of what is assumed to be a highly complex and massive device with multiple monitors attached to it. Research into the handheld devices reveals that the brain maps and simulation information of the people currently using the devices are transferred to this room. It is currently unknown what this information is used for or who is using it for what purpose. Tests have shown the inability of any simulation device to correctly portray what the inside of The Control looks like and instead instantly and permanently crash the device used.

## Physiological Effects

![Missing alt text.](https://imgur.com/dIoIy6Y.png)

The yellow and green line corresponds to increased testosterone and amygdala[1](javascript:;) activity when a wanderer enters 15.1

Numerous adverse side effects have been attributed to this sub-section's environment. Psychological tests have determined that there are heightened levels of aggressiveness and psychopathic tendencies in every wanderer who enters the sub-section. Due to the low number of simulation devices present, there have been arguments, violence, and even deaths due to fighting over who can be the next to use the simulations. It is believed that the multiple corpses scattered throughout the rest of **[Level 15](level-15.md)** are a result of an unidentified group finding this sub-section and eventually resorting to violence to maintain the secrecy of the sub-section and its properties.

There is a worrying trend where those frustrated with the wait times have forcibly taken off the headsets of those using the devices, which leads to instant brain death for the user. The only way someone can leave a simulation is of their own volition, but this is an exceedingly rare occurrence due to the simulations' favorability compared to their current reality. This bleak actuality is where the current name for the sub-section, **"Futility"**, was popularized. Those who use the devices cannot cope with the pointlessness of their existence; they are forever trapped in the [The Backrooms](normal-levels-i.md) and resort to spending their days in the comfort and bliss of the simulations. Ultimately, the people who spend the most time at this sub-section and in the simulations eventually die of malnutrition, dehydration, or total organ failure.

---

# **Discovery**

On December 18th, 2023, the existence of **Level 15.1** first came to the attention of **[The M.E.G](the-m-e-g.md)** following a report from the wanderer Enric, who has been stuck in Level 15 for years on end. Almost immediately after the discovery of this sub-section was made, multiple reports of entrances into Level 15 via **[Level 10](level-10.md)** surfaced, enough to send groups of wanderers into the previously uninhabited level to explore the sub-section in question. By the end of the year, a significant portion of the sub-section was able to be mapped out.

Soon after the initial ability to no-clip into this sub-section, many factions attempted to take control of the entirety of it for their own personal gain, but The M.E.G. was able to eventually secure it and guard the entrance to it, with a strict 2-month deployment time to combat the various physiological effects associated with this sub-section.

### "Your Personal Hell"

![Missing alt text.](https://imgur.com/t4R7uZP.png)

Inside the porthole of The Control on April 1st

On April 1, 2024, there was an unprecedented power surge in the entirety of the level, which significantly impacted the functions of the sub-section. Every individual who was currently participating in a simulation was violently ejected from it and instead was simulated into a black room where they were subjected to their worst nightmares and their deepest fears for upwards of 40 hours. Roughly 35% of the people using the devices perished immediately following this event. The unusual timing of this event has led some to believe that those who are present in The Control intentionally caused this event to signal a warning or cause a purging event to lower the demand and energy toll the wanderers place on their facilities. Analysis of the measurements of the power surges in the level and strain on the devices has indicated that an event like this is likely to happen in the coming months. Measures have been put in place to prevent another disaster like this from happening again; however, despite all of this, the popularity and eagerness to use the devices have remained at record-high rates.

---

# Bases, Outposts and Communities

### The Line Steppers

Due to the mass violence and riots in **Futility**, the entrance is now patrolled by guards who enforce a strict waiting line for anyone wishing to use the properties of this sub-section. Currently, there are 352 people in line, with the number growing each day. Below is a list of the most popularly requested simulations based on those who were surveyed in the line:

| Most Requested Simulations | Frequency |
| --- | --- |
| Unsafe/Unsecure Levels[2](javascript:;) | 2.6% |
| Space Exploration | 4.6% |
| Video Game Worlds | 5.3% |
| High Fantasy Setting | 9.9 % |
| Zombie Apocalypse | 11.2% |
| **[The Frontrooms](the-frontrooms.md)** | 63.8% |

### The Marauders

Because of the potential ethical concerns surrounding this sub-section, various hostile **[groups of interest](groups-list.md)** have banded together to form a coalition of roughly 17 members that go around the sub-section, causing as much chaos and destruction as possible. They cite the immorality of the entire situation as a cause for their mayhem and disarray, and their frequent raids have significantly hindered the functions and day-to-day operations that occur.

# Entrances And Exits

#### Entrances

There is a 1.8% chance for every no-clip into [Level 15](level-15.md) that it places you directly in front of the beginning of this sub-section.

#### Exits

Currently, no one has attempted to exit the sub-section.

---

[Schedule a session?](javascript:;)

[Contact your nearest M.E.G agent today!](javascript:;)

> You Are Currently: 353rd In Line.
>
> > Estimated Waiting Time:
> >
> > 19 Years, 4 Months, 3 Weeks, 5 Days, 22 Hours, 4 Minutes, 18 Seconds

---

« [Level 14](level-14.md) | Level 15 .1 | [Level 16](level-16.md) »

---

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Level 15.1 - "Futility"](level-15-1.md)" by Iqloose, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/level-15-1](level-15-1.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/level-15-1">Level 15.1 - "Futility"</a>" by Iqloose, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/level-15-1">https://backrooms-wiki.wikidot.com/level-15-1</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** blue and black digital device  
> **Author:** James Yarema  
> **License:** Unsplash License  
> **Source Link:** <https://unsplash.com/photos/blue-and-black-digital-device-npTT9rD8wd4>

> **Name:** a stage set up for a concert with purple lighting  
> **Author:** November Wong  
> **License:** Unsplash License  
> **Source Link:** <https://unsplash.com/photos/a-stage-set-up-for-a-concert-with-purple-lighting-Y1GkRjPajAg>

> **Name:** a Polygram  
> **Author:** DENker  
> **License:** Wikimedia Commons License  
> **Source Link:** <https://commons.wikimedia.org/wiki/File:Polygram1.png>

> **Name:** Ghost Gespenstig  
> **Author:** Unknown  
> **License:** Pixabay Content License  
> **Source Link:** <https://pixabay.com/illustrations/ghost-gespenstig-the-shade-345716/>

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

Footnotes

[1](javascript:;). The hormone and part of the brain responsible for aggressive tendencies

[2](javascript:;). Simulations of most requested levels have shown a near 100% copy, down to the known locations of communities and entities

---

Source: [https://backrooms-wiki.wikidot.com/level-15-1](https://backrooms-wiki.wikidot.com/level-15-1)
