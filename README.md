#Radiodan Pi Quick Provisioner

A set of scripts and configs to take a vanilla pi to a radiodan.

How to
---

These instructions assume you're starting from a blank disk image of Raspbian.

1. Log into the Raspberry Pi
2. `sudo raspi-config` to Expand filesystem and Overclok (900MHz), Restart
3. Log in again
4. `git clone https://github.com/radiodan/provision`
5. `cd provision`
6. `sudo ./provision all`

