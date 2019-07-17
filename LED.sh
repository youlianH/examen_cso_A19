#!/bin/bash

sudo -i;

if [ ! -d "/sys/class/gpio/gpio71" ];
	then
	sudo echo "71" > /sys/class/gpio/export
	sudo echo "out" > /sys/class/gpio/gpio71/direction
	fi

if [ ! -d "/sys/class/gpio/gpio233" ];
	then
	sudo echo "233" > /sys/class/gpio/export
	sudo echo "out" > /sys/class/gpio/gpio233/direction
	fi
while :
do
if [ $(cat /sys/class/gpio/gpio233/value) -eq 0 ];
	then
		echo "1" > /sys/class/gpio/gpio71/value
	else
		echo "0" > /sys/class/gpio/gpio71/value
	fi
done
