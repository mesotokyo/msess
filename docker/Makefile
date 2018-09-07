WP_CFG:=/var/sites/wp-config.php
WP_UPLOAD:=/var/www/m-session.w3jp.info/wp/wp-content/uploads
WP_BASE:=/usr/src/wordpress/wp
HTML_BASE:=/var/www/html/wp

VOL_SPF:=-v /home/hylom/repos/wp-spreadsheet-fetcher:$(HTML_BASE)/wp-content/plugins/wp-spft
VOL_LOG:=-v /var/log/m-session:/var/log/apache2
VOL_CONF:=-v $(WP_CFG):$(WP_BASE)/wp-config.php:ro
VOL_UPL:=-v $(WP_UPLOAD):$(HTML_BASE)/wp-content/uploads 
VOLUME_OPT:=$(VOL_SPF) $(VOL_LOG) $(VOL_CONF) $(VOL_UPL)
ENV_OPT:=-e "SMTP_HOST=w3jp.info"

build:
	docker build -t msess .

run:
	docker run -d --name msess --restart=always -p 8001:80 $(VOLUME_OPT) $(ENV_OPT) --add-host="wpdb:172.17.0.1" msess

stop:
	docker stop msess

rm:
	docker rm msess

destroy:
	docker stop msess
	docker rm msess

restart:
	docker restart msess

start:
	docker start msess
