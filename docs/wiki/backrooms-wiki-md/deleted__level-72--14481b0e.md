---
title: "Level 72 - \"The Pit\""
source: "https://backrooms-wiki.wikidot.com/deleted:level-72"
retrieved_at: "2026-08-23T23:38:46+00:00"
license: CC-BY-SA-3.0
---

# Level 72 - "The Pit"

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

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
/*=== ROOT VARS ===*/
:root {
    /*=== S-CSS-P ===*/
    --theme-base: "black-highlighter";
    --theme-id: "nuterminal";
    --theme-name: "NuTerminal Theme";
 
    /*=== Colors ===*/
    /*== Basic Colors ==*/
 
   --black-monochrome: 0, 4, 15;
   --dark-gray-monochrome: 18, 22, 32;
   --gray-monochrome: 95, 95, 95;
   --light-gray-monochrome: 115, 119, 129;
   --pale-gray-monochrome: 207, 210, 216;
   --white-monochrome: 230, 235, 239;
   --bright-accent: 115, 119, 129;
   --medium-accent: 0, 4, 15;
   --dark-accent: 115, 119, 129;
   --pale-accent: 115, 119, 129;
 
    /*== Swatches ==*/
    --swatch-background: var(--dark-gray-monochrome);
    --swatch-primary: var(--light-gray-monochrome);
    --swatch-primary-darker: var(--gray-monochrome);
    --swatch-primary-darkest: var(--light-gray-monochrome);
    --swatch-border-color: var(--white-monochrome);
 
    --swatch-text-dark: var(--black-monochrome);
    --swatch-text-light: var(--white-monochrome);
    --swatch-text-general: var(--swatch-text-light);
    --swatch-important-text: var(--pale-accent);
 
    --swatch-menubg-color: var(--black-monochrome);
    --swatch-menubg-light-color: var(--light-gray-monochrome);
    --swatch-menubg-medium-color: var(--gray-monochrome);
    --swatch-menubg-medium-dark-color: var(--black-monochrome);
    --swatch-menubg-dark-color: var(--dark-gray-monochrome);
    --swatch-menubg-black-color: var(--black-monochrome);
    --swatch-menubg-hover-color: var(--gray-monochrome);
 
    --swatch-menutxt-dark-color: var(--black-monochrome);
    --swatch-menutxt-light-color: var(--white-monochrome);
    --swatch-menutxt-general-color: var(--swatch-menutxt-light-color);
    --sideblock-heading-text-color: var(--swatch-menutxt-general-color);
 
    --swatch-secondary-color: var(--black-monochrome);
    --swatch-tertiary-color: var(--pale-gray-monochrome);
    --swatch-alternate-color: var(--pale-gray-monochrome);
 
    --swatch-text-secondary-color: var(--white-monochrome);
    --swatch-text-tertiary-color: var(--white-monochrome);
 
    --footer-text-color: var(--black-monochrome);
    --license-text-color: var(--black-monochrome);
 
    --gradient-header: linear-gradient(to top,
        rgba(var(--medium-accent)) 0%,
        rgba(var(--medium-accent), 0.3) 100%
    );
}
 
/*=== FOOTER ===*/
#footer {
   --footer-text-color: inherit;
   --footer-link-color: var(--black-monochrome);
}
 
#license-area {
   --license-text-color: inherit;
   --license-link-color: var(--black-monochrome);
}
 
/*=== Div Boxes ===*/
.darkerblock {
    color: rgb(var(--white-monochrome));
    background: rgb(var(--black-monochrome));
    padding: 0.01rem 1rem;
    margin: 0.5rem 0;
    box-shadow: var(--quote-shadow);
}
 
.styled-quote {
    border-left: solid 6px rgb(var(--black-monochrome));
}
 
/*=== Dots ===*/
#container {
   background-image: radial-gradient(circle, rgb(var(--black-monochrome), 0.40) 50%, transparent 0);
}
 
