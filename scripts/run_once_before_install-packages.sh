#!/bin/bash
sudo apt-get update
sudo apt-get install -y zsh tldr
sudo usermod -s `which zsh` $USER
