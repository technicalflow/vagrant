sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
sudo echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu bionic main" | sudo tee /etc/apt/sources.list.d/ansible.list
sudo apt update -y
sudo mkdir /awx
sudo apt install -y ansible
# sudo apt install -y docker-compose
sudo apt install -y npm nodejs
sudo apt install -y python3-pip git pwgen vim python3-docker
sudo npm install npm --global
sudo pip3 install requests==2.14.2
sudo update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 2
sudo pip3 install docker-compose==1.24.1

sudo curl https://codeload.github.com/ansible/awx/zip/refs/tags/17.1.0 --output /tmp/awx.zip
sudo unzip /tmp/awx.zip -d /tmp/
sudo mv /tmp/awx-17.1.0 /tmp/awx

#sudo git clone --depth 50 https://codeload.github.com/ansible/awx/zip/refs/tags/17.1.0 /tmp/awx
# cd /tmp/awx/installer/
cd /tmp/awx
sudo cp -f /vagrant/inventory /tmp/awx/installer/inventory
# pwgen -N 1 -s 64
# nano inventory
sudo ansible-playbook -i /tmp/awx/installer/inventory /tmp/awx/installer/install.yml
