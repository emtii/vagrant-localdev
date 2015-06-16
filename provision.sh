#!/bin/bash

# In a breakfast what is the difference between the chicken and the pig? The pig is commited and the chicken is involved.

PREFIX="EmtiiVagrantBox >> "


# update pre-installed packages first
echo $PREFIX "Update Pre-Installed Packages first"
apt-get update && apt-get upgrade

# Build Essentials
echo $PREFIX "Install Build-Essentials ToFrodos"
apt-get -y -qq install build-essential tofrodos

# MySQL Server
echo $PREFIX "Install MySQL Server"
apt-get -y -qq install mysql-server

# MySQL => set max allowed packet = 128M
sed '-i.bak' -e 's:max_allowed_packet\s*=\s*[0-9]*M:max_allowed_packet = 128M:g' /etc/mysql/my.cnf
service mysql restart

# Apache 2
echo $PREFIX "Install Apache 2"
apt-get -y -qq install apache2

# PHP
echo $PREFIX "Install PHP"
apt-get -y -qq install libapache2-mod-php5 php5 php-apc php5-cli php5-curl php5-gd php5-imagick php5-imap php5-ldap php5-mcrypt php5-memcache php5-memcached php5-mysql php5-pgsql php5-snmp php5-sqlite php5-svn php5-tidy php5-xmlrpc php5-xsl

# Mods & restart
echo $PREFIX "Enable mods and restart service"
a2enmod authnz_ldap proxy proxy_http rewrite 
service apache2 restart

