#!/bin/bash

# Game Port: 7777
# Query Port: 27015
# Steam Port: 20560
# Web Admin: 8080

sudo docker run -d --name=main \
    -v "/home/steam/.steam/SteamApps/common/kf2server:/home/steam/kf2server" \
    -e KF2SERVER=main \
    -p 127.0.0.1:8080:8080/tcp \
    -p 127.0.0.1:7777:7777/udp \
    -p 127.0.0.1:27015:27015/udp \
    -p 127.0.0.1:20560:20560/udp \
    kt/kf2:1.0

sudo docker run -d --name=main2 \
    -v "/home/steam/.steam/SteamApps/common/kf2server:/home/steam/kf2server" \
    -e KF2SERVER=main2 \
    -p 127.0.0.1:8080:8081/tcp \
    -p 127.0.0.1:7777:7778/udp \
    -p 127.0.0.1:27015:27016/udp \
    -p 127.0.0.1:20560:20561/udp \
    kt/kf2:1.0

sudo docker run -d --name=main3 \
    -v "/home/steam/.steam/SteamApps/common/kf2server:/home/steam/kf2server" \
    -e KF2SERVER=main3 \
    -p 127.0.0.1:8080:8082/tcp \
    -p 127.0.0.1:7777:7779/udp \
    -p 127.0.0.1:27015:27017/udp \
    -p 127.0.0.1:20560:20562/udp \
    kt/kf2:1.0