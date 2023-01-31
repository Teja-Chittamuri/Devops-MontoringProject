#!/bin/bash

# Add the Grafana repository
sudo apt-get install -y apt-transport-https
sudo apt-get install -y software-properties-common wget
wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list

# Update packages
sudo apt-get update

# Install Grafana
sudo apt-get install grafana

# Start Grafana
sudo systemctl start grafana-server

# Enable Grafana to start at boot
sudo systemctl enable grafana-server

