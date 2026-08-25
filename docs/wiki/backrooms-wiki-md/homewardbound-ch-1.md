---
title: "Homeward Bound: Chapter 1"
source: "https://backrooms-wiki.wikidot.com/homewardbound-ch-1"
retrieved_at: "2026-08-23T23:39:10+00:00"
license: CC-BY-SA-3.0
---

# Homeward Bound: Chapter 1

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
/* root variables */
:root {
    max-width: 100vw; overflow-x: hidden;
    /* ===S-CSjavascript:;S-P INTEGRATION=== */
    --theme-base: "black-highlighter";
    --theme-id: "isolate-canon";
    --theme-name: "Isolate Canon";
 
    /* ===HEADER ELEMENTS=== */
    --logo-image: url("http://scutoidbox.wikidot.com/local--files/watch-your-back/isolate%20canon.png");
    --header-title: "the backrooms";
    --header-subtitle: "watch your back...";
 
    /* ===TYPEFACES=== */
    --body-font: Ubuntu Mono, Consolas, monospace;
    --UI-font: var(--body-font);
    --header-font: var(--body-font);
    --title-font: var(--body-font);
    --mono-font: var(--body-font);
 
    /* ===HEADER TITLES=== */
    --header-h1-font-size: 4rem;
    --header-h2-font-size: 2rem;
    --swatch-headerh2-color: var(--light-gray-monochrome);
 
/* ===STANDARD THEME COLORS=== */
    --white-monochrome: 255, 255, 255;
    --pale-gray-monochrome: 255, 255, 255, 0.8;
    --light-pale-gray-monochrome: 255, 255, 255, 0.5;
    --very-light-gray-monochrome: 255, 255, 255, 0.4;
    --light-gray-monochrome: 255, 255, 255, 0.5;
    --gray-monochrome: 0, 0, 0, 0.3;
    --dark-gray-monochrome: 0, 0, 0, 0.7;
    --black-monochrome: 0, 0, 0, 0.8;
 
    --pale-accent: 112,112,100; /* background */
    --bright-accent: 200, 200, 10; /* link */
    --medium-accent: 160, 160, 80;
    --dark-accent: 100, 100, 60;
    --alt-accent: 140, 140, 17; /* newpage link */
 
    --link-color: var(--bright-accent);
    --visited-link-color: {$visited-link-color};
    --newpage-link-color: var(--alt-accent);
 
    --swatch-background: var(--pale-accent);
    --article-image: url("http://scutoidbox.wikidot.com/local--files/desolation-backrooms/eggrooms3.jpg");
 
    /* ===GENERAL TEXT COLORS=== */
    --swatch-text-dark: var(--black-monochrome);
    --swatch-text-light: var(--white-monochrome);
    --swatch-text-general: var(--swatch-text-light);
    --swatch-important-text: var(--bright-accent);
 
    /* ===MENU COLORS=== */
    /* ===MENU BACKGROUND COLORS=== */
    --swatch-menubg-color: var(--white-monochrome);
    --swatch-menubg-light-color: var(--pale-gray-monochrome);
    --swatch-menubg-medium-color: var(--dark-gray-monochrome);
    --swatch-menubg-medium-dark-color: var(--gray-monochrome);
    --swatch-menubg-dark-color: var(--gray-monochrome);
    --swatch-menubg-black-color: var(--black-monochrome);
    --swatch-menubg-hover-color: var(--black-monochrome);
 
    /* ===MENU TEXT COLORS=== */
    --swatch-menutxt-dark-color: var(--black-monochrome);
    --swatch-menutxt-light-color: var(--white-monochrome);
    --swatch-menutxt-general-color: var(--swatch-menutxt-dark-color);
 
    /* ===SECONDARY & TERTIARY COLORS=== */
    /* Editing these will edit a vast majority of theme elements. Useful for making dark themes */
 
    /* Colors for Secondary & Tertiary items like Blockquote and YUI Tabs */
    --swatch-secondary-color: var(--swatch-menubg-dark-color);
    --swatch-tertiary-color: var(--swatch-menubg-light-color);
    --swatch-alternate-color: var(--medium-accent);
 
    /* Text Colors for Secondary & Tertiary items like Sidebar Headers and Top-Bar Menu Text */
    --swatch-text-secondary-color: var(--swatch-menutxt-light-color);
    --swatch-text-tertiary-color: var(--swatch-menutxt-light-color);
 
    /* ===STRUCTURAL MEASUREMENTS=== */
    --header-height-on-desktop: 12rem;
    --header-height-on-mobile: 12rem;
    --header-width-on-desktop: 40rem;
    --body-width-on-desktop: 45rem;
    --topbar-height-on-desktop: 1.9rem;
 
    /* ===SIDEBAR BUTTON=== */
    --toggle-button-bg: rgb(var(--gray-monochrome));
    --toggle-border-color: transparent;
    --toggle-border-width: 0;
    --toggle-icon-color: rgb(var(--white-monochrome));
    --toggle-roundness: 25%;
 
}
 
