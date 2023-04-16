FROM nginx:latest
USER root
COPY ./conf/conf.d/default.conf /etc/nginx/conf.d/default.conf
RUN apt-get update && apt-get install -y iputils-ping net-tools procps
COPY run.sh /
RUN chmod +x /run.sh