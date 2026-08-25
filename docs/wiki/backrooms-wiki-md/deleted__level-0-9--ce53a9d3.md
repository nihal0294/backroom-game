---
title: "Level 0.9 - \"Oblivion\""
source: "https://backrooms-wiki.wikidot.com/deleted:level-0-9"
retrieved_at: "2026-08-23T23:35:37+00:00"
license: CC-BY-SA-3.0
---

# Level 0.9 - "Oblivion"

---

[+ Show component code](javascript:;)

[- Hide component code](javascript:;)

```
:root {
        --sidebar-width-on-desktop: calc(var(--base-font-size) * (266 / 15));
        --body-width-on-desktop: 45.75rem;
    }
    @media only screen and (min-width: 56.25rem) {
        #content-wrap {
            display: flex;
            position: initial;
            flex-direction: row;
            flex-grow: 2;
            width: calc(100vw - (100vw - 100%));
            max-width: inherit;
            height: auto;
            min-height: calc(100vh - var(--final-header-height-on-desktop, 10.125rem));
            margin: 0 var(--sidebar-width-on-desktop, 13.6rem) 0 calc(var(--sidebar-width-on-desktop, 13.6rem) * -1 / 2);
        }
 
        #main-content {
            position: initial;
            width: var(--body-width-on-desktop, 45.75rem);
            max-width: var(--body-width-on-desktop, 45.75rem);
            max-height: 100%;
            margin: 0 auto;
            padding: 2rem 1rem;
        }
 
        #page-content {
            max-width: min(90vw, var(--body-width-on-desktop, 45.75rem));
        }
 
        #side-bar {
            position: -webkit-sticky;
            position: sticky;
            top: 0;
            left: 0;
            grid-area: side-bar;
            width: var(--sidebar-width-on-desktop, 13.6rem) !important;
            min-width: var(--sidebar-width-on-desktop, 13.6rem) !important;
            max-height: 100vh;
            padding-right: 2.5rem;
            padding-left: 0.5rem;
            overflow-y: scroll;
            transition:
                translate 300ms cubic-bezier(0.4, 0.0, 0.2, 1),
                background-color 300ms cubic-bezier(0.4, 0.0, 0.2, 1),
                padding 300ms linear,
                margin 300ms linear;
            border: none;
            border-color: rgba(var(--swatch-tertiary-color, 170, 170, 170), 0.4);
            background-color: rgba(var(--sidebar-bg-color, 255, 255, 255), 0);
            translate: calc(var(--sidebar-width-on-desktop, 13.5rem) * -1 - 1rem);
            direction: rtl;
            scrollbar-width: thin;
            -ms-scroll-chaining: none;
                overscroll-behavior: contain;
            scrollbar-color: 
                rgba(var(--swatch-primary-darker), 0.1) /* Thumb */
                rgba(var(--swatch-tertiary-color), 0.05); /* Track */
        }
 
        #side-bar::-webkit-scrollbar-track {
            background-color: rgba(var(--swatch-secondary-color, 244, 244, 244), 0.8);
        }
 
        #side-bar::-webkit-scrollbar,
        #side-bar::-webkit-scrollbar-thumb,
        #side-bar::-webkit-scrollbar-corner {
            width: 0.5rem;
            border-right-width: calc(100vw + 100vh);
            border-right-style: inset;
            border-color: inherit;
            background-color: rgba(var(--sidebar-bg-color, 255, 255, 255), 0);
        }
 
        #side-bar:is(:hover, :active, :focus-within) {
            margin-right: 2.25rem;
            padding-right: 0.25rem;
            overflow-x: hidden;
            overflow-y: auto;
            border-color: rgba(var(--swatch-primary-darker), 1);
            background-color: rgba(var(--sidebar-bg-color, 255, 255, 255), 1);
            translate: calc(var(--sidebar-width-on-desktop, 1rem) - var(--sidebar-width-on-desktop, 0));
            scrollbar-color: 
                rgba(170, 170, 170, 1)  /* Thumb */
                rgba(252, 252, 252, 1); /* Track */
            scrollbar-color: 
                rgb(var(--swatch-primary-darker, 170, 170, 170), 1) /* Thumb */
                rgb(var(--swatch-menubg-color, 252, 252, 252), 1);  /* Track */
        }
 
        #main-content::after {
            content: " ";
            display: flex;
            position: fixed;
            top: 0;
            left: 1rem;
            align-items: center;
            justify-content: center;
            width: 1rem;
            height: 100%;
            max-height: 100%;
            transition:
                left 300ms cubic-bezier(0.4, 0.0, 0.2, 1),
                background-position 300ms cubic-bezier(0.4, 0.0, 0.2, 1),
                opacity 300ms cubic-bezier(0.4, 0.0, 0.2, 1);
            background: url("https://scp-wiki.wdfiles.com/local--files/component%3Acollapsible-sidebar/sidebar-tab.svg");
            background-attachment: fixed;
            background-repeat: no-repeat;
            background-position: center left 1rem;
            background-size: 1rem 12.875rem;
            pointer-events: none;
        }
 
        #side-bar:is(:hover, :active, :focus-within) + #main-content::after {
            left: calc(var(--sidebar-width-on-desktop, 14.5rem) * -1);
            width: 0rem;
            transition:
                left 300ms cubic-bezier(0.4, 0.0, 0.2, 1),
                background-position 300ms cubic-bezier(0.4, 0.0, 0.2, 1),
                opacity 300ms cubic-bezier(0.4, 0.0, 0.2, 1);
            opacity: 0;
            background-position: center left calc(var(--sidebar-width-on-desktop, 14.5rem) * -1);
            font-size: 0em;
        }
 
        #main-content::before {
            content: " ";
            position: absolute;
            z-index: 9;
            top: var(--final-header-height-on-desktop, 0);
            left: 0;
            width: var(--sidebar-width-on-desktop, 14.5rem);
            height: calc(100% - var(--final-header-height-on-desktop, 0.688rem) - 2.313rem);
            margin-bottom: calc(var(--final-header-height-on-desktop, -2.313rem) * -1 - 2.313rem);
            transition:
                translate 300ms cubic-bezier(0.4, 0.0, 0.2, 1),
                opacity 300ms cubic-bezier(0.4, 0.0, 0.2, 1);
            opacity: 0.5;
            background-color: rgb(var(--swatch-alternate-color, 0, 0, 0));
            pointer-events: none;
            translate: calc(var(--sidebar-width-on-desktop, 14.5rem) * -1 + 1rem);
        }
 
        #side-bar:is(:hover, :active, :focus-within) + #main-content::before {
            translate: 0;
            opacity: 0;
        }
 
        #side-bar .side-block {
            margin-top: 1em;
            padding-left: 0.25em;
            border-right-width: 0rem;
            border-left-width: 0rem;
            border-radius: 0;
            background-color: rgb(0, 0, 0, 0);
            direction: ltr;
        }
 
        #side-bar .scpnet-interwiki-wrapper {
            direction: ltr;
        }
 
        /* Print Friendly Formatting by Estrella */
        body.print-body { 
            --sidebar-width-on-desktop: 0; 
        } 
        body.print-body #main-content::before,
        body.print-body #main-content::after { 
            display: none; 
        }
    }
```

