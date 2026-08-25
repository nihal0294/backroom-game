---
title: "Entity 56 1"
source: "https://backrooms-wiki.wikidot.com/fragment:entity-56-1"
retrieved_at: "2026-08-23T23:39:37+00:00"
license: CC-BY-SA-3.0
---

# Entity 56 1

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

The fire crackled as corny holiday music played softly from the kitchen radio. Upstairs, Alex Bennete was tucking his son in for a warm night’s sleep. Downstairs, his husband Chip sat in an old wooden rocking chair, slowly sipping a now lukewarm beer, while his sister Lucy lounged on the couch, a glass of red wine in her hand. To the right of them, a Christmas tree shone, casting a soft, warm glow across the room.

“I’m so glad I got to make it this year! Did you know that asshole of a shift supervisor wanted me working Christmas?” Lucy laughed, taking a sip of her drink. “I told that little sociopath I’d feed him to the smilers if he made me step foot in that damned hospital during the holidays.”

“Not shocked, you’ve always had issues with him, haven’t you. Never put it past him to force you to work holidays.” Chip sighed, taking a swig of his beer.

“Exactly! Apparently, ‘I haven’t seen my nephew in half a year’ wasn’t a good enough excuse for him.”

“Why don’t you find a new job? The M.E.G always needs nurses down in Alpha. We’d actually get to see each other, too.”

“I mean, it’s a good idea on paper, but I hate the commute down to 1, I’d rather just stay in 11. Plus, Faust gets really antsy whenever we have to travel to different levels. Worried we’d end up in 822 again.”

“Eh, fair enough. How is he, by the way? Sad he couldn’t come for Christmas this year.”

“Oh, he’s fine! He’s just taking extra shifts down at the Capital office. We plan on trying for a baby in the new year, and he wants us to save since I’ll be on maternity leave… likely in September, October of next year.”

“Fair enough, I couldn’t do it personally. There’s always something going on down at Alpha, and I need a break. Still pissed they made me come in earlier today.”

“Oh, you mean for the 56 file? Well, they need your statement, you know that.”

“It could’ve waited until after Boxing Day.” Chip grumbled. “At least I got my thoughts on record.”

“Oh?” Lucy said, sitting up in her seat. “What do you mean?”

“I think the whole Christmas tree thing needs to go. 56 uses it to lure people in. The faster we dismantle the Christmas tree tradition, the faster people stop dying during Christmas.”

“Then why do you have one up? Isn’t that a little hypocritical?”

“It’s peer pressure. If we don’t put one up, Kai will get upset because all the other families are putting one up, and Santa won’t come if we don’t put one up. He’s only nine; he doesn’t understand this. So I just try to tell him to assume all Christmas trees are dangerous except ours.”

“Fair enough,” Lucy said, turning to face the Christmas tree, presents stacked high. “Fair enough.”

“I still can’t believe that damn thing almost got me.” Chip grumbled. “Stupid thing got right into my mind.”

“Yeah, that thing got me thinking back to that Christmas too… back when we were a family again.” Lucy paused, swallowing hard as her eyes filled with recollection. “I… miss Christmas of '98. But we gotta move on… I guess, nothing else we can really do."

“I… do too,” Chip said, shifting uncomfortably in his seat. “I really do, Mom, Dad, Grandma, and Grandpa.”

“Hey, remember that old stray we found near the park and kept in a shoebox for two months!?” Lucy laughed.

“Hah, Big Mac. He was sure one heck of a cat…” Chip said, trailing off.

“What’s wrong?” Lucy asked, concern in her voice. “Bad topic to bring up?”

“No, no. It’s not that.” Chip started. “I just… I really miss the old days, back on earth when our family was still alive, when things were simpler, when we weren’t trapped in this liminal hellscape.”

"I… know how you feel, trust me. But honestly, I’m… kind of glad everything happened the way it did. I wouldn’t have met Faust otherwise. I feel like we got closer, too, when we finally found each other back in 1. Plus, I got a pretty neat brother-in-law and an adorable nephew, too."

“H-How could you say that?” Chip hissed. “How could you pretend that you wouldn’t take back the olden days in a flash. To go back to ’98. To see Mom and Dad one last time. That’s an insult to their memories.”

