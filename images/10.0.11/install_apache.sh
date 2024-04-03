#!/bin/bash
apt update \
&& apt install -y apache2
a2enmod rewrite
