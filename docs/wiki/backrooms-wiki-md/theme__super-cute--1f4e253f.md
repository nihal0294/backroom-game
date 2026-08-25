---
title: "Super Cute Theme"
source: "https://backrooms-wiki.wikidot.com/theme:super-cute"
retrieved_at: "2026-08-23T23:41:09+00:00"
license: CC-BY-SA-3.0
---

# Super Cute Theme

rating: +33[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  

Info

Special thanks to for Techlight!

[Close](index.md)

**Super Cute Theme** is a minimal theme made by ! You can use it for any purpose.

**Super Cute Theme** is based on [Super Liminal](theme__super-liminal--58e098e7.md).

[[include :backrooms-wiki:theme:super-cute]]

# Examples

![Missing alt text.](https://backrooms-wiki.wdfiles.com/local--files/level-0/OGLevel0.jpg)

The first picture ever taken of Level 0.

**Level 0** is a non-linear space, resembling the back rooms of a retail outlet. Similar to its previous form, all rooms in Level 0 appear uniform and share superficial features such as a yellowish wallpaper, damp carpet, and inconsistently placed fluorescent lighting. *However, no two rooms within the level are identical[1](javascript:;).*

---

# Title One

## Title Two

### Title Three

> As you may noticed, it doesn't look well to directly put text on the yellow background. Therefore, I suggest you wrap any content with at least a blockquote.

- [*Tab 1*](javascript:;)
- [*Tab 2*](javascript:;)
- [*Tab 3*](javascript:;)

[+ This is a collap.](javascript:;)

[- Hide.](javascript:;)

Content in the collap.

- Bulleted list
- List 2
  - Nested list

1. Numberred list
2. Second one

This is the second tab. To make a tabview, use following code:

```
[[tabview]]
[[tab Tab 1]]
content
[[/tab]]
[[tab Tab 2]]
content
[[/tab]]
[[/tabview]]
```

Are you wondering where is the "Tab with a long name for some reason"?

Well, this is because that, that tab name **doesn't fit the theme**. Try to keep the title of the tab within one line, even on mobile devices.

# Deco DIVs

> blockquote  
[[div class="blockquote"]]  
[[div class="lightblock"]]

[[div class="darkblock"]]

[[div class="styled-quote"]]

[[div class="dark-styled-quote"]]

[[code]]  
[[div class="code"]]

# Super Cute! DIVs

[[div class="with-bai blockquote"]]

This is Bai Mulin, mascot of Backrooms CN. Bai is an unidentified wanderer, we know less about her. She is often seen in the C cluster of the Backrooms.

You can change the blockquote to other deco DIVs.

[[div class="with-shina blockquote"]]

This is Shina, mascot of Backrooms ID. Shina is an powerful entity living in Backrooms Indonesia, you can learn more about her at [this page](http://id-backrooms-wiki.wikidot.com/en:mascot-page)!

Shina's horns may pierce into the previous div / paragraph. If you don't want this, use @@ @@ to spare a line.

[[div class="with-tess blockquote"]]

Wait wait, who's this?

Surprisingly, with-tess class is also applied to [Tesseract Theme](theme__tesseract--a9c83ab3.md). Check it out!

[[div class="with-shina dark-styled-quote no-padding"]]

If you don't like the extra padding on the top (that is to say, the empty on the top to leave space for the mascots' hands), you can add a no-padding class for the div.

# Customize

There're 5 main colors in **Super Cute**. By changing the 5 colors, you can easily modify the aesthetics of the theme:

**--q-black**  
55, 55, 55

**--q-white**  
252, 252, 252

**--q-yellow**  
254, 203, 52

**--q-green**  
52, 254, 145

**--q-red**  
254, 104, 52

```
[[module CSS]]
:root {
    --q-black: 55, 55, 55;
    --q-white: 252, 252, 252;
    --q-yellow: 254, 203, 52;
    --q-green: 52, 254, 145;
    --q-red: 254, 104, 52;
}
[[/module]]
```

If you just want a new main accent for the theme, just changing --q-yellow would be good enough.

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

> "[Super Cute Theme](theme__super-cute--1f4e253f.md)" by Ambersight, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/theme:super-cute](theme__super-cute--1f4e253f.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

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

  "<a href="https://backrooms-wiki.wikidot.com/theme:super-cute">Super Cute Theme</a>" by Ambersight, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/theme:super-cute">https://backrooms-wiki.wikidot.com/theme:super-cute</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

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

> All the images (including images in Super Cute! Divs, and the icon of the tag part) are painted by , and are published with CC BY-SA 3.0 license.

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

[+ Theme Code](javascript:;)

[- Hide](javascript:;)

```
:root {
    /* Color */
    --q-black: 55, 55, 55;
    --q-white: 252, 252, 252;
    --q-yellow: 254, 203, 52;
    --q-green: 52, 254, 145;
    --q-red: 254, 104, 52;
 
    /* palatte */
    --background-color: var(--q-yellow);
    --text-color: var(--q-black);
    --light-color-1: var(--q-white);
    --light-color-2: var(--q-white);
    --dark-color-1: var(--q-black);
    --dark-color-2: var(--q-white);
    --dark-color-3: var(--text-color);
    --general-medium-background-color: var(--dark-color-2);
    --general-medium-text-color: var(--text-color);
    --general-dark-background-color: var(--q-green);
    --general-dark-text-color: var(--text-color);
 
    /* Scrollbar */
    --scrollbar-color: var(--q-yellow);
    --scrollbar-background-color: 0, 0, 0, 0.2;
 
    /* Header */
    --header-background-top: 0, 0, 0, 0;
    --header-background-bottom: 0, 0, 0, 0;
    --header-extra-background-image: none;
    --header-text-color: var(--text-color);
    --header-text-shadow-color: 0, 0, 0, 0;
    --header-title-font-size: 2rem;
 
    /* Topb */
    --topbar-text-color: var(--text-color);
    --topbar-height-on-mobile: 4rem;
    --topbar-font-size-on-mobile: 0.8rem;
    --topbar-font-size: 1rem;
    --topbar-hover-background-color: var(--q-green);
    --topbar-hover-border-color: 0, 0, 0, 0;
    --topbar-height: 4rem;
    --topbar-drop-text-color: var(--q-black);
    --topbar-drop-hover-text-color: var(--q-black);
    --topbar-drop-background-color: var(--q-white);
    --topbar-drop-hover-background-color: var(--q-red);
    --topbar-drop-shadow-color: 0, 0, 0, 0;
    --topbar-drop-border-width: 0px;
 
    /* User */
    --account-drop-text-color: var(--q-black);
    --account-drop-hover-text-color: var(--q-black);
    --account-drop-background-color: var(--q-white);
    --account-drop-hover-background-color: var(--q-red);
 
    /* Search */
    --search-button-background-color: var(--q-white);
    --search-button-hover-background-color: var(--q-green);
 
    /* Tag */
    --page-tag-background-color: var(--q-yellow), 0.6;
 
    /* Footer */
    --footer-text-color: var(--q-black);
    --footer-background-color: var(--q-white);
    --license-background-color: var(--q-white);
    --license-text-color: var(--q-black);
    --license-link-color: var(--q-black);
 
    /* Popup */
    --popup-fader-color: 0, 0, 0, 0.7;
    --popup-title-background-color: var(--q-yellow);
    --popup-title-text-color: var(--q-black);
    --popup-tip-color: var(--q-white);
    --popup-loading-color: var(--q-yellow);
 
    /* tab */
    --tabview-button-background-color: 0, 0, 0, 0;
    --tabview-button-text-color: var(--q-black);
    --tabview-hover-button-background-color: var(--q-red);
    --tabview-hover-button-text-color: var(--q-black);
    --tabview-selected-button-background-color: var(--q-green);
    --tabview-selected-button-text-color: var(--q-black);
    --tabview-horizon-color: 0, 0, 0, 0;
    --tabview-content-background-color: var(--q-white);
    --tabview-border-width: 0px;
 
    /* footnote */
    --footnote-block-background-color: var(--q-white);
 
    /* Sidebar */
    --sidebar-handle-text-color: var(--q-white);
    --sidebar-handle-background-color: var(--q-black);
    --sidebar-media-background-color: var(--q-green);
    --sidebar-media-icon-color: var(--text-color);
    --sidebar-title-background-color: var(--q-yellow);
    --sidebar-title-shadow-color: 0, 0, 0, 0;
    --sidebar-hover-background-color: var(--q-red);
 
    /* Sturc */
    --body-width: 50rem;
    --sidebar-width: 20rem;
    --sidebar-width-on-mobile: 18rem;
    --header-subtitle-font-size-on-mobile: 0.8rem;
 
    /* Other Things */
    --general-transition-time-slow: 0s;
    --logo-image: url(https://github.backroomswiki.cn/Super_Liminal/images/black_logo.svg);
}
 
/* Body */
#skrollr-body {
    background-image:  radial-gradient(circle, rgba(0, 0, 0, 0.05) 15%, transparent 0);
    background-size: 2rem 2rem;
}
 
/* Header */
#header h1 a {
    display: flex;
    align-items: center;
    width: fit-content;
}
 
#header h1 a::before {
    content: "";
    display: block;
    flex: none;
    background-color: rgba(var(--q-white));
    background-image: var(--logo-image);
    background-size: contain;
    background-repeat: no-repeat;
    background-position: center;
    width: 4rem;
    height: 4rem;
    box-sizing: border-box;
    border: 0.2rem solid rgba(var(--text-color));
    border-radius: 50%;
}
 
#header h1 a:is(:hover, :active, :focus, :focus-within)::before {
    background-color: rgba(var(--q-green));
}
 
#header h1 a span {
    align-items: flex-start;
    padding: 0;
    margin-left: 1rem;
    transition: margin-left 0.2s;
}
 
#header h1 a:is(:hover, :active, :focus, :focus-within) span {
    margin-left: 1.4rem;
}
 
#header h2 {
    display: none;
}
 
/* User Info */
#login-status {
    font-size: 0;
    top: calc(var(--main-header-height) / 2 - 2rem);
    right: var(--header-margin);
}
 
#login-status .printuser {
    gap: 0;
}
 
#login-status .printuser > a:first-child img {
    background-image: none !important;
    padding: 0;
    width: 4rem;
    height: 4rem;
    box-sizing: border-box;
    border: 0.2rem solid rgba(var(--text-color));
    border-radius: 50%;
    object-fit: cover;
}
 
#login-status a:is(.login-status-create-account,.login-status-sign-in) {
    display: flex;
    width: 4rem;
    text-align: center;
    text-decoration: none;
    justify-content: center;
    align-items: center;
    background: rgba(var(--q-white));
    color: rgba(var(--q-black));
    font-size: 0.8rem;
    box-sizing: border-box;
    border: 0.2rem solid rgba(var(--text-color));
    border-radius: 10rem;
    padding: 0.2rem 0;
    position: relative;
    top: -0.2rem;
}
 
#login-status a:is(.login-status-create-account,.login-status-sign-in):is(:hover, :active, :focus, :focus-within) {
    background: rgba(var(--q-green));
}
 
#login-status a.login-status-create-account {
    font-size: 0;
    margin-bottom: 0.5rem;
}
 
#login-status a.login-status-create-account::before {
    content: "Sign up";
    font-size: 0.8rem;
}
 
a#account-topbutton {
    display: none;
}
 
#account-options {
    font-size: 0.8rem;
    padding-top: 0.6rem;
    background: rgba(0, 0, 0, 0);
    border: none;
    width: 10rem;
}
 
#login-status:is(:hover, :active, :focus, :focus-within) #account-options {
    pointer-events: auto;
    opacity: 1;
}
 
#account-options ul {
    display: block;
    border: 0.2rem solid rgba(var(--text-color));
    box-shadow: inset 0 -0.5rem 0 rgba(0, 0, 0, 0.15);
    border-radius: 0.6rem;
    background: rgba(var(--account-drop-background-color));
    overflow: hidden;
    padding-bottom: 0.5rem;
}
 
#account-options li a {
    height: 2rem;
    padding: 0 1rem;
    justify-content: space-between;
}
 
#account-options li:last-of-type a {
    border-radius: 0 0 0.4rem 0.4rem;
}
 
#account-options li a::after {
    content: "›";
    font-weight: 900;
    font-family: var(--mono-font);
    font-size: 1.25em;
}
 
#login-status > a[href*='account/messages'] {
    position: absolute;
    top: 0;
    right: 0;
    width: 1.2rem;
    height: 1.2rem;
    font-size: 0;
    z-index: 2;
    background: rgb(var(--q-red));
    border-radius: 50%;
    border: 0.2rem solid rgba(var(--text-color));
}
 
/* Search */
#search-top-box {
    right: calc(var(--header-margin) + 4rem + 1rem);
    top: calc(var(--main-header-height) / 2 - 1.6rem);
}
 
#search-top-box-form .button {
    height: 3.2rem;
    width: 4rem;
    font-size: 0;
    border: 0.2rem solid rgba(var(--text-color));
    box-shadow: inset 0 -0.5rem 0 rgba(0, 0, 0, 0.15);
    border-radius: 0.6rem;
    padding: 0 0 0.5rem;
}
 
#search-top-box::after {
    content: "";
    width: 100%;
    height: calc(100% - 0.5rem);
    position: absolute;
    left: 0;
    top: 0;
    -webkit-mask-image: var(--search-icon-mask);
    mask-image: var(--search-icon-mask);
    -webkit-mask-repeat: no-repeat;
    mask-repeat: no-repeat;
    -webkit-mask-position: center;
    mask-position: center;
    -webkit-mask-size: 27.5%;
    mask-size: 27.5%;
    background-color: rgb(var(--text-color));
    pointer-events: none;
}
 
/* Top Bar */
#top-bar div[class*=top-bar] > ul {
    grid-gap: 0.5rem;
}
 
#top-bar div[class*=top-bar] > ul > li {
    border-radius: 0.6rem;
    border: 0.2rem solid rgba(0, 0, 0, 0);
    transition: 0s;
    box-sizing: border-box;
    padding-bottom: 0.5rem
}
 
#top-bar .mobile-top-bar .open-menu {
    flex: none;
    margin-right: 0.5rem;
}
 
#top-bar .mobile-top-bar .open-menu a {
    border-radius: 0.6rem;
    border: 0.2rem solid rgba(var(--q-black));
    transition: 0s;
    box-sizing: border-box;
    padding-bottom: 0.5rem;
    background: rgba(var(--q-red));
    box-shadow: inset 0 -0.5rem 0 rgba(0, 0, 0, 0.15);
}
 
#top-bar .mobile-top-bar .open-menu a::before {
    -webkit-mask-size: 80%;
    mask-size: 80%;
}
 
#top-bar div[class*=top-bar] > ul > li:is(:hover, :active, :focus, :focus-within, .sfhover),
#top-bar .mobile-top-bar .open-menu a:is(:hover, :active, :focus, :focus-within) {
    background: rgba(var(--topbar-hover-background-color));
    border: 0.2rem solid rgba(var(--text-color));
    box-shadow: inset 0 -0.5rem 0 rgba(0, 0, 0, 0.15);
}
 
#top-bar div[class*=top-bar] > ul > li > a {
    padding-bottom: 1.5rem;
}
 
#top-bar div[class*=top-bar] > ul > li > ul {
    border: 0.2rem solid rgba(var(--text-color));
    box-shadow: inset 0 -0.5rem 0 rgba(0, 0, 0, 0.15);
    border-radius: 0.6rem;
    left: -0.2rem;
    min-width: calc(100% + 0.4rem);
    padding-bottom: 0.5rem;
    overflow: hidden;
    transition: 0s;
}
 
#top-bar div[class*=top-bar] > ul > li:last-of-type > ul {
    right: -0.2rem;
    left: auto;
}
 
#top-bar div[class*=top-bar] > ul > li > ul > li {
    overflow: hidden;
}
 
#top-bar div[class*=top-bar] > ul > li > ul > li:last-of-type {
    border-radius: 0 0 0.4rem 0.4rem;
}
 
#top-bar div[class*=top-bar] > ul > li > ul > li > a {
    font-weight: 500;
    justify-content: space-between;
}
 
#top-bar div[class*=top-bar] > ul > li > ul > li > a::after {
    content: "›";
    font-weight: 900;
    font-family: var(--mono-font);
    font-size: 1.25em;
    padding-left: 0.5rem;
}
 
/* Content */
#page-title, .meta-title {
    text-align: center;
    border: none;
    padding: 0;
}
 
/* Rating Module */
div.rate-box-with-credit-button,
div.page-rate-widget-box,
div.creditButtonStandalone {
    border: 0.2rem solid rgba(var(--text-color));
    border-radius: 10rem;
    overflow: hidden;
    padding-right: 0.5rem;
}
 
div.page-rate-widget-box .rate-points {
    padding-left: 0.8rem;
}
 
div.creditBottomRate div.page-rate-widget-box {
    border-bottom: 0.2rem solid rgba(var(--text-color));
}
 
/* Blockquote */
blockquote, .blockquote, .lightblock {
    margin: 1rem 0;
    border-radius: 1rem;
    border: 0.2rem solid rgba(var(--text-color));
    padding: 0.5rem 1rem 1rem;
    box-shadow: inset 0 -0.5rem 0 rgba(0, 0, 0, 0.15);
}
 
/* Page Tags */
.page-tags {
    border-radius: 1rem;
    border: 0.2rem solid rgba(var(--text-color));
    background: rgba(var(--q-white));
    flex-direction: row;
    box-shadow: inset 0 -0.5rem 0 rgba(0, 0, 0, 0.15);
    overflow: hidden;
    padding: 0.5rem 0.5rem 1rem;
}
 
.page-tags::before {
    content: "";
    background-image: url("data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4NCjwhLS0gR2VuZXJhdG9yOiAkJCQvR2VuZXJhbFN0ci8xOTY9QWRvYmUgSWxsdXN0cmF0b3IgMjcuNi4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+DQo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IuWbvuWxgl8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiIHk9IjBweCINCgkgdmlld0JveD0iMCAwIDEwNS43IDg3LjMiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDEwNS43IDg3LjM7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4NCjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+DQoJLnN0MHtmaWxsOm5vbmU7c3Ryb2tlOiMwMDAwMDA7c3Ryb2tlLXdpZHRoOjM7c3Ryb2tlLW1pdGVybGltaXQ6MTA7fQ0KPC9zdHlsZT4NCjxwYXRoIGNsYXNzPSJzdDAiIGQ9Ik0yMy4zLDI3LjhsNC42LDIxLjFjMC40LDEuOCwxLjQsMy40LDMsNC40bDQ1LjIsMzEuMmMzLjMsMi4zLDcuOCwxLjQsMTAuMS0xLjlsMTYuOC0yNC40DQoJYzIuMy0zLjMsMS40LTcuOC0xLjktMTAuMUw1NS44LDE3LjFjLTEuNS0xLTMuNC0xLjUtNS4yLTEuMmwtMjEuMywzLjJDMjUuMiwxOS43LDIyLjQsMjMuNywyMy4zLDI3Ljh6Ii8+DQo8Y2lyY2xlIGNsYXNzPSJzdDAiIGN4PSI0MSIgY3k9IjMzLjYiIHI9IjciLz4NCjxsaW5lIGNsYXNzPSJzdDAiIHgxPSI2MS4yIiB5MT0iMzcuNyIgeDI9IjkyLjUiIHkyPSI1OS4zIi8+DQo8bGluZSBjbGFzcz0ic3QwIiB4MT0iNTYuNiIgeTE9IjQ0LjMiIHgyPSI3OC45IiB5Mj0iNTkuNiIvPg0KPGxpbmUgY2xhc3M9InN0MCIgeDE9IjUyLjEiIHkxPSI1MC45IiB4Mj0iNzkuNyIgeTI9IjY5LjkiLz4NCjxwYXRoIGNsYXNzPSJzdDAiIGQ9Ik0zMy43LDM3LjFjMCwwLDM2LjYtMTIuOS0zLjYtMzMuMkMyMS42LTAuNSwxMS4zLDEuMyw0LjUsOHYwQy03LjgsMjAuNCwyMS44LDM3LjQsMjUuMiwzNy40Ii8+DQo8L3N2Zz4NCg==");
    width: 4rem;
    height: 4rem;
    border: 0.2rem solid rgba(var(--text-color));
    border-radius: 50%;
    padding: 0;
    background-color: rgba(var(--q-yellow));
    background-size: 80%;
    background-repeat: no-repeat;
    background-position: center;
    flex: none;
}
 
.page-tags span {
    border: none;
    padding: 0.5rem 0 0.5rem 1rem;
}
 
.page-tags span a {
    padding: 0.2rem 0.5rem;
    height: fit-content;
    font-weight: 500;
    transition: 0s;
}
 
/* Page Info */
#page-info, .page-watch-options {
    font-weight: 500;
    font-size: 0.8rem;
}
 
/* Buttons, i mean, seriously, buttonS */
div[id*=page-options-bottom] > a,
#edit-page-form div.buttons input,
div.buttons input,
.page-options-bottom a,
.owindow .button-bar > a:not([onclick*=cleanAll]),
.owindow div[style*=margin-top] a,
a.action-area-close,
#view-diff-div > p > a {
    border: 0.2rem solid rgba(var(--text-color));
    box-shadow: inset 0 -0.5rem 0 rgba(0, 0, 0, 0.15);
    border-radius: 0.6rem;
    padding: 0.5rem 0.5rem 1rem;
    line-height: 1.5;
    height: fit-content;
    background: rgba(var(--q-white));
    color: rgba(var(--q-black));
    font-weight: 500;
    font-size: 0.8rem;
}
 
#delete-button,
a.action-area-close,
#view-diff-div > p > a {
    background: rgba(var(--q-red));
}
 
a.action-area-close,
#view-diff-div > p > a {
    font-size: 0;
    height: 3rem;
    width: 3rem;
    box-sizing: border-box;
}
 
div[id*=page-options-bottom] > a:is(:hover, :active, :focus, :focus-within),
#edit-page-form div.buttons input:is(:hover, :active, :focus, :focus-within),
div.buttons input:is(:hover, :active, :focus, :focus-within),
.page-options-bottom a:is(:hover, :active, :focus, :focus-within),
.owindow .button-bar > a:not([onclick*=cleanAll]):is(:hover, :active, :focus, :focus-within),
.owindow div[style*=margin-top] a:is(:hover, :active, :focus, :focus-within),
a.action-area-close:is(:hover, :active, :focus, :focus-within),
#view-diff-div > p > a:is(:hover, :active, :focus, :focus-within) {
    background: rgba(var(--q-green));
    color: rgba(var(--q-black));
}
 
#delete-button:is(:hover, :active, :focus, :focus-within):before,
#delete-button:is(:hover, :active, :focus, :focus-within):after {
    content: "!";
    font-weight: 700;
    padding: 0 0.25rem;
}
 
div[id*=page-options-bottom] > a {
    flex-basis: 7.5rem;
    flex-grow: 0;
}
 
div[id*=page-options-bottom] {
    justify-content: center;
    margin: 0.25rem 0;
}
 
/* Footer */
#footer {
    border-top: 0.2rem solid rgba(var(--text-color));
    padding: 1rem 0;
}
 
/* Popup */
.owindow, div.modalbox, div.infobox {
    border: 0.2rem solid rgba(var(--text-color));
    box-shadow: inset 0 -0.5rem 0 rgba(0, 0, 0, 0.15);
    border-radius: 1rem;
    padding: 0 0 0.5rem 0;
}
 
.owindow .title,
div.modalbox > div:first-child,
div.infobox-title {
    border-radius: 0.8rem 0.8rem 0 0;
    border-bottom: 0.2rem solid rgba(var(--text-color));
}
 
.owindow.owait,
.owindow.osuccess {
    padding: 0.6rem 2rem 1.2rem;
}
 
/* Action */
#action-area > h1 {
    padding: 0.5rem 0;
}
 
#who-rated-page-area > div,
.page-source {
    border: 0.2rem solid rgba(var(--text-color));
    box-shadow: inset 0 -0.5rem 0 rgba(0, 0, 0, 0.15);
    border-radius: 1rem;
    padding: 1rem 1rem 1.5rem;
    background: rgba(var(--q-white));
    color: rgba(var(--q-black));
}
 
/* Image Block */
.scp-image-block {
    border: none;
    gap: 0.5rem;
}
 
.scp-image-block img {
    width: auto !important;
}
 
.scp-image-block img,
.scp-image-caption {
    border: 0.2rem solid rgba(var(--text-color));
    border-radius: 0.6rem;
}
 
.scp-image-caption {
    box-shadow: inset 0 -0.5rem 0 rgba(0, 0, 0, 0.15);
    padding: 0.3rem 0.5rem 0.8rem;
}
 
/* Tabview */
.yui-navset .yui-nav {
    justify-content: center;
    gap: 0.5rem;
}
 
.yui-navset .yui-nav li,
.yui-navset .yui-nav li.selected {
    transition: none;
    flex: none;
    border-radius: 0.6rem;
    padding: 0.5rem 1.5rem 1rem;
    border: 0.2rem solid rgba(0, 0, 0, 0);
    font-weight: 700;
}
 
.yui-navset .yui-nav li.selected,
.yui-navset .yui-nav li:is(:hover, :active, :focus, :focus-within) {
    border: 0.2rem solid rgba(var(--text-color));
    box-shadow: inset 0 -0.5rem 0 rgba(0, 0, 0, 0.15);
}
 
.yui-navset .yui-nav li a,
.yui-navset .yui-nav li.selected a {
    transition: none;
    color: rgba(var(--q-black));
}
 
.yui-navset .yui-nav li a em,
.yui-navset .yui-nav li.selected a em {
    padding: 0;
}
 
.yui-navset .yui-content {
    margin: 1rem 0;
    border-radius: 1rem;
    border: 0.2rem solid rgba(var(--text-color));
    padding: 0.5rem 1rem 1rem;
    box-shadow: inset 0 -0.5rem 0 rgba(0, 0, 0, 0.15);
    background: rgba(var(--q-white));
}
 
/* Code */
.code {
    border-radius: 1rem;
}
 
/* Custom DIVs */
.darkblock {
    border-radius: 1rem;
    border: 0.2rem solid rgba(var(--text-color));
    padding: 0.5rem 1rem 1rem;
    box-shadow: inset 0 -0.5rem 0 rgba(0, 0, 0, 0.15);
    background: rgba(var(--q-yellow));
    color: rgba(var(--q-black));
}
 
.styled-quote {
    border-radius: 1rem;
    border: 0.2rem solid rgba(var(--text-color));
    padding: 0.5rem 1rem 1rem;
    box-shadow: inset 0 -0.5rem 0 rgba(0, 0, 0, 0.15);
    background: rgba(var(--q-green));
    color: rgba(var(--q-black));
}
 
.dark-styled-quote {
    border-radius: 1rem;
    border: 0.2rem solid rgba(var(--text-color));
    padding: 0.5rem 1rem 1rem;
    box-shadow: inset 0 -0.5rem 0 rgba(0, 0, 0, 0.15);
    background: rgba(var(--q-red));
    color: rgba(var(--q-black));
}
 
/* Footnote */
.footnotes-footer, .bibitems {
    border-radius: 1rem;
    border: 0.2rem solid rgba(var(--text-color));
    padding: 0.5rem 1rem 1rem;
    box-shadow: inset 0 -0.5rem 0 rgba(0, 0, 0, 0.15);
    margin: 1rem;
}
 
.footnotes-footer .title {
    font-size: 1.5em;
}
 
.footnote-footer {
    font-size: 85%;
}
 
/* Sidebar */
#side-bar {
    scrollbar-width: none;
    padding-left: 1rem;
    background: rgba(0, 0, 0, 0);
    border: none;
}
 
#side-bar .side-block {
    border-radius: 0.6rem;
    border: 0.2rem solid rgba(var(--text-color));
    box-shadow: inset 0 -0.5rem 0 rgba(0, 0, 0, 0.15);
    background: rgba(var(--q-white));
    color: rgba(var(--q-black));
    margin: 1rem 0;
    padding-bottom: 0.5rem;
}
 
#side-bar .side-block.media {
    padding: 0.5rem 0 1rem !important;
}
 
#side-bar .side-block.languages {
    display: none; /* Temp set */
}
 
#side-bar .heading,
#side-bar .collapsible-block-unfolded-link a,
#side-bar .collapsible-block-folded a {
    border-radius: 0.4rem 0.4rem 0 0;
    padding: 0.2rem 0;
}
 
#side-bar .side-block > *:last-child {
    border-bottom: none;
    border-radius: 0 0 0.4rem 0.4rem;
}
 
#side-bar .heading:last-child {
    border-radius: 0.4rem;
}
 
#side-bar .menu-item {
    overflow: hidden;
}
 
#side-bar .menu-item a {
    padding-right: 0.6em;
    display: flex;
    justify-content: space-between;
    align-items: center;
}
 
#side-bar .menu-item a::after {
    content: "›";
    font-weight: 900;
    font-family: var(--mono-font);
    font-size: 1.25em;
}
 
#side-bar .menu-item a:first-of-type {
    border-left: none;
}
 
/* MOBILE */
@media only screen and (max-width: 1024px) {
    #header {
        background-color: rgba(var(--q-yellow));
        background-image:  radial-gradient(circle, rgba(0, 0, 0, 0.05) 15%, transparent 0);
        background-size: 2rem 2rem;
    }
 
    #header h1 a::before {
        display: none;
    }
 
    #header h1 a {
        height: calc(100% - 2rem);
        margin: 1rem 0;
    }
 
    #login-status {
        right: 1rem;
    }
 
    #search-top-box {
        width: auto;
        height: auto;
        right: calc(var(--header-margin) + 4rem + 2rem);
        top: calc(var(--main-header-height) / 2 - 1.5rem);
    }
 
    #search-top-box-form .button {
        mask-image: none;
        -webkit-mask-image: none;
        width: 3rem;
        height: 3rem;
    }
 
    #search-top-box::after {
        mask-size: 35%;
        -webkit-mask-size: 35%;
    }
 
    #top-bar {
        padding: 0.5rem 1rem;
    }
 
    #top-bar div[class*=top-bar] > ul > li > a {
        padding-bottom: 1rem;
    }
 
    #top-bar div[class*=top-bar] > ul > li > ul {
        min-width: 100%;
        left: 0;
    }
 
    #top-bar div[class*=top-bar] > ul > li:last-of-type > ul {
        right: 0;
        left: auto;
    }
 
    #top-bar div[class*=top-bar] > ul > li > ul > li:nth-child(2n):nth-last-child(1) {
        border-bottom-left-radius: 0;
    }
 
    #top-bar div[class*=top-bar] > ul > li > ul > li:nth-child(2n+1):nth-last-child(1) {
        border-bottom-right-radius: 0;
    }
 
    #top-bar div[class*=top-bar] > ul > li > ul > li:nth-child(2n+1):nth-last-child(2) {
        border-bottom-left-radius: 0.4rem;
    }
 
    #side-bar:target .close-menu {
        width: 100%;
    }
 
}
 
/* SUPER CUTE!! */
.with-bai {
    margin-top: 13rem;
    padding-top: 5rem;
    position: relative;
}
 
.with-bai::before {
    content: "";
    display: block;
    height: 20rem;
    width: 12rem;
    background: url(http://backrooms-wiki.wikidot.com/local--files/theme:super-cute/bai.png);
    background-repeat: no-repeat;
    background-size: contain;
    background-position: center;
    position: absolute;
    top: -14rem;
    right: 2rem;
}
 
.with-bai.no-padding {
    padding-top: 0.5rem;
    min-height: 6rem;
}
 
.with-bai::after {
    content: "";
    display: block;
    height: 8rem;
    width: 10rem;
    background: url(http://backrooms-wiki.wikidot.com/local--files/theme:super-cute/cans.png);
    background-repeat: no-repeat;
    background-size: contain;
    background-position: center;
    position: absolute;
    top: -7.04rem;
    left: 1rem;
}
 
.with-shina {
    margin-top: 15rem;
    padding-top: 3rem;
    position: relative;
}
 
.with-shina.no-padding {
    padding-top: 0.5rem;
    min-height: 4rem;
}
 
.with-shina::before {
    content: "";
    display: block;
    height: 22rem;
    width: 19rem;
    background: url(http://backrooms-wiki.wikidot.com/local--files/theme:super-cute/shina.png);
    background-repeat: no-repeat;
    background-size: contain;
    background-position: center;
    position: absolute;
    top: -17.8rem;
    left: 0;
}
 
.with-shina::after {
    content: "";
    display: block;
    height: 10rem;
    width: 10rem;
    background: url(http://backrooms-wiki.wikidot.com/local--files/theme:super-cute/manstria.png);
    background-repeat: no-repeat;
    background-size: contain;
    background-position: center;
    position: absolute;
    top: -8.69rem;
    right: 0;
}
 
.with-tess {
    margin-top: 18rem;
    padding-top: 1.5rem;
    position: relative;
}
 
.with-tess.no-padding {
    padding-top: 0.5rem;
    min-height: 1rem;
}
 
.with-tess::before {
    content: "";
    display: block;
    height: 20rem;
    width: 23rem;
    background: url(http://backrooms-wiki.wikidot.com/local--files/theme:super-cute/tess.png);
    background-repeat: no-repeat;
    background-size: contain;
    background-position: center;
    position: absolute;
    top: -18.06rem;
    right: 2rem;
}
 
.with-tess::after {
    content: "";
    display: block;
    height: 6rem;
    width: 10rem;
    background: url(http://backrooms-wiki.wikidot.com/local--files/theme:super-cute/boat.png);
    background-repeat: no-repeat;
    background-size: contain;
    background-position: center;
    position: absolute;
    top: -4rem;
    left: 1rem;
}
 
@media only screen and (max-width: 590px) {
    .with-tess::after {
        display: none;
    }
}
 
@media only screen and (max-width: 520px) {
    .with-bai::after,
    .with-shina::after {
        display: none;
    }
}
 
@media only screen and (max-width: 520px) {
    .with-tess::before {
        right: 0.5rem;
    }
}
```

[- Hide](javascript:;)

Footnotes

[1](javascript:;). The example text comes from [Level 0](level-0.md).

---

Source: [https://backrooms-wiki.wikidot.com/theme:super-cute](https://backrooms-wiki.wikidot.com/theme:super-cute)
