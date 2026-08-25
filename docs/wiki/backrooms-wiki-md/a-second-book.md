---
title: "A Second Book"
source: "https://backrooms-wiki.wikidot.com/a-second-book"
retrieved_at: "2026-08-23T23:39:41+00:00"
license: CC-BY-SA-3.0
---

# A Second Book

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

# Book 1: Chapter II

Within a single home, a small girl sat solemnly, awaiting her father's return. She needn't worry about what her father may be doing at that moment. All she needed was for him to come home. She wandered about all day, playing with whatever may be available until she inevitably grew bored. At that moment, all that mattered was her father coming home.

What she didn't know was where her father was. Not too far away, her father was leaving the house of another maiden. Her father's hair wasn't combed over like it was when he left. It was shaggy and sweaty. The woman inside did not seem to mind, and she blew a single kiss when he walked out. The lady closed the door, and the man walked away.

He felt no remorse for the actions he just committed. He was more than aware of what he had done. Yet, despite all that, he continued walking. Inside of the bustling town, very little room was found to rest. The people walked by, not knowing where they came from, not knowing where they should go. They moved in a pack, never disturbing the perfect flow formed by everyone being inconvenienced at the same time. The strange system worked; however, no new people could join this strange world. Especially not an outsider such as her father.

He continued walking, impeding their perfect flow. Many commented on his hair, and the way he smelt of cheap perfume. Despite this, he continued his way home. He did not care for the others who commented on the way he walked. He ignored the way the elderly called him a heathen. In his eyes, he had done no wrong. So he walked, and he walked. Despite everything, he refused to stop

He pushed his way through the crowd with force. He was already running late for his supper. His wife was awaiting his return, to open the door with a fresh smile and a "welcome home, honey~" She did not know what her husband had done, but she was more than content not to know.

Everything in the world is held up by a gentle fabric for one single moment.

And then it all came crashing down.

---

"Honey? Is that you?"

The door to the house opened, and my father walked in. He closed the door behind him with a gentle thump. He made no attempt to call out to my mother. He simply walked past without hesitance. He jogged his way to the washroom, avoiding my mother's piercing gaze.

"Honey, oh honey. There you are darling! Dinner's almost ready."

"Okay honey! I'll be out in just… One moment."

I sat there, making no commentary. I had not expected the way my father went so quickly to the washroom. He seemed like he was about to burst. He did not look the same as he normally did. More afraid, more anxious of whatever may be on his mind. Despite that, I continued looking out at him. He went into the washroom, and I awaited his return.

In the meantime, I needed something to do. But what could I do whilst awaiting my father? I could do anything I needed to, but despite that, I still felt uneasy leaving the spot where I sat. Nevertheless, I chose to look out the window. Outside, snow flocked up and developed in an array of kaleidoscopic dreams. The snow fell without thought; it did as it wished. The snow was selfish; my father taught me that.

At that moment, my father came out of the washroom, much cleaner than normal.

"There's my proud son! Martha, did he do everything he needed to?"

"Yes Daryll, Sammy has finished all his chores, and he cleaned his room."

"That's great to hear!"

My mother's voice was soft, nice and easy to listen to. Her voice sang beautiful melodies, so feminine and sweet. Despite that, her voice definitely held force. If she told you to do something, you would do it. My father's voice was the other way around. My father's voice was loud. You could hear it from a mile away. The emantation made anyone immediately know he was a man through and through. Despite that, his voice was weak, unable to display confidence. I had it in between; both soft and sweet, yet carried no voice. My father didn't like that.

Sam. That was such a strange name. I never really liked it. It didn't suit me well; my father was the one one who chose it. But, it was still my name; it wasn't like I could change it.

Nothing ever suited me. Everything in this world rejected me. Well, not *everything*, but I never really felt in place before, and I doubt I'll feel in place for a while. In the meantime, I have a home to keep and a father to please. My mother was in the kitchen, cooking away on the stovetop. She was almost done, but I wanted to help her. My father always said it was a woman's place to cook, while the man does all the work outside. I still help my mother from time to time, but never when my father is home.

