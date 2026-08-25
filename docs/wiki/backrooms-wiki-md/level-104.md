---
title: "Level 104 - \"The Edge of the World\""
source: "https://backrooms-wiki.wikidot.com/level-104"
retrieved_at: "2026-08-23T23:37:47+00:00"
license: CC-BY-SA-3.0
---

# Level 104 - "The Edge of the World"

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
/* Caslon OS font import */
@import url('https://fontlibrary.org/en/face/caslon-os');
/* Neo Euler font import */
@import url('https://fontlibrary.org/en/face/euler-otf'); 
/* Libre Baskerville font import */
@import url('https://fontlibrary.org/en/face/libre-baskerville');
 
:root {
    /* Header */
    --logo-image: url("http://backrooms-wiki.wdfiles.com/local--files/theme%3Apomona/pomona_header");
 
    /* Typefaces */
    --body-font: 'LibreBaskervilleRegular', serif;
    --UI-font: var(--body-font);
    --header-font: 'Caslon OS', serif;
    --title-font: 'NeoEulerMedium', serif;
    --mono-font: Courier, Consolas, monaco, monospace;
 
    /* Colors */
    --pale-gray-monochrome: 240, 233, 227; /* EDITED */
    --gray-monochrome: var(--leaf); /* EDITED */
    --pale-accent: var(--cherry); /* EDITED */
    --bright-accent: var(--leaf-light); /* EDITED */
    --medium-accent: var(--leaf); /* EDITED */
    --alt-accent: var(--peach); /* EDITED */
 
    /* extra colors, ADDED */
    --leaf: 67, 99, 23;
    --leaf-light: 128, 155, 75;
    --cherry: 194, 36, 55;
    --grape: 99, 21, 44;
    --peach: 239, 125, 85;
    --wood: 157, 128, 97;
 
    /* Swatches */
    --hover-link-color: var(--grape);
 
}
 
/* top bar */
#top-bar {
  --dropdown-bg-color: var(--gray-monochrome), 0.9; /* EDITED*/
}
 
/* tabview tab colors, ADDED */
#main-content {
    --tabs-hover-bg: var(--leaf-light);
    --tabs-selected-bg: var(--medium-accent);
    --tabs-selected-outline: var(--medium-accent);
    --tabs-bottom-border-color: var(--wood);
    --footnotes-footer-colorbar-color: var(--peach);
    --footnotes-footer-title-bg-color: var(--peach);
}
 
/* Dots */
#skrollr-body, #container {
    background-image: none; /* EDITED, dots removed */
}
 
/* Header Image */
#header::before {
    background-size: auto 10rem; /* EDITED, usually 16rem */
    background-position: center;
    background-repeat: no-repeat;
    opacity: 0.8; /* EDITED, usually 0.4 */
}
 
/* Div Quotes */
.styled-quote {
    border-left: solid 6px rgb(var(--leaf));/* EDITED */
}
 
.dark-styled-quote {
    background: rgb(var(--dark-gray-monochrome));/* EDITED */
    border-left: solid 6px rgb(var(--leaf-light)); /* EDITED */
}
 
/* custom divs, ADDED */
.cherry-box {
    color: rgb(var(--black-monochrome));
    background: rgba(var(--cherry), 0.2);
    padding: 0.01rem 1rem;
    margin: 0.5rem 0;
    box-shadow: var(--quote-shadow);
    border: 4px rgb(var(--cherry)) solid;
}
 
.grape-box {
    color: rgb(var(--black-monochrome));
    background: rgba(var(--grape), 0.2);
    padding: 0.01rem 1rem;
    margin: 0.5rem 0;
    box-shadow: var(--quote-shadow);
    border: 4px rgb(var(--grape)) solid;
}
 
.peach-box {
    color: rgb(var(--black-monochrome));
    background: rgba(var(--peach), 0.2);
    padding: 0.01rem 1rem;
    margin: 0.5rem 0;
    box-shadow: var(--quote-shadow);
    border: 4px rgb(var(--peach)) solid;
}
 
.wood-frame {
    color: rgb(var(--black-monochrome));
    background: rgb(var(--white-monochrome));
    padding: 0.01rem 1rem;
    margin: 0.5rem 0;
    box-shadow: var(--quote-shadow);
    border: 0.8rem rgb(var(--wood)) ridge;
}
 
/* Tab Gap */
.yui-navset .yui-nav {
    column-gap: 2px; /* EDITED */
}
 
/* image block borders, ADDED */
div.scp-image-block img.image {
   border: 0.8rem rgb(var(--wood)) ridge;
   box-sizing: border-box;
}
 
