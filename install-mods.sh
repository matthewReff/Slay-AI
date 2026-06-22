#!/bin/sh

# Make sure you have the SlayTheSpire game folder copied into the base of this repo, or accommodate for the fact that you don't

# Grab desktop.jar from slay the spire game folder
mkdir Mods/lib
cp SlayTheSpire/desktop-1.0.jar Mods/lib/
cd Mods 

# Add modTheSpire
cd ModTheSpire
mvn install
mvn package
cd ../

# Add basemod
cd BaseMod
mvn package
cd ../

# Install remote mods
mkdir Prebuilt-Mods
cd Prebuilt-Mods
if [ ! -f LudicrousSpeed.jar ]; then
	wget https://github.com/boardengineer/LudicrousSpeed/releases/download/slay-eye/LudicrousSpeed.jar
fi
if [ ! -f SaveStateMod.jar ]; then
	wget https://github.com/boardengineer/STSStateSaver/releases/download/backups/SaveStateMod.jar
fi
cp * ../_ModTheSpire/mods/.
cd ../

# Add Communication Mod
cd CommunicationMod
mvn package
cd ../

# Add StSLib
cd StSLib
mvn package
cd ../

# Add our custom mod
cd STS-Telemetry-Mod
mvn package
cd ../

# Add The Relic Stats mod
cd StsRelicStats
mvn package
cd ../

# Add spirecomm
cd spirecomm
#python3 setup.py install
pip install .
cd ../

cd SuperFastMode
chmod +x gradlew
./gradlew build
cp build/libs/SuperFastMode.jar ../_ModTheSpire/mods/.
cd ../

# Copy the whole arrangement over the the slay the spire folder
cd _ModTheSpire
cp -r * ../../SlayTheSpire
cd ../

# Clean up the garbage we made
rm -rf lib
rm -rf _ModTheSpire
