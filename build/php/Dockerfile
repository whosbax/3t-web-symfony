FROM debian:11
USER root
WORKDIR /var/www/

RUN apt-get update && apt-get install -y wget
RUN echo "deb https://packages.sury.org/php/ bullseye main" >> /etc/apt/sources.list.d/php.list
RUN wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg


RUN apt-get update && apt-get install -y php8.1 php8.1-fpm php8.1-cli php8.1-common php-cgi net-tools procps tcpdump nano php8.1-xml curl git php-xml

COPY ./conf/php-fpm/www.conf /etc/php/8.1/fpm/pool.d/www.conf

RUN mkdir /run/php/ && chown -R www-data:www-data /var/www/

COPY ./install /install
COPY run.sh /
RUN chmod +x /run.sh