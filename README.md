# AppleSiliconMinecraft
Minecraft on Apple Silicon (cracked)

## Setup
You can get a pre-installed, play-ready `.app` copy from the [releases tab](https://github.com/amkdg/AppleSiliconMinecraft/releases).

#### Step 1: Clone this repository
```git clone https://github.com/amkdg/AppleSiliconMinecraft AppleSiliconMinecraft && cd AppleSiliconMinecraft```

#### Step 2: Download Minecraft client & client libraries
```cd libraries; sh download.sh; cd ..```

#### Step 3: Download Minecraft assets
```python3 downloadassets.py```

---

## Running the game
You can run the game using `sh launch.sh "email" "password" "username" "3g"`
`"email"` and `"password" are optional arguments`.
`"3g"` (3 gigabytes) is the amount of RAM to be allocated to the Java Virtual Machine.

---

[Work of tanmayb123](https://github.com/shoryamalani/m1_apple_silicon_minecraft), modified to bypass mojang server checks. For educational purposes only.
