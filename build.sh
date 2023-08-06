#!/bin/sh
VERSION=$(<VERSION)
docker build . -t mpoore/photon-ci:latest -t mpoore/photon-ci:v$VERSION --build-arg VERSION=$VERSION
docker login --username $DOCKERUSER --password $DOCKERPASS
docker push mpoore/photon-ci:latest
docker push mpoore/photon-ci:v$VERSION