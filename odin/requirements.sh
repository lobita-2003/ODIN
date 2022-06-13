#!/bin/bash

sudo apt-get update && apt-get upgrade -y
sudo apt-get install curl
sudo apt-get install jq
sudo apt-get install host
sudo apt-get install net-tools
sudo apt-get install nmap
sleep 3
bash odin.sh