“Because we can’t,” Lucy said. “We’re stuck with the hand we were dealt. Not wanting to go back isn’t an insult to their memories. It’s moving forward. Of course, I would like to see Mom and Dad again, but we can’t. We have to move on.” Lucy added. “Plus, if we went back, we’d lose everything we have, here and now.”

“But-”

“I know it’s hard. I know you miss them. But what other choice do we have? We can’t linger in the past forever.”

Chip stood silent, looking down at his can, swishing the foul-smelling contents around, his mind blank.

"I just wish I could go back. I'd do anything to go back, and I'm pissed at that tree for giving me a glimpse of when life was y'know… good."

All Lucy could do was sigh.

“Y’know I have a theory.” Lucy started. “The whole reason we’re talking about this is because of that damn Christmas tree, right?”

“What about it…?”

“I think that it takes so many people each year because it uses people stuck in the past. It uses people longing for a better time, people who can’t accept the present. That’s why you got pulled in. Hell, if I wasn’t so hyped up on adrenaline, I would’ve been pulled in too.”

“What’s your point?”

“My point is, the Backrooms feed off the Frontrooms. We see that with 11, constantly with human history, we see that with the liminal hellscapes that people keep discovering. I think these things originate from people being too stuck in the past to move forward and dying because they refuse to accept the present. People who live their lives looking back, never forward.” Lucy started. “The Backrooms feeds off of people, that’s how these things originated, I’m sure of it.”

“I… you aren’t exactly wrong. A lot of people believe both parts of reality are somehow connected.”

“Sure, we can end Christmas traditions, and that might be a decent idea to keep the kids safe. But it’s the adults who are at risk. People who can’t let go. As soon as you let go of the past, accept it, and move on with no desire to go back. They become powerless.”

“I know it preys on memory, dumbass.”

“Then why did you fall for it?”

Chip couldn’t answer that.

“I’m not saying the past isn’t important, or that we should forget it entirely. Just that we need to move on and live our lives to the fullest. Grief and regret will just tear you apart…” Lucy started. “…anddd get you killed by killer Christmas trees.” She laughed.

"I can't forget them. Mom, Dad, Grandma, Grandpa. If I forget them, then who am I?"

"I'm not saying to forget them. Not lingering in the past isn't forgetting the people or events in your past. It's not letting it control your actions in the present, it's to moving on and understanding that well you can't change the past, you can change the present and more importantly, your future."

Chip froze, his mind, his soul being torn at both ends.

At one end, was a desire to stay in the past, to go back. To give his mom a hug one more time, to catch a whiff of his dads whiskey.

At the other end, a desire to fix the present and future. Lucy was right, he couldn't go back. but accepting that didn't mean forgetting who he was, or what happened. Simply moving on.

A single tear rolled down Chip's cheek.

“I… guess you’re right. I never really thought about it that way. I always held on, wanted to go back, wanted to be in that moment one more time… but I neglected those around me in the present.”

“Exactly! You have a husband, a son, a nice house, a good job, and me. Look at what you have, what you built.” Lucy said, a smile forming on her face. “Everything happens for a reason.”

Chip wiped his tear from his cheek, replacing it with a smile.

The two stood in that moment, as the fire crackled between them. No words exchanged, just a look, and a shared feeling.

A feeling of hope, and a drive to move forward, no matter what.

…

Daddy, Papa! Auntie Lucy! Look what Santa brought me! 9-year-old Kai Bennete excitedly yelled, showing off a purring Blub Cat. “Oh, can we keep him pleaaaaaaase!” He begged.

“Well, if Santa brought him for you, then I see no issue with that. Do you, Chip?” Alex asked, elbowing his husband in the side.

Chip said nothing, just looking at his family. At the people in his present who meant everything to him. At the people who made his entire world, even in this liminal hellscape, and smiled.

[“Sure, buddy, Merry Christmas.”](https://backrooms-wiki.wikidot.com/entity-56/offset/2)

---

Source: [https://backrooms-wiki.wikidot.com/fragment:entity-56-1](https://backrooms-wiki.wikidot.com/fragment:entity-56-1)
