#!/bin/bash

sudo cat /var/lib/rancher/conf/cloud-config.yml > ./cloud-config_backup.yml
sudo wget --no-check-certificate "https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub"
sudo ros config set rancher.docker.tls true
sudo ros config set rancher.network.dns.nameservers "['8.8.8.8','8.8.4.4']"
sudo ros config set ssh_authorized_keys ["`(cat vagrant.pub)`"]

