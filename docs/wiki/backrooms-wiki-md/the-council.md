---
title: "The Council"
source: "https://backrooms-wiki.wikidot.com/the-council"
retrieved_at: "2026-08-23T23:40:17+00:00"
license: CC-BY-SA-3.0
---

# The Council

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
:root {
    /*=== S-CSS-P ===*/
    --theme-base: "black-highlighter";
    --theme-id: "nuterminal";
    --theme-name: "NuTerminal Theme";
 
    /*=== Colors ===*/
 
    --swatch-background: var(--black-monochrome);
    --swatch-primary: var(--light-gray-monochrome);
    --swatch-primary-darker: var(--dark-gray-monochrome);
    --swatch-primary-darkest: var(--dark-gray-monochrome);
    --swatch-border-color: var(--white-monochrome);
 
    --swatch-text-dark: var(--black-monochrome);
    --swatch-text-light: var(--white-monochrome);
    --swatch-text-general: var(--swatch-text-light);
    --swatch-important-text: var(--pale-accent);
 
    --swatch-menubg-color: var(--dark-gray-monochrome);
    --swatch-menubg-light-color: var(--light-gray-monochrome);
    --swatch-menubg-medium-color: var(--gray-monochrome);
    --swatch-menubg-medium-dark-color: var(--gray-monochrome);
    --swatch-menubg-dark-color: var(--dark-gray-monochrome);
    --swatch-menubg-black-color: var(--black-monochrome);
    --swatch-menubg-hover-color: var(--gray-monochrome);
 
    --swatch-menutxt-dark-color: var(--black-monochrome);
    --swatch-menutxt-light-color: var(--white-monochrome);
    --swatch-menutxt-general-color: var(--swatch-menutxt-light-color);
    --sideblock-heading-text-color: var(--swatch-menutxt-general-color);
 
    --swatch-secondary-color: var(--gray-monochrome);
    --swatch-tertiary-color: var(--pale-gray-monochrome);
    --swatch-alternate-color: var(--gray-monochrome);
 
    --swatch-text-secondary-color: var(--white-monochrome);
    --swatch-text-tertiary-color: var(--white-monochrome);
} 
 
