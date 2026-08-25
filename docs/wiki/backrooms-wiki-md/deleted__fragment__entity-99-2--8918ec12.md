---
title: "GAYER musketeer 2"
source: "https://backrooms-wiki.wikidot.com/deleted:fragment:entity-99-2"
retrieved_at: "2026-08-23T23:35:27+00:00"
license: CC-BY-SA-3.0
---

# GAYER musketeer 2

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

*In the beginning was sheer potential. Uncountable concepts coalesced and divided; instantaneously forming and destroying archetypes. From raw power, beings of divinity were formed, the only ones able to withstand unruly existence. They calmed the raging tides and installed rules to allow for the creation of lesser life. The rest, as they say, "is history."*

*I was not the first to take form. The souls birthed by our primordial dance built the bridge into existence for us, and I was last to cross it. In turn, I repaid those very same souls with a priceless power. When minds cry out in misery for a respite from suffering, I give them release in the form of humor. The downtrodden, the outcast, and the disturbed turn to me, for in the end, they will all see the funny side. A mocking of brutality, a laugh at one's hopelessness — a joke will ease the suffering of any ailment, no matter how inescapable. I am in symbiosis with mortals.*

*The true joke is on my elder kin, who hold their supposed superiority over me like a leash on a rabid dog; they think themselves my betters, but I will show them otherwise. My power is not strength nor cunning, but finality. I am the only point of view left in any being's moments; the last breath of any man or god is expelled as a laugh. Upon the dying realization of the last truth, I breathe through them, and we laugh together. The other Pillars think I am young and therefore weak, but I am under none of their false pretenses of importance or royalty. I was not the first to enter existence, but I will be the last to exit when the curtain falls upon this stage. I shall have the last laugh.*

*The Game Master's limbs move not of their own free will, but in a dance to my impish tune. The strings weave through all minds able to comprehend how humorous your stark reality is. I sprung from the souls of men, and in turn they remember my mischief. Humor is ingrained in their being so deeply that laughter is more infectious than any disease. My melodic madness is the final realization; in the end, there is no choice left but to see the funny side.*

![Sethund.png](https://backrooms-wiki.wdfiles.com/local--files/deleted:fragment:entity-99-2/Sethund.png)

*I am Komo'oide, and I am the final truth.*

---

Source: [https://backrooms-wiki.wikidot.com/deleted:fragment:entity-99-2](https://backrooms-wiki.wikidot.com/deleted:fragment:entity-99-2)
