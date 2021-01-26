--SET PASSWORD FOR 'root'@'localhost' = PASSWORD('root');

--GRANT ALL ON phpmyadmin.* TO 'pma'@'localhost' IDENTIFIED BY 'pma';
GRANT ALL ON *.* TO 'pma'@'localhost' IDENTIFIED BY 'pma' WITH GRANT OPTION;
FLUSH PRIVILEGES;
