# Comment
FROM debian:buster

RUN apt update && \
	apt upgrade && \
	apt install -y wget && \
	apt install -y nginx && \
	apt install -y php-cgi php && \
	apt install -y default-mysql-server

ENV TZ Europe/Moscow

#RUN wget http://repo.mysql.com/mysql-apt-config_0.8.13-1_all.deb

CMD service nginx start && service mysql start && tail -f /dev/null

