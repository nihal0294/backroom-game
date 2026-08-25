---
title: "Unnumbered Entity - \"The Allseer\""
source: "https://backrooms-wiki.wikidot.com/the-allseer"
retrieved_at: "2026-08-23T23:35:01+00:00"
license: CC-BY-SA-3.0
---

# Unnumbered Entity - "The Allseer"

|  |
| --- |
| [Fold](javascript:;)[Unfold](javascript:;)  Table of Contents  [Appearance in Texts](index.md)  [Octavian Text](index.md)  [Physical Description](index.md)  [Worship](index.md)  [Brother Bartholomew's Canon](index.md)  [Physical Description](index.md)  [Symbols](index.md)  [Worship](index.md)  [Relationships with Others](index.md)  [Humans](index.md)  [Gods](index.md)  [Nunca](index.md)  [Philia](index.md)  [Others](index.md)  [Modern Day](index.md) |

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
/*=== LOST DOCUMENTATION THEME BY scutoid ===*/
/*=== Made for Backrooms Wiki, but take parts of this for use anywhere that uses Black Highlighter! ===*/
/*=== CC-BY-SA-3.0 as the day is long. ===*/
 
/*= Fonts =*/
/* Roboto Slab */
@import url('https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@100;200;300;400;500;600;700;800;900&display=swap');
/* Roboto */
@import url('https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap');
/* Roboto Mono */
@import url('https://fonts.googleapis.com/css2?family=Roboto+Mono:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;1,100;1,200;1,300;1,400;1,500;1,600;1,700&display=swap');
 
/*= Root =*/
:root {
    /* ===S-CSS-P INTEGRATION=== */
    --theme-base: "black-highlighter";
    --theme-id: "lost-documetation";
    --theme-name: "Lost Documentation Theme";
 
    /* ===HEADER ELEMENTS=== */
    --logo-image: url("http://backrooms-sandbox-2.wikidot.com/local--files/collab:lost-theme/deertest.png");
    --header-title: "Lost Legends";
    --header-subtitle: "Archival Initiative";
 
    /* ===TYPEFACES=== */
    --body-font: 'Roboto', Inter, Verdana, Geneva, "Helvetica Neue", Helvetica, Arial, sans-serif;
    --UI-font: 'Roboto', PTRootUI, -apple-system, system-ui, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen-Sans, Ubuntu, Cantrell, "Helvetica Neue", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
    --header-font: 'Roboto Slab', Inter, "Franklin Gothic Medium", "Franklin Gothic", "ITC Franklin Gothic", "Helvetica Neue", Helvetica, Arial, sans-serif;
    --mono-font: 'Roboto Mono', Recursive, Consolas, Monaco, monospace;
 
    /* ===STANDARD THEME COLORS=== */
   --white-monochrome: 255, 252, 231;
   --pale-gray-monochrome:  245, 218, 189;
   --light-gray-monochrome: 155, 101, 62;
   --gray-monochrome: 67, 102, 49;
   --dark-gray-monochrome: 45, 69, 33;
   --black-monochrome: 63, 66, 50;
   --bright-accent: 79, 120, 58;
   --medium-accent: 32, 18, 4;
   --dark-accent: 89, 58, 42;
   --pale-accent: 67, 42, 23;
 
   --link-color: 87, 148, 56;
   --visited-link-color: 168, 168, 36;
 
    --gradient-header: linear-gradient(rgb(var(--gray-monochrome)), rgb(var(--gray-monochrome)));
    --diagonal-stripes: none;
    --gradient-background: none;
    --gradient-topmenu-mobile: linear-gradient(rgb(var(--dark-gray-monochrome)), rgb(var(--dark-gray-monochrome)));
} 
 
/*= Image Block =*/
:is(.image-caption, .scp-image-caption) {
    width: unset !important;
}
 
:is(div.image-block,div.scp-image-block) {
    align-items: stretch;
}
 
:is(div.image-block,div.scp-image-block) img.image {
    width: 100% !important;
    border: 0;
}
 
/*= Div Boxes =*/
.darkblock {
    color: rgb(var(--white-monochrome));
    background: rgb(var(--dark-gray-monochrome));
    padding: 0.01rem 1rem;
    margin: 0.5rem 0;
}
 
.lightblock {
    color: rgb(var(--black-monochrome));
    background: rgb(var(--pale-gray-monochrome));
    padding: 0.01rem 1rem;
    margin: 0.5rem 0;
}
 
/*= Div Quotes =*/
 
.styled-quote {
    color: rgb(var(--black-monochrome));
    background: rgb(var(--pale-gray-monochrome));
    padding: 0.01rem 1rem;
    margin: 0.5rem 0;
    border-left: solid 6px rgb(var(--dark-gray-monochrome));
}
 
.dark-styled-quote {
    color: rgb(var(--white-monochrome));
    background: rgb(var(--gray-monochrome));
    padding: 0.01rem 1rem;
    margin: 0.5rem 0;
    border-left: solid 6px rgb(var(--dark-gray-monochrome));
}
 
/*= Nice scroll behaviour =*/
html {
    scroll-behavior: smooth;
}
 
/*= Page Content Fix =*/
#page-content {
    max-width: 100%;
    min-height: 170vh;
}
 
