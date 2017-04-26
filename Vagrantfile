# Defines our Vagrant environment
#
# -*- mode: ruby -*-
# vi: set ft=ruby :
# The below script creates a manager node (mgmt) and other nodes (web1, web2).
 

Vagrant.configure("2") do |config|

  # create mgmt node
config.vm.define :mgmt do |mgmt_config|
      mgmt_config.vm.box = "ubuntu/trusty64"
      mgmt_config.vm.hostname = "mgmt"
      mgmt_config.vm.network :private_network, ip: "10.0.15.10"
      mgmt_config.vm.provider "virtualbox" do |vb|
        vb.memory = "256"
      end
      mgmt_config.vm.provision :shell, path: "bootstrap-mgmt.sh"
  end

  # create some web servers
  # https://docs.vagrantup.com/v2/vagrantfile/tips.html
 
    config.vm.define :web1 do |node|
        node.vm.box = "ubuntu/trusty64"
        node.vm.hostname = "web1"
        node.vm.network :private_network, ip: "10.0.15.21"
        node.vm.network "forwarded_port", guest: 80, host: "8081"
        node.vm.provider "virtualbox" do |vb|
          vb.memory = "256"
        end
    end

#--second node
   config.vm.define :web2 do |node|
        node.vm.box = "ubuntu/trusty64"
        node.vm.hostname = "web2"
        node.vm.network :private_network, ip: "10.0.15.22"
        node.vm.network "forwarded_port", guest: 80, host: "8082"
        node.vm.provider "virtualbox" do |vb|
          vb.memory = "256"
        end
    end

end
