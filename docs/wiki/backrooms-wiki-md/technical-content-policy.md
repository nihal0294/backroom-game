---
title: "Technical Content Policy"
source: "https://backrooms-wiki.wikidot.com/technical-content-policy"
retrieved_at: "2026-08-23T23:35:44+00:00"
license: CC-BY-SA-3.0
---

# Technical Content Policy

The following policy describes the rules regarding the technical aspects of our site, The Backrooms Wikidot. It includes guides, requirements, and prohibitions that you are expected to follow whenever you publish an article, whether technical or not, on the site. If your content is not compliant with the policy, and we modify it, we will notify you via Wikidot PM. (You may only revert such edits if you wish to fix the errors a different way — NOT to revert to and leave an erroneous version up on the site.)

If you have further questions, please take them up with [staff](meet-the-staff.md) or raise your questions in the discussion section!

This policy was based on [the same policy](technical-content-policy.md) on the SCP Wiki, licensed under CC-BY-SA-3.0. It was originally adapted by and later amended by the wiki's Technical Team.

[1: File Hosting](javascript:;)

[1: File Hosting](javascript:;)

All page content (themes, components, images, HTML, attached files, text) must be hosted on The Backrooms Wiki. Content cannot be crosslinked from other Wikidot sites, even the [official sandbox site](index.md), as staff must be able to manage all content of the page. However, a user may request to port a component to The Backrooms Wiki, which would go through the normal Techlight process.

All files should have a file extension appropriate to their file type: a PNG image file for example should be called "level-achromatopsia.png", not "level-achromatopsia".

Files larger than 4mb may not be uploaded without staff approval. Generally, files should be less than 2mb in size.

Images are subject to specific restrictions:

- Images should be below 1 MiB in file size, and should not have dimensions significantly larger than their appearance on screen.
  - Note that the default width for the standard image-block component is 300 px, so, for instance, an image with a width of 1200 px would be too large. Larger images may be uploaded, provided the reduced-size file is the one actually displayed.

- Images should be compressed into a lossy format, like WebP (.webp) or JPEG (.jpeg/.jpg).

- Staff and users are permitted to shrink images that are too large as described above using the [Image Resize Widget](component__image-resize-widget--f10e2ed5.md).

- Images on Art Pages or large video files on any page may be hosted on one of the allowed external sites, provided the site is in control of the author. This is the list of permitted sites: GitHub.

- Note that, for both art pages and regular pages, **hosting files via Discord is not allowed.** Such links will expire with time and become broken.

