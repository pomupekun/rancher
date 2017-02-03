#!/bin/bash

cat /var/lib/rancher/conf/cloud-config.yml > ./cloud-config_backup.yml
wget --no-check-certificate "https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub"
ros config set rancher.docker.tls true
ros config set rancher.network.dns.nameservers "['8.8.8.8','8.8.4.4']"
ros config set ssh_authorized_keys `(cat vagrant.pub)`

