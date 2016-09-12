# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
 %w{
   vag-api
   vag-mysql
   vag-content
 }.each_with_index do |role, i|
  config.vm.define role  do |config|
     config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"
    config.vm.box = "trusty"
    config.vm.provider "virtualbox" do |v|
    config.vm.synced_folder "salt/", "/srv", owner: "root", group: "root"
      v.customize ["modifyvm", :id, "--memory", "256"]
    end
    config.vm.hostname = role

      if role.eql? 'vag-mysql'
        config.vm.network "private_network", ip: "192.168.50.4"
      end
      if role.eql? 'vag-content'
        config.vm.network "private_network", ip: "192.168.50.5"
      end
      if role.eql? 'vag-api'      
        config.vm.network "private_network", ip: "192.168.50.6"
      end

    config.vm.provision :salt do |config|

      config.minion_config = "salt/salt-configs/minion_vagrant"
      config.minion_key = "salt/salt-keys/minion2.pem"
      config.minion_pub = "salt/salt-keys/minion2.pub"

      config.run_highstate = true
      config.install_type = "git"
      config.install_args = "v2015.8.12"
      config.verbose = true
    end
  end
 end  
  config.vm.define "salt-master"  do |config|
    config.vm.box = "trusty"
    config.vm.provider "virtualbox" do |v|
    config.vm.synced_folder "salt/", "/srv", owner: "root", group: "root"
      v.customize ["modifyvm", :id, "--memory", "256"]
    end
    config.vm.hostname = 'salt-master'
    config.vm.network "private_network", ip: "192.168.50.3"
    config.vm.provision :salt do |config|

      config.minion_config = "salt/salt-configs/minion_vagrant"
      config.minion_key = "salt/salt-keys/minion2.pem"
      config.minion_pub = "salt/salt-keys/minion2.pub"

      config.master_key = 'salt/salt-keys/masterkey.pem'
      config.master_pub = 'salt/salt-keys/masterkey.pub'
      config.master_config = "salt/salt-configs/master_vagrant"

      config.install_master = true
      config.run_highstate = false
      config.install_type = "git"
      config.install_args = "v2015.8.12"
      config.verbose = true
    end
  end
end
