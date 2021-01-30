#!/bin/sh
mkdir -p /usr/share/phpmyadmin/tmp
chmod 777 /usr/share/phpmyadmin/tmp
mkdir /etc/nginx/templates
mkdir /var/www/html/phpmyadmin
mkdir /var/www/html/wordpress
wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.tar.gz
tar xvf phpMyAdmin-5.0.4-all-languages.tar.gz --strip-components=1 -C /usr/share/phpmyadmin
rm phpMyAdmin-5.0.4-all-languages.tar.gz
rm -rf /usr/share/phpmyadmin/setup
mkdir -p /var/www/html/autoindex/test1
mkdir -p /var/www/html/autoindex/test2
echo 'this is file1' > /var/www/html/autoindex/file1.txt && \
echo 'file2' > /var/www/html/autoindex/file2.txt && \
echo

service mysql start
mysql -u root < /usr/share/phpmyadmin/sql/create_tables.sql
mysql -u root < /phpmyadmin.sql
mysql -u root < /wordpress.sql
rm /phpmyadmin.sql
rm /wordpress.sql
openssl req -x509 -nodes -days 365 -subj "/C=RU/ST=RUSSIA/L=Moscow/O=21School/OU=students/CN=localhost" -newkey rsa:2048 \
                -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt
#       openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048
chmod 777 /autoindex.sh
echo
#cp -r ./* ..
