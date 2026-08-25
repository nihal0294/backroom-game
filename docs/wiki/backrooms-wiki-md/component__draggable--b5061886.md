---
title: "Draggable"
source: "https://backrooms-wiki.wikidot.com/component:draggable"
retrieved_at: "2026-08-23T23:34:54+00:00"
license: CC-BY-SA-3.0
---

# Draggable

W A R N I N G  
**PLEASE DO NOT TOUCH THIS PAGE WITHOUT STAFF PERMISSION.**

**This is a template page used internally by the Backrooms Wiki.**

---

## How to use the DraggableDiv script:

##### - Create a html block

##### - Put the following code in it:

```
<script src="https://cdn.jsdelivr.net/npm/interactjs/dist/interact.min.js"></script>
<script src="https://backrooms-wiki.wdfiles.com/local--files/component%3Adraggable/draggableDiv.js"></script>
```

##### - Create a div that will be the container for the other divs to move into.

##### - Attribute the "draggable" class to the div that you want to drag around.

## Protip

##### The green div can't be moved left or right because it has a default width of 100% ! It needs to be modified !

The whole code of this example:

```
[[html]]

<style>
.block {
    width: 240px;
    min-height: 6.5em;
    margin: 1rem 0 0 1rem;
    background-color: pink;
    touch-action: none;
    user-select: none;
    transform: translate(0px, 0px);
    border: solid 2px;
    border-color: black;
    text-align: center;
}

.small {
width: max-content;
}

#drag_container {
background-color: yellow;
height: 500px;
}

</style>

<script src="https://cdn.jsdelivr.net/npm/interactjs/dist/interact.min.js"></script>
<script src="https://backrooms-sandbox.wdfiles.com/local--files/draggable/draggableDiv.js"></script>

<div id="drag_container">
<div class="draggable block">
I can be dragged around !
</div>
<div class="draggable small">
Me too !
</div>
<div class="draggable" style="background-color: lightgreen;">
I can't be moved left or right ?! <br> Why ? <br> There is trickery afoot.
</div>
</div>

[[/html]]
```

[Author(s)](javascript:;)

[Hide author](javascript:;)

The creator of this module is Anonymous User.

---

Source: [https://backrooms-wiki.wikidot.com/component:draggable](https://backrooms-wiki.wikidot.com/component:draggable)
