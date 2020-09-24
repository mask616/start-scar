#!/bin/bash

# variable
CODE_RESOURCES=/www/start-scar
SERVER_IP=106.12.132.100

# to package
cd $CODE_RESOURCES && mvn clean package

# scp
scp $CODE_RESOURCES/XXX root@$SERVER_IP /server/tmp/
