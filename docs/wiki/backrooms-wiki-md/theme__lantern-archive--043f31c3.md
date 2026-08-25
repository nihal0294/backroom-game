---
title: "Lantern Archive Theme"
source: "https://backrooms-wiki.wikidot.com/theme:lantern-archive"
retrieved_at: "2026-08-23T23:36:34+00:00"
license: CC-BY-SA-3.0
---

# Lantern Archive Theme

rating: +21[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

rating: +21[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  

Info

Isn't this theme nice? What, you think it looks outdated and weird? How dare you!

Creating a theme based on Super Liminal was a bit daunting cause it doens't really take after Black Higlighter per se. But in reality, it's a lot easier. I'd recommend it… and a Hallprint port may be forthcoming!

---

Techlight from

[Close](index.md)

# Info

The **Lantern Archive Theme** is a Wikidot theme created by , based off of [Super Liminal](theme__super-liminal--58e098e7.md) by . It was made for 's **Lantern Archive**, a creepypasta site within the Backrooms. It takes after 90s websites. The tiling background image is a crusty dithered image made up of 1800s public domain ghost sightings, and the header includes a deliciously horrible 90s-style render by me.

[[include :backrooms-wiki:theme:lantern-archive]]

# Examples

![Missing alt text.](https://backrooms-wiki.wdfiles.com/local--files/level-0/OGLevel0.jpg)

The first picture ever taken of **Level 0**.

**Level 0** is a non-linear space, resembling the back rooms of a retail outlet. Similar to its previous form, all rooms in Level 0 appear uniform and share superficial features such as a yellowish wallpaper, damp carpet, and inconsistently placed fluorescent lighting. *However, no two rooms within the level are identical.*

---

# Title #1

## Title #2

### Title #3

- [*The first tab*](javascript:;)
- [*The second tab*](javascript:;)
- [*PEACE OUT!*](javascript:;)
- [*A Long Tab*](javascript:;)
- [*A long-named tab, a long-named tab, a long-named tab, a long-named tab*](javascript:;)
- [*Empty tab*](javascript:;)
- [*Empty tab*](javascript:;)
- [*Empty tab*](javascript:;)

[+ This is a collapsible link.](javascript:;)

[- hide](javascript:;)

content.

- Bulleted List
- Second
  - Nested

1. Numberred List
2. Number two

This is the second tab. To create a tabview, use…

…use magic?

Look a supermodel! Look a hoverboard! Look the apocalypse! Someone got hit in the boingloings. Hit in the boingloings. Boingloings. Boingloings. Somebody got hit in them.

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

content.

| This is a | table |
| --- | --- |
| to make | these |
| ask a hacker for help | |

> blockquote  
[[div class="blockquote"]]

[[code]]  
[[div class="code"]]

[[div class="lightblock"]]

[[div class="darkblock"]]

[[div class="styled-quote"]]

[[div class="dark-styled-quote"]]

[[note]]

The wall was YELLOW!!!

[[span class="bblock"]]

[[span class="dblock"]]

[[span class="keycap"]]

[[span class="ruby"]][[span class="rt"]]

« [Old Liminal](theme__old-liminal--70de9e76.md) | [[div class="footer-wikiwalk-nav"]] | [Nuliminal](theme__nuliminal--b088b523.md) »

[[div class="meta-title"]]

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
/* ┌───────────────────────────────┐ */
/* │                               │ */
/* │== The Lantern Archive Theme ==│ */
/* │=== Made by Scutoid Studios ===│ */
/* │                               │ */
/* ├───────────────────────────────┤ */
/* │    Based on Super Liminal     │ */
/* │  Originally by Ambersight on  │ */
/* │       the Backrooms CN        │ */
/* ├───────────────────────────────┤ */
/* │  Code license: CC-BY-SA 3.0   │ */
/* │ https://creativecommons.org/  │ */
/* │      licenses/by-sa/3.0/      │ */
/* ├───────────────────────────────┤ */
/* │ Code approved by: ReyDay      │ */
/* │ Date: November 4 2025         │ */
/* ├───────────────────────────────┤ */
/* │ Table of Contents:            │ */
/* │                               │ */
/* │  ├ ROOT VARIABLES             │ */
/* │  ├── Font Set                 │ */
/* │  ├── Colours                  │ */
/* │  ├── Measurements             │ */
/* │  ├── Images                   │ */
/* │  ├ HEADER                     │ */
/* │  ├ ELEMENTS                   │ */
/* │  ├── Code Block               │ */
/* │  ├── Footer                   │ */
/* │  ├── Side bar                 │ */
/* │  ├── Keycap                   │ */
/* │                               │ */
/* └───────────────────────────────┘ */
 
@import url('https://fonts.googleapis.com/css2?family=Arimo:ital,wght@0,400..700;1,400..700&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Courier+Prime:ital,wght@0,400;0,700;1,400;1,700&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Silkscreen:wght@400;700&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Tinos:ital,wght@0,400;0,700;1,400;1,700&display=swap');
 
/* === ROOT VARIABLES === */
 
:root {
    --header-title: "";
    --header-subtitle: "";
 
    /* Font Set */
    --body-font: 'Tinos', serif;
    --header-font: 'Arimo', sans-serif;
    --title-font: var(--mono-font);
    --mono-font: 'Courier Prime', monospace;
 
    /* Colours */
    /* ...Basic */
    --background-color: 0, 0, 0;
    --text-color: 138, 133, 254; /* AAA contrast with dark-color-3!! */
    --light-color-2: 0, 0, 30;
    --dark-color-2: 0, 0, 60;
    --dark-color-3: 0, 0, 80;
    --dark-color-4: var(--dark-color-3);
 
    /* ...General use */
    --general-light-background-color: var(--light-color-2);
    --general-light-text-color: var(--text-color);
    --general-medium-background-color: var(--dark-color-2);
    --general-medium-text-color: var(--text-color);
    --general-dark-background-color: var(--dark-color-3);
    --general-dark-text-color: var(--text-color);
    --general-medium-border-color: var(--dark-color-2);
    --general-shadow-color: 0, 0, 0;
 
    /* ...Scrollbars */
    --scrollbar-color: var(--text-color), 0.7;
    --scrollbar-background-color: var(--light-color-2);
 
    /* ...Header */
    --header-background-image: linear-gradient(to top, transparent, rgb(var(--background-color)) 2rem);
    --header-extra-background-image: none;
    --header-text-color: var(--text-color);
    --header-text-shadow-color: 0, 0, 0, 0;
 
    /* ...Popup fader */
    --popup-fader-color: 0, 0, 0, 0.5;
    --popup-tip-color: var(--text-color);
 
    /* ...Horizontal rule */
    --hr-color: var(--dark-color-3);
 
    /* ...Side bar */
    --sidebar-handle-background-color: var(--light-color-2);
    --sidebar-title-shadow-color: 0, 0, 0, 0;
    --sidebar-media-background-color: var(--light-color-2), 0.5;
    --sidebar-text-color: var(--link-color);
    --sidebar-hover-text-color: var(--hover-link-color);
 
    /* ...Loading animation */
    --popup-loading-color: var(--link-color);
 
    /* ...Top bar */
    --topbar-text-color: var(--link-color);
    --topbar-hover-text-color: var(--hover-link-color);
 
    --topbar-hover-background-color: var(--dark-color-2);
    --topbar-hover-border-color: var(--dark-color-2);
 
    --topbar-drop-text-color: var(--link-color);
    --topbar-drop-hover-text-color: var(--hover-link-color);
 
    --topbar-drop-border-color: var(--dark-color-2);
    --topbar-drop-border-width: 1px;
 
    /* ...License footer */
    --license-text-color: var(--text-color), 0.8;
 
    /* ...Links */
    --link-color: 222, 181, 70;
    --hover-link-color: 244, 237, 189;
    --visited-link-color: 150, 24, 43;
    --newpage-color: 221, 102, 17;
 
    /* ...Buttons */
    --general-button-text-color: var(--link-color);
    --general-hover-button-text-color: var(--hover-link-color);
 
    /* MEASUREMENTS */
    --main-header-height: 13rem;
    --main-header-height-on-mobile: 12rem;
 
    /* IMAGES */
    --logo-image: url(https://scutoidbox.wikidot.com/local--files/monster-commission/lanternheader.png);
    --background-image: url(https://scutoidbox.wikidot.com/local--files/monster-commission/darktile.png);
}
 
#container {
    background: var(--background-image);
}
 
/* HEADER */
 
#header h2 span::before {
    opacity: 1;
}
 
#top-bar {
    border: solid 1px rgb(var(--dark-color-3));
    border-width: 1px 0;
}
 
#top-bar .mobile-top-bar {
    background: rgb(var(--background-color));
}
 
#top-bar div[class*="top-bar"] > ul > li:is(:hover, :active, :focus, :focus-within, .sfhover) {
    background: radial-gradient(rgb(var(--dark-color-3), 0),rgb(var(--background-color)));
    background-size: 100% 200%;
}
 
