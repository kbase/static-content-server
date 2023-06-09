FROM bitnami/nginx:latest
USER root
RUN apt-get update
RUN apt-get install -y vim curl wget
COPY nginx.conf /opt/bitnami/nginx/conf/server_blocks/app.conf
USER 1001

