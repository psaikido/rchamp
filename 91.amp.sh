#!/bin/bash

#https://ostechnix.com/install-apache-mariadb-php-lamp-stack-on-arch-linux-2016/
sudo pacman -S apache php php-apache

#sudo setfacl -m "u:http:--x" /home/hughie
#chmod 775 -R ~/public_html

#In /etc/httpd/conf/httpd.conf, comment the line:
#LoadModule mpm_event_module modules/mod_mpm_event.so
#and uncomment the line:
#LoadModule mpm_prefork_module modules/mod_mpm_prefork.so
#see https://wiki.archlinux.org/title/Apache_HTTP_Server#PHP
#At the end of the 'LoadModule' list in the same file add:
#LoadModule php_module modules/libphp.so
#AddHandler php-script .php

#Place at the end of the include list
#Include conf/extra/php_module.conf

sudo pacman -S mysql

sudo pacman -S php7-apache
sudo mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
sudo mysql_secure_installation
sudo pacman -S phpmyadmin
#edit /etc/php/php.ini
#uncomment bz2, curl, iconf, mysqli, pdo_mysql
#ALTER USER 'root'@'localhost' IDENTIFIED VIA mysql_native_password USING PASSWORD('root');
#create /etc/httpd/conf/extra/phpmyadmin.conf
# add
#Alias /phpmyadmin "/usr/share/webapps/phpMyAdmin"
# <Directory "/usr/share/webapps/phpMyAdmin">
#  DirectoryIndex index.php
#  AllowOverride All
#  Options FollowSymlinks
#  Require all granted
# </Directory>

#edit /etc/httd/conf/httpd.conf
#Include conf/extra/phpmyadmin.conf
sudo systemctl restart httpd
