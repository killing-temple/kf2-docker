#!/bin/bash
echo "STARTING $KF2SERVER"
pkill ping
/home/steam/kf2server/Binaries/Win64/KFGameSteamServer.bin.x86_64 -ConfigSubDir=$KF2SERVER
