#!/bin/bash

# Need to be running as root 
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Perform system upgrades
apt update
apt upgrade
apt-get install python3-pip

pip3 install --upgrade setuptools

# Install Blinka and Adafruit dependencies
pip3 install --upgrade adafruit-python-shell
wget https://raw.githubusercontent.com/adafruit/Raspberry-Pi-Installer-Scripts/master/raspi-blinka.py
python3 raspi-blinka.py