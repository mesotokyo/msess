FROM wordpress
# WordPress (Japanese):
# https://ja.wordpress.org/wordpress-latest-ja.tar.gz

# plugins are compressed by zip, so need unzip
RUN apt-get update; apt-get install -y --no-install-recommends unzip ssmtp

# Remove installed WordPress in /usr/src/wordpress
RUN set -ex; \
    cd /usr/src/wordpress; rm -rf *;

# Download WordPress
RUN set -ex; \
    cd /usr/src/wordpress; \
    curl -o wordpress.tar.gz -fSL https://ja.wordpress.org/wordpress-latest-ja.tar.gz; \
    tar xzf wordpress.tar.gz; \
    rm wordpress.tar.gz; \
    mv wordpress wp; \
    chown -R www-data:www-data wp

COPY files/php.ini /usr/local/etc/php/conf.d/
COPY files/msess-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["msess-entrypoint.sh"]
CMD ["apache2-foreground"]

# Twenty Twelve
# https://downloads.wordpress.org/theme/twentytwelve.2.5.zip
RUN set -ex; \
    cd /usr/src/wordpress/wp/wp-content/themes; \
    curl -o tmp.zip -fsSL https://downloads.wordpress.org/theme/twentytwelve.2.5.zip; \
    unzip tmp.zip > /dev/null; \
    rm -f tmp.zip

# Contact Form 7
# https://downloads.wordpress.org/plugin/contact-form-7.5.0.4.zip
RUN set -ex; \
    cd /usr/src/wordpress/wp/wp-content/plugins; \
    curl -o tmp.zip -fsSL https://downloads.wordpress.org/plugin/contact-form-7.5.0.4.zip; \
    unzip tmp.zip > /dev/null; \
    rm -f tmp.zip

# Simple Custom CSS
# https://downloads.wordpress.org/plugin/simple-custom-css.zip
RUN set -ex; \
    cd /usr/src/wordpress/wp/wp-content/plugins; \
    curl -o tmp.zip -fsSL https://downloads.wordpress.org/plugin/simple-custom-css.zip; \
    unzip tmp.zip > /dev/null; \
    rm -f tmp.zip

# Twitter Cards Meta
# https://downloads.wordpress.org/plugin/simple-custom-css.zip
RUN set -ex; \
    cd /usr/src/wordpress/wp/wp-content/plugins; \
    curl -o tmp.zip -fsSL https://downloads.wordpress.org/plugin/twitter-cards-meta.2.9.0.zip; \
    unzip tmp.zip > /dev/null; \
    rm -f tmp.zip

# install .htaccess
ADD files/dothtaccess /usr/src/wordpress/.htaccess    

# enable .htaccess
#ADD files/allow_htaccess.conf /etc/apache2/sites-enabled/allow_htaccess.conf

# add index.php
ADD files/index.php /usr/src/wordpress/index.php

# patch for warning (for twittercard)
ADD files/post-template.patch /tmp/
RUN set -ex; \
    cd /usr/src/wordpress/wp/wp-includes; \
    patch < /tmp/post-template.patch


