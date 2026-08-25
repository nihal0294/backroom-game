---
title: "Alright, Contest Entree critique?"
source: "https://backrooms-wiki.wikidot.com/forum/t-14566107/alright-contest-entree-critique"
retrieved_at: "2026-08-23T23:57:11+00:00"
license: CC-BY-SA-3.0
---

# Alright, Contest Entree critique?

[Forum](https://backrooms-wiki.wikidot.com/forum/start)
» [Writing Help / Help: Draft Critique](forum__c-6898687__help__draft-critique--555ceb34.md)
» Alright, Contest Entree critique?

Started by:   
Date: 16 Mar 2022 16:23  
Number of posts: 6  
![rss icon](http://www.wikidot.com/common--theme/base/images/feed/feed-icon-14x14.png)
RSS: [New posts](https://backrooms-wiki.wikidot.com/feed/forum/t-14566107.xml)

Summary:

I rewrote it.

[Unfold All](javascript:;)
[Fold All](javascript:;)
 [More Options](javascript:;)

[Edit Title & Description](javascript:;)
[Stickness](javascript:;)
[Lock Thread](javascript:;)
[Move Thread](javascript:;)

[Fold](javascript:;)

Alright, Contest Entree critique?

16 Mar 2022 16:23

<http://backrooms-sandbox-2.wikidot.com/yourweirdplant-contest-entree-2>  
So, I did some stuff to coding, changed up wording, but it still has the same base idea: The Brain is a Teacher.  
I’m kinda gonna wait for critique this time, because last time I posted prematurely and realized many mistakes from my page. And also I don’t wanna fall face first into -10 ratings.  
Oh crap one more thing.  
I don’t know how to change the color of the funky changing text. Can someone help me with that?  
Ehh, just gonna post it and hope for the best.

---

~🌱

Last edited on 17 Mar 2022 14:54
by
 [Show more](javascript:;)

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Alright, Contest Entree critique?](javascript:;) by , 16 Mar 2022 16:23

[Fold](javascript:;)

Re: Alright, Contest Entree critique?

23 Mar 2022 06:03

color?

```
##FF0000 | asdfga##
```

  
asdfga  
or a unicode one

```
##FF0000 | 𝙣𝙫𝙚𝙧𝙨𝙖𝙩##
```

  
𝙣𝙫𝙚𝙧𝙨𝙖𝙩

or use css

```
[[module css]]
.p {
color: rgb(0, 0, 255)
}
.q {
color: rgb(255, 0, 0)
}
[[/module]]

[[div class="p"]]
aaaa
[[/div]]
[[div class="q"]]
bbbb
[[/div]]
```

  
Paste it into the sandbox and you can see the blue 'aaaa' and the red 'bbbb'.

Last edited on 23 Mar 2022 06:06
by
 [Show more](javascript:;)

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: Alright, Contest Entree critique?](javascript:;) by , 23 Mar 2022 06:03

[Fold](javascript:;)

Re: Alright, Contest Entree critique?

23 Mar 2022 13:13

Oh no, it’s not that.  
Like, here’s the code of the changing text thing.

[Collapsible because it’s quite long](javascript:;)

[lol](javascript:;)

```
[[html]]
<body>
<center>
<p>
<div class="text" style="display: inline"></div>
</p>
<center>
</body>
<style>
@import url(http://www.scp-wiki.net/local--files/theme:scp-offices-theme/scpoffices_theme.css);

.text {
   font-family: var(--header-font);
   text-color: 
}

</style>
<script type="text/javascript">
obfu_data = {
"delay":0,
"start_time":40,
"end_time":40,
"disp_time":2000,
"loop":false,
"obfu_chars":"⑅⑅⑅⑅♛♛♛♛ꆛꆛꆛꆛ",
"phrases":[
'One day',
'They will honor us',
'And the strange rooms will become familiar.',
'One month',
'Their teachers will grow in strength',
'They will be ready to explore the Liminal Spaces',
'One year',
'They will join our ranks',
'They will teach others.',
'They will honor the Brain'
]
}
</script>
<script type="text/javascript" src="http://backrooms-wiki.wikidot.com/local--files/level-404/obfuscator.js"></script>
[[/html]]
```

  
It’s the text-color; or whatever I need to add there that I’m confused about.

---

~🌱

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: Alright, Contest Entree critique?](javascript:;) by , 23 Mar 2022 13:13

[Fold](javascript:;)

Re: Alright, Contest Entree critique?

24 Mar 2022 03:55

Oh, it's the html stuff.

```
<div class="text" style="display: inline"></div>
```

  
Change it to this.

```
<div class="text" style="display: inline;color: #146252;"></div>
```

  
You can change the color#146252 to what you want

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: Alright, Contest Entree critique?](javascript:;) by , 24 Mar 2022 03:55

[Fold](javascript:;)

Re: Alright, Contest Entree critique?

24 Mar 2022 13:11

Ahhh thank youuu!

---

~🌱

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: Alright, Contest Entree critique?](javascript:;) by , 24 Mar 2022 13:11

[Fold](javascript:;)

Re: Alright, Contest Entree critique?

24 Mar 2022 03:57

```
<div class="text" style="display: inline"></div>
```

  
change it like this

```
<div class="text" id="p1" style="display: inline;color: #146252;"></div>
```

  
You can change the color#146252 to what you want

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: Alright, Contest Entree critique?](javascript:;) by , 24 Mar 2022 03:57

[New Post](javascript:;)

[Permanent Link](javascript:;)
[Edit](javascript:;)
[Delete](javascript:;)

/forum/t-14566107/alright-contest-entree-critique#post-

---

Source: [https://backrooms-wiki.wikidot.com/forum/t-14566107/alright-contest-entree-critique](https://backrooms-wiki.wikidot.com/forum/t-14566107/alright-contest-entree-critique)
