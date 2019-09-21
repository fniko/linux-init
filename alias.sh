#!/bin/bash
echo "######################"
echo "Adding aliases"
echo "######################"

declare -a aliases_list

aliases_list=(
  "cls='clear'"
  "c='xclip'"
  "v='xclip -o'"
  "tf='terraform'"
  "k8s='kubcetl'"
  "ll='ls -alF'"
  "la='ls -A'"
  "l='ls -CF'"
)

for item in "${aliases_list[@]}"; do
  if [[ $(rg "$item" ~/.bashrc) ]]; then
    echo "Skipping $item ..."
  else
    echo "Adding"
    echo "alias $item;" >> ~/.bashrc
  fi
done
