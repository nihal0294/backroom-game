---
title: "Philia 1"
source: "https://backrooms-wiki.wikidot.com/fragment:philia-1"
retrieved_at: "2026-08-23T23:40:35+00:00"
license: CC-BY-SA-3.0
---

# Philia 1

|  |
| --- |
| [Fold](javascript:;)[Unfold](javascript:;)  Table of Contents  [Description](index.md)  [Appearance in Texts](index.md)  [Physical Description](index.md)  [Worship](index.md)  [Symbols](index.md)  [Relationships with Others](index.md)  [Humans](index.md)  [Gods](index.md)  [Fengári](index.md)  [Nunca](index.md)  [Allseer](index.md)  [Gudang](index.md)  [The Sisters Three](index.md)  [Gatekeeper](index.md)  [Modern Day](index.md) |

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

Philia

| **Philia** | |
| --- | --- |
| Goddess of love, motherhood and beauty. | |
| Member of [the Pantheon](the-pantheon.md) | |
| Senza_titolo_295_20231019185129.png | |
| *An ancient painting of **Philia** titled "Delicate Love".* | |
| **Status** | Alive |
| **Abode** | Unknown |
| **Animal** | [Dove](http://en.wikipedia.org/wiki/Dove), [Swan](http://en.wikipedia.org/wiki/Swan), [Lovebird](http://en.wikipedia.org/wiki/Lovebird) |
| **Flower** | [Rose](http://en.wikipedia.org/wiki/Rose), [Tulip](http://en.wikipedia.org/wiki/Tulip), [Carnation](http://en.wikipedia.org/wiki/Carnation) |
| **Level** | [Gardens of Bliss](https://backrooms-wiki.wikidot.com/gardens-of-bliss) |
| **Personal Information** | |
| **Parents** | None, *1st Generation* |
| **Relations** | All of the pantheon gods. (Friends) Fengári (Presumed partner) |
| **Champions** | None |

## Description

**Philia** was one of the [Goddesses](https://backrooms-wiki.wikidot.com/trimmed:phenomenon-10) of our ancient [pantheon](the-pantheon.md). Legends portray her as kind, loving, and helpful. Furthermore, some even describe her as playful and flirtatious, though motherly and compassionate. She was most known to help those who were soulmates fall in love, to help those who were unfortunate by giving them a new chance at life and to help those who were sickly and injured by healing them with her miraculous powers.

She was greatly adored by our ancient brothers, inspiring various artworks and monuments. [Hoofstad](level-51.md) and other ancient settlements were once home to various temples dedicated to her and her followers. Most monuments and traditions related to Philia have been preserved over the centuries. In fact, there has been a recent resurgence in interest in our ancient traditions among the newer generations, leading to a minor revival in the celebration of festivities.

## Appearance in Texts

Philia has appeared in many poems, scriptures and texts over the course of history. She was the protagonist of a long set of manuscripts titled "Love, passion and gentleness”, which mused about the concept and meaning of love. She also appeared in one of the longest stories of its time, titled "The fair divine lady". In it, she was depicted as a Goddess in disguise that assisted a woman known as Penelope to find her one true love. She has appeared in other minor poems and stories as well, which have unfortunately only been recovered in broken fragments or were completely lost to time.

## Physical Description

Philia may assume a variety of forms, primarily depending on the preferences of those around her. She most commonly manifests as a tall, pale, feminine humanoid figure with wavy pink hair, pink eyes, a long, flowing white or pink dress and golden or pink accessories. She also is often – though not always – depicted with large angelic wings and a bright thin halo above her head, adorned with flowers or a veil. Most representations of her in art or scriptures seem to vary depending on the creator’s own preferences.

## Worship

The main temple dedicated to Philia was known as "Amoria". It was a fairly large structure, constructed in marble and inhabited by several statues and neatly decorated pillars. At the center was an altar for offerings and gifts to the Goddess.

Since Philia was known to be against any act of violence, her followers would never commit animal sacrifices – instead offering objects symbolically related to her. First, worshippers would gather a clean basket, in which they would place various roses, carnations and tulips. Then they would place pearls across the flowers, followed by three feathers taken from the Goddess' associated animals. Lastly, they would place the basket underneath the altar and recite a short prayer. This ritual was done with the purpose of attracting luck in love and peace in life, or to wish for the health of someone in need, but also to express gratitude to the Goddess for her good deeds.

Other than rituals, many festivities were held in her honor. One in particular, known as "The Grateful Feast", was hosted to celebrate friendship and harmony. Our ancestors would organize great banquets for everyone to join in and eat, even the less fortunate, in honor of the kindness that was symbolic of the Goddess. All sacred animals to Philia were treated with utmost respect, as it was common belief that doing so would grant a blessing from her. It was also common to bring those animals to weddings as a good omen.

## Symbols

Philia had several objects, animals and plants that were associated with her:

- **Doves**, for being symbols of **marriage** and **peace**.
- **Lovebirds**, for being symbols of **eternal union** and **innocence**.
- **Roses**, **Tulips** and **Carnations**: for being all flowers related to **gentle or passionate love**.
- **Pearls** and **Quartzes** for being symbols of **beauty**.
- **Pomegranates** and **Strawberries** for also symbolizing **marriage** or **a love confession**.

## Relationships with Others

### Humans

The Goddess was always described to love human beings very much. She was known to find humans as curious beings who are intriguing and adorable. As a result, she always tried to spend as much time as possible near them.

Despite the gradual fallout between humans and Gods, Philia seems to have never been truly forgotten about or seen in a bad light by our ancestors. To this day, there are still those amongst us who worship her existence and wish for her proper return. Philia was also known to have had close relationships with certain humans, indicating that she saw them as equals. She was never said to have treated them any differently than she would her fellow Gods.

### Gods

#### Fengári

[Fengári](fengari-god-of-thoughts.md) was recognized as Philia's husband and devoted admirer. Their relationship was seen as a healthy and admirable one, and many aspired to it and saw it as a model to follow. Devoted followers of Fengári would write poems dedicated to Philia as a tradition, to represent the deep love the God showed to her. In return, Philia would bless followers of Fengári with great affection and long lasting good health.

After a certain point in time following the ancient wars, Fengári began disappearing from all forms of depictions, ceasing to be seen by Philia's side and having been forgotten by most. To this day, Philia and Fengári still have not been seen or depicted together ever since.

#### Nunca

[Nunca](komo-oide-and-philia.md) was considered to be Philia's adopted son, with manuscripts claiming that she helped raise him when he was just a young orphan. She was shown to deeply care for him and to adore him dearly, often taking part in his exhibitions and trickery to support him. Unfortunately, after Nunca's passing, it was rumored that she suffered from a great grief that lasted for various centuries, and possibly up until present time.

#### Allseer

[The Allseer](the-allseer.md) was said to be one of the Goddess' closest friends. It was said that Philia possessed a certain piece of knowledge from Allseer that nobody else had, but was sworn to secrecy. Following the Allseer' death, Philia was said to be overwhelmed by guilt for being unable to prevent what had supposedly been revealed to her.

#### Gudang

Philia referred to [Gudang](nostalgi-gaius.md) as a dear friend and often served as a muse and model for Gudang' s paintings and sculptures. She also tried to always accommodate her needs and wishes, trying to appease her in every way possible. After her disappearance, Philia began practicing painting and sculpting in her honor.

#### The Sisters Three

Philia was one of the few Gods who could properly spend time with all three [sisters](entity-194.md) properly; even the angry Kilian and despondent Ita. Legends say that she used to often visit them to help them deal with their struggles and try to make them all happy, which made them all trust her dearly and significantly helped them improve their mental health. Once they died, she kept a gem resembling each sister as an object of mourning.

#### Gatekeeper

Perhaps one of the Gods that Philia cherished the most. Philia had a special and playful friendship with [Gatekeeper](https://backrooms-wiki.wikidot.com/the-keymaster/offset/2). She was often described to enjoy his knowledgeable and wise nature. Our ancestors claim that they were often together, and that Gatekeeper would accompany Philia all over this reality and support her grand plans and hobbies. Gatekeeper's assassination crushed the Goddess' heart, and she never truly moved on from it.

## Modern Day

Philia reportedly still lives in the present day. She is known to be a well liked and popular entity, though most remain unaware of her connection to our religion and culture. She still continues her mission to assist human beings and take care of them, having not changed her behavior despite the passage of time. She often avoids questions about her past – perhaps out of grief, or fear of the return of [The Iron Fist](the-iron-fist.md).

---

Source: [https://backrooms-wiki.wikidot.com/fragment:philia-1](https://backrooms-wiki.wikidot.com/fragment:philia-1)
