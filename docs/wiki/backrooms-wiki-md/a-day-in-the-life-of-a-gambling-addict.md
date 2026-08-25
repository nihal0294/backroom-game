---
title: "A Day in the Life of a Gambling Addict"
source: "https://backrooms-wiki.wikidot.com/a-day-in-the-life-of-a-gambling-addict"
retrieved_at: "2026-08-23T23:37:10+00:00"
license: CC-BY-SA-3.0
---

# A Day in the Life of a Gambling Addict

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

rating: +16[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  

Info

Prompts: Underrated, Liminal, Nostalgia

Author's Note: This is posted under a contest but is only for fun to be honest. I thought it would be interesting to run the prompts through a random generator and see what popped up. Thought the gambling canon would be funnily fitting considering the generator.

[Close](index.md)

"You sure you even have that many friends, pal?"

An eruption of performative laughter from a small crowd suffocates the surrounding atmosphere as they gather around a spinning roulette. Thoughtless jokes are thrown around despite the intense stakes of the players, the crowd spending the time they don't need watching people who they don't really care about.

A voice breaks your attention.

"Hey [Zimals](level-777.md)."

Turning to look behind you, you're met with the gaze of a figure, tall and strangely imposing, though very familiar: [Bry](level-777.md).

"Busy?" she asks, ignoring the current game.

You raise an eyebrow at her interruption. Before you have the chance to respond, the crowd of people is caught off guard as a fist slams the table in frustration.

"Fuck!"

Your head whips back around, though the event is more annoying than startling. It was just some dramatic guest on the other team. Their eyes show panic as they glance back towards you.

"I expect you to keep your conduct," the dealer says with an unchanging expression.

"Sorry, sorry."

"The ball has landed on Red 18."

You turn your head back to Bry.

"…Yeah, kind of. Hold on," you reply.

Eyes dart back towards the table in front of you, the crowd and your team waiting intently for the obvious results, and the team across from you savouring their few seconds of crisis.

"The team to my right has won the game with 30 distant chips, 12 friendship chips, and 3 chips of love,” the dealer says, directing his hand towards your side of the table. ”In second place is the house, with 11 distant chips, 2 friendship chips, and 2 chips of love. In last place is the team to my left, indebted 17 distant chips, 6 friendship chips, and 2 chips of love. The debt will now take effect – you may all leave."

There was a pause for a moment, and then one of the losing members lets out a defeated cry, and another, and another.

You furrow your brow slightly for a bit, before getting up and finally giving proper attention to the woman behind you, not sparing another glance towards the people around the table.

"You done? Level boundaries and sections have been a bit unstable around [777](level-777.md) lately. The rest of us are busy with Cici's annoyingly prone casino so this place is your responsibility. Just look around and make sure the back half didn't suddenly turn into a waterpark. We’ll figure ou-"

"Wait, wait, slow down. What do you mean unstable? That can't happen."

"Well, it shouldn't, but it seems The President's been tampering with questionable technology quite recklessly, so we have to pick up after her. Don't think about it too much for now."

"Don't think about it too much? I fund the damn thing! What the fuck is she doing with it?!”

“Better ask her yourself.”

“A-oh fine, whatever, I'll deal with that later. Thanks for telling me, I guess."

---

Ugh. [The Everything Machine](object-97.md) seemed to be proving itself to be quite the pain. Sometimes you wondered if it was [all](the-forgotten-forest.md) going to really be worth it.

Whatever. The casino seems fine, as it should be – loud as ever, addictive as ever. Husks gamble away lives that they’re barely living, and stray wanderers get caught up in the ruckus. Bry was probably just exaggerating, or perhaps you just got lucky, like you always do. Can’t be surprised that Cici’s place is having problems though; as much as you liked it, it always looked like it was going to fall apart at the metaphysical seams.

…

Was that door always there? It had to have been. Yeah. That’s the one you don’t like. Pay it no mind.

Is it though? Curiosity wraps itself around your mind. Fuck it. The door creaks open as you push forward. What meets you on the other side is

…

"Do you remember them?"

"Remember who?"

"Remember. Do you think anyone misses you? Do you miss anyone?"

"…What?"

In front of you is a house, and a hallway, and a field, and a sky, and everything that has ever coalesced within you. Reality spirals under its weight.

![Bright](http://backrooms-wiki.wikidot.com/local--files/a-day-in-the-life-of-a-gambling-addict/Bright)

It's familiar isn't it? Strange and unnerving, and yet a sense of relief washes over you, a fleeting place in the deepest pits of your memory. The embrace of the unremembered, of a distant past forgotten. Their names don't matter here, only the connection to what once was.

It's cool, it's warm, it's bitter, it's sweet. The times when maybe things could slow down for a while and it'd be okay as long as they were around. The depths of your comprehension surface and

No.

Stop it.

They're gone now. They're all gone.

You threw them away.

Torn from your mind of your own volition. A distant idea no longer relevant. It holds no power over you now.

They're gone. You threw their memories away.

For power. For fame.

For you.

The only way now is forward.

---

Bolting back towards the entrance, you almost slam into its frame. Stupid stupid stupid. You exit the broken excuse of a past and slam the door behind you furiously. Your eyes quickly dart around the room you're currently in in a flurry of panic. The casino. You take a deep sigh of relief.

Never again.

---

[But what was it?](javascript:;)

[Nope, just the author](javascript:;)

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[A Day in the Life of a Gambling Addict](a-day-in-the-life-of-a-gambling-addict.md)" by InspectingCritters, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/a-day-in-the-life-of-a-gambling-addict](a-day-in-the-life-of-a-gambling-addict.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/a-day-in-the-life-of-a-gambling-addict">A Day in the Life of a Gambling Addict</a>" by InspectingCritters, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/a-day-in-the-life-of-a-gambling-addict">https://backrooms-wiki.wikidot.com/a-day-in-the-life-of-a-gambling-addict</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:**  
> **Author:** [LudwigSebastianMicheler](https://commons.wikimedia.org/wiki/User:LudwigSebastianMicheler)  
> **License:** Creative Commons Attribution-Share Alike 4.0 International  
> **Source Link:** <https://commons.wikimedia.org/wiki/File:The_bright_moon_behind_clouds_and_a_new_LED-street_light_in_Marburg_%28Germany%29_2016-11-14.jpg>

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/a-day-in-the-life-of-a-gambling-addict](https://backrooms-wiki.wikidot.com/a-day-in-the-life-of-a-gambling-addict)
