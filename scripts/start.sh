#!/bin/sh
tmux new -s kf2server -d
tmux send-keys -t "kf2server" '/home/steam/.steam/SteamApps/common/kf2server/Binaries/Win64/KFGameSteamServer.bin.x86_64 kf-the-killing-temple' Enter