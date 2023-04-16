a2dismod mpm_event && \
a2enmod mpm_worker && \
a2enmod proxy proxy_http actions alias proxy_fcgi && \
service apache2 restart && tail -f /dev/null