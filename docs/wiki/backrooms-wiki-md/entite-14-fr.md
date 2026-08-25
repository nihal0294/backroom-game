---
title: "Entity 14-FR - \"The Grisdos\""
source: "https://backrooms-wiki.wikidot.com/entite-14-fr"
retrieved_at: "2026-08-23T23:41:20+00:00"
license: CC-BY-SA-3.0
---

# Entity 14-FR - "The Grisdos"

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

rating: +16[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

{$title}Languages:

  
[![flag-saudi-arabia2x.png](https://cdn3.iconfinder.com/data/icons/142-mini-country-flags-16x16px/32/flag-saudi-arabia2x.png)](entite-14-fr.md)  
[![china](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/china)](entite-14-fr.md)  
[![flag-germany2x.png](https://cdn3.iconfinder.com/data/icons/142-mini-country-flags-16x16px/32/flag-germany2x.png)](entite-14-fr.md)  
[![uk](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/uk)](entite-14-fr.md)  
[![spain](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/spain)](entite-14-fr.md)  
[![france](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/france)](entite-14-fr.md)  
[![indonesia](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/indonesia)](entite-14-fr.md)  
[![italy](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/italy)](entite-14-fr.md)  
[![KO](http://backrooms-wiki.wikidot.com/local--files/component:translations/KO)](entite-14-fr.md)  
[![poland](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/poland)](entite-14-fr.md)  
[![portugal](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/portugal)](entite-14-fr.md)  
[![russia](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/russia)](entite-14-fr.md)  
[![thai](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/thai)](entite-14-fr.md)  
[![toki](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/toki)](entite-14-fr.md)  
[![vietnam](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/vietnam)](entite-14-fr.md)

### ⚠️Warning⚠️

**This article is included in an on-going canon which will be published soon.**

[IETS](iets.md)

### **Entity Number :** 14-FR

### **Habitat :** **[Level 14-FR](http://fr-backrooms-wiki.wikidot.com/niveau-14-fr)**

## Description :

![Missing alt text.](http://fr-backrooms-wiki.wikidot.com/local--files/entite-14-fr/grisdos)

Sketch made by a level 4-FR resident named Alicia, following her visit to the Marine Gallery.

Grisdos, (Greybacks in French), are a sort of unknown semi-aquatic mammal of the [Frontrooms](the-frontrooms.md) that lives in different groups in the heart of the **Marine Gallery**. They are often described as "bears mixed with otters", on average measuring 3.2 meters and weighting 470 kilos for males and 3.7 meters and 530 kilos for female adults. They are covered with white and grey fur. They are generally not aggressive towards humans and will avoid them most of the time; however, they won't hesitate to attack if someone gets too close to them or their "nest". Nevertheless, a wanderer underwater may stir the curiosity of the entities who will approach to interact with them. Although most of these interactions end well, with some wanderers having pet them, sometimes the Grisdos will attack if that person makes too many abrupt movements or panics, resulting in their death.

⚠️ **Warning** : Although generally passive, Grisdos remain wild animals, and, on top of that, very intelligent. Attacks may not be common, but are always deadly.[1](javascript:;)

## Biology

**Grisdos** have a polar bear-like morphology, although less imposing and more stretched, slender, and aerodynamic (see sketch above), in the manner of a quite muscly otter. They have four impressing limbs (that they only use in water to stay static,) as well as an elongated and powerful tail they use to swim the way sea lions do. They are provided with light but extremely dense, to the point of being almost hydrophobic, fur, which increases their swimming speed (with the all-time record being attained by *Prator*, a young 3.4 meters' male who reached 75 km/h, or 46 mph, when he was hunting a swordfish[2](javascript:;)). The fur's colors are the reason why they're named **Grisdos**. Indeed, the lower part of their body until their shoulders is white that fades to grey on their back. This distinctive feature resembles the [Countershading](https://en.wikipedia.org/wiki/Countershading) phenomenon from the Frontrooms , which is a form of passive camouflage that can be found in sharks. However, there are still questions about how it appeared in the species, as the level is constantly illuminated, making this type of adaption completely useless.

These Entities have quite elongated canine jaws with two sets of ribbed teeth, each facing a different way supposedly to get a better grip of the prey. Their long tongue helps them orientate vegetation to the back teeth, which are flat and adapted for plant mastication. As there is no freshwater or [Almond Water](object-1.md), **Grisdos** are capable of hydrating through their food. They can hold their breath underwater up to about 30 minutes too, as the water pressure is constant and uniform. **Grisdos** did not need great anatomic adptations to achieve this result.

They usually hunt in pack and bring their prey back to their "nest" to consume them. The nest is a build-up of fur, bones, animal tissue, and leftover plants roughly arranged in a circle with a "softer" ground than the **paroi** (wall). They have a low fertility rate, and indexed births happen every two to three years which is counterbalanced by a very low child mortality rate. The babies reach adult height in approximately 9 to 12 years.[3](javascript:;)

## Behavior

**Grisdos** are omnivorous, and find themselves at the top of the Gallery's food chain. While they can attack the most massive animals, they generally prefer to consume molluscs, crustaceans and little fish, way more abundant, as well as dense seagrass mats.  
This behavior may seem insignificant but in reality, it has a primordial impact on the level's ecosystem. Indeed, it is widely known that the **Grisdos** feed on the largest populated species, which in result avoids overpouplation and ecosystem collapse. From this fact, they are considered a [keystone species](https://en.wikipedia.org/wiki/Keystone_species) and have the rank of super-predator in the level. They also adopt its characteristics, namely :

- A vast territory,
- A low population,
- A quite long lifespan[4](javascript:;).

Due to the lack of season (and day/night cycle) in the **Gallery**, marine species are continuously reproducing at a slow pace. A cycle based on the consumption of specific species by **Grisdos** was then established: in about two weeks, they will reduce the population of a target species by 20%, in parallel with other prey, before switching to another. Fishing managed by the [Ariane Circle](cercle-ariane.md) is therefore aligned with these hunting cycles; it is forbidden to fish a species under "regulation". The hunting cycle of these Entities has been known for two years, and fishermen focus on the species that will be hunted last. Fishing itself is also regulated to prevent ecosystem disruption.

---

## Specific Case: *Spine*

Spine is a young female **Grisdos** abandoned by her group because of her handicap on her hind limbs who has been taken in by the **Bouteille à la mer**'s (message in a bottle in French) staff.

[Show the annex on Spine](javascript:;)

[Hide](javascript:;)

She was spotted for the first time in 2021 during a diving trip in the **Gallery**. She was in all likelihood born recently and was swimming next to her parents. The divers' group observed her throughout the whole trip before coming back. Two weeks later, the team caught a glimpse of her again.[5](javascript:;) This time, they noticed that the little one was being isolated by her parents, and she was struggling to follow them. The third encounter sealed her fate when a new group saw her. She was struggling to stay on the surface of an air pocket that came out of a huge bubble of water. Due to fatigue, she was going to end up drowning. Despite the animal being dangerous, the leading professional diver swam at full speed, followed closely by the rest of the divers, to retrieve and attempt to save her, which they succeeded in. Although she tried multiple times to attack the members of the groups, her state of fatigue allowed them to retrieve her at the **Vitrine** without complications.

Today Spine is a female **Grisdos** of 1.1 meters long and a comfortable 75 kilograms. She turned 2 years old on the 15th of march 2023 with an atrophy of the hind limbs that prevents her from walking, running, and hunting properly. The reason behind this atrophy remains uncertain, but it is likely congenital. Her behaviour, especially towards human beings, is dog-like, although she seems less intelligent. She is wary towards strangers, but, at first glance, won't try to attack them. She gives lots of affection to the main staff of the **Bouteille à la mer** where she currently lives. Her diet is made of carcasses and remains of fishs or unclean fishing waste unfit for human consumption. Despite being handicapped, she is capable of swimming faster than a diver and can hunt some species of fish by herself by ambushing them. Sometimes, she takes one back to give to the fisherman that she accompanied (because she is not allowed to go alone in the water) even though she does not do it herself. Indeed, Spine's atrophy prevents her from keeping herself correctly in and on water, as this action is too demanding on her. She becomes tired more quickly, which can become a risk if she swims too far away from the **Bouteille**.

The **Bouteille**'s fishermen take cautions when going out with diving equipment, such as not bringing Spine with them if she has just woken up or after she has eaten and not moving more than 500 meters away from the **Bouteille** when accompanying a diver. A "pen" was assembled behind the workshop from rudimentary materials and waste produced by the **Bouteille** and keeps Spine there for most of the day. The floor of the enclosure is covered with vegetation and textiles that are unusable by residents from the **Gallery** and other levels. It has at all times a bowl of almond water mixed with distilled water to compensate for the low water content of its diet, since she is only allowed to eat remains that are unfit for human consumption and are therefore of lesser quality. At least once a day, Spine is let out of her pen to swim with the **Bouteille**'s residents or the **Vitrine** managers/clients for exercise. If she requests it, Spine is allowed out of her pen. She will then wander in the air bubble where the outpost is located or stay near the working fishermen. She will be put back in her pen if she distracts them too much or if she hinders them, which happens a lot considering her size.

[Hide](javascript:;)

---

## To do and Not to do

*For safety reasons, signs are placed at various locations in level 4-FR and 14-FR to inform people about the potential risks incurred when entering the level. Below is the section about the behavior to adopt when dealing with a Grisdos.*

***Note from the Ariane Circle***: Safety instructions to minimize the risk of accidents related to Grisdos

  
The **Grisdos** are conscious mammals that are relatively intelligent. For this reason, certain rules are to be applied every time you find yourself in level 14-FR:  

- **Keep a reasonable distance between you and the Grisdos**

The **Grisdos** are passive most of the time. However, if they do attack, their speed won't spare you any chance, so it is better to stay a reasonable distance away.

- **Stay armed when interacting with a Grisdos.**

Interacting with one or more **Grisdos** is **only** authorized in the presence of a specialist in order to minimize risks. Otherwise, you will need to slowly move to an exit. You are obligated to be in possession of a weapon which is effective underwater to protect yourself in those types of situations.[6](javascript:;)

---

- **Do not get too close to a group of Grisdos**

Without supervision, reason or especially, with little experience, it is **wholly prohibited** to go near a Grisdos or a group of Grisdos. Doing so will result in sanctions depending on severity.

- **Do not move abruptly**

**Grisdos** are **predators**; moving abruptly and behaving erratically can appear to be panic for them, and therefore an opportunity to attack (*See Dive Incident #01 of the **Vitrine***).

- **Do not attempt to feed a Grisdos**

Although the risk of an attack if the protocols are followed is comparable to the risk of being attacked by a shark in the same circumstances, they remain **wild animals**, which makes them unpredictable.

- **Do not approach a Grisdos nest**

Like the majority of mammals adopting the [K selection theory](https://en.wikipedia.org/wiki/R/K_selection_theory), the **Grisdos** will fiercely defend their nests and young. In fact, if you cross a nest, even unoccupied or visibly dilapidated, flee.

---

- **Do not fish a species that the Grisdos is hunting**

For the reasons mentioned in the "Biology" section, the Entities are essential to maintain the ecosystem of the **Gallery** thanks to their hunting cycle. Fishing or exploiting a species during hunting will affect its population beyond the equilibrium threshold, meaning it will not be able to recover a sufficient number of individuals to properly survive the next hunting cycle, which could lead that species to become threatened.

- **Do not hunt Grisdos**

For these same ecosystemic concerns, it is **strictly prohibited** to hunt **Grisdos** because of their crucial importance in the balance of the level, as well as their low population.

  

[Show author](javascript:;)

[Hide author](javascript:;)

The author of this Entity is   
The translator is

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Entity 14-FR - "The Grisdos"](entite-14-fr.md)" by LouIou, from the [Backrooms Wikidot FR](index.md). Source: [http://fr-backrooms-wiki.wikidot.com/entite-14-fr](entite-14-fr.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/entite-14-fr">Entity 14-FR - "The Grisdos"</a>" by LouIou, from the <a href="http://fr-backrooms-wiki.wikidot.com/">Backrooms Wikidot FR</a>. Source: <a href="http://fr-backrooms-wiki.wikidot.com/entite-14-fr">http://fr-backrooms-wiki.wikidot.com/entite-14-fr</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

]]

> **Nom :** grisdos  
> **Auteur :** Aliichat (navhae)  
> **Licence :** CC BY 3.0  
> **Source :** <https://cdn.discordapp.com/attachments/853166605859815434/1120032845960851526/IMG_1980.png?ex=6517005f&is=6515aedf&hm=e477b2071705f3cd49e3bd644a113241a4120dc990c7c0dba25f0a132e707066&>

Pour plus d'informations à propos du contenu du wiki, veuillez vous référez à la [liste des licences des pages](licensing-master-list.md).

« [Entity 13-FR](https://backrooms-wiki.wikidot.com/entity-13-fr) | Entity 14-FR | [Entity 15-FR](https://backrooms-wiki.wikidot.com/entity-15-fr) »

Footnotes

[1](javascript:;). See Incident 01 of the **Vitrine** (Storefront in french).

[2](javascript:;). Unfortunately, he did not catch it.

[3](javascript:;). With the discovery of the level being quite recent, these are estimates.

[4](javascript:;). Still uncertain to this day due to the level's rather early discovery, but largely superior to 20 years.

[5](javascript:;). Considering the low birth rate of the species, it was reasonnable to assume that Spine was the only "Grisdossonne" of the level at this time.

[6](javascript:;). Note that an irresponsible usage along an unjustified attack on a **Grisdos** will result in a banishment from the **Gallery** and in severe sanctions depending of the incident's nature.

---

Source: [https://backrooms-wiki.wikidot.com/entite-14-fr](https://backrooms-wiki.wikidot.com/entite-14-fr)
