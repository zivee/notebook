FROM node:18-alpine

LABEL verison="0.1"
LABEL maintainer="zivee <xu@zivee.cn>"
ARG SUID=501

WORKDIR /tmp
ENV HEXO_SERVER_PORT=8080
COPY docker-entrypoint.sh /
RUN apk add --update --no-cache git openssh \
    && npm install -g cnpm --registry=https://registry.npmmirror.com && cnpm install -g hexo-cli \
    && addgroup -g $SUID hexor \
    && adduser -D -u $SUID -G hexor hexor \
    && chmod +x /docker-entrypoint.sh

EXPOSE 8080
USER hexor
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["hexo" "server" "-s" "-p" "${HEXO_SERVER_PORT}"]