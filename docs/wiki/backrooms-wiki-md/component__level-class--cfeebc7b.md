---
title: "Level Class"
source: "https://backrooms-wiki.wikidot.com/component:level-class"
retrieved_at: "2026-08-23T23:35:44+00:00"
license: CC-BY-SA-3.0
---

# Level Class

W A R N I N G  
**PLEASE DO NOT TOUCH THIS PAGE WITHOUT STAFF PERMISSION.**

**This is a template page used internally by the Backrooms Wiki.**

---

SURVIVAL DIFFICULTY:

{$class}

- {$one}.
- {$two}.
- {$three}.

---

## How to use:

[[include :backrooms-wiki:component:level-class  
|class=ClassName  
]]

You can choose a ClassName from list below:

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| Standard Class | 0 | 1 | 2 | 3 | 4 | 5 |
| Special Class | habitable | | | deadzone | | |
| unknown | | | pending | | |
| n/a | | | omega | | |
| amended | | | [1-5]e | | |

Each preset class has a special symbol and three lines of description.

---

## Customize

You can customize the component with following parameters:

[[include :backrooms-wiki:component:level-class  
|class=ClassName  
|color=#000000 **(Hex code with hashtag.)**  
|image=**(URL to image** or **A Preset Symbol)**  
|one=First Line  
|two=Second Line  
|three=Third Line  
]]

[[+] See all Preset Symbols](javascript:;)

[[-] See all Preset Symbols](javascript:;)

| Preset Name | What it looks like |
| --- | --- |
| 0 | 0 |
| 1 | 0 |
| 2 | 0 |
| 3 | 0 |
| 4 | 0 |
| 5 | 0 |
| unknown | 0 |
| n/a | 0 |
| omega | 0 |
| amended | 0 |
| habitable | 0 |
| deadzone | 0 |
| environmental | 0 |

Here is an example:

[[include :backrooms-wiki:component:level-class  
|class=My Custom Class  
|image=unknown  
|one=Maybe Safe  
|two=What  
|three=No  
|color=#96A5D4  
]]

And this is how it looks like:

SURVIVAL DIFFICULTY:

My Custom Class

- Maybe Safe.
- What.
- No it's NOT SAFE.

Additionally, use |white=enabled to make the text and symbol white. This would be very helpful if you choose a dark color.

[[include :backrooms-wiki:component:level-class  
|class=0  
|color=#333333  
**|white=enabled**  
]]

SURVIVAL DIFFICULTY:

0

- {$one}.
- {$two}.
- {$three}.

## Further Customize

By using module CSS, you can even go further:

[[module CSS]]  
.sd-container {  
/\* Text \*/  
 --sd-font: "Poppins", var(--body-font), sans-serif;  
 --sd-font-size: 16px; /\* This size must be set to 4\*n \*/

/\* Background Color \*/  
 --sd-background: var(--swatch-background);

/\* Border Color \*/  
 --sd-border: var(--gray-monochrome);  
 --sd-border-secondary: 0, 0, 0;  
 --sd-border-deadzone: 20, 0, 0;

/\* Icon Color \*/  
 --sd-symbol: var(--sd-text);

/\* Text Color \*/  
 --sd-bullets: var(--sd-border);  
 --sd-text: var(--sd-border);  
 --sd-text-secondary: 255, 255, 255;

/\* Color for Classes \*/  
/\* Why didn't they add a "sd-" prefix for these variables?? \*/  
 --class-0: 247, 227, 117;  
 --class-1: 255, 201, 14;  
 --class-2: 245, 156, 0;  
 --class-3: 249, 90, 0;  
 --class-4: 254, 23, 1;  
 --class-5: 175, 6, 6;  
 --class-unknown: 38, 38, 38;  
 --class-habitable: 26, 128, 111;  
 --class-deadzone: 44, 13, 12;  
 --class-pending: 182, 182, 182;  
 --class-n-a: 38, 38, 38;  
 --class-amended: 185, 135, 212;  
 --class-omega: 25, 46, 255;  
}  
[[/module]]

[[+] Check HTML structure](javascript:;)

[[-] Check HTML structure](javascript:;)

<div class="sd-container">  
 <div class="top-box">  
 <div class="header-diamond">  
 <div class="gradient-box">  
 <div class="top-text">  
 <div class="bottom-text">  
 <div class="bottom-box">  
 <ul>  
 <li>  
 <li>  
 <li>

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "Level Class Component" from the [Backrooms Wiki](index.md). Designed by ReyDay, created by Ambersight. Source: [https://backrooms-wiki.wikidot.com/component:level-class](component__level-class--cfeebc7b.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

> All svg files of symbols were created by .

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/component:level-class](https://backrooms-wiki.wikidot.com/component:level-class)
