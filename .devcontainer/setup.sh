#!/bin/bash

echo ✅ APT GET UPDATE
echo ✅ --------------
sudo apt-get update -y

sudo apt-get install python3.8

echo ✅ Install Jupyter notebook
echo ✅ ------------------------
# Install Jupyter notebook
sudo apt-get install jupyter -y
sudo apt-get clean packages

echo ✅ Install Jupyter Java Kernel
echo ✅ ---------------------------
# Java Kernel
sudo python3 ijava-1.3.0/install.py
sudo apt-get clean packages

echo ✅ Install Jupyter Python kernel
echo ✅ -----------------------------
# Python Kernel
sudo apt-get install python3-pymongo -y
sudo apt-get clean packages

# Dotnet Kernel
sudo dotnet tool install -g Microsoft.dotnet-interactive
sudo dotnet interactive jupyter install

echo ✅ Install Deno
echo ✅ ------------
# Install deno - Nodejs modern engine
sudo apt-get install npm -y
sudo npm install -g deno
export PATH="$PATH:/home/vscode/lib/node_modules/deno"
sudo apt-get clean packages

echo ✅ Install Deno Jupyter Kernel
echo ✅ ---------------------------
deno jupyter --install

echo ✅ Install MongoDB Deno Driver
echo ✅ ---------------------------
# Install MongoDB Deno driver
sudo deno install --global --allow-net --allow-read https://deno.land/x/mongo@v0.31.1/mod.ts


echo ✅ Install Node.js v23 
echo ✅ ----------------
# Install Node.js 23 as MongoDB MCP server needs at least v20 (https://github.com/mongodb-js/mongodb-mcp-server?tab=readme-ov-file#prerequisites)
sudo npm install -g n
sudo n 23
hash -r 