rating: +26[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  

Info

**SPECIAL THANKS TO:**

Splendid Egg  
MrSell  
Narwhal!  
Moose 🫎  
Samedo07  
Coral  
Cytrus  
Thales  
GreatGramacho

**WRITTEN BY:**

(M3ssi)

**CLEARED BY**

Skull-Doggery

[Close](index.md)

You're alone when the ground disappears from under you.  
   
The landing is hard and silent, wrong in a way you don't have time to name before you're back on your feet.  
   
Gray pillars everywhere you look. No smell, no carpet, nothing to hold onto except how much it resembles somewhere you've already been.  
   
You don't call out. You already know nobody will answer.

  
 

SURVIVAL DIFFICULTY:

unknown

- {$one}.
- {$two}.
- Undocumented Phenomena.

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
:root {
    --logo-image: none;
 
    --white-monochrome: var(--accent-one);
    --pale-gray-monochrome: var(--accent-two);
    --light-gray-monochrome: var(--accent-one);
    --gray-monochrome: var(--accent-one);
    --dark-gray-monochrome: var(--accent-middle);
    --black-monochrome: var(--accent-one);
    --medium-accent: var(--accent-two);
    --pale-accent: var(--accent-middle);
    --bright-accent: var(--accent-middle);
    --dark-accent: var(--accent-middle);
    --alt-accent: var(--accent-middle);
 
   /*SWATCH EDITS*/
   --swatch-text-light: var(--accent-one);
 
   --swatch-text-secondary-color: var(--accent-one);
 
   --swatch-topmenu-bg-color: var(--accent-two); /*GRADIENT*/
   --swatch-topmenu-border-color: var(--accent-one);
 
   --swatch-menutxt-light-color: var(--accent-two);
   --swatch-menutxt-dark-color: var(--accent-two);
   --swatch-menutxt-general-color: var(--accent-one);
 
    --swatch-menubg-color: var(--accent-two);
 
   --quote-shadow: none;
   --header-text-shadow: none;
 
    --rating-module-bg-color: var(--accent-one);
 
   /* THEME VARIABLES */
   --accent-one: var(--black);
   --accent-two: var(--white);
   --accent-middle: var(--gray);
 
   --white: 255, 255, 255;
   --black: 0, 0, 0;
   --gray: 125, 125, 125;
}
 
.lightblock, .styled-quote {
  background: rgb(var(--accent-two));
  color: rgb(var(--accent-one));
}
 
.darkblock, .dark-styled-quote {
  background: rgb(var(--accent-one));
  color: rgb(var(--accent-two));
}
 
.frameblock {
  color: rgb(var(--accent-one));
  background: rgb(var(--accent-two));
  padding: 0.01rem 1rem;
  margin: 0.5rem 0;
  border: solid 5px rgb(var(--accent-one));
}
 
div.scp-image-block div.scp-image-caption {
   background-color: rgb(var(--accent-two));
   border: 2px solid rgb(var(--accent-one));
}
 
#top-bar {
   --swatch-text-secondary-color: var(--accent-one);
}
 
