---
title: "Parallax Engine"
source: "https://backrooms-wiki.wikidot.com/component:parallax-engine"
retrieved_at: "2026-08-23T23:41:03+00:00"
license: CC-BY-SA-3.0
---

# Parallax Engine

W A R N I N G  
**PLEASE DO NOT TOUCH THIS PAGE WITHOUT STAFF PERMISSION.**

**This is a template page used internally by the Backrooms Wiki.**

---

rating: +5[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

> This is a component which removes the site theme.  
> Only use this as a base for themes, please! But I guess I'm not your mother.  
> This is good if you want to make a theme based on SCP Sigma-9 theme, or if you want to use the old version of Liminal theme.
>
> ## At the very start of your theme page, put:
>
> > [[include :backrooms-wiki:component:css-revert]]
>
> BEFORE theme code and OUTSIDE of any [[iftags]]
>
> thaaaaanks! ~.

This is a component that animates the **[ACS header](https://backrooms-wiki.wikidot.com/anomaly-classification-system-guide)** upon loading.

## How to use:

Put this in anywhere in the article:

[[include :scp-wiki:component:acs-animation]]

And you're done!

*Example:* **[scp-5935](https://backrooms-wiki.wikidot.com/scp-5935)**

---

## Note:

- Two variables, *--timeScale* and *--timeDelay*, control the timings of the animation. For example:

[[module CSS]]  
:root {  
 --timeScale: 2;  
 --timeDelay: 0.5s;  
}  
[[/module]]

*--timeScale* slows down the entire animation by a factor of 2, and *--timeDelay* delays the starting point of the animation by half a second. Default values are 1 and 0s, respectively.

To change the default values, put the above after the [[include]]. *--timeDelay* is recommended if the ACS isn't the first content element, or you're using it in conjunction with other animation modules (a la **[component:fade-in](https://backrooms-wiki.wikidot.com/component:fade-in)**.)

- Likely incompatible with other types of ACS headers\*.

\*To use with 's [ACS Lite](https://backrooms-wiki.wikidot.com/component:acs-peppo-lite), add the following patch after the [[include]]:

[[module CSS]]  
/\*-- ACS Lite Animation Compatibility Patch --\*/  
.anom-bar > .bottom-box::before { display: none; }  
.anom-bar > .bottom-box { box-shadow: none!important; }  
div.diamond-part { clip-path: none; animation: none; box-shadow: none!important; }  
@media (max-width: 480px) {  
div.top-right-box { clip-path: polygon(0% -30%, 100% -30%, 100% 130%, 0% 130%); }  
}  
[[/module]]

- Inspired by the works of .

---

## Source Code:

```
:root {
    --timeScale: 1;
    --timeDelay: 0s;
}
 
/* Converting middle divider from box-shadow to ::before pseudo-element */
.anom-bar > div.bottom-box { box-shadow: none; position: relative; }
.anom-bar > div.bottom-box::before {
    position: absolute;
    content: " ";
    width: 100%;
    height: 0.5rem;
    bottom: 100%; left: 0;
    background-color: rgb(var(--swatch-menubg-black-color, 12, 12, 12));
}
 
/* DIVIDER */
.anom-bar > .bottom-box::before {
    animation-name: divider;
    animation-duration: calc(0.74s * var(--timeScale));
    animation-delay: calc(0.1s * var(--timeScale) + var(--timeDelay));
    animation-iteration-count: 1;
    animation-timing-function: cubic-bezier(.32,.38,.39,.94);
    animation-fill-mode: backwards;
}
 
/* CLASSIFIED LEVEL BARS */
div.top-center-box  > * {
    animation-name: bar;
    animation-duration: calc(0.45s * var(--timeScale));
    animation-iteration-count: 1;
    animation-timing-function: ease-out;
    animation-fill-mode: backwards;
}
div.top-center-box > :nth-child(1) { animation-delay: calc(0.2s * var(--timeScale) + var(--timeDelay)); }
div.top-center-box > :nth-child(2) { animation-delay: calc(0.32s * var(--timeScale) + var(--timeDelay)); }
div.top-center-box > :nth-child(3) { animation-delay: calc(0.45s * var(--timeScale) + var(--timeDelay)); }
div.top-center-box > :nth-child(4) { animation-delay: calc(0.61s * var(--timeScale) + var(--timeDelay)); }
div.top-center-box > :nth-child(5) { animation-delay: calc(0.75s * var(--timeScale) + var(--timeDelay)); }
div.top-center-box > :nth-child(6) { animation-delay: calc(0.95s * var(--timeScale) + var(--timeDelay)); }
 
/* TOP TEXT */
div.top-left-box, div.top-right-box {
    clip-path: polygon( 0% -50%, 150% -50%, 150% 100%, 0% 100%);
}
 
div.top-left-box > *, div.top-right-box > * {
    position: relative;
    animation-name: bottomup;
    animation-duration: calc(0.65s * var(--timeScale));
    animation-delay: calc(0.5s * var(--timeScale) + var(--timeDelay));
    animation-iteration-count: 1;
    animation-timing-function: ease-out;
    animation-fill-mode: backwards;
}
 
/*-----------------------------------*/
/*-----------------------------------*/
 
/* CONTAINMENT, DISRUPTION, RISK CLASSES */
div.text-part > * {
    clip-path: polygon( 0% 0%, 100% 0%, 100% 100%, 0% 100%);
    animation-name: expand2;
    animation-duration: calc(0.5s * var(--timeScale));
    animation-iteration-count: 1;
    animation-timing-function: cubic-bezier(.12,.41,.27,.99);
    animation-fill-mode: backwards;
}
div.text-part > :nth-child(1) {
    animation-name: expand1;
}
div.text-part > :nth-child(1) { animation-delay: calc(0.6s * var(--timeScale) + var(--timeDelay)); }
div.text-part > :nth-child(2) { animation-delay: calc(0.75s * var(--timeScale) + var(--timeDelay)); }
div.text-part > :nth-child(3) { animation-delay: calc(0.86s * var(--timeScale) + var(--timeDelay)); }
 
div.main-class::before, div.main-class::after {
    animation-name: iconslide;
    animation-duration: calc(0.45s * var(--timeScale));
    animation-delay: calc(0.8s * var(--timeScale) + var(--timeDelay));
    animation-iteration-count: 1;
    animation-timing-function: cubic-bezier(.12,.41,.27,.99);
    animation-fill-mode: backwards;
}
 /* BOTTOM TEXT */
div.main-class > *,  div.disrupt-class > *, div.risk-class > * {
    white-space: nowrap;
    animation-name: flowIn;
    animation-duration: calc(0.42s * var(--timeScale));
    animation-delay: calc(0.75s * var(--timeScale) + var(--timeDelay));
    animation-iteration-count: 1;
    animation-timing-function: ease-out;
    animation-fill-mode: backwards;
}
 
/*-----------------------------------*/
/*-----------------------------------*/
 
/* DIAMOND */
div.arrows {
    animation-name: arrowspin;
    animation-duration: calc(0.65s * var(--timeScale));
    animation-delay: calc(0.55s * var(--timeScale) + var(--timeDelay));
    animation-iteration-count: 1;
    animation-timing-function: cubic-bezier(.12,.41,.27,.99);
    animation-fill-mode: backwards;
}
 
div.quadrants > * {
    animation-name: fade;
    animation-duration: calc(0.3s * var(--timeScale));
    animation-delay: calc(1.4s * var(--timeScale) + var(--timeDelay));
    animation-iteration-count: 1;
    animation-timing-function: cubic-bezier(.12,.41,.27,.99);
    animation-fill-mode: backwards;
}
 
div.top-icon, div.right-icon, div.left-icon, div.bottom-icon {
    animation-name: nodegrow;
    animation-duration: calc(0.4s * var(--timeScale));
    animation-delay: calc(1.4s * var(--timeScale) + var(--timeDelay));
    animation-iteration-count: 1;
    animation-timing-function: cubic-bezier(.12,.41,.27,.99);
    animation-fill-mode: backwards;
}
.bottom-box > div.diamond-part {
    box-shadow: none;
}
.bottom-box > div.diamond-part::before {
    content: "";
    position: absolute;
    width: 0.5rem; height: 100%;
    top: 0; right: 100%;
    background-color: rgb(var(--swatch-menubg-black-color, 12, 12, 12));
    animation-name: diamondBorder;
    animation-duration: calc(0.475s * var(--timeScale));
    animation-delay: calc(0.775s * var(--timeScale) + var(--timeDelay));
    animation-iteration-count: 1;
    animation-timing-function: cubic-bezier(.28,.72,.55,.91);
    animation-fill-mode: backwards;
}
 
/* MOBILE QUERY */
@media (max-width: 480px ) {
    .anom-bar > div.bottom-box { position: initial; }
    .anom-bar > div.bottom-box::before { bottom: initial; top: 40vw; }
    div.top-center-box  > * {
        animation-name: bar-mobile;
        animation-duration: calc(0.9s * var(--timeScale));
    }
    div.top-center-box > :nth-child(1) { animation-delay: calc(0.1s * var(--timeScale) + var(--timeDelay)); }
    div.top-center-box > :nth-child(2) { animation-delay: calc(0.2s * var(--timeScale) + var(--timeDelay)); }
    div.top-center-box > :nth-child(3) { animation-delay: calc(0.3s * var(--timeScale) + var(--timeDelay)); }
    div.top-center-box > :nth-child(4) { animation-delay: calc(0.4s * var(--timeScale) + var(--timeDelay)); }
    div.top-center-box > :nth-child(5) { animation-delay: calc(0.5s * var(--timeScale) + var(--timeDelay)); }
    div.top-center-box > :nth-child(6) { animation-delay: calc(0.6s * var(--timeScale) + var(--timeDelay)); }
 
}
 
/*--- Motion Accessibility ---*/
@media screen and (prefers-reduced-motion: reduce) {
    div.anom-bar-container { --timeScale: 0!important; }
}
 
/*-------------------------*/
 
@keyframes divider {
    from { max-width: 0%;  }
    to { max-width: 100%; }
}
 
@keyframes bar {
    from { max-width: 0%; }
    to { max-width: 100%; }
}
@keyframes bar-mobile {
    from { max-height: 0%; }
    to { max-height: 100%; }
}
 
@keyframes bottomup {
    from { top: 100px; }
    to { top: 0; }
}
 
@keyframes expand1 {
    from { opacity: 0; clip-path: inset(0 calc(100% - 0.75rem) 0 0); }
    to { opacity: 1; clip-path: inset(0); }
}
@keyframes iconslide {
    from { opacity: 0; transform: translateX(-5rem); }
    to { opacity: 1; transform: translateX(0); }
}
 
@keyframes expand2 {
    from { opacity: 0; width: 1%; }
    to { opacity: 1; width: calc(100% - 0.25rem); }
}
@keyframes fade {
    from { opacity: 0; }
    to { opacity: 1; }
}
 
@keyframes flowIn {
    from { opacity: 0; transform: translateY(20px); }
    to { opacity: 1; transform: translateY(0); }
}
 
@keyframes arrowspin {
    from { clip-path: circle(0%); transform: rotate(135deg); }
    to { clip-path: circle(75%); transform: rotate(0deg); }
}
@keyframes nodegrow {
    from { transform: scale(0);}
    to {  transform: scale(1);}
}
@keyframes diamondBorder {
    from { height: 0; }
    to { height: 100%; }
}
```

# This is a parallax header engine for BASALT theme.

Skrollr lives again with this new method to add a bit of 3D space to your page banners! Intended for hub pages like contests or canons.

To create 3D parallax effects, this leverages BASALT's simple layout (in comparison to BHL) and CSS 3D transformations to add a banner to the top of the page that appears to have depth when you scroll… spooky…

## Usage

Check it! This is the syntax you need:

[[include :backrooms-wiki:component:parallax-engine]]

```
#container::before { /* mobile static banner image because the effect breaks on many phones */
 background-image: url(http://scutoidbox.wikidot.com/local--files/contest-hub-2024/final-slcon-mobile-banner.png);
}
 
@media only screen and (min-width: 1025px) {
    #container::before { /* furthest (scrolls slowest) */
     background: url(http://scutoidbox.wikidot.com/local--files/component:parallax-engine/slcon-sky.png);
     --translate: -22px;
     scale: 23;
    }
 
    #extrac-div-1 { /* back */
     background: url(http://scutoidbox.wikidot.com/local--files/component:parallax-engine/slcon-embassy.png);
     --translate: -18px;
     scale: 19;
    }
 
    #extrac-div-2 { /* middle */
     background: url(http://scutoidbox.wikidot.com/local--files/component:parallax-engine/slcon-step.png);
     --translate: -14px;
     scale: 15;
    }
 
    #extrac-div-3 { /* front */
     background: url(http://scutoidbox.wikidot.com/local--files/component:parallax-engine/slcon-redlightdistrict.png);
     --translate: -10px;
     scale: 11
    }
 
    #container::after { /* foreground (scrolls fastest) */
     background: url(http://scutoidbox.wikidot.com/local--files/component:parallax-engine/slcon-wanderer.png);
     --translate: -1px;
     scale: 2;
    }
}
```

The --translate value determines how far back it is; the more negative, the further! The scale value should be the --translate value, turned from a negative into a positive, plus one.

---

Source: [https://backrooms-wiki.wikidot.com/component:parallax-engine](https://backrooms-wiki.wikidot.com/component:parallax-engine)
