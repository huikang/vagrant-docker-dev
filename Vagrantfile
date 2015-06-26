# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.define "docker_dev" do |docker_dev|
    docker_dev.vm.provision :shell, path: "docker_dev_bootstrap.sh"
    docker_dev.vm.box = "ubuntu/trusty64"
    docker_dev.vm.host_name = "docker-dev1.com"
    docker_dev.vm.network "private_network", ip: "192.168.11.104"
    docker_dev.vm.provider "virtualbox" do |v|
      v.memory = 4096
      v.cpus = 4
      v.customize ["modifyvm", :id, "--nicpromisc1", "allow-all", "--nicpromisc2", "allow-all"]
    end

    config.vm.synced_folder "tools", "/root/tools"

  end

end
