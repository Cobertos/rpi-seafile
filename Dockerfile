FROM hypriot/rpi-alpine-scratch

ADD https://github.com/haiwen/seafile-rpi/releases/download/v7.0.4/seafile-server_7.0.4_stable_pi.tar.gz /usr/local/bin

WORKDIR /usr/local/bin
RUN tar -xzvf seafile-server_7.0.4_stable_pi.tar.gz seafile-server_7.0.4_stable_pi

ENTRYPOINT ["/usr/local/bin/seafile.sh", "start"]
VOLUME ["/opt/seafile-data"]
EXPOSE 80 443

LABEL version="0.0.1"
LABEL description="Seafile for RPI packaged for Docker"
LABEL maintainer="me+docker@cobertos.com"