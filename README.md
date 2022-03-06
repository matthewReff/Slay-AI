# Dependencies
Java 8

Maven

Python 3

pip

setuptools

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

Grab your SlayTheSpire game folder, and copy in this repository's base directory. ("." relative to this readme)

Add executation permissions on the install script ```$ chmod +x install-mods.sh```

Run the install script ```$ ./install-mods.sh```

This should install all mods in the /Mods folder, and dump them into the SlayTheSpire folder.

CommunicationMod needs to have the controller's file path added to its configuration.

The file is located in ModTheSpire's configuration folder, which changes depending on on your OS.

The configuration file should look approximately like this once you've finished: 

```
#{Timestamp}
command=python {file+path+to+repository}/Slay-AI/Mods/spirecomm/main.py
runAtGameStart=true
```

If you need additional help, look for more context in CommunicationMod readme.

# Running
It seems that running steam muddies the waters as far as whose mod list to use. So specifically don't run Steam at the same time as the ModTheSpire jar file.

For possibly the same reason, using the ModTheSpire executable also confuses where mods should be sourced.

For now, we'll just be using

```$ java -jar ModTheSpire.jar``` in the SlayTheSpire folder

# Logs
`GamaData` in the `SlayTheSpire` folder contains scraped data from runs, that is used define what the neural network knows about

Also in the `SlayTheSpire` folder is `neuralNet.log`. If you are on linux, you can read this log live whiling running the bot with `tail -f neuralNet.log`