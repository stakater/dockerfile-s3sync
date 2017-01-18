#!/bin/bash
echo "$(date) - Syncing s3://${S3_BUCKET_LOCATION} with /s3sync/${S3_BUCKET_LOCATION}"
aws s3 sync s3://$S3_BUCKET_LOCATION /s3sync/$S3_BUCKET_LOCATION --delete