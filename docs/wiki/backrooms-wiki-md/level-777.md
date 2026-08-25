---
title: "Level 777 - \"A Game Of Chance\""
source: "https://backrooms-wiki.wikidot.com/level-777"
retrieved_at: "2026-08-23T23:34:32+00:00"
license: CC-BY-SA-3.0
---

# Level 777 - "A Game Of Chance"

> # This article is outdated!
>
> ---
>
> This page has been deemed outdated when compared to current-day writing standards. You can apply to rewrite it back into the main list by filling the form found in the [Rewrite Policy](https://backrooms-wiki.wikidot.com/members-only:rewrite-policy).

[[Hide disclaimer]](javascript:;)

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

rating: +90[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  

Info

**Level 777: "A Game of Chance" by:**

### [YellowISlol's Author Page](yellowislol.md)

*Take a chance…*  
   
Image Attributions: *placeholder, will attribute soon*

[Close](index.md)

SURVIVAL DIFFICULTY:

unknown

- {$one}.
- {$two}.
- {$three}.

![Missing alt text.](http://liminaldoctor.wdfiles.com/local--files/gallery/hotel1)

A part of "The Lobby"

![Missing alt text.](http://backrooms-sandbox.wdfiles.com/local--files/yellowislol/The%20Slots)

A group of slot machines inside of "Chesire Casino's"

![Missing alt text.](http://backrooms-sandbox.wdfiles.com/local--files/yellowislol/disappearing_casino)

A casino once named "Tokyo Poker". Whereabouts are currently unknown

**Level 777** is a street lined with casinos, all of which gamble to extremes.

# **Description:**

**Level 777** consists of a street, which is lined all around with casinos. The street itself is rather short, only being 14 kilometers. Buildings line the sides and mark the ends of the street. There are no alleyways, and any attempts to climb over the buildings to access the other side have all failed. All buildings are able to be entered, and all are much larger on the inside than on the outside.

When you first enter **Level 777**, you will find yourself inside of a building labeled as "The Lobby". The Lobby is the smallest building on this Level, being an average sized lobby. When leaving, you can also use The Lobby, as long as you aren't indebted. The Lobby is built to resemble a regal entryway, with sitting areas. This area is considered a gateway, and it is staffed by human-like entities, who work to assist you in any way possible.

Once you exit The Lobby onto the street, you will notice many casinos all around you. Every casino has high stakes, but the further you go down the street, the higher the stakes rise. There are other humans around, however, they all appear to be husks, with no will to do anything other than gamble. Despite this, these husk will still have a will to win, along with their will to live. The dealers follow in this suit, and tend to play to their advantage.

Very few of the casinos stay permanently on this Level. Sometimes a casino may simply disappear within the blink of an eye. It will be replaced immediately with a new casino, which varies from the original casino. This can happen even with people inside. Therefore, if a casino is not listed below, it may be dangerous to enter the casino. Sometimes, these casinos may return, however, they will not have any traces of the people who were once in there before. It is assumed anyone who disappears is dead.

Every Casino has the unique property of reality-bending capabilities. These capabilities are able to manifest any object inside of the backrooms. Money is rarely gambled, as many prefer to gamble things such as body parts, precious memories, or their own lives to "raise the stakes". Because of this, **Level 777** is useful if you need to obtain an item quickly.

Depending on what casino you go to, you'll find different dealers are able to bet to different amounts. The casinos outside of The Lobby are considered the safest, as they bet materials, food, and water. They have the least traffic, and they hold no regards to The Deal. However, the further you go down the street, the more the casinos raise in stakes, from memories, to body parts, to public humiliation, to even complete slavery.

# **Known Casinos**

[Casinos](javascript:;)

[...](javascript:;)

## **Low Ranking**

Low ranking casinos are some of the first you can enter, other than The Big 3. As such, these casinos are fairly low ranking, and never have a signature.

### **Zachia Slots**

Zachia Slots is a low risk casino, in which gambles made have never risen beyond the stakes of food and water. Many of the dealers are friendly, and no one here has a poker face. Because of this, it is recommended you come here if you have skills at gambling, in order to raise the amount of materials you have. If you frequent this casino, many other casinos will hold you in low regard, and some of the higher ranking casinos may deny you entry. Zachia Slots is open to anyone on the floor who still own their lives. Zachia Slots have no signature, as it is likely this will be the first casino you visit on this floor.

### **Chesire Casino**

Chesire Casino is a somewhat middle ranking casino, only open to those who can prove they have adequate skills in gambling. As word spreads quickly, having a good win-to-loss ratio in any low ranking casino is enough to get you into Chesire Casinos. They only gamble materials, therefore, this is yet another safe option. They specialize in slots, though they do have poker and roulette. This Casino has no signature.

## **Middle ranking**

Middle ranking casinos have higher stakes, and are some of the most variable casinos available. These casinos all require some adeptness, and have an entry requirement. They all have signatures available.

### **Insanity Classics**

Insanity Classics is a casino which is held in somewhat high regards, and is one of the first casinos you'll encounter with stakes beyond materials. The highest stake you'll find here is a minor body part, such as chunks of fat or fingernails. In order to get entry, you must be able to gamble and win against every dealer inside of Cheshire Casinos. Insanity Classics specializes in Blackjack, and have no other games. Their signature is a game known as Insanity Blackjack.

Insanity Blackjack is a modified version of blackjack, which follows very much in suit with blackjack. However, it ties in some new rules, which revolve around secrecy. For one, your hand is your opponents hand, meaning that if you hold a 21, you have high chance of losing. The gameplay revolves around convincing your opponent that their hand is bad by bluffing. As you have no way of knowing your total value, only being able to know one of your total cards, every hit you take is a risk.

When you "hit", your opponent gains 1 card, which is added to your own total. This card stays hidden, and only your opponent knows it. Once hands have been established, the betting phase begins. The betting phase consists of raising, folding, and calling, all of which are done normally. In order to participate, you must give in a call, which is decided at the dealers leisure.

The game takes place over 3 rounds. It can be played with up to 4 players, and collusion is against the rules. Whoever wins a round takes all the bets already put in by their opponents. Whenever a bet is placed, it is considered "placed", meaning it is irreversable.

### **Merlins beard**

Merlins beard is the highest ranking casino in the middle ranks. The highest stake here can be a body part, or the body of any Entity. The time period for gathering an Entity is typically 1 year. If you fail to capture the Entity in time, you will be considered uncooperative, and be put into servitude. Servitude at Merlins is typically lax, mostly consisting of doing standard jobs, such as cooking and cleaning. Once in servitude, you cannot leave **Level 777.**

To gain entry, you must be able to beat a dealer at the door. There are three to choose from, all of which play poker. If you lose, you must wait 3 months before attempting to enter once more. Merlin's beard specializes in poker, and have been known to be rather ruthless. The only other game offered at Merlin's Beard is their signature, which is Tarot Poker

Tarot Poker is a revamped version of poker, using only three cards instead of five. The cards are equal in value to their respective numbers, and the highest card wins if both hands are pigs. Tarot Poker has three main multi hands, which are hands that have higher value by default, no matter the high card.

- 2 in a row: This hand is rather simple, simply hold two tarots which are next to each other in value
- 3 in a row: This hand is difficult to form, and is made up of three in a row
- The fools curse: This hand consist of any hand with the fool. It is considered higher then 3 in a row.

There are some hands known as "Special Hands". These all hold the same value, and are extremely rare to get. Their are quite a few, 5 of which are listed below:

- Hell's Hand: A hand consisting of The Hanged Man, Death, and The Devil
- The Universe: A hand consisting of The Sun, The Moon, and The Star
- The Royal Court: A hand consisting of The Empress, The Emperor, and the High Priestess
- The Tower of Death: A hand consisting of The Tower and Death
- The World: A hand consisting of The World

Tarot Poker takes place over either 1 turn, 5 turns, or 22 turns, at dealers leisure. Folding, raising, and calling all work the same. The participation fee is at dealers leisure.

## **The Big 3**

The Big 3 are the most dangerous casinos available on **Level 777**. They all have extremely high stakes, and every dealer is a master in their game. They all are accessible to anyone, but be warned, they don't hold back.

### **error 101\_DELETE**

error 101\_DELETE is a high ranking casino, and is considered the weakest of The Big 3. It has a high reputation, and following the rules of The Big 3, allows entry to everyone. This casino is widely regarded for their unique "glitch stake". Should you take this stake, the highest one offered at this casino, you will be risking your very existence, and could become a [Glitch](entity-78.md). This casino offers many different signatures, though the main signature it holds is Glitched Roulette.

error 101\_DELETE is known for its frequent glitches. When in this casino, the floor may shift, and you may even no-clip into a random floor. The entire casino glows a vibrant blue, with a black pop. The dealers here frequently "glitch", and are difficult to focus on. The CEO of error 101\_DELETE, Cici, is a member of The Morgana Council.

Glitched Roulette is a very complicated game, which only is fully understood by the CEO himself. Glitched Roulette uses a roulette table, which has around 40 modifications, only 6 of which identified for reasoning.

- Glitching numbers: Some of the numbers glitch throughout the board, during the time period in which the ball is spinning.
- Glitched colors: The colors appear to be completely random, promoting luck.
- Weighted balls: The balls shift weight during their course, in an unknown way.
- "Brakes": Randomly, the wheel may simply glitch and give up, stopping the ball in its tracks.
- Anti-Gravity Flip: The entire table turns upside down, which appears to make the ball switch directions
- rorer\_stop\_EXECUTE: At any point, a game may end, displaying the words "rorer\_stop\_EXECUTE". This does not seem to be weighted to any players favor, and typically makes the game random.

Some other modifications include:

- The table disappearing
- The ball disappearing
- The dealer disappearing
- The bet changing suddenly, against your will
- The floor collapsing underneath the table

Other then these modification, the game plays normally to roulette, and will likely end with the dealer winning.

### **Celebrity Showdown!**

Celebrity Showdown! is a very unique type of casino, with very high stakes. The most typical stake is eternal public humiliation, and loss of all unnecessary limbs. Many "famous" people from **Level 777** gamble in this casino, and have many fans amongst the crowds of gamblers. The CEO of this casino, Stretch Zimals, is a very esteemed member of **Level 777**, and is a member of The Morgana Council. Throughout the casinos, games will be made on the dime, all relating to acting in some way. Therefore, every game on this floor is considered a signature. However, the most common signature, played by all celebrities, is Heart Love Poker!

Heart Love Poker! is a three round turn based game similar to poker. However, instead of using chips, people are used. When in play, you can bet as many people as you own the rights of. This game is used by higher ups in order to exchange rights, and have fun with the lives of others. Before starting, all players that will be bet have to have an "Evaluation Notice", which consists of:

- Physique
- Looks
- Skills
- Talents

The ranking is placed on a table from 1-100, and distributed accordingly. The game plays out normally, with one exception, which is heart cards hold higher values than normal cards. This means that all hands which are equal will be evaluated using hearts as high card instead of standard number high cards. In a pig, the person with the most hearts wins.

### **Morgana Casinos**

Morgana Casinos is a casino which has been noted to have the most reality bending properties of all the other casinos. They have knowledge on virtually any gamble, and dealers are incredibly harsh. Even with gambles proposed on the spot by the player, Morgana Casinos has proven knowledgeable of these gambles. Morgana Casinos holds many mysteries, and many more potentials. It is currently unknown if it is even possible to beat some of the players, such as The President. The stakes inside of Morgana Casinos are incapable of being low, with the minimum being either your most prized memory or your life. The house seems to have access to virtually any funds, and are all capable of the many powerful summonings. Within Morgana Casinos, the Morgana Council can be found. The Morgana Council consists of the 7 most powerful Entities on **Level 777**. They technically have no signature, however, they do have The Coin Flip of Fate.

The Coin Flip of Fate is the ultimate game of luck. All other forces are stopped whenever this game is played. The dealer flips a coin with both sides up at the same time, and when flipped, will have exactly a 50% chance of landing on either side, heads or tails. To clarify:

- The position of when its thrown has no effect on the game
- The wind has no effect on the game
- The force of gravity has no effect on the game
- No external forces have any impact on the game

This is essentially, the most fair game ever, due to its complete fifty-fifty ratio. The only bet allowed in this game is your life. Whoever doesn't win will be executed.

The Coin Flip of Fate is known for being completely fair, therefore, every Morgana Council member has won the game at least once. Morgana Casinos are known for two other main things. [The Tarots](https://backrooms-wiki.wikidot.com/the-tarots) are all from this casino, alongside [The Tarot Room](https://backrooms-wiki.wikidot.com/the-tarot-room). The other known thing is the entrance to [777.1](https://backrooms-wiki.wikidot.com/level-777-1), which is The Gambling Labyrinth.

## **The Morgana Council**

The Morgana Council is a set of 7 entities, all of which are extremely powerful, and able to bend reality to their will. The 7 members are held in high regard by everyone on this floor, and they all have extremely varying personalities. The list of members are as followed.

[The Morgana Council](javascript:;)

[...](javascript:;)

- **Ria MAX**: Position; Council Secretary. This member is known for being a cyberpunk goth, who is extremely invested in poker. This member can be seen in both Morgana Casinos as well as error 101\_DELETE. They have been known to be rather manipulative, and accept any challenge. A minor reality bender, is considered one of the more difficult members to beat. However, they have some of the weakest reality bending abilities of all the members, therefore, using this member for any big deals in unadvised. Ria MAX claims their favorite game is Memory Russian Roulette. Because of this, Ria MAX has very few memories of their past life, and is known to "live the moment".

Memory Russian Roulette is a unique game invented by Ria. It is also their signature, meaning they are very experienced in its play. The game follows similarly to Russian Roulette, however, instead of a gun, a water gun is used. This water gun is filled with an unidentified fluid, with no connections to the [Memory Wyrm](entity-42.md). This liquid looks similar to a rainbow kaleidoscope, and is easy to get lost in. The gun itself shoots off with a 1/6 chance, equal for all members at play. When shot into your head, it immediately seeps into your head, and targets your most prized memory. Once done, it will take it, and remove it from your head forever. Afterwards, you will know you lost a prized memory, bringing many to deep shame and depression.

- **Stretch Zimals**: Position; Head of Public Relations. A well known figure on **Level 777**, he is known to be the most famous celebrity on this Level, largely due to his place as CEO of Celebrity Showdown! He identifies as an actor, and typically stars in action movies. He is also his own double-stunt. He is especially experienced in many forms of gambling, though his signature is Pen Pals Deluxe! A somewhat major reality bender, this member has high influence on many of the gambles which take place, both in Morgana Casinos and Celebrity Showdown! He is a formidable gambler, and shouldn't be challenged lightly. He is the only Council member who shows compassion, despite showing very little of it. Stretch's favorite game is anything involving roulette, so he also occasionally visits error 101\_DELETE in order to play Glitched Roulette.

Pen Pals Deluxe! is a very unique form of roulette, much similar to Glitched Roulette, though the premise is very much different. Pen Pal's Deluxe is a team game, and takes place with 4 players. The game consist of three rounds, which each have their own turn-order. Throughout the game, you'll be required to bet high, however, this doesn't mean lives or memories. This means relations, which is the most complicated part of this gamble. Should your team lose Pen Pals Deluxe!, you will instantly lose all connections to a person in your life, and they will lose their relation to you as well. This doesn't mean that you are no longer able to contact them, however, you will not remember them. Stretch Zimals is undefeated in this game

- **Cici**: Position; Council Treasurer. Cici is a very unique form of Glitch, as xe is known to gamble in error 101\_DELETE quite often. Instead of undergoing the full position of becoming a glitch, xe became a half glitch, making xim much more powerful, and a much more formidable gambler. Xe quickly rose in ranks, and is now one of the most esteemed Council members of them all. Xis skills are rivaled by The Overseer, and xe is known to be a very powerful reality bender, ranking next to The President. Xis signature is Poker\_GLITCH\_executeprogramDELETE, however, xe is well versed in any gamble. Xe is somewhat kind, and compassionate towards other, though this appears to be a facade.

Poker\_GLITCH\_executeprogramDELETE is a unique game of poker, which can only be played between two people, one of whome must be Cici. The loser of the game will become a glitch in all cases, with the exception being Cici ximself. The game is similar to poker, however, much like Glitched Roulette, it has many unique glitches, all of which affect the game. The understood glitches include:

- Cards randomly disappearing from your hand-This can happen at any point, at random. If this happens before the drawing phase, the cards will be given to you afterwards. However, if a card disappears during the betting phase, that card will be considered forfeit. A straight is impossible to achieve if this happens, so be wary.
- Chips disappearing or reappearing-This seems to jumble up the gambling a lot, and makes bets ultimately random. If all your chips disappear, your opponent will be at a severe disadvantage, as you will be betting very little, while they bet high, on the same stakes.
- Values of cards changing suddenly-At any point, any cards, whether in your hand or in the deck, may change to a different value. These typically follow the decks rules, however, there is a chance unique cards will come into play. A wild is considered a good card, as it represent all values at once simultaneously. This part effects gameplay the most.
- New cards appearing in your hand-This only happens during the betting phase. This makes straights more common, and overall, increase your chance of winning.

Throughout the game, sometimes, the dealer may simply call the game off, which happens around 5% of the time. Though unknown, it is presumed that the dealer was effected by the glitching poker.

It is advised to avoid this game at all cost. Typically, the dealer plays no favoritism and simply plays to win for the house, however, one point to be considered is that Cici loses nothing by losing, meaning xe can bet as high or low and take as much risk as possible with no repercussion.

- **Mariano**: Position; Council "Cleaner"- A less known figure on **Level 777**, he is a full on dog. He achieved this by gambling and winning. His primary purpose is to clean up the misdoings of the council, and to make their reputation appear at its highest status. A formidable gambler, he should not be challenged lightly. As he is a dog, it is hard for him to play many gambles, which is why his signature is Color Chaos! He can be incredibly manipulative, both inside and outside of gambles, and will get violent to carry out his duties.

Color Chaos! is a simple, yet challenging game. The point of the game is simple, simply choose a color out of the nine available, and match it up with the dealers chosen color card. There are nine in total, plus a tenth black card. Should the dealer choose either one of your colors be picked, the game ends and the winner is chosen based off the correct color. Should a color not match either player, a new round shall begin, until it does. The black card, when drawn, will end the game in a draw, and the dealer will collect the winnings. This game is largely luck based, which is why it is Mariano's signature, as he is colorblind. After a card is drawn every round, the deck is reshuffled, in order to keep the game fair.

- **Bry Nimolire**: Position; Council Overseer. Very little is known about Bry, however, she is the least likely to accept gambling challenges. Her primary purpose on the Council is to oversee any gambles taking place between esteemed members. She is widely acknowledged as the most neutral Councilwoman, and the most trusted. Whenever she does decide to gamble, she is known to be an expert in tarot cards. Her signature is not a game, but rather, a prediction, known as Life or Death. She is a cunning individual, and is not afraid to "take the scalp of another".

Life or Death is similar to a classic Tarot Card prediction. However, Bry has admitted that the results are random. The prediction is done by Bry, and will only be played with the higher arcan. The element of surprise in this game is the fact that any prediction made will come true, no matter the results. For an example, we look at a common combination of tarots, The Fool and The Lovers. If this is to happen, you will end up falling into innocent love. Be warned, this event cannot be reversed, and will impact your life. It cannot be avoided, and the only alternative is euthanization, which can only work part of the time.

- **The Vice President**: Position; Direct assistant to the President. The name of this individual is unknown. They are impossible to comprehend, and typically appear as a state of mind. The direct inclusion of this Council Member in this document is nearly impossible. The Vice President has no signature, however, they are the only one authorized to serve The Coin Flip of Fate.

- **The President**: The President is the most mysterious person on the Council. They/it/them is currently unknown, and they/it/them could be functionally anything. However, we do currently have 4 potential egos, all of which differ majorly.

- **The Mangler**: Position; Former Council "Cleaner". This member used to be the Council Cleaner, but due to outside circumstances, this member is now deemed useless, and is considered dead. Before this happened, this member was a "half-mangled". They had long legs, and acted similar to a [Mangled](entity-63.md), with the exception of being fully sapient, similar to a human.

# **The President(s):**

The four Current Proposals are listed below. Keep in mind The President(s) cannot have a signature, which is why no signature is present. The President(s) is/are (a) supreme gambler(s), and none have ever lost a gamble. The President(s) may be multiple Entities, or a single Entity. There is also the possibility the President(s) may not exist.

[The President(s)](javascript:;)

[...](javascript:;)

### **Proposal 1: Double Type**

Cici is an unknown entity who was birthed from The Council Treasurers halfway done glitch state. Due to this process absorbing a large amount of power, Cici became a Cheshire. In this state, this Cheshire has a supreme amount of control over Morgana Casinos, and can bend virtually anything to their will. Due to Cici's unique state, Council Treasurer Cici should never be informed of Cici's state.

Within this state, as a Cheshire, Cici's powers are drastically limited. However, in this state, they are also virtually unbeatable in gambling. If Cici were to gain the power necessary to leave their Cheshire state, they would likely be able to have full control of The Backrooms. He may even have the power to go to The Frontrooms. However, due to the potency of his Cheshire state, and the 0 %chance he has of becoming a full fledged human, this is unlikely to ever occur. Current estimated age: 117.

### **Proposal 2: A Simple Gamble Girl**

Currently has no known name, however, this does not make them any less of a good gambler. She was once a wanderer, however, once she stumbled upon **Level 777**, she quickly rose in rankings and beat the former President in a gamble. She was able to quickly rise in power after this, and is now recognized as one of the most influential people in The Backrooms, who amasses supreme power.

Her current goal is to completely destroy The Backrooms. She believes that if she destroys The Backrooms, she will be able to return back to her home in The Frontrooms. Currently, she is going through very well with this procedure.

She is incredibly manipulative, and can easily end ones life is she sees fit. She is vulnerable, but she uses gambling to her advantage. She is a potent reality bender, and as such, she creates [DATA EXPUNGED BY THE M.E.G.](object-100.md) in order to protect herself. She is a supreme gambler, and she rarely accepts gambling challenges, stating that she "has no use for filth". Current estimated age: 24

### **Proposal 3: Double-Edged Sword**

Koni and Neko are twins, both of whom amass incredible power on **Level 777**. They both are masters of gambling, and together, they are unbeatable. They tend to dress the same, and as such, are indistinguishable from each other. Their origins are unknown, and they reveal very few details about themselves. However, they both have a thirst for human lives, and will gamble at great lengths to own the souls of others. They have the unique capability of being able to take the souls of others, which they typically use for entertainment.

Koni and Neko both have the unique capability of being in total sync with each other. They have a telepathic connection, which allows them to collude in gambles much easier, without risk of opponents noticing. Beyond that, they both are master strategists, and can recognize others cheating. It is impossible to tell whether or not they are speaking telepathically, therefore, this is a most advantageous ability.

Koni and Neko both represent the parts of an animal, which are cat and dog, respectively. However, they switch often, which further contributes to the way they both are interchangeable. Current estimated age: 12

### **Proposal 4: Ally's Single Chip**

Ally's Single Chip is an Object which amasses a high amount of aura, and as such, is considered the President. This Chip will represent a single bet, equaling anything, as long as the value is stated. For example, stating that the bet is "your life" will cause the bet to equal all betters lives. It is a highly respected Chip, and requires a Council Member in order to be used. Every gamble it is used for increases its strength, as well as its potency. Current estimated age: unknown

Ally blessed us this gift, and we shall cherish it.

# Bases, Outposts and Communities:

## **The Gamblers**

This group consist of about 150-200 wanderers, all of whom are invested into gambling. Some of them gamble at lower ranked casinos, some at higher, but they all gamble. They rarely leave the floor, and some of them become slaves to the casinos.

## **M.E.G. Outpost**

A MEG outpost established in the hub. It's rather small, and serves as a warning for new wanderers, which lets them know what to expect. Beyond that, they observe proceedings which happen during gambles.

# **Entrances and Exits:**

## **Entrances**

**Level 777** is unique because it cannot be accessed through an entrance. Only one with a will to gamble for the sake of gambling can make their way to **Level 777**. Beyond that, only one other entrance has been noted, which is extremely difficult to follow through with. Once you go onto Level 98, you can locate a man who is noted for having a missing eye, covered by an eye patch. Occasionally, a tentacle may poke out of the eyepatch. If you ask this man to gamble, he will gamble with you. His skills are only slightly under the Morgana Council, so be warned, do not challenge him lightly. Should you win, you will appear directly outside Morgana Casinos. If you lose, he will simply ask if you wish to play again. He gambles low, never more than a bottle of Almond Water. Should you decide not to play again, you can return at anytime to gamble once more.

## **Exits**

There are many ways to exit **Level 777**, however, the most simple way is to simply leave through The Lobby. This will cause you to either emerge in The Hub or Level 0. Some middle ranking casinos will transport you to specific levels should you win. If you gamble to leave **Level 777** at any of the Casinos in The Big 3, they will transport you to Level 4. Entering The Tarot Room without permission may cause you to emerge in Level 6, though this only happens around 20% of the time. When playing Glitched Roulette, sometimes, you may glitch to a random Level, for no reason. The same applies to Poker\_GLITCH\_executeprogramDELETE. When playing Pen Pals Deluxe!, if you lose within the sight of the relationship being severed, you will be transported to a random Quantum Stable Level.

---

[Author](javascript:;)

[i mean, what did u expect, legos?](javascript:;)

this was made by me,

« [Level 776](https://backrooms-wiki.wikidot.com/level-776) | Level 777 | [Level 778](https://backrooms-wiki.wikidot.com/level-778) »

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Level 777 - "A Game Of Chance"](level-777.md)" by yoyoflux, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/level-777](level-777.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/level-777">Level 777 - "A Game Of Chance"</a>" by yoyoflux, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/level-777">https://backrooms-wiki.wikidot.com/level-777</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** new majestic hotel Singapore  
> **Author:** Matthias Mueller  
> **License:** CC BY 2.0  
> **Source Link:** <https://www.flickr.com/photos/trendscout/6295648377/>

> **Name:** DSC29100, Atlantis Casino Hotel, Reno, Nevada, USA  
> **Author:** Jim G  
> **License:** CC BY 2.0  
> **Source Link:** <https://flickr.com/photos/21203533@N00/4033102297>

> **Name:** DSC29079, Atlantis Casino Hotel, Reno, Nevada, USA  
> **Author:** Jim G  
> **License:** CC BY 2.0  
> **Source Link:** <https://www.flickr.com/photos/jimg944/4033097751>

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/level-777](https://backrooms-wiki.wikidot.com/level-777)
