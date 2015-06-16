# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.ssh.forward_agent = true

  config.vm.box = "ubuntu/trusty64"
  config.vm.box_url = "https://vagrantcloud.com/ubuntu/boxes/trusty64/versions/14.04/providers/virtualbox.box"

  config.vm.hostname = "dev.local"

  config.vm.network :private_network, ip: "192.168.1.100"

  # SSH
  #config.vm.network "forwarded_port", guest: 22, host: 22

  # HTTP
  #config.vm.network "forwarded_port", guest: 80, host: 80

  # HTTPS
  #config.vm.network "forwarded_port", guest: 443, host: 443

  # MYSQL
  #config.vm.network "forwarded_port", guest: 3306, host: 3307

  # XDEBUG
  #config.vm.network "forwarded_port", guest: 9000, host: 9000

  # Additional synced folder, optional.
  #config.vm.synced_folder "/home/emtii/Workspace/", "/var/www/"

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = false

    # Customize the amount of memory on the VM:
    vb.memory = "1024"
  end
  
  config.vm.provision :shell do |sh|
     sh.keep_color = true
     sh.privileged = false
     sh.path = "provision.sh"
  end

end