/* Header */
#header h2 span {
    opacity: 0.7;
}
 
/* Header for Mober */
@media only screen and (max-width: 56.25rem) {
    #header {
       background: none;
    }
 
    #header::before {
        content: "";
        position: absolute;
        height: 100%;
        width: 100%;
        left: 0;
        top: 0;
        background-image: var(--logo-image);
        background-size: auto 40vw;
        background-position: 105%;
        background-repeat: no-repeat;
        opacity: 0.4;
        filter: blur(3px);
    }
 
    #header h1 a {
        margin-top: -webkit-calc(((var(--header-height-on-mobile)/2)) - 3rem);
        margin-top: calc(((var(--header-height-on-mobile)/2)) - 3rem);
        margin-left: -webkit-calc(var(--header-height-on-mobile) - 5.625rem); 
        margin-left: calc(var(--header-height-on-mobile) - 5.625rem);
    }
 
    #header h2 span {
        margin-top: -webkit-calc(((var(--header-height-on-mobile)/2) + (var(--header-h1-font-size)/2) - .8rem));
        margin-top: calc(((var(--header-height-on-mobile)/2) + (var(--header-h1-font-size)/2) - .8rem));
        margin-left: -webkit-calc(var(--header-height-on-mobile) - 5.6rem);
        margin-left: calc(var(--header-height-on-mobile) - 5.6rem);
        line-height: 1;
    }
 
}
 
/*=== THE BIT THAT MAKES THE FUNKY LAYOUT ===*/
 
