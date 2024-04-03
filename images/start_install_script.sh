#!/bin/bash
php bin/console db:install \
--db-host=glpi_db \
--db-port=3306 \
--db-name=glpi_db \
--db-user=glpi_user \
--db-password=changeme