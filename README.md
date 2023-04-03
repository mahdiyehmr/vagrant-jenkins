# Vagrant Jenkins
Simple vagrant file for testing jenkins
## Prerequisites
- [Vagrant](https://www.vagrantup.com/Downloads)
- [Virtualbox](https://www.virtualbox.org/wiki/Downloads)
## Install
Cloning the repo
```
git clone https://github.com/edinc/vagrant-jenkins.git
cd vagrant-jenkins
```
Build the vagrant file
```
vagrant up
```
Accessing the Jenkins Server
```
http://localhost:8080
```
## First time accessing Jenkins
After building the vagrant file we print the primary password which you need for logging to Jenkins Server for the first time.
If you forgot it, you can find the password with below command.
```
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```
