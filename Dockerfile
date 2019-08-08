FROM balenalib/rpi-debian:20190717

# Install related packages
RUN apt-get update && \
    apt-get install python2 sqlite3 wget

# Preferrable to ADD because we can remove the .tar.gz in one
# step and not have it committed to the Dockerfile "layer"
WORKDIR /usr/local/bin
RUN wget https://github.com/haiwen/seafile-rpi/releases/download/v7.0.4/seafile-server_7.0.4_stable_pi.tar.gz && \
    tar -xzvf seafile-server_7.0.4_stable_pi.tar.gz && \
    rm seafile-server_7.0.4_stable_pi.tar.gz

COPY startup.sh /usr/local/bin/startup.sh

ENTRYPOINT ["/usr/local/bin/startup.sh"]
VOLUME ["/opt/seafile-data"]
EXPOSE 80 443

LABEL version="0.0.1" \
      description="Seafile for RPI packaged for Docker" \
      maintainer="me+docker@cobertos.com"
