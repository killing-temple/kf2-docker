#!/bin/bash
echo "STARTING $KF2SERVER"
mount --bind /home/steam/kf2-game-configs/$KF2SERVER /home/steam/kf2server/KFGame/Config
/home/steam/kf2server/Binaries/Win64/KFGameSteamServer.bin.x86_64