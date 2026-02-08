# Zabbix Compose

This repo contains ``docker-compose.yml`` file that allows to run Zabbix flow with ease.

## Requirements
1. Docker + Docker Compose [installed](https://docs.docker.com/compose/install/)

## Setting up the environment
You have to create file named ``.env`` (code below exists in ``.env.example`` file):

```dotenv
# Postgresql Database credentials
PGUSER=zabbix
PGPASSWORD=some_password

# See all available versions: https://hub.docker.com/r/zabbix/zabbix-server-pgsql/tags?name=alpine-
ZBX_VERSION=7.4.0
# Web-interface will be available by this port
FRONT_END_PORT=8080
```

## Composing

Now we can compose our app by running command below:
```shell
docker compose up -d
```

> You can see all available Zabbix versions here: https://hub.docker.com/r/zabbix/zabbix-server-pgsql/tags?name=alpine-