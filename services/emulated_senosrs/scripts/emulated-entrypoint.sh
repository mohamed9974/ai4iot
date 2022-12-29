#!/bin/bash

# Install dependencies
apt-get update
apt-get install -y python3-pip 
pip3 install paho-mqtt

# Download Telegraf
curl -sL https://repos.influxdata.com/influxdb.key | apt-key add -
echo "deb https://repos.influxdata.com/debian buster stable" | tee /etc/apt/sources.list.d/influxdb.list
apt-get update
apt-get install -y telegraf

# Start Telegraf
systemctl start telegraf

# Download and install the emulated sensors
git clone https://github.com/mohamed9974/ai4iot/