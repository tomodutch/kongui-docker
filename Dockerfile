FROM ubuntu:bionic

RUN apt update && \
  apt install -y libssl1.0.0 libssl-dev wget && \
  wget -S https://github.com/TFarla/kongui/releases/download/untagged-06709434237b29dca934/kongui_umbrella.tar.gz && \
  mkdir /kongui

WORKDIR /kongui

RUN tar -xzvf ../kongui_umbrella.tar.gz

CMD ["bin/kongui_umbrella", "foreground"]