At that moment, my father walked towards me. Each stride he took was lengthy, just like mine.

"Hey champ, I got you something!"

I simply looked at him, no reaction in my face. The item he was holding was a wrapped box, with a few tiny folds here and there. The box was nothing special, but the heart behind it was what truly mattered. Regardless, it meant very little to me. The sentiment still held value, somewhere deep down.

"Oh cheer up~ Here, take it!"

I did as he said.

"Go on, open it!"

I did as he said, and I received a single bible. God's word never made much sense to me, but the meaning behind it was enough. The gift came from his heart, and his heart was pure. My mother was frowning gently. She seemed to have something deep within her heart to say, but her mouth could not convey the words she wanted me to hear so bad.

Inside of the box rolled out another gift. A slip of paper. It had a few marks on it. I picked it up gently, and my father looked excited. The note was written poorly, but it had heart behind it.

Red is for the way you bloom like a rose.

Orange is for the way you are my favorite, just like oranges.

Yellow is for the way you gleam brighter than the sun.

Green is for the way you grow every single day.

Blue is for how beautiful you are, even in the darkest hours.

Indigo is for the way you are unique, the small parts matter too.

Purple is for how royal you are, through and through.

You are a Rainbow.

It was cheesy, but it had a heart behind it, even if it was very little. Those two gifts were made with heart, and both deserved to be cherished. My mother looked even more guilty behind my father. It was as if something was holding her away from saying what she felt was important deep within her heart. Regardless, my father held only a smile on his face, signifying he was happy.

I stared once more at the bible for a moment. It had no signatures, no marks; all was perfect. My mother was a heavily religious person, and my father following in tandem. Despite that, I always found myself never being interested in that culture. It all didn't mean terribly much to me.

"You're always gonna be my little rainbow son."

My father's voice rang softly, not threatening in the slightest.

"I'm a rainbow?"

"Of course you are son, you'll always be our rainbow."

Something inside of me felt better, but another weighed deeply against me. Something in what he said always made me feel worse.

Regardless, I found the courage to reply.

"Thank you dad."

"I love you son."

"No."

Wait, why did I say that?

"Excuse me?"

"It's- It's nothing, my head hurts right now."

"I see. Maybe lay down for a bit while me and your momma talk?"

"No, no, I'm fine. I just need some air."

My father gave me that look of scrutiny he always does. The single look on his face which told a million stories from long ago, days in which he nearly lost his short life. It only lasted for a moment, then once more, he found himself smiling.

"Of course, just be back for the cake!"

"Cake?"

"Oh, don't be silly! Don't wander off to far!"

Cake? Why cake?

"O-Okay."

"That's my boy."

My father's hand came down on me suddenly, clapping my too-broad shoulders. A shiver went down my spine, every part of my body tingling.

I sat up gently, the way that always caused my father to sneer. For some reason, he didn't do it today. I brushed it off, took my coat, and began walking towards the door. I was approaching it and nearly opened it when I heard my mother whisper in the distance.

"That was mine."

It was so faint it almost didn't exist. The single bible laid in my hand, the note pocketed and forgotten. I knew my mother was referring to it, and my father made no comment. I looked away, then walked out the door without another passing word.

My father's voice rang inside the house. Clearly something had upset him. Regardless, I ignored it. It happens all the time anyways.

As I began to wander, I let my mind wander astray. Many thoughts went through my head, a life where I was skinnier, a life where I felt more free, a life-

No, not this again. I can't be thinking like this again. I began to wander closer towards the forest, the one you could see in the window. Beyond those trees lay more trees, hidden away behind the loose barriers made by the initial trees.

The entire world was flipped onto itself, but it all stayed the same. When everything is different, everything suddenly becomes boring. You always need a bit of consistency in life for it to be unique. If everything is unique, then wouldn't that make everything so similar, by then making it boring? But when that happens, isn't that the new "normal?" Many questions went through my mind as I walked. The stolen bible in my hand was one-of-a-kind, yet I felt no use for it. My mother deserved it more, I can tell it was intentionally for her, or maybe it was for me and from her?

---