*Due to a bug, uploaded SVGs may not be correctly recognized by Wikidot. See [here](https://scp-wiki.wikidot.com/forum/t-13344795/uploading-svgs#post-4655686) for more information.*

Font hotlinking (from sites like [Bunny Fonts](index.md)) is permitted if in compliance with the [CSS Policy](https://backrooms-wiki.wikidot.com/css-policy)!

[2: ListPages and Offsets](javascript:;)

[2: ListPages and Offsets](javascript:;)

If an offset-based article requires the creation of child pages, those pages must be created in the fragment: category, and they must be named according to its parent page and index. If the parent page is renamed, the fragment pages must be as well.

For instance, if a user posts a page my-story, then each of the offsets could be named fragment:my-story-0, fragment:my-story-1, etc.

All fragment pages must be listed in the page source, for instance:

```
[[include component:rate]] 

[!--
Fragment pages:
https://backrooms-wiki.wikidot.com/fragment:my-story-0
https://backrooms-wiki.wikidot.com/fragment:my-story-1
https://backrooms-wiki.wikidot.com/fragment:my-story-2
--]

[[module ListPages category="fragment" parent="." order="created_at" limit="1" offset="@URL|0"]]
%%content%%
[[/module]]
```

(Pages with ten or more fragments may provide ListPages code to list all the fragments instead)

Fragment pages must be parented to their host page, regardless of whether parent pages are used as a selector for the ListPages module.

The usage of redirect modules on fragment pages is forbidden.

If a page's tags on an offset-based article would present a significant spoiler for the reader, then, as a special exception pursuant to Tech approval, tags may be hidden on the first offset only by use of the [Hide Tags component](component__hide-tags--9ead85aa.md).

[3: Link Shorteners](javascript:;)

[3: Link Shorteners](javascript:;)

The use of link shorteners is strictly prohibited on The Backrooms Wiki. Since the character limit allowed on a wiki page provides ample space to avoid any concerns, it was decided that they are unnecessary. Furthermore, as they disguise links and make the destination unclear to the user, they pose a mild security concern. QR codes are likewise not freely permitted. Their use for ARG-style (Alternate Reality Game) pages or other legitimate purposes may be approved by the technical team after evaluating each case individually and ensuring that they are not being used with malicious intent.

[4: ListUsers and Username Mentions](javascript:;)

[4: ListUsers and Username Mentions](javascript:;)

The ListUsers module allows authors to call upon the username of a reader, and insert that username into an article. However, it also limits content to only be accessible to users who both have an account and are logged into it, meaning that users who are not logged in or do not have an account cannot read parts of the article.

To prevent this, whenever this functionality is to be used, it must be done through the [ListUsers](component__listusers-1--a152bff8.md) component, rather than the base Wikidot functionality. This component allows for alternative content to be displayed to a logged-out user, and should be used to present an equivalent version of the gated content that does not reference username.

[5: Parenting](javascript:;)

[5: Parenting](javascript:;)

*Wikidot permits pages to be assigned a single [parent](https://www.wikidot.com/doc:site-structure#toc6), which appears at the top of the page with navigation links called "breadcrumbs". These are used to show that articles are related to a particular article.*

Supplement pages, like interview logs, should be parented to the main article that they relate to. 'More by' pages must be parented to their creator's author page, if they have one.

Due to Wikidot limitations, if an author wishes to parent their page to multiple articles, they should use the following code, rather than the standard parenting feature:

```
[[div class="pseudocrumbs"]]
[[[parent-page-url1|Title of First Parent Page]]] » Title of Child Page
[[[parent-page-url2|Title of Second Parent Page]]] » Title of Child Page
[[/div]]
```

Authors may assign the parent of their page as they wish, provided it does not interfere with the technical implementation of other pages that they do not have authorization to edit.

Site staff are authorized to assign page parents to improve site navigation and accessibility.

[6: HTML and Javascript](javascript:;)

[6: HTML and Javascript](javascript:;)

Keep your use and number of [[html]] and [[iframe]]s to a minimum! Always try to recreate any interactive or dynamic functionality with pure CSS before considering using an html module and javascript code.

Javascript that is malicious, not compliant with the site license or cannot be justified to the Tech Team must be removed. Use of malicious scripting or exploitative page elements may result in disciplinary action.

Any HTML or javascript in a page may not take actions outside of the page itself (e.g. sending unsolicited emails or accepting payment), transmit information about the reader with or without reader consent, or perform an irreversible action. Cookies and local storage are permitted if they are strictly necessary for the proper behavior of the page.

Page content may not automatically open links that the user has not clicked on. Using CSS to create the illusion of a pop-up within a page is completely acceptable.

Minified HTML, CSS, or Javascript may be used, but the un-minified full source must be disclosed and publicly available. Like all other content, they must be available under the site's license (CC-BY-SA 3.0), though it may be dual-licensed with another free/open source license.

[7: Hard-coded Themes/Components](javascript:;)

[7: Hard-coded Themes/Components](javascript:;)

All hard-coded themes/components should receive at least 1 tech critique from a Techlighter or a Techlighter Trainee. If a hard-coded theme/component is already used in a page, it needs to go through a full Techlight process before any other page can use it.

A hardcoded component is defined as a potentially reusable visual or page structure feature with a specific styling or behavior defined directly on the page via a css module or an html/iframe block. This includes CSS, JavaScript, or HTML that significantly alters the appearance or functionality of a page.

[8: ThemePreviewer Module](javascript:;)

[8: ThemePreviewer Module](javascript:;)

The [ThemePreviewer Module](http://www.wikidot.com/doc-modules:themepreviewer-module) lets you remove the [Site Theme](component__theme--21bdca00.md) so that you can add other theming on top of it. Due to security concerns, users are **not** allowed to use this module on their pages on their own. To achieve the functionality usually desired by the use of this component, use:

- [bhl-revert](component__bhl-revert--d17cfa38.md) to revert the theme to the base Black Highlighter theme.
- [css-revert](component__css-revert--3b9ffecc.md) to remove the site theme completely.
- [show-sidebar](component__show-sidebar--a40acbce.md) to remove the hover functionality on the sidebar.
- [toggle-sidebar](component__toggle-sidebar--c5c0d70d.md) to make the sidebar revealed by clicking a button.

If you have applied [bhl-revert](component__bhl-revert--d17cfa38.md), and want to have a toggled sidebar, use [toggle-sidebar-base](component__toggle-sidebar-base--ce3ee1a9.md).

[9: Unmodifiable Page Contents](javascript:;)

[9: Unmodifiable Page Contents](javascript:;)

These page components must always remain usable. You may not hide them as part of a format screw page.

The color and appearance of these components may be modified if in compliance with the [CSS Policy](https://backrooms-wiki.wikidot.com/css-policy).

- User module / login status
- Search functionality
- Page tags
- Article metadata (for instance, the [Attribution Metadata](attribution-metadata.md))
- Rating module
- Translation module
- Side bar
- Top bar
- Wikiwalk navigation footer
- Adult splash page (if relevant)
- [Page Preview component](component__preview--e8f4eaba.md)
- [License box component](component__license-box--969e0688.md)
- Page information and buttons (e.g. edit, rate, history, etc.)
- Wikidot advertisements (violation of the Terms of Service)
- Wikidot footer
- Wikidot license information
- Licensebox

[10: 'More by' components](javascript:;)

[10: 'More by' components](javascript:;)

*Authors are permitted to create a page for listing other works by them, which they may use on their articles as a way of directing readers to more of their work and/or providing recommended reading.*

'More by' pages must exist within the more-by: category. The page's UNIX name (i.e. the part of the URL that is preceded by the category) must be identical to the creator's username as it appears in the URL of their Wikidot user info page. For example, a user named John Backrooms would have the UNIX name be john-backrooms

If the author changes their username, they must update the URL of their 'more by' page, if they have one, and they must also update all pages that use it to point to the new page location.

[11: URLs](javascript:;)

[11: URLs](javascript:;)

New pages must be created following the wiki's naming conventions:

- Levels, entities, objects, and phenomena must be named according to the following system: CATEGORY-NUMBER-DECIMAL. For example, the url level-1-5 is used for Level 1.5.
- For tales, POIs, groups, canons, series, and unnumbered levels/entities, the recommended URL is the one created according to Wikidot's automatic name-url encoding system, truncated after the first four words (or earlier if the title is shorter). Authors may choose a different URL if they believe it better suits their article as long as it reasonably represents the title.
- Alternative pages may be named using the format authorname-pagename or canon-pagename. For example "praetor3005-level-0" or "desolation-level-0". If it's the second time you're posting one with the same URL, simply add a "2" after it (and so on). As for the name of the page in itself, it must be different than its inspiration page (for example "Floor 0" or "The Yellow Halls" instead of "Level 0 - "Threshold"" for a standalone, or "Desolation Level 1 - "Concrete Lots"" for a desolation canon page).

New pages must be created in the appropriate category:

- Components and templates must be in the component: category.
- Themes must be in the theme: category.
- Fragment pages must be in the fragment: category.
  - A "fragment" is any page that is created for a single, specific regular page for the presentation of its content, and are not intended to be viewed directly.
  - Fragment pages are not subject to their own voting rating, but the voting rating of the page they are meant to be included within.
- 'More by' pages must be in the more-by: category.
- Art pages must be in the art: category.
- Archived pages must be in the archived: category.
- Trimmed pages must be in the trimmed: category.

All other pages must be in the main category (a.k.a. "\_default:"). Use of other categories requires Tech Team approval on a case-by-case basis.

*This means that your page URL may not contain colons (:), as the text before the colon will be interpreted by Wikidot as a non-default category.*

[12: Rating and Licensebox Modules](javascript:;)

[12: Rating and Licensebox Modules](javascript:;)

A rating component must be clearly present at the top and/or bottom of every page with content on the wiki, and a licensebox at the bottom of each page. Those components should not be changed or modified and shouldn't disappear or be changed at any given time or point in the page. This excludes pages not subject to deletions.

[13: Redirects](javascript:;)

[13: Redirects](javascript:;)

*Wikidot provides the [Redirect module](https://www.wikidot.com/doc-modules:redirect-module), which, when added to a page, causes any browsers visiting it to instead load the destination page. This can be disabled by appending /noredirect/true to the page's URL.*

Users are never permitted to add a redirect to an article that is not theirs. Additionally, staff approval is needed to use redirects. All pages containing redirects must bear the redirect tag.

Redirects may not point to pages off of the main wiki, including sandboxes or other Wikidot sites. Fragment pages may not contain redirects.

[14: Page Titles](javascript:;)

[14: Page Titles](javascript:;)

All pages must have a title: it may not be blank. This is because ListPages selectors and forum pages have rendering issues if the title field is empty. A page's title may be hidden with CSS to create the appearance of not having a title.

Users can make the displayed title of their page different from the system page using the following code:

```
[[module CSS]]
#page-title {
    display: none;
}
[[/module]]

[[div class="meta-title"]]
New Title Here
[[/div]]
```

[15: Level/Object/Phenomenon/Entity (LOPE) Titles](javascript:;)

[15: Level/Object/Phenomenon/Entity (LOPE) Titles](javascript:;)

Not to be confused with **Page Titles**, Level/Object/Entity/Phenomenon (aka LOPE) titles are the text that follows its associated link on their respective hub pages with the following format:

[[[Level/Object/Phenomenon/Entity XXX]]] - "Title of Level/Object/Phenomenon/Entity"

The link part ([[[Level/Object/Phenomenon/Entity XXX]]]) represents the Page Title of the article; which should not be used to substitute the metadata title (Title of Level/Object/Phenomenon/Entity). The visual display of the link (as it appears in the list, not its URL) may be altered under special circumstances, such as when Groups of Interest use alternative naming conventions (like "Asset" and "Liability" by the B.N.T.G.).

To ensure technical and parsing compatibility, there are limitations to ensure standardization and avoid issues with site technical policy.

Titles must be *primarily composed of plain text*, and are reasonably accessible to screen readers. For example, "zalgo text", misusing mathematical characters as alternate "fonts", and use of the Private Use Area (PUA) would be prohibited, as well as excessive usage of emoji. However, this does not preclude the use of non-Latin characters when appropriate.

- Example of appropriate usage of non-Basic Latin and Latin-1 Supplement Unicode characters: [Entity XX](javascript:;) - "血の涙" ("Tears of Blood")
- Example of inappropriate usage: [Entity XXX](javascript:;) - "𝐃𝐄𝐀𝐃 𝐁𝐎𝐃𝐘" (Mathematical Bold Capital letters used for stylistic purposes rather than mathematical notation.)

Limited formatting for accurate representation of text may be permitted with Technical Team approval. For instance, use of superscript or subscript for strictly technical information (e.g. "H2O" or "21024 bytes"), or use of the "ruby text" CSS class for CJK-compatible text displays. Use of these features for "stylistic" reasons is not permitted.

---

In addition:

- Use of CSS modules and/or external stylesheets to supplement titles are prohibited.
- Use of inline formatting are restricted to the following:
  - **bold** (\*\*bold\*\*)
  - *italic* (//italic//)
  - underline (\_\_underline\_\_)
  - strikethrough (--strikethrough--)
  - teletype ({{teletype}})
  - Escaping with @@
  - color (##blue|color##)
    - Use of color syntax to render text invisible, obscure or otherwise difficult to read is prohibited.
  - [[span]] with inline CSS (no class). Only the following properties are allowed:
    - All font properties
    - All background properties (excluding use of external or encoded images)
    - padding properties
    - All border properties
    - color
    - All text-decoration properties, text-shadow, letter-spacing, word-spacing
    - box-shadow

The Tech Team reserves the right to edit titles and alter formatting if deemed too disruptive or deleterious to accessibility and legibility. Determination of violation is subject to Technical Team's discretion.

[16: Preview Content Policy](javascript:;)

[16: Preview Content Policy](javascript:;)

The [Preview component](component__preview--e8f4eaba.md) can be added to the top of the page to expose a hidden but query-able blurb for an article. This may be any text which accurately or usefully describes an article at a glance or in summary. However, there are limitations to ensure standardization and avoid issues with site technical policy.

Blurbs must be primarily composed of plain text, as defined in the **LOPE Titles** section.

- Syntax blocks (e.g. [[div]]), custom CSS (inline or through modules), and use of components are prohibited.
- Use of inline formatting are restricted to the following:
  - **bold** (\*\*bold\*\*)
  - *italic* (//italic//)
  - underline (\_\_underline\_\_)
  - strikethrough (--strikethrough--)
  - teletype ({{teletype}})
  - Escaping with @@
  - Inline center text (= at the start of a new line.)
- Use of the component is limited to pages in the default category.
- Blurbs must be at least one sentence or equivalent in length.
- Blurbs should describe, summarize, or provide a hook for the article they reference. Off-topic or inappropriate blurbs may be subject to edits at the discretion of the Curation Team.
- Blurbs should not be disruptive, such as containing excessively many paragraphs. This is determined at staff discretion.
- Blurbs may contain links when appropriate, e.g. to a series it's a part of, or to a sequel/prequel article.

The Tech Team reserves the right to edit blurbs as necessary if deemed too disruptive or deleterious to accessibility and legibility. Determination of violation is subject to Technical Team's discretion.

[17: Renaming and Moving](javascript:;)

[17: Renaming and Moving](javascript:;)

The following section refers to the Wikidot function called "Renaming", which allows users to change the url of a page they have posted. This is also sometimes colloquially known as "moving".

**Be careful with renaming, as it can leave extant links elsewhere on the internet voided when a page moves. In many instances, these links cannot be edited or are not under the control of the original author, and those links will now either link to a nonexistent page or an entirely different one. This is simply a warning to be careful about renaming, not a prohibition against it entirely.**

Deleting pages is technically considered renaming due to circumstances in the Wikidot backend. This is considered an auxiliary usage and is not covered in this policy.

Renaming Pages:

Users are allowed to request renaming pages under their control from staff. They may request to put the article in any valid slot they choose. The renaming process itself is done by staff, and users are not permitted to use the renaming function themselves.

Co-Authored Pages:

In the case of a co-authored page, you must consult with your coauthor(s) to make sure they are also willing to rename a page. If you have full control over the article due to your coauthor's absence, you can proceed as normal. If half or more of the coauthors are not willing to rename, you can not rename the article.

[18: Deletion](javascript:;)

[18: Deletion](javascript:;)

CSS themes and components are treated like normal pages in that other users are not permitted to make major changes to your work. Small mistakes are considered equivalent to spelling and grammar errors and may be corrected by any well-meaning user.

CSS themes and components operate under a slightly different deletion policy. They are eligible for *archiving* once they fall under the deletion range (which is 0 or fewer rate points for themes).

[19: Functionality](javascript:;)

[19: Functionality](javascript:;)

If your theme/component doesn't function in the major browsers (Chromium, Firefox, Safari, mobile) in a way that completely breaks navigation, function, or accessibility, it needs to be **removed** (or at bare minimum, removed from include blocks) from the site, then fixed, in that order. Our first priority is compatibility, function, and accessibility.

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Technical Content Policy](technical-content-policy.md)" by Backrooms Wiki Staff, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/technical-content-policy](technical-content-policy.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/technical-content-policy">Technical Content Policy</a>" by Backrooms Wiki Staff, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/technical-content-policy">https://backrooms-wiki.wikidot.com/technical-content-policy</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/technical-content-policy](https://backrooms-wiki.wikidot.com/technical-content-policy)
