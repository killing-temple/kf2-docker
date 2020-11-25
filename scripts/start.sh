#!/bin/bash
echo "STARTING $KF2SERVER"
pkill ping
# ln -s /home/steam/kf2-game-configs/$KF2SERVER /home/steam/kf2server/KFGame/Config
# sudo mount --bind /home/steam/kf2-game-configs/$KF2SERVER /home/steam/kf2server/KFGame/Config

# mkdir /home/steam/kf2server
# mkdir /home/steam/kf2server/KFGame

# ln -s /kf2server/Engine /home/steam/kf2server/Engine
# ln -s /kf2server/Binaries /home/steam/kf2server/Binaries
# ln -s /kf2server/linux64 /home/steam/kf2server/linux64
# ln -s /kf2server/steamclient.so /home/steam/kf2server/steamclient.so

# ln -s /kf2server/KFGame/BrewedPC /home/steam/kf2server/KFGame/BrewedPC
# ln -s /kf2server/KFGame/Localization /home/steam/kf2server/KFGame/Localization
# ln -s /kf2server/KFGame/Script /home/steam/kf2server/KFGame/Script
# ln -s /kf2server/KFGame/Web /home/steam/kf2server/KFGame/Web

# ln -s /home/steam/kf2-game-configs/$KF2SERVER /home/steam/kf2server/KFGame/Config

/home/steam/kf2server/Binaries/Win64/KFGameSteamServer.bin.x86_64 -ConfigSubDir=$KF2SERVER
