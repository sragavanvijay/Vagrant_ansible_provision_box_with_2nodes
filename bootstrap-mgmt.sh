#!/usr/bin/env bash

# install ansible (http://docs.ansible.com/intro_installation.html)
apt-get -y install software-properties-common
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get -y install ansible

# copy examples into /home/vagrant (from inside the mgmt node)
#cp -a /vagrant/* /home/vagrant
#chown -R vagrant:vagrant /home/vagrant
#chown vagrant hosts
chmod 777 /etc/hosts

# configure hosts file for our internal network defined by Vagrantfile

cat >> /etc/hosts <<EOL
# vagrant environment nodes
10.0.15.10 mgmt
10.0.15.21 web1
10.0.15.22 web2
EOL
