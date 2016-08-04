#!/bin/sh -x
## get consistent ruby2+bundler env on each distribution

location=`dirname "$0"`
cd $location

## docker environment in travis missing few utils
[ -f /etc/debian_version ] && apt-get install -y curl
[ -f /etc/redhat-release ] && yum -y install which

curl -sSL https://get.rvm.io | bash
[ -f $HOME/.rvm/scripts/rvm ] && . $HOME/.rvm/scripts/rvm
[ -d /usr/local/rvm ] && . /etc/profile.d/rvm.sh

## troubleshoot
type rvm | head -1
env

export PATH=/usr/local/rvm/bin:$PATH

rvm install 2.0
rvm use 2.0
rvm use 2.0 --default
gem install bundler
bundle install --path ./gems
export rvmsudo_secure_path=1
rvmsudo bundle exec rake spec

