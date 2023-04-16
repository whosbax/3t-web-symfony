FROM debian:11
USER root
RUN apt-get update -y && apt-get install -y apache2  apache2-utils  fail2ban nano  iptables  ufw  openssh-server  libapache2-mod-evasive  libapache2-mod-fcgid php-fpm


COPY ./conf/sites-available/*.conf /etc/apache2/sites-available/

COPY run.sh /

RUN chmod +x /run.sh