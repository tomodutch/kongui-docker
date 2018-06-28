FROM ubuntu:bionic

RUN apt update && \
  apt install -y libssl1.0.0 libssl-dev wget && \
  wget --quiet -S https://github.com/TFarla/kongui/releases/download/untagged-06709434237b29dca934/kongui_umbrella.tar.gz && \
  mkdir /kongui

RUN apt-get install -y --no-install-recommends locales && \
    export LANG=en_US.UTF-8 && \
    echo $LANG UTF-8 > /etc/locale.gen && \
    locale-gen && \
    update-locale LANG=$LANG

ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8  

WORKDIR /kongui

RUN tar -xzvf ../kongui_umbrella.tar.gz

CMD ["bin/kongui_umbrella", "foreground"]
