---
title: "Houses Of The Holy 1"
source: "https://backrooms-wiki.wikidot.com/fragment:houses-of-the-holy-1"
retrieved_at: "2026-08-23T23:41:43+00:00"
license: CC-BY-SA-3.0
---

# Houses Of The Holy 1

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

> As the gate to the Hub seals itself behind him, the sounds of a bustling casino quickly fill Spec's ears. Slot machines, Blackjack, alcohol and cheap food— all essential in bringing forth the environment of Las Vegas. Fortunately-unfortunately, Spec doesn't have the time to engage in such frivolity. His eyes flash a deep purple color, and he scans the area for any traces of his next target for the day: Saoirse Morgana.

*"No traces of her residual energy anywhere… she must not be gambling today. Suppose it was a mistake to think tracking her down would be easy."*

Spec takes a seat at the bar, pulling out his phone. The organized chaos of gamblers, waiters, dealers, and all-around bad behavior completely overwhelms his senses. He needs a minute to adjust. At least this place is graced with good reception. Spec pulls up one of the most popular wanderer apps, Backdoor. He clicks through various chat logs, searching for one in particular as he checks over his shoulder every few seconds. While not inherently dangerous, Level 777 does have a rather… vile reputation. Torture, public execution as entertainment, kidnapping, whatever the fuck 'eternal public humiliation' means… all sorts of nasty. Oh well, if things go south, he can do what he does best— run.

Spec selects a private chatroom with another user, nicknamed "A." He opens up the text box, and types in a message.

![door_white.png](http://zaskou.wdfiles.com/local--files/what-if-blackout/door_white.png)**THE BACKDOOR** Backrooms' #1 Chat & Forum

**> Direct Messaging - User: Isle\_Of\_Avalon**

---

[Spec]: Hey. What's up?

[Isle\_Of\_Avalon]: God you're such a dry-ass texter. I swear, if a skin-stealer ever gets you, the first thing that'll tip me off is an introductory message longer than 20 characters. Anyway, what's good?

[Spec]: I'm going to be honest, not fucking much. I'm in Casino Morgana of all fucking places right now.

[Isle\_Of\_Avalon]:…

[Isle\_Of\_Avalon]: You better not gamble, shitlord. I don't need to see your guts splattered across the walls in a wretched display of "modern art" the next time I'm in that area. You couldn't bluff if your life depended on it, and in this case, *IT ACTUALLY FUCKING DOES.*

[Spec]: I'll be fine. Besides, we need to talk later.

[Isle\_Of\_Avalon]: Fiiiiiiiine. What about?

[Spec]: I'm… working another case. I need your resources again.

[Isle\_Of\_Avalon]: Say less, bitch boy. What do you need?

[Spec]: Everything you have on Leo Castellos.

[Isle\_Of\_Avalon]: Shit.

[Spec]: What?

[Isle\_Of\_Avalon]: I don't have shitttt on that old-ass historian. I'd need to break back into the office again!

[Spec]: Just blast open an Iron Fist storage compound. They can't touch you.

[Isle\_Of\_Avalon]: But Speccccccccccccc I'm trying to AVOID attention!

[Spec]: Suppose you're right. Buuuuuuuut the deal is I let you crash at my place, and you get me the information I need *when I need it.*

[Isle\_Of\_Avalon]: I'm going to need something a bit *more* than that, Spec.

[Spec]: Fine. Whatever. We're friends after all, no? What do you need?

[Isle\_Of\_Avalon]: ;)

[Spec]: Fuck no. Not happening. Not again.

[Isle\_Of\_Avalon]: That's what you said last timeee, and you still paid up.

[Spec]: If I didn't need you, I'd throw your ass to the curb, yknow that?

[Isle\_Of\_Avalon]: Awwww come onnnnn you love to hate me Speccyyyyyy

[Spec]: Don't fucking call me tha— are you fucking drunk right now? HOW THE FUCK ARE YOU DRUNK? That shouldn't even be possible with the way that human biology works here—

[Isle\_Of\_Avalon]: Listennnnn I was in level 6.1, and I just got a little silllllyyyy

[Spec]: …

[Spec]: I'll talk to you later. Fufill your end of the bargain, and I better not see you drunk on the fucking floor when I get home or I *will* throw your ass to the sin hunters.

>\_

Spec shuts off his phone in irritation, staring into the blackness of a security camera behind the bar.

*"I'm so tired of all this bullshit."*

In a fit of frustration, Spec's eyes flash blue, and the security camera fizzles out with a loud POP! Sparks shower down onto the floor, and a few members of the wait staff immediately turn towards him, asking him who the fuck he is and "what the hell does he think he's doing?" Within a minute, he feels a hand on his shoulder. Spec turns around, staring up at the imposing figure of a security guard.

"Well hello there. What seems to be the trouble?" Spec asks innocently.

The security guard huffs.

"Follow me, kid. We don't take too kindly to troublemakers around here."

Spec raises his hands in mock surprise.

"I'm sorry officer, but I have no idea what you're talking about!"

The security guard crosses his arms.

