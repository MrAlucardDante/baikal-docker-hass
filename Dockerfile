FROM ckulka/baikal:0.10.1-nginx-php8.2

LABEL description="Baikal is a Cal and CardDAV server, based on sabre/dav, that includes an administrative interface for easy management."
LABEL version="0.9.4"
LABEL repository="https://github.com/MrAlucardDante/baikal-docker-hass"
LABEL website="http://sabre.io/baikal/"

RUN apt update && apt install -y php8.2-pgsql
COPY --chown=nginx:nginx Plugin.php /var/www/baikal/vendor/sabre/dav/lib/CalDAV/Plugin.php
