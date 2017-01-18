#!/bin/bash
# Run cron job every 30 seconds
echo "* * * * * /s3sync.sh >> /var/log/s3sync.log 2>&1
* * * * * (sleep 30; /s3sync.sh) >> /var/log/s3sync.log 2>&1" > /crontab
/usr/bin/crontab /crontab
/usr/sbin/crond -f -L 8