@media only screen and (min-width: 56.25rem) {
    /*= Root =*/
    :root {
        overflow-x: hidden;
        --sidebar-width-on-desktop: 21rem;
        --diagonal-stripes: none;
        --body-width-on-desktop: 100%;
    }
 
    /*= Make the topbar and header gradients not visible =*/
    body {
        background-size: 0, 0, 100% var(--background-gradient-distance);
    }
 
    /*= Put the header on the side =*/
    #container {
        grid-template-areas: "header content-wrap""header footer""header license";
        grid-template-columns: var(--sidebar-width-on-desktop) calc(100vw - var(--sidebar-width-on-desktop));
    }
 
    /*= Make the content wrap thing be over where the header is so that the sidebar can be under it =*/
    #content-wrap {
        width: 100vw;
        margin-left: calc(var(--sidebar-width-on-desktop) * -1 );
    }
 
    /*= Give padding to the main content that isn't just at the top, helps the flexibility of the layout =*/
    #main-content {
        padding: 1rem;
    }
 
    /*= Move the sidebar down, also change the box sizing to work as expected =*/
    #side-bar {
        margin-top: 100vh;
        box-sizing: border-box;
    }
 
    #side-bar > p {
        margin: 0;
    }
 
    /*= The header shit =*/
    #header {
        width: var(--sidebar-width-on-desktop);
        background: rgb(var(--gray-monochrome));
        z-index: 1;
        height: 21rem;
    }
 
    #header div[class*="top-bar"] > ul {
        width: var(--sidebar-width-on-desktop);
        flex-direction: column;
        height: auto;
        text-align: left;
    }
 
    .top-bar {
        height: fit-content;
        background: rgb(var(--dark-gray-monochrome));
    }
 
    #header div[class*="top-bar"] > ul > li ul > li {
        box-shadow: none;
    }
 
    #header h1 a {
        margin-left: 1.25rem;
        line-height: 1em;
        width: min-content;
    }
 
    #header h2 span {
        margin-top: 9rem;
        margin-left: 1.4rem;
    }
 
    #header div[class*="top-bar"] > ul > li > a {
        height: var(--topbar-height-on-desktop);
        box-sizing: border-box;
    }
 
    #header div#top-bar {
        margin-top: 10.75rem;
    }
 
    #header div[class*="top-bar"] > ul > li > a {
        height: var(--topbar-height-on-desktop);
        box-sizing: border-box;
        padding-left: 1.3rem;
        justify-content: left;
    }
 
    #header div[class*="top-bar"] > ul > li > ul {
        margin-top: 0;
        margin-left: 100%;
        min-width: unset;
    }
 
    #header div[class*="top-bar"] > ul:first-of-type > li:last-of-type > ul {
        left: unset;
        right: unset;
    }
 
    #search-top-box {
        margin-right: 1rem;
    }
 
    #login-status {
        left: 0;
        margin-left: 0;
    }
 
    #header::before {
        content: "";
        position: absolute;
        height: 10.75rem;
        width: 100%;
        left: 0;
        top: 0;
        background-image: var(--logo-image);
        background-size: auto 15rem;
        background-position: 9rem;
        background-repeat: no-repeat;
        opacity: 0.4;
        filter: blur(3px);
    }
 
    /*= Table of contents =*/
    #toc #toc-action-bar, #toc .title {
        display: none !important;
    }
 
    #toc #toc-list {
        max-height: unset;
    }
 
    #u-table-of-contents {
        position: absolute;
        top: 21rem;
        padding-left: 1rem;
        min-width: unset;
        width: 19rem;
        padding-right: 1rem;
        background: rgb(var(--gray-monochrome));
        height: calc(100vh - 21rem);
        left: 0;
    }
 
    #page-content div#toc {
        width: 19rem;
        min-width: 19rem;
        display: block;
        height: calc(100vh - 22.5rem);
        background: rgb(var(--toc-body-bg-color));
        overflow-y: scroll;
    }
 
    /* Shadow thing that gives a shadow to the header and sidebar in one */
    .shadowforsidebar {
        box-shadow: 0 0 .25rem 0 rgba(var(--swatch-tertiary-color),.8);
        position: absolute;
        top: 0;
        left: 0;
        height: 100%;
        width: var(--sidebar-width-on-desktop);
        pointer-events: none;
        z-index: -1;
    }
 
    /* Make the footer span the whole page */
    #footer, #license-area {
        margin-left: calc(var(--sidebar-width-on-desktop) * -1);
        width: 100vw;
    }
 
    /*= I have NO IDEA why this was broken =*/
    #footer .options {
        width: unset;
    }
 
    /*= When the body width is a percentage the edit buttons and shit break because it does maths on the value that need it to be rem or px. So here's a value subsituted in. =*/
    form#edit-page-form .wd-editor-toolbar-panel, form#edit-post-form .wd-editor-toolbar-panel, form#new-post-form .wd-editor-toolbar-panel, form#new-thread-form .wd-editor-toolbar-panel {
        --body-width-on-desktop: 45rem;
        margin: auto;
    }
 
}
```

[- Close](javascript:;)

User:BrthrJ/Sandbox

|  |  |
| --- | --- |
| [Home](index.md) » [Deities](the-pantheon.md) » The Allseer | rating: +17[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")     Info  this page has been cooking for a while, but it was going to be entirely different originally   ---   make more of these lost documentation pages, will ya pantheoners?   ---   [check this audio version from YouTube out!](https://youtu.be/rHRqlcv28_c?si=80eiu008mdJZwb-q)   ---   by your local faceless [scutoid](scutoid.md)ster!  [Close](index.md) |

## Unfinished Draft

### Please come back later!

Hello, brothers and sisters. I have been working hard to create a page on the ancient **Allseer**, using the newly uncovered Canon book and the Octavians now stored @ the Archive. I am currently awaiting review.

| **The Allseer** | |
| --- | --- |
| Goddess of sight, understanding, alchemy, and the pursuit of knowledge. | |
| Member of [the Pantheon](the-pantheon.md) | |
| IMG_0377.jpeg | |
| *An ancient drawing of **the Allseer**, unnamed and unattributed.* | |
| **Status** | Dead, reincarnated as [the Alchemist](the-alchemist.md). |
| **Abode** | [Level 51](level-51.md) |
| **Animal** | [Cat](http://en.wikipedia.org/wiki/Cat), [Owl](http://en.wikipedia.org/wiki/Owl) |
| **Tree** | [Willow](http://en.wikipedia.org/wiki/Willow) |
| **Level** | Unknown, potentially destroyed. |
| **Personal Information** | |
| **Parents** | None, *1st Generation* |
| **Relations** | Nunca *(Friend, Mentor to)*, Philia *(Friend)* |
| **Champions** | None |

**The Allseer** *([ɔːl ˈsiːə](http://en.wikipedia.org/wiki/H:IPAE))* is one of the [goddesses of the Pantheon](the-pantheon.md), well-known for her ability to see things clearer than any human. The cult of **the Allseer** was largely formed by our ancient brothers in reverence of her knowledge, which went farther than any possessed by humans, and in an attempt to learn more about the Backrooms. They built her a grand temple known as [the Panopticon](level-11.md), which stood tall until its corruption after the fall of the ancient Pantheon.

She was credited by our ancient brothers for creating the [Faceless Ones](entity-9.md).

# Appearance in Texts

**The Allseer** has appeared consistently in many pieces of ancient text. The main secondary text sources for **the Allseer** are:

## Octavian Text

The Octavian Texts[1](javascript:;) mention few details about **the Allseer**, though they do establish some basic traits which are consistent throughout later records. These are:

### Physical Description

According to the Octavian Texts, **the Allseer**:

- has olive skin;
- wears salmon pink garbs;
- has brown hair, and;
- creates flower crowns.

### Worship

The Panopticon was yet to be constructed during the time of the Octavian Text, and as such the worship of **the Allseer** was primitive and undeveloped. There was but one monthly worship cycle involving:

- the killing of an owl, standing for the pursuit of knowledge;
- the burying of the owl's eyes, standing for biology;
- the making of arrows with the owl's feathers, standing for physics;
- and finally the cooking of the owl's meat, standing for chemistry.

The owl would not be eaten, but buried among a bed of flowers[2](javascript:;). Although it is not stated, it is presumed that the flowers that the owl would be buried among were the same as **the Allseer** would have used for her flower crowns. No detailed floral records of the ancient paradise of the time are available.

## Brother Bartholomew's Canon

Brother Bartholomew's [divinely inspired](https://backrooms-wiki.wikidot.com/trimmed:the-pillar-scripture) Canon includes a book on **The Allseer**, and is the most detailed account of her to survive.

### Physical Description

The physical description in the book of **the Allseer** in Bartholomew's Canon lines up entirely with the version from the Octavian Texts.

### Symbols

The Canon likens **the Allseer** to:

- **Cats**, for being **wise**;
- **Owls**, for being **all-seeing** (this refers to some owls' ability to rotate their heads 270 degrees);
- **Willow Tree**, for being **wise** and **far-reaching**.

### Worship

There are no mentions of the earlier religious rites described in the Octavian Texts for **the Allseer** in her book.

The book of **the Allseer** set out the earliest plans and justifications for the building of the Panopticon, and is our main source for its internal structure. It sets out the idea for the temple as a ring-shaped garden with a tower in the middle from which all of the garden can be observed. The garden was supposed to have three levels, stacked atop each other[3](javascript:;), all visible from the central tower.

This garden would host religious rites and festivals. The book does not speak of any festivals in particular.

Due to her death, worship of the Allseer was not present in any further writing.

## Relationships with Others

### Humans

During the time of human subjugation to the gods of the Pantheon, the relationships between humans and gods were few and far between. That being said, **the Allseer** does seem to have cared deeply for humans, and been more on the side of self-determination and freedom for the human population.

### Gods

##### Nunca

One story recounts the relationship between Nunca and **the Allseer**. She refers to Nunca more formally than other characters, showing a unique respect for him. This respect was reciprocal, Nunca having shared a close friendship with her.

Their friendship ended following a revelation of her vision of the future, specifically that Nunca would soon die.

*The Allseer knew on that day that she could no longer keep this a secret. Flowers on her head wilted, eyes unobscured and uncovered[4](javascript:;), she approached him.*

*"My brother Nunca," asked she, "May we speak privately?"*  
*"Yes!" he proclaimed. "Talk to me."*

*The two ventured to the top of the highest peak in the village, where few ventured. Paths would never be beaten there before the village's end.*

*"My visions these past days have troubled me, as you know. One such vision concerns you, brother Nunca." she revealed to him.*  
*"Me?"*  
*"Soon, you will see the day of your own destruction. Light of the sky and of laughter will be too much for your eyes. We can do nothing."*

*Silence rang out. The peak's rickety willow calmed its rustling.*

*"…Thank you for telling me, I suppose. Do you know when?"*  
*"You have but a month, brother."*

She was correct.

##### Philia

The only other notable relation of **the Allseer's**, Philia knew her well. She was her primary confidant, not willing to burden Nunca with her worries.

*"It's magnificent." she[5](javascript:;) said, stepping back.*

*Their statue had been as beautiful as they had imagined. The flower crown was then laid upon her head as a final touch — solidifying its reality for the two of them.*

*"Philia, sister of mine… may we take a break from our labours? To speak, I mean." asked the Allseer, less than concerned with the sculpture.*  
*"Oh? Do go on, you know I will always remain here for you, sister."*

*The Allseer had always pitied Philia somewhat. She sensed betrayals in her future, yet saw her unequipped to handle them — a friend all too willing to bear the weight of a wolf leaning upon her for support, even as its claws dug into her. It appeared she would need to avail of this, though the very thought troubled her deeply. It mattered none at all.*

*"It is about…*

*…the [humans](the-iron-fist.md)."*

Though Philia had been warned of the upcoming massacre, she had been sworn to secrecy. It is unknown if she confronted the bastard Greyking or not, though this is unlikely.

##### Others

The ancient Pantheon often sought insight from **the Allseer**, asking her questions to varying degrees of success.

The final story written about **the Allseer** was an exchange between [Gatekeeper](https://backrooms-wiki.wikidot.com/the-keymaster/offset/2) and her for this exact purpose.

*The last human squirmed through the door, and the two were finally alone. The master of Access spoke hoarsely and carefully.*

*"I ask for your insight once again, sister." he coughed out.*  
*"Go on, I have little time to entertain you." she responded, with barely the energy to spend on this conversation.*  
*"How do I assure the loyalty of my worshippers? I have been… I am suspicious of them, I will admit."*

*This was not the sort of question she had been hoping for.*

# Modern Day

It is unclear what happened to **the Allseer** following the original massacre. This is the period in which texts begin mentioning her more infrequently, and all artistic depictions originated prior to this point.

She was killed by [the Iron Fist](the-iron-fist.md). This has been boasted by them for many years. It is not known exactly how they managed to capture and murder her, given her foresight and knowledge[6](javascript:;). According to them, she was one of the last to be killed of the original ancient Pantheon.

An indirect reincarnation of **the Allseer** exists today, [the Alchemist](the-alchemist.md). This occured 200 years ago, and is most likely related to her creation of the [Faceless Ones](entity-9.md).

Footnotes

[1](javascript:;). Which have been relocated out of their original location in [Level 8](level-8.md), and are now available for reading in full at the [Cygnus Archive](level-906.md).

[2](javascript:;). Though this rule may be broken in times of scarcity according to the text's instructions. This may have stood for the Allseer's kindness, though it is likely it was simply to conserve resources.

[3](javascript:;). The feasibility of this design has come into question as of recent, due to the lack of light reaching the lower levels.

[4](javascript:;). Original context unknown — likely not literal.

[5](javascript:;). *[Philia]*

[6](javascript:;). Many theories suggest it was some sort of tradeoff for a chain of events in the future, though nothing is written on the subject.

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Unnumbered Entity - "The Allseer"](the-allseer.md)" by scutoid studios, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/the-allseer](the-allseer.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/the-allseer">Unnumbered Entity - "The Allseer"</a>" by scutoid studios, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/the-allseer">https://backrooms-wiki.wikidot.com/the-allseer</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** The Allseer vase drawing  
> **Source Link:** <http://scutoidbox.wikidot.com/local--files/start/IMG_0377.jpeg>  
> **License:** [CC BY-SA 3.0](http://creativecommons.org/licenses/by-sa/3.0/)  
> **Author:**

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/the-allseer](https://backrooms-wiki.wikidot.com/the-allseer)
