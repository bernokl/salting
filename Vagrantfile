# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
 %w{
   salt-master
   api
   content
   mysql
 }.each_with_index do |role, i|
  config.vm.define role  do |config|
    config.vm.box = "trusty"
    config.vm.provider "virtualbox" do |v|
    config.vm.synced_folder "salt/", "/srv", owner: "root", group: "root"
      v.customize ["modifyvm", :id, "--memory", "256"]
    end
    config.vm.hostname = role
    config.vm.provision :salt do |config|

      if role.eql? 'mysql' 
	config.minion_config = "salt/salt-configs/minion_mysql"
      else
        config.minion_config = "salt/salt-configs/minion"
      end
      config.minion_key = "salt/salt-keys/minion2.pem"
      config.minion_pub = "salt/salt-keys/minion2.pub"

      config.run_highstate = true
      config.install_type = "git"
      config.install_args = "v2014.1.5"
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

      config.minion_config = "salt/salt-configs/minion"
      config.minion_key = "salt/salt-keys/minion2.pem"
      config.minion_pub = "salt/salt-keys/minion2.pub"

      config.master_key = 'salt/salt-keys/configkey.pem'
      config.master_pub = 'salt/salt-keys/configkey.pub'
      config.master_config = "salt/salt-configs/master"

      config.install_master = true
      config.run_highstate = false
      config.install_type = "git"
      config.install_args = "v2014.1.5"
      config.verbose = true
    end
  end
end
