---
title: "Scrapyard Theme"
source: "https://backrooms-wiki.wikidot.com/theme:scrapyard"
retrieved_at: "2026-08-23T23:42:19+00:00"
license: CC-BY-SA-3.0
---

# Scrapyard Theme

rating: +14[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  
This theme was made for articles revolving around [The Scrapyard](level-817.md) and Frederick Kaiser.

To import this theme to your page, put the following text anywhere inside it:

---

[[include :backrooms-wiki:theme:scrapyard]]

![Missing alt text.](http://backrooms-wiki.wikidot.com/local--files/theme:scrapyard/Scrapyard.PNG)

We already know the smell of the game!

# Ready To Riot?

A horizontal rule can be created with 5 hyphens "-----" and extends across the whole page if it's not placed inside anything (ex: a blockquote). The lines separating sections of this page are horizontal rules.

---

Titles can be created by putting between one and six "+" at the start of the line

[+ Titles](javascript:;)

[- Titles](javascript:;)

# First Title

## Second Title

### Third Title

#### Fourth Title

##### Fifth Title

###### Sixth Title

  

---

- [*Tabview*](javascript:;)
- [*TabTwo*](javascript:;)
- [*Long Boi*](javascript:;)
- [*Mankind knew that they cannot change society, so instead of reflecting on themselves, they blamed the beasts.*](javascript:;)
- [*Example Tab*](javascript:;)
- [*Another Tab*](javascript:;)
- [*And Another Tab*](javascript:;)
- [*One More Tab*](javascript:;)

This is a tab view. Really useful! I'm gonna cram a ton of Guilty Gear references here because. Why the fuck not?

Hey look, there's more text here.

Volcanic Viper!

BACK TO BACK!

Death comes arrivin’ on a Midnight Train!

BACK TO BACK!

Conscience is screamin’ to the End!

BACK TO BACK!

Cannot let anyone do it again!

BACK TO BACK!

I can no longer pretend!

Give me a break, you damned!

Just wanna get back my dice again

BLAZING DOWN!

What a Heavy Day!

Yes, the big name on this tab is a Guilty Gear reference. This whole theme takes a lot of inspiration from the Guilty Gear aesthetic!

632146 HS (Tyrant Rave)

214214 S (Dragon Install)

> Here comes daredevil!
>
> > Heaven or Hell
> >
> > > Duel 1:
> > >
> > > > Let's Rock!

> Woah  
> This kinda looks like the Fireseal color scheme! Mission accomplished.

All Guns Blazing!

Napalm Death

---

> This is a blockquote, created by putting "> " at the start of each line.  
> More text
>
> ---
>
> That's a horizontal rule
>
> > Nested blockquotes
> >
> > > Nested2
> > >
> > > > Nested3

---

| This is a | table |
| --- | --- |
| Strike back! | Get excited! |
| Get them out of your way! | |

---

[[div class="styled-quote"]]

[[/div]]

---

[[div class="lightblock"]]

[[/div]]

---

[[div class="dark-styled-quote"]]

[[/div]]

---

[[div class="darkblock"]]

[[/div]]

---

The title and header font is Rock Salt.  
The body font is Audiowide  
The monospaced font is Turret Road

---

Heaven Or Hell, Duel 1: Let's Rock!  
**Heaven Or Hell, Duel 1: Let's Rock!**  
*Heaven Or Hell, Duel 1: Let's Rock!*  
Heaven Or Hell, Duel 1: Let's Rock!  
Heaven Or Hell, Duel 1: Let's Rock!  
Heaven Or Hell, Duel 1: Let's Rock!

---

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
@import url(https://backrooms-wiki.wdfiles.com/local--code/component%3Apatch/1);
 
@import url('https://fonts.googleapis.com/css2?family=Turret+Road:wght@700&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Rock+Salt&display=swap');
 
 @import url('https://fonts.googleapis.com/css2?family=Audiowide&display=swap');
 
:root {
   --theme-base: "black-highlighter";
   --theme-id: "liminal";
   --theme-name: "Liminal Theme";
 
   --logo-image: url("http://backrooms-wiki.wikidot.com/local--files/theme:scrapyard/Scrapyard.PNG");
   --header-title: "The Scrapyard";
   --header-subtitle: "Get Ready To Rock";
 
   --body-font: 'Audiowide', cursive;
   --header-font: 'Rock Salt', cursive;
   --title-font: 'Rock Salt', cursive;
   --mono-font: 'Turret Road', cursive;
 
   --white-monochrome: 31, 31, 31;
   --pale-gray-monochrome: 156, 16, 16;
   --light-gray-monochrome: 201, 20, 20;
   --gray-monochrome: 230, 230, 230;
   --black-monochrome: 255, 255, 255;
   --bright-accent: 255, 255, 255;
   --medium-accent: 18, 18, 18;
   --dark-accent: 217, 0, 0;
   --pale-accent: 201, 20, 20;
   --swatch-menubg-dark-color: var(--pale-gray-monochrome);
   --thing: 255, 255, 255;
 
   --swatch-topmenu-border-color: var(--medium-accent);
 
   --link-color: 171, 171, 171;
   --hover-link-color: 237, 130, 97;
 
   --background-gradient-distance: 0rem;
 
   --gradient-header: linear-gradient(to top,
      rgba(var(--medium-accent)) 0%,
      rgba(var(--medium-accent), 0.90) 100%
   );
   --diagonal-stripes: linear-gradient(transparent 0);
}
 
#skrollr-body {
    width: 100%;
    position: absolute;
    top: 0;
    left: 0;
    background-image: url("http://backrooms-wiki.wikidot.com/local--files/theme:scrapyard/Theme.png");
    background-repeat: repeat-x;
    background-size:  inherit;
}
 
#container {
   background-image: none
}
 
div#page-options-bottom-2 > a, div#page-options-bottom > a {
   border-radius: 0em;
   -moz-border-radius: 0em;
   border: none;
}
 
