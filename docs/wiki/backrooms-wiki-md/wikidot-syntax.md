---
title: "Wikidot Syntax"
source: "https://backrooms-wiki.wikidot.com/wikidot-syntax"
retrieved_at: "2026-08-23T23:37:30+00:00"
license: CC-BY-SA-3.0
---

# Wikidot Syntax

> The majority of the content of this page is condensed from the [Wikidot syntax page](https://www.wikidot.com/doc-wiki-syntax:start) for ease of reading.

|  |
| --- |
| [Fold](javascript:;)[Unfold](javascript:;)  Table of Contents  [Text Styling](index.md)  [Inline Styling](index.md)  [Text Alignment](index.md)  [Text Size](index.md)  [Escape Parsing/Raw Text](index.md)  [Links](index.md)  [Images](index.md)  [Creating Sections](index.md)  [Headings](index.md)  [Table of Contents](index.md)  [Lists](index.md)  [Block Quotes](index.md)  [Custom Divs](index.md)  [Collapsible Blocks](index.md)  [Tables](index.md)  [Footnotes](index.md)  [Tabview](index.md)  [Miscellaneous](index.md) |

# Text Styling

## Inline Styling

| Syntax | Example |
| --- | --- |
| //italic text// | *italic text* |
| \*\*bold text\*\* | **bold text** |
| //\*\*italic and bold\*\*// | ***italic and bold*** |
| \_\_underline text\_\_ | underline text |
| --strikethrough text-- | strikethrough text |
| {{teletype (monospaced) text}} | teletype (monospaced) text |
| normal^^superscript^^ | normalsuperscript |
| normal,,subscript,, | normalsubscript |
| [[span style="color:red"]]custom //span// element[[/span]] | custom *span* element |
| ##blue|predefined## or ##44FF88|custom-code## color | predefined or custom-code color |

## Text Alignment

```
[[<]]
Align left, left, left, left, left
[[/<]]

[[>]]
Align right, right, right, right, right
[[/>]]

[[=]]
Align center, center, center, center, center
[[/=]]
```

Align left, left, left, left, left

Align right, right, right, right, right

Align center, center, center, center, center

Placing a = with a space at the beginning will center just that line, for single-line centering.

```
= This line will be centered.
This line will not.
```

> This line will be centered.
>
> This line will not.

## Text Size

| Syntax | Example |
| --- | --- |
| [[size smaller]]Smaller Text[[/size]] | Smaller Text |
| [[size larger]]Larger Text[[/size]] | Larger Text |
| [[size 80%]]80% Of Current Size[[/size]] | 80% Of Current Size |
| [[size 100%]]100% Of Current Size[[/size]] | 100% Of Current Size |
| [[size 150%]]150% Of Current Size[[/size]] | 150% Of Current Size |
| [[size 0.8em]]80% Of Current Size[[/size]] | 80% Of Current Size |
| [[size 1em]]100% Of Current Size[[/size]] | 100% Of Current Size |
| [[size 1.5em]]150% Of Current Size[[/size]] | 150% Of Current Size |
| [[size xx-small]]Extra-Extra-Small Text[[/size]] | Extra-Extra-Small Text |
| [[size x-small]]Extra-Small Text[[/size]] | Extra-Small Text |
| [[size small]]Small Text[[/size]] | Small Text |
| [[size large]]Large Text[[/size]] | Large Text |
| [[size x-large]]Extra-Large Text[[/size]] | Extra-Large Text |
| [[size xx-large]]Extra-Extra Large Text[[/size]] | Extra-Extra Large Text |
| [[size 7px]]Text Size 7 Pixels[[/size]] | Text Size 7 Pixels |
| [[size 18.75px]]Text Size 18.75 Pixels[[/size]] | Text Size 18.75 Pixels |

## Escape Parsing/Raw Text

Two @ symbols in a row without spaces wrapped around text will escape parsing and render the raw text, aka show exactly the text you put in between the @ symbols. This is useful for showing symbols that are used by Wikidot syntax for styling, or to show how to style text (like in this guide).

| Syntax | Example |
| --- | --- |
| @@//Escape// \*\*Parsing\*\*@@ | //Escape// \*\*Parsing\*\* |

This is also used to escape parsing on line breaks and prevent Wikidot from collapsing lines, by putting four @ symbols in a row.

This code:

```
Wow that’s a big
@@@@
@@@@
@@@@
gap!
```

Becomes this text:

> Wow that’s a big  
>   
>   
>   
> gap!

Another way to escape parsing is to put @< and >@ around the text. This is a more advanced method, and is also used to insert HTML entities.

This code:

Becomes this text:

> Hello world @@ !!!!  
> [[module ListPages]]  
> Copyright sign: ©

This is the only way to escape @@, as trying to use the two @ symbol method of escaping on @ symbols does not work.

## Links

Three brackets [[[ ]]] will create a link to a page on the wiki you are currently on. This is the recommended syntax for creating links.

| Syntax | Example | Notes |
| --- | --- | --- |
| [[[entities]]] | [entities](entities.md) | Shows the title of the page exactly as it was created. |
| [[[entities|Some text]]] | [Some text](entities.md) | Useful when you want a link to show text other than the page name. |
| [[[top-rated-pages]]] | [top-rated-pages](top-rated-pages.md) | The same as the first example, using a page name with dashes. |
| [[[Top Rated Pages]]] | [Top Rated Pages](top-rated-pages.md) | This uses the page's title to create the link. |
| http://www.wikidot.com | [http://www.wikidot.com](index.md) | URLs are automatically made into links. |
| [http://www.wikidot.com wikidot] | [wikidot](index.md) | A named link, showing custom text. |

Putting an asterisk \* before the URL will have the link open in a new tab.

```
*http://www.wikidot.com
[http://www.wikidot.com wikidot]
```

[http://www.wikidot.com](index.md)  
[wikidot](index.md)

This unfortunately does not work on page links (the three-bracket markup). If you'd like to have a page link open in a new tab, you will need to use the URL of the page, not just the page title.

NOTE: A page's **title** and a page's **name** are two separate things, although they are usually similar to prevent confusion.

- A page's **title** refers to the text that appears at the top of the page. This is the text that you enter as "Title of the page" when editing a page.
- A page's **name** is the text that comes after the first slash in the URL, aka the text in the URL after backrooms-wiki.wikidot.com/.

# Images

This is the code for images. It is recommended that you use this code.  
{name} - The name of your image. It should include the file extension, i.e. ".jpg", ".png", etc. If the image isn't uploaded to the wiki page, it should be a URL ending with an image file extension.  
{caption} - The caption for the image. This text can be styled with Wikidot syntax.

![Missing alt text.](https://backrooms-wiki.wdfiles.com/local--files/level-0/OGLevel0.jpg)

The first picture ever taken of **Level 0**.

> [[include component:image-block  
>  |name=Thebackrooms.jpg  
>  |caption=The first picture ever taken of \*\*Level 0\*\*.  
> ]]

For the default Wikidot image style, use the following code. Note that there is not caption area if you use this.  
{image-source} - The image source, roughly corresponding to {name} in the wiki’s image markup.  
{attribute} - An attribute assigned to the image, used to change things like size, css styles, or make the image link to a URL.

```
[[image image-source attribute1="value1" attribute2="value2" ...]]
```

More information on how to use Wikidot’s image markup, such as available attributes, can be found in [Wikidot’s image markup documentation](https://www.wikidot.com/doc-wiki-syntax:images).

# Creating Sections

## Headings

Headings go from level 1 (H1) to level 6 (H6). Include a plus symbol + for each level of heading you would like. Headings will decrease in font size as the level increases.

```
+ Level 1 Heading
++ Level 2 Heading
+++ Level 3 Heading
++++ Level 4 Heading
+++++ Level 5 Heading
++++++ Level 6 Heading
```

## Table of Contents

The code [[toc]] creates a table of contents, or TOC. This TOC will show each heading on the page.  
To make the TOC float on the right side of the page, use [[f>toc]]  
To make the TOC float on the left side of the page, use [[f<toc]]

If you don't want a specific heading to appear in the TOC (for example, you used the heading style only for appearance), put an asterisk \* after the + on the heading.

```
+ This section appears in the TOC
+* And this one does not
```

See the top of this page for an example of what the TOC looks like.

## Lists

You can create a bulleted list with the asterisk symbol \*, and a numbered list with the pound symbol #. Putting spaces before the asterisk or pound symbol will indent the list.

```
* A bulleted list
 * This line is indented once
  * This line is indented twice
# A numbered list
 # This line is indented once
  # This line is indented twice
```

- A bulleted list
  - This line is indented once
    - This line is indented twice

1. A numbered list
   1. This line is indented once
      1. This line is indented twice

## Block Quotes

Putting a > before a line of text will put the text inside of a block quote. You can increase the number of > symbols to indent the text.

```
> This is a block quote.
>> This is a block quote with indentation.
> This is more text.
> 
> There is a blank line of space above this line of text!
> Make sure to put a space after the ">" symbol if you want to put blank lines of space inside of a block quote!
```

> This is a block quote.
>
> > This is a block quote with indentation.
>
> This is more text.
>
> There is a blank line of space above this line of text!  
> Make sure to put a space after the ">" symbol if you want to put blank lines of space inside of a block quote!

## Custom Divs

The Backrooms Wiki theme has a few custom div styles, in addition to Wikidot’s styles.

```
[[div class="blockquote"]]
Custom blockquote
[[/div]]
[[div class="styled-quote"]]
Styled quote
[[/div]]
[[div class="dark-styled-quote"]]
Dark styled quote
[[/div]]
[[div class="lightblock"]]
Light block
[[/div]]
[[div class="darkblock"]]
Dark block
[[/div]]
```

Custom blockquote

Styled quote

Dark styled quote

Light block

Dark block

## Collapsible Blocks

Collapsible blocks can be opened or closed to show or hide text.

```
[[collapsible show="+ Show whatever" hide="- Hide whatever"]]
Whatever text to show/hide.
[[/collapsible]]
```

[+ Show whatever](javascript:;)

[- Hide whatever](javascript:;)

Whatever text to show/hide.

If you have an especially long collapsible block, you might want to make it possible to close the collapsible from the bottom of the text as well as the top.

```
[[collapsible show="+ Show whatever" hide="- Hide whatever" hideLocation="both"]]
This collapsible block can be closed from the top and bottom!
[[/collapsible]]
```

[+ Show whatever](javascript:;)

[- Hide whatever](javascript:;)

This collapsible block can be closed from the top and bottom!

[- Hide whatever](javascript:;)

## Tables

Tables are created using two vertical bars || to indicate where the cell borders are. Putting a tilde (the ~ symbol) right after the bars will make that cell into a header cell. Putting a space and an underscore " \_" at the end of a line inside of a cell will create a new line, allowing you to put multiple lines of text inside of a cell.

```
||~ lines must start and end ||~ with double vertical bars ||~ nothing ||
|| cells are separated by || double vertical bars || nothing ||
|||| you can span multiple columns by || starting each cell ||
|| with extra cell |||| separators ||
|||||| but perhaps an example is _
the easiest way to see ||
```

| lines must start and end | with double vertical bars | nothing |
| --- | --- | --- |
| cells are separated by | double vertical bars | nothing |
| you can span multiple columns by | | starting each cell |
| with extra cell | separators | |
| but perhaps an example is  the easiest way to see | | |

## Footnotes

The [[footnote]] block will put a list of footnotes at the end of the page. Using [[footnoteblock]] will allow you to put the list of footnotes wherever you like in the page, instead of at the bottom of the page.

```
Some text[[footnote]]And a small footnote.[[/footnote]]. Here we go
with another footnote[[footnote]]Content of another footnote.[[/footnote]].

[[footnoteblock]]
```

Some text[1](javascript:;). Here we go with another footnote[2](javascript:;).

Footnotes

[1](javascript:;). And a small footnote.

[2](javascript:;). Content of another footnote.

You can create a custom title for the footnote list with [[footnoteblock title="Custom title"]]. Using {title=""} will remove the title.

## Tabview

Content can be split into tabs. This is useful for sandbox pages with multiple drafts. **Tabviews cannot be nested within each other directly. It is possible to do so with advanced code, but it is best to avoid nesting tabviews.** Tabviews also do not function with tables of contents, as the TOC link will not properly link to the header inside of a tab.

```
[[tabview]]
[[tab Title of Tab No. 1]]
Content of Tab No. 1.
[[/tab]]
[[tab Title of Tab No. 2]]
Content of Tab No. 2.
[[/tab]]
[[tab Title of Tab No. 3]]
Content of Tab No. 3.
[[/tab]]
[[/tabview]]
```

- [*Title of Tab No. 1*](javascript:;)
- [*Title of Tab No. 2*](javascript:;)
- [*Title of Tab No. 3*](javascript:;)

Content of Tab No. 1.

Content of Tab No. 2.

Content of Tab No. 3.

# Miscellaneous

Four or more dashes ---- will make a horizontal line, like below:

---

To link to a Wikidot user's profile, use [[user user-name]] or [[\*user user-name]].  

| Syntax | Example | Notes |
| --- | --- | --- |
| [[user ghostchibi]] |  | Does not show the user's profile image or karma level. |
| [[\*user ghostchibi]] |  | Shows the user's profile image and karma level. |

To display code as-is (with some limitations), use the following:

```
[[code]]
insert the code here
[[/code]]
```

The above will display as:

```
insert the code here
```

---

Source: [https://backrooms-wiki.wikidot.com/wikidot-syntax](https://backrooms-wiki.wikidot.com/wikidot-syntax)
