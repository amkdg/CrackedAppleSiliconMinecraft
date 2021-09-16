# CrackedAppleSiliconMinecraft
#### [Work of tanmayb123](https://gist.github.com/tanmayb123/d55b16c493326945385e815453de411a#file-applesiliconminecraft-md), modified to bypass mojang account check. For educational purposes only.

---

"In this ~~gist~~ README, you can find the steps to run Minecraft 1.16.4 natively on Apple Silicon (AS), without needing Rosetta 2 translation of the dependencies (mainly LWJGL and related libraries).

While it's possible to use a launcher like MultiMC to have a prettier way to run the game on AS, it requires installing even more dependencies (like QT) which take time and are difficult to distribute. Therefore, I've put together a command line-based launcher tool using a couple shell & Python scripts.

To get up and running quickly, follow the steps below."

## Download my package

To begin, clone this repository, containing some pre-compiled core dependencies like LWJGL and a convenient set of setup & launcher scripts. Navigate to it in your terminal. Then follow the next steps.

> Note: this repository contains a single file tracked by [git-lfs](https://git-lfs.github.com). This file is `zulu-11.jdk/Contents/Home/lib/modules` (160MB). Depending on how you clone the repository, this file may not download correctly. I recommend using the command `git lfs clone` to be sure.

## Download Minecraft client & client libraries

```
cd libraries
sh download.sh
cd ..
```

## Download Minecraft assets

```
python3 downloadassets.py
```

## Run Minecraft!

> Note: email and password are optional arguments. Username is your in-game username. 3g (3 gigabytes) is the amount of ram to be allocated to the Java Virtual Machine. Keep everything enclosed in single quotes.

`sh launch.sh 'email' 'password' 'username' '3g'`
