#!/bin/sh

# Make sure you have the SlayTheSpire game folder copied into the base of this repo, or accomodate for the fact that you don't

# Grab desktop.jar from slay the spire game folder
mkdir lib
cp SlayTheSpire/desktop-1.0.jar lib/

# Add modTheSpire
cd ModTheSpire
mvn install
mvn package
cd ../

# Add basemod
cd BaseMod
mvn package
cd ../

# Add StSLib
cd StSLib
mvn package
cd ../

# Copy the whole arrangement over the the slay the spire foler
cd _ModTheSpire
cp -r * ../SlayTheSpire
cd ../

# Clean up the garbage we made
rm -rf lib
rm -rf _ModTheSpire