#page-content .licensebox .collapsible-block-link {
  color: rgb(255, 255, 255);
}
```

[- Close](javascript:;)

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
@import url('https://fonts.googleapis.com/css2?family=Enriqueta:wght@400;500;600;700&amp;family=Oldenburg&amp;family=Vast+Shadow&amp;display=swap');
@import url('https://fonts.googleapis.com/css2?family=Bricolage+Grotesque:opsz,wght@12..96,800&amp;display=swap');
@import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;amp;amp;display=swap');
 
/* 
╔══════════════════════════════════════════════════╗
║  MORGANA COUNCIL THEME -- 2024 CANONICON UPDATE  ║
║ ------------------------------------------------ ║
║  ORIGINAL BY ETOISLE, with edits by YOYOFLUX     ║
║  2024 UPDATE VERSION BY SCUTOID + BUBBLINGBEACH  ║
║ ------------------------------------------------ ║
║  CSS for use with the Black Highlighter Theme    ║
║  from the SCP Wiki, by Woedenaz and              ║
║  Croquembouche. Import or [[include]] the theme  ║
║  before this code to create the full theme.      ║
╚══════════════════════════════════════════════════╣
 │        Black Highlighter is available at:       ║
→│https://scpwiki.com/theme:black-highlighter-theme║
 └─────────────────────────────────────────────────╜
*/
 
:root {
     --logo-image: url("http://scutoidbox.wikidot.com/local--files/theme:morgana-council/the_morgan.png");
     --header-title: "The Morgana Council";
     --header-subtitle: "est. 1984";
     --header-shine-gradient: linear-gradient(to right, transparent 0, rgba(255,210,71) 5%, rgba(250,185,92,1) 16%, rgba(255,255,255,1) 17%, rgba(255,255,255,1) 33%, rgba(250,185,92,1) 42%, rgba(220,103,91,1) 65%, rgba(220,103,91,1) 76%, rgba(255,160,234,1) 93%, transparent 100%); 
      --header-height-on-mobile: 10rem;
    /* Fonts */
    --title-font: 'Enriqueta', sans-serif;
    --header-font: 'Enriqueta', sans-serif;
    --UI-font: 'Poppins', sans-serif;
    /* --body-font: 'Poppins', sans-serif; */
 
    /* Colors */
     --white-monochrome: 209, 198, 190; /* changed */
     --pale-gray-monochrome: 229, 205, 223; /* changed */
     --light-pale-gray-monochrome: 229, 205, 223; /* changed */
     --very-light-gray-monochrome: 196, 135, 181; /* changed */
     --light-gray-monochrome: 140, 69, 131; /* changed */
     --gray-monochrome: 56, 28, 84; /* changed */
     --dark-gray-monochrome: 29, 16, 61; /* changed */
     --black-monochrome: 7, 4, 24; /* changed */
     --pale-accent: 186, 87, 219; /* changed */
     --bright-accent: 228, 162, 43; /* changed */
     --medium-accent: 200, 99, 28; /* changed */
     --dark-accent: 196, 72, 17; /* changed */
     --alt-accent: 221, 102, 17;
 
     --visited-link-color: 131, 87, 219;
 
     --swatch-prinary-darkest: var(--swatch-primary);
 
     --swatch-tertiary-color: var(--light-gray-monochrome);
 
     --footer-message: "Is your risk worth taking?";
 
     --wallpaper-mask: url(data:image/svg+xml,%3C%3Fxml%20version%3D%221.0%22%20encoding%3D%22windows-1252%22%20standalone%3D%22no%22%3F%3E%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20xml%3Aspace%3D%22preserve%22%20width%3D%22106.667%22%20height%3D%22154.667%22%3E%3Cpath%20d%3D%22M72.547%201158.57H5.074V-6.465h67.473V1158.57M119.027%20710.25v-58.977l126.95%20154.438L363.43%20654.77v61.476L246.477%20865.688%20119.027%20710.25%22%20style%3D%22fill%3A%23333%3Bfill-opacity%3A1%3Bfill-rule%3Anonzero%3Bstroke%3Anone%22%20transform%3D%22matrix%28.13305%200%200%20-.13255%20-.633%20153.92%29%22%2F%3E%3Cpath%20d%3D%22M119.027%20951.652V790.715l125.45%20153.441L363.43%20792.715v166.933L247.477%201108.09l-128.45-156.438M763.27%201158.57h-63.473l63.473-80.97ZM472.387%201158.57h-67.473V-6.465h67.473V1158.57M518.867%20995.133v-58.977L645.816%201090.6%20763.27%20939.656v61.474l-116.954%20149.44-127.449-155.437M763.27%20657.27%20647.316%20805.711%20518.867%20649.273V488.336l125.449%20153.441L763.27%20490.336V657.27M518.867%201158.57v-82.97l67.973%2082.97z%22%20style%3D%22fill%3A%23333%3Bfill-opacity%3A1%3Bfill-rule%3Anonzero%3Bstroke%3Anone%22%20transform%3D%22matrix%28.13305%200%200%20-.13255%20-.633%20153.92%29%22%2F%3E%3Cpath%20d%3D%22M763.27%20413.867%20646.316%20563.309%20518.867%20407.867v-58.972l126.949%20154.437L763.27%20352.391v61.476M363.43%20128.98%20246.477%20278.422l-127.45-155.438V64.008l126.95%20154.437L363.43%2067.504v61.476%22%20style%3D%22fill%3A%23333%3Bfill-opacity%3A1%3Bfill-rule%3Anonzero%3Bstroke%3Anone%22%20transform%3D%22matrix%28.13305%200%200%20-.13255%20-.633%20153.92%29%22%2F%3E%3Cpath%20d%3D%22M363.43%20205.449v166.934L247.477%20520.824l-128.45-156.437V203.449l125.45%20153.442L363.43%20205.449M518.867%2071.504V-6.465h67.973l57.476%2070.473%2055.481-70.473h63.473V79.5L647.316%20227.941%20518.867%2071.504%22%20style%3D%22fill%3A%23333%3Bfill-opacity%3A1%3Bfill-rule%3Anonzero%3Bstroke%3Anone%22%20transform%3D%22matrix%28.13305%200%200%20-.13255%20-.633%20153.92%29%22%2F%3E%3C%2Fsvg%3E);
     --wallpaper-mask-size: 2.3rem;
 
     /* ui buttons */
     --ui-button-bg: var(--bright-accent);
     --ui-button-txt: var(--black-monochrome);
     --ui-button-hover-bg: var(--medium-accent);
     --ui-button-hover-outline: var(--dark-accent);
 
     /* sidebar buttons */
     --toggle-button-bg: rgb(var(--bright-accent));
     --toggle-border-color: rgb(var(--medium-accent));
     --toggle-border-width: 0.15rem;
     --toggle-icon-color: rgb(var(--black-monochrome));
}
}
 
/* Header */
#container-wrap #header::before {
    background-size: auto 8rem;
    opacity: 0.3;
    mask-image: linear-gradient(to bottom, black, rgba(0, 0, 0, 0.5));
    -webkit-mask-image: linear-gradient(to bottom, black, rgba(0, 0, 0, 0.5));
}
 
/* Header Wallpaper */
#skrollr-body {
    height: var(--header-height-on-desktop);
    width: 100vw;
    background: linear-gradient(to bottom, rgb(var(--light-gray-monochrome)), transparent), linear-gradient(to bottom, rgb(var(--black-monochrome), 0.7), transparent);
}
 
/* Rounded Corners */
body { 
  background: rgb(var(--swatch-topmenu-bg-color))
}
 
#content-wrap {
  background: rgb(var(--swatch-background));
  border-radius: 0.5rem 0.5rem 0 0;
  box-shadow: 0 0.5rem 0 rgb(var(--light-gray-monochrome)) inset, 0 0.6rem 5px rgb(var(--white-monochrome), 0.8) inset, 0 0.9rem 0 rgb(var(--medium-accent)) inset;
}
 
/* Border */
 
#header::before {
     background-size: auto 9rem;
}
 
#header {
    width: calc(100vw - 2rem);
    max-width: unset;
    --login-dropdown-bg-image: linear-gradient(to bottom, rgb(var(--light-gray-monochrome)), rgb(var(--gray-monochrome)));
}
 
#header #top-bar {
    max-width: unset;
    width: 100%;
 
    --topmenu-category-color: var(--swatch-text-secondary-color), 0.8;
    --topmenu-hover-border-color: var(--bright-accent);
 
    --mobile-topmenu-sidebar-button-color: var(--bright-accent);
 
    --dropdown-border-color: var(--bright-accent), 0.2;
}
 
.top-bar { 
    margin: 0 auto; 
}
 
#header div.mobile-top-bar {
    width: 100vw;
    max-width: unset;
    margin-right: -2rem;
}
 
@media only screen and (max-width: 56.25rem) {
    #header { 
        width: 100vw;
    }
}
 
#main-content {
  background-image: linear-gradient(to bottom, rgb(var(--light-gray-monochrome)) 5rem, transparent 100%);
  margin-top: 0.5rem;
  background-size: 0.5rem 100vh;
  background-repeat: no-repeat;
  padding: 2rem 2rem;
  /* ui icons */
  --ui-icon-color: var(--bright-accent);
  --ui-icon-bg: var(--medium-accent);
  --ui-icon-hover-bg: var(--dark-accent);
  /* tabs content */
  --tabs-content-border-color: var(--swatch-tertiary-color), 0.3
  /* toc */
    --toc-body-bg-color: var(--swatch-background);
    --toc-directory-lines-color: var(--swatch-tertiary-color);
  /* tags */
    --pagetags-title-bg: var(--swatch-primary);
    --pagetags-text-color: var(--swatch-primary);
    --pagetags-text-hover-color: var(--swatch-background);
    --pagetags-text-hover-bg-color: var(--bright-accent);
}
 
#header::after {
    content: "";
    width: 100%;
    height: 0.4rem;
    position: absolute;
    left: 0;
    top: calc(100% + 0.5rem);
    display: block;
    background-image: var(--header-shine-gradient);
    background-size: 95% 0.4rem;
    background-repeat: no-repeat;
    background-position: center;
    mask-image: linear-gradient(to bottom, black, rgba(0, 0, 0, 0.3));
    transform: skew(-15deg, 0);
}
 
/* Title */
 
#page-title, .meta-title {
  margin-left: -1.5rem;
  width: fit-content;
  background: rgb(var(--light-gray-monochrome));
  padding: 1rem 2rem;
  color: rgb(var(--swatch-background));
  border-radius: 0 0.5rem 0.5rem 0;
  margin-bottom: 0.25;
  position: relative;
}
 
#page-title::after, .meta-title::after {
  display: none;
}
 
#page-title::before, .meta-title::before {
  content: "";
  display: block;
  background: linear-gradient(to bottom, rgb(var(--light-gray-monochrome)) 70%, transparent 100%);
  width: 0.5rem;
  height: calc(100% + 10rem);
  position: absolute;
  top: -2rem;
  right: 100%;
  mask-image: linear-gradient(to bottom, transparent, black 2rem)
}
 
.borderblock {
  color: rgb(var(--white-monochrome));
  background: rgb(var(--dark-gray-monochrome));
  border: 2px solid rgb(var(--bright-accent));
  padding: 0.01rem 1rem;
  margin: 0.5rem 0;
}
 
.dark-borderblock {
  color: rgb(var(--white-monochrome));
  background: rgb(var(--black-monochrome));
  border: 2px solid rgb(var(--bright-accent));
  padding: 0.01rem 1rem;
  margin: 0.5rem 0;
}
 
.meta-title {
  margin-left: -2.5rem; /* changed because it's in the #page-content which has padding */
}
 
/* Content */
#page-content { 
   background: rgb(var(--gray-monochrome), 0.3);
   border-radius: 0.5rem;
   padding: 0.5rem 1rem;
   margin-top: 0.5rem;
}
 
/* Footer */
#footer {
    --footer-bg-color: var(--swatch-primary-darkest), 0.7;
    --footer-text-color: var(--swatch-text-secondary-color), 0.8;
    --footer-link-hover-color: var(--swatch-background);
    --footer-link-hover-bg-color: var(--bright-accent);
}
 
/* Lincense Area */
#license-area {
    --license-bg-color: var(--swatch-primary-darkest);
    --license-link-hover-color: var(--swatch-text-secondary-color);
    --license-link-hover-bg-color: var(--swatch-primary);
}
```

