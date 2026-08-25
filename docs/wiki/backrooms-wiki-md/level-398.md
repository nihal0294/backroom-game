---
title: "Level 398 - \"The Grove of Seasons\""
source: "https://backrooms-wiki.wikidot.com/level-398"
retrieved_at: "2026-08-23T23:39:15+00:00"
license: CC-BY-SA-3.0
---

# Level 398 - "The Grove of Seasons"

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

## Welcome

  
My dear human. I am so pleased to see that you are interested in the Grove. It is my home, the home of [my hunters,](entity-398.md) and the home of my kin.

Ah, did you think my hunters and I were the only ones who lived here? No, we are merely the ones who travel beyond the Grove, following our purpose of pushing you to your limits. The rest of my kin tend to stay home, content to indulge in the visitors we get. We have many names, all given to us by your kind. Gods. Demons. The Fair Folk. Monsters. Such quaint names for us all. But the one we are most partial to is Primordials. A name that harkens back to when life took its first breath. How very like you to come up with such a fitting name.

Regardless, when you come to the Grove, you become our guests. Hospitality is sacred to us, and no harm shall come to you in *most* places. Beyond the center, the forests become more wild. More untamed. I cannot guarantee there will be no stray [Hounds](entity-8.md) sniffing about or other, [more dangerous creatures.](https://backrooms-wiki.wikidot.com/out-of-season) Regrettably, there are also a few of my kin who do not care for the gifts you bring. They may kill you on sight, or they may attempt to bargain with you. They are capricious, their moods as fickle as the flames that bite at a fire's fuel. These outcasts do not represent all of us, but it would still be best for you to come to the Pavilion.

---

### The Pavilion

The Pavilion is both a space for congregation and trade and lies within the exact center of the Grove. You can find it beneath the tallest tree, the Heartree, which represents all of us within the Grove. Oh, how your kind describes it:

*"A kaleidoscope of color."*

*"A painting of reds, oranges, yellows, greens, blues, and pinks."*

*"The biggest fuckin' tree I've ever seen, goddamn!"*

Such poetry. Such delight in your surroundings. You fascinate me.

Regardless, every season has a claim to the tree, and no matter our squabbles, it is a place of neutrality and peace.

You may trade with humans who have taken up permanent residence here, as well as others of my kin. All trades are equal, enforced by me and the other three that govern the Grove. Any discrepancies or disagreements in the Pavilion will garner our attention, and even if you are a guest, we tolerate no misbehavior in in our midst. Unruly or violent guests will be ejected or **punished**.

Ah, it was requested by [a friend](only-a-mirror-one.md) that I add a small bit of information from a human perspective. I don't quite understand why she was compelled to write it, but she was quite insistent, saying it would cause less tension between our kinds.

Alright, so even though many Primordials in the Pavilion are polite and may even look human, don't forget: **they are not.** They don't use money to trade, preferring to barter one item for another. However, what you consider an item and what *they* consider an item is vastly different. They will take stories, locks of hair, names, memories, and anything else you can think to offer. You will get something that has an equal value in return, but you will *never* get the original thing back. So don't be stupid when making deals. Also, they don't understand hyperbole all the time, so make sure you are *extremely* specific with whatever you're trading. Too many people have lost arms and legs to them.

Also… the Pavilion doesn't cater to a purely human audience. You *will* see body parts on display. They try to be somewhat polite about it, so you're not going to see any human heads unless you go into a tented stall. But they're not going to stop selling human parts, and making a fuss about it is one of the easiest ways to get kicked out or punished. So just… don't think about it too much.

On the bright side, you can get almost anything here if you're willing to pay the price.

For most humans, all they need to know about is the Pavilion. But there are four forests beyond the Pavilion you can explore. Each one is defined by a season, and each one is governed by a Monarch. Should you want to do more exploring and make more contact with the other Primordials, I recommend you visit the Monarchs first to gain their blessing. As I've said before, there are a few of my kin who do not value the gifts you bring us. They have split away from us, preferring the company of other outcasts and the wild forests. However, they recognize anyone who carries the blessing of a Monarch and will avoid you if you have one. They have no desire to bring our **wrath** and **fury** upon their heads.

---

### Fall

![fall.jpg](https://backrooms-wiki.wdfiles.com/local--files/level-398/fall.jpg)

To the south of the Pavilion is the burgundy, scarlet, and golden forest of Fall. The forest is a beautiful place, as the sunlight glitters through the trees, but the real treasure is the library carved from stone by Monarch Rashad, our keeper of knowledge. Every story told by you is kept here. Every memory you give us is written down. Whatever question you have, Rashad and his archivists will answer.

He will greet you warmly, and will listen to any story you have to tell him.

Of all the Monarchs, Rashad is probably the hardest to communicate with. How do you talk with a being of living fire? Regardless, he is friendly to anyone who wants to contribute to the library.

It's… amazing how he does it. He calls up stone from deep within the level, and shears it into thin tablets. Then with a fiery finger, he carves every word you say into the stone. He links everything together with metal, despite the pain it causes him, and sets it into its place within the grand library. Despite being made of stone, the tablets are as light as any book.

Of course, not everything there is true, and not everything there was told by humans. Be careful what you read. Some knowledge is not meant for us. And whatever you do, don't destroy any book. Angering Rashad is like angering a wildfire, and he will burn you alive and bind your soul to your burning ashes.

---

### Winter

![winter.jpg](https://backrooms-wiki.wdfiles.com/local--files/level-398/winter.jpg)

West is Winter. I know your kind is not meant to live in the cold, at least not without clothing. So I cannot in good conscience recommend you travel there unprepared. But fear not. Monarch Althea can travel within her borders and beyond, alerting all of us when one of your kind falls into the Grove.

It is because of Althea that Winter is the most welcoming and warmest of seasons, and that the Grove can be as safe as it is for your kind. Unfortunately, you cannot see her. But take heart in knowing she is watching you.

If you do wish to explore Winter, merely ask her, and she will grant her blessing. She and a few other denizens of Winter delight in hiding surprises for your kind. Any hut you find there will have a bed for you to sleep free from nightmares and the warmest of furs. Winter is a place of rest, and I hope you recuperate well.

I don't know much about Althea. Together, she and Herne enforce the laws of the Grove. I'm… not completely sure how. I've never seen her. But you can *feel* her. Every so often, the wind will gently tuck your hair behind your ear. You hear the whisper of a laugh. A small gust brings you the smell of food or sounds of conversation, leading you back to where people are.

Troublemakers never see her coming. The wind will whip up, turning into a furious tornado of leaves. The tornado surrounds the troublemaker, and just as quickly as she's come, she's gone, leaving no trace but a leaf softly falling.

I don't know where they go. Just that they're gone. So don't bring her ire.

---

### Spring

![spring.jpg](https://backrooms-wiki.wdfiles.com/local--files/level-398/spring.jpg)

North of the Pavilion, you fill find the forests of Spring. They are lush and filled with burgeoning life. It is within these forests we cultivate our gardens and provide shelter for game to populate the rest of the Grove. You may find berries, fruit trees, and herbs growing all throughout spring. Take what you want, but no more than you need. We will know.

All of this is maintained and tended to by the Monarch of Spring, Titania. She crafts each plant with care, and treats each one as if they were her children. She is famous for her feasts and banquets, and would be happy to invite you should you impress her.

Yes, this is *the* Titania, the fairy queen from a Midsummer Night's Dream. Whether she existed before Shakespeare wrote about her or after doesn't matter, because now she is just as real as you and me.

Of all the Monarchs, Titania is the most fickle. Her moods swing wildly back and forth, just as quick to bless you as to kick you from her palace for a perceived slight. You can't rely on getting her blessing if you want to explore the forests of Spring. However, her domain is one of the more peaceful ones. She doesn't tolerate "disorder" or "ugliness" and frequently pushes the outcast Primordials out of her domain to prevent her gardens from being trampled on.

If you do want her blessing, she is obsessed with the art of weaving, having no ability herself to make clothes or other soft items. If you bring her clothes, clean ones, and especially fancy ones, she may be inclined to give you her blessing.

Whatever you do though, don't remind her that she kissed an ass. Her palace is strewn with the remains of English majors who couldn't keep their mouths shut.

---

### Summer

![summer.jpg](https://backrooms-wiki.wdfiles.com/local--files/level-398/summer.jpg)

My domain. My season. My home. It is a sprawling green forest, hot and humid like the season from your [origin.](the-frontrooms.md) As the Summer Monarch, it is my duty to bring all humans who wander into the Grove to safety. Summer is just east of the Pavilion, and my lodge is just a doorway away.

We are always happy to entertain guests. Before so many of you came to the Grove, it was my honor to host any human within my lodge. But I am delighted to report that [my](entity-398.md) [messages](herne-the-huntmaster.md) have reached you. So many of you have come to prove yourselves, to renew the relationship between my kin and your kind, that I had no choice but to provide you your own lodging. Some of you have even decided to stay permanently within the Grove, to trade and give us your gifts in exchange for respite from the other [realms](normal-levels-i.md). And [others](https://backrooms-wiki.wikidot.com/speednoclippers) of you relish the challenge we provide, and volunteer for the Hunt. My heart swells with emotion, full of joy for every person who has visited the Grove.

My treasured friends, my precious humans. It is my hope that describing my home has enticed you to visit. Always, the Grove will call to you. Always, you will be welcome.

We are waiting for you.

There's not much to say about Herne that he hasn't said already. He is the most open, the most inviting, and the most human of them all. But you can't forget that he's not.

He doesn't realize how cruel and destructive we can be.

I warned him to keep the Grove secret, to protect it from [those](the-b-n-t-g.md) [of](backrooms-robotics.md) [you](the-u-e-c.md) who would bring it and the Primordials harm. He smiled, in the way that he does, and assured me that they could defend themselves. I have no doubt they can.

But I know who we are. I know what kind of beings we are. I know what *we* do. We fight and destroy and hate. But I refuse to let our faults sully this place.

Know that I will defend this place with my teeth and hands and weapons. I will stand side by side with the Huntmaster, and *eliminate* those that threaten him, that threaten *us*, that threaten *this place.*

So watch yourself. The Wild Hunt aren't the only hunters here.

---

« [Level 397](https://backrooms-wiki.wikidot.com/level-397) | Level 398 | [Level 399](https://backrooms-wiki.wikidot.com/level-399) »

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Level 398 - "The Grove of Seasons"](level-398.md)" by BlueSignet, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/level-398](level-398.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/level-398">Level 398 - "The Grove of Seasons"</a>" by BlueSignet, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/level-398">https://backrooms-wiki.wikidot.com/level-398</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** Pink Spring Forest Wildflowers  
> **Author:** ForestWander  
> **License:** CC BY 3.0  
> **Source Link:** <https://commons.wikimedia.org/wiki/File:Pink-spring-forest-wildlfowers_-_West_Virginia_-_ForestWander.jpg>

> **Name:** In the forest near bagby hot springs  
> **Author:** Katie  
> **License:** CC BY 2.0  
> **Source Link:** <https://flic.kr/p/8R1c>

> **Name:** Foggy Autumn Forest 2nd  
> **Author:** Burtn  
> **License:** CC BY 3.0  
> **Source Link:** <https://www.deviantart.com/burtn/art/Foggy-Autumn-Forest-2nd-407014414>

> **Name:** Trees in the forest and the earth covered with snow  
> **Author:** Larisa Koshkina  
> **License:** CC0 Public Domain  
> **Source Link:** <https://www.publicdomainpictures.net/en/view-image.php?image=18046&picture=winter-forest>

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/level-398](https://backrooms-wiki.wikidot.com/level-398)
