#!/bin/bash

#update libraries
sudo yum update -y

#install java
sudo amazon-linux-extras install java-openjdk11 -y
java -version

#Download jenkins repo
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum upgrade

#Install jenkins
sudo yum install jenkins -y

#restart jenkins
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins
