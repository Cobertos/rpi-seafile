cd /usr/local/bin/seafile-server-7.0.4
./seafile.sh start
# Use start-fastcgi here if you encounter errors with SeaHub starting
# as it will print the stack trace
# https://forum.seafile.com/t/error-seahub-failed-to-start/2101
./seahub.sh start
tail -f /usr/local/bin/logs/*.log