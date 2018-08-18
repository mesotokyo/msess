FROM wordpress

# Wordpress installed in /usr/src/wordpress

# plugins are compressed by zip, so need unzip
RUN apt-get update; apt-get install -y --no-install-recommends unzip

# Twenty Twelve
# https://downloads.wordpress.org/theme/twentytwelve.2.5.zip
RUN set -ex; \
    cd /usr/src/wordpress/wp-content/themes; \
    curl -o tmp.zip -fsSL https://downloads.wordpress.org/theme/twentytwelve.2.5.zip; \
    unzip tmp.zip > /dev/null; \
    rm -f tmp.zip

# Contact Form 7
# https://downloads.wordpress.org/plugin/contact-form-7.5.0.3.zip
RUN set -ex; \
    cd /usr/src/wordpress/wp-content/plugins; \
    curl -o tmp.zip -fsSL https://downloads.wordpress.org/plugin/contact-form-7.5.0.3.zip; \
    unzip tmp.zip > /dev/null; \
    rm -f tmp.zip

# Simple Custom CSS
# https://downloads.wordpress.org/plugin/simple-custom-css.zip
RUN set -ex; \
    cd /usr/src/wordpress/wp-content/plugins; \
    curl -o tmp.zip -fsSL https://downloads.wordpress.org/plugin/simple-custom-css.zip; \
    unzip tmp.zip > /dev/null; \
    rm -f tmp.zip

# Twitter Cards Meta
# https://downloads.wordpress.org/plugin/simple-custom-css.zip
RUN set -ex; \
    cd /usr/src/wordpress/wp-content/plugins; \
    curl -o tmp.zip -fsSL https://downloads.wordpress.org/plugin/twitter-cards-meta.2.9.0.zip; \
    unzip tmp.zip > /dev/null; \
    rm -f tmp.zip
