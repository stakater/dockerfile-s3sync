# S3Snyc Dockerfile
Dockerfile for synchronize S3 buckets with a specific interval

##How to use:
```
docker run -d --name s3sync -e S3_BUCKET_LOCATION="<bucket name or path to bucket folder>" -v /myBucket:/s3sync s3sync
```

#Todo:
* Get custom cron time from user
* Right now `s3sync.sh` will only work if running on ec2 instance with relevant role policy, add option to specify credentials.