/* background */
 
#skrollr-body {
    background-color: rgb(var(--swatch-background));
}
 
#skrollr-body::before {
    content: "";
    position: fixed;
    background-image: linear-gradient(to bottom, transparent, rgb(var(--swatch-background))), var(--article-image);
    background-size: 100% 100%, cover;
    width: 100vw; height: 100vh;
}
 
#container-wrap-wrap::before {
    content: "";
    position: fixed;
    width: 100vw; height: 100vh;
    -webkit-backdrop-filter: blur(13px);
    backdrop-filter: blur(13px);
} 
 
@media only screen and (min-width: 56.25rem) {
 
/* main content */
#main-content {
    padding: 0.5rem 1rem;
    margin: 3.5rem auto 1.5rem auto;
    background: rgba(var(--gray-monochrome));
    --swatch-background: 0,0,0,0;
    grid-template-areas: "action-area-top action-area-top action-area-top action-area-top action-area-top action-area-top""page-tags page-tags page-tags page-tags page-tags page-tags""page-title page-title page-title page-title page-title page-title""breadcrumbs breadcrumbs breadcrumbs breadcrumbs breadcrumbs breadcrumbs""page-content page-content page-content page-content page-content page-content""page-info-break page-info-break page-info-break page-info-break page-info-break page-info-break"". . pwatch pwatch pwatch pwatch"". . pinfo pinfo pinfo pinfo""options-1 options-1 options-1 options-1 options-1 options-1""options-2 options-2 options-2 options-2 options-2 options-2""pbottom pbottom pbottom pbottom pbottom pbottom""action-area-btm action-area-btm action-area-btm action-area-btm action-area-btm action-area-btm";
}
 
/* topmenu */
#header div[class*="top-bar"] > ul {
    background: rgba(var(--gray-monochrome));
    border-radius: 0.75rem;
    padding: 0 1rem;
    box-sizing: border-box;
}
 
#header div[class*="top-bar"] > ul > li > a {
    border-left: 1px dotted rgb(var(--white-monochrome));
}
 
#header div[class*="top-bar"] > ul > li:first-of-type > a{
    border: none;
}
 
/* make the login info go to the actual screen edge */
#header { 
     position: static; 
}
 
/* border under topmenu */
#header::after {
    content: "";
    position: absolute;
    height: 1px;
    background: rgba(var(--pale-gray-monochrome));
    width: 60rem;
    left: calc(calc(100vw - 60rem) / 2);
}
 
/* header logo */
#header {
   background-image: none;
}
 
#header::before {
    content: ""; width: 100%; height: var(--header-height-on-desktop);
    position: absolute; top: 0; left: 0;
    background: var(--logo-image); opacity: 0.25; background-position: center bottom;
    background-size: auto calc(var(--header-height-on-desktop) - 2rem);
    background-repeat: no-repeat;
}
 
#header div#top-bar {
    font-size: 1rem;
}
 
}
 
/* tags */
#main-content .page-tags {
    box-shadow: none;
    padding: 0;
    margin: 0;
    font-size: 1rem;
}
 
#main-content .page-tags::before {
    display: none;
}
 
#main-content .page-tags span {
    display: inline-flex;
    padding-top: -1px;
    font-size: inherit;
}
 
#main-content .page-tags span::before {
    color: rgb(var(--swatch-text-general));
    content: "TAGS:"
    font-weight: bold;
}
 
@media only screen and (min-width: 56.25rem) {
 
/* title */
#page-title, .meta-title {
    margin: 0;
    margin-top: 0.5rem;
    font-size: 2.5em;
}
 
/* center header */
 
#header :is(h1, h2) {
    width: 100%;
    max-width: var(--header-width-on-desktop);
    display: flex;
}
 
#header h1 a {
    margin: 4rem auto;
}
 
#header h2 span {
    margin-left: unset;
    font-size: 0;
    margin-top: 7.5rem;
    align-content: center;
    width: 100%;
    text-align: center;
}
 
