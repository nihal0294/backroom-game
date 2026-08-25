---
title: "Level 9.5 - \"Rochester Blues\""
source: "https://backrooms-wiki.wikidot.com/level-9-5"
retrieved_at: "2026-08-23T23:34:33+00:00"
license: CC-BY-SA-3.0
---

# Level 9.5 - "Rochester Blues"

rating: +42[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

[+ Show code](javascript:;)

[- Hide code](javascript:;)

```
@import url(https://backrooms-wiki.wdfiles.com/local--code/component%3Apatch/1);
 
@keyframes tab-disappear {
  0% { max-height: 9999rem; }
  1% { max-height: 100vh; }
  100% { max-height: 0; }
}
@keyframes tab-appear {
  0% { max-height: 0; }
  99% { max-height: 100vh; }
  100% { max-height: 9999rem; }
}
 
.yui-navset .yui-content > div {
  padding: 0.25em 0.5em;
  display: block;
  top: 0;
  overflow: hidden;
  transform-origin: 0 0;
}
 
#page-content .yui-navset .yui-content > div > * {
  transform-origin: 0 0;
}
 
#page-content .yui-navset .yui-content > div[style*="none"] {
  display: block !important;
  flex: 0;
  max-height: 0;
  padding: 0 0.5em;
  border-width: 0;
  transition: padding 0s linear 0.5s,
        border-width 0s linear 0.5s,
        flex 0.5s cubic-bezier(.0,1.27,.0,.89) 0s;
  animation: tab-disappear 0.5s ease-in-out 0s 1 both;
}
 
#page-content .yui-navset .yui-content > div[style*="block"] {
  display: block !important;
  flex: 1;
  max-height: 9999rem;
  transition: padding 0s linear 0.5s,
        border-width 0s linear 0.5s,
        flex 0.5s cubic-bezier(.99,.0,.99,.0) 0.5s;
  animation: tab-appear 0.5s ease-in-out 0.5s 1 both;
}
 
.color{
min-height:100px;
}
 
:root {
   --theme-base: "black-highlighter";
   --theme-id: "frost";
   --theme-name: "Frost Theme";
 
   --theme-base: "black-highlighter";
   --logo-image: url("");
   --header-title: "The Backrooms";
   --header-subtitle: "Deeply cold";
 
    --swatch-headerh1-color: var(--white-monochrome);
    --swatch-headerh2-color: var(--white-monochrome);
 
   --white-monochrome: 242, 242, 242;
   --pale-gray-monochrome: 220, 236, 242;
   --light-gray-monochrome: 172, 202, 242;
   --dark-gray-monochrome: 63, 94, 136;
   --gray-monochrome: 41, 73, 166;
   --dark-accent: 22, 45, 115;
   --bright-accent: 173, 192, 217;
   --medium-accent: 10, 93, 166;
   --black-monochrome: 34, 47, 64;
   --pale-accent: 60, 84, 115;
 
   --swatch-topmenu-border-color: var(--bright-accent);
 
   --link-color: var(--medium-accent);
   --hover-link-color: var(--dark-accent);
   --visited-link-color: 13, 65, 174;
   --newpage-color: 88, 101, 166;
 
   --gradient-header: linear-gradient(to top,
      rgba(var(--bright-accent),0) 0%,
      rgba(var(--gray-monochrome),.4) 5rem
   ),linear-gradient(to top left,
      rgba(var(--bright-accent),0) 0%,
      rgba(var(--gray-monochrome),.6) 100%
   );
 
}
 
.color{
min-height:90px;
}
 
::selection {   color: rgb(var(--white-monochrome));   background:rgb(var(--pale-accent)); }
 
span.printuser {
 color:
rgb(0,0,0)
}
 
#skrollr-body {
   background-image:
    radial-gradient(circle, rgba(var(--light-gray-monochrome),.2) 50%, transparent 0);
}
 
div.top-bar>ul>li>ul>li>a{
   transition: color 0.3s ease-out;
   -webkit-transition: color 0.3s ease-out;
}
 
body::after {
    content: "";
    background-image: url("https://dogefs.s3.ladydaily.com/~/source/unsplash/photo-1548097160-627fd636ee56?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80");
    background-size: cover;
    position: fixed;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    opacity: 0.15;
    z-index: -1;
   -webkit-filter: blur(10px);
    filter: blur(10px);
}
 
body{
    background-color: rgba(var(--bright-accent));
}
 
div#extrac-div-1::after {
       content: "";
    position:fixed;
    top:var(--final-header-height-on-desktop);
    width:100%;
    height:calc(100% - var(--final-header-height-on-desktop));
    background-image: linear-gradient(to bottom,
      rgba(var(--bright-accent)) 0%,
      rgba(var(--pale-gray-monochrome)) 25%,
      rgba(var(--white-monochrome)) 100%
   );
    background-size: auto 100%;
    background-repeat: repeat;
    opacity: 1;
    z-index: -3;
}
 
#main-content a {
   transition: all 0.3s ease-out;
   -webkit-transition: all 0.3s ease-out; /* Safari */
}
 
.scp-image-block .scp-image-caption {
    color: rgb(var(--black-monochrome));
    background-color: rgb(var(--dark-accent));
    border-color: rgb(var(--dark-accent));
}
 
#container {
   background-image: none
}
 
#side-bar .side-block div a img {
filter: grayscale(0%);
}
 
div#page-options-bottom-2 > a, div#page-options-bottom > a {
   border-radius: 0em;
   -moz-border-radius: 0em;
   border: none;
}
 
div#page-options-bottom-2 > a:active, div#page-options-bottom-2 > a:hover, div#page-options-bottom > a:active, div#page-options-bottom > a:hover {
   border: none;
}
 
hr {
border-color:rgb(var(--pale-accent));
}
 
table.wiki-content-table td,
table.wiki-content-table th,
table.wiki-content-table tr {
  border: .2rem solid rgb(var(--gray-monochrome)) !important;
  background-color:rgb(var(--bright-accent))!important;
}
 
table.wiki-content-table th {
  color:rgb(var(--black-monochrome))!important;
  background-color:rgb(var(--pale-gray-monochrome))!important;
}
 
blockquote,
.blockquote,
div.blockquote,
[class*="blockquote"] {
    border: 2px double rgba(var(--pale-accent));
    background-color:rgb(var(--pale-gray-monochrome));
    color: var(--white-monochrome);
    margin: 1em 46px;
    padding: 0 1em;
}
 
.styled-quote {
   background-color:rgb(var(--pale-gray-monochrome));
   border-left: 0.5rem solid rgba(var(--pale-accent));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.dark-styled-quote {
   background-color:rgb(var(--pale-accent));
   border-left: 0.5rem solid rgb(var(--pale-gray-monochrome));
   color:rgb(var(--white-monochrome));
   box-shadow: 0.2rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.lightblock {
   background-color:rgb(var(--pale-gray-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
.darkblock {
   background-color:rgb(var(--pale-accent));
   color:rgb(var(--white-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
.darkblock a,.dark-styled-quote a,.dark-titleblock a,.titlebox a{
   color:rgb(var(--pale-gray-monochrome));
}
 
.titleblock {
   background-color: rgb(var(--pale-gray-monochrome));
   padding: 0.5rem 1rem 0.10rem;
   margin: 1.5rem 0rem 0.5rem 0rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
   border: solid rgb(var(--pale-accent)) 2px;
}
 
.dark-titlebox{
  position: relative;
  top: -1.6rem;
  background-color: rgb(var(--pale-gray-monochrome));
  color: rgb(var(--black-monochrome));
  padding: 0.25rem 1rem;
  line-height: 0.1rem;
}
 
.dark-titleblock {
   background-color:rgb(var(--pale-accent));
   color:rgb(var(--white-monochrome));
   padding: 0.5rem 1rem 0.10rem;
   margin: 1.5rem 0rem 0.5rem 0rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
   border: solid rgb(var(--pale-accent)) 2px;
}
 
.titlebox{
  position: relative;
  top: -1.6rem;
  background-color: rgb(var(--pale-accent));
  color: rgb(var(--white-monochrome));
  padding: 0.25rem 1rem;
  line-height: 0.1rem;
}
 
.glassblock {
   background-image: linear-gradient(-30deg,
      rgba(var(--medium-accent),.8) -80%,
      rgba(var(--white-monochrome),.4) 100%);
   border: solid rgb(var(--pale-accent)) 2px;
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
.hoverblock{
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0rem;
   transition: all 0.3s ease-out;
   -webkit-transition: all 0.3s ease-out;
   transform: translateY(0em);
}
 
.hoverblock:hover,.hoverblock:focus{
 box-shadow: 0px 4px 20px 0 rgba(var(--medium-accent), .25);
 background-color: rgba(var(--light-gray-monochrome),.1);
 transform: translateY(-.3em);
}
 
.light-hoverblock{
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0rem;
   transition: all 0.3s ease-out;
   -webkit-transition: all 0.3s ease-out; /* Safari */
   transform: translateY(0em);
}
 
.light-hoverblock:hover,.light-hoverblock:focus{
   background-color: rgb(var(--pale-gray-monochrome));
   box-shadow: 0px 4px 20px 0 rgba(var(--medium-accent), .25);
   transform: translateY(-.3em);
}
 
.dark-hoverblock{
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0rem;
   transition: all 0.3s ease-out;
   -webkit-transition: all 0.3s ease-out; /* Safari */
   transform: translateY(0em);
}
 
.dark-hoverblock:hover,.dark-hoverblock:focus{
   background-color: rgb(var(--pale-accent));
   color: rgb(var(--white-monochrome));
   box-shadow: 0px 4px 20px 0 rgba(var(--medium-accent), .25);
   transform: translateY(-.3em);
}
 
.transparent-hoverblock{
   color:transparent;
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0rem;
   transition: all 0.3s ease-out;
   -webkit-transition: all 0.3s ease-out; /* Safari */
   transform: translateY(0em);
}
 
.transparent-hoverblock:hover,.transparent-hoverblock:focus{
   color: rgb(var(--black-monochrome));
   box-shadow: 0px 4px 20px 0 rgba(var(--medium-accent), .25);
   transform: translateY(-.3em);
}
 
.white-hoverblock{
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0rem;
   transition: box-shadow 0.3s ease-out;
   -webkit-transition: all 0.3s ease-out;
   transform: translateY(0em);
}
 
.white-hoverblock:hover,.white-hoverblock:focus{
 box-shadow: 0px 4px 20px 0 rgba(var(--white-monochrome), .25);
   background-color: rgb(var(--white-monochrome));
   transform: translateY(-.3em);
}
 
.inset-hoverblock{
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0rem;
   transition: box-shadow 0.3s ease-out;
   -webkit-transition: all 0.3s ease-out;
   transform: translateY(0em);
}
 
.inset-hoverblock:hover,.hoverblock:focus{
 box-shadow: inset 0px 4px 20px 0 rgba(var(--bright-accent), .25);
    background-color: rgb(var(--pale-accent));
   color: rgb(var(--white-monochrome));
   transform: translateY(.3em);
}
 
#main-content .page-tags span a:not([href^="/system:page-tags/tag/_"]), #main-content .page-tags span a:visited:not([href^="/system:page-tags/tag/_"]) {
    --link-color: var(--dark-accent);
}
 
.interwiki1 {
 
    background: rgb(var(--light-gray-monochrome));
    margin: 10px 15px;
    padding: 10px;
    border: none;
    border-radius: 10px;
    box-shadow: 0 2px 6px rgba(0,0,102,.5);
    box-sizing: border-box;
    /*width: 15em;*/
    width: calc(var(--base-font-size*0.93333*19));
 
}
 
.interwiki1_title {
 
    color: rgb(var(--black-monochrome));
    border-bottom: solid 1px rgb(var(--black-monochrome));
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
    color: rgb(var(--black-monochrome));
    position: relative;
    margin: 0 7px 0 5px;
    bottom: 3px;
 
}
 
.interwiki1_entry a, .interwiki1_entry a:visited {
 
    font-weight: bold;
    color: rgb(var(--black-monochrome));
    text-decoration: none;
    background: transparent;
 
}
 
.interwiki1_entry a:hover {
    color: rgb(var(--black-monochrome));
    background-color: transparent;
    text-decoration: underline;
 
}
```

I almost burned my notes trying to keep warm here. This place sucks to investigate, and I’m definitely getting out of here when I’m all done.

SURVIVAL DIFFICULTY:

pending

- {$one}.
- {$two}.
- {$three}.

[![Missing alt text.](https://backrooms-wiki.wdfiles.com/local--resized-images/level-9-5/snowing/medium.jpg)](https://backrooms-wiki.wdfiles.com/local--files/level-9-5/snowing)

This place is so goddamn cold.

# **Description**

Probably the most dreary place I’ve been to, Level 9.5 goes on for as far as I can see in this mess. It’s too dark to see super far, and the occasional snow flurries don’t help either. From what I’ve seen, perpetual night consumes the place; an ever-expanding set of spaced-out homes, backyards, and roads coated in snow. If it weren’t for all the snow, I would’ve confused this with [Level 9](level-9.md) proper…

Luckily, I entered some kind of home. It has basic fixtures and a few rooms (hell, the lights here even work), but nothing which a regular lived-in house would have. I don’t see any other forms of life here, nor do I see entities despite the darkness of the house. Things feel warm and toasty too, but I don’t see any vents or heat regulation system. Not even a cozy fireplace or something of that nature.

---

Exiting the building, I was met with an unexpected cold. I took my first steps into the snowy backyard of the current building, and after just minutes of trekking, I began losing all sensation in my feet and other exposed surfaces. I felt like I would’ve begun suffering from acute hypothermia if I didn’t find my way into another building. Surprisingly, near me was a building with the lights on, leading me into another cozy home. However, I actually came across other wanderers here.

Three quite average people were sitting on the floor in a little circle, looking up at me as I suddenly entered. This trio respectfully asked that I not name them or detail the conversations we had, but they did confirm a few things for me. For one, they informed me that they weren’t the only people who inhabited the homes in this level and pointed me in the direction of larger communities of people.

There are supplies of all sorts throughout the level, being found in random crates and containers scattered among the snow or within derelict homes. They are often covered in a layer of snow if outdoors, with clothed skeletons often clutching or collapsed near the caches. It is unknown how long these caches and bodies have been around, since I’ve been told that these boxes of supplies–and their accompanying skeletons–will disappear without warning.

If someone is lucky enough to get ahold of these crates, they can find furs, warm clothes, military-style rations, and fire starters. More morally dubious or desperate wanderers will be tempted to steal the warm clothes off of the skeletons, but from my own experience, the clothes from bodies on sub-section 9.5 are usually (oddly enough) damp or wet from snow. Wearing them would only result in rapid hypothermia from the subzero temperatures on the level. Even if someone were inside a home, if it is not one of the lucky few which provide warmth, a wanderer is sure to freeze.

Overall, I’ve been told that people here are severely affected by the cold and lack of light, and I can feel it myself. The bitter cold and lack of sunlight cause mild to moderate anxiety and depression in people who remain in Level 9.5 for prolonged periods. This might also be a result of the level’s own unknown properties.

# **Havens**

Some homes within Level 9.5 can act as a refuge for wanderers. Though since no supplies can appear within homes, it is often up to wanderers to venture out and search for crates to continue surviving on the level. However, only certain homes within the level emit the mysterious warmth necessary for survival. Regardless of all the issues, many people who I’ve spoken with so far say they feel some sort of mysterious attraction to the level. As if they feel like leaving the sub-section will only make their condition worse.

[![Missing alt text.](https://backrooms-wiki.wdfiles.com/local--resized-images/level-9-5/backyard/medium.jpg)](https://backrooms-wiki.wdfiles.com/local--files/level-9-5/backyard)

An image I took from Rockwell's Respite.

Most wanderers I’ve met on the level stay in their own groups and gatherings, but the largest gathering is where I met practically everyone else on the level. A gathering of around twenty people crammed into a set of three houses close to one another called **“Rockwell’s Respite”**. The main founder, Daniel Rockwell, also informed me that his people have a name for this level, Rochester Blues. He told me he got it from his own hometown, which is what this place apparently resembles in his eyes.

Wanderers who don’t stick within Rockwell’s Respite are often elsewhere in the other homes. Rarely, a few well-prepared wanderers passed by me in search of supplies. It seems that most of them volunteer for gathering supplies for their groups or themselves. They tell me I’m crazy, saying that only the brave come out. I wasn’t sure if it was a joke, but they asked for my name to, “remember me if I freeze or something worse”. They refused to elaborate on if that meant there were other dangers on Level 9.5.

# **Entrances And Exits**

I initially entered Level 9.5 by encountering an anomalous, snowy home on Level 9. However, when trying to ask about exits, everyone called me crazy for wanting to leave. They insisted I stay with them and relax inside, but I got the uncomfortable feeling that something was off about it. However, I found myself oddly conflicted when I left the home. I felt as if I were a child trying to run away from home, wandering blindly among the uneven and hilly terrain of the frosted backyards.  
Attempting to navigate onto a snowy neighborhood road, I ended up slipping on ice. That might’ve been my saving grace since it seemed that this brought me right back into Level 9. Even after escaping such a dreary place, I still yearn to return to that place in the back of my mind. So long, Rochester Blues.

**Repository Notice:**

We regret to inform readers that the whereabouts of this article’s author is currently unknown. Explorers have attempted to go to Level 9.5 to find Mr. Mathias, though members of “Rockwell’s Respite” and other settlements within refuse to elaborate on their location. It can be presumed from this that Mr. Mathias has either perished or found their way into a level that we are currently unaware of.  
We apologize for any inconvenience,  
- Repository Staff

  

[+ Authorized Eyes Only](javascript:;)

[- Close](javascript:;)

**The remainder of this document is for the eyes of Outcast Researchers only. Unauthorized reading of this document may result in detainment.**

*Mathias Interrogation Attempt #4*

---

R.: “Are you keen to tell us anything yet, or are you just going to ramble again?”

Mathias: “Cold, god, I need to be warm! Let me go back!”

R.: “Stop struggling, we have you strapped down for a reason- Tell us what they’re telling you.”

Mathias: “They- They’re telling me it’s so damn cold and I’m going to die if I don’t get back to the homes!”

R.: “That isn’t everything. Tell me what specifics there are. How long did you hear the voices after you left?”

Mathias: “The voices? They’re… They’ve been happening since the day I left. Out of the blue, I think I’ll hear ‘em… They keep telling me to make my way back. The warmth is there- I feel cold here.”

R.: “I’ll give you some medicine to calm down. Just don’t fight back and flail around again.”

Mathias: “No! I don’t need any medicine! I need to go back and get warm! I’m going to freeze!”

[After a fair bit of struggling, Dr. R. managed to inject Mr. Mathias with a drug mixture to calm him down. What follows occurred before Mathias became incapacitated from the aforementioned injection.]

Mathias: “Ack- that hurt like hell!”

R.: “Take some deep breaths… Tell me what else they’re saying. Do you hear them now?”

Mathias: “No… no… I- I don’t hear them right now. I told you what they said.”

R.: “What’ll you get if you go back? Has being near a heater or fire worked?”

Mathias: “I feel so cold all the time… I’m… I’m going to freeze if I’m not inside… I gotta go…”

R.: “Alright, just rest for now. You’re not going back though, you’ll be under our supervision.”

Mathias: “I can’t do that… I’m… I’m…”

[After his incapacitation, a medical evaluation was conducted on Mr. Mathias. It was then discovered that Mathias was in a malnourished state. Since leaving Level 9.5, it appeared that he had eaten little to nothing whatsoever. Unfortunately, a day after this interrogation, Mathias was found dead, curled up near the door of their room. An autopsy showed that despite not displaying any exterior signs, Mathias had suddenly perished from acute internal hypothermia.]

I would like to assume that those on Level 9.5 are there against their own will. No attempts have been made by Outcasts to try and ask other wanderers on 9.5. It is presumed that if someone does enter the sub-section, they are immediately afflicted with some unconfirmed parasite or phenomenon which will cause certain death if someone afflicted were to avoid returning.

Symptoms of these “Rochester Blues” include:

- Auditory hallucinations.
- Delirious mania.
- Sensations of extreme cold regardless of the temperature.
- Urges to return to Level 9.5.

Those who have succumbed to the effects of Level 9.5’s attraction will display internal signs that they have frozen, though it is impossible to keep their bodies around after death. In the case of Mr. Mathias, his body mysteriously disappeared hours after discovery. Later reports from other unaligned explorers reported a recurring skeleton similar in appearance and dress to Mathias among the snow of Level 9.5, appearing and reappearing at random times. Once again, it is **NOT RECOMMENDED** that ANYONE ventures into Level 9.5.  
- Dr. R.

---

[Author(s)](javascript:;)

[Hide author](javascript:;)

~   
The images used in this article are taken by me, and are registered under [CC-BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/)

« [Level 9.4](https://backrooms-wiki.wikidot.com/level-9-4) | Level 9.5 | [Level 9.9](level-9-9.md) »

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Level 9.5 - "Rochester Blues"](level-9-5.md)" by RoseMonsignor, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/level-9-5](level-9-5.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/level-9-5">Level 9.5 - "Rochester Blues"</a>" by RoseMonsignor, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/level-9-5">https://backrooms-wiki.wikidot.com/level-9-5</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Filename:** backyard  
> **Author:**   
> **License:** [CC-BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/)  
> **Source Link:** <http://backrooms-wiki.wikidot.com/local--files/level-9-5/backyard>

> **Filename:** snowing  
> **Author:**   
> **License:** [CC-BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/)  
> **Source Link:** <http://backrooms-wiki.wikidot.com/local--files/level-9-5/snowing>

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/level-9-5](https://backrooms-wiki.wikidot.com/level-9-5)
