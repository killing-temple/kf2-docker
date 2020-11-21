#!/bin/bash
echo "STOPPING $KF2SERVER"
pkill KFGameSteamServ

echo "UPDATING $KF2SERVER CONTAINER SCRIPTS"
cd ~/kf2-docker
git reset --hard
git fetch
git pull

echo "UPDATING $KF2SERVER SERVER CONFIGS"
cd ~/kf2-game-configs
git reset --hard
git fetch
git pull

cd ~/kf2-docker/scripts
./start.sh