#header h2 span::before {
    font-size: var(--header-h2-font-size);
}
 
}
 
/* buttons */
div[id*=page-options-bottom]:not(.page-rate-widget-box):not(#search-top-box-form)>a.btn {
    padding: 3px;
    box-shadow: none;
    flex-basis: 7rem;
}
 
div[id*=page-options-bottom]>a:after {
    content: none;
}
 
/* removing --swatch-background in places */
 
form#edit-page-form table.form:first-of-type tr:focus-within td:first-of-type, form#edit-post-form table.form:first-of-type tr:focus-within td:first-of-type, form#new-post-form table.form:first-of-type tr:focus-within td:first-of-type, form#new-thread-form table.form:first-of-type tr:focus-within td:first-of-type {
    color: rgb(var(--pale-gray-monochrome));
}
 
form#edit-page-form .edit-page-bottomtable tr > td:nth-of-type(1) > div:nth-of-type(1):focus-within::before, form#edit-post-form .edit-page-bottomtable tr > td:nth-of-type(1) > div:nth-of-type(1):focus-within::before, form#new-post-form .edit-page-bottomtable tr > td:nth-of-type(1) > div:nth-of-type(1):focus-within::before, form#new-thread-form .edit-page-bottomtable tr > td:nth-of-type(1) > div:nth-of-type(1):focus-within::before {
    color: rgb(var(--pale-gray-monochrome));
}
 
/* mobile */
 
@media only screen and (max-width: 56.25rem) {
 
:root {
    --header-h1-font-size: 6vw;
    --header-h2-font-size: 3vw;
}
 
#main-content > *, #main-content > * ~ * {
    max-width: var(--body-width-on-mobile);
}
 
#header :is(h1, h2), #top-bar {
    max-width: unset;
}
 
#header div#top-bar {
    max-width: unset;
}
 
#header div[class*="top-bar"] > ul {
    max-width: unset;
}
 
#content-wrap {
    background: rgba(var(--gray-monochrome));
}
 
#main-content {
    --swatch-background: 0,0,0,0;
    grid-template-areas: "action-area-top action-area-top action-area-top action-area-top action-area-top action-area-top""page-tags page-tags page-tags page-tags page-tags page-tags""page-title page-title page-title page-title page-title page-title""breadcrumbs breadcrumbs breadcrumbs breadcrumbs breadcrumbs breadcrumbs""page-content page-content page-content page-content page-content page-content""page-info-break page-info-break page-info-break page-info-break page-info-break page-info-break"". . pwatch pwatch pwatch pwatch"". . pinfo pinfo pinfo pinfo""options-1 options-1 options-1 options-1 options-1 options-1""options-2 options-2 options-2 options-2 options-2 options-2""pbottom pbottom pbottom pbottom pbottom pbottom""action-area-btm action-area-btm action-area-btm action-area-btm action-area-btm action-area-btm";
}
 
#top-bar {
    -webkit-backdrop-filter: blur(13px);
    backdrop-filter: blur(13px);
}
 
}
 
/* blockquote */
:is(blockquote, .blockquote, div.blockquote, [class*="blockquote"]) {
    background-color: rgb(var(--gray-monochrome));
}
 
/* footnotes */
.hovertip {
    -webkit-backdrop-filter: blur(10px);
    backdrop-filter: blur(10px);
}
 
.footnotes-footer a[href*="javascript"]::before {
    display: none;
}
 
.footnotes-footer a[href*="javascript"], .footnotes-footer a[href*="javascript"]:visited {
    color: rgb(var(--link-color));
    min-width: unset; width: 1ch;
}
 
/* owindow */
.infobox, #u-infobox, .odialog-shader, #odialog-container div.owindow {
    -webkit-backdrop-filter: blur(13px);
    backdrop-filter: blur(13px);
}
 
/* tags */
#main-content {
    --pagetags-text-color: var(--pale-gray-monochrome);
    --pagetags-text-hover-color: var(--dark-gray-monochrome);
}
 
.page-tags span::before {
    content: "TAGS:";
    font-size: 90%;
    display: inline-flex;
    align-items: center;
}
 
#main-content .page-tags span a:not([href^="/system:page-tags/tag/_"]), #main-content .page-tags span a:visited:not([href^="/system:page-tags/tag/_"]) {
    margin: 0;
    font-size: 90%;
}
 
