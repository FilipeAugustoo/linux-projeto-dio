#!/bin/bash

echo "Criando os diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando os grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os usuarios e adicionando aos grupos"

useradd carlos -m -c "Carlos Silva" -s /bin/bash -G GRP_ADM -p $(openssl passwd -6 Senha123)
useradd maria -m -c "Maria Silva" -s /bin/bash -G GRP_ADM -p $(openssl passwd -6 Senha123)
useradd joao -m -c "João Silva" -s /bin/bash -G GRP_ADM -p $(openssl passwd -6 Senha123)

useradd debora -m -c "Débora Silva" -s /bin/bash -G GRP_VEN -p $(openssl passwd -6 Senha123)
useradd sebastiana -m -c "Sebastiana Silva" -s /bin/bash -G GRP_VEN -p $(openssl passwd -6 Senha123)
useradd roberto -m -c "Roberto Silva" -s /bin/bash -G GRP_VEN -p $(openssl passwd -6 Senha123)

useradd josefina -m -c "Josefina Silva" -s /bin/bash -G GRP_SEC -p $(openssl passwd -6 Senha123)
useradd amanda -m -c "Amanda Silva" -s /bin/bash -G GRP_SEC -p $(openssl passwd -6 Senha123)
useradd rogerio -m -c "Rogério Silva" -s /bin/bash -G GRP_SEC -p $(openssl passwd -6 Senha123)

echo "Alterando as permissões dos diretorios"

chown root:GRP_ADM /adm
chown root:GRP_SEC /sec
chown root:GRP_VEN /ven

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Finalizado!!"

