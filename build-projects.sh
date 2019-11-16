#!/bin/bash

WORKDIR=$(pwd)

echo $WORKDIR

echo "Building Help-point Discovery Server"
cd $WORKDIR/helppoint-discovery-server
mvn package

echo "Building Help-point Gateway"
cd $WORKDIR/helppoint-gateway
mvn package


echo "Building Help-point Product"
cd $WORKDIR/helppoint-product
mvn package

echo "Building Help-point WEB"
cd $WORKDIR/helppoint-web
npm install && ng build --configuration=production