#page-content table.wiki-content-table {
   --tables-header-bg: var(--accent-one);
   --tables-header-txt: var(--accent-two);
}
 
.footnotes-footer {
   --footnotes-footer-text-color: var(--accent-two);
}
 
div.wiki-note {
   --note-color: var(--accent-middle);
}
 
.code, .page-source {
   background-color: rgb(var(--accent-two));
   color: rgb(var(--accent-one));
}
 
#who-rated-page-area > div > span[style*="color"] {
   color: rgb(var(--accent-middle)) !important;
}
 
html, body {
    scrollbar-color: rgb(var(--pale-gray-monochrome))rgb(var(--black-monochrome));
}
```

[- Close](javascript:;)

![A colorless room with pillars and a few lights.](http://backrooms-sandbox-2.wikidot.com/local--files/messinhoarg/Oblivion)

The only photo of the level recorded so far, taken by a wanderer.

# **Description**

Level 0.9 is a sublevel of [Level 0](level-0.md) consisting of rooms with pillars and structures virtually identical to those of its parent level, but with some notable structural differences—the main one being the absence of the moldy carpet, which in this level appears to have been replaced by a smooth, unidentified material. This level seems to have almost no smell, as if it were nonexistent, and the sounds appear to follow the same pattern, becoming so muffled and inaudible that they barely register at all.  
   
Of the few wanderers who escaped and managed to provide accounts of the level, all described having no encounters with other wanderers or entities; therefore, it is believed that the same isolation effect found in its original level applies here, though this remains unconfirmed.  
   
This level also appears to feature a color palette consisting exclusively of gray, black, and white—an effect that seems to extend to the individuals and the objects present within it. Although linked to [Level 0](level-0.md) and classified as a sublevel thereof, it is theorized to be located much "deeper" within the Backrooms; this hypothesis stems from theories suggesting that, beyond a certain depth on the Backrooms "map," colors cease to exist, thereby causing this effect. However, since the "path" connecting the two would presumably be extremely long, this remains a matter of speculation.  
   
Although rare, writings of various kinds, such as scratches, pencil marks, and other forms of writing, can be found on the walls of the level in several languages ​​and in letters that do not follow a single pattern; however, this does not seem to be something naturally produced by the level.  
   
It is believed that objects, furniture, or structures can be found loose or embedded in the walls on this level; however, the M.E.G. has not yet been able to confirm this fact.  
   
Little else is known about this level. What happens, if anything, to those who remain within it for extended periods is currently unconfirmed, as existing reports are inconsistent and unreliable at best. The M.E.G. intends to conduct further investigation into the matter.

# **M.E.G. Document (Only Authorized Persons Allowed)**

**WARNING: This document is being used for an investigation regarding this level; please do not attempt to access it if you do not have the necessary credentials.**

  
 

[>Input Credentials](javascript:;)

[Access granted](javascript:;)

**M.E.G. Scan ##044711**

---

**Registration date:** 10/03/2025

---

**Description:** Digital scanning of field notebook pages.  
**Scan Quality:** Moderate  
**Recovery Location:** [CENSORED]  
**Item Origin:** Presumed accidental noclip.  
**Purpose:** Study on the previously unknown level.  
**Additional Notes:** Sarah Harper's diary was found a few weeks after her mission and her disappearance on Level 0. Her companions, Andrés de Soto and Claire Bellamy, are also missing after the same missions. The information contained in this diary has not yet been publicly released due to the M.E.G. lack of knowledge regarding the truth of the facts presented in the diary.

---

**Entry 1**  
   
I'm writing this down because it's what we're trained to do — stay calm, report everything, try to find a way out. My head is pounding. I must have fallen from somewhere really high, and judging by how I landed, that's probably exactly what happened. Everything around me looks almost identical to the pillar rooms from the level I was in before, except everything is gray. I've honestly never heard of a place like this, but I'll have to manage. My radio died in the fall, and there's nothing particularly useful left in my bag. Something doesn't feel right. It's the absence of color… and the smell, or rather the lack of one. I'll explore further and see if I can make sense of this place.  
   
Just to set the record straight, I'm writing this on September 14, 2025.  
   
**Entry 2**  
   
I was exploring when I accidentally dropped my bottle. The echo carried much farther than I expected, so I shouted "Hello!" just to see what would happen. The only answer was my own voice repeating back at me until it finally faded away. Honestly, it was agonizing, but what came after was even worse. It somehow felt louder than the echo itself. I definitely won't be doing that again.  
Claire gave me this bottle before the mission — some dumb joke about keeping me hydrated so I wouldn't complain the whole time. Dropping it made me think about her, and about Andrés too. Maybe they had ended up somewhere in here too? Probably not. Andrés was too careful to ever slip up like that. He used to tell us about his father's bookstore and how he'd spend entire afternoons reading there. Claire would've laughed at me for overthinking all of this. Maybe that's exactly what I'm doing. Either way, standing still won't help. Time to keep moving.  
   
**Entry 3**  
   
The rooms haven't changed much, but every now and then I find something that doesn't belong. A chair fused halfway into a wall, a table with only three legs, a coat rack embedded in a pillar, things like that. Most rooms are completely normal, which somehow makes the others feel worse. I checked a few of them to make sure I wasn't just seeing things differently because of the lack of color, but they were definitely there. I don't know what to make of it yet, so I'm marking the locations and moving on.  
   
**Entry 4**  
   
I found what looked like a library. Empty shelves, scattered books, signs, and a few pieces of furniture, although some of them were partially embedded in the walls like the things I've been finding elsewhere. I picked up one of the books and tried to read the title, but I couldn't make sense of it. I knew the words were supposed to mean something, I just couldn't remember what. I opened it anyway. Most of the pages were blank, and the few that weren't had sentences with words missing from them. I left after a few minutes. Maybe I'm on the right track to finding a way out of here.  
The strange part is that I'm writing this now, and I can barely remember what the library looked like.  
   
**Entry 5**  
   
I haven't found anything since the library. I've been walking for what feels like hours, but every room looks the same, and I'm starting to get paranoid. I've forgotten where I put my flashlight twice now, even though it was in my hand a few minutes earlier. I also caught myself walking in the wrong direction and couldn't remember why I'd chosen it in the first place. Small things. Stupid things. Normally I'd laugh them off, but I'm starting to notice them too often.  
This isn't going to sound very professional, but I don't really care anymore. I'm tired, I'm scared, and I miss home. I miss my [home](the-frontrooms.md). I miss my mother. I miss going to the zoo with her and my friends, walking around for hours and stopping at every enclosure even when we'd already seen the animals before. I remember how happy those days made me. For a moment, thinking about it actually made this place feel a little less horrible.  
I think I needed that.  
   
**Entry 6**  
   
I've been trying to think about the zoo again. It helped yesterday, so I thought maybe I could use it to keep myself calm. I remember the entrance, I think. There was a big sign, and something painted on it… I can't remember what. I remember my mother being there, and my friends, but when I try to picture their faces, they keep becoming harder to hold onto.  
I can still remember the animals, though. Mostly. A rhino, some monkeys, birds… I think there was an elephant somewhere too. It's strange. I know these things were there, but the more I try to remember them, the less certain I become. Maybe I'm just exhausted.  
   
I am trying to continue searching for an exit. If the library really was a clue, there has to be something else.  
   
**Entry 7**  
   
It's getting worse. I'm forgetting things that shouldn't be difficult to remember anymore. Sometimes I have to stop and think just to remember my parents' names. I know them, I know I do, but for a few seconds it feels like I'm trying to recall the name of a stranger. My hands have also started shaking on their own, and my legs feel weaker than they did before. I don't know how much of that is exhaustion anymore.  
   
I've started finding those strange objects again. It's happening more often now. The last time I found things like this, I eventually came across the library. Maybe this means something else is coming. Maybe there's a way out hidden somewhere beyond it.  
   
I have to find it soon. I don't know how much time I have left, but I don't think it's much.  
   
Tomorrow, I'll find an exit. One way or another.  
   
**Entry 8**  
   
I found it. A different room, much larger than the others, but still with the same gray layout. There were fake trees, fake structures, and what looked like cages with animal statues inside. As I explored the place, I found someone, or something, and approached it.  
At the back of the room, I saw someone with their arm stuck inside the wall. I could see my uniform. My hair. My face… or what was supposed to be a representation of it, but it had become distorted and deformed. It looked like me, but lifeless, missing all the details that made me who I was.  
   
**Entry 9**  
   
Funny how things come around. The place I loved most in my whole life, the one I kept repeating like an idiot just so I wouldn't forget it, is now the last thing I'm going to see before all of this ends. I don't know how I'm supposed to feel about that anymore. I think I'm starting to lose some movements. No… not lose them. Forget them. It's a strange feeling, like my body is waiting for something my mind doesn't remember how to do anymore. And I think it's just a matter of time before I forget all the rest too.  
   
**Entry 10**  
   
[PAGE SEVERELY DAMAGED — SCAN NOT PERFORMED]  
   
**Entry 11**  
   
**(Malformed letters, almost illegible.)**  
   
my legs  
   
I can't feel  
   
legs won't  
   
please

  
 

# **Entrances And Exits**

#### Entrances

Currently, the only known way to enter this level is by falling into a pitfall within [Level 0](level-0.md). However, this is highly discouraged, given the danger associated with such an action.

#### Exits

No confirmed method of leaving Level 0.9 is currently known. Of the very few wanderers who escaped and were in any condition to give an account, most report remembering almost nothing about the process. What little they do recall is consistently the same: a thick, dense fog appearing suddenly out of nowhere, shortly before they lost consciousness or otherwise found themselves outside the level. Nothing beyond this has been reliably described.

---

**SYSTEM NOTICE**  
1 corrupted file found: **[andr.dsto.meginterview.eml]**  
Attempt recovery?

[> YES](javascript:;)

[Recovery in progress... Access Granted](javascript:;)

# **M.E.G. Interview #201317**

---

**Prologue:** A man named Andrés entered the M.E.G. base claiming to be an employee and saying he had been on another level, the location of which was unknown to him. However, no one on the team recognized him, which possibly angered him, and he vandalized the office, destroying several desks and computers, and finally assaulted another employee, who is now okay.

---

**Interviewer:** Ágata Flores  
**Interviewee:** Andrés de Soto

---

**Ágata:** Okay, let's begin, today is the seventeenth day of September, two thousand and twenty-five. We're conducting this interview because Mr. Andrés insists he's an employee of M.E.G., but he doesn't have credentials and isn't registered in the system.  
   
**Andrés:** But I am!  
   
**Ágata:** Furthermore, due to the aggressive behavior he displayed when contacting our group, he is being detained and will be taken to a pretrial detention center.  
   
**Andrés:** Can I say my part now?  
   
**Ágata:** You have every right to remain silent, but if you wish to say something, the word is all yours.  
   
**Andrés:** Yes… I know. Can I start now?  
   
**Ágata:** Please.  
   
**Andrés:** When I got here… I ran to tell the people at M.E.G. everything that happened and I said that I was an employee… after all, I am! But they said I wasn't registered and–  
   
**Ágata:** Wait, where were you?  
   
**Andrés:** I don't know, it was like level 0 but in shades of gray, there was something else too but… I can't remember…  
   
**Ágata:** Is there any way you can prove that?  
   
**Andrés:** Yes! I… I can't…  
   
**Ágata:** I understand, I really don't think I can do much for you, but if you want to try and prove something, now's the time…  
   
**Andrés:** So… can I ask you something?  
   
**Ágata:** Go ahead…  
   
**Andrés:** My colleagues, Sarah Harper and Claire Bellamy, they'll remember me… they work here… could you look up their files and call them?  
   
**Ágata:** Really?  
   
**Andrés:** Yes, please.  
   
**(Ágata tries to research their respective files.)**  
   
**Ágata:** Honestly, those two women have never set foot here, Andrés, I know we're technically arresting you, but are you sure you really don't want psychiatric assistance?  
   
**Andrés:** No… nobody will believe that.  
   
**Ágata:** So please give your final statement before we take you to pre-trial detention and conclude the interview. Of course, only if you want to.  
   
**Andrés:** My name is Andrés de Soto, I have… well, that doesn't matter, what I want to say is that after all this… after all the trauma, I can only say one last thing… I managed to escape an emptiness, but… leaving there I found something even emptier… how do you think it feels when your own colleagues don't even remember you?…  
   
**(Andrés start to get restless.)**  
   
**Andrés:** Even your boss… who used to go with you and your friends drinking in some dark corner at the end of the workday… isn't that right, Ágata?! Your boss who has a 4-year-old son?! Named George and whose father ran away because…!  
   
**Ágata:** SHUT UP! How could you fucking know that?! …What the hell is wrong with you?! I-I'm ending the interview…  
   
**(Andrés tries to get up and run away, but the guards use a taser to knock him out.)**  
   
**Ágata (Breathing heavily, feeling unwell):** Oh… w-what the hell happened here?… I n-need some time…  
   
**(Ágata gets up and turns off the recorder.)**

---

**Epilogue:** Andrés was arrested and taken to a makeshift cell on [Level 4](level-4.md), where the M.E.G. is still deciding what to do with him. The case, overall, remains open.

---

**P.S. (Agent Flores):** I keep thinking about what he said. Probably shouldn't, I know how that sounds, but it hasn't left me alone since. What if it were true? What if I've already forgotten someone, a relative, a friend, someone who used to matter to me, and I just don't know it because there's nothing left to miss? You can't feel the shape of something that isn't there anymore.  
It's not like we've really forgotten about them, right?  
I'm probably just tired. Reading too much into a man having a bad day. I'll likely delete this before it goes in the file anyway.

---

  
   
 

[+ Don't forget](javascript:;)

[- Don't forget](javascript:;)

**Written by**   
(M3ssi on Discord))

---

« [Level 0.7](level-0-7.md) | Level 0.9 | [Level 1](level-1.md) »

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Level 0.9 - "Oblivion"](deleted__level-0-9--ce53a9d3.md)" by Messinho\_10, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/deleted:level-0-9](deleted__level-0-9--ce53a9d3.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/deleted:level-0-9">Level 0.9 - "Oblivion"</a>" by Messinho\_10, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/deleted:level-0-9">https://backrooms-wiki.wikidot.com/deleted:level-0-9</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** Level 0.9 - "Oblivion"  
> **Author:** Messinho\_10  
> **License:** CC-BY-SA-3.0  
> **Source Link:** <http://backrooms-sandbox-2.wikidot.com/local--files/messinhoarg/Oblivion>  
> **Derivative of:** <https://discord.com/channels/695664941247627274/714030848525205555/1518957690154651668> by Rufens under CC-BY-SA-3.0

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/deleted:level-0-9](https://backrooms-wiki.wikidot.com/deleted:level-0-9)
