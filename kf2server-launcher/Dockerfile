FROM ubuntu:focal

RUN apt-get update && apt-get install -y \
    git \
    libcurl4 \
    nano \
    wget

RUN useradd -m steam && echo "steam:steam" | chpasswd && adduser steam sudo
WORKDIR /home/steam
USER steam

RUN git clone https://github.com/killing-temple/kf2-game-configs.git
RUN git clone https://github.com/killing-temple/kf2-docker.git

RUN chown steam:steam ./kf2-game-configs
RUN chown steam:steam ./kf2-docker
RUN chmod +x ./kf2-docker/scripts/*

ENV PATH="/home/steam/kf2-docker/scripts:${PATH}"

ENTRYPOINT ["/home/steam/kf2-docker/scripts/start.sh"]
CMD ["kf2server"]