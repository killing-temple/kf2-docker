FROM alpine:latest

RUN apk add --update --no-cache \
    tmux \
    git

RUN adduser steam -h /home/steam -D
WORKDIR /home/steam
USER steam

RUN git clone https://github.com/killing-temple/kf2-game-configs.git
RUN git clone https://github.com/killing-temple/kf2-docker.git

ENV PATH="/home/steam/kf2-docker/scripts:${PATH}"

ENTRYPOINT ["/home/steam/kf2-docker/scripts/start.sh"]
CMD ["kf2server"]