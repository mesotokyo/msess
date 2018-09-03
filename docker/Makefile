WP_CFG:=/var/sites/wp-config.php
WP_UPLOAD:=/var/www/m-session.w3jp.info/wp/wp-content/uploads
WP_BASE:=/usr/src/wordpress/wp
HTML_BASE:=/var/www/html/wp

build:
	docker build -t msess .

run:
	docker run -d --name msess --restart=always -p 8001:80 -v $(WP_CFG):$(WP_BASE)/wp-config.php:ro -v $(WP_UPLOAD):$(HTML_BASE)/wp-content/uploads --add-host="wpdb:172.17.0.1" msess

stop:
	docker stop msess

rm:
	docker rm msess

restart:
	docker restart msess

start:
	docker start msess
