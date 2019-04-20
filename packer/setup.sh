#!/bin/bash -eux
## from https://github.com/geerlingguy/packer-ubuntu-1404/blob/master/scripts/setup.sh

# Add vagrant user to sudoers.
echo "vagrant        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

# Add vagrant insecure key to authorized_keys.
#   It will be replaced at start
install -d -m 700 -o vagrant /home/vagrant/.ssh
wget 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub' -O /home/vagrant/.ssh/authorized_keys
chmod 600 /home/vagrant/.ssh/authorized_keys
