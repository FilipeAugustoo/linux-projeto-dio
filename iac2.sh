#!/bin/bash

echo "Atualizando o sistema..."

apt update
apt upgrade -y

echo "Instalando o apache e o unzip..."

apt install apache2 -y
apt install unzip -y

echo "Baixando a aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
