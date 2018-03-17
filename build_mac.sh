#!/bin/bash
cp ./binary_mac/* .
export FABRIC_CFG_PATH=$PWD
sh ./generate-certs-ubuntu.sh
sh ./docker-images.sh
docker-compose up -d
