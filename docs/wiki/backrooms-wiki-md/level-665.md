---
title: "Level 665 - \"The Disconnected Road\""
source: "https://backrooms-wiki.wikidot.com/level-665"
retrieved_at: "2026-08-23T23:35:35+00:00"
license: CC-BY-SA-3.0
---

# Level 665 - "The Disconnected Road"

rating: +35[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  

# Content Warning

## THIS ARTICLE HAS SOME DISTURBING DESCRIPTIONS

## (Body mutilation)

#### Viewer discretion is advised

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

E

- Unsecure.
- Hostile Environment.
- Minimal Entity Count.

![Missing alt text.](http://backrooms-sandbox-2.wikidot.com/local--files/univ-wise-explorer-3/snowyroad)

A picture of the road in **Level 665**.

**Level 665** is an infinite level of the Backrooms, known for its various anomalies.

# **Description**

**Level 665** consists of a cold town with a never-ending road. The environment is known to be mostly urban, but as one traverses the road, a wanderer can find themselves in a more suburban setting. For the buildings, they all follow the same Swedish and modern architecture. The level has also been characterized to be heavily covered in snow despite it never snowing, likely due to the snow's never-melting nature. This keeps the level of snow stable, allowing for undisturbed travel. Despite being able to enter the level in groups, there have been no reports of different parties of wanderers meeting each other on this level. There is a day and night cycle, although the cycle only takes place if the wanderer moves long distances. If the wanderer stops anywhere, the day-night cycle stops. The direction does not affect this and countering it by retracing your steps is not possible. The temperature on **Level 665** also fluctuates between -15 and -20 degrees Celsius depending on if it is day or night. Due to all the homes appearing warm and the city environments to explore on this level, people are often very attracted to stray off the road to explore these regions. This is highly dangerous and should be avoided at all costs due to the phenomenon caused by Entity 665-A.[1](javascript:;)

![Missing alt text.](http://backrooms-sandbox-2.wikidot.com/local--files/univ-wise-explorer-3/snowyroad3)

A picture of the road in **Level 665** at nightime.

There are many anomalies but the most apparent is the anomalous nature of the sides of the road. It has been observed that a feeling of dread manifests depending on the wanderer's position on the road. The closer one is to the sidewalk or end of the road, the greater the intensity of this feeling. The feeling of dread starts to appear once a wanderer is around 1 meter away from the sidewalk, and many describe this dread as the feeling that they know they will die or that someone is watching them. At the very edge of the road, this can manifest physically, leading to effects such as heavy breathing and, in rare cases, panic attacks. This causes many to stay on the road, but there have been reports of many unsuspecting wanderers who fight through the feeling and make the unfortunate mistake of straying off the road. This is their end. The entity always gets them.

![Missing alt text.](http://backrooms-sandbox-2.wikidot.com/local--files/univ-wise-explorer-3/image.webp)

A picture of the entity retrieved from a camera found in the snow

#### **Entity 665-A**

Once the wanderer or groups of wanderers step off the road, Entity 665-A emerges from places such as through the window of houses, behind trees, or out of piles of snow. The entity demonstrates abnormal sprinting speed and strength, which it uses to mutilate its victims. Entity 665-A has been described as a black humanoid creature, standing 7 feet tall and bearing incredibly sharp, invisible nails. Even though the nails are invisible, people can infer the presence of something sharp based on the fingertips hovering over the chest, the smooth parting of skin, fat, muscle, and organs, and the clean cuts left after mutilation. Once the entity appears, the wanderer can remain still and the entity will only walk at a moderate pace, but at the slightest move, the entity sprints toward its victim. Fighting back seems to be ineffective due to the entity's overpowering strength and ravenous fighting style. It has also been observed that returning to the road after exiting does not protect you. Your fate is sealed. Once the wanderer has perished, the entity hovers its fingertips above the eyes. With those invisible sharp nails, it slowly reaches in and slashes the optic nerve, working from the outside in until it plucks up the eyeball and clenches it in its palm. Entity 665-A subsequently seeks a place out of sight and seems to disappear from existence, leaving the victim to rot in the snow. Mysteriously, the entity never leaves any tracks behind.

#### **The Collection of Eyes**

There is no concrete evidence that explains why Entity 665-A collects eyes at the end of its mutilations, but several theories have been published. The most prominent ones are The Duplication theory and The Eye Mountain Theory.

> ##### **The Duplication Theory**
>
> After professional interviews of survivors had been conducted by the M.E.G., a specific part of their accounts piqued the researchers' interest. Several survivors who had lost their friends or family to Entity 665-A recall seeing them walking on the other roads. They describe their dead ones as "lifeless husks of what they used to be". This led to the creation of The Duplication Theory, which states that Entity 665-A uses its victim's eyes to create copies of them, which then end up as the other people on the road. This would make the people on the road all the people Entity 665-A has mutilated. Despite all the different accounts of this, this may simply be a hallucination to cope with the tremendous loss of the grieving wanderer. The more interviews conducted, the more evidence of this theory seems to appear, making the explanation that it was a hallucination unlikely.

> ##### **The Eye Mountain Theory**
>
> The account of one wanderer in particular stood out from the rest. The wanderer is a man in his 30s who had traversed **Level 665** for a total of 126 days, according to the date of his disappearance from [Level 80](trimmed__level-80--f9b92695.md). This would make him the longest-surviving wanderer interviewed, yet his account remained relatively the same. This excludes one odd detail in his account. The wanderer explained he saw "a towering mountain of eyes in the distance", stretching higher than buildings around him and emerging from a pool of blood. The wanderer went on to explain that when he squinted his eyes and took a better look, he would notice black humanoids, throwing more eyes into the pile and "voraciously feasting on them". No other survivor gave a similar description, creating the possibility that this description is simply also a hallucination.

#### **The Isolation**

When entering very urban areas, wanderers describe noticing people, cars driving, lit-up houses, and other signs of life. These signs of life, however, are not reachable. The road of **Level 665** is vacant as if everyone avoids it completely. Auditory stimulation, such as shouting, is known to always be ineffective and any attempt to reach them physically is stopped by Entity 665-A. The other humans on this level are unfazed by projectiles like snowballs and firesalt too.

The isolation from the surroundings exposes the wanderer to dream-like feelings of separation and disconnect, which can develop into severe derealization. This is heavily negated if a wanderer enters with a group or another person, therefore it is important to stick together. Even with a group, a fear of the people is known to develop. Survivors have described the people as lifeless nonhuman beings of evil. Noticing the people on the other roads gives the same feeling of dread that develops as someone nears the edge of the road, therefore the wanderers rarely attempt to interact with them.

![Missing alt text.](http://backrooms-sandbox-2.wikidot.com/local--files/univ-wise-explorer-3/Darkness)

An image of **Level 665** during a Disappearance Period. This was the last photo found in the retrieved camera

#### **The Disappearance Periods**

It is highly advised that a wanderer stay alert of their surroundings when walking on **Level 665** due to a phenomenon known as The Disappearance Periods. A wanderer may notice people on the other roads displaying odd behavior. This may be a person on another road sitting on a bench and simply staring at the wanderer, or in rare instances, a person on the wanderer's road with their back turned away. When one notices this, they must flee in the opposite direction instantaneously because these anomalies are a sign of a Disappearance Period initiating. It is unknown what triggers this or if Entity 665-A has any involvement. As of yet, no pattern to the likelihood of these Disappearance Periods has been found either.

A person will know the Disappearance Period has started when the sky goes pitch black and the street lights start to flicker. Once this is observed, it is already too late, as the wanderer will disappear completely from existence. The Disappearance Period never takes more than one person, however, meaning that traveling in a group is a way to decrease the risk of disappearing. This along with sprinting away immediately after noticing an anomaly is the only known way to survive this phenomenon.

#### M.E.G. Interview Log

**Interviewer:** M.E.G. Operative Taron Jacobs[2](javascript:;)  
**Interviewee:** Kyle Colonknacker  
**Location:** Base Epsilon

---

**<Begin Log>**  
**Taron:** The date is the 21st of November, 2022 and this is an interview regarding the dangers and properties of the newly discovered **Level 665**. Our interviewee "Kyle Colonknacker", was retrieved from [Level 129](level-129.md) by the Track Mapper Operative Micheal Oneiro. The interviewee was found in extreme distress and malnutrition.

Kyle, please state your experience with **Level 665** and the disappearance of your siblings Dennis and Barbara Colonknacker.

**Kyle:** They are gone.

**Taron:** Please try to recall the moment of their disappearance and the events that led up to it. It is in our interest to document this and save many lives in the future.

**Kyle:** *The Shadow* mutilated him.

**Taron:** What?

**Kyle:** This demon. A black and putrid creature. The thing just had that presence, I noticed as soon as it surged onto my brother from behind this random tree. This random fucking tree that had been in our field of vision our entire time on **Level 665**. It was like it had been waiting for us there the entire time.

**Taron:** And then what?

**Kyle:** My brother.. he was mangled… his ████████████ ████████████ ███████ █████████ ███████ ██████████████ ███████ **(MESSAGE REDACTED - Breach of M.E.G. Publication Law 16: Violent Descriptions)**

**Taron:** Okay that's enough… was this how Barbara disappeared too?

**Kyle:** No. She was taken. She was consumed by the darkness when the lights flickered. She's in *[hell](level-666.md)* now.

**Taron:** What do you mean by "hell"?

**Kyle:** The *devil* lives on Level 665. Don't you understand?

**Taron:** What do you mean?

**Kyle:** You'll all meet *him* soon. Make sure to protect those pretty little eyes of yours.

(Note: At this point, the interviewee is displaying an unnaturally wide grin.)

**Taron:** Look man, I think we can both benefit from this if you take this more seriously an- w-wha- WHAT ARE YOU DOING?

(The interviewee is then seen removing the eyes out of the the interviewer's sockets while screaming in indecipherable language. Kyle Colonknacker (Entity 665-B) was neutralized shortly after.)  
**<End Log>**

# Entity 665-B

Since the incident with Kyle Colonknacker, other wanderers who survived **Level 665** have exhibited similar behavior in the 3-5 day period after their escape. This seems to only affect wanderers who had a relatively long experience in **Level 665**, usually over 100 days. The chance of this also seems to increase if the wanderer experiences any type of grief in their time on **Level 665**, however, the intensity of the phenomenon never changes. The victims of this are always distressed at first and smile unnaturally before they exhibit incredible hostility. The victims always seek out the eyes of anyone in their sight. The gauging of eyes is described as highly desperate and brutal with superhuman strength similar to Entity 665-A. It is unknown what this phenomenon is, but it is believed to be some supernatural infestation or possession since the wanderer is always seen giving cryptic messages and displaying an unnatural amount of glee before attacks. The victims of this are not considered human anymore and have therefore adopted the name Entity 665-B.

# Incident L-172-665B

---

On the 4th of March 2023, 6 bodies were found mutilated in a warehouse in [Level 172](trimmed__level-172--03ff7248.md) with their eyes forcibly removed. Supplies such as food, Almond Water, lights, and furniture were found scattered and damaged, indicating there had been a struggle. During the investigation of the scene by M.E.G. researchers, a survivor was found hiding in a crate, distressed and heavily malnourished. After some questioning, the wanderer claimed to be a witness of the situation and was therefore taken in for further questioning. The survivor was identified as John Westsmith.

  

---

**Interviewer:** M.E.G. Operative Taron Jacobs  
**Interviewee:** John Westsmith  
**Location:** Base Beta

---

**<Begin Log>**

**Taron:** The date is the 15th of March, 2023 and this interview is regarding the homicidal incident recently observed in [Level 172](trimmed__level-172--03ff7248.md), which is suspected to be linked to the phenomenon of Entity 665-B. Our interviewee, "John Westmith" was found near the scene in Level 172 and stated that he witnessed the incident.

Mr. Westsmith, please start from the beginning. What led up to this murder?

**John:** Uh… sir? Why are you wearing a bandaid around your eyes? Did he get you too?

**Taron:** That is irrelevant, can we please stay on the subject? This is very important to us.

**John:** Alright then. It all started about 2 weeks ago when we found this guy wandering the streets and looking like he'd just seen a Wretch or something. He was walking around like a horrified madman. My group was the type of people to find these things interesting, so we took him in. We were curious where he came from you know, what his story was.

**Taron:** And what did you find?

**John:** Well he talked about this snowy road level, and Gerald[3](javascript:;) seemed to know immediately it was 665. He looked kind of excited, he told me survivors from that place were pretty rare, and that he didn't even know Level 172 was connected to it.

**Taron:** Did the survivor tell you about his experience?

**John:** Yeah and gee, he had a rough time. He lost his best friend if I remember correctly. Horrible stuff, to be honest, the mood turned kind of gloomy after that. Even I who wasn't even present at the interviewing table, I really felt the bloke's pain as I eavesdropped on his sob story. Then he started saying some weird stuff though.

**Taron:** Weird stuff?

**John:** Mhm, he started talking about how beautiful Gerald's eyes were, and how he should take good care of them. He also mentioned something about how everyone's eyes would be his soon. When I heard this I kind of turned my head in disbelief and looked over at the table where Gerald and the boys looked as speechless as me. I immediately knew something was very wrong when I saw that unnatural smile of glee he had. The only time I could ever imagine smiling that hard would be if I was given a few blocks of [Royal Rations](object-16.md) or something.

**Taron:** This was when he attacked, didn't he?

(John Westsmith's color is observed draining from his face as he changes into a somber tone)

**John:** Yeah. I remember it as clear as day. He lunged at Gerald first, and the other guys tried to pry the *thing* off him, but they just couldn't. I remember how quickly the chaos ensued, I remember Gerald's scream as the nails of the thumbs punctured his cornea, and I remember my friend's horrified cries as they tried all they could to combat the *thing's* strength. I remember everything, and I don't think I will ever forget. I won't ever forget how I just stood there, frozen in fear as the thing overpowered my friends one after one, leaving each one with empty sockets once it finished. I just threw myself into a crate and hid like a coward, listening to the horror.

**Taron:** I see… When did it stop?

**John:** It didn't take long before the warehouse became deafeningly silent. The only thing I could hear was the thing's footsteps. It haunted me, but I still lifted the crate lid slightly so I could see. Apart from the bloody mess, I saw it. It stood there with a bag made from skin, and some balls inside that I assume were the eyes of my friends. It looked around once more before it left and through the window, it looked like it was going in the direction that we found him. Maybe back to that hellish level, it came from. That's it I suppose.

**<End Log>**

---

…  
  
As a lot of these incidents started being documented, the M.E.G. has suspended all planned excursions and operations into **Level 665** for the foreseeable future. **Level 665** is not safe.

Do **not** enter this level under any circumstances and if you see someone who claims to have escaped the level, **consider termination if needed**.

# **Entrances And Exits**

#### Entrances

- Burying oneself in the snow of level [Level 557](level-557.md) will transport the wanderer to **Level 665**.
- If a wanderer falls asleep on the road of [Level 80](trimmed__level-80--f9b92695.md) there is a chance they will wake up on **Level 665**.
- After a snowstorm settles in [Level 790](level-790.md), there is a chance one will find themselves on **Level 665**.
- If it starts snowing on one of the streets in [Level 172](trimmed__level-172--03ff7248.md), the wanderer is being transported to **Level 665**.
- Noclipping through the snow on [Level 52](level-52.md) will bring the wanderer to **Level 665**.

#### Exits

- Walking for long enough on **Level 665** may cause one to find themselves on [Level 129](level-129.md).
- If you notice snow starting to disappear on **Level 665**, the wanderer will soon find themselves on [Level 172](trimmed__level-172--03ff7248.md).

These are the only known exits for now.

  

rating: +35[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

Footnotes

[1](javascript:;). The only entity on **Level 665** (See below).

[2](javascript:;). The lead researcher of **Level 665**.

[3](javascript:;). One of the victims in Incident L-172-665B.

---

[An author?](javascript:;)

[Hide authors](javascript:;)

~

Credits to these awesome people for their critique and help!  
~   
~   
~   
~   
~   
~

Interview block quote code taken from 's [Level 14](level-14.md).  
Image blockquote background code taken from 's [Level 535](https://backrooms-wiki.wikidot.com/level-535).  
Translucent blockquote code taken from 's [Level 511](level-511.md).

« [Level 664](https://backrooms-wiki.wikidot.com/level-664) | Level 665 | [Level 666](level-666.md) »

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Level 665 - "The Disconnected Road"](level-665.md)" by Univ - Wise Explorer, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/level-665](level-665.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/level-665">Level 665 - "The Disconnected Road"</a>" by Univ - Wise Explorer, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/level-665">https://backrooms-wiki.wikidot.com/level-665</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** Winter  
> **Author:** [Blondinrikard Fröberg](https://www.flickr.com/photos/blondinrikard/)  
> **License:** CC BY 2.0  
> **Source Link:** <https://www.flickr.com/photos/blondinrikard/24394137721/in/photostream/>

> **Name:** Came a little snow  
> **Author:** [Blondinrikard Fröberg](https://www.flickr.com/photos/blondinrikard/)  
> **License:** CC BY 2.0  
> **Source Link:** <https://www.flickr.com/photos/blondinrikard/24200194360/in/photostream/>

> **Name:** snow at home - in 2000  
> **Author:** [Andy / Andrew Fogg](https://www.flickr.com/photos/ndrwfgg/)  
> **License:** CC BY 2.0  
> **Source Link:** <https://www.flickr.com/photos/69024001@N00/82103132>  
> **Additional Notes:** Edited by and

> **Name:** Man Walking Confident  
> **Author:** [Mohamed\_hassan](https://pixabay.com/users/mohamed_hassan-5229782/)  
> **License:** CC0 1.0  
> **Source Link:** <https://pixabay.com/vectors/man-walking-confident-silhouette-2759950/>  
> **Additional Notes:** Edited by and

> **Name:** Winter's morning  
> **Author:** [Blondinrikard Fröberg](https://www.flickr.com/photos/blondinrikard/)  
> **License:** CC BY 2.0  
> **Source Link:** <https://www.flickr.com/photos/blondinrikard/23848477323/in/photostream/>

> **Name:** Level172\_1\_day.jpg  
> **Author:**   
> **License:** CC BY-SA 3.0  
> **Source Link:** <http://backrooms-wiki.wikidot.com/local--files/level-172/Level172_1_day.jpg>

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/level-665](https://backrooms-wiki.wikidot.com/level-665)
