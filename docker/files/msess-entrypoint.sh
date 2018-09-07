#!/bin/bash
set -euo pipefail

# update php.ini and ssmtp.conf
if [ ! -z "$SMTP_HOST" ]; then
	echo -e "SMTP = $SMTP_HOST\n" >> /usr/local/etc/php/conf.d/php.ini
	echo -e "FromLineOverride=YES\nmailhub=$SMTP_HOST\n" >> /etc/ssmtp/ssmtp.conf
fi

# start original entrypoint
exec /usr/local/bin/docker-entrypoint.sh $@
