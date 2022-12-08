#!/usr/bin/env bash

CONFIG_DIR="./config/geth"

[ -d ${CONFIG_DIR} ] && echo "Removing previous geth data" && sudo rm -rf ${CONFIG_DIR}

docker build -o . --no-cache .

docker-compose up -d

echo "Geth endpoint is available at http://localhost:8545"
echo "Blockscout dashboard is available at http://localhost:4000"