div#page-options-bottom-2 > a:active, div#page-options-bottom-2 > a:hover, div#page-options-bottom > a:active, div#page-options-bottom > a:hover {
   border: none;
}
 
#header, #top-bar {
   background-attachment: scroll;
}
 
#header {
   background-image: none;
    color: rgb(var(--dark-accent));
}
 
#page-title {
    border-color: rgb(var(--light-gray-monochrome));
    color: rgb(var(--dark-accent))!important;
    font-size: 2.5rem;
}
 
#header::before {
   content: "";
   position: absolute;
   height: 90%;
   width: 100%;
   left: 0;
   top: 0;
   background-image: var(--logo-image);
   background-size: auto 8.5rem;
   background-position: center;
   background-repeat: no-repeat;
   opacity: 0.8;
}
 
#header h1, #header h1 a {
   font-size: 2.5rem;
   position: absolute;
   top: 0.05rem;
   margin: 0;
   width: 100%;
   display: flex;
   justify-content: center;
   z-index: 0;
}
 
#header h2, #header h2 span, #header h2 span::before {
   font-size: 1.3rem;
   position: absolute;
   top: 1.9rem;
   margin: 0;
   width: 100%;
   display: flex;
   justify-content: center;
}
 
#header h1 a::before, #header h2 span::before {
   text-shadow: .063rem 0.1rem 0.1rem #0c0c0c;
   color: white;
   line-height: 1
}
 
h1 {
    font-size: 2rem;
    color:rgb(var(--dark-accent));
    line-height: 1
}
 
h2 {
    font-size: 1.8rem;
    color:rgb(var(--dark-accent));
    line-height: 1
}
 
h3 {
    font-size: 1.6rem;
    color:rgb(var(--dark-accent));
    line-height: 1
}
 
h4 {
    font-size: 1.4rem;
    color:rgb(var(--dark-accent));
    line-height: 1
}
 
