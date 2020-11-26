#!/bin/bash

# Game Port: 7777 /udp
# Query Port: 27015 /udp
# Steam Port: 20560 /udp
# Web Admin: 8080 /tcp

# stable: /home/steam/.steam/SteamApps/common/kf2server
# beta:   /home/steam/.steam/SteamApps/beta/kf2server

# supported locations:
# - dallas
# - toronto

if [[ $1 -eq 0 ]] ; then
    echo 'No location provided - exiting.'
    exit 1
fi


cd /tmp
git clone https://github.com/killing-temple/kf2-game-configs.git
sudo cp ./kf2-game-configs/* /home/steam/.steam/SteamApps/common/kf2server/KFGame/Config/ -R
sudo cp ./kf2-game-configs/* /home/steam/.steam/SteamApps/beta/kf2server/KFGame/Config/ -R
rm -rf /tmp/kf2-game-configs


if [[ $1 == "dallas" ]] ; then

    sudo docker rm --force dallas8082
    sudo docker run -d --name=dallas8081 \
        -v "/home/steam/.steam/SteamApps/common/kf2server:/home/steam/kf2server:ro" \
        -e KF2SERVER=dallas8081 \
        -e WEBPORT=8081 \
        -p 0.0.0.0:8081:8080/tcp \
        -p 0.0.0.0:7778:7777/udp \
        -p 0.0.0.0:27016:27015/udp \
        -p 0.0.0.0:20561:20560/udp \
        kt/kf2:1.0

    sudo docker rm --force dallas8083
    sudo docker run -d --name=dallas8082 \
        -v "/home/steam/.steam/SteamApps/common/kf2server:/home/steam/kf2server:ro" \
        -e KF2SERVER=dallas8082 \
        -e WEBPORT=8082 \
        -p 0.0.0.0:8082:8080/tcp \
        -p 0.0.0.0:7779:7777/udp \
        -p 0.0.0.0:27017:27015/udp \
        -p 0.0.0.0:20562:20560/udp \
        kt/kf2:1.0

    sudo docker rm --force dallas8084
    sudo docker run -d --name=dallas8083 \
        -v "/home/steam/.steam/SteamApps/common/kf2server:/home/steam/kf2server:ro" \
        -e KF2SERVER=dallas8083 \
        -e WEBPORT=8083 \
        -p 0.0.0.0:8083:8080/tcp \
        -p 0.0.0.0:7780:7777/udp \
        -p 0.0.0.0:27018:27015/udp \
        -p 0.0.0.0:20563:20560/udp \
        kt/kf2:1.0

    sudo docker rm --force dallas8085
    sudo docker run -d --name=dallas8084 \
        -v "/home/steam/.steam/SteamApps/common/kf2server:/home/steam/kf2server:ro" \
        -e KF2SERVER=dallas8084 \
        -e WEBPORT=8084 \
        -p 0.0.0.0:8084:8080/tcp \
        -p 0.0.0.0:7781:7777/udp \
        -p 0.0.0.0:27019:27015/udp \
        -p 0.0.0.0:20564:20560/udp \
        kt/kf2:1.0

    sudo docker rm --force dallasbeta8086
    sudo docker run -d --name=dallasbeta8086 \
        -v "/home/steam/.steam/SteamApps/beta/kf2server:/home/steam/kf2server:ro" \
        -e KF2SERVER=dallasbeta8086 \
        -e WEBPORT=8086 \
        -p 0.0.0.0:8086:8080/tcp \
        -p 0.0.0.0:7783:7777/udp \
        -p 0.0.0.0:27021:27015/udp \
        -p 0.0.0.0:20566:20560/udp \
        kt/kf2:1.0

    sudo docker rm --force dallasbeta8087
    sudo docker run -d --name=dallasbeta8087 \
        -v "/home/steam/.steam/SteamApps/beta/kf2server:/home/steam/kf2server:ro" \
        -e KF2SERVER=dallasbeta8087 \
        -e WEBPORT=8087 \
        -p 0.0.0.0:8087:8080/tcp \
        -p 0.0.0.0:7784:7777/udp \
        -p 0.0.0.0:27022:27015/udp \
        -p 0.0.0.0:20567:20560/udp \
        kt/kf2:1.0

    sudo docker rm --force dallasbeta8088
    sudo docker run -d --name=dallasbeta8088 \
        -v "/home/steam/.steam/SteamApps/beta/kf2server:/home/steam/kf2server:ro" \
        -e KF2SERVER=dallasbeta8088 \
        -e WEBPORT=8088 \
        -p 0.0.0.0:8088:8080/tcp \
        -p 0.0.0.0:7785:7777/udp \
        -p 0.0.0.0:27023:27015/udp \
        -p 0.0.0.0:20568:20560/udp \
        kt/kf2:1.0

    sudo docker rm --force dallasbeta8089
    sudo docker run -d --name=dallasbeta8089 \
        -v "/home/steam/.steam/SteamApps/beta/kf2server:/home/steam/kf2server:ro" \
        -e KF2SERVER=dallasbeta8089 \
        -e WEBPORT=8089 \
        -p 0.0.0.0:8089:8080/tcp \
        -p 0.0.0.0:7786:7777/udp \
        -p 0.0.0.0:27024:27015/udp \
        -p 0.0.0.0:20569:20560/udp \
        kt/kf2:1.0

    exit 0
fi

if [[ $1 == "toronto" ]] ; then

    sudo docker rm --force toronto8082
    sudo docker run -d --name=toronto8081 \
        -v "/home/steam/.steam/SteamApps/common/kf2server:/home/steam/kf2server:ro" \
        -e KF2SERVER=toronto8081 \
        -e WEBPORT=8081 \
        -p 0.0.0.0:8081:8080/tcp \
        -p 0.0.0.0:7778:7777/udp \
        -p 0.0.0.0:27016:27015/udp \
        -p 0.0.0.0:20561:20560/udp \
        kt/kf2:1.0

    sudo docker rm --force toronto8083
    sudo docker run -d --name=toronto8082 \
        -v "/home/steam/.steam/SteamApps/common/kf2server:/home/steam/kf2server:ro" \
        -e KF2SERVER=toronto8082 \
        -e WEBPORT=8082 \
        -p 0.0.0.0:8082:8080/tcp \
        -p 0.0.0.0:7779:7777/udp \
        -p 0.0.0.0:27017:27015/udp \
        -p 0.0.0.0:20562:20560/udp \
        kt/kf2:1.0

    sudo docker rm --force toronto8084
    sudo docker run -d --name=toronto8083 \
        -v "/home/steam/.steam/SteamApps/common/kf2server:/home/steam/kf2server:ro" \
        -e KF2SERVER=toronto8083 \
        -e WEBPORT=8083 \
        -p 0.0.0.0:8083:8080/tcp \
        -p 0.0.0.0:7780:7777/udp \
        -p 0.0.0.0:27018:27015/udp \
        -p 0.0.0.0:20563:20560/udp \
        kt/kf2:1.0

    sudo docker rm --force toronto8085
    sudo docker run -d --name=toronto8084 \
        -v "/home/steam/.steam/SteamApps/common/kf2server:/home/steam/kf2server:ro" \
        -e KF2SERVER=toronto8084 \
        -e WEBPORT=8084 \
        -p 0.0.0.0:8084:8080/tcp \
        -p 0.0.0.0:7781:7777/udp \
        -p 0.0.0.0:27019:27015/udp \
        -p 0.0.0.0:20564:20560/udp \
        kt/kf2:1.0

    sudo docker rm --force torontobeta8086
    sudo docker run -d --name=torontobeta8086 \
        -v "/home/steam/.steam/SteamApps/beta/kf2server:/home/steam/kf2server:ro" \
        -e KF2SERVER=torontobeta8086 \
        -e WEBPORT=8086 \
        -p 0.0.0.0:8086:8080/tcp \
        -p 0.0.0.0:7783:7777/udp \
        -p 0.0.0.0:27021:27015/udp \
        -p 0.0.0.0:20566:20560/udp \
        kt/kf2:1.0

    sudo docker rm --force torontobeta8087
    sudo docker run -d --name=torontobeta8087 \
        -v "/home/steam/.steam/SteamApps/beta/kf2server:/home/steam/kf2server:ro" \
        -e KF2SERVER=torontobeta8087 \
        -e WEBPORT=8087 \
        -p 0.0.0.0:8087:8080/tcp \
        -p 0.0.0.0:7784:7777/udp \
        -p 0.0.0.0:27022:27015/udp \
        -p 0.0.0.0:20567:20560/udp \
        kt/kf2:1.0

    sudo docker rm --force torontobeta8088
    sudo docker run -d --name=torontobeta8088 \
        -v "/home/steam/.steam/SteamApps/beta/kf2server:/home/steam/kf2server:ro" \
        -e KF2SERVER=torontobeta8088 \
        -e WEBPORT=8088 \
        -p 0.0.0.0:8088:8080/tcp \
        -p 0.0.0.0:7785:7777/udp \
        -p 0.0.0.0:27023:27015/udp \
        -p 0.0.0.0:20568:20560/udp \
        kt/kf2:1.0

    sudo docker rm --force torontobeta8089
    sudo docker run -d --name=torontobeta8089 \
        -v "/home/steam/.steam/SteamApps/beta/kf2server:/home/steam/kf2server:ro" \
        -e KF2SERVER=torontobeta8089 \
        -e WEBPORT=8089 \
        -p 0.0.0.0:8089:8080/tcp \
        -p 0.0.0.0:7786:7777/udp \
        -p 0.0.0.0:27024:27015/udp \
        -p 0.0.0.0:20569:20560/udp \
        kt/kf2:1.0

    exit 0
fi

