---
title: "Secret Santa 2024"
source: "https://backrooms-wiki.wikidot.com/secret-santa-2024"
retrieved_at: "2026-08-23T23:41:32+00:00"
license: CC-BY-SA-3.0
---

# Secret Santa 2024

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

![Santa](https://liminaldoctor.wdfiles.com/local--files/gallery/Santa)

Christmas of 2024 is almost here and what better way to celebrate than by spreading the existential dread of the Backrooms? 2024 Secret Santa is here!

How does this work?  
From the 25th of November, anyone who wants to join the secret santa will fill out the template below and send your message in the discussion section of this page. Anyone who wants to sign up has a week to do so.

On the 2nd of December, everyone who has joined will be assigned a random person who they will write/draw for.

If the 2nd of December has passed but you would still like to join, you may still send a message to sign up in the dicussion. However, you will not be guaranteed participation as this relies on more than 3 people signing up after the initial deadline. This will only last for an extra week (until the 8th of December) and anyone who signs up after will not be included.

When finished, you can send your gift any day starting from the 20th of December until the 25th of December. If you think you will not be able to make the deadline, message me either on wikidot or through Discord DMs (my username is liminaldoctor) and we can arrange an extension.

What can I ask to receieve?  
There are only two rules on what you can ask for:  
- it must comply with the site rules  
- it must relate to the Backrooms in some way (you can use pre-existing lore or your own creation, such as an OC, entity, or level that does not exist on site)

As long as these two are considered, you have free reign.

How do I send the gift?  
Private message the person the gift is for on the location they have stated that they would prefer. If you would like to also post the gift on site, this is allowed (however, this is not a requirement). You can also ask for crit for your gift but this should be done in DMs so you remain the secret santa.

You only need to chose one of the person's requested gifts, but you can do more than one if you would like (such as both drawing a picture and writing a page).

What do I do if I don't get a gift by the deadline?  
Message me either on Wikidot or Discord DMs (liminaldoctor) and let me know. If an extension has been arranged, I will let you know. If not, I will look into it. If I hear no response from the other person or they continue to miss deadlines, I will make the gift myself.

Joining the event  
Make sure to fill out all points of the template, even if you have a preference for what kind of gift you'd rather receive. Include anything you don't want in these sections too if you feel it's important. Also make sure to link any pages that are relevant.

State your username for the final section if you wish for people to contact you through Discord.

Template:

**For a gift that is written, I would like:**

**For a gift that is drawn, I would like:**

**How to reach out to me when the gift is ready (Discord/Wikidot):**

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Secret Santa 2024](secret-santa-2024.md)" by LiminalDoctor, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/secret-santa-2024](secret-santa-2024.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/secret-santa-2024">Secret Santa 2024</a>" by LiminalDoctor, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/secret-santa-2024">https://backrooms-wiki.wikidot.com/secret-santa-2024</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** IMG\_3978  
> **Author:**   
> **License:** CC BY-SA 3.0  
> **Source Link:** <https://liminaldoctor.wdfiles.com/local--files/gallery/Santa>

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

Signing Up

  
[Write Your Wish](index.md)

[Show Comments](javascript:;)

[Hide All Comments](javascript:;)
[Unfold All](javascript:;)
[Fold All](javascript:;)

page 1 of 31[2](javascript:;)[3](javascript:;)[next »](javascript:;)

[Fold](javascript:;)

My entry :3

25 Nov 2024 22:04

For a gift that is written, I would like:

