#!/bin/bash
sudo apt-get update
sudo apt-get install -y zsh tldr fish
sudo usermod -s `which zsh` $USER

# Install and configure Git Credential Manager
# This is necessary for authentication to Azure DevOps
GCM_FILE="gcm-linux_amd64.2.6.1.deb"
if [ ! -f /tmp/$GCM_FILE ]; then
    echo "Downloading Git Credential Manager..."
    wget https://github.com/git-ecosystem/git-credential-manager/releases/download/v2.6.1/$GCM_FILE /tmp/$GCM_FILE
else
    echo "Git Credential Manager already downloaded."
fi
sudo dpkg -i /tmp/$GCM_FILE
git-credential-manager configure
