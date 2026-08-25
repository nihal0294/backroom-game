---
title: "Under The Starry Sky - Hot Chocolate"
source: "https://backrooms-wiki.wikidot.com/dblb-coklat-panas"
retrieved_at: "2026-08-23T23:37:46+00:00"
license: CC-BY-SA-3.0
---

# Under The Starry Sky - Hot Chocolate

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

rating: +9[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  

Info

**Title:** Under The Starry Sky - Hot Chocolate  
**Author:**   
**Reviewer:**   
**Release:** 2025

Part of **Under The Starry Sky** Series

**Author's Note:**  
Only the truly brave who dare to leave their homes to explore the vast worlds beyond. Those who return bring back wondrous tales: lands as beautiful as paradise, mystical creatures, and even priceless treasures. It is no wonder so many are inspired to follow in the footsteps of these explorers, ultimately plunging into the life-threatening labyrinth of the Backrooms. Tragically, children are also among those inspired by such tales….

[Close](index.md)

{$title}Languages:

  
[![flag-saudi-arabia2x.png](https://cdn3.iconfinder.com/data/icons/142-mini-country-flags-16x16px/32/flag-saudi-arabia2x.png)](dblb-coklat-panas.md)  
[![china](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/china)](dblb-coklat-panas.md)  
[![flag-germany2x.png](https://cdn3.iconfinder.com/data/icons/142-mini-country-flags-16x16px/32/flag-germany2x.png)](dblb-coklat-panas.md)  
[![uk](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/uk)](dblb-coklat-panas.md)  
[![spain](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/spain)](dblb-coklat-panas.md)  
[![france](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/france)](dblb-coklat-panas.md)  
[![indonesia](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/indonesia)](dblb-coklat-panas.md)  
[![italy](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/italy)](dblb-coklat-panas.md)  
[![KO](http://backrooms-wiki.wikidot.com/local--files/component:translations/KO)](dblb-coklat-panas.md)  
[![poland](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/poland)](dblb-coklat-panas.md)  
[![portugal](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/portugal)](dblb-coklat-panas.md)  
[![russia](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/russia)](dblb-coklat-panas.md)  
[![thai](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/thai)](dblb-coklat-panas.md)  
[![toki](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/toki)](dblb-coklat-panas.md)  
[![vietnam](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/vietnam)](dblb-coklat-panas.md)

**II**

Hot Chocolate

— *Under The Starry Sky* —

   
![HaS550r.png](https://i.imgur.com/HaS550r.png)

Several hours passed before Astra finally stirred from her slumber. The first thing she reached for, even before fully shaking off the remnants of sleep, was the thick journal that never left her side. That book had become an extension of her very soul; her profound love for literature was the unique trait that distinguished her from the rest of her group.

She flipped through the pages, checking for details she might have missed during the earlier discussion. Feeling a sense of duty to finish what she had started before exhaustion took her, she slipped out of the room. Finding herself alone, she headed straight for the ground floor, where the hum of the bar’s patrons greeted her.

Scanning the room, she moved toward a familiar figure: Yuna. That Manstrian sat by the window, her gaze fixed on the endless rain drenching the restless crowds outside. Her tail flicked rhythmically, its silk-soft fur brushing against the floorboards.

Yuna glanced at Astra as she approached, a small smile playing on her lips, “Morning.”

Astra nodded softly and took the seat opposite her. Placing her journal on the weathered table, she joined Yuna in watching the world behind the glass. It was a monochromatic scene: a gray city trapped in an eternal downpour, filled with people who seemed to be going nowhere.

“Those archivists went out, and some are still sleeping. They’ll probably be back in a few hours,” Yuna added.

A twinge of sadness hit Astra. Her crimson eyes drifted toward the sky, seeking the quiet focus she needed. Yuna, too, turned back to the window.

“No matter how many times I see it, the sky in this world never gets old,” Yuna remarked. Despite her tendency to bore easily, the rain-soaked world seemed to hold her fascination.

It was hard not to be mesmerized. The sky here was a churning ocean of dark gray, where bright clouds formed from the spray of waves that had somehow defied gravity. It was no wonder the rain never stopped; an infinite ocean served as their firmament.

Astra traced a smiley face into the condensation on the window glass, a small pout manifested on her lips. The silence of the bar lobby was devoid of the familiar ruckus brought on by the remaining two members of their travel group. She suspected Yuna had been appointed to stay behind and watch over her, but she refused to dwell on it. A late start wouldn't be the thing to ruin her life's work. Opening her journal, she drew Yuna's attention as she started laying her pen to the yellowed paper. Astra took her role as an archivist with a solemnity that bordered on the sacred; her diligent eyes would be back on those pages at every possible opportunity.

“Diligent as ever, hm?” Yuna commented. Astra remained absorbed in her pages.

Knowing Astra had entered her 'focus mode', Yuna looked for a way to break the silence. She didn't want Astra to spend the entire day buried in ink. Remembering something, she spoke up.

“Oh, a kid came by earlier. Said he wanted to become an information archivist. I figured you’d enjoy talking to him. He’s at the usual archivists’ table. It’s empty this time of day, so why don't you go see him?”

That caught Astra’s attention. She loved interacting with fellow archivists, especially young, bright-eyed souls eager to map the vastness of the Backrooms. She promptly closed her book, tidied her stationery, and gave Yuna a polite bow before standing up.

Astra left, and Yuna followed shortly after, unwilling to let the young Manstrian wander alone. She knew Astra’s passion, introducing her to a novice was a calculated move to keep Astra from retreating too far into her own world.

A human boy sat at the table. Judging by his attire, he was a newcomer trying to make exploration his trade. Standard survival gear hung from his frame, and a rugged rucksack leaned against his chair.

But where was he headed? Most veteran explorers wore specialized gear suited for specific levels. This boy wore the generic 'standard' kit, a clear sign that he had yet to choose a destination. He looked like a greenhorn, his face lacking the hardened, rugged look of those who had survived the outside world. He hadn't yet been marked by the grimness that many carried after witnessing the horrors of the void.

The boy was focused, reading the public notes left on the round table. These records were open to everyone—the best place for a beginner to gather intel. While thieves occasionally made off with documents for profit, the residents of this building didn't take kindly to crime in their home.

A bar employee watched the boy from a distance, ensuring the archives stayed safe. And with two predatory entities now in the room, few would dare to cause trouble.

Astra approached the boy, clutching her book to her chest. She felt a wave of shyness; strangers were not her forte. Yuna stepped in, calling out to the boy. He turned, blinking at the two women standing behind him.

He seemed star-struck by their beauty, rendered speechless. Yuna, never one to miss a chance to tease, smirked. “Oh? Never seen pretty woman before?”

The boy flushed crimson, and Astra quickly nudged Yuna away. Yuna retreated to a nearby chair, satisfied. Her ears twitched with amusement as she watched the two youngsters interact.

Astra sat beside him. “Um, sorry about her. My name is Astra. I heard you want to be an archivist too?” She placed her book on the table, her awkwardness fading as the topic turned to her passion.

“My name’s Edwin,” the boy replied. “And yeah, I want to be an archivist. Nice to meet you, Astra.” They shook hands, the tension finally breaking.

Edwin stared at Astra’s book, marveling at its thickness. “You must have been doing this for a long time. That book looks like it has thousands of pages.”

“Only a few months, I guess. But this is my first book, so I suppose it is quite thick,” Astra clarified. She then asked, “Why an archivist? Why not just a regular explorer?”

It was a poignant question. Most survivors chose the safety of 'home' to live as long as possible. Few became explorers, and even fewer dedicated themselves solely to archiving information.

“Because my friends and I want to see the world!” Edwin answered enthusiastically. “We need an archivist to show us the way!”

Astra gave a neutral reaction. It was a cliché she had heard a hundred times. Edwin and his friends were likely natives—children born into this world who had never seen the worlds beyond. They were chasing the glory of veteran legends.

She turned to her book and lifted it with one hand. “I’ll share what I know. Take as much blank paper as you need and copy the vital information I give you.”

Seeing his innocence, Astra felt a senior's responsibility to guide them, to ensure they wouldn't meet a grizzly end.

“Wait, just like that? For free?” Edwin was stunned. “I thought you’d want something in return.”

“No. I don't sell information. I won't extort a fellow archivist, veteran or novice.” Astra’s expression hardened.

She had no respect for those who turned survival data into a business. In a world where info was life, those 'merchants' were a plague. Edwin thanked her profusely and opened his own thin notebook. Astra glanced at its few pages and smiled. It reminded her of her own early days as an archivist back then.

She handed it back and opened her own journal. With newfound confidence, she said, “I have a recommendation for a level suited for you and your friends. If you follow my guide, you shouldn't encounter any danger on the way.”

Astra deftly wrote a string of codes on a piece of paper. She had memorized her entire journal; her codes linked to specific pages, acting as a master key for anyone using her book. She recommended a stable, simple level, though the novices would have to navigate two transitional levels to reach it. She showed him the entries for the entities and objects they might encounter.

As Edwin worked, Astra offered a final piece of advice, “An archivist is the brain of the group. You are the key, the navigator. Your role is irreplaceable.”

She emphasized that he must memorize as much as possible. Because in the field, flipping through a book could cost lives.

“Archivists are respected, but they are the first to be blamed when reality doesn't match the reports. So, be wary of ‘Expectation and Reality.’ Lives are at stake,” she warned.

Watching from afar, Yuna felt a surge of pride. The shy, clumsy Astra had become quite the authoritative figure. Smirking, she ordered two hot chocolates from the barmaid. With a mischievous glint in her eyes, she told the server that their group leader would be footing the bill.

The drinks arrived. Astra glanced at Yuna, who was snacking on something spicy, and gave her a thumbs-up. Astra narrowed her eyes; these drinks are unnecessary, but she appreciated Yuna’s rare kindness toward a stranger. Edwin thanked Yuna, who waved him off. He commented on how nice Yuna was, though Astra knew Yuna only did things that suited her own whims.

Seeing the drinks, Astra gave Edwin one last warning: protect the book from liquids at all costs. She suggested wrapping it rather than just using a waterproof box, as the book would only grow in size over time. To her, the journal was the archivist’s soul.

Edwin, inspired, promised to repay Astra’s kindness.

"Then," Astra said, her words taking on a challenging spin, "if we ever meet again, show me something that I *don't* know."

“That sounds tough, considering you're a pro! But I’ll try!” Edwin chirped.

They finished their drinks and chatted about the road ahead, a new bond forming between these younglings. Yuna watched them with narrow eyes, her heart becoming heavy with a darker memory: most novices never returned. Astra’s warning about 'Expectation and Reality' rang true. The Backrooms never took kindly to anyone; death could find you even in the safest levels. Yuna sipped her drink, leveling Edwin with a cold, piercing gaze.

So many novices had met Astra, only to vanish forever. Astra, in her innocence, liked to believe they were still out there exploring. Yuna was certain they were dead or lost in an endless limbo. And yet, Yuna knew Astra was tougher than she looked. Perhaps she already knew the truth of the matter, but still chose to remain positive, hoping beyond hope to reunite with them someday.

“Well… I hope the two of you actually do meet again, somewhere, someday,” Yuna muttered, her eyes narrowing as she watched Edwin for one last time.

  
 

---

« [Previous Chapter](dblb-penginapan.md) | [Next Chapter](https://backrooms-wiki.wikidot.com/dblb-pertukaran) »

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Under The Starry Sky - Hot Chocolate](dblb-coklat-panas.md)" by lemme, from the [Wiki Backrooms Indonesia](index.md). Source: [http://id-backrooms-wiki.wikidot.com/dblb-coklat-panas](dblb-coklat-panas.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/dblb-coklat-panas">Under The Starry Sky - Hot Chocolate</a>" by lemme, from the <a href="http://id-backrooms-wiki.wikidot.com/">Wiki Backrooms Indonesia</a>. Source: <a href="http://id-backrooms-wiki.wikidot.com/dblb-coklat-panas">http://id-backrooms-wiki.wikidot.com/dblb-coklat-panas</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

---

Source: [https://backrooms-wiki.wikidot.com/dblb-coklat-panas](https://backrooms-wiki.wikidot.com/dblb-coklat-panas)
