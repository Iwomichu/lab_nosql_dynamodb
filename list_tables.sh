docker run \
 --network dynamodb_default \
 -e AWS_ACCESS_KEY_ID=DUMMYIDEXAMPLE \
 -e AWS_SECRET_ACCESS_KEY=DUMMYEXAMPLEKEY \
 -it amazon/aws-cli \
 dynamodb list-tables \
 --endpoint-url http://dynamodb-local:8000 \
 --region us-west-2