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
)

for item in "${apt_list[@]}"; do
  echo "Installing $item"
  apt install "$item" -y
  echo "$item is ready!"
  sleep 1
done

echo "######################"
echo "Installing dependencies using **cargo**"
echo "######################"

cargo=(
starship
)

for item in "${cargo[@]}"; do
  echo "Installing $item"
  cargo install "$item"
  echo "$item is ready!"
  sleep 1
done

#Adding starship
# shellcheck disable=SC2016
echo 'eval "$(starship init bash)"' >> ~/.bashrc