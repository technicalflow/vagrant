### Welcome to my small collection of vagrant environments :)
<br>
<b>ansible</b> - Ansible configuration for provisioning all the environments <br>
<b>centos7</b> - Provisioned Centos 7 with nginx<br>
<b>centos8</b> - Provisioned Centos 8 clean image with epel repository<br>
<b>centosprivx</b> - Fully automated PrivX installation on Centos 7<br>
<b>debian</b> - Provisioned clean and fast Debian 11 environment<br>
<b>debian11awx</b> - Fully automated AWX 17.1 installation on Debian 11<br>
<b>dockeransible</b> - Fully automated installation of Docker using Ansible on three Ubuntu 18.04 nodes (without a Swarm mode)<br>
<b>dockerswarm</b> - Fully automated installation of Docker on three Ubuntu 18.04 nodes with Swarm mode<br>
<b>freebsd</b> - Provisioned clean and fast FreeBSD 12<br>
<s><b>kubernetes</b> - Fully automated installation of three node K8S 1.19.1 Cluster using Ansible based on Ubuntu 18.04   // currently not working</s><br> 
<b>lxd</b> - Installation of the latest LXD on two Ubuntu 20.04 nodes<br>
<b>oracle</b> - Oracle Linux 8 with podman container environment<br>
<b>ubuntu</b> - Provisioned clean and fast Ubuntu 20.04<br>
<b>vboxga</b> - Old VirtualBox additions<br>
<br>
Notes:<br>
    * Requirements: Virtualbox, Vagrant, Ansible <br>
    * All environments tested on Ubuntu Linux and MacOS Ventura with Virtualbox 7<br>
    * Recommending installing Virtualbox Additions Vagrant plugin: 
     <i>vagrant plugin install vagrant-vbguest</i><br>
     and enabling option:  <i>i.vbguest.auto_update = true </i> to auto update guest additions
