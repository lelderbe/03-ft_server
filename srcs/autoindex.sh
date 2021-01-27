#!/bin/sh
FILENAME="/etc/nginx/sites-available/default"
#FILENAME="./test"

if grep -q 'autoindex on' $FILENAME
then
	echo 'autoindex was ON, now: OFF'
#	sed -i "" 's/autoindex on/autoindex off/' $FILENAME
	sed -i 's/autoindex on/autoindex off/' $FILENAME
	service nginx reload
else
	if grep -q 'autoindex off' $FILENAME
	then
		echo 'autoindex was OFF, now: ON'
		sed -i 's/autoindex off/autoindex on/' $FILENAME
		service nginx reload
	fi
fi
