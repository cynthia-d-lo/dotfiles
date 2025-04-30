#!/bin/bash
sudo apt-get update
sudo apt-get install -y zsh tldr fish
sudo usermod -s `which zsh` $USER
