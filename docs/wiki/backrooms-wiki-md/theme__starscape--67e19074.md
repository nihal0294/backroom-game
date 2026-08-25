---
title: "Starscape Theme"
source: "https://backrooms-wiki.wikidot.com/theme:starscape"
retrieved_at: "2026-08-23T23:41:32+00:00"
license: CC-BY-SA-3.0
---

# Starscape Theme

rating: +24[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

This theme was created by , a variation of the Stardust Theme by .

To import this theme to your page, put the following text anywhere inside it:

[[include :backrooms-wiki:theme:starscape]]

The Header font is Michromia.  
The Title font is Michromia.  
The Body font is Space Grotesk.  
The monospace font is Fira Code.

# Examples

[![Missing alt text.](https://backrooms-wiki.wdfiles.com/local--resized-images/theme:starscape/nebulaimage/medium.jpg)](https://backrooms-wiki.wdfiles.com/local--files/theme:starscape/nebulaimage)

im so normal

A horizontal rule can be created with 5 hyphens "-----" and extends across the whole page if it's not placed inside anything (eg a blockquote). The lines separating sections of this document are horizontal rules.

---

Titles can be created by putting between one and six plus "+" at the start of the line

[+ Titles](javascript:;)

[- Titles](javascript:;)

# First Title

## Second Title

### Third Title

#### Fourth Title

##### Fifth Title

###### Sixth Title

- [*Tabulator*](javascript:;)
- [*Tabulation*](javascript:;)
- [*Long Tab*](javascript:;)
- [*This empty tab has a really long name for some odd reason. I wonder why?*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
- [*Empty Tab*](javascript:;)
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

> This is a blockquote, created by putting "> " at the start of each line.  
> More text
>
> ---
>
> That's a horizontal rule
>
> > Nested blockquotes[1](javascript:;)

| This is a | table |
| --- | --- |
| You should know | how to make these |
| already | |

[[div class="styled-quote"]]

[[/div]]

[[div class="lightblock"]]

[[/div]]

[[div class="dark-styled-quote"]]

[[/div]]

[[div class="darkblock"]]

[[/div]]

[[div class="borderblock"]]

[[/div]]

[[div class="stripeblock"]]

[[/div]]

[[div class="starblock"]]

[[/div]]

[[div class="nebulablock"]]

[[/div]]

The quick brown fox jumped over the lazy dog.  
**The quick brown fox jumped over the lazy dog.**  
*The quick brown fox jumped over the lazy dog.*  
The quick brown fox jumped over the lazy dog.  
The quick brown fox jumped over the lazy dog.  
The quick brown fox jumped over the lazy dog.

Thanks to and for coding assistance, and to for techlighting.

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
@import url('https://fonts.googleapis.com/css2?family=Michroma&family=Radio+Canada&display=swap&family=Space+Grotesk&display=swap&family=Fira+Code&display=swap');
 
:root {
    --theme-base: "black-highlighter";
    --theme-id: "starscape";
    --theme-name: "Starscape Theme";
 
   --body-font: 'Space Grotesk', sans-serif;
   --header-font: 'Michroma', cursive;
   --title-font: 'Michroma', cursive;
   --mono-font: 'Fira Code', monospace;
 
    /* Header */
    --logo-image: url("http://backrooms-wiki.wikidot.com/local--files/component:theme/logo.svg");
    --header-title: "The Backrooms";
    --header-subtitle: "May the stars guide you.";
 
    /* Standard Colors */
    --pale-gray-monochrome: 250, 250, 250;
    /* white */
    --black-monochrome: 5, 12, 29;
    --dark-gray-monochrome: 5, 12, 29;
    /* navy blue for bg */
    --bright-accent: 208, 174, 126;
    /* orange */
    --medium-accent: 26, 65, 128;
    --dark-accent: 26, 65, 128;
    /* light blue */
 
    /* Primary Theme Colors */
    --swatch-background: var(--black-monochrome);
    --swatch-primary: var(--bright-accent);
    --swatch-secondary-color: var(--black-monochrome);
 
    /* Primary Text Colors */
    --swatch-text-general: var(--swatch-text-light);
    --swatch-important-text: var(--bright-accent);
 
    /* Primary Menu Colors */
    --swatch-menubg-color: var(--black-monochrome);
    --swatch-menutxt-dark-color: var(--white-monochrome);
    --swatch-menutxt-general-color: var(--swatch-menutxt-light-color);
    --swatch-border-color: var(--bright-accent);
    --footnotes-footer-bg-color: var(--medium-accent), .25;
 
    /* Primary Header Colors */
    --swatch-headerh1-color: var(--white-monochrome);
    --swatch-headerh2-color: var(--white-monochrome);
    --swatch-topmenu-border-color: var(--bright-accent);
    --swatch-topmenu-bg-color: var(--black-monochrome);
 
    /* Link Colors */
    --link-color: var(--bright-accent);
    --visited-link-color: var(--bright-accent);
    --hover-link-color: var(--bright-accent);
    --sidebar-links-text: var(--swatch-menutxt-dark-color);
    --link-color-bright: var(--medium-accent);
 
/* Header Gradients */
--gradient-header: none;
--diagonal-stripes: none;
 
}
 
#main-content {
    --tabs-selected-bg: var(--medium-accent);
    --tabs-selected-outline: var(--medium-accent);
}
 
/*weird stuff*/
 
 #page-title::after,
 .meta-title::after,
 #page-title::before,
 .meta-title::before {
        background: rgb(var(--swatch-primary));
}
 
#top-bar {
    --dropdown-border-color: var(--bright-accent);
}
 
hr {
  background-color: rgb(var(--bright-accent));
  border-color: rgb(var(--bright-accent));
}
 
#page-title, .meta-title {
    border-color: rgb(var(--bright-accent));
    color: rgb(var(--bright-accent))!important;
 
}
 
#skrollr-body, #header {
   background-image: none;
}
 
