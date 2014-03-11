#!/bin/bash
sudo locale-gen de_DE.UTF-8
export LANG=de_DE.UTF-8

echo "deb http://ppa.launchpad.net/ondrej/php5/ubuntu saucy main 
deb-src http://ppa.launchpad.net/ondrej/php5/ubuntu saucy main " | sudo tee -a /etc/apt/sources.list

sudo apt-get update
sudo apt-get upgrade

sudo apt-get -y install subversion git-core apache2 memcached \
php-codesniffer php-doc php5-imagick php5-memcache libapache2-mod-php5 \
php-pear php5-cli php5-common php5-curl php5-dbg php5-dev php5-gd php5-gmp \
php5-imap php5-mcrypt php5-mhash php5-mysql php5-sqlite php5-tidy php5-xmlrpc \
php5-xsl php5-xdebug php-apc php5-memcached mysql-server mysql-client \
pwgen xsltproc vim linux-headers-$(uname -r) build-essential 


sudo mkdir -p /vagrant/project
sudo rm -rf /var/www
sudo ln -fs /vagrant/project /var/www
