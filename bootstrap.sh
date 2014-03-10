#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get -q -y install subversion git-core apache2 memcached \
	php-codesniffer php-doc php5-imagick php5-memcache libapache2-mod-php5 \
	php-pear php5-cli php5-common php5-curl php5-dbg php5-dev php5-gd php5-gmp \
	php5-imap php5-mcrypt php5-mhash php5-mysql php5-sqlite php5-tidy php5-xmlrpc \
	php5-xsl php5-xdebug php-apc php5-memcached openssl\
	pwgen xsltproc mysql-server mysql-client libapache2-mod-auth-mysql lynx
rm -rf /var/www
ln -fs /vagrant/project /var/www

echo 'AddHandler application/x-httpd-php .php' >> /etc/apache2/conf.d/php