"Kid, every slightly competent reality bender here saw you electrically short that piece of scrap. Now come with, or we can do this the hard way."

Seeing no reason to complicate things further due to his own arrogance, Spec hops off the stool and trails behind the security officer. After a few minutes of walking, the two end up at the central poker table of the casino. At the table resides two poor saps being utterly demolished by a young woman, no older than 25. The security guard whispers something into her ear, and she nods.

Spec speaks up, tired of waiting. "Hi, I—"

He is immediately cut off by Saoirse Morgana holding up a finger to 'shush' him.

"In this establishment, we respect the environment of an ongoing game. Wait your turn, filth."

Spec bristles. Yikes. He'd heard stories, he'd read stolen files, but he'd never expected her to be THIS abrasive. Whatever. He needs this conversation enough to let it slide. Taking a seat on a bench behind Saoirse, he waits for the game to finish. He stares over Morgana's shoulder, trying to see what's going on. Unfortunately for him, Spec hasn't gambled a day in his life. Despite that, the match is so one-sided that even *he* can understand the stakes. Saoirse is completely outmatching the two strangers, her pile of chips growing every round, her bets increasing each time. It's incredible… almost robotic— a true master of her craft. Within only a few minutes, the other two poor chaps are completely out of chips. The cards are flipped… and Saoirse wins the whole pot. The game is over, just like the lives of the two men she bested. Within seconds, the two are clutching their throats and writhing on the ground, their very life drained from their bodies.

Spec wrinkles his nose. Disgusting.

---

A few minutes later, the cleaning crew is removing the withered corpses of the two poor sods who decided to bet their lives on their game of poker. Placing her winning hand down on the table, Saoirse Morgana turns to face her new guest.

"Such useless fodder… I loathe accepting anyone's challenge, but sometimes the chaff needs to be put in their place. Don't you agree, Mr…"

An adept reality warper, Saoirse normally has no trouble reading the minds or souls of those in her casino. Any little piece of intimidation tends to be of utmost importance in games where the player's lives and autonomy are at stake. This insolent brat was different. Try as she might, all she could hear was static.

"…who are you?" Saoirse asks bluntly. "Answer honestly. I have no use for filth in *my* level."

Spec straightens, brushing nonexistent dust off of his sweatshirt. "The name's Spec. Perhaps you've heard of me, probably not. Pleased to make your acquaintance." He extends a gloved hand towards Saoirse.

Saoirse looks down at his gesture with distaste. "Why are you here? I don't appreciate *challengers* to our *authority* in this place, no matter the infraction. You're lucky I was busy, or else I'd have thrown you out of here myself."

Spec throws his hands up. "Look, I really don't want any trouble. I just needed to get your attention. That's *all.* I swear."

Saoirse glares at him. "Well you've gotten it. Get to the point, before I make good on my earlier statement."

Spec sighs. "I need advice. I… have a gamble I'm taking, and I figured there's no one better to press for an opinion on the matter than you."

Saoirse gives him an incredulous stare. "So, you tracked me down. To my casino. Broke one of my security cameras. Interrupted my game. All to ask *ME* my opinion on the bet of a lowlife freshie *scrub?*"

Spec just stares at her. "Mmmmaaybe. Are you going to help me or not?"

Saoirse gives a dark smile. She's seen countless people of various rank and file in Spec's position before. Desperation. Something that she despises in the dirty underlings that can barely scrape by. Something she has used against them time and time again. Spec may be confident, but to her, he's just another freshie in over his head. "As a matter of fact, I will. On one condition: best me at a game of *my* choosing. That's all."

Spec takes a step back. "Ms. Morgana, I don't even know how to play half of the games in here— I'M NOT EVEN OF AGE—"

Saoirse reaches into her pocket and Spec tenses, preparing to quite literally 'give her the slip.' Though that won't be necessary. All she does is pull out a quarter.

"Oh, it's no problem really. A simple game of chance. 50/50, if you will. The oldest gamble imaginable, a flip of the coin. A twist of fate."

While never having been to Level 777 in his life, Spec has heard rumors of what happens to those who play this cursed game. Most never return. The last coinflip of your life, The Coin Flip of Fate. Spec takes another step back.

"How am I supposed to even win that? If I win, you get executed, and I still don't get my information! Are you sure *you* aren't the mad one?" Spec jabs back.

Saoirse smiles. "Ah, good. You're already familiar with the rules. You have five seconds to decide."

"Five seconds? What you're asking makes no sense! How do I— Fuck, FUCK! FINE! I'LL TAKE YOUR STUPID BET!"

Saoirse's smile widens uncannily, and she hands him the cursed coin. "Your flip. Call it."

Spec stares at the coin in his hands, doing his best to calm his rushing thoughts. He finds his mind wandering back to an interview from ages ago. One with one of the most erratic reality warpers he's ever met…

---

> "No, for the last time, I'm *NOT* single. Can you just answer my question?"  
> *I watch as the eyes of the pompous ass known as [Joey Q](joey-q.md) roll at my comment.*

