# glpi-silvaman
GLPI é um sistema de código aberto para Gerenciamento de Ativos de TI, rastreamento de problemas e central de serviços. 

# Instalar o Docker
curl -fsSL https://get.docker.com/ | sh

# Criar Repositório
 mkdir /docker/glpi-silvaman

 mkdir data
 
 mkdir mariadb

# Subindo

./docker_start_mariadb.sh


./docker_start_glpi.sh

# Acessando GLPI
localhost:8080

User: glpi

Password glpi
