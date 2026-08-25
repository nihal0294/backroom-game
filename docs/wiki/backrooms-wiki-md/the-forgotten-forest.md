---
title: "Unnumbered Level - \"The Forgotten Forest\""
source: "https://backrooms-wiki.wikidot.com/the-forgotten-forest"
retrieved_at: "2026-08-23T23:37:18+00:00"
license: CC-BY-SA-3.0
---

# Unnumbered Level - "The Forgotten Forest"

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

rating: +45[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

# Graphic descriptions of abuse and overworking ahead, proceed with caution.

![Missing alt text.](https://backrooms-wiki.wdfiles.com/local--files/the-forgotten-forest/TheForgottenForest.png)

An entryway into the only place which matters.

*Hello?*  
*How are you doing today?*  
*Talk to me…*  
***Please***

> Recently, I found my way home.  
> It was nice, being in a place so free.  
> I love my home, and my parents love me.  
> **I love you dad**.

> **From:** Dad  
> **To:** Amelia Vane  
> **Subject:** [| Your purpose](object-97.md)  
> **Date:** Why would that matter?
>
> ---
>
> Hey sweetie! I'm so happy to see you working so hard with your purpose! I just want you to know that you're going a bit slow, but you're still fine! Just keep trying! I hope this email reaches you as happy and sweet as it can be!
>
> I love you,

# Council Dossier

### *Provided by Saoirse Morgana*

**Nickname:** The Forgotten Forest

**Archetype:** Hidden

---

![Missing alt text.](https://backrooms-wiki.wdfiles.com/local--files/the-forgotten-forest/TheForgottenForest.png)

Saoirse Morgana - "I caught this a while back, through the lens of the Everything Machine. A Hexcube was destroyed, but it didn't take long to repair. I hope Amelia doesn't mind to much; she loves that thing more than anything else."

### Current known information about this location

The Forgotten Forest is currently known to be the most notably accessible area within the Frontrooms. It was recently discovered by the combined efforts of Saoirse Morgana and Amelia Vane. The Forgotten Forest exists as the most available "gateway" between the Frontrooms and the Backrooms. The exit appears risky, but it seems viable. At the moment, Amelia Vane is uncontactable, but Saoirse has provided insight into why they believe this is the case.

The information known as of now is that the Forgotten Forest is meant to embody a choice between one way or the other. It serves as a challenge of sorts; but it doesn't have to be difficult. When you encounter the Forgotten Forest within the Frontrooms, you're presented with the choice: stay where you are, or move ahead into a new world; though this transition is unknown to any in that situation.

As Saoirse has once been in this location, she has provided a rundown of her experience there, written below in the attached file.

I remember it clear as day. I was home, it was my birthday - I didn't remember that at the time, but it was indeed my birthday - and my head was spinning. I took a little walk in the forest, then suddenly, I encountered it. At the time, I called it the dream forest. I find the name still fits, it was *freaky*. At the time, everything went so slow, but when I reflect on what happened, it feels so fast.

The Forgotten Forest is meant to symbolize the degree of choice; you choose what you wish to do. When I made it there, I wandered within the trees for a while. After a while, I saw my house again. I nearly ran out; I saw my parents through the window. I was this close, but something held me back.

I didn't want to go back.

The forest does that to you; it makes you think. You wander within it senselessly for a while; learning about it; questioning it; looking for a way out. Then quite suddenly, you can leave. Easy as that. Some choose to, at least I assume, but most don't.

The forest *knows* who to pick. It simply needs to access you. Sometimes it makes mistakes, and when it does, it gives people the option to leave. Many don't, but the forest gives you that chance.

The forest isn't bad. It's good. And it may very well be my tool back to my home. I won't stay, dear god no. But, to put it simply.

I have unfinished business there.

### Physical properties.

The Forgotten Forest features multiple notable physical attributions. For one, it is always accessible through only a forest. It is found most commonly when wandering deep within a forest for an extended period of time, but as long as you enter the forest, it will always be possible for you to encounter the forest.

When ever you go into the forest itself, you typically will be completely aware of the change. The trees often are distinct enough in difference for you to notice. If you do not notice immediately, you tend to become aware after wandering within the trees. As you begin to wander more and more, you are able to notice the fact that the trees move with you, wrapping together and trapping you. Despite that, you can still walk within those trees, and the trees will move rapidly to ensure you do not touch them.

After wandering for an unknown amount of time, suddenly, an exit from the forest will form. This doesn't always appear in a place directly outside the forest, leading many to believe it doesn't completely connect to the forest. It is unknown what spectrum it exists on exactly, but it is confirmed it is somewhere within the Frontrooms.

After revealing an exit within the Frontrooms, you are given the choice of either leaving or stepping away from the formed exit. Should you leave, the forest will suddenly disappear behind you within a blink of an eye. Should you stay, the forest will close, and you'll be within its depths once more. However, you will no longer be alone.

The forest will reveal [a book](genesis.md) within its center. The book can be approached easily, and when approached, it [reveals text to you.](a-second-book.md) Should you read it and sentiment with it, you'll suddenly pass out, awakening most commonly on [level-18](level-18.md). It is currently unknown what happens should you hold no sentiment to the text due to it never having occurred before.

### Connected People of Interest

- **Saoirse Morgana** - One of the most reliable people to contact involving The Forgotten Forest, she has experienced first-hand what happens during the process of slipping through in the forest.

- **Overseer-B** - Though very unclear exactly *how* she slipped in, it is currently suspected that she slipped through the forest, due to her connection to both 18 and [heaven](level-404.md)

- **Stretch Zimals** - Stretch is one of the primary funders for the TEM-1 Project involving slipping back into the Frontrooms. Though budget is not a concern, fuel is, and Stretch has been noted to provide luck fuel well.

**From:** Amelia Vane  
**To:** Dad  
**Subject:** re: Your purpose  
**Date:** It still does not matter

---

Thank you dad! I'll be working to be a good daughter. As always, I'm trying my hardest. Please don't be mad at me. I love you.

Amelia Vane  
Head of my purpose

**From:** Dad  
**To:** Amelia Vane  
**Subject:** re: re: Your purpose  
**Not relevant:**

---

That's great to hear sweetie! I do hope you are feeling alright. Recently, you've seemed more out of touch, and I am worried that you may be dissociating again.

Oh you are?

**No one cares, go back to your room. We don't want that here.**

I love care for want to love miss you,

Dad

### Additional Documentation

Up until recently, direct contact with the forest was largely impossible due to the rather poor equipment provided beyond "magic" like power, which is highly unstable and nearly always broke into itself anyways. However, due to relations directly involving Backrooms Robotics, we were able to pair up with Amelia Vane and her team as a sort of "testing" phase for the Everything Machine. Because of this, efforts were put in place to directly communicate and execute plans to view the Frontrooms.

The Everything Machine was much more stable, allowing for a Hexcube to be used to create a gateway to the forest. Currently, this gateway only serves as a lense for us to see the Forgotten Forest and understand it better. Amelia will continue working on potential attempts to make direct contact with the Forgotten Forest.

After multiple attempts were constructed and failed, the project was put on indefinite hold due to actions taken in mutual agreement by Saoirse and Amelia together. Currently, the project outlook seems strong and is only awaiting input from Saoirse or Amelia to continue testing.

---

### Sudden Withdrawal

Recently, Amelia Vane has completely withdrawn from the project for unknown reasons. Because of this, The Everything Machine is currently inaccessible, and it appears that Amelia's decision on this action is final. The motivations which led up to this sudden withdrawl are unknown. Currently, the project is considered "cancelled" until Amelia is available once more.

---

I put the document down at that point. Everything else seemed to be related to providing hope to a lost cause. Reading on would be pointless; there's nothing new to be learned about the level for now. After all, I needed to continue working on my letter to Amelia. I took out my laptop, and began to write.

Hey Amelia!

I hope this reaches you well. I haven't heard from you in a while and I'm worried about whether or not you're alright. Your withdrawal was quite sudden, and made quite the dent in the pro

Hold on, that sounds too pressing to the project. I need to worry about Amelia right now. I deleted what I had, and started my second draft, this time focusing on making sure Amelia is feeling okay.

Dear Amelia,

I've been worried about you for a while. Ever since you withdrew from the project, I haven't heard from you at all. I don't know what you're doing right now, but I'm concerned that it may be due to your workload. You should consider asking Yellow to start laxing onto you; he seems to be assigning too much work to you.

I stopped typing for a moment. I needed to make sure she heard everything I needed her to hear. I looked up to the roof of my room. The gentle folds within the paint gave it a pattern of memories; completely justified, of course. It's how paint works. Well, it's how paint normally works, anyways. I took a deep breath, picked up my fingers, and began swaying them across the keyboard once more.

I'm worried for you Amy. You just disappeared so suddenly and you didn't tell me anything as to why. I mean, it started with you just slowly going more and more blank whenever I attempted to reach you, then you withdrew from the project, and now I can't even find you around [Morgana's](level-777.md) anymore. You used to spend all your free time there and now you're just… gone? I don't know how else to put it.

I miss seeing you.

I want to know what's going on. You haven't reached out to me at all and I'm just really worried. It isn't that hard; I swear. I'll be nice, I promise. I've always been nice to you.

Please, just message me back.

I stopped typing for a moment. A singular pause before my fingers remembered they could move. Despite that, I did not type right away. My fingers paused their delicate strokes as I pondered what I just said. On one hand, it felt so weird writing as if this was a story, but on the other, it felt so *wrong* to change anything I written. After considering for a while, I lifted my fingers and stroked away at the keys once more; this time cautious of the sound created by the taps.

With love,

Saoirse Morgana

I gently put down my laptop, careful to not make a sound. As I walked towards the door, the distant-yet-familiar sound of chorus filled my ears. The dice landed gently; definitely on a 5. Whoever landed it was in luck; unless it was simply a husk. A deck of cards began shuffling itself; constrained to the dealer's advantage, of course.

The gambles in the distance echoed away. All of a sudden, peace was found once more. I had not noticed myself walking back to my bed. The way the air flew gently across the sheets; delicately comforting my toes. At that moment, all stood still.

I picked up my laptop once more. My fingers floated towards the enter key. For a moment, I hesitated. Then, quite suddenly, my finger fell unto the key, and the email sent. I stood up, walked towards the closet, and began to get ready for another day. After all…

I had gambling to do.

And I will never lose there.

Never.

---

Ping.

Sound.

Familiar sound.

The distant sound of someone in need. Someone who requires assistance. They need me.

The first light struck.

Then the second.

The third and the fourth.

The little pieces in my head.

They began lighting up once more.

They get louder

The chains.

The chains connect. The little chains.

They connect.

All around, they slowly grow more and more loud.

Something called for me.

I began to sit up.

They need me they need me they need me. I need to make sure they know I'm there for them.

Yellow.

Yellow said no.

Yellow said focus.

Yellow said rest.

They don't need you.

Yellow needs you.

Don't you remember what he said to you today?

You don't?

*Well, you better start remembering* ***right fucking now***

I think he asked me to ignore them?

***NO HE DID NOT***

I- I don't know…

You don't?

No…

*Why not?*

Because I don't want to know…

Why don't you ***want to know***

Because…

***SPEAK UP NOW!!!***

I AM NOT A TOOL!

What?

YOU FUCKING HEARD ME?

Hehehe…

Why are you laughing like that?

*Are you sure about that?*

…

…

…

…

The final light struck.

Excuse me?

Goodbye?

Wai-

![Baubles.jpg](https://backrooms-wiki.wdfiles.com/local--files/the-forgotten-forest/Baubles.jpg)

---

### Return

Amelia Vane has provided the Everything Machine for our use in the project from this point forward. She has stated that she will personally no longer invest her time into the project due to her being required by Yellow for further purposes. Notably, she has been observed working at twice the pace for Yellow for unknown reasoning. The current plan is to continue experimenting on the Forgotten Forest until a proper lense can be created *(see test logs below)*.

Amelia Vane's whereabouts at the moment are unknown, but Yellow has proclaimed that he refuses any further contact between her and Saoirse under any circumstances. Whether this is due to Amelia's choice is unknown.

  

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Unnumbered Level - "The Forgotten Forest"](the-forgotten-forest.md)" by yoyoflux, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/the-forgotten-forest](the-forgotten-forest.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/the-forgotten-forest">Unnumbered Level - "The Forgotten Forest"</a>" by yoyoflux, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/the-forgotten-forest">https://backrooms-wiki.wikidot.com/the-forgotten-forest</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** Valley View Yosemite August 2013 002.jpg  
> **Author:** King of Hearts  
> **License:** CC BY-SA 3.0  
> **Source Link:** <https://commons.wikimedia.org/wiki/File:Valley_View_Yosemite_August_2013_002.jpg>  
> **Additional Notes:** Edited by

> **Name:** Bauble.jpg  
> **Author:**   
> **License:** CC BY-SA 3.0  
> **Source Link:** <https://backrooms-wiki.wdfiles.com/local--files/the-forgotten-forest/Baubles.jpg>

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/the-forgotten-forest](https://backrooms-wiki.wikidot.com/the-forgotten-forest)
