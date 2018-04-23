# -*- mode: ruby -*-
# vi: set ft=ruby sw=2 ts=2 et:
# 
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.memory = "1024"
  end


  config.vm.provision "shell", privileged: false, inline: <<-VAGRANT_SHELL
		sudo apt-get install software-properties-common
		sudo apt-add-repository ppa:ansible/ansible
		sudo apt-get update
		sudo apt-get install -y ansible

		mkdir -p ~/src
    cd ~/src
		git clone https://github.com/sean-hunter/ansible-setup.git
		cd ansible-setup
	  sudo ansible-playbook setup.yml
    mkdir -p ~/.vim/pack/thirdparty/start
    cd ~/.vim/pack/thirdparty/start
    [ -d vim-sensible ] || git clone https://github.com/tpope/vim-sensible.git
    [ ! -f ~/.vim/vimrc ]  && cp /vagrant/vimrc ~/.vim/vimrc
    printf "\n\nDone.  To log in, do 'vagrant ssh'.  Anything in this base dir will be mounted there in /vagrant, and changes will be mirrored both ways\n\nEnjoy the software!\n"
  VAGRANT_SHELL
end
