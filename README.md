# kf2-docker
Docker image for Killing Temple KF2 servers.

## How to build
```
git clone https://github.com/killing-temple/kf2-docker.git
cd ./kf2-docker
docker build -t kt/kf2:1.0 .
```

## How to run
```
docker run -it --name=<server_name> --rm \
  -v "/home/steam/.steam/SteamApps/common/kf2server:/home/steam/kf2server" \
  -e KF2SERVER=<server_name> \
  kt/kf2:1.0 \
  /bin/bash  -c "$(cat ./kf2-docker/scripts/start.sh)"
```


