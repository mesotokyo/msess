#WP_CONFIG=

build:
	docker build -t msess .

run:
	docker run -d --name msess --restart=always -p 8001:80 -v $(WP_CONFIG):/usr/src/wordpress/wp-config.php:ro --add-host="wpdb:172.17.0.1" msess

stop:
	docker stop msess

rm:
	docker rm msess

restart:
	docker restart msess

start:
	docker start msess
