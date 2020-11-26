#!/bin/bash

# Game Port: 7777 /udp
# Query Port: 27015 /udp
# Steam Port: 20560 /udp
# Web Admin: 8080 /tcp

# stable: /home/steam/.steam/SteamApps/common/kf2server
# beta:   /home/steam/.steam/SteamApps/beta/kf2server

cd /tmp;
git clone https://github.com/killing-temple/kf2-game-configs.git;
sudo cp ./kf2-game-configs/* /home/steam/.steam/SteamApps/common/kf2server/KFGame/Config/ -R
sudo cp ./kf2-game-configs/* /home/steam/.steam/SteamApps/beta/kf2server/KFGame/Config/ -R
rm -rf /tmp/kf2-game-configs

sudo docker rm --force main
sudo docker run -d --name=main \
    -v "/home/steam/.steam/SteamApps/common/kf2server:/home/steam/kf2server" \
    -e KF2SERVER=main \
    -e WEBPORT=8080 \
    -p 0.0.0.0:8080:8080/tcp \
    -p 0.0.0.0:7777:7777/udp \
    -p 0.0.0.0:27015:27015/udp \
    -p 0.0.0.0:20560:20560/udp \
    kt/kf2:1.0

sudo docker rm --force main2
sudo docker run -d --name=main2 \
    -v "/home/steam/.steam/SteamApps/common/kf2server:/home/steam/kf2server" \
    -e KF2SERVER=main \
    -e WEBPORT=8081 \
    -p 0.0.0.0:8081:8080/tcp \
    -p 0.0.0.0:7778:7777/udp \
    -p 0.0.0.0:27016:27015/udp \
    -p 0.0.0.0:20561:20560/udp \
    kt/kf2:1.0

sudo docker rm --force main3
sudo docker run -d --name=main3 \
    -v "/home/steam/.steam/SteamApps/common/kf2server:/home/steam/kf2server" \
    -e KF2SERVER=main \
    -e WEBPORT=8082 \
    -p 0.0.0.0:8082:8080/tcp \
    -p 0.0.0.0:7779:7777/udp \
    -p 0.0.0.0:27017:27015/udp \
    -p 0.0.0.0:20562:20560/udp \
    kt/kf2:1.0

sudo docker rm --force mainbeta
sudo docker run -d --name=mainbeta \
    -v "/home/steam/.steam/SteamApps/beta/kf2server:/home/steam/kf2server" \
    -e KF2SERVER=main-beta \
    -e WEBPORT=8083 \
    -p 0.0.0.0:8083:8080/tcp \
    -p 0.0.0.0:7780:7777/udp \
    -p 0.0.0.0:27018:27015/udp \
    -p 0.0.0.0:20563:20560/udp \
    kt/kf2:1.0

sudo docker rm --force mainbeta2
sudo docker run -d --name=mainbeta2 \
    -v "/home/steam/.steam/SteamApps/beta/kf2server:/home/steam/kf2server" \
    -e KF2SERVER=main-beta \
    -e WEBPORT=8084 \
    -p 0.0.0.0:8084:8080/tcp \
    -p 0.0.0.0:7781:7777/udp \
    -p 0.0.0.0:27019:27015/udp \
    -p 0.0.0.0:20564:20560/udp \
    kt/kf2:1.0

sudo docker rm --force mainbeta3
sudo docker run -d --name=mainbeta3 \
    -v "/home/steam/.steam/SteamApps/beta/kf2server:/home/steam/kf2server" \
    -e KF2SERVER=main-beta \
    -e WEBPORT=8085 \
    -p 0.0.0.0:8085:8080/tcp \
    -p 0.0.0.0:7782:7777/udp \
    -p 0.0.0.0:27020:27015/udp \
    -p 0.0.0.0:20565:20560/udp \
    kt/kf2:1.0