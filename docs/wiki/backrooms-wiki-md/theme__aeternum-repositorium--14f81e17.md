---
title: "Aeternum Repositorium Theme"
source: "https://backrooms-wiki.wikidot.com/theme:aeternum-repositorium"
retrieved_at: "2026-08-23T23:36:49+00:00"
license: CC-BY-SA-3.0
---

# Aeternum Repositorium Theme

```
/*
    Aeternum Repositorium Theme
    by exotichive
*/
 
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@700&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Spline+Sans:wght@400;700&display=swap');
@import url("https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css");
 
:root {
    --logo: url(http://exotichive.wdfiles.com/local--files/theme%3Aaeternum-repositorium/logo);
 
    --header-title: 'THE ETERNAL REPOSITORY';
    --header-subtitle: 'FINDING THE FORGOTTEN, FORGING THE FOUND';
 
    --header-font-primary: 'Poppins';
    --UI-font-primary: 'Spline Sans';
 
    --basalt-overtone: 100, 100, 100;
    --basalt-undertone: 130, 80, 160;
    --basalt-UI-dark-palette: 11, 5, 26;
    --basalt-bright-element-color: 130, 80, 160;
    --basalt-dark-element-color: 116, 77, 135;
    --basalt-primary-color: 5, 0, 8;
    --basalt-secondary-color: 11, 5, 26;
    --basalt-tertiary-color: 34, 10, 44;
    --basalt-main-text-color: 190, 190, 190;
    --basalt-light-text-color: 0, 0, 0;
 
    --link-color: 160, 105, 200;
    --general-border-color: 37, 30, 50;
    --bottom-area-background-color: var(--basalt-primary-color);
    --top-bar-link-background-hover-alt: var(--basalt-tertiary-color);
    --top-bar-link-background-hover: var(--top-bar-link-background-hover-alt);
    --search-icon-color: var(--basalt-main-text-color);
    --tab-selected-background-color: var(--basalt-tertiary-color);
 
    --side-bar-link-color-hover: var(--basalt-main-text-color);
    --top-bar-dropdown-link-color-hover: var(--basalt-main-text-color);
    --login-status-text-color-hover: var(--basalt-main-text-color);
    --selection-text-color: var(--basalt-light-text-color);
    --scrollbar-track-color: var(--basalt-secondary-color);
    --scrollbar-thumb-color: var(--basalt-undertone);
 
    --side-bar-background-color: var(--basalt-primary-color);
    --side-bar-heading-background-color: 253, 253, 253, 0.045;
 
    --swatch-menubg-black-color: 40, 40, 40;
 
    --footnote-background-color: var(--basalt-primary-color);
    --basalt-th-background-color: var(--basalt-bright-element-color);
    --basalt-th-text-color: var(--basalt-light-text-color) !important;
    --document-background-color: 196, 183, 204;
    --darkdocument-background-color: 28, 8, 36;
 
    --one-color: 34, 187, 68 !important;
    --six-color: var(--basalt-bright-element-color);
 
    --accent-h: 270deg;
    --complement-h: calc(var(--accent-h) + 18deg);
 
    --primary-accent-1: var(--accent-h) 50% 40%;
    --primary-accent-2: calc(var(--accent-h) - 5deg) 40% 30%;
    --primary-accent-3: calc(var(--accent-h) - 15deg) 45% 25%;
 
    --light-accent-1: calc(var(--accent-h) + 12.5deg) 55% 85%;
    --light-accent-2: calc(var(--accent-h) + 7.5deg) 50% 70%;
    --light-accent-3: calc(var(--accent-h) + 5deg) 55% 65%;
 
    --dark-accent: calc(var(--accent-h) - 16.5deg) 35% 15%;
 
    --primary-complement: var(--complement-h) 50% 38%;
    --light-complement: calc(var(--complement-h) + 12.5deg) 55% 80%;
    --dark-complement: var(--complement-h) 30% 12%;
 
    --assist-color: var(--accent-h) 10% 10%;
 
    --swatch-alternate-color: var(--general-border-color);
    --swatch-primary: var(--basalt-tertiary-color);
    --modal-header-bg: var(--basalt-secondary-color);
    --modal-header-stripe: var(--basalt-bright-element-color);
    --modal-header-txt: var(--basalt-main-text-color);
    --modal-bg: var(--basalt-secondary-color);
    --modal-body-text: var(--basalt-main-text-color);
}
 
#header {
    background: linear-gradient(90deg, rgb(var(--basalt-secondary-color)) 0%, rgb(var(--basalt-secondary-color)) 35%, rgba(0, 0, 0, 0) 100%), url(http://backrooms-wiki.wikidot.com/local--files/theme:eternal-repository-theme/er-banner-finished.png);
    background-size: auto;
    background-attachment: fixed;
    background-repeat: no-repeat;
}
 
#header h1 a::before {
    filter: drop-shadow(0px 0px 6px rgba(var(--basalt-bright-element-color), 0.5));
}
 
@media (max-width: 768px) {
    #header h1 a span {
        transform: scaleX(.85);
        transform-origin: left center;
    }
}
 
.bibitems::before,
.footnotes-footer::before,
.footnotes-footer .title,
.hovertip .content .footnote .f-heading,
.hovertip .content .reference .r-heading,
.hovertip .content .footnote::before,
.hovertip .content .reference::before {
     background-color: rgb(var(--basalt-dark-element-color)) !important;
}
 
.footnotes-footer .title,
.hovertip .content .footnote .f-heading,
.hovertip .content .reference .r-heading {
     color: rgb(var(--basalt-tertiary-color)) !important;
     font-family: var(--mono-font);
}
 
.bibitems,
.footnotes-footer {
     border-style: solid;
     border-width: 0.125rem 0.125rem 0.125rem 0;
     border-color: rgb(var(--general-border-color));
}
 
#page-content .collapsible-block:not(.uncool-collapsible *) {
    --cut: 1.375rem;
}
 
#page-content .collapsible-block-folded:not(.uncool-collapsible *) a.collapsible-block-link,
#page-content .collapsible-block-unfolded-link:not(.uncool-collapsible *) a.collapsible-block-link {
    display: inline-flex;
    align-items: center;
    position: relative;
    min-height: calc(var(--cut) * 2);
    box-sizing: border-box;
    padding: calc(var(--cut) * .3535) calc(var(--cut) * 1.414);
    padding-inline-start: calc(var(--cut) * 2.414);
    border: none;
    clip-path: polygon(
        0% var(--cut),
        var(--cut) 0%,
        calc(100% -  var(--cut)) 0%,
        100% var(--cut),
        100% calc(100% -  var(--cut)),
        calc(100% -  var(--cut)) 100%,
        var(--cut) 100%,
        0% calc(100% -  var(--cut))
        );
    background-color: hsl(var(--light-accent-3) / 0.25);
    color: inherit;
    overflow: hidden;
    isolation: isolate;
    transition: color .125s linear;
}
 
#page-content .collapsible-block-folded:not(.uncool-collapsible *) a.collapsible-block-link:is(:hover,:focus) {
    color: hsl(var(--light-accent-1));
}
 
#page-content .collapsible-block-folded:not(.uncool-collapsible *) a.collapsible-block-link::before {
    content: "";
    display: block;
    background-color: hsl(var(--dark-accent));
    height: 100%;
    width: calc(var(--cut) * 2);
    clip-path: inherit;
    position: absolute;
    inset-block-start: 0;
    inset-inline-start: 0;
    transition: width 0.175s ease-out;
    z-index: -1;
}
 
#page-content .collapsible-block-folded:not(.uncool-collapsible *) a.collapsible-block-link:is(:hover,:focus)::before {
    width: 100%;
}
 
:is(#page-content .collapsible-block-folded:not(.uncool-collapsible *) a.collapsible-block-link, #page-content .collapsible-block-unfolded-link:not(.uncool-collapsible *) a.collapsible-block-link)::after {
    content: "+";
    font-size: 1.375em;
    font-weight: bold;
    font-family: var(--UI-font);
    display: grid;
    place-content: center;
    position: absolute;
    inset-block-start: 0;
    inset-inline-start: 0;
    height: 100%;
    width: calc(var(--cut) * 2);
    background-color: hsl(var(--dark-accent));
    color: hsl(var(--light-accent-1));
    clip-path: inherit;
    transition: background-color 0.125s ease-out;
}
 
#page-content .collapsible-block-folded:not(.uncool-collapsible *) a.collapsible-block-link:is(:hover,:focus)::after {
    background-color: hsl(var(--primary-accent-1));
}
 
#page-content .collapsible-block-unfolded-link:not(.uncool-collapsible *) a.collapsible-block-link {
    color: hsl(var(--light-accent-1));
    background-color: hsl(var(--primary-accent-1));
}
 
#page-content .collapsible-block-unfolded-link:not(.uncool-collapsible *) a.collapsible-block-link::after {
    content: "-";
    background-color: hsl(var(--primary-accent-1));
}
 
#page-content .collapsible-block-unfolded-link:not(.uncool-collapsible *) a.collapsible-block-link:is(:hover,:focus)::after {
    background-color: hsl(var(--assist-color));
}
 
#page-content .licensebox:not(.uncool-collapsible *) {
    margin-block: 0.75rem;
}
 
#page-content .licensebox:not(.uncool-collapsible *) .collapsible-block-link {
    margin: 0;
    font-size: 0.875em;
}
 
div:is(.document, .darkdocument)::before,
div:is(.document, .darkdocument)::after {
    display: block;
}
 
.scp-image-block{
    border-bottom: none;
}
 
.scp-image-block .scp-image-caption {
    border-left: solid .25rem rgb(var(--basalt-undertone));
    border-right: solid .25rem rgb(var(--basalt-undertone));
}
 
div:is(.table1, .table2, .table3, .table4, .table5, .table6) .scp-image-block .scp-image-caption {
    border-left: solid .25rem rgba(var(--basalt-th-background-color), 0.75);
    border-right: solid .25rem rgba(var(--basalt-th-background-color), 0.75);
}
 
h1,
h2,
h3,
h4,
h5,
h6,
#page-title,
.meta-title,
#header h1 a span::before,
#header h1 a span::after {
    text-transform: uppercase;
    letter-spacing: -.075em;
}
 
div:is(.document, .darkdocument)::before,
div:is(.document, .darkdocument)::after {
    display: block;
}
 
.fncon {
    color: rgb(var(--basalt-main-text-color)) !important;
}
 
#page-content .coolquote {
    max-width: 50rem;
}
 
.coolquote {
    display: block;
    margin-inline: auto;
    margin-block: 1.4rem;
    padding: 0.9rem 1.1rem;
    position: relative;
    color: rgb(var(--basalt-main-text-color));
    background: unset;
    border-left: 0.3rem solid rgb(var(--general-border-color));
    z-index: 0;
}
 
.coolquote::before {
    content: "\F6B0";
    position: absolute;
    top: 0;
    left: 0.5rem;
    font-size: 5rem;
    font-family: bootstrap-icons;
    color: rgb(var(--basalt-bright-element-color));
    opacity: 0.2;
    z-index: -1;
    line-height: 1;
}
 
.coolquote hr {
    height: 0;
    margin: 0.2rem 0;
    padding: 0;
    border: unset;
    border-top: 0.1rem solid rgb(var(--general-border-color));
}
 
div.directorate_memo {
    --memo-heading: "THE ADMINISTRATIVE DIRECTORATE";
    --memo-logo: url(http://exotichive.wikidot.com/local--files/theme:aeternum-repositorium/directorate);
    --memo-color: var(--basalt-bright-element-color);
}
```

