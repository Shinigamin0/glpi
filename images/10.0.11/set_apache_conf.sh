#!/bin/bash
cp /etc/apache2/apache2.conf /etc/apache2/apache2.conf_orig
sed -i 's/AllowOverride None/AllowOverride All/g' /etc/apache2/apache2.conf