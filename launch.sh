UUID=$(python3 getuuid.py $1 $2 $4)
USERNAME=$(python3 getusername.py $1 $2 $3)
AUTH_TOKEN=$(python3 getauthtoken.py $1 $2)

cp launchscript launchscript2
echo param --gameDir >> launchscript2
echo param "$(pwd)"/minecraft >> launchscript2
echo param --assetsDir >> launchscript2
echo param "$(pwd)"/assets >> launchscript2
echo param --accessToken >> launchscript2
echo param $AUTH_TOKEN >> launchscript2
echo sessionId token:$AUTH_TOKEN >> launchscript2
echo param --username >> launchscript2
echo param $USERNAME >> launchscript2
echo userName $1 >> launchscript2
echo param --uuid >> launchscript2
echo param $UUID >> launchscript2
echo cp "$(pwd)"/libraries/lwjgljars.jar >> launchscript2
echo cp "$(pwd)"/libraries/patchy-1.1.jar >> launchscript2
echo cp "$(pwd)"/libraries/project/oshi-core/1.1/oshi-core-1.1.jar >> launchscript2
echo cp "$(pwd)"/libraries/jna-4.4.0.jar >> launchscript2
echo cp "$(pwd)"/libraries/platform-3.4.0.jar >> launchscript2
echo cp "$(pwd)"/libraries/icu4j-66.1.jar >> launchscript2
echo cp "$(pwd)"/libraries/javabridge-1.0.22.jar >> launchscript2
echo cp "$(pwd)"/libraries/jopt-simple-5.0.3.jar >> launchscript2
echo cp "$(pwd)"/libraries/netty-all-4.1.25.Final.jar >> launchscript2
echo cp "$(pwd)"/libraries/guava-21.0.jar >> launchscript2
echo cp "$(pwd)"/libraries/commons-lang3-3.5.jar >> launchscript2
echo cp "$(pwd)"/libraries/commons-io-2.5.jar >> launchscript2
echo cp "$(pwd)"/libraries/commons-codec-1.10.jar >> launchscript2
echo cp "$(pwd)"/libraries/brigadier-1.0.17.jar >> launchscript2
echo cp "$(pwd)"/libraries/datafixerupper-4.0.26.jar >> launchscript2
echo cp "$(pwd)"/libraries/gson-2.8.0.jar >> launchscript2
echo cp "$(pwd)"/libraries/authlib-2.0.27.jar >> launchscript2
echo cp "$(pwd)"/libraries/commons-compress-1.8.1.jar >> launchscript2
echo cp "$(pwd)"/libraries/httpclient-4.3.3.jar >> launchscript2
echo cp "$(pwd)"/libraries/commons-logging-1.1.3.jar >> launchscript2
echo cp "$(pwd)"/libraries/httpcore-4.3.2.jar >> launchscript2
echo cp "$(pwd)"/libraries/fastutil-8.2.1.jar >> launchscript2
echo cp "$(pwd)"/libraries/log4j-api-2.8.1.jar >> launchscript2
echo cp "$(pwd)"/libraries/log4j-core-2.8.1.jar >> launchscript2
echo cp "$(pwd)"/libraries/text2speech-1.11.3.jar >> launchscript2
echo cp "$(pwd)"/libraries/java-objc-bridge-1.0.0.jar >> launchscript2
echo cp "$(pwd)"/libraries/minecraft-1.16.4-client.jar >> launchscript2
echo ext "$(pwd)"/libraries/java-objc-bridge-1.0.0-natives-osx.jar >> launchscript2
echo natives NO_NATIVES >> launchscript2
echo launch >> launchscript2

cat launchscript2 | "$(pwd)"/zulu-11.jdk/Contents/Home/bin/java -Dorg.lwjgl.librarypath="$(pwd)"/lwjglnatives -Xdock:icon=icon.png -Xdock:name=AppleSiliconMinecraft -XstartOnFirstThread -Xms409m -Xmx$4 -Duser.language=en -cp "$(pwd)"/NewLaunch.jar:"$(pwd)"/libraries/lwjglfat.jar:"$(pwd)"/libraries/patchy-1.1.jar:"$(pwd)"/libraries/project/oshi-core/1.1/oshi-core-1.1.jar:"$(pwd)"/libraries/jna-4.4.0.jar:"$(pwd)"/libraries/platform-3.4.0.jar:"$(pwd)"/libraries/icu4j-66.1.jar:"$(pwd)"/libraries/javabridge-1.0.22.jar:"$(pwd)"/libraries/jopt-simple-5.0.3.jar:"$(pwd)"/libraries/netty-all-4.1.25.Final.jar:"$(pwd)"/libraries/guava-21.0.jar:"$(pwd)"/libraries/commons-lang3-3.5.jar:"$(pwd)"/libraries/commons-io-2.5.jar:"$(pwd)"/libraries/commons-codec-1.10.jar:"$(pwd)"/libraries/brigadier-1.0.17.jar:"$(pwd)"/libraries/datafixerupper-4.0.26.jar:"$(pwd)"/libraries/gson-2.8.0.jar:"$(pwd)"/libraries/authlib-2.0.27.jar:"$(pwd)"/libraries/commons-compress-1.8.1.jar:"$(pwd)"/libraries/httpclient-4.3.3.jar:"$(pwd)"/libraries/commons-logging-1.1.3.jar:"$(pwd)"/libraries/httpcore-4.3.2.jar:"$(pwd)"/libraries/fastutil-8.2.1.jar:"$(pwd)"/libraries/log4j-api-2.8.1.jar:"$(pwd)"/libraries/log4j-core-2.8.1.jar:"$(pwd)"/libraries/text2speech-1.11.3.jar:"$(pwd)"/libraries/java-objc-bridge-1.0.0.jar:"$(pwd)"/libraries/minecraft-1.16.4-client.jar:"$(pwd)"/libraries/java-objc-bridge-1.0.0-natives-osx.jar org.multimc.EntryPoint > mclog 2>&1 &

rm launchscript2
