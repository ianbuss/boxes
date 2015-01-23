#!/bin/bash

hn=$1

echo "Setting hostname to ${hn}"
hostname ${hn}
sed -i -E "s/^HOSTNAME=.*/HOSTNAME=${hn}/" /etc/sysconfig/network

echo "Setting /etc/hosts"
sudo cp /tmp/hosts /etc/hosts
