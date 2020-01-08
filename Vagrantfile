Vagrant.configure("2") do |config|
  (1..3).each do |i|
    config.vm.define "es#{i}" do |node|
      node.vm.box = "centos/7"
      node.vm.network :private_network, ip: "10.0.0.1#{i - 1}"
      node.vm.hostname = "es#{i}"
      node.vm.provider "virtualbox" do |vb|
        vb.memory = "2048"
      end
    end
  end

  #config.vm.provision :docker
  #config.vm.provision :docker_compose
  config.vm.provision "shell", inline: <<-SHELL
    sudo yum update
    sudo yum install -y jq git htop java-11-openjdk
  SHELL
end