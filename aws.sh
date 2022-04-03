aws rds create-db-instance --db-name=udgramdb --db-instance-identifier=udgramdb --engine=postgres --db-instance-class=db.r6g.large --master-user-password=$POSTGRES_PASSWORD --master-username=$POSTGRES_USERNAME --allocated-storage=100


 

aws s3api create-bucket --bucket udagramfe

aws s3 cp --recursive --acl public-read ./build s3://udagramfe/

eb init --region us-east-1 --platform node.js udagram-api
eb use udgram-env

eb create udagram-env -db=udgramdb -db.engine=postgres -db.i=udgramdbinstance -db.pass=$POSTGRES_PASSWORD -db.user=$POSTGRES_USERNAME -db.size=100

eb setenv POSTGRES_HOST=database-1.ck1owmrujpol.us-east-1.rds.amazonaws.com POSTGRES_USERNAME=postgres POSTGRES_PASSWORD=password123 POSTGRES_DB=postgres PORT=5432 AWS_BUCKET=udagramfe AWS_REGION=us-east-1 AWS_PROFILE=default
