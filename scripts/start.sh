#!/bin/bash
echo "STARTING $KF2SERVER"
tmux new -s kf2server -d
tmux send-keys -t "kf2server" '/home/steam/kf2server/Binaries/Win64/KFGameSteamServer.bin.x86_64' Enter
# cd kf2server/Binaries/Win64
# ./KFGameSteamServer.bin.x86_64