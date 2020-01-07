Vagrant.configure("2") do |config|
  config.vm.box = "generic/ubuntu1904"
  config.vm.synced_folder "./", "/vagrant"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "4096"
  end

  config.vm.provision :docker
  config.vm.provision :docker_compose
  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get update
	sudo apt-get install -y jq git htop
  SHELL
end