The sun began setting, and the first drop of rain came down. Deep within the forest, I found myself wandering with no trace of direction nor reasoning. The entire world was spinning onto itself, slowly forming new areas to explore, new worlds forming deep within my head.

*"overactive imagination!"* My father would say whenever I brought up the strange things I saw. Even though I knew it was fake, I couldn't help but experience the surrealism, even if the world rejected that platter onto me. This world didn't want me, it didn't *need* me.

But I couldn't get rid of it, and it could never ever get rid of me. A world which rejected what it created is a stupid world indeed.

No matter how hard I tried, I couldn't get away from this world. I could get away from my parents, my problems, even my own life. However, no matter what I did, this world would always know me as "Sammy", and this world would never let that go.

Suddenly, a single tear went down my cheek, without me noticing. That single tear held deep weight within it, never letting go of the burden it held onto itself. No matter how hard I tried, I couldn't get over the overbearing weight which was holding me down so deep. Another tear came, then another. Soon, my entire face showed the burden of a flood; no longer did my eyes feel like holding back my heart.

Then everything around me warped more and more. The forest grew eyes and the trees grew knees. The world around me *definitely* wasn't normal, and it only made me feel worse.

Then everything went still. Oh so very still.

The single trees around me no longer felt warped. They formed a home deep within me. They cradled me, no longer holding the same burden they did before. They did not hold me captive, they held me with only love.

This world wasn't the same world.

*But is that really a bad thing?*

The forest warped around me; everytime I tried to approach the branches, they would move just for me. It's mesmerizing, seeing those delicate trees form around themselves, never conflicting from their intended purpose. All they had to do was move for me, they had nothing beyond that. But I needed to get home, and I did not know how.

The trees seemed to respond to that, and suddenly, the branches near me opened up. They opened a gate, a single gate, and my house was visible. It was as if I never entered this strange world, the entirety I could leave behind.

Despite that, something didn't feel right with leaving this plane of existence. I wanted to leave; my father looked worried inside the house. My whole life was right there; I could turn around, or I could leave it.

I sat down, staring at my home. It had a look to it, a strange look, but it wasn't a bad one. It was a nice house, it once held me a home, and I once resided there for shelter. But this world was not for me, and that house was no longer mine.

I stood up, turned around, and walked away. The forest closed gently behind me. I wandered once more. The world didn't change for me; I changed for it. I didn't want to have to ever do that again, and the forest understood that. The forest guided me to where I needed to go.

I eventually reached a clearing. A single book lay down upon the floor, open to a page. At first, I was afraid of approaching it. However, the book didn't push me towards it; it simply lay there, neither showing emotion nor scars. The entire world stood still for that moment, the trees no longer moving to my will; yet I felt no need to go towards them any longer.

It had very little content upon it. All that lay upon it lay 5 words.

It's time to come home.

A line lay at the bottom, beckoning me to come near. There was no pen, nor was there no ink, but it required neither. Suddenly, a single phrase appeared once more.

Do you want to go home?

I sat there, staring. I did not know what to do. The world started warping again, but suddenly, I realized.

I do want to go home.

And that was when it all started.

The world went black, and I fell asleep faintly upon the forest depths.

![darknight](http://backrooms-wiki.wikidot.com/local--files/a-second-book/darknight)

**«** [Genesis](genesis.md) **|** Gift 1: The Bible **|** [Leviathan Rage](https://backrooms-wiki.wikidot.com/leviathan-rage) **»**

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[A Second Book](a-second-book.md)" by yoyoflux, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/a-second-book](a-second-book.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/a-second-book">A Second Book</a>" by yoyoflux, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/a-second-book">https://backrooms-wiki.wikidot.com/a-second-book</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Name:** darknight  
> **Author:** Michal Klajban  
> **License:** CC-SA-BY 4.0  
> **Source Link:** <https://commons.wikimedia.org/wiki/File:View_of_a_frosty_evening_through_a_window_on_a_Scottish_farm.jpg>  
> **Additional Notes:** image edited by

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/a-second-book](https://backrooms-wiki.wikidot.com/a-second-book)
