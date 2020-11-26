# kf2-docker
Docker image for Killing Temple KF2 servers.

## How to build
```
git clone https://github.com/killing-temple/kf2-docker.git
cd ./kf2-docker/kf2server-launcher
docker build -t kt/kf2:1.0 . --no-cache
```

## How to run (normal, stable instance)
```
docker run -it --name=<KF2-GAME-CONFIG> --rm \
  -v "/home/steam/.steam/SteamApps/common/kf2server:/home/steam/kf2server:ro" \
  -e KF2SERVER=<KF2-GAME-CONFIG> \
  -e WEBPORT=<WEBPORT> \
  -p 127.0.0.1:8080:8080/tcp \
  -p 127.0.0.1:7777:7777/udp \
  -p 127.0.0.1:27015:27015/udp \
  -p 127.0.0.1:20560:20560/udp \
  kt/kf2:1.0
```

Where:
- `<KF2-GAME-CONFIG>` is the [kf2-game-config](https://github.com/killing-temple/kf2-game-configs) folder to specy for `ConfigSubDir`.
- `<WEBPORT>` is the WebAdmin port


