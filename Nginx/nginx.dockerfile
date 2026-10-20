ARG NGINX_VERSION="1.31.6-"
ARG ALPINE_VERSION="3.24"

FROM nginx:${NGINX_VERSION}alpine${ALPINE_VERSION}

ARG NGINX_DIR="/etc/nginx"

WORKDIR ${NGINX_DIR}

COPY nginx.conf                 nginx.conf
COPY configs/*.template         templates/
COPY configs/*.conf             conf.d/

RUN rm conf.d/default.conf
