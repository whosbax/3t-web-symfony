git config --global user.email "you@example.com" && \
git config --global user.name "Your Name" && \
chmod +x /install/*_install.sh && for f in $( find /install/* -type f ); do $f ; done;
chown -R www-data:www-data /var/www && service php8.1-fpm start && tail -f /dev/null