:is(div.image-block, div.scp-image-block) :is(.image-caption, .scp-image-caption) {
    --wght: 600;
    box-sizing: border-box;
    width: 100%;
    padding: .5ex .5ch 1ex;
    background-color: rgb(var(--swatch-secondary-color));
    font-size: .9em;
    font-weight: var(--wght);
    line-height: 1.25;
    text-align: center;
    width: unset !important;
}
```

[- Close](javascript:;)

rating: +49[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  

Info

Special thanks to , , and for the support and crit. Y'all are amazing.

Special thanks to Scutoid for letting me use their Desolation Canon, please check out their work!

Posted with Greenlight Exemption

[Close](index.md)

I sat stunned as the police systematically ripped apart the home I had spent a decade building with my wife, the dull twinkling of red and blue lights washing over them while they upturned every corner of my home. I fidgeted absentmindedly with my wedding ring, a silvery tungsten band Mia had chosen because she liked how it sparkled. I could see the shy smile she gave me on our first date, and I remembered how incredible she looked on our wedding day.

"Sir?"

I snapped out of my reverie. A young detective stood before me, a tan young man with an almost stereotypical brown trench coat and fraying jeans. "Yeah", I replied. I tried to subtly wipe away the drying tear from my cheek as I looked up into his eyes.

"You said your wife has been missing for over twenty-four hours?" I shook my head in disbelief. "Yes, she didn't come home yesterday. She told me she had an errand to run, and her car is gone." The detective nodded as he scribbled notes into a small pocketbook.

I rubbed my eyes with my palms, the itch of tears returning to me. The detective nodded. "Did your wife say or do anything out of the ordinary before she vanished?" I also nodded, almost instinctively, "I think she was looking for something… someplace, I guess." I rubbed my temple, "I don't know, she wouldn't talk about it when I asked."

He shot me a puzzled glance, pulling out a white handkerchief from the front pocket of his coat and dabbing his forehead. "What was it?" He asked.

"She called it the Backrooms, but she really didn't seem like she wanted to talk about it," I replied, finally coming up with something.

"Back…rooms? Does she work in a warehouse or office building?"

"No," I replied, "she's a school teacher, an art teacher."

"Robert!" A female officer shouted from my wife's studio, making both of us jump. The woman poked her head out through the door frame. "You gotta see this."

---

The art studio had been torn apart, and Mia's painstakingly crafted paintings were scattered across the floor. Her life's work deserved better.

My attention was immediately drawn to the walls where the paintings were once hung, monuments to her effort and skill. What remained was what looked like a crime board from a procedural TV show. Images of her missing sister and random other people were stapled to the walls; they were connected with red strings to what looked like photos of abandoned buildings. Hundreds of sticky notes filled with my wife's handwriting were stuck all over the pictures with a disorganized flair that distinctly belonged to Mia.

The officer shook her head and said, "Robert, I've looked up some of these names. They're all missing persons." The detective scanned the walls, his head following the trails of strings between the images.

"James, have you seen this before?" I shook my head, stunned by the revelation of Mia's obsession.

"I have no idea what the hell this is. She usually doesn't let me in here, and I don't ask." I pointed to a photo of a young blonde woman in the corner, a familiar, wry smile on her face and a smug look in her blue eyes.

"I can tell you, that's her missing sister, Stephane." I lowered my hand, shivering as the night's cold crept into my spine. "She vanished four years ago."

---

The police left, and my home was torn apart in their search. I was fidgeting with the card Robert had left me with, his words echoing through my mind.

*We're going to look into your wife's board for any clues to her whereabouts. Listen, on the off chance she's been taken and someone calls you, call me right away.*

She hadn't been taken; I knew it in my heart. She had been spiralling lately, telling me she was going to find her sister. Stephane had disappeared in her own home, a trail of blood leading to a wall. The police were baffled, and I thought she staged it to just get away. Either way, it rattled Mia to the core, and she was never the same.

I had to figure this out. Her car wasn't in the garage; she had to have gone somewhere looking for something. I slid my hand into her desk, reaching into the secret space behind the drawers where she liked to hide things. The police had missed her laptop. It was a stroke of luck. I placed it gingerly on the brown, oak desk and sat down in front of it. Staring at its silvery frame, I ran my hand across the top of it, the bumps from her various stickers and memories rubbing against my fingers. I pulled the device open, the kitchen lights far behind me casting a dull reflection across the glass. The cursor blinked mindlessly for a few moments before I gathered myself enough to plug in her password.

Miarocks1!. I was in, her passwords were far too simple.

As the Windows update cleared, the computer trundled to life, the cursor stuttering as the PC completed its startup. Mia's desktop was covered in the photos plastered all over her wall, somehow in an even more disorganized state. I pulled open her browser and began scanning through her bookmarked pages, her emails, and her documents. The final site on her list was odd, however. It sported a strange icon with wings, and it was labelled "M.E.G. Archive". I clicked the hyperlink, and the page slowly fumbled itself onto the screen.

I was greeted with a black page, the words slowly loading on my wife's ancient laptop.

---

*YOU THERE.*

*Stay calm, and read carefully.*

*Hello, whoever you are. We are the M.E.G.: a small group of wanderers working to help as many people as we can, and get us out of this place. We can't afford to spread this over more than two pages, so we'll be concise.*

*You've probably been wandering in this building, cave, or dark suburb for a while.*

*You might be wondering where you are, and how to get home — that's good, hold onto that. Remember where you came from above all else. That being said, your questions need answers, so read onward.*

---

What the hell was this? Was this the Backrooms thing she had been obsessing over? It was something I hadn't ever seen before, it was completely wild. I couldn't believe she had bought into this nonsense.

---

*Nobody remembers who first called it that, but it's a fitting name — it's like we're in the backrooms of reality.*

*The Backrooms is a series of levels — infinite landscapes with a consistent look and theme. If you don't know what to look for you could be trapped in one's monotony forever.*

*We call travel into/throughout the Backrooms 'no-clipping': phasing through solid objects.*

---

I thought about her sister's disappearance for a moment and realized why Mia had become so obsessed. This page offered some mystical explanation as to why Stephane had vanished. Grief had taken Mia, and she was probably out searching for these "Backrooms". I clicked on a random hyperlink that said 'Level 0', and another page began to load. I was greeted with a rather off-putting photo of the inside of some yellow building. The interior decorator should have been fired; the walls looked hideous. The text was short and simple, yet still chilling.

---

*"If you're not careful and you noclip out of reality in the wrong areas, you'll end up in the Backrooms, where it's nothing but the stink of old moist carpet, the madness of mono-yellow, the endless background noise of fluorescent lights at maximum hum-buzz, and approximately six hundred million square miles of randomly segmented empty rooms to be trapped in.*

*God save you if you hear something wandering around nearby, because it sure as hell has heard you…"*

---

More nonsense. I sighed at the description, I didn't have enough time to read this stuff. I pulled open a new tab and loaded the image search engine. I began plugging in the photos from her desktop, searching for any kind of clue as to where she had gone.

Just like the officer had said, they were all missing people. The other images of buildings were places where they had disappeared, some of them vanishing directly behind others without a trace.

One of the images looked strangely familiar. I pulled it up into the browser, and it returned with an article titled "Four Teenagers, Gone After Trespassing: Runaways or Something Sinister?" I realized where I had seen the building. It was McCarthy's Mill, an old grain factory that sat rotting at the edge of town. Old man McCarthy had died a couple of decades back, leaving the estate to his four kids. I remembered this because they had spent so much time disputing ownership that the mill had shut down due to a lack of management. Now the fields choking the property sat barren, hoping for a brighter day where they would be filled with life and the smell of fresh grain.

"This old building, the mill, it has to be where she went," I said aloud, my heart pounding as I skimmed the article. This photo was front and centre on her board, right above her desk. I craned up and saw the photos of those four teenagers, linked by the red string to the photo of the mill. There was a yellow sticky note placed haphazardly on the photo, marked in cursive with "Possible Entrance?" Several other photos containing derelict buildings were on the wall, all of them plastered with notes. "Demolished", "Empty", and "Too Dangerous" were scribbled on some of them. How did she know it was empty? Had she gone to some of these places?

---

I began slamming supplies into my hiking pack. On the off chance this shit was real, I couldn't take any chances. I'm sure Mia felt the same. I packed several bottles of water, granola bars, and a fresh canteen. My hand flailed out and flicked off the lights as I crashed through the back door. The shed was swaddled in moonlight, almost forgotten in the backyard as it slowly decayed from the elements. I slammed it open, rust flaking from the handle as I ripped the door open.

I pulled open my own secret compartment and started grabbing knives. My ex-military father had left me many weapons, and I had kept all of the knives and sold the guns. I never thought I'd have to use them. I grabbed a bowie knife and a machete, strapping them both to the side of my pack. Searching for my high-power flashlight, I began shoving batteries into my bag while rummaging through my brain for anything else I could need. Content with my provisions, I ran through the house, grabbing my keys, wallet, and phone as I beelined for the car.

---

What was I going to find there? My mind immediately, of course, raced over the worst-case scenarios. Shot by a security guard, bitten by an animal, maybe even had a bad fall. The possibilities ran wild in my brain as I sped across town. By the time I had pulled into the dirt road leading to the entrance to the mill, I was almost in tears.

As the dilapidated structure came into view, the scant moonlight illuminated its rusted metal frame as it coyly peeked through the clouds. Out of the corner of my eye, I saw her car. A red Volvo pulled off onto the side of the road with a vanity plate reading "MIAB3ST". My heart was filled with mixed, bittersweet feelings. She had really come here. I stopped, checking the doors. Detritus and dirt had built up on the hood, even though it had only sat here for about a day. She had left the car unlocked; the car was virtually empty save for a single envelope in the driver's seat. Shaking, I pulled open the envelope and removed the single piece of paper enclosed within. I gingerly opened it and saw her handwriting again. I began to read.

---

*James,*

*If you're seeing this, I'm probably gone. But I'm okay! I know where my sister is. I know it seems kind of crazy, but I'm going to help bring her back. You've been so supportive and lovely, even through my struggles. I promise I'll come back, so please wait. If you want to know more, check behind my paintings in my art studio, and you'll see everything that I've found—the evidence! Stephane's disappearance was no coincidence. A bunch of people went missing at the same time in her area in the same way. You have to trust me, James. Please.*

*I'll see you soon,*

*Mia*

---

I ached seeing dried spots of water on the page. Grief ripped through my heart as I realized had failed to support her on this. She didn't feel comfortable showing me any of this, she didn't even ask me to come with her. This was probably my greatest failure. I had floundered as a husband.

I placed the letter in my pack and stepped back into my vehicle. I continued up the road, the mill growing ominously in front of me. I stopped right in front of the door, and I stared up at the building. It loomed over me, constructed of rotting corrugated metal. Most of the sign had fallen off, the only remaining letters spelling out "ill".

I pulled out my phone and the number the detective had left me. It rang twice before I heard his voice over the line, "Hello?".

I sighed, "Hey, it's James. I wanted to report that I found my wife's car."

I heard shuffling on the other line. "Where? Are you safe?" I nodded to no one, "Yeah, I'm fine. The car is abandoned on the road leading up to McCarthy's Mill".

"That's good news; I'll get a few squad cars up there, don't g-" I turned my phone off, the police would be no help. If my wife was right, nobody could help us.

I exited the car, the headlights beaming against the front doors as I cautiously walked up to inspect it. I saw our red-handled bolt cutters abandoned next to a freshly sliced chain. I pushed, and the doors creaked in agony as they slowly opened. It was strangely cold as I entered, juxtaposed with the summer air behind me. I walked slowly, turning on my flashlight. Plant life had made its way back into the building, nature reclaiming what once belonged to it.

"MIA?!" I shouted.

I was only answered by my own echo. I could hear skittering in the walls, foul vermin stalking me as I slowly made my way around the big, empty room. I began to hear sirens in the distance, a sound muted by the surrounding forest and metal walls. That's when I saw it.

The wall, it was…wrong. I shined my flashlight directly on it, yet it flickered as though it wasn't really there.

*…no-clip out of reality…*

I walked up to the wall, hesitating as I doubted my eyes. I reached out and touched it. My hand went right through, almost like it was a hologram. The sirens loudened as I stepped back. I grimaced as my heart thumped out of my chest. "FUCK", I screamed as I jumped into the wall. My body braced for impact, but it was wildly delayed. I fell about ten feet before I slammed into something somewhat soft and wet. My ears rang painfully with the sudden change in air pressure, popping as I struggled to gain my bearings. I looked up to see yellow wallpaper, my eyes straining against the drastic increase in brightness.

The invasive stench of mildew pervaded my senses, and the carpet I kneeled on was damp. I could hear the mad buzzing sound of poorly wired lights. I looked around, greeted only by emptiness and desolation.

I had found the Backrooms.

---

**Chapter 1** | [Chapter 2](homewardbound-ch-2.md) »

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Homeward Bound: Chapter 1](homewardbound-ch-1.md)" by DivineAtlas, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/homewardbound-ch-1](homewardbound-ch-1.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/homewardbound-ch-1">Homeward Bound: Chapter 1</a>" by DivineAtlas, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/homewardbound-ch-1">https://backrooms-wiki.wikidot.com/homewardbound-ch-1</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/homewardbound-ch-1](https://backrooms-wiki.wikidot.com/homewardbound-ch-1)
