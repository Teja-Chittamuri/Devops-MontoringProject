#!/bin/bash

# Update the system
sudo apt-get update

# Install Prometheus
wget https://github.com/prometheus/prometheus/releases/download/v2.22.0/prometheus-2.22.0.linux-amd64.tar.gz
tar -xvzf prometheus-2.22.0.linux-amd64.tar.gz
sudo mv prometheus-2.22.0.linux-amd64 /usr/local/prometheus

# Create Prometheus configuration file
sudo echo "
global:
  scrape_interval:     15s # Set the scrape interval to 15 seconds.
  evaluation_interval: 15s # Evaluate rules every 15 seconds.
  scrape_timeout:      10s # Timeout after 10 seconds.

rule_files:
  # - "first.rules"
  # - "second.rules"

scrape_configs:
  - job_name: prometheus
    static_configs:
      - targets: ['localhost:9090']
" > /usr/local/prometheus/prometheus.yml

# Start Prometheus as a background service
sudo nohup /usr/local/prometheus/prometheus --config.file=/usr/local/prometheus/prometheus.yml &

