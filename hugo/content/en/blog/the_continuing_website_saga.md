+++
title = "The continuing Website Saga"
subtitle = "God I hate frontend"
tags = ['frontend']
date = 2023-02-19

draft = false

# For description meta tag
description = "How I ended up with this website."

# Comment next line and the default banner wil be used.
banner = 'img/website_thumb.png'


+++

It’s funny coming back after years and seeing how you’ve changed, and how you’re still the same. 

The last time I had a website was when I first learnt about HTML and CSS - nearly five years ago now. It was a hell of a time, that. I'd not long had my first job as a server and network engineer, but I got a wholesale introduction to the entire world of IT, networks, small business, software development, devops. It was great. 

![The front page of my old website. It's pink and brown and the logo is a cat with a helicopter rotor. It's quite "busy".](img/old_website.png)

Anyway, the website. It was awful! it was raw HTML and CSS for everything, and it wasn't a small website! 

It had a lyrics page so I could remember the lyrics when I was playing along to [Ruth](https://www.ruthlyonmusic.com/)'s music, it had just nice pictures I liked? I think? It even had CI!

It took me a very long time to make, and at the time I couldn’t really put my finger on why. I knew I found it immensely frustrating but it’s only with coming back that I can see what was going on. 

I lost that website after I moved house (and had to tear down [my homelab](blog/my_first_homelab)), and I didn’t try to make another until late ast year. I made the same mistake this time as I did all those years ago; both times I didn’t start with a static site generator and a pre-built theme because I wanted to prove I could write the HTML/CSS from scratch. Difference is that this time I wanted the site to be a bastion of good coding practises. My requirements were: 


Uses HTML5 wherever possible.
Mobile-first, responsive design.
Interactive-ready. 

I’d heard Next.JS was a cool platform, so I started with that. I think I had a bit of that dunning-kruger confidence and I spent maybe 3 days playing with the example site before I understood that not only was I out of my depth, I was actually in the wrong pond. So I confessed my mistake to my colleagues and had a look through other frameworks available. I did time with SemanticUI, but couldn’t figure

![Homepage using pureCSS](img/website_full.png)

It took me a while but I got quite far with this one. I was quite picky about what I wanted, and I needed to extend the classes so much that in the end I gave up and just wrote the whole thing in html and CSS again. And I did. And it looked like absolute arse, but it worked! It was responsive, it rendered properly on mobile and it used HTML5 components. 

But it wasn’t going to be a good advert for me as a professional, so I installed hugo and found a very nice theme and that’s where we are now. 

So what have I learned? I learned that I did not do the due diligence to decide why I actually wanted a website. the actual reason is that I wanted to be able to write things like this, to provide an entrypoint into my professional life and to attach my CV to. I got caught up with wanting to feel like I could do front-end dev and I overestimated how much time I would want to invest in this project. 

I guess really what I've learned is that it doesn't pay to skip the "Why" part of a project. If there's a natural order to different projects, then beware of getting blocked on a small point at the start. And most of all, don't _ever_ try to build a website from scratch again because frontend dev SUCKS. 