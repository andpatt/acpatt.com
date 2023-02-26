+++
title = "Crapheap: My first homelab"
subtitle = "A Delve into how I got started in tech"
tags = ['infrastructure','personal', 'front', 'linux']
date = 2023-02-18

draft = false

# For description meta tag
description = "A Delve into how I got started in tech"

# Comment next line and the default banner wil be used.
banner = 'img/cluster3.jpg'


+++

It always starts with a Raspberry Pi. I’ve been building computers all my life, but the closest I’d been to linux was being flummoxed by old red-hat workstations my dad had got at an office clearance in Leeds. I’m too young to have grown up with DOS, and these terminal-only machines were just impenetrable to me. 

But in 2016 I did a 10 week full time course on cybersecurity. I did theoretical physics and maths at uni and having graduated just months before I was eager (see: desperate) to learn something that wasn’t so.. theoretical. I wanted to learn something that I could use. So I got a Pi to play with all the cybersecurity stuff I was learning on the course, and I did! I got an old sachertorte box for a case, I stuck kali on the Pi and Metasploitable on my desktop and had a whale of a time. 

![Two more Pis and an old case fan later](img/cluster0.jpg)

![Inside the box](img/cluster2.jpg)
 

Off the back of those experiences I got my first job as a systems engineer in Hull, and that’s when things really started to take off. 

The company was a small MSP managing network hardware and servers for a bunch of different industries. When I started, the engineering team was the founder’s two nephews and me. We had about 100 sites we looked after, most of them installed by us. 

I needed to learn a lot about a lot, and fast. I needed to learn about linux, because we were managing linux infrastructure. I needed to learn how to manage IT networks. How storage technologies actually worked. How to manage them. What to do if they broke. 

The office was throwing out an old NAS - a 2008 8-bay Thecus, along with the 1TB drives. One problem, the crappy ARM chip and the 512MB of RAM meant that it wasn’t going to be any use without an.. Upgrade. So I get an old motherboard + CPU from ebay, stick some spare ram in it, do some serious modifications to the case, and I had myself a perfect candidate for FreeNAS.

![A thecus with the motherboard replaced, plus a heatsink and fan off an old pentium 4](img/thecus0.jpg)



For months I ran Proxmox on three old laptops, running VM after VM using iSCSI and NFS storage off that “Thecus”. Firewall was PFsense on an old thin client. I got a 1U decom Proliant off BargainHardware and eventually binned the old laptops (By eventually I mean about 3 months ago). God that thing was loud though. Like, 200 yards from an airport and right under the flightpath loud. It was loud.

My second big break was when we were installing a new ESX server for a client in london. We get there and there’s no space in the Rack. Client says that’s because we need to take out the older server before installing this one. I ask where the old one’s going and he says it’ll probably be scrapped. My eyes light up and before I know it I’m hauling 30KG of steel and opportunities from finsbury park to kings cross, and then back up to Hull. 32GB of ram and 24 CPU cores though 👌.

At work I was also learning about domain controllers and end-user support at work, so I got a SAMBA4 based domain controller running and made myself some pretend users and a mailserver and all that fun stuff. I made myself a personal website to document the journey. 

![A blog post I wrote on the old website about how to mount iSCSI LUNs automatically.](img/web_code.png)

I was running enough infrastructure to support a medium sized business out of my (very small) office in my spare time. 


Alas, it wasn't to last. I knew by the end that It was unmanagable. At the time I'd never used Ansible. I knew of it, but had presumed it was some elite tool that only _real experts_ would be able to use. So when I moved house, I didn't have anything in code and the inertia was gone and I had a new job and.. the Scrapheap rusted away.

But it's not all bad. The reason I moved is because I got the job where I learned all about devops and infrastructure as code, and building the Scrapheap is what got me that job :) 

So here’s what my lab looked like at the end. I learned a lot and I broke a lot and it was great. 

![An "architecture" diagram from 2018 showing the network and server hardware as well as the virtual services running on it.](img/network.png)

![All my servers on the floor of my office, being extremely loud but you can't tell because it's a picture.](img/setup.jpg)

