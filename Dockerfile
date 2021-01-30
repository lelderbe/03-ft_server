# This is a comment
FROM debian:buster

ENV TZ Europe/Moscow

EXPOSE 80/tcp
EXPOSE 443/tcp

RUN apt update && \
	apt upgrade -y && \
	apt install -y wget && \
	apt install -y nginx && \
	apt install -y default-mysql-server && \
	apt install -y php7.3 php7.3-fpm php7.3-mysql php7.3-mbstring && \
#	apt install -y php7.3 php7.3-fpm php7.3-mysql php7.3-cli php7.3-common php7.3-json php7.3-opcache php7.3-readline && \
#	apt install -y php7.3-pdo php7.3-zip php7.3-gd php7.3-mbstring php7.3-curl php7.3-xml php7.3-bcmath && \
#	apt install -y php-mbstring php-zip php-gd php-curl php-json php-gettext php-xml php-phpseclib php-intl php-soap php-xmlrpc && \
	apt install -y wordpress && \
	apt install -y vim && \
#	mkdir -p /usr/share/phpmyadmin/tmp && \
#	chmod 777 /usr/share/phpmyadmin/tmp && \
#	mkdir /etc/nginx/templates && \
#	mkdir /var/www/html/phpmyadmin && \
#	mkdir /var/www/html/wordpress && \
#	wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.tar.gz && \
#	tar xvf phpMyAdmin-5.0.4-all-languages.tar.gz --strip-components=1 -C /usr/share/phpmyadmin && \
#	rm phpMyAdmin-5.0.4-all-languages.tar.gz && \
#	rm -rf /usr/share/phpmyadmin/setup && \
#	mkdir -p /var/www/html/autoindex/test1 && \
#	mkdir -p /var/www/html/autoindex/test2 && \
#	echo 'this is file1' > /var/www/html/test/file1.txt && \
#	echo 'file2' > /var/www/html/test/file2.txt && \
#	mkdir /srcs && \
	echo

COPY ./srcs /

RUN chmod 777 /deploy.sh && \
	/deploy.sh && \
#RUN	service mysql start && \
#	mysql -u root < /usr/share/phpmyadmin/sql/create_tables.sql && \
#	mysql -u root < /phpmyadmin.sql && \
#	mysql -u root < /wordpress.sql && \
#	rm /phpmyadmin.sql && \
#	rm /wordpress.sql && \
#	openssl req -x509 -nodes -days 365 -subj "/C=RU/ST=RUSSIA/L=Moscow/O=21School/OU=students/CN=localhost" -newkey rsa:2048 \
#		-keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt && \
##	openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048
#	chmod 777 /autoindex.sh && \
	echo

#COPY ./srcs /

CMD	\
	service nginx start && \
	service mysql start && \
	service php7.3-fpm start && \
	sleep 3650d
	#tail -f /dev/null
