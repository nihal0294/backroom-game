---
title: "Level 321 - \"The Infinite Art Studio\""
source: "https://backrooms-wiki.wikidot.com/level-321"
retrieved_at: "2026-08-23T23:37:22+00:00"
license: CC-BY-SA-3.0
---

# Level 321 - "The Infinite Art Studio"

rating: +13[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

{$title}Languages:

  
[![flag-saudi-arabia2x.png](https://cdn3.iconfinder.com/data/icons/142-mini-country-flags-16x16px/32/flag-saudi-arabia2x.png)](level-321.md)  
[![china](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/china)](level-321.md)  
[![flag-germany2x.png](https://cdn3.iconfinder.com/data/icons/142-mini-country-flags-16x16px/32/flag-germany2x.png)](level-321.md)  
[![uk](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/uk)](level-321.md)  
[![spain](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/spain)](level-321.md)  
[![france](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/france)](level-321.md)  
[![indonesia](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/indonesia)](level-321.md)  
[![italy](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/italy)](level-321.md)  
[![KO](http://backrooms-wiki.wikidot.com/local--files/component:translations/KO)](level-321.md)  
[![poland](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/poland)](level-321.md)  
[![portugal](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/portugal)](level-321.md)  
[![russia](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/russia)](level-321.md)  
[![thai](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/thai)](level-321.md)  
[![toki](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/toki)](level-321.md)  
[![vietnam](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/vietnam)](level-321.md)

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

SURVIVAL DIFFICULTY:

3

- {$one}.
- {$two}.
- {$three}.

[![A picture of a room in level 321](https://backrooms-wiki.wdfiles.com/local--resized-images/level-321/paintroom.jpeg/medium.jpg)](https://backrooms-wiki.wdfiles.com/local--files/level-321/paintroom.jpeg)

A Creator Room filled with art supplies.

**Level 321** is a winding series of colorful and art-themed hallways and rooms. I recently found Level 321, having first discovered it when I woke up near a paint can in a room I didn't recall falling asleep in. Sadly, this level is the home of most of the Created Ones as a species.

# **Description:**

**Level 321** is a seemingly endless level with colorful hallways and many small to medium sized rooms, often appearing to host old animation equipment, storyboard desks, and posters of Fleischer-era-style characters in its larger rooms. The walls are also often tiled in colors of red, blue, yellow, and white. Unlike most levels, the halls are more comparable in function to roads in how simple they seem to be to navigate, being almost grid-like.  
The two other most notable features of the level are the commonness of hostile entities such as [Partygoers](entity-67.md), [Hounds](entity-8.md), [Dollfaces](entity-34.md), and [Child Facelings](entity-9.md), which makes this level one of the much more difficult ones to survive in alongside [Level 9](level-9.md), and the intense theming around art and creativity in the uninhabited parts of the level.

The rooms in the uninhabited parts of the level are usually just art studios or highly overdecorated art classrooms with several kinds of tools one might use for self expression or for hobbies, though this can often serve as a distraction more than anything. Several outposts from other GOIs like the Lost have been found abandoned or likely wiped out as a result of the entity infestation, as it seems to be one of the lesser known levels.

[[+] View Recorded Footage](javascript:;)

[[-] View Recorded Footage](javascript:;)

> #### Addendum April 25th, 2015
>
> Part of an M.E.G. exploration log created by Operative Gage.

**[BEGIN LOG]**

*Operative Gage adjusts his body camera’s focus.*

*The camera jitters, before stabilizing.*

**Operative Gage:** There, finally. *He sighs in frustration.*

**Operative Gage:** I'm here to document the important aspects of the level your "country" sits in. *He shakes very slightly in his seat.*

**Operative Gage:** Not sure why, but HQ sent **me** down to document your realm, and that’s all they said. So first question. What exactly are the most common entities you encounter?

**General Carlson:** *The Created One being interviewed was a coffee mug. He smiled, speaking with a slight Norwegian accent.* Well, while we wiped them out in the areas we currently live in, but we have had to continue to exterminate demonic vermin like the doll people, hounds, partygoers, and the small faceless people in this "level", as you call it.

*The sounds of scribbling can be heard off screen.*

**Operative Gage:** It is currently Thursday April 10, 2015 at 8:29 a.m. and I'm conducting the interview.

*General Carlson shifted, the sword on his hip clanking against the chair leg.*

**General Carlson:** There must be something else you want to know.

**Operative Gage:** Give me a second. I need to write down what I've learned.

*The sound of further scribbling can be heard, then General Carlson begins to speak before being cut off by Gage.*

**Operative Gage:** All right. So, next on the agenda. What are the most significant features of this level?

*Operative Gage drank something.*

**General Carlson:** You'll have to give me some patience while I describe it.

*Operative Gage sighs. Towards the edge of the frame, another Created One waves at him, but he ignores them.*

**General Carlson:** So, the two big types of rooms in the uninhabited parts of the realm are empty art classrooms, and smaller bedroom-like rooms a single person might use. We convert most of the former into other things for our society's use, but that's usually what they start as.

**Operative Gage:** Makes sense. What other stuff should we know about what the level beyond the Regency is like?

*General Carlson paused to word his answer properly.*  
**General Carlson:** I've already explained that the part of the level beyond the Regency's borders is infested with entities like the Partygoers, Hounds, Facelings, Skinstealers, Wranglers, and those damn doll demons. There are a couple non-hostile entities, those being small feathered creatures we domesticated, which you call Swindlebirds, but the most interesting aspect of it is just how many humans have tried to settle in it.

**Operative Gage:** Really?

**General Carlson:** Ordinary humans have tried to set up outposts before, as did the [Blue Folk](entity-68.md). The issue is that they were never large enough to endure the entities unaided, and so they would either fall, or only last long enough for us to find them and bring them under our protection. We've found several abandoned posts set up by members of other groups like The Lost Legions over the centuries as a result.

**Operative Gage:** That's…disturbing.

*The General nodded.*  
**General Carlson:** We got lucky.

**[END OF TAPE]**

Note: This log was recovered by a passerby in Level 11 on May 3rd, 2015. Operative Gage is currently under reprimand for having lost it.

> #### M.E.G. Notice
>
> In accordance with the discovery of this tape, Level 321 has been deemed **unsafe, but secure**. Visitors are advised to be careful.

[[-] View Recorded Footage](javascript:;)

# **Bases, Outposts and Communities**

## Base 321-1, "Base Tau"

Base Tau is a small base which functions as a diplomatic, exploratory, and trade outpost for the M.E.G. and a few other groups of interest near the Regency capital of Jarlford(pronounced "yarl-ferd"), often functioning as a way station for humans, Husks, and Created Ones seeking to travel in or out of **Level 321** safely. This base is considered one of the safer ones in the M.E.G.'s network of bases as the Regency's soldiers help to enforce a very strict policy against violence within it. If you have a struggle with addiction, you can also find people here who can help with that.

# **Entrances And Exits:**

## **Entrances:**

- The best way is to fall asleep with a sketchpad in your hand on the floor of a room in [Level 13](level-13.md) and wake up in **Level 321**, with this method also being found to work for entering from [Level 184](level-184.md).
- No-clipping through a painting of a desk with art supplies in [Level 57](level-57.md) will also lead here.
- Allegedly, some instances of [Entity 68](entity-68.md) have no clipped from [Level 231](level-231.md) into Level 321, though how has never been properly explained.

## **Exits:**

- If you find a door with a picture of a bundle of grain and a hammer taped to it, walking into it will lead you into [Level 184](level-184.md).
- No-clipping into an art stand/easel will take you to [Level 57](level-57.md).
- No clipping into a fridge will take you to [Level 6.1](level-6-1.md).

---

[Missing File Found. Open?](javascript:;)

[Close File](javascript:;)

[IETS](iets.md)

# **The Created Ones**

![Missing alt text.](https://backrooms-wiki.wdfiles.com/local--files/level-321/Plasma_Boy.png)

A sketch of Pratt Grimm, an agent of ours who is a Created One.

**Habitat(s):** Levels 321, 184, 11, and potentially others.

# **Description:**

The main inhabitants of Level 321 are “The Created Ones”. They are intelligent and shockingly human in behavior. They often take the outward appearance of everyday man-made objects, with cartoonish limbs and facial features. They are one of the only species known to have established an independent, non-human civilization within the Backrooms, and are shockingly human in character. Because of this, it is easier to describe them culturally rather than scientifically like you would an animal, though this may change once they can be described in the past tense.

Created Ones predominantly inhabit and set up towns and cities within Level 321 (which they call "the lands of art") and [Level 184](level-184.md). However, they claim to descend from formerly human "Originals" that escaped from [Level 94](level-94.md), known to them as “the lands of falsehood”, led by one known as Hargan whom is known to still be alive within Level 321, according to the Regency. This is just one example of their cultural love for legends and grand narratives which makes their history more difficult to parse with how few human sources there are.

While generally peaceful and polite on first impression, most Created Ones tend to have a blunt and insular tone, and tend to view outsiders with disinterest or even disgust in some cases. As a result, it is best not to antagonize them when you meet them. It is hoped that they will become more civilized and less superstitious as contact with the M.E.G. becomes less difficult.

# **Biology:**

Instances of The Created Ones are generally about 4-5 feet (120-150cm) tall, varying wildly in weight between 40 and 140 pounds (18-64kg), and lay eggs rather than producing live young. They are quick on their feet, and possess the same strength as typical human beings. Their eyes are large, big black, shiny circles, and their mouths are usually a cartoonish line when closed. Their bodies usually resemble man-made objects of some kind, consisting of anything from playing cards to lightbulbs to medieval swords.

While not confirmed, it is rumored among their population that humans could bring a Created One into existence simply by drawing a picture of an instance of one with the intention to create a new instance of this entity, and supplementing important information before drawing a circle around the picture, summon it into proper existence as a young child unless specified otherwise, with the caveat being that this would only work when done within Level 321. Why anyone would want to cannot be known, though.

# **Behavior:**

Owing to their similarity to humans, the Created Ones have developed multiple "civilized" structures, and a state of their own, with a dynamic and complex society despite its distrust of outsiders. As a result, referring to them as entities is taken by them as an insult, as they view themselves to be human in spirit, though hopefully this delusion will fade with time.

Fortunately, their characteristic disdain for external organizations has been on a decline in recent years owing mostly to contact with instances of [Entity 68](entity-68.md). Over years of interaction and trade, the species’ cultural sentiment towards modern mankind has warmed considerably.

- - \_

  [View Recorded Footage](javascript:;)[View Recorded Footage](javascript:;)

  > #### Addendum April 25th, 2015
  >
  > Another part of an M.E.G. exploration log created by Operative Gage. This is a translation, as both Gage and the interviewee, Duke Charles IV of Pierre natively speak French.

  **[BEGIN LOG SEGMENT]**

  **Operative Gage:** [So, I'm asking you to help me to document some information about your population directly.]

  **Operative Gage:** [My first question for you is how exactly is the Regency civilized?]

  **Charles Pierre:** *The Created One being interviewed is a purple glass dodecahedron, and more well known historian in their country.* [Well, while our formerly human ancestors settled this level after escaping what you call Level 94, and our state functions perfectly well.]

  *The sounds of scribbling can be heard off screen.*

  **Operative Gage:** [Are the people within intelligent or scientifically minded, though?]

  *Pierre balks at the question as he shifts forward.*

  **Charles Pierre:** [As intelligent or scientific as your native society, I should think.]

  **Operative Gage:** [Actually, we have managed to get past the need for delusions like God, though your society hasn't.]

  *The sound of further scribbling can be heard before it is noticed that Gage pulls out a flask.*

  **Charles Pierre:** [Are you serious?]

  *Operative Gage drank something alcoholic.*

  **Operative Gage:** [Yes. Life is easier with it.]

  *Operative Gage sighs, coughing. Towards the edge of the frame, another instance of Entity 115 with a M.E.G necklace waves at him, but he ignores them.*

  **Charles Pierre:** [You speak as if we are not intelligent or sentient like you, and it makes the mis-apprehension the [Blue Folk](entity-68.md) mention your organization showing them disturbingly believable. We are not entities like the Facelings, and I don't appreciate the attitude that we are less than you or entities.]

  **Operative Gage:** [What would you be classified as, then?]

  *Pierre paused to word his answer properly.*  
  **Charles Pierre:** [People.]

  **Operative Gage:** [That was a quick answer.]

  **Charles Pierre:** [Sometimes the simplest answer is the right one, and though your masters may not believe it so, it is the truth.]

  **Operative Gage:** [Your country is barely even industrializing.]

  *Pierre nodded.*  
  **Charles Pierre:** [We are trying, though. You talk like you are armed, yet you only possess that flask. We are human in spirit too, and you would do well to remember it.]

  **[END OF TAPE]**

  Note: This log was recovered by a passerby in Level 11 on May 3rd, 2015. Operative Gage is currently under reprimand for having lost it.

  > #### M.E.G. Notice
  >
  > Operative Gage is under review for dismissal after being found responsible for a medical and diplomatic incident.

In its extant form, Created One civilization is mostly concentrated within one key state-like entity with one noticeable colony of its own. Its unique characteristics are further described below.

# **Societies/States:**

## **The Regent Commonwealth of Artland:**

![Missing alt text.](https://backrooms-wiki.wdfiles.com/local--files/level-321/Regency_Flag.png)

A recreation of the flag of the Regency, displaying the Broken Sun and Moon in its seal. The Regency has asked to write part of the entry for itself with the permission and signature of their current king.

**The Regent Commonwealth of Artland is the largest society in the Backrooms and the only true state, founded in the late 500s to early 600s AD. With a land area of approximately 4 million km2 (1.5 million square miles) within level-321 (known to the Artikeli as “the lands of Art”), it houses the vast majority of us, with a population around sixty million, with the majority identifying as Christian.**

**Moreover, the Regency is a constitutional elective monarchy, governed by an elected king who serves a ten year term in the absence of a true royal family, with the provinces being governed by the hereditary nobility and a council of elected representatives from each province in a five tiered federal system.**

- *His Elected Majesty, Regent Roderic II, Duke of Nossex, and Trustee of the Broken Sun*

The average individual in their society has a sense of politeness centered around liberty, like in Scotland or Ireland. This is a result of a time of extreme zeal following a slow conversion in their society during the 600s AD to get around their initial lingual diversity and create a strong shared cultural identity around commitment to literacy in belief, with the tools for art in this level making innovating printing a simpler affair much earlier for them. Despite this, the Regency still has several small communities which natively speak languages other than English, most commonly French, Norse, Latin, Chinese, Japanese, Korean, Romani, and Old Greek, all combining to make up 9% of the population.  
This mass literacy in English has resulted in the diverse peoples of the Regency having a common culture obsessed with an informed egalitarian idea of rule of law in the name of cultural compromise with the dominant English population, leading to the government behaving far more like an aristocratic republic than a kingdom despite their elective monarch.

The advised method of interaction with individuals in this society while in Base Tau is to ask if they're interested in talking, as this will establish a positive first impression.

## **New Artland**

[Level 184](level-184.md) -

The colonial dominion of the Regency within Level 184, largely having a more rural and laid-back flavor of society found in the Unkempt Plains. One might compare it to rural Iowa or Kansas in character.

---

# **Discovery:**

While the Created Ones have been recognized for many years by other groups of interest, the first proper documentation of an encounter between their species and a member of a known GOI was in 715 CE with a treaty of eternal peace between them and the Lost, while formal M.E.G. contact with their civilization was established in 2015 with the help of an M.E.G. operative of their species, Pratt Grimm and his previous partner, the late Operative Jack Forrest. Considering how little the Lost speak of them, it is assumed this treaty held.

- - \_

  [View Recorded Footage](javascript:;)[View Recorded Footage](javascript:;)

  > #### Addendum April 25th, 2015
  >
  > Another part of an M.E.G. exploration log created by Operative Gage following a drunken brawl with Duke Charles IV of Pierre. Part of this is translated from French.

    
  *Operative Gage turns on the camera, looking to be in a dark room with someone nearby wearing a necklace. He looks unkempt, holding an empty flask in his hand.*  
  **Operative Gage:** [[I…I feel like I've…I'm…wasting my life. I used to be a professor! I used to mean something! I would be great if it weren't for this!]] *His speech is clearly slurred as he talks to himself, recovering from a seizure.*

  *The person in the room meant to be sleeping with him looks over, a Created One named Selene Benaria that was a solid ball of silver.*  
  **Selene:** Be silent! You're making your withdrawal worse not trying to sleep! Was a seizure not a close enough brush with death for you?!

  **Operative Gage:** What is the point when I can never go home? Why should I keep living in this hell?! *he asks before throwing up.*

  **Selene:** *She moves up against him and took the empty flask before crumpling it like paper.* The wine is making your mind as well as body sick from dependence, my friend. You must not give in to it. God does not take us from home to send us back. He calls us for a higher purpose. In your case, it is to tell our story and to be purified. You could easily live through this hardship if you care to.

  **Operative Gage:** How do you know? You could just deliver this camera to the M.E.G. if I can't.

  **Selene:** I care. I have been asked to oversee you for your own health, and I care to put in the effort, no matter your spite for it. You must care as well or you will live your life sleeping on your side.

  **Operative Gage:** What can you do to help me?

  **Selene:** I could join you in your travels. I can hold you from despair.

  **Operative Gage:** Why do you taunt me with false hope?

  **Selene:** It is only false if you do not try to take the chance to save yourself from this madness.

  **Operative Gage:** *Operative Gage's body shook, causing him to involuntarily cling to Selene despite being visibly bigger than her until the shakes stopped.* I have nothing to lose, I suppose.

  **Selene:** Now you speak the truth. It will not be easy, but you can be helped.

  **Operative Gage:** I will hate you if it fails.

  **Selene:** Patience, then. We have not failed this journey yet.

  *Operative Gage nods and turns off the camera.*

  > #### M.E.G. Notice
  >
  > Operative Gage is to be severely reprimanded after being found not to have disclosed his alcoholism prior to joining the M.E.G.

# **Do's and Don'ts:**

## Do:

- Answer questions.
- Be polite.
- Don't take them too seriously.

## Don't:

- Attack them.
- Lie to them.
- Try to hide something from them.

---

[Author(s)](javascript:;)

[Hide author](javascript:;)

"Thanks to everyone that chipped in to send art supplies to Standing Rock. We were able to get 175 yards of different colored fabrics, 4 gallons of ink (One gallon of white fabric ink for those dark colored fabrics, emulsion, a big bag of clean up towels," by dignidadrebelde is licensed under [CC BY 2.0](https://creativecommons.org/licenses/by/2.0/)  
[Source](https://www.flickr.com/photos/28987073@N08/30775994210)

« [Level 320](level-320.md) | Level 321 | [Level 322](https://backrooms-wiki.wikidot.com/level-322) »

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Level 321 - "The Infinite Art Studio"](level-321.md)" by Paint Palette, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/level-321](level-321.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/level-321">Level 321 - "The Infinite Art Studio"</a>" by Paint Palette, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/level-321">https://backrooms-wiki.wikidot.com/level-321</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** Thanks to everyone that chipped in to send art supplies to Standing Rock. We were able to get 175 yards of different colored fabrics, 4 gallons of ink (One gallon of white fabric ink for those dark colored fabrics, emulsion, a big bag of clean up towels,  
> **Author:** dignidadrebelde  
> **License:** CC BY 2.0  
> **Source Link:** <https://www.flickr.com/photos/28987073@N08/30775994210>

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/level-321](https://backrooms-wiki.wikidot.com/level-321)