```
:root {
    --logo: url(http://exotichive.wikidot.com/local--files/theme:aeternum-repositorium/er);
}
```

```
#header h1 a span::before, #header h1 a span::after {
display: none;
}
 
#header h1 a::before {
width: calc(var(--base-header-height) * 0.3);
}
 
#header h1 a {
padding-right: calc(var(--base-header-height) * 0.1);
padding-left: calc(var(--base-header-height) * 0.35);
}
```

```
hr {
    display: flex;
    position: relative;
    height: 0.35rem;
    border-top: none;
    background: rgba(0, 0, 0, 0);
}
 
hr::before {
    content: " ";
    position: absolute;
    top: 0.1125rem;
    left: 0;
    width: 100%;
    height: 0.1rem;
    border-top: none;
    background: linear-gradient(10deg, rgba(0, 12, 105, 0.15) 0%, rgba(var(--basalt-bright-element-color)) 50%, rgba(105, 12, 0, 0.15) 100%);
    background-position: center center;
    -webkit-filter: blur(0.04rem);
    filter: blur(0.04rem);
}
```

rating: +18[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  

Info

[[include :backrooms-wiki:component:open cw=0]]  
change cw to 1 for cw  
[[include :backrooms-wiki:component:close]]

[Close](index.md)

![logo](http://exotichive.wdfiles.com/local--files/theme%3Aaeternum-repositorium/logo)

**On any page:**  
**[[include :backrooms-wiki:theme:aeternum-repositorium]]**

OVERVIEW

**Aeternum Repositorium** is [a remastered port](theme__aeternum-repositorium--14f81e17.md) of [the original Eternal Repository theme](theme__eternal-repository-theme--966bd7a0.md) by .

This port is designed to provide a modernized and more flexible visual framework, preserving the aesthetics of the original while improving it through **Basalt**’s streamlined design and updated CSS[1](javascript:;). It was developed as part of the **V for Valentin** team submission to the [Characterization Contest of 2025](charcon2025.md), specifically for the rewrite of [the Eternal Repository Hub](the-eternal-repository.md).

**Basalt** is an [aesthetic theme for the SCP Wiki](theme__basalt--089ed37f.md) by and functioning as an extension of **Bedrock**, a base theme created specifically for this project. Visit [Bedrock's wiki page](https://scp-wiki.wikidot.com/theme:bedrock) or its [home on GitHub](https://basalt-team.github.io/Basalt) for more info, including all of the CSS variables it offers.

SETTINGS

Add them to your [[include]] module to modify aspects of **Aeternum Repositorium**.

**[[include :backrooms-wiki:theme:aeternum-repositorium themesetting]]**

**[[include :backrooms-wiki:theme:aeternum-repositorium themesetting|another-themesetting]]**

All theme settings as of the current version:

- **wide=a**   Widens page
- **hidetitle=a**   Removes page title
- **centertitle=a**   Centers page title
- **oldlogo=a**   Applies the old Repository logo to the header
- **hideheadertitles=a**   Removes header titles
- **glowhr=a**   Replaces all horizontal rules with a glowing one

For example, this theme page uses the settings **wide=a** and **hidetitle=a**.

ELEMENTS

[[span class="st"]]   [[span class="specialtext"]]

[[span class="bt"]]   [[span class="bigtext"]]

**[[div class="blockquote"]]**

**[[div class="coolquote"]]**

**[[div class="notation"]]**

**[[div class="jotting"]]**

**[[div class="modal"]]**

**[[div class="smallmodal"]]**

**[[div class="papernote"]]**

**[[div class="floatbox"]]**

**[[div class="floatbox right"]]**

**[[div class="document"]]**

**[[div class="darkdocument"]]**

**[[div class="directorate\_memo"]]**

To create additional memos, include this in your CSS module and modify accordingly:

div.{MEMO NAME}\_memo {  
 --memo-heading: "{HEADER TEXT}";  
 --memo-logo: url({IMAGE URL})  
 --memo-color: {COLOR IN RGB};  
}

[Collapsible](javascript:;)

[Hide Collapsible](javascript:;)

[[collapsible show="Show" hide="Hide"]]  
Text here  
[[/collapsible]]

![logo](http://exotichive.wdfiles.com/local--files/theme%3Aaeternum-repositorium/logo)

Image block.

A horizontal rule can be created with 4+ hyphens "----" and extends across the whole page if it is not placed inside anything (eg. a blockquote)[2](javascript:;).

---

Titles can be created by putting between one and six pluses "+" at the start of a line.

# First Title

## Second Title

### Third Title

#### Fourth Title

##### Fifth Title

###### Sixth Title

- [*Tabulator*](javascript:;)
- [*Tabulation*](javascript:;)
- [*Long Tab*](javascript:;)
- [*This tab has a really long name for some odd reason. I wonder why? It is very strange.*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Very Cool Tab*](javascript:;)
- [*Empty Tab*](javascript:;)

This is a tab view.

Hey look, more text here.

How quaint.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a long tab. It contains a lot of text.

This is a tab with footnote[3](javascript:;)

😎

I miss when we could trust each other.

| This is a | table |
| --- | --- |
| You should know | how to make these |
| already | |
| But do you? | |

Footnotes

[1](javascript:;). It also just looks cooler and purple-er, or something.

[2](javascript:;). [[footnote]] Content [[/footnote]]

[3](javascript:;). This is another footnote.

| .table1 |
| --- |
| Green |
| Green |
| Green |

![logo](http://exotichive.wdfiles.com/local--files/theme%3Aaeternum-repositorium/logo)

**.table1**

| .table2 |
| --- |
| Blue |
| Blue |
| Blue |

![logo](http://exotichive.wdfiles.com/local--files/theme%3Aaeternum-repositorium/logo)

**.table2**

| .table3 |
| --- |
| Yellow |
| Yellow |
| Yellow |

![logo](http://exotichive.wdfiles.com/local--files/theme%3Aaeternum-repositorium/logo)

**.table3**

| .table4 |
| --- |
| Orange |
| Orange |
| Orange |

![logo](http://exotichive.wdfiles.com/local--files/theme%3Aaeternum-repositorium/logo)

**.table4**

| .table5 |
| --- |
| Red |
| Red |
| Red |

![logo](http://exotichive.wdfiles.com/local--files/theme%3Aaeternum-repositorium/logo)

**.table5**

| .table6 |
| --- |
| Purple |
| Purple |
| Purple |

![logo](http://exotichive.wdfiles.com/local--files/theme%3Aaeternum-repositorium/logo)

**.table6**

Header font is **POPPINS**.  
UI font is **SPLINE SANS**.  
Body font is **INTER**.  
Monospace font is **JETBRAINS MONO**.

---

Source: [https://backrooms-wiki.wikidot.com/theme:aeternum-repositorium](https://backrooms-wiki.wikidot.com/theme:aeternum-repositorium)
