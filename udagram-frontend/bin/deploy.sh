aws s3 mb s3://$AWS_BUCKET/
aws s3 cp --recursive --acl public-read --cache-control "max-age=0, no-cache, no-store, must-revalidate" ./www s3://$AWS_BUCKET/
