#!/bin/bash

cat >/etc/yum.repos.d/cm.repo <<EOF
[cm]
name=CM Repo
baseurl=http://services-vm.dev/cm/5.1.0/
gpgcheck=0
enabled=1

[gazzang]
name=CM Repo
baseurl=http://services-vm.dev/gazzang/
gpgcheck=0
enabled=1
EOF
