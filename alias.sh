#!/bin/bash
echo "Adding aliases to .bashrc"
#Aliases definition
echo
{
  #Aliases
  alias cls='clear'
  alias c='xclip'
  alias v='xclip -o'
  alias tf='terraform'
  alias ll='ls -alF'
  alias la='ls -A'
  alias l='ls -CF'

} >> .bashrc