A story involving one or more of the following(in preference order):  
- [The Black Knights](the-black-knights.md), Diana Evelynn, or both  
- The [Ariane Circle](cercle-ariane.md)  
- My self-insert, Rey McCalister(character sheet: <https://docs.google.com/document/d/1AO0datMkOjTsrQaSFyqPrDIO2RdsoEGhlvgAb8YAt2U/edit> related works: [Level 980](level-980.md), [Level 986](level-986.md))  
For a gift that is drawn, I would like:  
Art of anything mentioned above or Toby, a WIP entity.  
Reference:  
![the%20boy%20who%20slived.png](http://scutoidbox.wikidot.com/local--files/new-new-homepage-because-i-envy-the-cn-wiki/the%20boy%20who%20slived.png)  
How to reach out to me when the gift is ready (Discord/Wikidot):  
Discord: rey.\_day  
Wikidot:

I prefer to do a drawing for my gift to the other person, but I’m fine with writing something too! As for the gift to me, I have no preference :3

Last edited on 25 Nov 2024 22:05
by
 [Show more](javascript:;)

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[My entry :3](javascript:;) by , 25 Nov 2024 22:04

[Fold](javascript:;)

<3

25 Nov 2024 23:22

**For a gift that is written, I would like:**  
Well I'd really like something with one of my PoI characters in it, maybe interacting with somebody new or facing a really novel situation. Either that, or something that has to do with Ireland or Gaeilge.

**For a gift that is drawn, I would like:**  
Draw one of my characters.

To be honest, my author page is crazy out of date and so you're best using crom to figure out what I've written lol.

**How to reach out to me when the gift is ready (Discord/Wikidot):** discord @scutoidlim

---

You promised you'd take me there again some day… but you never did.

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[<3](javascript:;) by , 25 Nov 2024 23:22

[Fold](javascript:;)

Entry

26 Nov 2024 00:46

**For a written gift, I would like:**

A page involving any of my "main" works to some capacity— this being [Kirai](entity-73.md), [Spec](spec.md), or [the Memory Wyrm](entity-42.md). The actual content of the gift is up to the author, as I will appreciate whatever I'm given :)

Though I don't also want to leave the author completely in the dark, some ideas could include:

[+ Show idea 1](javascript:;)

[- hide](javascript:;)

-Any "canon specific" tale that showcases how the page fits into these alternate worlds. Sort of like what I did with Spec and Kirai in [nothing but ants](nothing-but-ants.md).

[+ Show idea 2](javascript:;)

[- hide](javascript:;)

-A fun, humorous page involving Spec getting caught up in some absurd situation. Not a joke tale per se, something more along the lines of [Entity 76](entity-76.md). Ridiculous, but takes itself seriously.

[+ Show idea 3](javascript:;)

[- hide](javascript:;)

-Something that leads to the Memory Wyrm having a throwdown with a few [Volts](entity-503.md) in [Level 817](level-817.md). If you can figure out a way to work Spec, Kaiser, or [Tom Von Haderach](tom-von-haderach.md) into this somehow, even better. I like seeing big monster go smash.

**For an art gift, I would like:**

Any art of the three main pages I mentioned earlier. Again, as I do not want to leave the artist in the dark, here is both a reference google document as well as some possible ideas:

Google doc: <https://docs.google.com/document/d/1ixpDMEqcid9GUOdSutSQcx77Het1Jwaj6r8_pp9q9rU/edit?usp=sharing>

[+ Show idea 1](javascript:;)

[- hide](javascript:;)

-A short, four page "comic" with the following premise:

(Panel one) Spec is standing in an alleyway in Level 11, cornered by Tom Von Haderach. His fingers would be crossed, raised in front of his face as he says "Domain Expansion:" Tom Von Haderach would react with something like "Oh you've got to be kidding."

(Panel 2) The alleyway is overtaken with a zooming effect similar to that of "infinite void."[An image will be provided in the artist reference doc I link.]

(Panel 3) Spec and Tom Von Haderach are now wedged inside [Level 268](level-268.md). Spec says the words "…Waffle house bathroom", and kicks Tom in the shins as Tom reacts with "Wha-"

(Panel 4) Spec runs out of the bathroom, slamming the door shut behind him. IF YOU ARE WONDERING WHERE THIS BATSHIT STUPID IDEA CAME FROM, TRUST ME, YOU'LL FIND OUT SOON ENOUGH.

[+ Show idea 2](javascript:;)

[- hide](javascript:;)

-A drawing of the Memory Wyrm throwing down with the Mangled, while Argos, The Red Knight, and Kirai desperately try to stop the two from destroying Level 9. The Mangled would be the rewrite version that I'm working on with Niku, so an image and relevant information will be included in the artist reference document.

[+ Show idea 3](javascript:;)

[- hide](javascript:;)

-Another short "comic" adjacent thing based off of an old crackplot I had with Snom back in the day— Basically Spec and TVH are walking down the street in level 11,9, or something like that and they're beefing over whether certain backrooms objects could be classified as "drugs" or "addictive."

They come across a lone partygoer on the street, and Spec basically goes up to it (putting his arm around its shoulder for dramatic effect) and pulls out a picture of "Gumby" on his phone and holds it out to Tom with the line

"SEE? SEE? THIS IS WHAT I'M SAYING. LOOK AT HOW DRUGS DESTROYED THIS POOR MAN'S LIFE!! A PROMISING ACTOR INSPIRING MILLIONS TURNED INTO A COMMON STREET WENCH"

Tom just rolls his eyes and keeps walking

Spec suddenly remembers hes standing next to a partygoer and flicks his wrist sending the creature flying into a wall with a loud splat.

**At the end of the day, it doesn't have to be anywhere near as outlandish as these suggestions— I appreciate whatever you take the time out of your day to make for me.** It's the season of *giving,* not *getting.* You took the time to participate in the secret santa just for the sake of being nice— that's what this is really all about :3

**Reach out to me via:** Discord @Spectre48

Last edited on 26 Nov 2024 03:42
by
 [Show more](javascript:;)

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Entry](javascript:;) by , 26 Nov 2024 00:46

[Fold](javascript:;)

Merry November

26 Nov 2024 01:29

**For a gift that is written, I would like:**  
An article that does one or more of the following things:

- involves [Level 5.2](level-5-2.md) in a major way
- has a format inspired by [Heart](heart.md)
- features a surprising discovery made using real world science
- is about an obscure or hidden place in a well-known level (such as one of the initial twelve)
- reveals a major change happening over time (can be a what-if)

Referencing one of my pages is always something I enjoy, but you don't have to. For cool images, check out [creepystock](https://creepystock.com/backrooms-and-liminal-spaces/).

**For a gift that is drawn, I would like:**  
I'd be happy with a drawing related to any of my pages, especially [Level 280](level-280.md) or Michael W. (he's appeared in [Level 59](level-59.md) and [Hum-100Hz](hum-100hz.md), but as his appearance isn't described in detail, you'd largely have free rein to try to make something that fits the personality).

