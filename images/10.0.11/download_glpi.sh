#!/bin/bash
glpi_direct_link="https://github.com/glpi-project/glpi/releases/download/"$glpi_version"/glpi-"$glpi_version".tgz"
wget $glpi_direct_link -O glpi.tgz

