#!/bin/bash
docker run -d --name mariadb-glpi \
-e MYSQL_DATABASE=glpi \
-e MYSQL_USER=glpi \
-e MYSQL_PASSWORD=glpi \
-e MYSQL_RANDOM_ROOT_PASSWORD=1 \
-p 3306:3306 \
-v /docker/glpi-silvaman/mariadb/:/var/lib/mysql:rw \
fametec/glpi:mariadb
