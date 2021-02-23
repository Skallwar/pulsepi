#!/bin/bash

set -e

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Desactivate user pulseaudio
systemctl --global disable pulseaudio.service pulseaudio.socket

# Copy config files
cp system.pa /etc/pulse/system.pa
cp pulseaudio.service /etc/systemd/system/pulseaudio.service

# Enable system wide pulseaudio
systemctl enable pulseaudio.service
systemctl start pulseaudio.service
