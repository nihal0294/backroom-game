---
title: "Under The Starry Sky - Lodge"
source: "https://backrooms-wiki.wikidot.com/dblb-penginapan"
retrieved_at: "2026-08-23T23:38:53+00:00"
license: CC-BY-SA-3.0
---

# Under The Starry Sky - Lodge

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

rating: +7[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  

Info

**Title:** Under The Starry Sky - Lodge  
**Author:**   
**Reviewer:**   
**Release:** 2025

Part of **Under The Starry Sky** Series

**Author's Note:**  
The spread of information mostly happen like this: oral-written based, ineffective, and still need to prove the truth. So, in a world where technology has significantly regressed and the boundary between reality and myth has blurred, the Backrooms have become a breeding ground for legendary tales reminiscent of medieval folklore. Many are lured into the lethal labyrinth by stories of 'Dream-Peddlers' who promise paradisiacal lands and hidden treasures. To combat this tide of misinformation, the duty of verification falls upon an elite few known as The Verifiers—like people on this chapter. They report, they cross-referencing, and they prove the truth, althought they'll probably gain nothing in return.

[Close](index.md)

{$title}Languages:

  
[![flag-saudi-arabia2x.png](https://cdn3.iconfinder.com/data/icons/142-mini-country-flags-16x16px/32/flag-saudi-arabia2x.png)](dblb-penginapan.md)  
[![china](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/china)](dblb-penginapan.md)  
[![flag-germany2x.png](https://cdn3.iconfinder.com/data/icons/142-mini-country-flags-16x16px/32/flag-germany2x.png)](dblb-penginapan.md)  
[![uk](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/uk)](dblb-penginapan.md)  
[![spain](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/spain)](dblb-penginapan.md)  
[![france](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/france)](dblb-penginapan.md)  
[![indonesia](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/indonesia)](dblb-penginapan.md)  
[![italy](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/italy)](dblb-penginapan.md)  
[![KO](http://backrooms-wiki.wikidot.com/local--files/component:translations/KO)](dblb-penginapan.md)  
[![poland](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/poland)](dblb-penginapan.md)  
[![portugal](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/portugal)](dblb-penginapan.md)  
[![russia](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/russia)](dblb-penginapan.md)  
[![thai](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/thai)](dblb-penginapan.md)  
[![toki](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/toki)](dblb-penginapan.md)  
[![vietnam](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/vietnam)](dblb-penginapan.md)

**I**

Lodge

— *Under The Starry Sky* —

   
![HaS550r.png](http://backrooms-wiki.wikidot.com/local--files/dblb-penginapan/HaS550r.png)

  

A group of Manstrians entered a building, their faces etched with exhaustion after a grueling journey. They set down their oversized rucksacks beside a sofa, and in one synchronized motion, collapsed onto the plush cushions as the furniture groaned and creaked beneath their weight.

Rows of raincoats, boots, hats, and damp umbrellas belonging to other guests were neatly arranged along the wall behind them. The faint patter of rain from outside drifted in, mingling with the bustling hum of people moving through the storm. The arrival of travelers from distant lands, like these Manstrians, was a common occurrence here. This sanctuary had become a routine stop for them—a brief respite in their never-ending pilgrimage.

Amidst their fatigue, a staff member approached, offering a towel to each of them.

"Thank you," said a young, horned woman who appeared to be the group's leader, "We'll be in your hair for a day or three."

"Can I get the usual room for you, then?" asked the staff.

"Yes, the cheapest one," the leader replied.

The staff noted down the details and headed off in preparation for a room to the weary travelers. Meanwhile, the leader leaned back into the sofa, scanning the surroundings and filling her lungs with the unique, familiar scent of the place.

The building was a bar nestled in a corner of the city, crafted entirely from well-varnished brown wood. Its architecture and decor gave off a distinct, classical charm. Despite its aged appearance, the presence of running water and electricity made it a favored lodging for many travelers.

The residents and workers here understood the constant influx of people; they worked tirelessly to maintain a waypoint that welcomed everyone, regardless of origin. They had modified parts of the structure and even added a new floor to accommodate more guests. Wasn't their dedication to those who were bone-tired something to be truly admired?

This place was one of many favorite stops for people of diverse backgrounds. Such gathering spots were vital for social beings—not just for interaction, but as crucial hubs for the flow of information.

When the clock struck twelve and the staff's call echoed down the stairs, the leader stretched her sore arms and turned to her gathering. The group followed her up the stairs. At the end of the hall, their small, simple room awaited. They stowed their gear in the corners and on bedside tables. The room was remarkably soundproof, drowning out the rain entirely, though a lingering chill still bit at their skin—a perfect environment for sleep.

Simple beds with single pillows, low-hanging bulbs, and vintage furniture defined the space. Creaking floorboards, plain concrete walls without windows, stacks of frayed cloth, and dusty lanterns—to some, the room might feel like a 'trapped in the past' memory from a dream. But for these four Manstrians, it was just a valuable, affordable room.

Outside the room was a row of similar chambers, and a turn down a narrow hallway led to a small communal bathroom. Fortunately, there was a steady stream of warm water, allowing the these Manstrians to take turns thawing their chilled bodies. One of them collapsed onto a soft mattress immediately after bathing.

“Ah, she’s out already.”

“That’s because you pushed her too hard earlier.”

The two friends shared a brief exchange over their dreaming comrade, slumbering obliviously in her bed. Taking care not to make a single creak with the door, they tiptoed back downstairs to where people were gathered, each busy with their own affairs.

“Erm, I want to go over there,” one member said, pointing toward a table crowded with people.

The leader allowed her youngest member to go, with another following as a guardian. She herself headed to the kitchen for a fill of food and warm drinks, occasionally glancing back at her companions while chatting with the staff.

At a round table cluttered with stacks of paper, office supplies, and unwashed cutlery, a group of haggard-looking people sat in a circle. A large canvas tent roof hung low over their heads, thick with dust that suggested it hadn't been cleaned in ages.

Under the dim, hanging light, these weary souls were deep in conversation. Their gaze immediately shifted as two Manstrians approached.

“Oh, look who finally showed up! Lil' Astra and Lil' Yuna!” a scruffy old man chirped, quickly pulling out two empty chairs. “Tell me, how was the trip?”

Astra sat down and placed a thick notebook on the table, while Yuna took the seat behind her, wearing her trademark cynical expression.

“Our journey went well,” answers Astra quickly with her still-tired looking face.

“Course it did! This old man knows the best routes! You’ll never find trouble if you follow my lead!” his guide swept imaginary dust off his shoulder and poured himself a glass of coffee. You'd be hard-pressed to find someone with more confidence in their abilities even if you scoured the entirety of the Backrooms. Astra laughed, thanking him for the safe passage, and the man nodded in sincere pride.

“So, tell us your story,” the old man urged. The others leaned in, eyes wide and eager. Their reputations and experiences preceded them here, among these ears that lived for recollections.

Astra nodded and opened her thick journal—stuffed with notes, sketches, and samples of whatever she could get her hands on. Laboriously, she flipped her volume to the latest edition, showing several charcoal renditions of a flat landscape with endless ocean as far as the eye can see. She held up her work for all to see, and announced that they had found something new.

Her words sharpened the attention of everyone at the table with just a single sentence, proving that this topic is what they love the most.

“We found a location we’ve never seen, though you might have heard of it. We stumbled upon it after taking a wrong turn on the recommended route,” Astra explained.

Yuna’s animalistic ears twitched.

“It was boooooring, nothing special ugh,” she interjected, speaking for the first time after being quiet since she joining this talk.

The old man shook his head light-heartedly at her, and leaned forward in his chair toward Astra. "Ah, a new location? Mind elaborating? This old man can't place a guess without a clue or two, girl."

A few voices behind him *mhmed* in agreement, a few fingers tapping the tails of their cutlery against greasy plates. Shifts of paper and parchment echoed through the crowd, pens already at the ready.

At the sight of their enthusiasm, Astra quit stalling, and began her tale. “We were heading toward the [Contrast Radiance](https://backrooms-wiki.wikidot.com/level-28-id). We were moving through the bush following the path—specifically near a wall corner painted with a tropical beach scene—when one of us accidentally took a wrong turn and slammed into a concrete wall.”

“Is your friend okay?” a listener asked. Astra nodded. Another asked, “And then what happened?”

Astra continued, explaining that the four of them had accidentally stumbled forward and emerged from the bush. They were shocked to find that the sky and atmosphere of the Contrast Radiance had vanished, replaced by something entirely alien to them.

Hearing this, the group began checking their notes on the transitional paths within the Contrast Radiance. Others frantically scribbled down Astra’s words. This could be a new noclip point or the rediscovery of long-lost information.

Yuna stood up and pulled out a pocketbook to supplement Astra’s data from the depth of her silky tail. “Just an addition: the flora and soil shifted before we even realized it. The usually dark soil of Contrast Radiance turned white, and the dark bushy plants became broad-leaved and green.”

The listeners began discussing the report, trying to recall similar tales or rumors. They became lost in the thrill of a new level discovery.

Astra described the level’s appearance: a blue sky void of celestial bodies, a vast ocean with gentle waves, tall and slender branchless trees, white sands atop colorful concrete floors, and empty buildings and vehicles. It was a place of absolute stillness. There was nothing but themselves, the sound of the surf, a cool breeze, and vacant structures. These Manstrians had taken advantage of the peace to lounge on the empty beach; Astra had even managed a nap without interruption.

Yuna was the only one who found no enjoyment in the activity, simply because there was nothing much to do. She complained of not finding fish or anything else of interest in the blue water, nor could she hide her scowl as the others dove into a game of beach ball without her.

This was a quintessential moment for these people: those who knew would share, and those who didn't would listen and record. These simple souls lived for stories like this.

“Unfortunately, we don’t have fancy things like communal Wi-Fi, isn't it?” the old man remarked. The others nodded.

Wi-Fi was a godsend for syncing information across the Backrooms, but it was rare, and the signals were notoriously unstable.

“You don't need expensive gadgets just to ask a question, do you?” Yuna challenged.

The old man laughed softly. He agreed; people had long grown accustomed to life without connectivity. Whatever information they gathered, they would process and cross-reference manually with their own knowledge. The people in this small bar were the same. They relied on journals, memories, and discussion to decipher the mysterious location found by these Manstrians. Fortunately, Astra and Yuna always had answers to their questions.

This was standard procedure for survivors in this wicked realm: listening and collecting info from various sources was their daily bread. No one knew if a discovery was truly new or just an old place being found again, but they were always there, waiting for the news to arrive.

Astra’s listeners tried to link her description to existing rumors. Information flowed constantly among them, but it was often fragmented or contradictory. Oral tradition wasn't efficient, but it was practical. That’s why these 'syncing sessions' were so common.

However, the longer they talked, the more exhausted Astra became. The toll of the long journey finally caught up to her, and she began to doze off in her chair. Yuna eventually put an arm around the sleepy Astra to lead her back to their room. Though Yuna was known for being uncooperative, when it came to Astra, she was fiercely responsible.

The old man told Yuna he would head to the reported location to check it out and report back. Yuna didn't care; she found the place utterly dull.

“Whatever, old man. It’s a long trek, and the emptiness won’t satisfy you after all that effort,” Yuna commented. The old man just smiled. She was right—there were many places full of nothingness that weren't worth the energy.

But he didn't mind. “I know, but for me, it’s the experience that matters. We don’t know what you found, so we want to experience it for ourselves, even if it sounds useless.”

Yuna sighed, offering a small, rare smile as he prepared to leave.

“I don’t want to hear any bad news from you later,” she said. The old man was delighted; Yuna actually cared.

Yuna, naturally, simply scowled in return and left with Astra in her arms without a second look. After tucking her in, she climbed into the bed beside her. She detach her tail, laid still and stared straight at the ceiling, trying to induce sleep, though she was soon accosted by the snoring of the Manstrian who had fallen asleep much earlier.

There are so many things out there waiting to be found—whether time will reveal them or fate will guide the way. These Manstrians were just one of many groups wandering to find worlds never heard of before. And wherever they go, there will always be a group of people waiting to hear the story of their journey.

  
 

---

[Next Chapter](dblb-coklat-panas.md) »

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Under The Starry Sky - Lodge](dblb-penginapan.md)" by lemme, from the [Wiki Backrooms Indonesia](index.md). Source: [http://id-backrooms-wiki.wikidot.com/dblb-penginapan](dblb-penginapan.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/dblb-penginapan">Under The Starry Sky - Lodge</a>" by lemme, from the <a href="http://id-backrooms-wiki.wikidot.com/">Wiki Backrooms Indonesia</a>. Source: <a href="http://id-backrooms-wiki.wikidot.com/dblb-penginapan">http://id-backrooms-wiki.wikidot.com/dblb-penginapan</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

---

Source: [https://backrooms-wiki.wikidot.com/dblb-penginapan](https://backrooms-wiki.wikidot.com/dblb-penginapan)
