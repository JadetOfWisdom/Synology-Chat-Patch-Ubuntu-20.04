# Synonlogy-Chat-Patch-Ubuntu-20.04
Bug fix for Synology Chat on Ubuntu 20.04
## How to use
1. Make sure to install Synology Chat, and, the binary is in "/opt/Synology Chat"
2. Execute [patch.sh](patch.sh):
```
  $ sudo ./patch.sh
```
3. If you can not do 2., change it's file permission:
```
  $ sudo chmod +x patch.sh
```
## What it does?
1. This script copies ["ubuntuPatch"](ubuntuPatch) directory and it's files to "/opt/Synology Chat".
2. Then, create symlinks for every files to trick the program into reading those files.
## What are these files?
They are .so files that I extracted from each of .deb in [Sources](Sources):
- [libharfbuzz.so.0.10702.0](ubuntuPatch/libharfbuzz.so.0.10702.0)
- [libpango-1.0.so.0.4000.14](ubuntuPatch/libpango-1.0.so.0.4000.14)
- [libpangocairo-1.0.so.0.4000.14](ubuntuPatch/libpangocairo-1.0.so.0.4000.14)
- [libpangoft2-1.0.so.0.4000.14](ubuntuPatch/libpangoft2-1.0.so.0.4000.14)

Basically, UI elements and fonts for Synology Chat.
## Story
  This file is created for sharing between my company colleges. But then, one of us reallized that we should give everyone away of what we found. I write this script because, I just want to automate everything so that, everyone can use it without my supervision. I got [files](Sources) from Canonical's ubuntu 18.04 repsitory and extracted the .deb to get just .so files, then, create symlinks with the script from Herwin's post.

  I was actually aware at the time that I can just copy both symlinks and the binary and put it to the directory. I was also aware that I can just write a script that extracts the file automatically. However, for simplicity and maintainability, I decided to do everything manulally and put it in a folder that can be easily distinguished from program's essential files.

The fixes are posted by Herwin in [Synology Community](https://community.synology.com/enu/forum/1/post/136140)
