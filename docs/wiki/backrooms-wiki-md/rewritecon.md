---
title: "Rewritecon"
source: "https://backrooms-wiki.wikidot.com/rewritecon"
retrieved_at: "2026-08-23T23:36:09+00:00"
license: CC-BY-SA-3.0
---

# Rewritecon

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

# Winners

---

### First place: [Level 899](level-899.md) by

### Second place: [Entity 95](entity-95.md) by

### Third place: [Level 263](level-263.md) by

[![Lute](https://backrooms-wiki.wdfiles.com/local--resized-images/rewritecon/Lute/medium.jpg)](https://backrooms-wiki.wdfiles.com/local--files/rewritecon/Lute)

# "I guess someone will rewrite this…"

Well now that *someone* could be YOU!

# Description

Our website is filled with long-forgotten pages, remembered briefly only to be left collecting dust in the open for rewrite category. You will find these pages begging you to rewrite them amongst the lists of healthy pages. These pages can be saved. PLEASE SAVE THEM. No more will we gaze upon wasted potential and sigh over the reputedly tedious rewrite application process.

This is your chance to make history! Claim one of these pages as your own. Rewrite it to achieve greatness. Publish it to be beloved by the masses.[1](javascript:;)

### Eligible pages list

From the list of [pages open to rewrite](https://backrooms-wiki.wikidot.com/system:page-tags/tag/to-rewrite), only the following pages are available to be rewritten for this contest:

Levels
:   All **open for rewrite** levels and sub-sections **EXCEPT** Levels [0](level-0.md) to [99](level-99.md), [150](level-150.md), [283](level-283.md), [404](level-404.md), [601](level-601.md), [666](level-666.md), and [777](level-777.md), [940](level-940.md), and their respective sub-sections.

---

Entities
:   **ONLY** Entities [22](entity-22.md), [37](entity-37.md), [44](entity-44.md), [55](entity-55.md), [61](entity-61.md), [95](entity-95.md), [104](entity-104.md), [110](entity-110.md), [114](entity-114.md), [120](entity-120.md), [143](entity-143.md), [152](entity-152.md), [194](entity-194.md), [196](entity-196.md), [198](entity-198.md), [222](entity-222.md), [227](entity-227.md), [230](entity-230.md), [231](entity-231.md), [440](entity-440.md), [456](entity-456.md), and [the Conductor](the-conductor.md).

---

Objects
:   **ONLY** Objects [31](object-31.md), [32](object-32.md), [43](object-43.md), [66](object-66.md), [69](object-69.md), [83](object-83.md), [87](object-87.md), and [97](object-97.md).

---

Other
:   No other pages are allowed to be rewritten for this contest.

# Rules

---

- You may not submit a rewrite of any page that is not in the eligible list above.

- Co-written entries are permitted, though only one entry is allowed per person. You may invite authors to join your rewrite after you join.

- Pages rewritten in this contest do not count towards the rewrite cap.

- If you have not posted your draft by the end of the posting period, it will follow the standard rewrite procedure.

- Participants may only submit their entry during the designated posting period. Any pages that are submitted early or late will be deleted, and the author may face disciplinary action.

- Contest entries that fall below the deletion threshold will not be deleted for the duration of the voting period. However, once the voting period concludes, all pages that are still below the threshold will be deleted.

- We'd like to remind all users that the use of AI-generated content for pages or critique is banned. If you have any questions about what resources are allowed, please feel free to ask a staff member.

# Participation

---

Everyone who signs up to this contest can request up to 3 pages they'd like to rewrite, one of which will be reserved for them. In the case of specific pages being highly requested, staff will assign pages to participants based on the priority system below, so not everyone may end up getting their first choice.

### Sign-up template

Request the pages you want to rewrite in the discussion forum of this page by using the following template:

```
**Username of Participant(s):** [[*user (your Wikidot username)]] / (Discord username)

**First Choice for Rewrite:**

**First Choice Original Author(s):**

**Second Choice for Rewrite:** (optional)

**Second Choice Original Author(s):**

**Third Choice for Rewrite:** (optional)

**Third Choice Original Author(s):**
```

You may edit your post to change your choices if you wish, as long as it's before the sign-up deadline. Make sure your choices are in the order of the pages you want the most to the least. If there are any issues or conflicts with the pages you selected, a staff member will contact you via Wikidot or Discord.

### Priority system

The priority system for who gets highly requested pages is as follows:

1. If you are the original author of the page, you will have the highest priority.
2. For everyone else, we will assign pages by spinning a wheel to ensure equal chances.
3. If matchmaking gets too complicated, we may have to defer to staff for manual assignment.

### How to Post

When posting your rewrite, you must do so with the url 'con-name'. This will remain until the contest ends, when the surviving articles will be moved to their respective urls and their original counterparts will be archived.

Pages can be coldposted during the posting period using the password "rewritecon2026". Any pages that use this password for reasons unrelated to the contest will be deleted immediately, and the user will face disciplinary action.

When you post your con page, add the tag "rewritecon2026". Articles with this tag will show up on this page. You must also set this page as the parent page.

# Dates

---

**May 1st 2026**

---

Participants may sign up and declare their page choices.

—

May 8th 2026

---

The sign-up period ends. The page assignment period begins.

—

May 10th 2026

---

Pages get assigned, and the writing period begins.

—

June 14th 2026

---

The posting period begins. You can still write during the posting period.

—

July 1st 2026

---

All pages MUST be posted by this date. The voting continues.

  
—

July 15th 2026

---

**[CURRENT]The voting is concluded, and the winners announced!**

# Con Staff

---

The following users are Con Staff. They are in charge of reviewing entries, managing submissions, and announcing results. Due to this, they are **not allowed** to participate in the contest in any way, shape, or form. If you have any issues or questions about the contest, please contact them via Discord or Wikidot PM.

# Rewards and Achievements

---

The author of the highest-rated article will receive the **Contest Winner** role. Additionally, the authors of the top 3 articles will each choose a monthly feature for July. If there is a tie for any of the top 3 slots, that article will become the 4th feature. If there is no tie, the author of the 4th highest ranked article will choose the final feature.

In a Backrooms Wikidot first, you can earn achievements throughout this con![2](javascript:;) These are bonus objectives that challenge you to think outside the box and bring life back to a few of our other forgotten aspects. The participant who incorporates the most achievements within their page will receive the **Gamemaster** role.

The list of achievements for this con is below:

Politician
:   Write a page for a GOI that doesn't have a tag yet ([list here](groups-list.md)).

Diplomat
:   Include more than three GOIs in a significant way.

You've been here before
:   Include at least 1 image or artwork that you created yourself.

The You You Are
:   Write exclusively in second person, as if the reader is experiencing it.

Hidden Potential
:   Make use of tags currently featured on less than 20 pages.

Resourceful
:   Write a page within ±10% of the original word count.

Undefined
:   Write a page without any classification system.

Old-school
:   Write a page without any theme or major CSS elements.

Alternative universes
:   Write the page to make it a part of a canon it wasn't part of initially.

Roleplayer
:   Write a page using only in-universe documentation.

---

**Good luck and have fun!**

[![Tesspurple](https://backrooms-wiki.wdfiles.com/local--resized-images/rewritecon/Tesspurple/medium.jpg)](https://backrooms-wiki.wdfiles.com/local--files/rewritecon/Tesspurple)

# List of Submissions

- [Level 163 - "Amidst The Void"](level-163.md) by +30 (+31, -1), 9 Comments
- [Level 899 - "Yonder's End"](level-899.md) by +55 (+56, -1), 10 Comments
- [Level 241 - "All Dogs Go To..."](level-241.md) by +31 (+33, -2), 8 Comments
- [Entity 37 - "Curabitur Birds"](entity-37.md) by +37 (+37, -0), 7 Comments
- [Level 495 - "Everything and Grey in Your Wake"](level-495.md) by +38 (+39, -1), 19 Comments
- [Level 233 - "The Lukewarm Hotel"](level-233.md) by +29 (+30, -1), 13 Comments
- [Entity 95 - "Reality Bugs"](entity-95.md) by +48 (+49, -1), 21 Comments
- [Level 150 - "Memory Foundry"](level-150.md) by +38 (+38, -0), 5 Comments
- [Entity 456 - "Frost Boars"](entity-456.md) by +20 (+22, -2), 5 Comments
- [Level 122 - "The Janitor’s Lit Up Mall"](level-122.md) by +26 (+28, -2), 11 Comments
- [Level 263 - "Pretty Pink"](level-263.md) by +47 (+47, -0), 10 Comments
- [Level 410 - "A Perfectly Normal Estate"](level-410.md) by +40 (+42, -2), 17 Comments
- [Level 240 - "The Tragedy of Lotka's Lake"](level-240.md) by +39 (+40, -1), 19 Comments
- [Level 222 - "The Primary Source"](level-222.md) by +33 (+33, -0), 4 Comments
- [Unnumbered Level - "Monochrome"](monochrome.md) by +21 (+23, -2), 7 Comments
- [Object 66 - "Leviathan's Tooth"](object-66.md) by +42 (+42, -0), 10 Comments
- [Level 203 - "it's a dead end."](level-203.md) by +17 (+29, -12), 9 Comments
- [Object 83 - "Robovacs"](object-83.md) by +30 (+30, -0), 7 Comments

---

[Show Comments](javascript:;)

[Hide All Comments](javascript:;)
[Unfold All](javascript:;)
[Fold All](javascript:;)

page 1 of 71[2](javascript:;)[3](javascript:;)...[6](javascript:;)[7](javascript:;)[next »](javascript:;)

[Fold](javascript:;)

30 Apr 2026 21:02

**jjuploads** / (crowbarjj)

**First Choice for Rewrite: [Level 192](level-192.md)**

**First Choice Original Author(s): Aether48**

**Second Choice for Rewrite:** (optional)

**Second Choice Original Author(s):?**

**Third Choice for Rewrite:** (optional)

**Third Choice Original Author(s):**

Last edited on 03 May 2026 20:02
by
 [Show more](javascript:;)

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
 by , 30 Apr 2026 21:02

[Fold](javascript:;)

30 Apr 2026 21:06

**Username of Participant(s):** / MC\_Crafter\_24\_7

**First Choice for Rewrite:** Reality Fresheners (Object 32)

**First Choice Original Author(s):** PandaShark71004/RowanLater (I \*think\* they are the same person, but listed under two different names for some reason on the page)

**Second Choice for Rewrite:** (optional)  
Object 87 - "Worn Sack"

**Second Choice Original Author(s):**

**Third Choice for Rewrite:** (optional)

**Third Choice Original Author(s):**

Note that reality fresheners are my sole aim. The other one is a "just in case".

Last edited on 07 May 2026 22:41
by
 [Show more](javascript:;)

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
 by , 30 Apr 2026 21:06

[Fold](javascript:;)

30 Apr 2026 21:24

**Username of Participant(s):** / (solomonsamtheman)

**First Choice for Rewrite:** Level 420

**First Choice Original Author(s):** (user deleted) or idk

**Second Choice for Rewrite:** Level 440

**Second Choice Original Author(s):**

**Third Choice for Rewrite:** Object 31

**Third Choice Original Author(s):**

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
 by , 30 Apr 2026 21:24

[Fold](javascript:;)

30 Apr 2026 21:27

**Username of Participant(s):** / (studio438)

**First Choice for Rewrite: Level 163**

**First Choice Original Author(s): AlrexX**

**Second Choice for Rewrite: Level 850**

**Second Choice Original Author(s): RiemannHypothesis**

**Third Choice for Rewrite: Level 241**

**Third Choice Original Author(s): PandaShark71004**

Last edited on 07 May 2026 21:11
by
 [Show more](javascript:;)

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
 by , 30 Apr 2026 21:27

[Fold](javascript:;)

01 May 2026 23:14

Due to confusion from the trimming team, Level 606 was meant to be tagged as under rewrite by Boring. Therefore, this page is not actually available for the con. Sorry about this. If you'd like, you can replace it with a different choice.

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
 by , 01 May 2026 23:14

[Fold](javascript:;)

30 Apr 2026 21:28

**Username of Participant(s):** / Derrick770  
**First Choice for Rewrite:** Level 230 - "The Port of Misgivings"

**First Choice Original Author(s):** UnforseenDrop

**Second Choice for Rewrite:** Entity 231 - Porters

**Second Choice Original Author(s):** UnforseenDrop

**Third Choice for Rewrite:**

**Third Choice Original Author(s):**

Last edited on 30 Apr 2026 21:41
by
 [Show more](javascript:;)

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
 by , 30 Apr 2026 21:28

[Fold](javascript:;)

30 Apr 2026 21:39

Level 38 is not on the eligible list

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
 by , 30 Apr 2026 21:39

[Fold](javascript:;)

30 Apr 2026 21:41

Sorry, I will delete that one, was the one I was least comfortable if I got it anyway.

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
 by , 30 Apr 2026 21:41

[Fold](javascript:;)

30 Apr 2026 21:29

**Username of Participant:** / andromeda\_observer

**First Choice for Rewrite:** [Entity 456](entity-456.md)

**First Choice Original Author(s):**

**Second Choice for Rewrite:** [Level 162](level-162.md)

**Second Choice Original Author(s):**

**Third Choice for Rewrite:** [Entity 37](entity-37.md)

**Third Choice Original Author(s):**

Last edited on 01 May 2026 23:02
by
 [Show more](javascript:;)

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
 by , 30 Apr 2026 21:29

[Fold](javascript:;)

This came in the middle of my re-draft lol

30 Apr 2026 21:59

**Username of Participant(s):** / Cubicallaboratory

**First Choice for Rewrite:** [Entity 198](entity-198.md)

**First Choice Original Author(s):**

**Second Choice for Rewrite:** [Level 109](level-109.md)

**Second Choice Original Author(s):**

Last edited on 06 May 2026 00:00
by
 [Show more](javascript:;)

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[This came in the middle of my re-draft lol](javascript:;) by , 30 Apr 2026 21:59

[Fold](javascript:;)

Re: This came in the middle of my re-draft lol

01 May 2026 14:21

Level 18 is not on the eligible list

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: This came in the middle of my re-draft lol](javascript:;) by , 01 May 2026 14:21

[Fold](javascript:;)

Re: This came in the middle of my rewrite-draft lol

05 May 2026 23:59

I'll change it, thx

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: This came in the middle of my rewrite-draft lol](javascript:;) by , 05 May 2026 23:59

[Fold](javascript:;)

stand ready for my arrival, worms.

30 Apr 2026 22:04

**prone to change over time, so expect me to change my mind like 10 times a day**  
**Username of Participant(s):** MR. BALLS!! on wikidot, swagarbi on discord

---

**First Choice for Rewrite:** Level 901 - "The Industrial Powerhouse"  
**First Choice Original Author:**

**Second Choice for Rewrite:** Entity 440 - "The Historian"  
**Second Choice Original Author(s):**

**Third Choice for Rewrite:** Level 494 - "Mirror Lake High School"  
**Third Choice Original Author(s):**

Last edited on 08 May 2026 23:08
by
 [Show more](javascript:;)

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[stand ready for my arrival, worms.](javascript:;) by , 30 Apr 2026 22:04

[Fold](javascript:;)

Re: stand ready for my arrival, worms.

30 Apr 2026 22:13

Level 78 is not on the eligible pages list

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: stand ready for my arrival, worms.](javascript:;) by , 30 Apr 2026 22:13

[Fold](javascript:;)

30 Apr 2026 22:04

**Username of Participant(s):** /Spectre48

**First Choice for Rewrite:** Entity 95 (Reality Bugs)

**First Choice Original Author(s):**

**Second Choice for Rewrite:** Entity 120 (The Officinarum)

**Second Choice Original Author(s):**

**Third Choice for Rewrite:** Entity 114 (Lotka)

**Third Choice Original Author(s):** SocialBarden

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
 by , 30 Apr 2026 22:04

[Fold](javascript:;)

eliminating the pests one at a time

30 Apr 2026 22:24

**Username of Participant(s):** / ellevant

**First Choice for Rewrite:** [Level 924 - "The Nuclear Family"](level-924.md)

**First Choice Original Author(s):**

**Second Choice for Rewrite:**[- "The Surveillance Game"](level-152.md)

**Second Choice Original Author(s):**

**Third Choice for Rewrite:** [Level 515 - "Saturn V"](level-515.md)

**Third Choice Original Author(s):**

Last edited on 30 Apr 2026 22:46
by
 [Show more](javascript:;)

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[eliminating the pests one at a time](javascript:;) by , 30 Apr 2026 22:24

[Fold](javascript:;)

07 May 2026 14:14

me and will rewrite Level 515

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
 by , 07 May 2026 14:14

page 1 of 71[2](javascript:;)[3](javascript:;)...[6](javascript:;)[7](javascript:;)[next »](javascript:;)

[Add a New Comment](javascript:;)

[Permanent Link](javascript:;)
[Edit](javascript:;)
[Delete](javascript:;)

---

Footnotes

[1](javascript:;). Please refer to our [Rewrite Policy](https://backrooms-wiki.wikidot.com/members-only:rewrite-policy) to avoid any confusion regarding the definition of a rewrite.

[2](javascript:;). That was stolen from the SCP Classicon.

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Rewritecon](rewritecon.md)" by Staff, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/rewritecon](rewritecon.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/rewritecon">Rewritecon</a>" by Staff, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/rewritecon">https://backrooms-wiki.wikidot.com/rewritecon</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** Tess banner  
> **Author:**   
> **License:** CC BY-SA 3.0  
> **Source Link:** <https://backrooms-wiki.wikidot.com/local--files/rewritecon/Lute>

> **Name:** I've got you fella  
> **Author:**   
> **License:** CC BY-SA 3.0  
> **Source Link:** <https://backrooms-wiki.wikidot.com/local--files/rewritecon/Tesspurple>

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/rewritecon](https://backrooms-wiki.wikidot.com/rewritecon)
