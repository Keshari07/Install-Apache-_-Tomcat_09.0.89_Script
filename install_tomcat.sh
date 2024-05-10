#!/bin/bash

# Update package index
sudo apt update

# Install default JDK
sudo apt install -y default-jdk

# Set Tomcat version
TOMCAT_VERSION="9.0.89"

# Download Apache Tomcat
wget "https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.89/bin/apache-tomcat-9.0.89.tar.gz"

# Extract the archive
tar -xvf "apache-tomcat-9.0.89.tar.gz"

# Move Tomcat directory to /opt
sudo mv "apache-tomcat-9.0.89.tar.gz" /opt

# Create symbolic link
sudo ln -s "/opt/apache-tomcat-${9.0.89}" /opt/tomcat

# Set environment variables
echo "export CATALINA_HOME=/opt/tomcat" >> ~/.bashrc
echo "export PATH=\$PATH:\$CATALINA_HOME/bin" >> ~/.bashrc
source ~/.bashrc

# Start Apache Tomcat
sudo /opt/tomcat/bin/startup.sh