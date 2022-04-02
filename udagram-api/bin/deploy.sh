cd www
eb init --region us-east-1 --platform "Node.js 16 running on 64bit Amazon Linux 2" udagram-api
eb create udagram-env
eb use udagram-env
eb deploy udagram-env
eb setenv POSTGRES_HOST=$POSTGRES_HOST POSTGRES_USERNAME=$POSTGRES_USERNAME POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_DB=$POSTGRES_DB PORT=5432 JWT_SECRET=welcomehome