/*=== SD COLOURS ===*/
.sd-container {
   --sd-border:var(--white-monochrome);
   --sd-text:222,222,222;
   --sd-symbol:var(--sd-text);
   --sd-bullets:var(--sd-text);
}
```

[- Close](javascript:;)

rating: +12[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

> One might think that entering the Backrooms is harsh enough punishment for any sinner to set themselves straight, but what if I told you there's a second layer to this hell-hole? That there's a chance that you could be trapped twofold, dragged down into an even deeper floor of the rift in space that is the Backrooms. That, even if you manage to escape, it will make sure to shove you back down by any means.
>
> This happens to be the reality for the very, very unfortunate few that populate this dim, grimey, claustrophobic underbelly of the Backrooms. If you're reading this, you've already fallen too far to climb back up, at least as far as we know. There may be no way out, but there's definitely a way to dig yourself deeper…
>
> – A member of the Fallers

Level 72 - "The Pit"

---

# Description

---

**Level 72** is the "first" of a myriad of levels belonging to a subset that we, the Fallers[1](javascript:;), dub the "pit". Why is that, you may ask? The only way to enter is by falling for a very, very long time down what we also refer to as pitfalls. Most likely, you were minding your own business on [Level 0](level-0.md) and then happened to have suddenly fallen down a hole that you could've sworn wasn't there when you first looked. This is the standard here, so don't panic; you're safe for now. These holes don't initially appear to be excessively wide, but they also happen to be spacious enough to prevent anyone who enters from becoming mincemeat against the walls (at least to our knowledge), so there may be other factors at play that dictate its properties. Nonetheless, entering a pitfall ensues in a fall that lasts hours, perhaps even days, eventually being abruptly interrupted by a body of water. Somehow, the impact is largely harmless.

The entrance to the pit is a meager but somewhat open and damp cave with a large, deep, salty, and cold pool of water taking up a vast majority of its floor. The water is extremely buoyant due to its high salt content, preventing anyone from drowning should they become unconscious from shock or any other factors. On one side of this pool is a shallow end leading up to a sizeable doorway-shaped opening in the rock, lined with the bioluminescent mushrooms that seem to be the staple source of light in the pit. Entering this passageway is the only way to survive; however, it is also the only way towards other levels, bringing with them imminent danger.

The level can be broken up into a few distinct progressive sectors:

---

### Unfixed Passageways

---

Once you've traipsed through the somewhat dimly-lit entrance tunnel, you will find yourself in a much more starkly illuminated part of the level, where neon-teal mushrooms emit a vibrant glow. The cave walls enbound you closer after the initial pathway, leaving hardly any breathing room — you couldn't outstretch your arms in its width if you tried. The unfixed passageways are arranged in a maze-like manner that, unfortunately, cannot be precisely mapped due to the inability to backtrack to the level once you've left. Regardless, as is the case with any other maze, following the right-hand side wall will eventually lead to an exit.

Before traversing this part of the level, it is important to bear in mind that the cave is quite unstable, hence the "unfixed" part of its label. The cave will, at random intervals, begin to shake and shift, making balance difficult to maintain while causing small rocks to become dislodged and possibly be sent towards you. With how cramped the paths are, rubble can easily build up and prevent you from advancing, or even bury you entirely. Taking proper precautions, however, should prove it not to be too severe of a threat to overcome.

After some navigating, you will encounter a hole in the ground leading into a pool of cloudy, muddied water. This may be unappealing, but for the sake of survival, you must descend into this hole.

---

### The Bog

---

The bog is just about what it sounds like: an extremely deep, somewhat thick, and algae-infested body of water. The surface of the water nearly reaches the ceiling of the cave that it fills, yet leaving just enough room to cram half your head above the water. Width-wise, the cave is about twenty feet, and length-wise it leads in a straight line that is very easy to follow. It is to be noted that several species of fish and miscellaneous aquatic life inhabit this pond, but they seem to be relatively harmless besides the intermittent curious claw or nibble. The bog is extremely dim, light-emitting mushrooms being very sparsely distributed on the ceiling, not daring to dip below the surface of the water.

This all may seem like quite a horrible experience — paddling along whilst barely being able to push your mouth above the surface does make it so, but unlike the original pool of water at the level's entrance, the water here is quite warm. Once you've swam along for some time, you will find an opening similar to the one from which you entered. As one could assume, you should emerge from the hole to enter the final sector of the level.

---

### The Squeeze

---

As its name suggests, this part of the level requires one to be able to fit through tight spots to make it through. If you happen to have extra meat on your bones, you better hope to have stockpiled water[2](javascript:;) on you while your body eats itself, or else try your best to make your way through.

The squeeze is yet another vertical hallway of sorts that slowly but surely closes in on itself, compressing anyone who attempts their way through it to the point where they can scarcely take a breath. The further it goes on, the more ridiculously narrow it gets, performing twists and turns that require one to maneuver and contort themself in an unnatural manner. Most areas will leave even slimmer folk with only a couple inches of breathing room, while the average person could expect to be entirely pressed up against the walls from chest to back. If you can manage to shimmy through to the end of the cave, it'll slowly open up and take the pressure off. You will find that it expands even further into a little checkpoint of sorts.

---

##### Egress

---

Once you reach the end of the squeeze, there is a ledge above an enclosed, minute-long drop, which will lead you to a deeper level of the pit, the [enshrined threshold](http://backrooms-wiki.wikidot.com/coming-soon). This, however, is not the only way to exit the level, though it is the safest and most tested.

If one is to submerge themself in the bog and peruse around the walls, they may find themself a sizeable tunnel into which they can swim. This eventually leads to the [aquatic abyss](http://backrooms-wiki.wikidot.com/coming-soon), which is largely undocumented at the moment of writing this page but is still a viable exit route if you are unable to make it through the squeeze.

Footnotes

[1](javascript:;). The Fallers are a group comprised of (currently) a couple dozen folks who have managed to band together and somehow find a stable way of living down here. For more information, visit our [group page](http://backrooms-wiki.wikidot.com/the-fallers).

[2](javascript:;). Because of how moist the walls of the level are, drinkable water could potentially be collected, however this theory remains untested.

---

« [Level 71](level-71.md) | Level 72 | [Level 73](level-73.md) »

[[+] Author](javascript:;)

[[-] Author](javascript:;)

This page was written by :P

Thanks to for the greenlight!

Pitfalls canon return??? In 2025??? Wtf???????

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Level 72 - "The Pit"](deleted__level-72--14481b0e.md)" by r a t i f, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/deleted:level-72](deleted__level-72--14481b0e.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/deleted:level-72">Level 72 - "The Pit"</a>" by r a t i f, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/deleted:level-72">https://backrooms-wiki.wikidot.com/deleted:level-72</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/deleted:level-72](https://backrooms-wiki.wikidot.com/deleted:level-72)