h5 {
    font-size: 1.2rem;
    color:rgb(var(--dark-accent));
    line-height: 1
}
 
h6 {
    font-size: 1rem;
    color:rgb(var(--dark-accent));
    line-height: 1
}
 
a.newpage {
   background: transparent;
   text-decoration: none
}
 
a.newpage {
   color: rgb(var(--newpage-color))
}
 
blockquote {
   box-shadow: 0.2rem 0.4rem 1.2rem rgba(0,0,0,.25);
}
 
.styled-quote {
   background-color:rgb(var(--pale-gray-monochrome));
   border-left: 0.5rem solid rgba(var(--gray-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.2rem 0.4rem 1.2rem rgba(0,0,0,.25);
}
 
.dark-styled-quote {
   ));
   border-left: 0.5rem solid rgba(var(--pale-gray-monochrome));
   color:rgb(var(--white-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.2rem 0.4rem 1.2rem rgba(0,0,0,.25);
}
 
.dark-styled-quote a{
color: rgb(var(--swatch-menubg-medium-color));
}
 
.lightblock {
   background-color:rgb(var(--pale-gray-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.8rem 1.2rem rgba(0,0,0,.25);
}
 
.darkblock {
   background-color:rgb(var(--gray-monochrome));
   color:rgb(var(--white-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.8rem 1.2rem rgba(0,0,0,.25);
}
 
.darkblock a {
color: rgb(var(--swatch-menubg-medium-color));
}
 
.yui-navset .yui-nav .selected a,
.yui-navset .yui-nav .selected a:focus,
.yui-navset .yui-nav .selected a:hover {
    background-color: rgb(var(--thing));
}
 
#login-status a {
    color: rgb(var(--gray-monochrome));
}
 
#login-status ul a {
    color: rgb(var(--white-monochrome));
}
 
.customFont {
    font-family: 'Turret Road', cursive;
}
.main-font{
    font-family: 'Rock Salt', cursive;
}
```

[- Close](javascript:;)

---

[Author(s)](javascript:;)

[Hide author](javascript:;)

Made by and   
[Author page](https://backrooms-wiki.wikidot.com/saria)

| Other Pages By This Author | |
| --- | --- |
| Levels | [Tranquility](level-63.md) | [The Grand Jungle](level-204.md) | [Inconvenience Store](level-480.md) |
| Sub-sections | N/A |
| Rooms | [The Shrine](the-shrine.md) |
| Entitles | [Xeroxes](entity-152.md) | [Jazzheads](entity-197.md) | [The Decay](https://backrooms-wiki.wikidot.com/the-decay) |
| Objects | [Maiden's Ink](object-26.md) | [Bottled Lightning](object-42.md) |
| GOIs | N/A |
| POIs | N/A |
| Canons | [Decay](decay-canon-hub.md) |
| Tales | [The Survivor](https://backrooms-wiki.wikidot.com/the-survivor) | [Seed of darkness](https://backrooms-wiki.wikidot.com/seed-of-darkness) | [Rendezvous](https://backrooms-wiki.wikidot.com/rendezvous) | [Something Strange, In The Neighbourhood](https://backrooms-wiki.wikidot.com/something-strange-in-the-neighbourhood) | [Informed opinion](https://backrooms-wiki.wikidot.com/informed-opinion) | [I do It For Them](https://backrooms-wiki.wikidot.com/i-do-it-for-them) | [Back and forth](back-and-forth.md) (Collab) | [Love in Liminality](https://backrooms-wiki.wikidot.com/love-in-liminality) |
| Themes | [Decay (Theme)](theme__decay--00e61795.md) | [Travelrooms Agency](theme__tra--698e2040.md) | [Scrapyard](theme__scrapyard--48075312.md) | [Halloween 2021](theme__halloween2021--3c3c9a2f.md) |

---

Source: [https://backrooms-wiki.wikidot.com/theme:scrapyard](https://backrooms-wiki.wikidot.com/theme:scrapyard)
