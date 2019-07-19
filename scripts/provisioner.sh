#!/usr/bin/env bash

echo -e "\nUpdating full system...\n"
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get auto-remove -y

echo -e "\nInstalling Apache 2 server...\n"
sudo apt install apache2

echo -e "\nInstalling PHP5.6...\n"
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install -y php5.6

echo -e "\nInstalling Composer...\n"
sudo apt-get install -y curl
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

echo -e "\nInstalling MySql...\n"
sudo apt-get -y install mysql-server
sudo service mysql restart
cat >> /etc/bash.bashrc <<- "EOF"
# Add project binraies in executable path
export PATH=$PATH:/vagrant/bin
EOF

