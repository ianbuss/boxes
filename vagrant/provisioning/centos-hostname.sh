#!/bin/bash

hn=$1
hnalias=${hn%%.*.dev}
ip=$2

echo "Writing /etc/hosts"
cat >/etc/hosts <<EOF
127.0.0.1     localhost localhost.localdomain localhost4 localhost4.localdomain4
::1           localhost localhost.localdomain localhost6 localhost6.localdomain6
${ip} ${hn} ${hnalias}
EOF

echo "Setting hostname"
hostname ${hn}
