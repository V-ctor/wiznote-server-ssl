FROM wiznote/wizserver:latest
MAINTAINER n2et@qq.com

COPY ssl_wiz /etc/nginx/ssl_wiz/
COPY init.sh /etc/nginx/ssl_wiz/init.sh

RUN chmod +x /etc/nginx/ssl_wiz/init.sh
RUN /etc/nginx/ssl_wiz/init.sh

EXPOSE 443