div#container-wrap{
    background: url(http://backrooms-sandbox-2.wdfiles.com/local--files/drbobtail/nebulaheader1.png) top center repeat-x;
    background-size: 100%;
}
 
#container {
   background-image: linear-gradient(180deg, rgba(0,0,0,0) 0%, rgba(5, 12, 29,1) 37%);
   background-size: 37rem 37rem;
   background-attachment: scroll;
}
 
/* Header Colours */
h1, h2, h3, h4, h5, h6 {
    color: rgb(var(--bright-accent));
}
 
/*image block*/
#page-content .scp-image-block .scp-image-caption {
    color: rgb(var(--bright-accent));
    background-color: rgba(var(--bright-accent), .25);
    border-color: rgba(var(--bright-accent));
}
 
#page-content .image-block,
#page-content  .scp-image-block {
    border: none;
    box-shadow: 0.05rem 0.1rem 0.3rem rgba(var(--bright-accent), .45) outset;
}
 
/*rate module*/
#content-wrap #page-content .page-rate-widget-box {
    background: none;
    border: 3px hidden;
    background-color: rgba(var(--bright-accent), .25);
    border-radius: 4px;
}
 
/*table*/
#page-content table.wiki-content-table th {
border: 1px solid rgb(var(--medium-accent)), !important;
border-radius: 3px;
background-color: rgba(var(--medium-accent), .25);
color: rgb(var(--medium-accent));
}
 
#page-content table.wiki-content-table td {
border: 1px solid rgb(var(--medium-accent)) !important;
}
 
/*top bar*/
#top-bar div.top-bar > ul > li > ul,
#top-bar div.mobile-top-bar > ul > li > ul {
    background-color: rgba(var(--bright-accent), 0.5);
}
 
#top-bar div.top-bar > ul > li > a:hover,
#top-bar div.mobile-top-bar > ul > li > a:hover {
    background-color: rgba(var(--bright-accent), 0.5);
}
 
