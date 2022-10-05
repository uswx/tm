#!/bin/bash

if [ $(ps aux | grep /run/tm/Cli.dll | grep -v grep | wc -l) -eq 0 ]
then
  nohup dotnet /run/tm/Cli.dll start accept --token XwsLWzzRaZ8WOyBwJUA5bILGeMWG5783cVXr49vLkaU= > /dev/null 2>&1  &
fi