[- Close](javascript:;)

rating: +12[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  

# The Council

---

---

![Periwinkle%20Sands](http://backrooms-sandbox.wdfiles.com/local--files/periwinkle-sands/Periwinkle%20Sands)  

*Art done by the beautiful .*

---

---

##### The Council

Right away, this is a big clarification that **not everything here is 100% The Council!** Everything here is *meant* to be based off The Council, but ultimately, it serves as a base for the canon.

This canon all revolves around explaining the existence, story, and motives of The Council. It revolves around Level 777 as a whole, however, there is more to it than just that. The entirety of the story here isn't directly tied to them, they simply have to have a presence in this canon. The Council members live in a facade, a world where they can gamble to their heart's content, and live on their lives, only looking forward.

But no one can truly ignore the past.

Some key points to note about this canon:

- The Council has the primary goal of gambling, and they all have a reason to.
- Shady stuff isn't just there, it is *expected* to occur. They have to do things in the dark to protect themselves and their love.
- Every Council Member was once a human, and the canon Council member in this canon is Proposal 2: A Simple Gamble Girl.[1](javascript:;)[2](javascript:;)
- Every Council Member was once from The Frontrooms, and have a connection to someone there.
- The Council Timeline is split into "eras", a different president leads at different times.
- To become a member of The Council, you must be approved by a majority of The Council. There can only be 7 Council members at a time.
- Level 777 wasn't always the way it was. In the past, Level 777 was deserted, and it was not until The Council came in and intervened majorly.

That's more then enough to get you started, but as always, there is some recommended reading.

##### Recommended Reading

[Level 777](level-777.md) - Though not in the canon, it is the setting of the canon itself and is highly advised you read it.

At the time of writing, no tales, stories, etc. have been done for the origins, however, it serves as a base for the canon, so it is entirely necessary

##### Council Origins:

*1984*

Currently, the origin isn't complete, but there still is much to be known. The original president of the council was The Mangler, and worked with Saoirse Morgana to form the Level into what it is today. Throughout The Council, the election process was formed, and members were chosen. At the end of the election, The Mangler was determined not only to be weaker than Saoirse Morgana, but weaker then the whole Council. By a majority vote, The Mangler was kicked, and was replaced with Stretch Zimals.

  

*1996*

The Mangler went on to do his own thing on Level 98, eventually forming the first entrance available to those who are not reality benders. From there, the origins end, and the first era begins.

##### The Council Stories

*Presented in a roughly chronological order, though they may overlap in time. This is the recommended reading order for the wider narrative.*

##### Origins (1980-1996, Year 1-16)

##### Gift 1: The Bible *by [Yellowislol](yellowislol.md)*

1. [Genesis](genesis.md)
2. [A Second Book](a-second-book.md)

---

##### Gift 2: The Founding *by [The Canonicon2024 Team](canonicon2024.md)*

1. [koko.init](kokoinit.md)

##### Saoirse Morgana (1996-??, Year 1-*placeholder*)

1. [The Forgotten Forest](the-forgotten-forest.md) - *by [Yellowislol](yellowislol.md)*
2. [butterfly-flight](trimmed__butterfly-flight--96abe6cb.md) - *by [Yellowislol](yellowislol.md)*
3. [Level 628](level-628.md) - *by [Yellowislol](yellowislol.md)*

##### Split Timelines

##### Honorable Mentions

[Level 777](level-777.md) - *by [Yellowislol](yellowislol.md)*  
This is the base of the canon, but it goes against the canon itself in many ways. It is the base, but not in the canon,

- [*About!*](javascript:;)
- [*Contributing*](javascript:;)
- [*Format*](javascript:;)
- [*Glossary*](javascript:;)
- [*Offsite Shenanigans*](javascript:;)

Welcome to The Council canon! This is an in-depth guide on contributions and worldbuilding within this series. If you aren't a contributor or are wishing to contribute to this canon, than you can ignore this tabview in its entirety! However, some pieces (such as the glossary) may be helpful for terminology used throughout the series. Of course, you made read through this tabview *anyways* if you wish to learn more information about the canon and its world.

The biggest piece to remember about this canon is that it isn't just an extension to gambling and such. This canon is meant to embody the seven characters within it or the characters involved in the storyline. Point being, your work under this canon should A) involve a character which impacts others in the series, B) happen within Level 777, or C) involve the main council in some form. Of course, this is in no way required, and exceptions are allowed, but try to fit the theme.

Beyond that, there is more to remember in specifics, but that is always a good start.

Should you wish to contribute further than this, feel free to take a look at the other tabs!

Curent Contributors:

- - *Author of [Level 263](level-263.md)*
- - *Author of [Level 777](level-777.md) and founder of this canon*

Have a question about contributing after reading this guide? Want to pitch your idea to us to see if it fits in well? Ask one of us! The best contact would be

*(psst. Wanna be added to this list above? Simply make 2 entries to the canon and PM me and I'll add you. Please include what entry you want me to the aside)*

This section will be divided into a few parts. Each one will guide you through the basics of contributing without going to in-depth

### The Overview

This canon, in itself, should always invoke some sort of emotion in the reader. Every entry is designed specifically to invoke emotions and question norms. This canon breaks away at the seal of standard rules implied by the wiki, and is meant to challenge norms and break them. However, the theme is always the council looming in the background of said setting. As a whole, the ultimate "goal" of this canon is to invoke emotions using the setting provided.

### Timelines

This canon is set up into distinct timelines, decided by the current, or lack thereof, president.

Preface

Preface is the timeline which occurs before Origins. The most distinct factor here is that the Council members aren't in the Backrooms yet. This part can be used for multiple occurences of previous lives before entering the Backrooms. Of course, this is one of the less utilized eras in this canon, but it still holds place through the usage of various mythos or life outside the Backrooms.

Origins

This timeline is largely based on the Council members before they became, well, Council members. This line often blurs with Preface, though the biggest distinction used to gatemark them is *in this timeline, the Council members are well established within the Backrooms via Slipping.*

Saoirse Morgana

This part of the timeline lines up with the president proposal Saoirse Morgana. This part of the timeline encapsulates the timeline in which Saoirse Morgana is president. From here, the timeline splits, but anything can go here relating to the core council and their time as, well, council members.

At this point, the timeline splits from standard timeline into *split timelines*. These timelines all have different stories. They are allowed to take place one after another due to the timeline rule. A president is not required, but if one is present, name the timeline as such.

Forgotten Cycles

*Placeholder.*

### GOI's

These are a few facts about GOI's to note when writing, most of this has to stay consistent.

**The M.E.G.:** Basic team with basic goals. Much smaller and less militarized then standard timelines. They are largely insignificant compared to The Council, and unless contact is required for what you wish to write (or unless it is a M.E.G. document), I highly advise you not to bother with The M.E.G. If you choose to, note they are not good at all in this canon, and are targeted by multiple groups not for standard "I'm a villain" reasons, but due to their longstanding betrayal and selfishness as a whole.

**The B.N.T.G.:** Same deal as The M.E.G. They are too insignificant to really pose any story here unless they are the main point of the story. Same deal, don't use unless required

**The Lost:** Very important GOI in the earlier timelines, they are a major GOI to the overall plotline of the story. They have a major place in these stories, and are largely displayed as manipulative individuals who do anything to achieve their goals. Despite that, they only do this when necessary, and if not trying to do something in particular, they are approachable and likeable. Write with them as you wish, but stick to this tone.

**The Followers of Jerry:** Jerry is part of a species of Entities, which died off by the time Saoirse initially no-clips into The Backrooms. Jerry is the last remaining piece of the species, and dies off by the end of Saoirse's time as President of The Morgana Council. The person most involved with Jerry in this series is Stretch Zimals, who has an uncanny liking to Jerry itself. Zimals tries to protect the species, but inevitably fails. This can be written as you wish, but note that any timeline beyond Saoirse's cannot have any reference to Jerry being alive but any mention of Jerry beyond the Saoirse timeline has to have justification, especially if you choose to bring Jerry to life once more. The Bluebird species can have more than one species in it before Saoirse no-clips, but this must be done in the origins timeline. Also, it is advised you only do poetry on Jerry, as that is the general theme of Jerry in this canon.

**The Eye of Argos:** Argos is a strange judge-like Entity in canon, which doesn't fit the feel of The Council Canon as a whole. I am not saying that you are not allowed to use them, but it'd be very difficult to pull off as a whole. I *strongly* advise avoiding any contact with this GOI.

**Backrooms Robotics:** This is a major GOI in this canon, and is effectively a sister group to The Morgana Council. The primary character from this GOI which extends its hand into this canon is Amelia Vane, but ultimately, the entire GOI matters for this canon. They are present in every timeline, are nice, yet are despised by The M.E.G.

**The U.E.C.:** All have confirmed identities, confirmed motives (not conquer, but simply no more M.E.G.), and some of them are friends with Morgana Council members (I.E. U.E.C.-5 is Alexandria, who is friends with Saoirse). They were all once part of The M.E.G., but were betrayed by them each in a horrible way. In themselves, they are a fairly good group who simply despise The M.E.G.

**The Morgana Council:** If you don't know by now, I don't know what to do about you. In all seriousness, they obviously exist, but describing it in detail would make an article in itself, so just read some of the ones above to learn more about them.

You made a GOI and want to include it? Great! Feel free too. Do get permission before linking it on this hub, but any GOI's can be linked in works.

From the perspective of the Council, a format is available for usage should you wish to contribute a level from the POV of the Council. Of course, this format is optional, and a normal level *can* be written, but the format is encouraged and written from the POV of the council. The format is as follows

# Council Dossier

### *Provided by Relevant Council member*

**Nickname:** //Name

**Archetype:** Standard

**Database Location Number:** 32

---

These are some terms used during the series. This may be good for casual readers wishing to get invested in some terminology used throughout the series.

### Nouns

##### People

**Saoirse Morgana:** The main character of the arc and canon as a whole; she is president during the Saoirse Morgana timeline. She is calm, cool, and collected, and always makes calculated decisions. Main character in many arcs of the canon.

**Stretch Zimals:** The Head of Public Relation for the Morgana Council. He is a stuntsman and manages a majority of the documents, outreach, etc. for the Council. Under most circumstances Stretch will be the one to use for level formats.

**Amelia Vane:** Head of Project TEM-1 and part of Backrooms Robotics. Amelia is one of the primary characters in this canon who *isn't* a Council member. She is troubled, and the best way to get familiar with her is to read her POI file (in progress) or [The Forgotten Forest.](the-forgotten-forest.md)

**The Lunatic:** Council Advisor. Has their own arc. Is an amalgamation hivemind. Contact for help using this character.

*As more characters are used repeatedly in this canon, they will be added to this list.*

##### Places

**Level 777:** The main area for the Morgana Council and their business. The overall setting of this canon. To learn more, read [Level 777](level-777.md).

**The Backrooms:** A non-infinite area that is very expansive. It is worth noting that in this canon an exit is theoretically possible and plausible.

*As more locations are used repeatedly in this canon, they will be added to this list.*

##### Things

**The Everything Machine:** [The Everything Machine](object-97.md), this object is, well, it's the Everything Machine. It is recommended you read the work to find out more.

*As more things are used repeatedly in this canon, they will be added to this list.*

### Verbs

**Slipping:** The equivalent to no-clipping in a less video game tone.

*As more verbs are used repeatedly in this canon, they will be added to this list.*

This tab will host some art made by members offsite.

[Saoirse](javascript:;)

[This is so pretty!](javascript:;)

![Saoirse1.png](https://backrooms-wiki.wdfiles.com/local--files/the-council/Saoirse1.png)

*Made by*

[Saoirse in a suit](javascript:;)

[womaninsuitswomaninsuits](javascript:;)

![Saoirse2.png](https://backrooms-wiki.wdfiles.com/local--files/the-council/Saoirse2.png)

*Made by*

##### Canon Crossing

It is 100% allowed to canon cross. However, no matter how much any particular canon is used, as of now, all canons are specifically not perfectly linear crossovers. Only works with the tag the-council are a part of this canon, as it is with all other canons.

[– hide block](javascript:;)

for future reference

1. 10 Nov 2024 12:53 [A Day in the Life of a Gambling Addict](a-day-in-the-life-of-a-gambling-addict.md) by InspectingCritters (16)
2. 14 Mar 2024 18:17 [Xavier Cooper](xavier-cooper.md) by DrBobtail (21)
3. 14 Mar 2024 18:17 [Xog with a Blog](xog-with-a-blog.md) by DrBobtail (11)
4. 08 Mar 2024 20:03 [Summation](summation.md) by BUBBLINGBEACH (32)
5. 03 Mar 2024 17:42 [koko.init](kokoinit.md) by scutoid studios (18)
6. 16 Jan 2022 07:08 [Level 628 - "The Island"](level-628.md) by yoyoflux (18)
7. 12 Jan 2021 03:04 [Unnumbered Level - "The Forgotten Forest"](the-forgotten-forest.md) by yoyoflux (45)
8. 14 Dec 2020 03:20 [A Second Book](a-second-book.md) by yoyoflux (16)
9. 09 Dec 2020 19:05 [Genesis](genesis.md) by yoyoflux (14)
10. 03 Nov 2020 17:04 [The Council](the-council.md) by yoyoflux (12)
11. 18 Oct 2020 01:58 [Level 777 - "A Game Of Chance"](level-777.md) by yoyoflux (90)

Footnotes

[1](javascript:;). In the era which host the present time. Different era's may have different Presidents and members.

[2](javascript:;). Proposal 2's identity is Saoirse Morgana.

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[The Council](the-council.md)" by yoyoflux, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/the-council](the-council.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/the-council">The Council</a>" by yoyoflux, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/the-council">https://backrooms-wiki.wikidot.com/the-council</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/the-council](https://backrooms-wiki.wikidot.com/the-council)