**How to reach out to me when the gift is ready (Discord/Wikidot):**  
My Discord handle is @junkshipp and my Wikidot account is   
Discord is preferrable as I don't read Wikidot PMs often.

Last edited on 26 Nov 2024 01:31
by
 [Show more](javascript:;)

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Merry November](javascript:;) by , 26 Nov 2024 01:29

[Fold](javascript:;)

bazinga, innit

26 Nov 2024 01:36

Henlo gamers

**For a gift that is written, I would like:**

- Something Sim Canon related set in an era not touched on yet! Just to make sure nobody has to do any homework. Something set pre-Lost would be interesting, so a long time before 1025 BCE. Stuff to do with early humans exploring the Backrooms in general would just be *cool.*
  - Of course, the other area not explored is after the MEOD. Something alternatively hundreds or thousands of years after the early 22nd Century would be neat! This would require a little bit more homework, though. to make sure it aligns properly in the timeline.

(I suggest these periods mainly because I don't have many plans for what goes on in them, besides one level for the pre-Lost era and three set very far apart from each other in the post-M.E.O.D. era. it's easier to slot things in during those dates. If you're unsure what would make smth Sim, check the opening parts of [this](simulation-canon.md))

If you wanna do homework anyways, check this:  
<https://docs.google.com/document/d/1LJJ6h8HIJ6XQv8QcwdQeHi4bnBTdhmJH8EFQOfNyjPM/edit?usp=sharing>

If you wanna write post-M.E.O.D. stuff, I would recommend reading this draft to understand what happened after its collapse:

- [http://boringtalkingsandbox.wikidot.com/phenomenon-25](phenomenon-25.md)

**For a gift that is drawn, I would like:**

Not as sure on this one! Honestly, some kind of map of [Level 320/Entertainland](level-320.md) would be interesting, as I could then use it on the page. specifically the map of the resurrected level and after it's had all those zones put in. The passage in the text does explain where each one is placed as I did draw a shitty map of my own, but I would be curious to see what a better one could look like.

**How to reach out to me when the gift is ready (Discord/Wikidot):**

I use Discord exclusively, I'm afraid! I don't check notifications here lol. I'm best contacted at boringtalking.

---

Eyy.. i just typed a loada garrbagge

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[bazinga, innit](javascript:;) by , 26 Nov 2024 01:36

[Fold](javascript:;)

mods send me an angel. send me the best angel you have.

26 Nov 2024 01:55

**For a gift that is written, I would like:**

- Something surreal, something existential, something based on a dream you had that one time and it just stuck with you. Madness brings me joy; gift me something that will stick with me for days after the read, wondering "just wtf were they on". Bonus points if you include a format screw, references to contemporary poetry, and the presence of mackerels.
- A take on the origin of Nostalgi Gaius and 404 devoid from the Pantheon context, since we have enough of those and I'm itching for something novel.

**For a gift that is drawn, I would like:**

- A 4k landscape illustration of our mascot, Tesseract, standing on a stony shore. The sky is cyan and cloudy, with a gentle fade to lavender towards the horizon. The waves billow, creating foam against the outcrops, and stirring resting seabirds into flight. The lighthouse on the hill in the background emits a golden glow, and acts as the primary light source for the piece, contrasting with the cool environmental lighting. Glistering seashells and polished rocks are visible around Tesseract's feet, as they ready their telescope, aiming at something in the water. Floating in the swirling tides, lies one wind-torn sailboat.
- Gaius x River fanart.

**How to reach out to me when the gift is ready:**

- southgate\_ (Discord)
- centurys lute (Wikidot)

I prefer Discord, thank you.

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[mods send me an angel. send me the best angel you have.](javascript:;) by , 26 Nov 2024 01:55

[Fold](javascript:;)

ROBOT BUT NOT REVIEWS THIS TIME

26 Nov 2024 03:11

**Written gift:**  
Write something that takes place in the *An Anthology* canon, which I've been creating. (I REALLY NEED A THIRD AUTHOR, OTHER THAN THAT WE WILL MEET THE CANON REQUIREMENTS!!!!!) Currently, the pages on site for An Anthology are [Level 980](level-980.md), [A Letter to my Past Self](a-letter-to-my-past-self.md), [Object 48](object-48.md), and [Object 54](object-54.md). Here is the link to the work in progress canon page: <http://roboboxium.wikidot.com/aa-hub>, which should include everything you need to know. If not, feel free to ask a middleman to ask me for lore (because not a lot has been posted on site yet). An important page to read that has not been posted yet is [Euclid](http://roboboxium.wikidot.com/euclid). One thing you could expand upon is the relationship between the events and characters in Object 48, Object 54, and Level 980 / Euclid. The main timeline is with Level 980 and Euclid. Read the canon hub page for what more specifically I'd like in this writing. If you plan on posting it on site, consider established lore a bit more than if you don't (but I'd like it if you do).

**Drawn gift:**  
Draw something related to the pages mentioned above, or draw Ari Kolinski. I've posted art of them a few times, on discord and on site. A Letter to my Past Self is from Ari's father's perspective. Ari was taught by the Arctic Survivor (a page that will be posted in the future), and wields a naginata (なぎなた). Below are a few drawings that you could use as reference:

[+ show block](javascript:;)

[– hide block](javascript:;)

![image.png?ex=674604df&is=6744b35f&hm=90f55b1212ee1f6e4946aee4b995f2e463935c08e026b3cfcbf9ac8572116940&=&format=webp&quality=lossless](https://media.discordapp.net/attachments/1081208613126819911/1306490528690339890/image.png?ex=674604df&is=6744b35f&hm=90f55b1212ee1f6e4946aee4b995f2e463935c08e026b3cfcbf9ac8572116940&=&format=webp&quality=lossless)![image.png?ex=6745ff0d&is=6744ad8d&hm=0f38f8cda20b497653552addaa5b54b9f7befc4c5ade42e4279715e4f81fd061&=&format=webp&quality=lossless](https://media.discordapp.net/attachments/1081208613126819911/1282566678562996355/image.png?ex=6745ff0d&is=6744ad8d&hm=0f38f8cda20b497653552addaa5b54b9f7befc4c5ade42e4279715e4f81fd061&=&format=webp&quality=lossless)![202408Super-Robot14.png](http://backrooms-wiki.wdfiles.com/local--files/featured-art-archive/202408Super-Robot14.png)

(I know most people won't do this but):  
**Music gift:**  
Write a song! Maybe an ambience track to a page you love, or a song with lyrics about some story in the Backrooms. If you choose this option, do *absolutely whatever* you want as long as you put good effort into it.

**How to contact me:**  
Wikidot PMs work, but I prefer discord. My discord is: superrobot14.

Last edited on 26 Nov 2024 03:26
by
 [Show more](javascript:;)

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[ROBOT BUT NOT REVIEWS THIS TIME](javascript:;) by , 26 Nov 2024 03:11

[Fold](javascript:;)

I am joining this too

26 Nov 2024 15:46

**For a gift that is written, I would like:**

- A tale about [The Infinite Wanderer](phenomenon-18.md) interacting with someone who really wants to be the next Infinite Wanderer (important note: it is impossible to know who can be the next IW). The only other specific here is that the person who wannts to be next experienced a great loss and wishes to be the next IW because they believe it will free them of human emotion (also not how it works). Other than this, I'm not concerned with any other specifics.
- A tale about the Infinite Wanderer meeting a lonely cat in the Backrooms. They talk to the cat a lot because they haven't talked to anyone in a while. You can decide where this goes from here. Maybe this is a happy convo with some underlying regret or maybe this is just a reflection on life so far or maybe they contemplate the fleeting nature of mortality. I don't mind, as long it relates to being in the Backrooms somehow (even just distantly) and also sounds like the rambling of someone who's been alone for too long. Also, the cat has to be active still, it can't be introduced in the beginning and then basically disappear. Has to have somewhat of a prescence thorughout.

This isn't in order of preference or anything, you're free to pick (if you choose something written).

**For a gift that is drawn, I would like:**

- Art of [Level 249](level-249.md). I'm not bothered about where or what specifics is included, it just has to be 249. Also, make sure to include the blue tint that the pictures have.

**How to reach out to me when the gift is ready (Discord/Wikidot):**  
I'm fine with Wikidot pms but I would prefer a message on Discord (liminaldoctor)

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[I am joining this too](javascript:;) by , 26 Nov 2024 15:46

[Fold](javascript:;)

I'm totally not a Grinch

26 Nov 2024 17:49

**For a gift that is written, I would like:**

1. A page that continues the story of [Entity 288](entity-288.md). DO NOT make it a silly comedic page like the previous article is, as the disappearance of this unnamed operative is very serious indeed. The objective of the page should be to figure out what the Duckrooms really are, as I still haven't got any good ideas.
2. A POI for the Terror Hotel Canon. Seriously, it really needs one. I don't care what the POI is, it just has to be related to the canon in some way. It is my fav canon if you didn't know.
3. Something relating to [Icarus Procidens](icarus-procidens.md), my favourite page that I have ever read on the wiki. However, I'm feeling evil today so the page **needs to be a phenomena** otherwise I won't be satisfied. >:)

**For a gift that is drawn, I would like:**

1. Art of both [Entity 76](entity-76.md) and [Entity 288](entity-288.md) in Christmas outfits. PLZ DO THIS THEY WILL LOOK SO CUTE
2. Some funny art piece that says "As I child I yearned for the rooms." as a reference to that Minecraft Movie Trailer but in Backrooms form lol.
3. My current profile picture but in [Level 74](level-74.md). Don't worry, I won't change it during the event.

**How to reach out to me when the gift is ready (Discord/Wikidot):**  
I'm fine with Wikidot PMs, but Discord is more reliable. (sooshi8112 is my discord username.)

Last edited on 30 Nov 2024 18:27
by
 [Show more](javascript:;)

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[I'm totally not a Grinch](javascript:;) by , 26 Nov 2024 17:49

[Fold](javascript:;)

uwu <3

26 Nov 2024 18:11

**written gift:** something related to [lady blanche](entity-140.md) or [the un!masked canon](un-masked-canon-hub.md) would be preferred, but a [level 78](level-78.md) thing would be cool, too!

**drawn gift:** [blanche (again)](entity-140.md), [ellis](art__aa-ellis-moorings-painting-1--5c2a824b.md), or [the go with honor lady](art__few-see-the-monsters-azure-depth--7341d3da.md) please :3

**contact**  
wikidot:   
discord: alt.archivist

---

**CharaDotArchivist**  
*The demon that comes when you call her name.*

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[uwu <3](javascript:;) by , 26 Nov 2024 18:11

[Fold](javascript:;)

Re: uwu <3

29 Nov 2024 02:45

The “go with honor lady”’s name is Diana Evelynn! :3

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: uwu <3](javascript:;) by , 29 Nov 2024 02:45

page 1 of 31[2](javascript:;)[3](javascript:;)[next »](javascript:;)

[Add a New Comment](javascript:;)

[Permanent Link](javascript:;)
[Edit](javascript:;)
[Delete](javascript:;)

---

Source: [https://backrooms-wiki.wikidot.com/secret-santa-2024](https://backrooms-wiki.wikidot.com/secret-santa-2024)
