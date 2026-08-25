---
title: "Level 993 - \"Winterbliss\""
source: "https://backrooms-wiki.wikidot.com/level-993"
retrieved_at: "2026-08-23T23:36:46+00:00"
license: CC-BY-SA-3.0
---

# Level 993 - "Winterbliss"

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

Level 993: "Winterbliss"

rating: +26[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  

Info

Article inspired by a real US project which purpose was to find a location to burry nuclear wastes and discourage peoples from trespassing the area for 10000 years. One of the solution proposed was an hostile architecture nicknamed: [the landscape of thorns](https://www.researchgate.net/publication/382313421_Introduction_Security_Aesthetics_of_and_beyond_the_Biopolitical).

[Close](index.md)

SURVIVAL DIFFICULTY:

habitable

- Secured.
- {$two}.
- {$three}.

# Description

![Missing alt text.](http://backrooms-wiki.wikidot.com/local--files/level-993/winterbliss)

(Fig 1.0) Photograph of **Level 993**’s Forested Area During Clear Weather Conditions

**Level 993** is characterized by a cold, snow-covered biome exhibiting environmental and ecological stability, where both flora and fauna coexist in a state of balance: a genuine safe haven.

Climatic conditions are predominantly snowy, with ambient temperatures typically measured at approximately -5°C. However, this baseline is interrupted once per week for a period lasting 1 to 2 days, during which temperatures may rise to 15°C. During this interval, the weather clears, allowing rays of light to shine on the pure white snow and free the water of the lakes from their ice barrier.

**Level 993** is organized into four distinct geographic zones:[1](javascript:;)

Zone 0: The Great Mountain Range

**Level 993** is enclosed by an extensive mountain range, forming natural barriers on its southern, western, and eastern perimeters. As a result, North remains the sole accessible route for progression within the level. The distance between the western and eastern mountain ranges, which calculates the width of the level, is around 30 kilometers.

Access to the mountain range itself is impossible, the only point of entry being the cave opening through which you entered **Level 993**. The reason being that The Great Mountain Range comprises mountains of extreme altitude, estimated at approximately 10,000 meters. Due to their immense height, the base of these mountains appears as a sheer stone wall, impeding both attempts at physical ascent and aerial reconnaissance via UAVs, rendering what is beyond the Great Mountain Range inaccessible and largely unknown.

Zone 1: The Snowy Forest (0km - 12km)

Upon exiting the cavern that serves as the entry point to **Level 993**, The Snowy Forest is the zone wanderers first encounter.

This zone supports a wide array of passive "entities", which are mammals exhibiting phenotypes identical to known Frontrooms arctic species (e.g., arctic foxes, white-furred cervids). The origin of these species remains speculative, but one prevailing theory posits that these organisms may have no-clipped from the Frontrooms in the distant past and have since established a stable, self-sustaining ecosystem.

Zone 2: The Snowy Plateau (12km - 16km)

At 12 kilometers North lies The Snowy Plateau, a completely flat, barren expanse devoid of both flora and fauna. With the exception of a single human-constructed settlement: a wooden town constructed using timber sourced from the forest.

### Bases, Outposts and Settlements

##### The Village of Winterbliss (49 inhabitants)

Winterbliss is the name of the self-governed settlement inhabited by a community of wanderers seeking peace. Despite their pacifist orientation, the inhabitants maintain a strict code of conduct enforced by their important possession of defensive weaponry. A formal peace agreement is therefore imposed on all individuals and groups entering **Level 993**, prohibiting acts of violence against humans and protected entities. Breach of this agreement results automatically in permanent expulsion from the level, with capital punishment considered in cases of severe violations.

##### [M.E.G.](the-m-e-g.md) Outpost Paradigm

- **Location**: Outskirts of Winterbliss
- **Personnel**: 5 members of "Team Thorns" (Regiment Compass Point)
- **Objective**: Investigative research focused on **Zone 3**.

##### [U.E.C.](the-u-e-c.md) Outpost Everdine

Their presence is considered a nuisance for the M.E.G. as they share the same objective. However, due to the standing peace agreement enforced by the locals, both factions maintain a non-aggressive coexistence despite conflicting interests.

- **Personnel**: 2 Field Researchers (Research Team Circe), 2 Bodyguards.
- **Behavior**: Avoidant unless directly engaged or provoked.

### Entrances

- [*Standard Entrances*](javascript:;)

The only known entrance to **Level 993** is located inside the caverns of [Level 8](level-8.md). A pathway where the temperature is around minus 5 degrees Celsius will always lead here. However, the location of this pathway is not fixed and often change within the level.

### Exits

- [*Standard Exit*](javascript:;)
- [*Anomalous Exits*](javascript:;)
- [*Luck-Based Exits*](javascript:;)

Going back inside the cavern will lead back to [Level 8](level-8.md).

Freezing in **Level 993** will automatically transport one to [Level 1](level-1.md) before they reach the lethal threshold. However, medical assistance will still be required.

No-clipping into a tree or a large rock will either take you to [Level 260](level-260.md) or [Level 557](level-557.md).

  
  
  
  
  
  
  
  

> The Landscape of Thorns (6km)

As one leaves the village, this radioactive warning sign will stand on the north-facing side of the trail.

Impenetrable fog and a snowstorm build up and intensify as you progress along the trail; temperatures gradually drop, until it reaches minus 50 degrees Celsius. One may think its thermo-hazmat gear keeps him safe from all danger, but the tension builds as the Geiger counter twitches until it can't handle it anymore.

At the end of the path, one will be greeted by a final message engraved on a metal sign[2](javascript:;) :

> This place is not a place of honor.  
> No highly esteemed deed is commemorated here.  
> Nothing valued is here.  
> This place is a message and part of a system of messages.  
> Pay attention to it!  
> Sending this message was important to us.  
> We considered ourselves to be a powerful culture.

Zone 3: The Landscape of Thorns (16km - ?)

SURVIVAL DIFFICULTY:

deadzone

- Hostile Environment.
- Extreme Radiation Hazards.
- Extreme Mental Hazards.

Located beyond the established boundary of The Snowy Plateau, this area—referred to by the inhabitants of Winterbliss as "The Landscape of Thorns"—is considered a point of no return. It comprises a seemingly endless, arctic hellscape densely populated by elongated, sharp wooden spikes emerging from the ground. The hostile geometry of the landscape clearly indicates danger, but despite all the warning signs, that still was not enough to deter few persistent individuals. Anyone who dared to explore this forbidden zone never came back.

Another interesting fact being that "The Landscape of Thorns" brought a sense of déjà-vu to many wanderers who claimed to have once seen this location *somewhere*. The origin and purpose of such a location has therefore prompted several hypotheses:

- The possibility of the environment playing a role in containment and deterrence.

- Theories suggesting symbolic or punitive significance, potentially aligned with psychological behaviors such as curiosity and arrogance.

- Speculation involving "[Liminal Echo](phenomenon-7.md)" and its role as a memorial referencing sins committed against our own [home](the-frontrooms.md).[3](javascript:;)

![landscape-of-thorns-sketch](http://backrooms-wiki.wikidot.com/local--files/level-993/landscape-of-thorns-sketch)

(Fig 1.1) Sketch of the “Landscape of thorns” by a M.E.G. operative. Due to the abnormal amount of radiation, cameras and electronic devices do not work.

> Would this vision strike fear into the visitor and keep them away, or would it spark curiosity? Would they start to dig and unearth horrors with the intention of finding a treasure, wrecking havoc on whatever civilization exists in this coming world?

  
  
  
  
  
  
  
  

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Level 993 - "Winterbliss"](level-993.md)" by Charles Delameuh, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/level-993](level-993.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/level-993">Level 993 - "Winterbliss"</a>" by Charles Delameuh, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/level-993">https://backrooms-wiki.wikidot.com/level-993</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** Winter Forest River  
> **Author:** Bonnie Moreland  
> **License:** CC0/Public Domain  
> **Source Link:** <https://negativespace.co/winter-forest-river/>

> **Name:** Land of Thorns Sketch  
> **Author:**   
> **License:** CC-BY-SA 3.0  
> **Source Link:** Drawing

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

Footnotes

[1](javascript:;). Zone distance marks are indicated.

[2](javascript:;). According to the locals, this sign wasn't made by them and was here ever since they discovered the level.

[3](javascript:;). Burial of nuclear wastes.

---

Source: [https://backrooms-wiki.wikidot.com/level-993](https://backrooms-wiki.wikidot.com/level-993)
