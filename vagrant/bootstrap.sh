#!/usr/bin/env bash
sudo apt-get update
apt-get install apache2
sudo apt-get install -y -f --force-yes vim  wget curl htop telnet rsync lynx unzip
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password hihihi'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password hihihi'
sudo apt-get install -y -f --force-yes mysql-server
sudo apt-get install -y -f --force-yes apache2-mpm-prefork

sudo apt-get install -y -f --force-yes php5
sudo service apache2 restart
curl --silent --location https://deb.nodesource.com/setup_0.12 | bash -
sudo apt-get install --yes nodejs npm

