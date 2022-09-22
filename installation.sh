#!/bin/bash

#update libraries
sudo yum -y update

#install java
sudo yum install java-1.8.0-openjdk -y
java -version

#install tomcat
sudo yum install tomcat -y
sudo yum install tomcat-webapps tomcat-admin-webapps -y
sudo yum install tomcat-docs-webapp tomcat-javadocs -y

#restart tomcat
sudo systemctl status tomcat
sudo systemctl restart tomcat