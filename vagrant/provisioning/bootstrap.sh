#!/bin/bash

# Set the hostname
hn=$1
echo "Setting hostname to ${hn}"
hostname ${hn}
sed -i -E "s/^HOSTNAME=.*/HOSTNAME=${hn}/" /etc/sysconfig/network

# Install puppet RPM to do the rest of provisioning
echo "Installing puppet labs repo"
curl -o /tmp/puppetlabs-repo.rpm http://yum.puppetlabs.com/el/6/products/x86_64/puppetlabs-release-6-10.noarch.rpm
rpm -ivh /tmp/puppetlabs-repo.rpm
yum -y install puppet
