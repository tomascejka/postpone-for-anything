#!/bin/bash

#
# Mavenizace, jeste doladit...
# 
#cd ../
#mvn clean package

#if [ $? != 0 ]; then
#	echo "Cannot process maven build package"
#	exit
#fi

gl=$1/bin/asadmin
earname=$2 #BarclaycardApacsConnector-ear-1.0.0-SNAPSHOT-local
earpath=$3 #/home/tomascejka/Tools/glassfish/glassfish-3.1.2.2/ /media/data/tomascejka/.Private/Repositories/wincor/LoomPMG/trunk/BarclaycardApacsConnector/BarclaycardApacsConnector-ear/target/$earname.ear

#
#  DEPLOY
#
$gl deploy --user admin --name $earname $earpath

#
# REDEPLOY
#
if [ $? != 0 ]; then
	echo "Cannot process DEPLOY, try REDEPLOY"
    $gl redeploy --user admin --name $earname  $earpath	
	exit
fi
