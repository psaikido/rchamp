#!/bin/bash

# https://ostechnix.com/install-apache-mariadb-php-lamp-stack-on-arch-linux-2016/
sudo pacman -S mysql php7 php7-apache phpmyadmin
sudo systemctl enable httpd

# The above php install gives you php version 8 (/usr/bin/php) and a separate version 7 (/usr/bin/php7). I moved 'php' to 'php8' and then 'php7' to 'php'.

yay -S mysql55
sudo systemctl enable mysqld

# sudo setfacl -m "u:http:--x" /home/hughie
# chmod 775 -R ~/sites/chanadmin

# In /etc/httpd/conf/httpd.conf, comment the line:
# LoadModule mpm_event_module modules/mod_mpm_event.so
# and uncomment the line:
# LoadModule mpm_prefork_module modules/mod_mpm_prefork.so
# see https://wiki.archlinux.org/title/Apache_HTTP_Server#PHP
# At the end of the 'LoadModule' list in the same file add:
# LoadModule php7_module modules/libphp7.so
# AddHandler php-script .php

# Place at the end of the include list
# Include conf/extra/php7_module.conf

sudo mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
sudo mysql_secure_installation
# edit /etc/php/php.ini
# uncomment bz2, curl, iconv, mysqli, pdo_mysql
# ALTER USER 'root'@'localhost' IDENTIFIED VIA mysql_native_password USING PASSWORD('root');
# create /etc/httpd/conf/extra/phpmyadmin.conf
#  add
# Alias /phpmyadmin "/usr/share/webapps/phpMyAdmin"
# <Directory "/usr/share/webapps/phpMyAdmin">
#  DirectoryIndex index.php
#  AllowOverride All
#  Options FollowSymlinks
#  Require all granted
# </Directory>

# edit /etc/httpd/conf/httpd.conf
# Include conf/extra/phpmyadmin.conf
sudo systemctl restart httpd

# Add symlinks to sites in /srv/http
