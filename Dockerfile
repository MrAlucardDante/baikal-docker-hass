FROM ckulka/baikal:0.9.5-nginx

LABEL description="Baikal is a Cal and CardDAV server, based on sabre/dav, that includes an administrative interface for easy management."
LABEL version="0.9.4"
LABEL repository="https://github.com/MrAlucardDante/baikal-docker-hass"
LABEL website="http://sabre.io/baikal/"

COPY --chown=nginx:nginx Plugin.php /var/www/baikal/vendor/sabre/dav/lib/CalDAV/Plugin.php
