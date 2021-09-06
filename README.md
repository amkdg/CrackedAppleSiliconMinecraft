# CrackedAppleSiliconMinecraft
#### [Work of tanmayb123](https://github.com/shoryamalani/m1_apple_silicon_minecraft), modified to bypass mojang server checks. For educational purposes only.

---

"In this ~~gist~~ README, you can find the steps to run Minecraft 1.16.4 natively on Apple Silicon (AS), without needing Rosetta 2 translation of the dependencies (mainly LWJGL and related libraries).

While it's possible to use a launcher like MultiMC to have a prettier way to run the game on AS, it requires installing even more dependencies (like QT) which take time and are difficult to distribute. Therefore, I've put together a command line-based launcher tool using a couple shell & Python scripts.

To get up and running quickly, follow the steps below."

## Download my package

To begin, clone this repository, containing some pre-compiled core dependencies like LWJGL and a convenient set of setup & launcher scripts. Navigate to it in your terminal. Then follow the next steps.

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

> Note: email and password are optional arguments. Username is your in-game username. Keep everything enclosed in single quotes.

`sh launch.sh 'email' 'password' 'username'`


## For convenience
You can get the game as a pretty, pre-installed, and play-ready `.app` binary from the [releases tab](https://github.com/amkdg/AppleSiliconMinecraft/releases).
