#!/bin/bash

hn=$1
hnalias=$(sed "s/\.dev//" <<< ${hn})
ip=$2

#echo "Setting hostname to ${hn}"
#hostname ${hn}
#sed -i -E "s/^HOSTNAME=.*/HOSTNAME=${hn}/" /etc/sysconfig/network

echo "Writing /etc/hosts"
cat >/etc/hosts <<EOF
127.0.0.1     localhost
${ip} ${hn} ${hnalias}
EOF

echo "Setting hostname"
hostname ${hn}

echo "Writing hostname"
echo ${hn} > /etc/HOSTNAME
