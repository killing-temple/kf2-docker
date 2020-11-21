#!/bin/bash
echo "STOPPING $KF2SERVER"
pkill KFGameSteamServ
echo "HANGING TO KEEP $KF2SERVER CONTAINER LIVE"
ping localhost &> /dev/null