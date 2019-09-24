#!/bin/bash
echo "######################"
echo "Updating packages"
echo "######################"
apt update  # To get the latest package lists

echo "######################"
echo "Installing dependencies using **apt install**"
echo "######################"

declare -a apt_list

apt_list=(
cargo
xclip
ripgrep
fonts-powerline
filezilla
postman
mosh
)

for item in "${apt_list[@]}"; do
  echo "Installing $item"
  apt install "$item" -y
  echo "$item is ready!"
  sleep 1
done
