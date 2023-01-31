
#!/bin/bash

# Download and install Node Exporter
wget https://github.com/prometheus/node_exporter/releases/download/v1.0.0-rc.0/node_exporter-1.0.0-rc.0.linux-amd64.tar.gz
tar -xvzf node_exporter-1.0.0-rc.0.linux-amd64.tar.gz
cd node_exporter-1.0.0-rc.0.linux-amd64
sudo cp node_exporter /usr/local/bin/

# Create a service file for Node Exporter
sudo vim /etc/systemd/system/node_exporter.service

# Add the following to the Node Exporter service file:

[Unit]
Description=Node Exporter

[Service]
User=root
ExecStart=/usr/local/bin/node_exporter

[Install]
WantedBy=multi-user.target

# Start Node Exporter service
sudo systemctl start node_exporter

# Enable Node Exporter to start at boot
sudo systemctl enable node_exporter
