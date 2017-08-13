#!/bin/sh
cd `dirname $0`
hash=$(docker ps -a | grep postgres | awk '{print $1}')
docker stop $hash
docker rm $hash
./launch.sh
