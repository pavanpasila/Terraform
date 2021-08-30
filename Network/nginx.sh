#!/bin/bash

# sleep until instance is ready
until [[ -f /var/lib/cloud/instance/boot-finished ]]; do
  sleep 1
done

# install apache
apt update -y
apt install apache2 -y

# make sure nginx is started
service apache2 start