#top-bar div.top-bar > ul > li:hover > a,
#top-bar div.mobile-top-bar > ul > li:hover > a {
    background-color: rgba(var(--bright-accent), 0.5);
}
 
/* tabs! */
 
/*unselected tab color*/
.yui-navset .yui-nav a,
.yui-navset .yui-navset-top .yui-nav a {
     background-color: rgba(var(--medium-accent), .25);
     color:rgb(var(--white-monochrome));
    border-radius: 6px 6px 0px 0px;
}
 
/*hover tab bg*/
.yui-navset .yui-nav a:hover,
.yui-navset .yui-nav a:focus {
     background-color: rgba(var(--medium-accent), .25);
    border-radius: 6px 6px 0px 0px;
}
 
/*selected tab bg*/
.yui-navset .yui-nav .selected,
.yui-navset .yui-navset-top .yui-nav .selected {
     background-color: rgba(var(--medium-accent), 1);
    border-radius: 6px 6px 0px 0px;
}
 
.yui-navset .yui-nav .selected a:focus,
.yui-navset .yui-nav .selected a:active {
     background-color: rgba(var(--medium-accent), 1);
    border-radius: 6px 6px 0px 0px;
}
 
/*backer background*/
.yui-navset .yui-nav li,
.yui-navset .yui-navset-top .yui-nav li {
    background: rgb(var(--black-monochrome));
    border-radius: 6px 6px 0px 0px;
}
 
/* content background color */
#content-wrap #page-content .yui-navset .yui-content {
    background-color: rgba(var(--medium-accent), 0.25);
}
 
/* content border */
#content-wrap #page-content .yui-navset .yui-content,
#content-wrap #page-content .yui-navset .yui-navset-top .yui-content {
    border: 1px hidden rgb(var(--medium-accent));
    box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.45) inset;
    border-radius: 0px 0px 6px 6px;
}
 
/* edit menu */
 
form#edit-page-form:not(.data-form) {
    background-color: rgba(var(--bright-accent), 0.25);
}
 
/*mobile stuff*/
@media only screen and (max-width:768px){
 
:root{
   --header-height-on-mobile: 7.5rem;
}
 
#main-content {
max-width: 90vw;
padding: 0;
margin: 9.2em auto 0;
}
 
#header {
position: absolute;    
top: 0.5rem;
height: var(--header-height-on-mobile);
}
 
#page-title, .meta-title {
position: center;
padding-top: 3.5rem;
}
 
div#container-wrap{
    background: url(http://backrooms-sandbox-2.wdfiles.com/local--files/drbobtail/nebulaheader1.png) top center repeat-x;
    background-size: 220%;
}
 
#container {
   background-image: linear-gradient(180deg, rgba(0,0,0,0) 0%, rgba(5, 12, 29,1) 37%);
   background-size: 20rem 20rem;
   background-attachment: scroll;
}
}
 
@media only screen and (max-width:1366px){
#container {
   background-image: linear-gradient(180deg, rgba(0,0,0,0) 0%, rgba(5, 12, 29,1) 37%);
   background-size: 25rem 25rem;
   background-attachment: scroll;
}
div#container-wrap{
    background: url(http://backrooms-sandbox-2.wdfiles.com/local--files/drbobtail/nebulaheader1.png) top center repeat-x;
    background-size: 160%;
}
}
 
/*funny blocks*/
#page-content blockquote {
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.45) inset;
   background-color:rgba(var(--bright-accent), .25);
   border-color: rgb(var(--bright-accent));
   border-radius: 6px;
}
 
.styled-quote {
   background-color:rgba(var(--bright-accent), .25);
   border-radius: 6px;
   border-left: 0.5rem solid rgb(var(--bright-accent));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.45) inset;
   color: rgb(var(--white-monochrome));
}
 
