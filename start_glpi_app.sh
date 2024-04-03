#!/bin/bash

source "./variables.conf"

docker volume create $glpi_files_directory
docker volume create $glpi_database_directory

docker network create $company

docker run --env glpi_version=$glpi_version \
--network=$company \
-v $glpi_files_directory:/var/www/html/ \
-p $glpi_app_port:80 \
--name $glpi_app_name \
-d glpi:$glpi_app_image_version

docker run --network=$company \
-p $glpi_database_port:3306 \
--name $glpi_database_name \
-v $glpi_database_directory:/var/lib/mysql \
-e MYSQL_ROOT_PASSWORD=$mysql_root_user_password \
-e MYSQL_DATABASE=$glpi_database_name \
-e MYSQL_USER=$glpi_database_user \
-e MYSQL_PASSWORD=$glpi_database_user_password \
-d mysql:$glpi_db_image_version