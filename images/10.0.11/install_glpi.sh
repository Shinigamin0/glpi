#!/bin/bash
tar -xvf glpi.tgz
rm -f glpi.tgz
mv /var/www/html /var/www/old_html
mv glpi /var/www/html
echo '<?php phpinfo( );?>' >> /var/www/html/info.php
chown -R www-data. /var/www/html/
chmod -R 755 /var/www/html/