.dark-styled-quote {
   background-color:rgba(var(--medium-accent), .25);
   border-radius: 6px;
   border-left: 0.5rem solid rgb(var(--medium-accent));
   color:rgb(var(--white-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.45) inset;
}
 
.dark-styled-quote a{
color: rgb(var(--swatch-menubg-medium-color));
}
 
.lightblock {
   background-color:rgba(var(--bright-accent), .25);
   border-radius: 6px;
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   color: rgb(var(--white-monochrome));
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.45) inset;
}
 
.darkblock {
   background-color:rgba(var(--medium-accent), .25);
   color:rgb(var(--white-monochrome));
   border-radius: 6px;
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.45) inset;
}
 
.stripeblock {
    background: repeating-linear-gradient(45deg, rgb(var(--black-monochrome)), rgb(var(--medium-accent)) 15%);
    background-color:rgb(var(--bright-accent));
    color:rgb(var(--swatch-text-general));
    padding: 0.01rem 1rem;
    margin: 0.5rem 0 0.5rem 0.25rem;
    border: none;
    border-radius: 6px;
    box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.45) inset;
 }
 
.starblock {
  border: 20px solid transparent;
  padding: 0.01rem 1rem;
  border-image: url(http://backrooms-sandbox-2.wdfiles.com/local--files/drbobtail/border.png) 152;
}
 
.borderblock {
   background-color:rgb(var(--medium-accent), .25);
   color:rgb(var(--pale-grey-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   border: solid 0.3rem rgb(var(--bright-accent));
   letter-spacing: 0px;
   border-radius: 6px;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.45) inset;
}
 
.nebulablock{
  width: auto;
  padding: 0.01rem 1rem;
  margin: 0.5rem 0 0.5rem 0.25rem;
  background: rgba(255, 255, 255, 0.25) url(http://backrooms-sandbox-2.wdfiles.com/local--files/drbobtail/nebulaheader1.png) repeat center;
  box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.45) inset;
  border-radius: 6px;
  border: none;
}
 
.code {
    border: 3px hidden rgb(5, 12, 29));
    background-color:rgba(var(--medium-accent), .25);
    border-radius: 6px;
    box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.45) inset;
}
 
.footnotes-footer {
    border-radius: 6px;
    box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.45) inset;
    border-left: 0.75rem solid rgb(var(--medium-accent));
    border-top: 0.75rem solid rgb(var(--medium-accent));
}
 
#header h1 a:hover:before {
     text-shadow: var(--header-text-shadow);
}
 
/* ==SD CLASS CODE== */
 
.sd-container {
   --sd-border:var(--medium-accent);
   --sd-bullets:var(--sd-border);
   --sd-symbol:255,255,255;
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

> "[Starscape Theme](theme__starscape--67e19074.md)" by DrBobtail, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/theme:starscape](theme__starscape--67e19074.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

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

  "<a href="https://backrooms-wiki.wikidot.com/theme:starscape">Starscape Theme</a>" by DrBobtail, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/theme:starscape">https://backrooms-wiki.wikidot.com/theme:starscape</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

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

> **Name:** “Cosmic Cliffs” Carina Nebula NASA’s  
> **Author:** NASA  
> **License:** [CC0 1.0](https://creativecommons.org/publicdomain/zero/1.0/)  
> **Source Link:** [Link](https://www.rawpixel.com/image/7514064/photo-image-public-domain-galaxy-space)

> **Name:** HH 901 and HH 902 in the Carina nebula (captured by the Hubble Space Telescope)  
> **Author:** NASA  
> **License:** [CC0 1.0](https://creativecommons.org/publicdomain/zero/1.0/)  
> **Source Link:** [Link](https://commons.wikimedia.org/wiki/File:HH_901_and_HH_902_in_the_Carina_nebula_(captured_by_the_Hubble_Space_Telescope).jpg)

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

Footnotes

[1](javascript:;). And here's a footnote!

---

Source: [https://backrooms-wiki.wikidot.com/theme:starscape](https://backrooms-wiki.wikidot.com/theme:starscape)
