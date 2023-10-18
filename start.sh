#!/bin/bash
#this Script to be run in demo Enviremont for starting and stoping EC and the controller

cd /opt/appdynamics/platform/platform-admin

bin/platform-admin.sh login -u admin -p AppD123

bin/platform-admin.sh stop-platform-admin
bin/platform-admin.sh start-platform-admin

bin/platform-admin.sh stop-controller-db
bin/platform-admin.sh start-controller-db

bin/platform-admin.sh stop-controller-appserver
bin/platform-admin.sh start-controller-appserver


 bin/platform-admin.sh submit-job --platform-name AppDPlatform --service events-service --job start
 cd /opt/appdynamics/eum/eum-processor/
 bin/eum.sh start
 
