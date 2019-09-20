#!/bin/bash
echo "Updating packages..."
apt update  # To get the latest package lists

echo "Checking if is xclip present..."

if [[ $(which xclip) ]]; then
  echo "Xclip is present, skipping..."
else
  echo "Instaling xclip"
  apt install xclip
fi
