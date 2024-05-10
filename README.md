# DynamoDB lab tutorial

This repository consists of a Docker Compose configuration file and collection of simple scripts that show basics of DynamoDB API. For more information see [AWS Documentation](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Introduction.html). Scripts and Docker Compose services are confirmed to work when used on the Ubuntu launched as a WSL. See [Microsoft Documentation](https://learn.microsoft.com/en-us/windows/wsl/install) for details.

The Docker Compose runs the [Localstack](https://docs.localstack.cloud/getting-started/) container that acts as a DynamoDB service. The other container is run to confirm whether the launch is successful and terminates after that.

## Prerequisites
* Docker
* Git

## Clone this repository

```sh
git clone https://github.com/Iwomichu/lab_nosql_dynamodb.git
```

## Run service

```sh
docker compose up
```

If the other container (`app-node`) encounters any issues, then exit the application (on Linux `ctrl+c` should work fine) and then run 
```sh
docker compose down
```

And then try to start the service again.

## Play with the scripts
After the service has started successfully, you can use `*.sh` that are provided to see how to interact with the service. For details see [AWS Documentation](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GettingStarted.html).

## Use the NoSQL Workbench
You can use [NoSQL Workbench](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/workbench.html) to manipulate the database. The provided settings works fine out of the box on Ubuntu run as WSL in Windows 10. After installing, add new `DynamoDB local` connection in `Operation Builder` with the default settings.