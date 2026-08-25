---
title: "Phenomenon Threat Scale (PTS)"
source: "https://backrooms-wiki.wikidot.com/component:pts"
retrieved_at: "2026-08-23T23:39:43+00:00"
license: CC-BY-SA-3.0
---

# Phenomenon Threat Scale (PTS)

W A R N I N G  
**PLEASE DO NOT TOUCH THIS PAGE WITHOUT STAFF PERMISSION.**

**This is a template page used internally by the Backrooms Wiki.**

---

{$title}Languages:

  
[![flag-saudi-arabia2x.png](https://cdn3.iconfinder.com/data/icons/142-mini-country-flags-16x16px/32/flag-saudi-arabia2x.png)](component__pts--f4475e75.md)  
[![china](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/china)](component__pts--f4475e75.md)  
[![flag-germany2x.png](https://cdn3.iconfinder.com/data/icons/142-mini-country-flags-16x16px/32/flag-germany2x.png)](component__pts--f4475e75.md)  
[![uk](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/uk)](component__pts--f4475e75.md)  
[![spain](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/spain)](component__pts--f4475e75.md)  
[![france](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/france)](component__pts--f4475e75.md)  
[![indonesia](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/indonesia)](component__pts--f4475e75.md)  
[![italy](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/italy)](component__pts--f4475e75.md)  
[![KO](http://backrooms-wiki.wikidot.com/local--files/component:translations/KO)](component__pts--f4475e75.md)  
[![poland](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/poland)](component__pts--f4475e75.md)  
[![portugal](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/portugal)](component__pts--f4475e75.md)  
[![russia](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/russia)](component__pts--f4475e75.md)  
[![thai](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/thai)](component__pts--f4475e75.md)  
[![toki](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick-3/toki)](component__pts--f4475e75.md)  
[![vietnam](http://backrooms-sandbox-2.wikidot.com/local--files/zenzick/vietnam)](component__pts--f4475e75.md)

rating: +21[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

Oh,

Hi!

By:

Design:

Everywhere you look

Place

Techlighter

Have Fun! =)

Enjoy

---

# Overview:

Phenomenon Threat Scale (PTS for short) is a simple and elegant UI to show the general characteristics of a Phenomenon with large flexibility and customizability

---

# How To Use:

[[include :backrooms-wiki:component:pts  
|number=ClassNumber  
|class=ClassName  
|aoe=AreaOfEffect  
|frequency=Frequency  
|duration=Duration  
|intensity=Intensity  
|dropdown=DropdownAnimation  
|dropdownnum=DropdownNumber  
|title-component=ComponentTitle  
|title-class=ClassTitle  
|title-sub=SubAttrubiteTitle  
|title-one=1stDropdownTitle  
|title-two=2ndDropdownTitle  
|title-three=3rdDropdownTitle  
|title-four=4thDropdownTitle  
|value-four=4thDropdownValue  
|theme-font=UseThemeFont  
]]

| Name | Value | Optional | Description |
| --- | --- | --- | --- |
| ClassNumber | {$number} |  | The number or index of the class. Any 2 character combination should work sometimes even 3, as long as you don't use very wide characters. |
| ClassName | {$class} | ✓\* | The name of the class. If you have used a preset, filling this is will override the preset class name.  \*This is auto-filled and henceforth optional **only if** you use one of the presets mentioned below. |
| AreaOfEffect | {$aoe} |  | The type of object/entity/place this phenomenon affects. |
| Frequency | {$frequency} |  | How frequent the phenomenon is. |
| Duration | {$duration} |  | How long the phenomenon is. |
| Intensity | {$intensity} |  | How intense/dangerous/hazardous the phenomenon is regarding a human or the entity it affects. |
| DropdownAnimation | {$dropdown} | ✓ | Make this value "false" to disable the dropdowns completely. Overrides --pts-dropdown-hide-distance CSS property. |
| DropdownNumber | {$dropdownnum} | ✓ | Ranges between 0 and 4, represents the number of sub-attributes (dropdowns), value is (3) by default. |
| CompnoentTitle | {$title-component} | ✓ | Represents the title of the component in the diamond, (PTS:) by default. |
| ClassTitle | {$title-class} | ✓ | Represents the title before the class name, (Class:) by default. |
| SubAttributeTitle | {$title-sub} | ✓ | Represents the sub attribute under the class, (Area of Effect:) by default. |
| 1stDropdownTitle | {$title-one} | ✓ | Represents the title of the 1st dropdown from the left, (Frequency) by default. |
| 2ndDropdownTitle | {$title-two} | ✓ | Represents the title of the 2nd dropdown from the left, (Duration) by default. |
| 3rdDropdownTitle | {$title-three} | ✓ | Represents the title of the 3rd dropdown from the left, (Intensity) by default. |
| 4thDropdownTitle | {$title-four} | \* | Represents the title of the 4th dropdown from the left.  \*Only required and visible if you set {$dropdownnum} to 4. |
| 4thDropdownValue | {$value-four} | \* | Represents the value of the 4th dropdown from the left.  \*Only required and visible if you set {$dropdownnum} to 4. |
| UseThemeFont | {$theme-font} | ✓ | Make this value "a" to make the component use the current theme's font instead of Poppins. Overrides --pts-title-font and --pts-body-font CSS properties. |

---

# Built-in Class Numbers:

PTS houses a total of 56 classes, 53 of which are composed of 1 or 2 sections, which are:

### 1. Danger Level

The Danger Level is a number that represents how dangerous a phenomenon is, from 0 being completely safe, to 5 being always lethal. There is also Danger Level "Variable" which represents something that varies in danger from occurrence to another.

In most cases, you want to include a Danger Level in your class, but you may drop it if it's unknown, undetermined or impossible to conclude/derive.

Here is a quick guide you can follow:  
**0 - Harmless:** doesn't cause any form of harm nor perceptible negative effects.  
**1 - Minimal:** causes acute harm and/or very short-term negative effects, those that typically heal from within a few minutes to a few days.  
**2 - Mild:** causes small harm and/or short-term negative effects, those that typically heal within a few weeks.  
**3 - Moderate:** causes temperate harm and/or medium-term negative effects, those that typically heal within a few months.  
**4 - Severe:** causes great harm and/or long-term negative effects, those that typically heal within many months or years.  
**5 - Lethal:** causes critical harm and/or permanent negative effects, those that typically do not heal and could be fatal.  
**V - Variable:** unpredictable/inconsistent harm, could be very safe or very dangerous depending on the instance without a common trend.

Pro Tips:

- Rate your phenomenon based on the average/most common outcome.
- Factor in all fields of effect into your calculation, if applicable.
- If severity and length of heal time don't match, try to find something somewhere in between.
- Use your sense, there could be edge cases that don't fit the description of the danger levels here, try to pick the most logical / the closest.

### 2. Field

This is the field that either the phenomenon happens in, or its consequences appear at.  
When a phenomenon covers 2 or more fields, use the most prominent one, or use Variable.

You may also choose to not include this section entirely, and instead opt into just using a Danger Level alone.

Here is a simplified explanation of each one:  
**E - Environmental:** The phenomenon affects the physical world itself, as in, the colliders of objects, or their topology.  
**M - Metaphysical:** The phenomenon affects something beyond observation and study, like the laws of time and the universe itself, or the consciousness of living/non-living beings.  
**P - Psychological:** The phenomenon affects the thoughts and emotions of conscious beings, and/or alters and modifies conscious and sub-conscious thoughts.  
**B - Biological:** The phenomenon affects the biology of living beings, like their internal organs, their blood composition, finger count or nerves' sensitivity.  
**T - Technological:** The phenomenon affects forms of modern technology, like computers, radios, CDs, or Typewriters.  
**V - Variable:** The phenomenon affects multiple different fields, either at the same time, or a different one each time.

Pro Tip: rate your phenomenon based on the most prominent field, if there are many prominent fields or if it fluctuates strongly and is unpredictable, consider opting for Variable.

### Single Classes

In addition to the previous compositional classes, there are 3 classes that function independently, and can't be composited into other classes. these are:  
**UD - Undetermined:** The phenomenon's properties are undetermined, and can't be discovered for one reason or another.  
**PD - Pending:** The phenomenon is currently under study, and is pending a classification.  
**NA - Not Applicable:** The phenomenon can not be classified and does not abide by normal classification rules.

### Table Guide:

The following is a table with all possible composite and single classes. Using these in {$number} will auto-fill the {$class} value for you. Also, this is case sensitive.

**Syntax:** Put the row (Danger Level) followed by the column (Field/Type); so 3E results in Class 3 Environmental, but E3 is not supported by default.

P.S. If you are on mobile, you can scroll horizontally on this table.

|  |  | E | M | P | B | T | V |
| --- | --- | --- | --- | --- | --- | --- | --- |
|  |  | Environmental | Metaphysical | Psychological | Biological | Technological | Variable |
| 0 | Harmless | 0 Environmental | 0 Metaphysical | 0 Psychological | 0 Biological | 0 Technological | 0 Variable |
| 1 | Minimal | 1 Environmental | 1 Metaphysical | 1 Psychological | 1 Biological | 1 Technological | 1 Variable |
| 2 | Mild | 2 Environmental | 2 Metaphysical | 2 Psychological | 2 Biological | 2 Technological | 2 Variable |
| 3 | Moderate | 3 Environmental | 3 Metaphysical | 3 Psychological | 3 Biological | 3 Technological | 3 Variable |
| 4 | Severe | 4 Environmental | 4 Metaphysical | 4 Psychological | 4 Biological | 4 Technological | 4 Variable |
| 5 | Lethal | 5 Environmental | 5 Metaphysical | 5 Psychological | 5 Biological | 5 Technological | 5 Variable |
| V | Variable | Variable Environmental | Variable Metaphysical | Variable Psychological | Variable Biological | Variable Technological |  |

|  |  |
| --- | --- |
| UD | Undetermined |
| PD | Pending |
| NA | Not Applicable |

---

# Examples:

## Preset Class:

[Show Example](javascript:;)

[Hide Example](javascript:;)

[[include :backrooms-wiki:component:pts  
|number=4P  
|aoe=Humans  
|frequency=Infrequent  
|duration=3-5 Days  
|intensity=Lethal  
]]

PTS:

4P

Class: 4 Psychological

Area of Effect: Humans

Infrequent

Frequency

3-5 Days

Duration

Lethal

Intensity

[Hide Example](javascript:;)

## Custom Classes:

[Show Example](javascript:;)

[Hide Example](javascript:;)

[[include :backrooms-wiki:component:pts  
|number=5I  
|class=5 Illness  
|aoe=Most Entities  
|frequency=Noticeably Frequent  
|duration=Over a Month  
|intensity=Lethal to all surrounding Entities  
]]

PTS:

5I

Class: 5 Illness

Area of Effect: Most Entities

Noticeably Frequent

Frequency

Over a Month

Duration

Lethal to all surrounding Entities

Intensity

[Hide Example](javascript:;)

## Use of Optional properties:

[Show {$dropdown} Example](javascript:;)

[Hide {$dropdown} Example](javascript:;)

[[include :backrooms-wiki:component:pts  
|number=4P  
|aoe=Humans  
|frequency=Infrequent  
|duration=3-5 Days  
|intensity=Lethal  
|dropdown=false  
]]

PTS:

4P

Class: 4 Psychological

Area of Effect: Humans

Infrequent

Frequency

3-5 Days

Duration

Lethal

Intensity

[Hide {$dropdown} Example](javascript:;)

[Show {$dropdownnum} Example 1](javascript:;)

[Hide {$dropdownnum} Example 1](javascript:;)

[[include :backrooms-wiki:component:pts  
|number=4P  
|aoe=Humans  
|frequency=Infrequent  
|duration=3-5 Days  
|dropdown-num=2  
]]

PTS:

4P

Class: 4 Psychological

Area of Effect: Humans

Infrequent

Frequency

3-5 Days

Duration

[Hide {$dropdownnum} Example 1](javascript:;)

[Show {$dropdownnum} Example 2](javascript:;)

[Hide {$dropdownnum} Example 2](javascript:;)

[[include :backrooms-wiki:component:pts  
|number=4P  
|aoe=Humans  
|dropdown-num=0  
]]

PTS:

4P

Class: 4 Psychological

Area of Effect: Humans

[Hide {$dropdownnum} Example 2](javascript:;)

[Show {$dropdownnum} and {$title-four} and {$value-four} Example 3](javascript:;)

[Hide {$dropdownnum} and {$title-four} and {$value-four} Example 3](javascript:;)

[[include :backrooms-wiki:component:pts  
|number=4P  
|aoe=Humans  
|frequency=Infrequent  
|duration=3-5 Days  
|intensity=Lethal  
|dropdown-num=4  
|title-four=Range  
|value-four=50 meters  
]]

PTS:

4P

Class: 4 Psychological

Area of Effect: Humans

Infrequent

Frequency

3-5 Days

Duration

Lethal

Intensity

50 meters

Range

[Hide {$dropdownnum} and {$title-four} and {$value-four} Example 3](javascript:;)

[Show {$title-\*} values Example](javascript:;)

[Hide {$title-\*} values Example](javascript:;)

[[include :backrooms-wiki:component:pts  
|number=Hi!  
|class=Abdallah Amr  
|aoe=ReyDay  
|frequency=Everywhere you look  
|duration=Super-Robot14  
|intensity=Have Fun! =)  
|title-component=Oh,  
|title-class=By:  
|title-sub=Design:  
|title-one=Place  
|title-two=Techlighter  
|title-three=Enjoy  
]]

Oh,

Hi!

By: Abdallah Amr

Design: ReyDay

Everywhere you look

Place

Super-Robot14

Techlighter

Have Fun! =)

Enjoy

[Hide {$title-\*} values Example](javascript:;)

[Show {$theme-font} Example](javascript:;)

[Hide {$theme-font} Example](javascript:;)

[[include :backrooms-wiki:component:pts  
|number=4P  
|aoe=Humans  
|frequency=Infrequent  
|duration=3-5 Days  
|intensity=Lethal  
|theme-font=a  
]]

PTS:

4P

Class: 4 Psychological

Area of Effect: Humans

Infrequent

Frequency

3-5 Days

Duration

Lethal

Intensity

[Hide {$theme-font} Example](javascript:;)

---

# Theme Compatibility:

This component sources its color palette from the theme it is in, so it adapts based on the theme of the page with minimal css modifications (sometimes it doesn't need any at all!); here are some examples (using the Preset Class Example code):

[Show Hallprint Example](javascript:;)

[Hide Hallprint Example](javascript:;)

PTS:

4P

Class: 4 Psychological

Area of Effect: Humans

Infrequent

Frequency

3-5 Days

Duration

Lethal

Intensity

[Hide Hallprint Example](javascript:;)

[Show NuLiminal Example](javascript:;)

[Hide NuLiminal Example](javascript:;)

```
[[module css]]
.pts-container {
  --pts-diamond-background: var(--swatch-primary);
}
[[/module]]
```

PTS:

4P

Class: 4 Psychological

Area of Effect: Humans

Infrequent

Frequency

3-5 Days

Duration

Lethal

Intensity

[Hide NuLiminal Example](javascript:;)

[Show Highlighter Example](javascript:;)

[Hide Highlighter Example](javascript:;)

```
[[module css]]
.pts-container {
  --pts-diamond-background: var(--swatch-secondary-color);
}
[[/module]]
```

PTS:

4P

Class: 4 Psychological

Area of Effect: Humans

Infrequent

Frequency

3-5 Days

Duration

Lethal

Intensity

[Hide Highlighter Example](javascript:;)

[Show Basic B&W Example](javascript:;)

[Hide Basic B&W Example](javascript:;)

```
[[module css]]
.pts-container {
  --pts-background: var(--swatch-primary-darker);
  --pts-subtitle-text: var(--swatch-text-tertiary-color);
}
[[/module]]
```

PTS:

4P

Class: 4 Psychological

Area of Effect: Humans

Infrequent

Frequency

3-5 Days

Duration

Lethal

Intensity

[Hide Basic B&W Example](javascript:;)

[Show Forbidden Text Example](javascript:;)

[Hide Forbidden Text Example](javascript:;)

```
[[module css]]
.pts-container {
  --pts-background: var(--white-monochrome);
}
[[/module]]
```

PTS:

4P

Class: 4 Psychological

Area of Effect: Humans

Infrequent

Frequency

3-5 Days

Duration

Lethal

Intensity

[Hide Forbidden Text Example](javascript:;)

[Show Black Knights Example](javascript:;)

[Hide Black Knights Example](javascript:;)

```
[[module css]]
.pts-container {
  --pts-text: var(--swatch-text-secondary-color);
  --pts-background: var(--swatch-primary-darker);
  --pts-diamond-text: var(--swatch-text-general);
  --pts-diamond-background: var(--swatch-secondary-color);
  --pts-subtitle-text: var(--swatch-text-general);
}
[[/module]]
```

PTS:

4P

Class: 4 Psychological

Area of Effect: Humans

Infrequent

Frequency

3-5 Days

Duration

Lethal

Intensity

[Hide Black Knights Example](javascript:;)

[Show Retro Example](javascript:;)

[Hide Retro Example](javascript:;)

```
[[module css]]
.pts-container {
  --pts-text: var(--retro-blue); /* This one is not mandatroy, but it looks better this way. */
}
[[/module]]
```

PTS:

4P

Class: 4 Psychological

Area of Effect: Humans

Infrequent

Frequency

3-5 Days

Duration

Lethal

Intensity

[Hide Retro Example](javascript:;)

[Show Music Example](javascript:;)

[Hide Music Example](javascript:;)

```
[[module css]]
.pts-container {
  --pts-border: var(--swatch-primary-darker);
  --pts-background: var(--swatch-background);
  --pts-diamond-background: var(--gray-monochrome);
  --pts-subtitle-background: var(--swatch-primary-darker);
}
[[/module]]
```

PTS:

4P

Class: 4 Psychological

Area of Effect: Humans

Infrequent

Frequency

3-5 Days

Duration

Lethal

Intensity

[Hide Music Example](javascript:;)

[Show Stardust Example](javascript:;)

[Hide Stardust Example](javascript:;)

```
[[module css]]
.pts-container {
  --pts-border: var(--swatch-primary);
  --pts-subtitle-background: var(--swatch-primary);
  --pts-subtitle-text: var(--swatch-text-dark);
}
[[/module]]
```

PTS:

4P

Class: 4 Psychological

Area of Effect: Humans

Infrequent

Frequency

3-5 Days

Duration

Lethal

Intensity

[Hide Stardust Example](javascript:;)

[Show Old Liminal Example](javascript:;)

[Hide Old Liminal Example](javascript:;)

Old Liminal relies on an older version of the same theme base as Nuliminal, hence the color variables are all compatible!

```
[[module css]]
.pts-container {
  --pts-diamond-background: var(--swatch-primary);
}
[[/module]]
```

PTS:

4P

Class: 4 Psychological

Area of Effect: Humans

Infrequent

Frequency

3-5 Days

Duration

Lethal

Intensity

[Hide Old Liminal Example](javascript:;)

[Show Super Liminal Example](javascript:;)

[Hide Super Liminal Example](javascript:;)

Super Liminal is an interesting case because even though it's a completely new theme base, it functions in nearly the exact same way as Old Liminal in terms of color variables!

```
[[module css]]
.pts-container {
  --pts-diamond-background: var(--swatch-primary);
}
[[/module]]
```

PTS:

4P

Class: 4 Psychological

Area of Effect: Humans

Infrequent

Frequency

3-5 Days

Duration

Lethal

Intensity

[Hide Super Liminal Example](javascript:;)

[Show Liminal Sigma Example](javascript:;)

[Hide Liminal Sigma Example](javascript:;)

Yet another case of a completely different theme base, this time it's SCP Sigma-10. This one has some shared color variables with Black Highlighter (BHL)[1](javascript:;), and some not. Regardless, I gotchu covered, cuz this is also supported!

PTS:

4P

Class: 4 Psychological

Area of Effect: Humans

Infrequent

Frequency

3-5 Days

Duration

Lethal

Intensity

[Hide Liminal Sigma Example](javascript:;)

[Show Basalt Example](javascript:;)

[Hide Basalt Example](javascript:;)

Now, Basalt theme is a bit different since it is not based on Black Highlighter, nor does it share most of its color variables, but it is supported too!

```
[[module css]]
.class > p {
  font-size: calc(min(12vw,7rem) * var(--pts-font-multiplier));
}
.class-name p, .pts-default:after {
  font-size: calc(min(5vw,3rem) * var(--pts-font-multiplier));
}
.sub-class :is(.title, .description) p {
  font-size: calc(min(1.75vw,1.25rem) * var(--pts-font-multiplier));
}
[[/module]]
```

PTS:

4P

Class: 4 Psychological

Area of Effect: Humans

Infrequent

Frequency

3-5 Days

Duration

Lethal

Intensity

[Hide Basalt Example](javascript:;)

---

# Customization with CSS:

These are extra pieces of customization you can do with CSS, either by adding the code into a [[module css]] or by adding the code into the page's theme. **Keep the [[module css]] outside of the [[include]] for this component, put it beneath it or at the top or bottom of the page.**  
Add this to your page/theme to edit all the colors:

```
[[module css]]
.pts-container {
 
/* font */
--pts-font: Poppins; /* the font of the component's text generally */
--pts-title-font: var(--pts-font); /* the font of the component's title texts (diamond, class name and dropdowns' titles) */
--pts-title-weight: 700; /* the font weight of the component's title texts (diamond, class name and dropdowns' titles) */
--pts-body-font: var(--pts-font); /* the font of the component's content texts (sub class and drpodwons' values) */
--pts-body-weight: 500; /* the font weight of the component's content texts (sub class and drpodwons' values) */
--pts-font-multiplier: 1; /* the ratio no the font size to the default size, make it greater than 1 for larger font size and less than 1 for smaller for size */
 
/* borders' color */
--pts-border: var(--gray-monochrome); /* the color of the component's borders */
 
/* text color */
--pts-text: var(--swatch-text-general); /* the color of the component's text generally; by default only applies to --pts-class-text and --pts-dropdown-text */
--pts-diamond-text: var(--swatch-text-secondary-color); /* the color of the component's diamond text */
--pts-class-text: var(--swatch-text-general); /* the color of the component's class text */
--pts-subtitle-text: var(-swatch-text-secondary-color); /* the color of the component's class sub-title text */
--pts-dropdown-text: var(--swatch-text-general); /* the color of the component dropdowns' text */
 
/* background colors */
--pts-background: var(--swatch-secondary-color); /* the color of the component's background generally; by default only applies to --pts-class-background and --pts-dropdown-background */
--pts-diamond-background: var(--swatch-primary-darker); /* the color of the component's diamond background */
--pts-class-background: var(--swatch-secondary-color); /* the color of the component's class background */
--pts-subtitle-background: var(--gray-monochrome); /* the color of the component's class sub-title background */
--pts-dropdown-background: var(--swatch-secondary-color); /* the color of the component dropdowns' background */
 
/* animations */
--pts-animation-speed: 2000ms; /* speed of the startup animation */
--pts-animation-easing: cubic-bezier(1,0,0,1); /* easing of the startup animation */
--pts-animation-delay: 0s; /* delay of the startup animation */
--pts-dropdown-speed: 300ms; /* speed of the dropdowns' animation */
--pts-dropdown-easing: ease-out; /* easing of the dropdowns' animation */
--pts-dropdown-hide-distance: -65%; /* distance of hidden dropdowns' height. Make this -2px to disable dropdowns. Setting the {$dropdown} value to false will override this varaible */
 
}
[[/module]]
```

Footnotes

[1](javascript:;). Which is the base for most themes here

---

Source: [https://backrooms-wiki.wikidot.com/component:pts](https://backrooms-wiki.wikidot.com/component:pts)
