FROM nginx:alpine
RUN apk add inotify-tools certbot openssl ca-certificates
WORKDIR /opt

COPY entrypoint.sh nginx-letsencrypt

COPY certbot.sh certbot.sh

COPY default.conf /etc/nginx/conf.d/default.conf

COPY ssl-options/ /etc/ssl-options
RUN chmod +x nginx-letsencrypt && \
    chmod +x certbot.sh

COPY src /usr/share/nginx/html

ENTRYPOINT ["./nginx-letsencrypt"]
