#!/bin/bash

WORKDIR=$(pwd)

echo $WORKDIR

echo "Building Help-point Client Module"
cd $WORKDIR/helppoint-client
mvn package

echo "Building Help-point Configuration server Module"
cd $WORKDIR/helppoint-configuration-server
mvn package

echo "Building Help-point Discovery Server Module"
cd $WORKDIR/helppoint-discovery-server
mvn package

echo "Building Help-point Gateway Module"
cd $WORKDIR/helppoint-gateway
mvn package

echo "Building Help-point Product Module"
cd $WORKDIR/helppoint-product
mvn package

echo "Building Help-point Salesman Module"
cd $WORKDIR/helppoint-salesman
mvn package

echo "Building Help-point WEB"
cd $WORKDIR/helppoint-web
npm install && ng build --configuration=production