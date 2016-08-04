#!/bin/sh -x
## get consistent ruby2+bundler env on each distribution

location=`dirname "$0"`
cd $location

curl -sSL https://get.rvm.io | bash
. $HOME/.rvm/scripts/rvm
rvm install 2.0
rvm use 2.0
rvm use 2.0 --default
gem install bundler
bundle install --path ./gems
export rvmsudo_secure_path=1
rvmsudo bundle exec rake spec

