#!/bin/bash

echo "Criando diretórios inicio...."

cd /
mkdir publico
mkdir adm
mkdir ven
mkdir sec
echo "Criando diretórios final...."

echo "Criando grupos inicio...."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando grupos final...."

echo "Criando usuários inicio...."

echo "Criando usuários GRP_ADM...."
useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd -crypt 123) -G GRP_ADM
useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -crypt 123) -G GRP_ADM
useradd joao -c "João" -s /bin/bash -m -p $(openssl passwd -crypt 123) -G GRP_ADM

echo "Criando usuários GRP_VEN...."
useradd debora -c "Débora" -s /bin/bash -m -p $(openssl passwd -crypt 123) -G GRP_VEN
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -crypt 123) -G GRP_VEN
useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd -crypt 123) -G GRP_VEN

echo "Criando usuários GRP_SEC...."
useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd -crypt 123) -G GRP_SEC
useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -crypt 123) -G GRP_SEC
useradd rogerio -c "Rogério" -s /bin/bash -m -p $(openssl passwd -crypt 123) -G GRP_SEC

echo "alterando o dono dos diretórios para root...."
chown root publico
chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

echo "Dando permissões aos diretórios...."
chmod 777 /publico/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/

echo "fin do script...."
