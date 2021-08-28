#!/bin/bash

# sleep until instance is ready
until [[ -f /var/lib/cloud/instance/boot-finished ]]; do
  sleep 1
done

# install nginx
# apt-get update
apt install apache2

# make sure nginx is started
apt start apache2
