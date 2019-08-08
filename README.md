# rpi-seafile for Docker

Dockerfile for rpi-seafile

## Installation

TODO: This installation instructions are BETA and might not work

1. Download the Dockerfile
2. `docker build .`
3. Configure your seafile instance with through the interactive prompt
```
docker run -ti -v "seafile:/usr/local/bin/seafile-data" IMAGE_HERE /usr/local/bin/setup-seafile.sh
```
4. Run your seafile instance
```
docker run -d --name seafile \
  -e SEAFILE_SERVER_HOSTNAME=seafile.example.com \
  -e SEAFILE_ADMIN_EMAIL=me@example.com \
  -e SEAFILE_ADMIN_PASSWORD=a_very_secret_password \
  -v "seafile:/usr/local/bin/seafile-data" \
  -p 80:80 \
  --restart=always \
  IMAGE_HERE
```

This will start your noip container daemon and it will restart it even if you restart your pi, now you can access your device anywhere in the world as it will update the DNS automatically