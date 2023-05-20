FROM node:18-alpine

LABEL verison="0.1"
LABEL maintainer="zivee <xu@zivee.cn>"
ARG SUID=501

WORKDIR /tmp
COPY docker-entrypoint.sh /
RUN set -x \
    && apk add --update --no-cache git openssh \
    && npm install -g cnpm --registry=https://registry.npmmirror.com && cnpm install -g hexo-cli \
    && addgroup -g $SUID hexor \
    && adduser -D -u $SUID -G hexor hexor \
    && chmod +x /docker-entrypoint.sh

USER hexor
EXPOSE 4000
VOLUME [ "/app", "/home/hexor/.ssh/id_rsa" ]
WORKDIR /app
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["hexo", "server", "-s"]