#! /bin/bash

echo "Criando Diretórios"

mkdir /publico
mkdir /adm
mkdir /vendas
mkdir /sec

echo "Criando Grupos de Usuários"

groupadd GRP_ADM
groupadd GRP_VENDAS
groupadd GRP_SEC

echo "Criando Usuários"

useradd carlos -c "Carlos Silva" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_ADM
useradd maria -c "Maria Souza" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_ADM
useradd joao -c "Joao Carlos" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_ADM

useradd debora -c "Debora Maria" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_VENDAS 
useradd sebastiana -c "Sebastiana Carla" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_VENDAS
useradd roberto -c "Roberto Carlos" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_VENDAS

useradd josefina -c "Josefina Almeida" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_SEC
useradd amanda -c "Amanda Pires" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_SEC
useradd rogerio -c "Rogerio Amancio" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_SEC

echo "Vinculando Dono da Pasta e Grupo da Pasta"

chown root:GRP_ADM /adm
chown root:GRP_VENDAS /vendas
chown root:GRP_SEC /sec

echo "Incluindo Permissões aos Diretórios"

chmod 770 /adm
chmod 770 /vendas
chmod 770 /sec
chmod 777 /publico

echo "Processo Finalizado"
