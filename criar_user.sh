#! /bin/bash

echo "Criando usuários do sistema..."

useradd guest10 -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd -e guest10 -e

useradd guest11 -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd -e guest11 -e

useradd guest12 -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd -e guest12 -e

useradd guest13 -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd -e guest13 -e

echo "Finalizado!!"


