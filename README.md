# Readme file for vagrant_ansible_ssh_key
# mgmt as a manager box 
# web1 and web2 as the real boxes
# Steps to install 

step 1 : copy the files to the local directory
step 2 : spin up the vargrant boxes using the command "vagrant up"
step 3 : the vagrantfile uses the bootstrap-mgmt.sh file to install ansible into the mgmt box. Also adds the ip addresses to the hosts file of mgmt box
step 4 : copy inventory.ini file to the mgmt box - home path
step 5 : add folling lines to the mgmt box in the folder /etc/ansible/ansible.cfg -- hostfile=/home/vagrant/inventory.ini
step 6 : update the known_hosts file in .ssh folder inside mgmt box using the command below
	ssh-keyscan web1 web2 >> .ssh/known_hosts

step 7 : check the connection to the web1 and web2 are working file by using the below command - run inside mgmt box
	ansible web1 -m ping --ask-pass
	
stpe 8 : To make a password less connection from mgmt to web1 and web2 use the below command
	ssh-keygen -t rsa

step 9 : copy ssh-addkey.yml file to mgmt and run the below command
	ansible-playbook ssh-addkey.yml --ask-pass

step 10: To check all works well, do the below command
	ansible-playbook ssh-addkey.yml

		

