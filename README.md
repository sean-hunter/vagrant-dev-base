# vagrant-dev-base

This project sets up a vagrant image with a base dev environment that should work ok.

## Just give me the summary

To use, install Vagrant and VirtualBox on your computer, clone this dev env, then

```
vagrant up
```

...then fire up your IDE in your host environment and get hacking!  If your
vagrantfile is set up correctly, the relevant folders should be synced between
your host and the "guest" (Vagrant VM) running the stack.

## How do I install?

## On Linux

On Linux, you need to clone `sean-hunter/ansible-setup` and run it.

```
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible
git clone https://github.com/sean-hunter/ansible-setup.git /tmp/ansible-setup
cd /tmp/ansible-setup
sudo ansible-playbook setup.yml
```

This has the side-effect of given you a decent basic setup on your Linux box also

### Mac

```
brew cask install virtualbox
brew cask install vagrant
brew cask install vagrant-manager
vagrant plugin install vagrant-reload
```

I needed (on mac) to download and install the virtualbox extensions from http://download.virtualbox.org/virtualbox/5.2.8/Oracle_VM_VirtualBox_Extension_Pack-5.2.8.vbox-extpack .  To install the extensions you need to click on stuff.  You can find out how [here](https://www.swtestacademy.com/quick-start-vagrant-windows-10/) (except that you need to use the 5.2.8 package I have linked rather than the one they specify)

### Windows

If you don't have git bash, you'll need it.  Ask the helpdesk to install Vagrant and Virtualbox 5.2.8. If you have been using docker on windows you will have Hyper-V turned on.  Sadly this is incompatible virtualbox, you (or the helpdesk) will need to turn it off.  There are instructions [here](https://derekgusoff.wordpress.com/2012/09/05/run-hyper-v-and-virtualbox-on-the-same-machine/) which claim to let you have Hyper-V and virtualbox.  I don't know if that works.

You need to install the virtualbox extensions from http://download.virtualbox.org/virtualbox/5.2.8/Oracle_VM_VirtualBox_Extension_Pack-5.2.8.vbox-extpack .  To install the extensions you need to click on stuff.  You can find out how [here](https://www.swtestacademy.com/quick-start-vagrant-windows-10/) (except that you need to use the 5.2.8 package I have linked rather than the one they specify).

Open a git-bash and type `vagrant plugin install vagrant-reload` . You're now good to go.


## FAQs

## What is Vagrant and why would we use it?

Vagrant is a tool which implements a simple standardised workflow for creating,
destroying and using VMs.  It's particularly suited for creating standardised
development and testing environments.

## How should I use Vagrant for development?

There are quite a lot of these on the web if you look, but for example, try [this one](http://www.codehenge.net/2013/02/automate-your-development-environment-with-vagrant/)

## What's the difference between Docker and Vagrant?

Docker is a containerization technology.  It is designed to run some process
(ideally a single logical process) in a standardized namespace.  As such, it's
mainly targetted at solving problems of deployment.

Vagrant is a technology designed to simplify the creation and management of
standardized virtual machines.  As such it's really great for creating
development/testing environments.  If you've ever suffered from the "It works
on my machine!" problem, then Vagrant may be for you.
