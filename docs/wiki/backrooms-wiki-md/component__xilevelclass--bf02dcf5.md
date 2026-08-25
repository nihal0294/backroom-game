---
title: "Xilevelclass"
source: "https://backrooms-wiki.wikidot.com/component:xilevelclass"
retrieved_at: "2026-08-23T23:38:08+00:00"
license: CC-BY-SA-3.0
---

# Xilevelclass

W A R N I N G  
**PLEASE DO NOT TOUCH THIS PAGE WITHOUT STAFF PERMISSION.**

**This is a template page used internally by the Backrooms Wiki.**

---

rating: +11[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  

Info

Xilevelclass by . Closely based off [Nulevelclass](component__nulevelclass--45cf99e3.md) by . Idea to include grey bars from .

Special thanks to for techlighting this page and for critiquing this.

[Close](index.md)

## XiLevelClass

This is a newer alternate system for assigning survival difficulty classes to levels. You can use it as the banner for your level pages to show how dangerous the level is.

You rate the various dangers of the level, and the ratings will be shown in the banner alongside an overall survival class.

Special thanks to who created the original [Nulevelclass](component__nulevelclass--45cf99e3.md). XiLevelClass is an updated version of NuLevelClass, and you can see the changes made from NuLevelClass in the collapsible below.

[+ Show Changes](javascript:;)

[- Hide Changes](javascript:;)

1. Added the ability to rate the scarcity of food and water in a particular level. This is a key aspect of a level's survivability, but it was not included in the previous template.
2. Changed how the overall survival class is calculated. The method of taking the average of all of the risks used previously had some shortcomings[1](javascript:;).
3. There are now faint grey bars to show how many difficulty bars had not been filled in. This should make the difficulty bars easier to read and make them more visually appealing.
4. Removed level number from the banner. This was to make room for the resources rating, and including the level's number is redundant as it is in the page's tile.

SURVIVAL CLASS  
**4**

**Resources: 3/5**  
Food is Scarce

**Exit: 4/5**  
Very Difficult to Exit

**Environment: 5/5**  
Deadzone

**Entities: 2/5**  
Some Hostile Presence

[[include :backrooms-wiki:component:xilevelclass  
res=3  
|ext=4  
|env=5  
|ent=2  
]]

# How to use it

You rate four aspects of the level's danger from 0-5. The higher the number, the worse the danger is.

### Scarcity of Food & Water - {$res}

Also known as resource scarcity, this is how rare edible food and drinkable water are in a particular level. What the different numbers mean is as follows:

- 0 - Food is Plentiful
- 1 - Food is Common
- 2 - Food is Uncommon
- 3 - Food is Scarce
- 4 - Water, but No Food
- 5 - No Drinkable Fluids

### Difficulty of Exit - {$ext}

How difficult it is to find an exit to the level. What the different numbers mean is as follows:

- 0 - Guaranteed Exit
- 1 - Easy to Exit
- 2 - Somewhat Difficult to Exit
- 3 - Difficult to Exit
- 4 - Very Difficult to Exit
- 5 - Dead End

### Environmental Dangers - {$env}

How dangerous the level's environment is. This can include low or high temperatures, crumbling buildings, radiation or toxins, drowning risks, falls from heights, and exits leading to dangerous levels that can be easily entered accidentally, among others. What the different numbers mean is as follows:

- 0 - No Environmental Risks
- 1 - Low Environmental Risk
- 2 - Some Environmental Risks
- 3 - High Environmental Risk
- 4 - Extreme Environmental Risk
- 5 - Deadzone

### Hostile Entity Prescence - {$ent}

The level of danger posed by hostile entities. This can include monsters, harmful plants, deadly microorganisms, and dangerous robots. What the different numbers mean is as follows:

- 0 - No Hostile Entities
- 1 - Minimal Hostile Presence
- 2 - Some Hostile Presence
- 3 - Major Hostile Presence
- 4 - Extreme Hostile Presence
- 5 - Hostile Infestation

# Overall Survivability

The overall survival class number is calculated **automatically for you** by using the below formula:

(1)

\begin{align} Hazard\,Survivability\,Rating = \\ \frac{(Entity\,Rating + Environmental\,Rating) \times (1+0.125\times Exit\,Rating)}{3} \\ \\ Starvation\,\&\,Thirst\,Survivability\,Rating = \\ \frac{Resource\,Rating\times Exit\,Rating}{4} \\ \end{align}

The survival difficulty class is the maximum of the Hazard Survivability Rating and the Starvation & Thirst Survivability Rating rounded to the nearest whole number.

# Class Customisation

If you want to change the overall survival class to something different than what the formula outputs, you set customclass=1 and then set parameter 'classtext' to your custom class name. The number of difficulty bars can be changed with linesnum set to the number of lines.

### Example

[[include :backrooms-wiki:component:xilevelclass  
res=1  
|ext=3  
|env=2  
|ent=0  
|customclass=1  
|classtext=3E  
|linesnum=3  
]]

SURVIVAL CLASS  
**3E**

**Resources: 1/5**  
Food is Common

**Exit: 2/5**  
Somewhat Difficult to Exit

**Environment: 3/5**  
High Environmental Risks

**Entities: 0/5**  
No Hostile Entities

  
If the class name is too long to fit, you can change the font size by setting the parameter 'fntsz' to the size of the font.

### Example

[[include :backrooms-wiki:component:xilevelclass  
res=1  
|ext=1  
|env=1  
|ent=1  
|customclass=1  
|classtext=Habitable  
|fntsz=1.1rem  
]]

SURVIVAL CLASS  
**Habitable**

**Resources: 1/5**  
Food is Common

**Exit: 4/5**  
Very Difficult to Exit

**Environment: 1/5**  
Low Environmental Risk

**Entities: 1/5**  
Minimal Hostile Presence

  
If you do not want the overall survival difficulty class at all, you can set the parameter 'noclass' equal to zero.

[[include :backrooms-wiki:component:xilevelclass  
res=5  
|ext=5  
|env=4  
|ent=5  
|noclass=1  
]]

**Resources: 5/5**  
No Drinkable Fluids

**Exit: 5/5**  
Dead End

**Environment: 4/5**  
Extreme Environmental Risk

**Entities: 5/5**  
Hostile Infestation

# Extremely Customised Classes

An example of how to make an entirely custom class is:

[[include :backrooms-wiki:component:xilevelclass  
|customline=1  
|linecolor=255, 252, 229  
|res=3  
|customres=1  
|restext=Only Food is Ice Cream  
|rescolor=147, 110, 76  
|resimg=url("<https://backrooms-wiki.wdfiles.com/local--files/component%3Axilevelclass/ice_cream.png>")  
|ent=5  
|customent=1  
|enttext=I Scream  
|entcolor=255, 165, 182  
|entimg=url("<https://backrooms-wiki.wdfiles.com/local--files/component%3Axilevelclass/eye_cream.png>")  
|ext=3  
|customext=1  
|exttext=Ice Cream is Everywhere  
|extcolor=255, 165, 182  
|extimg=url("<https://backrooms-wiki.wdfiles.com/local--files/component%3Axilevelclass/ice_cream.png>")  
|env=1  
|customenv=1  
|envtext=It is Cold  
|envcolor=147, 110, 76  
|envimg=url("<https://backrooms-wiki.wdfiles.com/local--files/component%3Axilevelclass/ice_cream.png>")  
|customclass=1  
|classtext=Two Scoops  
|fntsz=1rem  
|linesnum=2  
|nograybars=1  
]]

SURVIVAL CLASS  
**Two Scoops**

**Resources: 3/5**  
Ice Cream Only Food

**Exit: 3/5**  
Ice Cream is Everywhere

**Environment: 1/5**  
It is Cold

**Entities: 5/5**  
I Scream

**Create however many SD classes you like!**

[‡ Licensing / Citation](javascript:;)

[- ‡ Hide Licensing / Citation](javascript:;)

> "XiLevelClass" by , from the Backrooms Wiki. Source: <https://backrooms-wiki.wikidot.com/xilevelclass>. Licensed under CC-BY-SA-3.0.

The template and this page were very closely based off:

> **Name:** NuLevelClass  
> **Author:**   
> **License:** CC BY-SA 3.0  
> **Link:** [https://backrooms-wiki.wikidot.com/component:nulevelclass](component__nulevelclass--45cf99e3.md)

Footnotes

[1](javascript:;). For example, the [Red Rooms](red-rooms.md) would be given a survival difficulty class of 3 with the old calculation method despite the fact that death is almost guaranteed upon entering that level, and [Level 15](level-15.md) would be a survival difficulty class of 2 despite it being entirely safe.  
The difficulty of exiting a level on its own is not dangerous, but if the level contains other dangers, then being stuck in the level for longer results in more time being exposed to those dangers.

---

Source: [https://backrooms-wiki.wikidot.com/component:xilevelclass](https://backrooms-wiki.wikidot.com/component:xilevelclass)