#top-bar div[class*="top-bar"] > ul > li:is(:hover, :active, :focus, :focus-within, .sfhover) {
    background: radial-gradient(rgb(var(--dark-color-3)),rgb(var(--background-color)));
    background-size: 100% 200%;
}
 
/* ELEMENTS */
 
/* Code Block */
/* Super Liminal is supposed to support dark themes,
   but actually code blocks break in them because
   the text within them isn't styled by Super
   Liminal's colours. On a light theme, the default
   Wikidot colours work fine, but of course they
   break on a black background. */
/* It's complex and not really my problem to fix
   so for now here's an aesthetically pretty stopgap
   solution! */
 
.code { 
    /* Give it a light bg */
    background: #EEE; 
    /* Invert it so no flashbang */
    filter: invert(100); 
}
 
/* Footer */
/* Just to make links a little clearer */
#license-area a, #footer a {
    font-weight: bold;
}
 
/* Side Bar */
 
#side-bar .side-block .sidebar-social {
  background: rgb(var(--link-color));
  margin: 1rem 0;
  opacity: 0.7;
}
 
#side-bar .side-block .sidebar-social:visited {
  color: rgb(var(--dark-color-2));
}
 
#side-bar .side-block .sidebar-social:is(:hover, :focus) {
  background: rgb(var(--hover-link-color));
}
 
