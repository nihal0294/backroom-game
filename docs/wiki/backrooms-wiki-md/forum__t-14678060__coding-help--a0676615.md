---
title: "Coding Help?"
source: "https://backrooms-wiki.wikidot.com/forum/t-14678060/coding-help"
retrieved_at: "2026-08-23T23:57:48+00:00"
license: CC-BY-SA-3.0
---

# Coding Help?

[Forum](https://backrooms-wiki.wikidot.com/forum/start)
» [Writing Help / Help: Questions Desk](forum__c-6898689__help__questions-desk--7a9332f1.md)
» Coding Help?

Started by:   
Date: 02 May 2022 19:49  
Number of posts: 4  
![rss icon](http://www.wikidot.com/common--theme/base/images/feed/feed-icon-14x14.png)
RSS: [New posts](https://backrooms-wiki.wikidot.com/feed/forum/t-14678060.xml)

Summary:

For the story currently typing code?

[Unfold All](javascript:;)
[Fold All](javascript:;)
 [More Options](javascript:;)

[Edit Title & Description](javascript:;)
[Stickness](javascript:;)
[Lock Thread](javascript:;)
[Move Thread](javascript:;)

[Fold](javascript:;)

Coding Help?

02 May 2022 19:49

So basically, I don’t know where the code came from, but I have an example from [A cringe load of a level I previously made.](http://backrooms-sandbox-2.wikidot.com/yourweirdplant4)  
Basically, I want to find how to change the text speed of @, so I can properly match it with my song.  
Here’s the code, if anyone can figure it out.

[Code](javascript:;)

[Hide Code](javascript:;)

```
[[include :backrooms-wiki:theme:database-new]]
[[html]]
<script type="text/javascript" src="http://d3g0gp89917ko0.cloudfront.net/v--3e3a6f7dbcc9/common--javascript/init.combined.js"></script>
<script type="text/javascript" src="http://d3g0gp89917ko0.cloudfront.net/v--3e3a6f7dbcc9/common--javascript/WIKIDOT.combined.js"></script>
<style type="text/css" id="internal-style">
@import url(http://d3g0gp89917ko0.cloudfront.net/v--3e3a6f7dbcc9/common--theme/base/css/style.css);
@import url(http://backrooms-wiki.wikidot.com/component:theme/code/1);
</style>
<meta http-equiv="content-type" content="text/html;charset=UTF-8"/>
                            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<div class="darkblock">
<p></p>
<div class="collapsible-block">
<div class="collapsible-block-folded"><a class="collapsible-block-link" href="javascript:;" id="folded"><tt>Start Typing</tt></a></div>
<div class="collapsible-block-unfolded" style="display:none">
<div class="collapsible-block-unfolded-link"><a class="collapsible-block-link" href="javascript:;"></a></div>
<div class="collapsible-block-content" id="content">
<p id="text"><tt id="terminal"></tt></p>
</div>
</div>
</div>
<p></p>
</div>
<script>
var folded = document.getElementById("folded");

folded.addEventListener("click", async function(){
  var terminal = document.getElementById("terminal");
  var text = "The text goes here.";
   var replace="What the"
  for (var i = 0; i < text.length; i++) {
    await new Promise(r => setTimeout(r, 50));
    switch(text[i]) {
      case '@':
          replace = replace + "<br><br>"
          break;
        case '^':
          replace = replace + "_"
          terminal.innerHTML = replace + "<br>";
          for (var j = 0; j < 1; j++){
            if (j == 1) {
               replace = replace.slice(0, -1)
               await new Promise(r => setTimeout(r, 250));
               replace = replace + "_"
               await new Promise(r => setTimeout(r, 750));
               terminal.innerHTML = replace + "<br>";
            } else {
              await new Promise(r => setTimeout(r, 1000));
            }
            replace = replace.slice(0, -1) + ' ';
            terminal.innerHTML = replace + "<br>";
            await new Promise(r => setTimeout(r, 1000));
            replace = replace.slice(0, -1) + '_';
            terminal.innerHTML = replace + "<br>";
          }
          replace = replace.slice(0, -1)
          break;
      default:
        replace = replace + text[i]
  }
    terminal.innerHTML = replace + "<br>";
  }
});
</script>
[[/html]]
```

---

~🌱

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Coding Help?](javascript:;) by , 02 May 2022 19:49

[Fold](javascript:;)

Re: Coding Help?

04 May 2022 17:19

```
   var text = "The text goes here.";
/*This part should be whatever text you want the terminal to display.*/
   var replace="What the"
/* This will randomly pull characters to use as the cursor, which is placing the text.
Recommended to be " " or "_"*/
   for (var i = 0; i < text.length; i++) {
    await new Promise(r => setTimeout(r, 50));
/*the '50' here is the time in a break or pause, change this to speed up or slow down the speed of the message. 
Make it smaller to speed up, larger to slow down.*/
```

> Text should be formatted like this.@@That's a double line break,^and this is a pause.@These all together can make some pretty cool stuff.

This will be converted to:

> Text should be formatted like this
>
> That's a double line break, and this is a pause.  
> These all together can make some pretty cool stuff.

---

Hope this helps!

---

> JamiMyst **|** she/her

Last edited on 04 May 2022 17:19
by
 [Show more](javascript:;)

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: Coding Help?](javascript:;) by , 04 May 2022 17:19

[Fold](javascript:;)

Re: Coding Help?

05 May 2022 16:29

Ahh bloody wonderful, thanks Jami!

---

~🌱

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: Coding Help?](javascript:;) by , 05 May 2022 16:29

[Fold](javascript:;)

Re: Coding Help?

05 May 2022 16:50

Glad to help!

---

> JamiMyst **|** she/her

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: Coding Help?](javascript:;) by , 05 May 2022 16:50

[New Post](javascript:;)

[Permanent Link](javascript:;)
[Edit](javascript:;)
[Delete](javascript:;)

/forum/t-14678060/coding-help#post-

---

Source: [https://backrooms-wiki.wikidot.com/forum/t-14678060/coding-help](https://backrooms-wiki.wikidot.com/forum/t-14678060/coding-help)
