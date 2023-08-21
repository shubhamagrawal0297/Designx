#!/bin/bash
apt-get update
apt-get install mysql-server -y
sudo systemctl start mysql.service
apt install vim unzip wget -y
wget https://files.phpmyadmin.net/phpMyAdmin/4.9.11/phpMyAdmin-4.9.11-all-languages.zip
unzip phpMyAdmin-4.9.11-all-languages.zip
mv phpMyAdmin-4.9.11-all-languages phpmyadmin
mv phpmyadmin /var/www/html/
sudo apt-get install software-properties-common
sudo add-apt-repository -y ppa:ondrej/php
sudo apt-get update
sudo apt-get install php7.2 libapache2-mod-php7.2 php7.2-common php7.2-curl php7.2-mbstring php7.2-xmlrpc php7.2-mysql php7.2-gd php7.2-xml php7.2-intl php7.2-ldap php7.2-imagick php7.2-json php7.2-cli
php -v
sudo systemctl restart mysql.service
mysql <<EOF
CREATE USER 'sammy'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'sammy'@'localhost' WITH GRANT OPTION;
SHOW GRANTS FOR 'sammy'@'localhost';
FLUSH PRIVILEGES;
EOF
