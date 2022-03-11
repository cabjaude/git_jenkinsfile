#!/bin/sh
ping -c 5 $ip

if [ "ping -c 2 $ip" == "64 bytes from" ];
then
#se o ip responder o ping mostra online
echo "online!"
else
#se o ip não responder mostra offline!
echo "offline!"
