# Pulling
This repo uses submodules. If you are cloning for the first time, you can pull down the submodules at the same time with:

```$ git clone --recurse-submodules https://github.com/matthewReff/Slay-AI ```

Or, if you've already downloaded the repo but not the submodules:

```$ git submodule init ```

```$ git submodule update```

# Libraries Used
https://github.com/kiooeht/ModTheSpire

https://github.com/daviscook477/BaseMod

https://github.com/ForgottenArbiter/CommunicationMod

https://github.com/Skrelpoid/SuperFastMode

https://github.com/ForgottenArbiter/spirecomm (Forked and modified)

# Setup
## Installing

Grab your SlayTheSpire game folder, and copy in the base directory. ("." relative to this readme)

Add executation permissions on the install script ```$ chmod +x install-mods.sh```

Run the install script ```$ ./install-mods.sh```

This should install all mods in the /Mods folder, and dump them into the SlayTheSpire folder.

Communication mod need to have a communicating file path added to its configuration. Look for more context in Communication mod's readme.

Additionally, once slay the spire has been launched, go to the mods section, choose Communication mod, and make sure that you either launch the attached executable here, or check the box to have it run on launch.

The configuration file should look approximately like this once you've finished: 
```
#{Timestamp}
command=python {file+path}/Slay-AI/Mods/spirecomm/main.py
runAtGameStart=true
```

#Running
It seems that running steam muddies the waters as far as whose mod list to use. So specifically don't run Steam at the same time.

For possibly the same reason, using the mod the spire executable also confuses where mods should be sourced.

For now, we'll just be using

```$ java -jar ModTheSpire.jar``` in the SlayTheSpire folder