/* Keycap */
/* So you can see the edge better */
.keycap {
    box-shadow: 0 0.125em 0 0.05em rgb(var(--dark-color-3));
}
```

[- Close](javascript:;)

---

[[iftags +component]]

> This component is from the [SCP Wiki](index.md), and was uploaded there by . It is licensed under [CC-BY-SA 3.0](http://creativecommons.org/licenses/by-sa/3.0/). It has been modified for this wiki by .

The license box is an easy way for people to know how to credit you as well as an easy way to properly source images. License boxes are a requirement for all pages on the wiki.

## Component Base:

[[include :backrooms-wiki:component:license-box]]  
=====  
> \*\*Filename: (Optional)\*\*  
> \*\*Name:\*\*  
> \*\*Author:\*\*  
> \*\*License:\*\*  
> \*\*Source Link:\*\*  
> \*\*Derivative of:\*\* (If applicable)  
> \*\*Additional Notes:\*\* (Optional)

> \*\*Filename: (Optional)\*\*  
> \*\*Name:\*\*  
> \*\*Author:\*\*  
> \*\*License:\*\*  
> \*\*Source Link:\*\*  
> \*\*Derivative of:\*\* (If applicable)  
> \*\*Additional Notes:\*\* (Optional)  
=====  
[[include :backrooms-wiki:component:license-box-end]]

# How to Use the License Box

## **Step 1:**

At the bottom of the page, below the wikiwalk footer, put this piece of code:

[[include :backrooms-wiki:component:license-box]]  
=====  
=====  
[[include :backrooms-wiki:component:license-box-end]]

If you have footnotes, add [[footnoteblock]] above the licensebox code like so:

[[footnoteblock]]  
----  
[[include :backrooms-wiki:component:license-box]]  
=====  
=====  
[[include :backrooms-wiki:component:license-box-end]]

## **Step 1.5 (optional):**

If you have images or other forms of media, put this block of code between the equal signs:

> \*\*Filename: (Optional)\*\*  
> \*\*Name:\*\*  
> \*\*Author:\*\*  
> \*\*License:\*\*  
> \*\*Source Link:\*\*  
> \*\*Derivative of:\*\* (If applicable)  
> \*\*Additional Notes:\*\* (Optional)

If you have more than one piece of media, you'll do this multiple times.

These are *required* in the license box.

- **"Name"** is the title of the media.
- **"Author"** is whoever created it. If you made it, put your wikidot username.
- **"License"** is the license it's under. Put it *exactly* as it says. If it says CC BY SA 2.0, then put CC BY SA 2.0.
- **"Source Link"** is where you found it. If you created it, put the URL of the page it's on.

These are *optional* in the license box.

- **"Filename"** is the title of the file as you named it when uploaded on the wikidot, if you used a different name than the source name
- **"Derivative of"** If you Photoshopped a variety of images to create a new image or did something similar, you would list them all here.
- **"Additional Notes"** If you cropped an image or edited it somehow, you would list those changes here.

You can also use this handy box-ify-er to make the process simpler:

*Notes*:

- Once put all together, it should look like the component base.
- You cannot use some modules, including CSS, HTML, and listpages, inside the license section. You also cannot use collapsibles or tables.
- If your footnotes are appearing after the license section, remember to add [[footnoteblock]] above the license template.
- Do not copy or move the ===== elements. Only have one pair, and place that pair below and above the includes.

![Comparison between two licenceboxes with licenses given for two images. The first has a blank space separating the two with a green tick next to it and the word "right". The second has five equals separating the two with a red x next to it and the word "wrong".](https://backrooms-wiki.wdfiles.com/local--files/component%3Alicense-box/guide1)

{$caption}

## **Step 2**

Add the [\_licensebox tag](https://backrooms-wiki.wikidot.com/system:page-tags/tag/_licensebox) to the page.

## **Step 3 (optional):**

You can change various aspects of the default message of the component with a few parameters! These are the customizable features:

- **author=** This allows you to change the name of the author that appears. This is great for co-written pages or translations. This defaults to the person who created the page.
- **license=** This allows you to change the license of the page if need be. Note that this can only be changed to variants of the CC BY-SA License. This defaults to 3.0.
- **url=** This allows you to change the url that appears in the message if this page is a derivative of another page. Once again, very useful for translations. This defaults to the page link.
- **origin=** This is the first part of changing where the message says where the page originates. Again, useful for translations or derivatives of other works. This defaults to “Backrooms Wiki”.
- **origin-link=** This is the second part of the where the message says where the page originates. This defaults to a link to our site’s homepage.

[[include :backrooms-wiki:component:license-box  
|author=Text here  
|license=Text here  
|url=Text here  
|origin=Text here  
|origin-link=Text here  
]]

# Handling Derivatives

An image becomes a derivative once you **add something** to the original.

- This can range from adding a black square on a face to collages of multiples images.

If you image is a derivative, **you must license your image, not the original**. This means putting the name of the editor and the License they want to put.

Keep in mind that if the image license has the "SA" ("sharealike") denomination (such as in CC-BY-SA-3.0), it means you should license the derivative with the same license as the original

## Derivatives in the Licensebox

>\*\*Name:\*\* Name of the wikidot file (optional)  
>\*\*Name:\*\* Name of the derivative file  
> \*\*Author:\*\* Name of the person who made the derivative  
> \*\*License:\*\* Same license as the original in the case of a SA licensed image  
> \*\*Source Link:\*\* Source of the derivative, often the wiki file link  
> \*\*Derivative of:\*\* [link of the original Title of the Original] by Author of the original licensed under License of the original  
> \*\*Additional Notes:\*\* (Optional)

If there are multiple original images used in the derivative, separate each with a comma.

### Example

![Comparison between two images, the left being the original and the right being the derivative containing the M.E.G. logo on the door and pc](https://praetor.wdfiles.com/local--files/derivatives/Capture%20d%E2%80%99%C3%A9cran%202026-05-23%20172301.png)

Original image on the left and derivative image on the right.

In this case, the image **on the right** is being licensed, with the information of the image of the left, and the image added to it, in the **derivative of** section.

> **Name:** Balpha Auditorium  
> **Author:**   
> **License:** [CC BY 2.0](https://creativecommons.org/licenses/by/2.0/)  
> **Source Link:** <https://www.flickr.com/photos/niftyniall/12748036163/>  
> **Derivative of:** [Synergy-2 81-717 interior - computer room (3)](https://commons.wikimedia.org/wiki/File:Synergy-2_81-717_interior_-_computer_room_(3).jpg) by Xenotron licensed under [CC 0 1.0](https://creativecommons.org/publicdomain/zero/1.0/deed.en), [M.E.G. Logo](theme__meg--c06b7e61.md) by Kosef licensed under [CC-BY-SA-3.0](http://creativecommons.org/licenses/by-sa/3.0/)

# What if I didn't add anything?

**Image modifications**, such as changing the color hue, blurring the image, cropping it… are different than derivative images. These changes are listed under **Additional notes** And the original image has to be the one licensed, as it is not a remix.

![Comparison between two images, the left being the original and the right being the edited version with blue hue.](https://praetor.wdfiles.com/local--files/derivatives/Capture%20d%E2%80%99%C3%A9cran%202026-05-25%20212028.png)

Original image on the left and edited image on the right.

In this case, the image **on the left** is being licensed, with an additional notes line containing the nature of the changes and who did it.

> **Name:** Hotel corridor - Couloir hotel  
> **Author:** mkepto  
> **License:** CC BY-SA 2.0  
> **Source Link:** <https://openverse.org/image/d5397b0c-ccc4-431e-b18d-7809432f196a?q=hotel+corridor&p=16>  
> **Additional Notes:** Color edited by on Photomosh

---

## This is the actual component, ignore it:

[[/iftags]]

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Lantern Archive Theme](theme__lantern-archive--043f31c3.md)" by Scutoid Studios, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/theme:lantern-archive](theme__lantern-archive--043f31c3.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

[[iftags +component]]

> Colmod was originally created by and is licensed under CC BY-SA 3.0
>
> The following pages make up the Colmod component
>
> - [Coltop](component__coltop--2cccad74.md)
> - [Coltop Deep](component__coltop-deep--04a368be.md)
> - [Colbottom](component__colbottom--ff87ec84.md)
> - [Colbottom Deep](component__colbottom-deep--e897414f.md)
> - [Colstyle](component__colstyle--e77aa47c.md)

[[/iftags]]

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/theme:lantern-archive">Lantern Archive Theme</a>" by Scutoid Studios, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/theme:lantern-archive">https://backrooms-wiki.wikidot.com/theme:lantern-archive</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

  [[iftags +component]]

  > Colmod was originally created by and is licensed under CC BY-SA 3.0  
  > The following pages make up the Colmod component
  >
  > - [Coltop](component__coltop--2cccad74.md)
  > - [Coltop Deep](component__coltop-deep--04a368be.md)
  > - [Colbottom](component__colbottom--ff87ec84.md)
  > - [Colbottom Deep](component__colbottom-deep--e897414f.md)
  > - [Colstyle](component__colstyle--e77aa47c.md)

  [[/iftags]]

---

> **Name:** Woman with two boys and a female spirit  
> **Author:** William Hope  
> **License:** [Public domain](https://creativecommons.org/publicdomain/zero/1.0/)  
> **Source Link:** <https://www.flickr.com/photos/nationalmediamuseum/2780189841/>  
> **Notes:** Edited, part of darktile.png (the tiling background image)

> **Name:** Will Thomas with an unidentified spirit  
> **Author:** William Hope  
> **License:** [Public domain](https://creativecommons.org/publicdomain/zero/1.0/)  
> **Source Link:** <https://www.flickr.com/photos/nationalmediamuseum/2780196013/>  
> **Notes:** Edited, part of darktile.png (the tiling background image)

> **Name:** Two women with a spirit  
> **Author:** William Hope  
> **License:** [Public domain](https://creativecommons.org/publicdomain/zero/1.0/)  
> **Source Link:** <https://www.flickr.com/photos/nationalmediamuseum/2780183501/>  
> **Notes:** Edited, part of darktile.png (the tiling background image)

> **Name:** Two women with a female spirit  
> **Author:** William Hope  
> **License:** [Public domain](https://creativecommons.org/publicdomain/zero/1.0/)  
> **Source Link:** <https://www.flickr.com/photos/nationalmediamuseum/2781045360/>  
> **Notes:** Edited, part of darktile.png (the tiling background image)

> **Name:** Three elderly people with two spirits  
> **Author:** William Hope  
> **License:** [Public domain](https://creativecommons.org/publicdomain/zero/1.0/)  
> **Source Link:** <https://www.flickr.com/photos/nationalmediamuseum/2781042126/>  
> **Notes:** Edited, part of darktile.png (the tiling background image)

> **Name:** Mrs Bentley and the spirit of her deceased sister  
> **Author:** William Hope  
> **License:** [Public domain](https://creativecommons.org/publicdomain/zero/1.0/)  
> **Source Link:** <https://www.flickr.com/photos/nationalmediamuseum/2781057504/>  
> **Notes:** Edited, part of darktile.png (the tiling background image)

> **Name:** Mourning scene  
> **Author:** William Hope  
> **License:** [Public domain](https://creativecommons.org/publicdomain/zero/1.0/)  
> **Source Link:** <https://www.flickr.com/photos/nationalmediamuseum/2781040010/>  
> **Notes:** Edited, part of darktile.png (the tiling background image)

> **Name:** lanternheader.png  
> **Author:** Scutoid Studios  
> **License:** [Public domain](https://creativecommons.org/publicdomain/zero/1.0/)  
> **Notes:** Made in Blender and GIMP specifically for this page

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/theme:lantern-archive](https://backrooms-wiki.wikidot.com/theme:lantern-archive)
