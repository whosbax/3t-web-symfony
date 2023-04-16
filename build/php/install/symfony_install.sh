mkdir -p /usr/local/bin && \
echo "Symfony ..." && \
curl -sS https://get.symfony.com/cli/installer | bash && \
cp /root/.symfony5/bin/symfony /usr/local/bin/symfony && \
cd /var/www/ && symfony new symfony --webapp
#[ ! -d "/var/www/symfony" ] && cd /var/www/ && symfony new --full symfony

