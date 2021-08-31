FROM pestotoast/nextcloud-temp
RUN apk upgrade
RUN apk add tesseract-ocr tesseract-ocr-data-deu imagemagick ffmpeg
#RUN apk add --update-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ -allow-untrusted gnu-libiconv php7-iconv
#ENV LD_PRELOAD=/usr/lib/preloadable_libiconv.so
ADD www.conf /usr/local/etc/php-fpm.d/www.conf
ADD https://github.com/tesseract-ocr/tessdata_fast/raw/master/deu.traineddata /usr/share/tessdata/deu.traineddata
ADD https://github.com/tesseract-ocr/tessdata_fast/raw/master/eng.traineddata /usr/share/tessdata/eng.traineddata
ADD policy.xml /etc/ImageMagick-7/policy.xml
RUN chmod -R 755 /usr/share/tessdata
