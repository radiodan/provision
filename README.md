#Radiodan Pi Quick Provisioner

A set of scripts and configs to take a vanilla pi to a radiodan.

##How to

These instructions assume you're starting from a blank disk image of Raspbian.

1. Log into the Raspberry Pi
2. `sudo raspi-config` to Expand filesystem
3. Restart and log in again
4. If your Pi doesn't have Ruby or Git, you should `sudo apt-get update && sudo apt-get install ruby git`
5. `git clone https://github.com/radiodan/provision`
6. `cd provision`
7. `sudo ./provision all`

You can view all the possible steps by running `./provision`.
Setting a `LOG_LEVEL` environment variable to `info` will hide the output of the provisioning commands.

## SSH Key

You should overwrite `steps/ssh/files/id_radiodan.pub` with your own public SSH key. After provisioning, you can use this key to ssh/scp files onto the Pi without having to enter a password.
