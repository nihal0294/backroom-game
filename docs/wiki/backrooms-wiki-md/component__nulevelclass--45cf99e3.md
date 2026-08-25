---
title: "Nulevelclass"
source: "https://backrooms-wiki.wikidot.com/component:nulevelclass"
retrieved_at: "2026-08-23T23:38:47+00:00"
license: CC-BY-SA-3.0
---

# Nulevelclass

W A R N I N G  
**PLEASE DO NOT TOUCH THIS PAGE WITHOUT STAFF PERMISSION.**

**This is a template page used internally by the Backrooms Wiki.**

---

## NuLevelClass

This is a new alternate system for assigning classes to levels! You can use it as the banner for your level pages!

This can be used as a more objective system, where you rate the dangers of the level and can objectively compare them to each other!

LEVEL  
**184**

SURVIVAL DIFFICULTY  
**CLASS 5**

**Exit: 5/5**  
Dead End

**Environment: 4/5**  
Extreme Environmental Risk

**Entities: 5/5**  
Hostile Infestation

[[include :backrooms-wiki:component:nulevelclass  
ent=5  
|env=4  
|ext=5  
|no=184  
]]

### How to use it

You rate three aspects of the level's danger from 0-5:

- Difficulty of Exit - {$ext}
  - 0 - Guaranteed Exit
  - 1 - Easy to Exit
  - 2 - Somewhat Difficult to Exit
  - 3 - Difficult to Exit
  - 4 - Very Difficult to Exit
  - 5 - Dead End
- Environmental Dangers - {$env}
  - 0 - No Environmental Risks
  - 1 - Low Environmental Risk
  - 2 - Some Environmental Risks
  - 3 - High Environmental Risk
  - 4 - Extreme Environmental Risk
  - 5 - Deadzone
- Hostile Entity Prescence - {$ent}
  - 0 - No Hostile Entities
  - 1 - Minimal Hostile Prescence
  - 2 - Some Hostile Presence
  - 3 - Major Hostile Presence
  - 4 - Extreme Hostile Presence
  - 5 - Hostile Infestation

And the Class number is calculated **automatically for you** by getting the mean value of these three numbers and rounding it to the nearest whole number.

You set the level number with {$no}. This can be whatever you want, even a word or a negative number.

### For Enigmatics

If the name is extremely short, like a symbol, you can set it with {$no} like normal.  
If the name is relatively short and you need to, you can change the font size of the name with {$fntsz}.  
If the name is just too long, you can completely remove the part of the banner with the level name on it with |{$noname}=1.

### Extremely Custom Classes

An example of how to make an entirely custom class is:

[[include :backrooms-wiki:component:nulevelclass  
|no=???  
|customline=1  
|linecolor=var(—gray-monochrome)  
|ent=5  
|customent=1  
|enttext=Potential for Hostility  
|entcolor=var(--gray-monochrome)  
|ext=5  
|customext=1  
|exttext=Unclear Exit  
|extcolor=var(--gray-monochrome)  
|env=5  
|customenv=1  
|envtext=Unknown Environment  
|envcolor=var(--gray-monochrome)  
|customclass=1  
|classtext=Undetermined  
]]

**Create however many SD classes you like!**

---

Source: [https://backrooms-wiki.wikidot.com/component:nulevelclass](https://backrooms-wiki.wikidot.com/component:nulevelclass)
