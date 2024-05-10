docker run \
 --network lab_nosql_dynamodb_default \
 -e AWS_ACCESS_KEY_ID=DUMMYIDEXAMPLE \
 -e AWS_SECRET_ACCESS_KEY=DUMMYEXAMPLEKEY \
 -it amazon/aws-cli \
 dynamodb create-table \
    --table-name Invoices \
    --attribute-definitions \
        AttributeName=ID,AttributeType=S \
        AttributeName=Date,AttributeType=N \
    --key-schema \
        AttributeName=ID,KeyType=HASH \
        AttributeName=Date,KeyType=RANGE \
    --provisioned-throughput \
        ReadCapacityUnits=10,WriteCapacityUnits=5 \
 --endpoint-url http://dynamodb-local:8000 \
 --region us-west-2