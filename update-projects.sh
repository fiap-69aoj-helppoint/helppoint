#!/bin/bash

WORKDIR=$(pwd)

echo $WORKDIR

echo "Building Discovery Server"
cd $WORKDIR/helppoint-discovery-server
mvn package

echo "Building Netflix Gateway"
cd $WORKDIR/helppoint-gateway
mvn package
