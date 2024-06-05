#!/bin/bash
export COMPOSE_PROJECT_NAME="skynetmmo-server"
curdir=$(dirname $(readlink -f $0))
cd $curdir/mysql
docker-compose up -d