---
title: "Infobox Style"
source: "https://backrooms-wiki.wikidot.com/component:infobox-style"
retrieved_at: "2026-08-23T23:37:02+00:00"
license: CC-BY-SA-3.0
---

# Infobox Style

W A R N I N G  
**PLEASE DO NOT TOUCH THIS PAGE WITHOUT STAFF PERMISSION.**

**This is a template page used internally by the Backrooms Wiki.**

---

rating: +13[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

This is a component which lets you make wiki infoboxes for your pages out tables.

No tables are placed for you by the component, you'll have to build them yourself. Here's an example:

## Step 1

Include the infobox stylesheet from this component page:

[[include :backrooms-wiki:component:infobox-style]]

## Step 2

At the top of your page, add the infobox. Here's an example:

#### Code:

```
[[table class="infobox-table"]]

[[row]]
[[hcell colspan="2"]]
**Title Text**
[[/hcell]]
[[/row]]

[[row]]
[[cell class="desccell" colspan="2"]]
A cheeky wee subtitle thing.
[[/cell]]
[[/row]]

[[row]]
[[cell class="desccell" colspan="2"]]
Part of [[[groups|a group]]].
[[/cell]]
[[/row]]

[[row]]
[[cell class="desccell" colspan="2"]]
[[image http://backrooms-wiki.wdfiles.com/local--files/level-2/macchina.png style="width: 100%;"]]
[[/cell]]
[[/row]]

[[row]]
[[cell class="desccell" colspan="2"]]
//A subtitle for that weird image! It's from [[[Level 2]]].//
[[/cell]]
[[/row]]

[[row]]
[[cell class="datastart"]]
**Status**
[[/cell]]
[[cell]]
Dead.
[[/cell]]
[[/row]]

[[row]]
[[cell class="datastart"]]
**More**
[[/cell]]
[[cell]]
Pieces of data can go in here
[[/cell]]
[[/row]]

[[row]]
[[hcell colspan="2"]]
**Another Header**
[[/hcell]]
[[/row]]

[[row]]
[[cell class="datastart"]]
**Yeah you can have**
[[/cell]]
[[cell]]
More categories of stuff. 
[[/cell]]
[[/row]]

[[/table]]
```

#### Result:

| **Title Text** | |
| --- | --- |
| A cheeky wee subtitle thing. | |
| Part of [a group](https://backrooms-wiki.wikidot.com/groups). | |
| macchina.png | |
| *A subtitle for that weird image! It's from [Level 2](level-2.md).* | |
| **Status** | Dead. |
| **More** | Pieces of data can go in here |
| **Another Header** | |
| **Yeah you can have** | More categories of stuff. |

## Headers and

Text flow in here exactly like they would if a massive image block was at the side. On mobile phones, the infobox will expand to the full page width so the text isn't pushed through a tiny alleyway on the side. Speaking of, you can use a style="width: 300px;" or similar on the [[table]] thing to change the width of the infobox table.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Habitant morbi tristique senectus et netus. Quam viverra orci sagittis eu. Urna nec tincidunt praesent semper feugiat nibh sed pulvinar. Arcu dui vivamus arcu felis bibendum ut tristique et egestas. Dapibus ultrices in iaculis nunc sed. Mattis nunc sed blandit libero volutpat sed cras ornare. Porttitor eget dolor morbi non arcu. Egestas integer eget aliquet nibh praesent tristique magna. Porttitor rhoncus dolor purus non enim praesent. Leo integer malesuada nunc vel risus commodo viverra maecenas accumsan.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Habitant morbi tristique senectus et netus. Quam viverra orci sagittis eu. Urna nec tincidunt praesent semper feugiat nibh sed pulvinar. Arcu dui vivamus arcu felis bibendum ut tristique et egestas. Dapibus ultrices in iaculis nunc sed. Mattis nunc sed blandit libero volutpat sed cras ornare. Porttitor eget dolor morbi non arcu. Egestas integer eget aliquet nibh praesent tristique magna. Porttitor rhoncus dolor purus non enim praesent. Leo integer malesuada nunc vel risus commodo viverra maecenas accumsan.

---

Source: [https://backrooms-wiki.wikidot.com/component:infobox-style](https://backrooms-wiki.wikidot.com/component:infobox-style)
