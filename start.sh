#!/bin/bash

command="java -server -Xms512m -Xmx2048M -jar dw20.jar"
if [ "$1" == "restart" ]; then
serverName=$(basename `pwd`); serverName="${serverName^^}"; echo Starting $(basename `pwd`).;echo Go screen -x $serverName
screen -dmS $serverName $command
else
$command
fi