#!/bin/bash

# Game Port: 7777 /udp
# Query Port: 27015 /udp
# Steam Port: 20560 /udp
# Web Admin: 8080 /tcp

sudo docker rm --force main
sudo docker run -d --name=main \
    -v "/home/steam/.steam/SteamApps/common/kf2server:/home/steam/kf2server" \
    -e KF2SERVER=main \
    -p 127.0.0.1:8080:8080/tcp \
    -p 127.0.0.1:7777:7777/udp \
    -p 127.0.0.1:27015:27015/udp \
    -p 127.0.0.1:20560:20560/udp \
    kt/kf2:1.0

sudo docker rm --force main2
sudo docker run -d --name=main2 \
    -v "/home/steam/.steam/SteamApps/common/kf2server:/home/steam/kf2server" \
    -e KF2SERVER=main \
    -p 127.0.0.1:8081:8080/tcp \
    -p 127.0.0.1:7778:7777/udp \
    -p 127.0.0.1:27016:27015/udp \
    -p 127.0.0.1:20561:20560/udp \
    kt/kf2:1.0

sudo docker rm --force main3
sudo docker run -d --name=main3 \
    -v "/home/steam/.steam/SteamApps/common/kf2server:/home/steam/kf2server" \
    -p 127.0.0.1:8082:8080/tcp \
    -p 127.0.0.1:7779:7777/udp \
    -p 127.0.0.1:27017:27015/udp \
    -p 127.0.0.1:20562:20560/udp \
    kt/kf2:1.0