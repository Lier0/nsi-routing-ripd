# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "bento/ubuntu-20.04"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # NOTE: This will enable public access to the opened port
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine and only allow access
  # via 127.0.0.1 to disable public access
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
    vb.memory = "512"
  end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  config.vm.define "ubuntu-ripd1" do |node|
    node.vm.hostname = "ubuntu-ripd1"
    node.vm.network "private_network", ip: "192.168.60.1", netmask: "255.255.255.0", virtualbox__intnet: "60" ### SRC
    node.vm.network "private_network", ip: "192.168.72.1", netmask: "255.255.255.0", virtualbox__intnet: "72" #12
    node.vm.network "private_network", ip: "192.168.73.1", netmask: "255.255.255.0", virtualbox__intnet: "73" #13
  end
  config.vm.define "ubuntu-ripd2" do |node|
    node.vm.hostname = "ubuntu-ripd2"
    node.vm.network "private_network", ip: "192.168.72.2", netmask: "255.255.255.0", virtualbox__intnet: "72" #12
    node.vm.network "private_network", ip: "192.168.83.2", netmask: "255.255.255.0", virtualbox__intnet: "83" #23
    node.vm.network "private_network", ip: "192.168.84.2", netmask: "255.255.255.0", virtualbox__intnet: "84" #24
  end
  config.vm.define "ubuntu-ripd3" do |node|
    node.vm.hostname = "ubuntu-ripd3"
    node.vm.network "private_network", ip: "192.168.73.3", netmask: "255.255.255.0", virtualbox__intnet: "73" #13
    node.vm.network "private_network", ip: "192.168.83.3", netmask: "255.255.255.0", virtualbox__intnet: "83" #23
    node.vm.network "private_network", ip: "192.168.94.3", netmask: "255.255.255.0", virtualbox__intnet: "94" #34
  end
  config.vm.define "ubuntu-ripd4" do |node|
    node.vm.hostname = "ubuntu-ripd4"
    node.vm.network "private_network", ip: "192.168.84.4", netmask: "255.255.255.0", virtualbox__intnet: "84" #24
    node.vm.network "private_network", ip: "192.168.94.4", netmask: "255.255.255.0", virtualbox__intnet: "94" #34
    node.vm.network "private_network", ip: "192.168.64.4", netmask: "255.255.255.0", virtualbox__intnet: "64" ### DST
  end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Ansible, Chef, Docker, Puppet and Salt are also available. Please see the
  # documentation for more information about their specific syntax and use.
  config.vm.provision :shell, :path => "setup.sh"
end
