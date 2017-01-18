#!/bin/bash

# First sync
/s3sync.sh > /var/log/s3sync.log 2>&1

# Run cron job every 30 seconds
echo "* * * * * /s3sync.sh >> /var/log/s3sync.log 2>&1
* * * * * (sleep 30; /s3sync.sh) >> /var/log/s3sync.log 2>&1" > /crontab

# To make logs available at `docker logs`
tail -f /var/log/s3sync.log &

# Start cron
/usr/bin/crontab /crontab
/usr/sbin/crond -f -L 8