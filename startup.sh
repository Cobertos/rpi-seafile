cd /usr/local/bin/seafile-server-7.0.4
./seafile.sh start
# Use start-fastcgi as it will show errors
# https://forum.seafile.com/t/error-seahub-failed-to-start/2101
./seahub.sh start-fastcgi
tail -f /usr/local/bin/logs/*.log