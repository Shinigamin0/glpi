#!/bin/bash
cp /etc/php/$php_version/apache2/php.ini /etc/php/$php_version/apache2/php.ini_orig
echo 'max_input_vars = 5000 ;' >> /etc/php/$php_version/apache2/php.ini
echo 'memory_limit = 64M ;' >> /etc/php/$php_version/apache2/php.ini
echo 'file_uploads = on ;' >> /etc/php/$php_version/apache2/php.ini
echo 'max_execution_time = 600 ;' >> /etc/php/$php_version/apache2/php.ini
echo 'session.auto_start = off ;' >> /etc/php/$php_version/apache2/php.ini
echo 'session.use_trans_sid = 0 ;' >> /etc/php/$php_version/apache2/php.ini
echo 'session.cookie_httponly = On ;' >> /etc/php/$php_version/apache2/php.ini