> "Fine. I'll tell you *ONCE.* And only because you were nice enough to bring snacks."  
> *Joey takes another handful of flamin' hot Cheetos from his snack bag, shoving them sloppily into his mouth. Dust is getting all over my floor. Repulsive.*  
> "Whenever I do anything, right? I change the local properties of the reality in which I exist. Grad school is such a bitch, can't flunk out, ya dig? Arbitrary code execution. It's legit. Can I leave now?"

> "I do know about your 'arbitrary code execution.' But that's not what *I* saw whenever you gave me your example earlier. It just… doesn't line up with how you execute your reality bending. You're doing something else on top of that… layering it into a form that makes more sense to you. Am I wrong?"  
> *I watch Joey throw his hands to his face and groan. Clearly I've hit a nerve. Good. He was starting to piss me off. I fucking hate frat boys.*

> "Brooooo please dawg— you can't snitch. I can't repeat a grade again! Shit's ass…"

> *There it is. Leverage.*  
> "I won't snitch… as long as you tell me *how* it is you're cheating. I need to pass as well, man."  
> *Boom. There we go.*

> "Aight aight, because you're keepin' it real, I'll let you in. It's all probabilities, dig? If you just take those numbers, pick them out, change them a bit, you get the result you're looking for. Ever since I flunked that physics quiz last week, I've been defaulting to this. Hasn't failed me since."  
> *Joey crumples up his empty bag and throws it across the room. He misses the trash can by a solid three feet, and the Cheeto dust stains my wall. I ought to slap him.*

> "And by flunking the physics quiz… you mean the 'failed jump that took you sixteen hours to fix,' right?"  
> *Joey stares at me blankly.*

> "What jump?"

> *I swear to god, I'm going to fucking kill him.*

---

"So what'll it be, *Spec?* If that's your real name anyway… not that it matters."

Spec blinks a few times, staring at the coin in his hand. He knows what he has to do. He stares at Saoirse, making eye contact as he flips the coin with everything he's got.  
"Undefined."

The coin flips end over end, spiraling high into the air. At this point, a small crowd has gathered to watch these two literally gamble their lives away. Even though it was just a coin flip, someone playing this game was always the highlight of the night at Morgana Casinos.

"Undefined? You stupid boy, that's not a real a-"

Saoirse Morgana freezes mid sentence as the quarter plummets down to the ground, landing perfectly upright in a small slit in the tile floor. For the first time in casino history, the feared "Coin Flip of Fate" has ended in a… draw.

Morgana looks at Spec with utter disbelief as the disappointed crowd begins to disperse. There would be no public execution tonight.

"Perhaps I judged you too harshly. Come with me." She turns on her heel, motioning with her finger for Spec to follow, which he does.

The pair arrive in a lounge, furnished with comfortable chairs and couches. It almost seems like a fancy hotel lobby.

Saoirse waves her hand, and the bustle around them freezes. She motions for Spec to sit down.

"Shit… even I haven't learned that one yet." Spec comments, observing her reality bending technique as he sits down on the arm of the couch.

*"Oh I see— she didn't stop time, she just halted the movement of all the local atoms. She pretty much just froze everything— stay on topic dumbass. Make your JoJo references later."*

Spec clears his throat. "So, have you heard of the Wild Hunt? I'd imagine they've come through here at least once since you've taken over… so far I haven't found a single level without their presence."

Saoirse nods. "Yes, believe it or not. A few of their members have even taken up gambling, some far more… fortunate than others. What are you planning?"

Spec leans back into the couch, his legs hanging over the side arm. "So, I'm kind of stuck right now. I've been trying for *years* to understand this stupid fucking dimension-hellscape-bullshitfuck, and everything has been a dead end. I've tried interviewing every reality warper and magic user under the sun, trying to find even the slightest clue as to how shit works around here, but it hasn't led to anything. So that's when I had the thought… who better to ask about the Backrooms than individuals who are almost as old as these hallways themselves? So I planned to travel to their grove, and chat up the [Huntmaster](herne-the-huntmaster.md) himself."

Saoirse nods, somehow following his infodump.

"My question is… what do you think the chance is he'd want me to 'prove myself' by winning a hunt, and do you think that's a gamble worth taking for the information I need?"

Spec swings his legs down off of the arm of the couch, sitting up.

"I figured if anyone knows gambling, even in the esoteric sense, it'd be you."

Saoirse thinks for a moment, before standing up and walking away.

"Hey! Where are you going? Are you going to answer me?"

As time unfreezes around him, he can make out a few words from Morgana's direction. Something about "stupid fucking twink" and "thinks he's immortal just because he pulled a parlor trick." Nothing new to his ears, he supposes.

"Well shit. That's positively unhelpful."  
[Spec rips a hole in reality, noclipping himself back to his basement to sulk. He definitely deserves it after today.](http://backrooms-wiki.wikidot.com/houses-of-the-holy/offset/2)

---

Source: [https://backrooms-wiki.wikidot.com/fragment:houses-of-the-holy-1](https://backrooms-wiki.wikidot.com/fragment:houses-of-the-holy-1)
