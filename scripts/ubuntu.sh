apt-get update -yqq && apt-get install wget gnupg libssl1.0.0 libssl-dev locales -yqq
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb --quiet
dpkg -i erlang-solutions_1.0_all.deb
apt-get -yqq update
apt-get -yqq install esl-erlang elixir

export LANG=en_US.UTF-8
# export LANGUAGE=en_US:en
# export LC_ALL=en_US.UTF-8
export MIX_ENV=prod

echo $LANG UTF-8 > /etc/locale.gen
locale-gen
update-locale LANG=$LANG
