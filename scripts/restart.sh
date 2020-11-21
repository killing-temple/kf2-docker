#!/bin/bash
echo "STOPPING $KF2SERVER"
pkill KFGameSteamServ

cd ~/kf2-docker/scripts
./start.sh
