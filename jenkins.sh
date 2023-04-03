#!/bin/bash
# add jenkings debian repo key
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'

# updating apt
sudo apt update -y
sudo apt upgrade -y

# install prequisites
sudo apt install -y fontconfig ca-certificates 

# install jdk
sudo apt install -y openjdk-11-jdk openjdk-11-jre

# add java environment variables
echo "JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64" >> /etc/environment
echo "JRE_HOME=/usr/lib/jvm/java-11-openjdk-amd64/jre" >> /etc/environment
source /etc/environment

# intstall jenkins
sudo apt install -y jenkins

# echo primary password
echo "The primary password is:"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
