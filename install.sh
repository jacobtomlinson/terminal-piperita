#!/bin/bash
# Interactive script to install piperita
# Author: Jacob Tomlinson
# https://github.com/killfall/terminal-piperita

USE_DOT_D=true
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ ! -d ~/.bashrc.d ]; then

  while true; do
      read -p "Do you want a .bashrc.d (Y/N)? " answer
      case $answer in
          [Yy]* ) mkdir ~/.bashrc.d && echo "~/.bashrc.d created"; break;;
          [Nn]* ) let USE_DOT_D=false; break;;
          * ) echo "Please answer y or n.";;
      esac
  done

fi

#Main piperita file

if [ -e "$DIR/Bash/.bashrc.d/piperita" ]; then
  if [ $USE_DOT_D = true ]; then
    if [ -e ~/.bashrc ]; then
      if [[ -n $(sed  '/## Piperita Theme ##/,/## End Piperita Theme ##/d' ~/.bashrc) ]]; then
        sed  '/## Piperita Theme ##/,/## End Piperita Theme ##/d' ~/.bashrc >> ~/.bashrc.d/original
        echo "Your original ~/.bashrc has been moved to ~/.bashrc.d/original"
      fi
    fi
    if [ -e "$DIR/Bash/.bashrc" ]; then
      cp "$DIR/Bash/.bashrc" ~/.bashrc
      echo "New .bashrc installed"
    else
      echo "Cannot find new .bashrc, install unsuccessful"
    fi
    if [ -e ~/.bash_profile ]; then
      if [[ -n $(sed  '/## Piperita Theme ##/,/## End Piperita Theme ##/d' ~/.bash_profile) ]]; then
        sed  '/## Piperita Theme ##/,/## End Piperita Theme ##/d' ~/.bash_profile >> ~/.bashrc.d/original
        echo "Your original ~/.bash_profile has been moved to ~/.bashrc.d/original"
      fi
    fi
    if [ -e "$DIR/Bash/.bash_profile" ]; then
      cp "$DIR/Bash/.bash_profile" ~/.bash_profile
      echo "New .bash_profile installed"
    else
      echo "Cannot find new .bash_profile, install unsuccessful"
    fi
    cp "$DIR/Bash/.bashrc.d/piperita" ~/.bashrc.d/piperita && echo "Piperita base installed"
  else
    cat "$DIR/Bash/.bashrc.d/piperita" >> ~/.bashrc
  fi
else
  echo "Cannot find piperita file, bowing out!"
  exit 1
fi


##Optionals

#git
if [ -e "$DIR/Additional/git/.gitconfig" ]; then
    cat "$DIR/Additional/git/.gitconfig" >> ~/.gitconfig
    echo "git config installed"
else
  echo "Cannot find git config to install!"
fi

#grep
if [ -e "$DIR/Additional/grep/grep" ]; then
  if [ $USE_DOT_D = true ]; then
    cp "$DIR/Additional/grep/grep" ~/.bashrc.d/grep
  else
    cat "$DIR/Additional/grep/grep" >> ~/.bashrc
  fi
  echo "grep config installed"
else
  echo "Cannot find grep config to install!"
fi

#ls
if [ -e "$DIR/Additional/ls/ls" ]; then
  if [ $USE_DOT_D = true ]; then
    cp "$DIR/Additional/ls/ls" ~/.bashrc.d/ls
  else
    cat "$DIR/Additional/ls/ls" >> ~/.bashrc
  fi
  echo "ls config installed"
else
  echo "Cannot find ls config to install!"
fi

#man
if [ -e "$DIR/Additional/man/man" ]; then
  if [ $USE_DOT_D = true ]; then
    cp "$DIR/Additional/man/man" ~/.bashrc.d/man
  else
    cat "$DIR/Additional/man/man" >> ~/.bashrc
  fi
  echo "man config installed"
else
  echo "Cannot find man config to install!"
fi

#git
if [ -e "$DIR/Additional/vim/.vimrc" ]; then
    cat "$DIR/Additional/vim/.vimrc" >> ~/.vimrc
    echo "vim config installed"
else
  echo "Cannot find vim config to install!"
fi
