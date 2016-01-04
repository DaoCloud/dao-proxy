#!/bin/bash

set -e

# cd to the current directory so the script can be run from anywhere.
cd `dirname $0`

docker build -t dao-proxy-builder ..

# Create a dummy swarmbuild container so we can run a cp against it.
ID=$(docker create dao-proxy-builder)

# Update the local binary.
docker cp $ID:/go/bin/dao-proxy .

# Cleanup.
docker rm -f $ID
docker rmi dao-proxy-builder

echo "Done."