#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Illegal number of parameters"
	echo "Example:"
	echo "./change-hostname.sh MyPC"
	exit 99
fi

hostn=$(cat /etc/hostname)
newhost=$1
sudo sed -i "s/$hostn/$newhost/g" /etc/hosts
sudo sed -i "s/$hostn/$newhost/g" /etc/hostname
hostname $newhost