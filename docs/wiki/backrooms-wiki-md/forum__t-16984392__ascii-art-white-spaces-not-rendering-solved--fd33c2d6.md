---
title: "ASCII art- white spaces not rendering [SOLVED]"
source: "https://backrooms-wiki.wikidot.com/forum/t-16984392/ascii-art-white-spaces-not-rendering-solved"
retrieved_at: "2026-08-23T23:47:47+00:00"
license: CC-BY-SA-3.0
---

# ASCII art- white spaces not rendering [SOLVED]

[Forum](https://backrooms-wiki.wikidot.com/forum/start)
» [Writing Help / Help: Questions Desk](forum__c-6898689__help__questions-desk--7a9332f1.md)
» ASCII art- white spaces not rendering [SOLVED]

Started by:   
Date: 10 Nov 2024 08:59  
Number of posts: 5  
![rss icon](http://www.wikidot.com/common--theme/base/images/feed/feed-icon-14x14.png)
RSS: [New posts](https://backrooms-wiki.wikidot.com/feed/forum/t-16984392.xml)

Summary:

Coding problem- Escape-parsing syntax is not working.

[Unfold All](javascript:;)
[Fold All](javascript:;)
 [More Options](javascript:;)

[Edit Title & Description](javascript:;)
[Stickness](javascript:;)
[Lock Thread](javascript:;)
[Move Thread](javascript:;)

[Fold](javascript:;)

ASCII art- white spaces not rendering

10 Nov 2024 08:59

Me again :/  
Wondering if anyone knows a solution for this.  
I’m trying to include some ASCII art on my page, and the escape-parsing syntax isn’t showing the white spaces faithfully. It was working, initially, but then I changed my page theme and something broke.

At first I was using Blinding Lights. I had the artwork inside a div, and each new line was encased with @< ... >@. Everything rendered properly.

Then, I switched the theme to Super Liminal. And now some of the white spaces in each line are getting chopped out or ignored, so the art wont line up. Writing each space as &nbsp; doesn’t work, and using the other  
@@ ... @@ syntax doesn’t work either.

And the weird thing is, there’s another place on my page where I have multiple spaces inline, and @@ ... @@ is rendering them just fine.

Does anyone know how to get white spaces to render faithfully? Anyone have any idea why this might have worked with one theme, but not another, or why it’s only working on one part of the page?

---

***. ..\_» Define reality «\_.. .***

Last edited on 10 Nov 2024 09:01
by
 [Show more](javascript:;)

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[ASCII art- white spaces not rendering](javascript:;) by , 10 Nov 2024 08:59

[Fold](javascript:;)

Re: ASCII art- white spaces not rendering

10 Nov 2024 19:15

Hello there; your friendly neighbourhood technician here (call me Rako)

can I get a link to your draft/sandbox? I would like to check the code on site

Thank you,  
Abdallah

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: ASCII art- white spaces not rendering](javascript:;) by , 10 Nov 2024 19:15

[Fold](javascript:;)

Re: ASCII art- white spaces not rendering

11 Nov 2024 02:31

Here's my sandbox:

<http://backrooms-sandbox-2.wikidot.com/endless-waters>

Much appreciated!

---

***. ..\_» Define reality «\_.. .***

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: ASCII art- white spaces not rendering](javascript:;) by , 11 Nov 2024 02:31

[Fold](javascript:;)

Re: ASCII art- white spaces not rendering

11 Nov 2024 02:58

So; turns out this is pretty simple

```
.ascii {
  font-family: monospace;
  font-size: 0.75em;
}
```

  
I just gave it a monospace font and it works fine  
I also shrunk the size a bit cuz the art is a bit too wide on mobile ;)

See it fixed [here](http://abdallah-backrooms-wiki.wikidot.com/ascii-art) and lmk if there's something else you need!

Yours truly,  
Abdallah Amr (I should really stop doing this part shouldn't I)

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: ASCII art- white spaces not rendering](javascript:;) by , 11 Nov 2024 02:58

[Fold](javascript:;)

Re: ASCII art- white spaces not rendering

11 Nov 2024 04:08

You my friend, are a miracle worker.  
Monospace font. [forehead slap] That makes a lot of sense.

Thank you so so much for fixing this! And for the size adjustment. The punchline of the storytelling was all riding on that ASCII art, so I'm so releived I can keep it in the article.

Yours truly,  
endless\_waters (why not? A bit of semi-formal sincerity is nice from time to time ;)

---

***. ..\_» Define reality «\_.. .***

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: ASCII art- white spaces not rendering](javascript:;) by , 11 Nov 2024 04:08

[New Post](javascript:;)

[Permanent Link](javascript:;)
[Edit](javascript:;)
[Delete](javascript:;)

/forum/t-16984392/ascii-art-white-spaces-not-rendering-solved#post-

---

Source: [https://backrooms-wiki.wikidot.com/forum/t-16984392/ascii-art-white-spaces-not-rendering-solved](https://backrooms-wiki.wikidot.com/forum/t-16984392/ascii-art-white-spaces-not-rendering-solved)
