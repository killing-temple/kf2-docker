# kf2-docker
Docker image for Killing Temple KF2 servers.

## How to build
```
git clone https://github.com/killing-temple/kf2-docker.git
cd ./kf2-docker/kf2server-launcher
docker build -t kt/kf2:1.0 .
```

## How to run
```
docker run -it --name=main --rm \
  -v "/home/steam/.steam/SteamApps/common/kf2server:/home/steam/kf2server" \
  -e KF2SERVER=main \
  -p 127.0.0.1:8080:8080/tcp \
  -p 127.0.0.1:7777:7777/udp \
  -p 127.0.0.1:27015:27015/udp \
  -p 127.0.0.1:20560:20560/udp \
  kt/kf2:1.0 \
  /bin/bash  -c "$(cat /home/steam/kf2-docker/scripts/start.sh)"
```


