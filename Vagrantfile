# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.


#Jenkins-box configuration

  config.vm.define "jenkin_server" do |jenkin_server|
    jenkin_server.vm.box = "centos/7"
    jenkin_server.vm.network "private_network", ip: "192.168.33.8"
    jenkin_server.vm.network "public_network", bridge: "en0: Wi-Fi (AirPort)"
    #jenkin_server.ssh.username = "vagrant"
    #jenkin_server.ssh.password = "vagrant"
    config.vm.provider "virtualbox" do |jenkin_server|
      jenkin_server.memory = 1048
      jenkin_server.cpus = 1
    end
    config.vm.provision "shell", inline: <<-SHELL
       yum update all
       yum install -y python
     SHELL
  end

#Jenkins-box configuration presentation



  config.vm.define "jenkin_server1" do |jenkin_server1|
    jenkin_server1.vm.box = "centos/7"
    jenkin_server1.vm.network "private_network", ip: "192.168.33.9"
    jenkin_server1.vm.network "public_network", bridge: "en0: Wi-Fi (AirPort)"
    #jenkin_server1.ssh.username = "vagrant"
    #jenkin_server1.ssh.password = "vagrant"
    config.vm.provider "virtualbox" do |jenkin_server1|
      jenkin_server1.memory = 1048
      jenkin_server1.cpus = 1
    end
    config.vm.provision "shell", inline: <<-SHELL
       yum update all
      # yum install -y python
     SHELL
  end
end
