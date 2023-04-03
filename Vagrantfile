Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.provider :virtualbox do |vb|
      vb.name = "jenkins"
      vb.memory = "2048"

  end
  config.vm.provision "shell" do |s|
    s.path = "jenkins.sh"
  end
end
