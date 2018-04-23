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
		if [ -d "~/src/ansible-setup" ] ; then
      cd ~/src/ansible-setup
      git pull
    else
      git clone https://github.com/sean-hunter/ansible-setup.git ~/src/ansible-setup/
      cd ~/src/ansible-setup
    fi
	  sudo ansible-playbook setup.yml
    # Pause to allow the docker daemon to start, then check that docker is working
    sleep 5
    docker run hello-world
    mkdir -p ~/.vim/pack/thirdparty/start
    [ -d "~/.vim/pack/thirdparty/start/vim-sensible" ] || git clone https://github.com/tpope/vim-sensible.git "~/.vim/pack/thirdparty/start/vim-sensible"
    [ ! -f ~/.vim/vimrc ]  && cp /vagrant/vimrc ~/.vim/vimrc
    printf "\n\nDone.  To log in, do 'vagrant ssh'.  Anything in this base dir will be mounted there in /vagrant, and changes will be mirrored both ways\n\nEnjoy the software!\n"
  VAGRANT_SHELL
end
