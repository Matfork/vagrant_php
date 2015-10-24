# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname="v-matfork"
  config.vm.box_check_update = false

  config.vm.network "forwarded_port", guest: 80,   host: 50001, autocomplete:true
  config.vm.network "forwarded_port", guest: 3306, host: 50002, autocomplete:true

  config.vm.network "private_network", ip: "10.0.0.2"
  config.vm.network "public_network", bridge: "wlan0"

  config.vm.synced_folder ".", "/data", :nfs => true

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = false
    vb.name="v_ubuntu_php"
  
    # Customize the amount of memory on the VM:
    vb.memory = "1024"
  end

  config.vm.provision "shell", path: "bash_files/init.sh"

end
