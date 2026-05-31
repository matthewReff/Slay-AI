# Dependencies
Java 8 (openJDK 1.8.0_492 known to work)

Maven (Maven 3.8.7 known to work)

Python 3 (3.12.3 known to work)

pip (pip 24 known to work)

setuptools

# Pulling
This repo uses submodules. If you are cloning for the first time, you can pull down the submodules at the same time with:

```$ git clone --recurse-submodules https://github.com/matthewReff/Slay-AI ```

Or, if you've already downloaded the repo but not the submodules:

```$ git submodule init ```

```$ git submodule update```

# Libraries Used
[ModTheSpire](https://github.com/kiooeht/ModTheSpire)

[BaseMod](https://github.com/matthewReff/BaseMod) forked from [The Original](https://github.com/daviscook477/BaseMod)

[CommunicationMod](https://github.com/matthewReff/CommunicationMod) forked from [The Original](https://github.com/ForgottenArbiter/CommunicationMod)

[SuperFastMode](https://github.com/matthewReff/SuperFastMode) forked from [The Original](https://github.com/Skrelpoid/SuperFastMode)

[spirecomm](https://github.com/matthewReff/spirecomm) forked and heavily modified from [The Original](https://github.com/ForgottenArbiter/spirecomm)

# Setup
## Installing

Grab your SlayTheSpire game folder, and copy in this repository's base directory. ("." relative to this readme)

Ex:
* Mods
  * BaseMod
  * CommunicationMod
  * ModTheSpire
  * SuperFastMode
* SlayTheSpire
  * Game's Jar File

Add execution permissions on the install script ```$ chmod +x install-mods.sh```

Run the install script ```$ ./install-mods.sh```

This should install all mods in the /Mods folder, and dump them into the SlayTheSpire folder.

CommunicationMod needs to have the controller's file path added to its configuration. Take a look at the [SpireConfig](https://github.com/kiooeht/ModTheSpire/wiki/SpireConfig) docs for how to do that 

The configuration file should look approximately like this once you've finished:

```
#{Timestamp}
command=python ../Mods/Slay-AI/Mods/spirecomm/main.py
runAtGameStart=true
```

The path is relative to the `SlayTheSpire` folder location

If you need additional help, look for more context in CommunicationMod readme

Install the python deps with ```pip -m install -r requirements.txt```. Some may require additional dedicated installation, so check the logs on run

# Running
It seems that running steam muddies the waters as far as whose mod list to use. So specifically don't run Steam at the same time as the ModTheSpire jar file.

For possibly the same reason, using the ModTheSpire executable also confuses where mods should be sourced.

For now, we'll just be using

```$ java -jar ModTheSpire.jar``` in the SlayTheSpire folder

# Troubleshooting
These is a pretty unstable pile of packages. You may need to make fine adjustments to your tool versions to get things running. Take a look at the known working versions just in case

Most errors on start are caused by a problem with communication mod specifically. A `communication_mod_errors.log` file is generated in the `SlayTheSpire` folder which probably has the root cause inside of it

DO NOT USE RAW PRINT STATEMENTS, CommunicationMod attaches to the standard output stream and will be broken by stray prints

# Logs
In the `SlayTheSpire` folder is `neuralNet.log` which is the generally logger for all interactions.