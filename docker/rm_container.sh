#!/bin/bash
# stop all containers
docker stop $(docker ps -a -q)
# delete all containers
docker rm $(docker ps -a -q)
