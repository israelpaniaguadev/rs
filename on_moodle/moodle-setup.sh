#!/bin/bash
echo "apt update"
apt-get -y update

echo "install apache2"
apt-get -y install apache2
a2enmod rewrite
systemctl restart apache2

echo "install postgres"
apt-get -y postgres

echo "install php8.2"
apt-get -y php8.2 php8.2-ctype php8.2-curl  php8.2-dom  php8.2-gd  php8.2-iconv  php8.2-intl  php8.2-json  php8.2-mbstring  php8.2-pcre  php8.2-simplexml  php8.2-spl  php8.2-xml  php8.2-zip  php8.2-pgsql  php8.2-openssl  php8.2-soap  php8.2-sodium  php8.2-tokenizer  php8.2-xmlrpc

echo "install utilities"
apt-get -y curl ufw nano git dnsutils wget 

echo "tar xf"
cd /tmp/
xz -x moodle.tar.xz
tar -xf moodle.tar
