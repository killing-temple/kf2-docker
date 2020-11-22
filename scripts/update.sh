#!/bin/bash
echo "UPDATING $KF2SERVER CONTAINER SCRIPTS"
cd ~/kf2-docker
git reset --hard
git fetch
git pull

echo "UPDATING $KF2SERVER SERVER CONFIGS"
cp -r ~/kf2-game-configs ~/kf2-game-configs_$(date +%d-%m-%Y)
cd ~/kf2-game-configs
git reset --hard
git fetch
git pull

echo "STOPPING $KF2SERVER"
pkill KFGameSteamServ