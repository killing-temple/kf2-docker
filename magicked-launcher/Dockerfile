FROM alpine:latest

RUN apk add --update --no-cache \
    tmux \
    python3

RUN ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools

RUN useradd -m steam

WORKDIR /home/steam
USER steam

# Steam port
EXPOSE 20560/udp

# Query port - used to communicate with the master server
EXPOSE 27015/udp

# Game port - primary comms with players
EXPOSE 7777/udp

# Web Admin port
EXPOSE 8080/tcp

ENTRYPOINT ["mysql"]