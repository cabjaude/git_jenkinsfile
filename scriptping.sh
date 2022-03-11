#!/bin/sh
ping -c 5 192.168.1.254

if [ "ping -c 2 192.168.1.254" == "64 bytes from" ];
then
#se o ip responder o ping mostra online
echo "online!"
else
#se o ip não responder mostra offline!
echo "offline!"
