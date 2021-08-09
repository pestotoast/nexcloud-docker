sed -i s/php:7.4-fpm-alpine3.13/php:8-fpm-alpine/g docker/21/fpm-alpine/Dockerfile
#sed -i 's/pecl install imagick-3.4.4;/mkdir -p \/usr\/src\/php\/ext\/imagick; curl -fsSL https:\/\/github.com\/Imagick\/imagick\/archive\/refs\/heads\/master.tar.gz \| tar xvz -C \"\/usr\/src\/php\/ext\/imagick\" --strip 1; docker-php-ext-install imagick;/g' docker/21.0/fpm-alpine/Dockerfile
#sed -i 's/ENV NEXTCLOUD_VERSION 21.0.0/ENV NEXTCLOUD_VERSION 21.0.1/g' docker/21.0/fpm-alpine/Dockerfile
