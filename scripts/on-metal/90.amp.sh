#!/bin/bash

#https://ostechnix.com/install-apache-mariadb-php-lamp-stack-on-arch-linux-2016/
sudo pacman -S apache mysql php7 php7-apache phpmyadmin
sudo systemctl enable httpd
sudo systemctl enable mysql

NB: 20221030
This was how it used to be done. Now to get mysql 5.5.62 we have to do it differently.
yay -S mysql55

#sudo setfacl -m "u:http:--x" /home/hughie
#chmod 775 -R ~/sites/chanadmin

#In /etc/httpd/conf/httpd.conf, comment the line:
#LoadModule mpm_event_module modules/mod_mpm_event.so
#and uncomment the line:
#LoadModule mpm_prefork_module modules/mod_mpm_prefork.so
#see https://wiki.archlinux.org/title/Apache_HTTP_Server#PHP
#At the end of the 'LoadModule' list in the same file add:
#LoadModule php_module modules/libphp.so
#LoadModule php7_module modules/libphp7.so
#AddHandler php-script .php

#Place at the end of the include list
#Include conf/extra/php7_module.conf

sudo mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
sudo mysql_secure_installation
#edit /etc/php/php.ini
#uncomment bz2, curl, iconv, mysqli, pdo_mysql
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
