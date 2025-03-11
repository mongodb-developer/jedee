#!/bin/bash
sudo apt-get update -y

# Install Jupyter notebooks
sudo apt-get install jupyter -y

# Java Kernel
sudo python3 ijava-1.3.0/install.py

# Python Kernel
sudo apt-get install python3-pymongo -y

# Install deno - Nodejs modern engine
sudo apt-get install npm -y
sudo npm install -g deno
export PATH="$PATH:/home/vscode/lib/node_modules/deno"
deno jupyter --install

# Install MongoDB Deno driver
sudo deno install --global --allow-net --allow-read https://deno.land/x/mongo@v0.31.1/mod.ts