div.scp-image-caption {
    margin: 0.5rem;
    padding: 0.5rem !important; /* why is the padding not even across the whole thing? */
}
```

[- Close](javascript:;)

rating: +35[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

I landed in Trinidad at a time when the New World was beginning to lose its wild charm.

This did not bother me. I came here to find fortune, not to make a name for myself. For a long time, I was content with dying in obscurity as long as my life was comfortable.

But as I grew older, the realization that I do not want to be forgotten washed over me abruptly. And so, I travelled. Europe. Africa. Asia.

But wherever I went, it seemed like everything quickly lost its untouched beauty. Once something is mapped, it becomes so small — so familiar.

Now, I no longer fear there being nothing new to find.

Now, I fear the absence of an end.

-Valerio, inhabitant of the Fortress

SURVIVAL DIFFICULTY:

4e

- {$one}.
- {$two}.
- {$three}.

# **Description**

Level 104 is a desolate wetland, the only notable landmark being the stone fortress found at its centre. Soft, black clay-like mud makes up the level’s bedrock, making traversing through it difficult without proper equipment.

The air has been described as musty and mouldy, with uncomfortably warm winds carrying the spores of the Emerald Rot. Respiratory protection must be worn, and all open wounds covered to avoid said spores. More information about the disease can be found in the section below.

One may find green crystals poking above the mud throughout the bog. These are the corpses of those affected by the Emerald Rot and should be avoided, as they are frequently targeted by the Collectors. Even if wanderers were willing to trade for them, the effort of dragging a cadaver is not worth the risk of encountering the entities.

The level is meteorologically active, with frequent warm acidic rainfalls. Taking shelter during such storms is a priority. Although basic protective equipment should be capable of withstanding the acid, the risk of sinking into the mud is increased.

Upon arriving in Level 104, the wanderer's primary goal should be reaching the Fortress as it is the safest location here. Not only is it elevated above the bog, but it also contains the level’s main exits and is staffed by friendly wanderers.

# **Bases, Outposts and Communities**

### The Fortress

The architecture of the Fortress resembles that of 15th-century Southern Europe — most notably found in the old states of the Italian peninsula. Despite this, modern electrical wiring powering the structure’s floodlights was implemented into the design. They remain constantly active and drain power from a yet-to-be-identified source, basking the structure in filthy yellow light.

Stone canals run throughout the Fortress, carrying tainted green water. Because of this, the structure's many rowboats lay abandoned by the shores, with them sometimes being scrapped for wood. There are some who still make use of the canals or even take the old boats into the greater swamp when the weather allows it, risking infection should their flimsy frame topple.

![Missing alt text.](https://backrooms-wiki.wdfiles.com/local--files/level-104/the_fortress.png)

The Fortress at night.

The Fortress is staffed by a group of wanderers originating from 16th-century Europe. They’ve established leadership based on elective oligarchy, with the chosen Council members being appointed to their positions for life.

Although coming from different social classes and cultural backgrounds, all members of the Fortress share several key characteristics:

- Their entry into the Backrooms took place in the year 1555.
- They were a member of an intellectual community interested in the occult.
- They follow a philosophy which calls for attempting to find the “edge of the world.”

Those inhabiting the Fortress speak what appears to be an amalgamation of different dialects of Latin. Through their encounters with other wanderers, many amongst their community have learned other languages and can translate for new arrivals. Keep in mind that when applying direct translation, the “Backrooms” are referred to as the “New World,” and the “Frontrooms” as the “Old World.”

Despite discouragement from the M.E.G, wanderers inhabiting the Fortress will periodically send out armed scouting parties into the swampland of Level 104. Their apparent reasoning for doing so is tracking down the elusive "edge of the world."

Rarely do such parties return, with most either dying from exposure, succumbing to the Emerald Rot, or being attacked by the Collectors.

It is my great conviction that our continuous struggle is a necessary one. Allow me to once again remind you what it is that we covet.

While it is known by many names, above all, it is a place of peace — [one formed from exotic metals and blue alabaster](blue-channel.md) — which lies beyond a great swamp guarded by the hedge knights of some long-forgotten order.

Like an infant instinctively taking its first breath, so did we feel a longing for this place before even learning that it existed.

And so, we must search on. We’ve already sacrificed too much.

*Alea iacta est.*

-Avraham, member of the Council

### The Asylum

The Asylum is a seemingly endless system of stone tunnels below the Fortress. Despite this, the structure remains spatially consistent, its stale acrid air carrying a faint smell of formaldehyde. Sections of the tunnels remain flooded, making them untraversable.

Iron cells are found scattered through the Asylum, each housing a single Collector — their hands clasped and bound with thick hemp rope. They are found sitting there, praying to shattered glass bottles. There is no known mechanism for opening the cells; a few of them are damaged, their bars bent and cracked.

As long as the Collectors found here are left unbothered, they are likely to simply ignore the presence of the wanderers. It appears to be a case of conditioning, with the entities seeing themselves as being unable to break the bars despite their immense strength. That being said, if a cage on the verge of breaking down is noted — whether due to erosion or a rare boldened Collector thrashing against it — it should be reported to the Fortress' inhabitants.

# **Emerald Rot**

Emerald Rot is a fungal disease prevalent on Level 104. The two most common vectors are airborne spores and coming in contact with the level's water. Although its exact mechanism is unknown, the Emerald Rot carries several consistent symptoms:

- blurred vision
- joint pain
- nausea
- flaking skin
- headaches

Early signs of the disease can be easily mistaken for mineral deficiency due to the illness draining metals from the victim’s body which are then used for the construction of the crystals.

Roughly 48 hours after the infection, discolouration of the skin will occur. This is accompanied by the breakdown of cartilage as it is encrusted by a layer of green silicate crystal geologically similar to emeralds.

What follows is the crystallization of the spinal cord and bone structure. Paralysis most often occurs by this stage. After 120 hours, a complete crystallization of the body concludes.

When the petrified victims are found by the Collectors, the entities will use silver-tipped needles to puncture a hole in their bodies, allowing internal liquids such as stomach bile and blood to drain. This leaves behind a hollow crystalline shell.

Despite a lack of biological vitality, signals akin to those sent out by the brain can be detected even months after a complete crystallization. As such, the victims are suspected to be conscious throughout and following the process.

# **Entities**

### The Collectors

Resembling armour-clad early renaissance soldiers, the Collectors roam the planes of Level 104 in search of victims of the Emerald Rot — earning them their name. The exact reason for doing so is unknown. Attempts at tracking the entities for an extended period of time have been unsuccessful due to the difficult terrain.

Physically, the autopsy of the Collectors proved them to be more insectoid, with their bascinet helmets unhinging to reveal a set of fleshy mandibles underneath. This Entity stands at roughly 4.3 m in height, although it commonly remains slouched and crawls by coordinating its many limbs — ranging from 4 up to 32. Its torso, neck, and arms are disproportionally long and appear atrophied.

Regardless of their numbers, Collectors have been noted to possess hemp rope bindings around some of their hands. Rare sightings report them attempting to remove said bindings, with their inability to do so causing great distress. Similar behaviour is noted when the long, felt patchworked cloaks that the entities use to cover their bodies are removed.

The Collectors are fiercely protective of the statues left behind by the victims of the Emerald Rot, lashing out against all those attempting to remove them from the level. When encountering wanderers, the Collectors will try to infect them with the disease by leaving many lacerations on their skin or forcing their bodies under the waterlogged soil.

They are one of the few entities which make me relieved to see a corpse. This is how you know that these pests already have something to grab. I suppose it's the instinctive human response of “Thank the Lord I am not that poor chap.”

-Andrew Gatlin, M.E.G Explorer

# **Entrances And Exits**

### Entrances

- Binding one's hands with a hemp rope in an iron cell on [Level 28](level-28.md) will bring you to one of the empty cells of the Asylum.
- Experiencing near-drowning anywhere in the Backrooms could result in you awakening in a free-floating rowboat found either in the Fortress' canals or deep into the level’s bog.

### Exits

- Passing through a door in the Asylum labelled with a "🜛" symbol will take you to the Silver Castle of [Level 73](level-73.md).
- Travelling through progressively cleaner sections of the Asylum connects it to [Level 183](http://backrooms-wiki.wikidot.com/level-183).
- Sinking in the level's swamp has a very slim chance of depositing you in a random wetland of another level.

---

« [Level 103](level-103.md) | Level 104 | [Level 105](level-105.md) »

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Level 104 - "The Edge of the World"](level-104.md)" by The Son of Man, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/level-104](level-104.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/level-104">Level 104 - "The Edge of the World"</a>" by The Son of Man, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/level-104">https://backrooms-wiki.wikidot.com/level-104</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** the\_fortress.png  
> **Author:**   
> **License:** [CC BY-SA 3.0](http://creativecommons.org/licenses/by-sa/3.0/)

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/level-104](https://backrooms-wiki.wikidot.com/level-104)
