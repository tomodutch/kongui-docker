FROM alpine

RUN apk add bash openssl --no-cache && \
    wget -S https://github.com/TFarla/kongui/releases/download/0.1.0-alpha.17/kongui-alpine.tar.gz -P /tmp/ && \
    tar -xzf /tmp/kongui-alpine.tar.gz -C /etc/

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

WORKDIR /etc/kongui


CMD ["bin/kongui", "foreground"]
