#!/bin/bash
glpi_image_name="glpi:10.0.11"
echo "Construyendo imagen..."
docker build -t $glpi_image_name .
