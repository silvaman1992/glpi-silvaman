#!/bin/bash
docker run -d --name glpi \
--link mariadb-glpi:mariadb-glpi \
-e GLPI_LANG=pt_BR \
-e MARIADB_HOST=mariadb-glpi \
-e MARIADB_PORT=3306 \
-e MARIADB_DATABASE=glpi \
-e MARIADB_USER=glpi \
-e MARIADB_PASSWORD=glpi \
-e VERSION="9.5.6" \
-e PLUGINS="all" \
-v /docker/glpi-silvaman/data/files/:/var/www/html/files/:rw \
-v /docker/glpi-silvaman/data/plugins/:/var/www/html/plugins/:rw \
-v /docker/glpi-silvaman/data/php.ini:/etc/php.ini \
-v /docker/glpi-silvaman/data/pics:/var/www/html/pics \
-p 8080:80 \
-p 443:443 \
glpi-10.0.11
