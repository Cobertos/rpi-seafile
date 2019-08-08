FROM hypriot/rpi-alpine-scratch:v3.2

ADD https://github.com/haiwen/seafile-rpi/releases/download/v7.0.4/seafile-server_7.0.4_stable_pi.tar.gz /usr/local/bin

WORKDIR /usr/local/bin
RUN tar -xzvf seafile-server_7.0.4_stable_pi.tar.gz && rm seafile-server_7.0.4_stable_pi.tar.gz

ENTRYPOINT ["/usr/local/bin/seafile-server_7.0.4/seafile.sh", "start"]
VOLUME ["/opt/seafile-data"]
EXPOSE 80 443

LABEL version="0.0.1" \
      description="Seafile for RPI packaged for Docker" \
      maintainer="me+docker@cobertos.com"
