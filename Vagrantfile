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

  config.vm.define "docker_test_1" do |docker_test_1|
    docker_test_1.vm.provision :shell, path: "docker_dev_bootstrap.sh"
    docker_test_1.vm.box = "ubuntu/trusty64"
    docker_test_1.vm.host_name = "docker-test-1.com"
    docker_test_1.vm.network "private_network", ip: "192.168.11.105"
    docker_test_1.vm.provider "virtualbox" do |v|
      v.memory = 4096
      v.cpus = 4
      v.customize ["modifyvm", :id, "--nicpromisc1", "allow-all", "--nicpromisc2", "allow-all"]
    end

    config.vm.synced_folder "tools", "/root/tools"
  end

  config.vm.define "docker_test_2" do |docker_test_2|
    docker_test_2.vm.provision :shell, path: "docker_dev_bootstrap.sh"
    docker_test_2.vm.box = "ubuntu/trusty64"
    docker_test_2.vm.host_name = "docker-test-2.com"
    docker_test_2.vm.network "private_network", ip: "192.168.11.106"
    docker_test_2.vm.provider "virtualbox" do |v|
      v.memory = 4096
      v.cpus = 4
      v.customize ["modifyvm", :id, "--nicpromisc1", "allow-all", "--nicpromisc2", "allow-all"]
    end

    config.vm.synced_folder "tools", "/root/tools"
  end

  config.vm.define "docker_demo_1" do |docker_demo_1|
    # docker_demo_1.vm.provision :shell, path: "docker_dev_bootstrap.sh"
    docker_demo_1.vm.box = "ubuntu/trusty64"
    docker_demo_1.vm.host_name = "docker-demo-1.com"
    docker_demo_1.vm.network "private_network", ip: "192.168.11.107"
    docker_demo_1.vm.provider "virtualbox" do |v|
      v.memory = 4096
      v.cpus = 4
      v.customize ["modifyvm", :id, "--nicpromisc1", "allow-all", "--nicpromisc2", "allow-all"]
    end

    config.vm.synced_folder "tools", "/root/tools"
  end

  config.vm.define "docker_demo_2" do |docker_demo_2|
    # docker_test_2.vm.provision :shell, path: "docker_dev_bootstrap.sh"
    docker_demo_2.vm.box = "ubuntu/trusty64"
    docker_demo_2.vm.host_name = "docker-demo-2.com"
    docker_demo_2.vm.network "private_network", ip: "192.168.11.108"
    docker_demo_2.vm.provider "virtualbox" do |v|
      v.memory = 4096
      v.cpus = 4
      v.customize ["modifyvm", :id, "--nicpromisc1", "allow-all", "--nicpromisc2", "allow-all"]
    end

    config.vm.synced_folder "tools", "/root/tools"
  end

  config.vm.define "docker_centos_1" do |docker_centos_1|
      docker_centos_1.vm.box = "chef/centos-7.0"
      docker_centos_1.vm.host_name = "docker-centos-1.com"
      docker_centos_1.vm.network "private_network", ip: "192.168.11.109"
      docker_centos_1.vm.provider "virtualbox" do |v|
        v.memory = 4096
        v.cpus = 4
        v.customize ["modifyvm", :id, "--nicpromisc1", "allow-all", "--nicpromisc2", "allow-all"]
      end
      config.vm.synced_folder "tools", "/root/tools"
    end
end
