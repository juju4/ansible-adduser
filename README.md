# adduser ansible role

[![Actions Status - Main](https://github.com/juju4/ansible-adduser/workflows/AnsibleCI/badge.svg)](https://github.com/juju4/ansible-adduser/actions?query=branch%3Amain)
[![Actions Status - Devel](https://github.com/juju4/ansible-adduser/workflows/AnsibleCI/badge.svg?branch=devel)](https://github.com/juju4/ansible-adduser/actions?query=branch%3Adevel)

A simple ansible role to add a unix user with its ssh key.

## Requirements & Dependencies

### Ansible

It was tested on the following versions:

* 2.10-17

### Operating systems

Tested on Ubuntu 24.04, 22.04, 20.04, Centos/Rockylinux 9.

## Example Playbook

Just include this role in your list.
For example

```yaml
- host: myhost
  roles:
    - juju4.adduser
```

you probably want to review variables

## Variables

```yaml
adduser_user_name: deploy
adduser_user_comments: ""
adduser_sudoroot: true
adduser_password: change_me_or_die!
adduser_public_keys:
- dummykey.pub
```

* adduser_user_name: username to add
* adduser_password: input should be hash except for darwin. please use ansible vault to store your real password
* adduser_public_keys: list of corresponding authorized keys

## Continuous integration

This role has a travis basic test (for github), more advanced with kitchen and also a Vagrantfile (test/vagrant).
Default kitchen config (.kitchen.yml) is lxd-based, while (.kitchen.vagrant.yml) is vagrant/virtualbox based.

Once you ensured all necessary roles are present, You can test with:

```shell
gem install kitchen-ansible kitchen-lxd_cli kitchen-sync kitchen-vagrant
cd /path/to/roles/juju4.adduser
kitchen verify
kitchen login
KITCHEN_YAML=".kitchen.vagrant.yml" kitchen verify
```

or

```shell
cd /path/to/roles/juju4.adduser/test/vagrant
vagrant up
vagrant ssh
```

or

```shell
pip install molecule docker
molecule test
MOLECULE_DISTRO=ubuntu:24.04 molecule test --destroy=never
```

## Troubleshooting & Known issues

* under OpenBSD, leaving password field cause an issue.

* ```repomd.xml does not match metalink for epel``` on Centos/Redhat
uncomment baselist and comment mirrorlist in /etc/yum.repos.d/epel.repo
(http://stackoverflow.com/questions/30949707/centos-6-6-errno-1-repomd-xml-does-not-match-metalink-for-updates-when-tryin)
Centos6 might also need ansible 2.1 (not 2.2) because of ```ERROR! Unexpected Exception: 'module' object has no attribute 'HAVE_DECL_MPZ_POWM_SEC'```

* Adding ssh key task still seen as successful even if failed because a key was not readable, path incorrect or else. need to review log with verbosity 1.

## License

BSD 2-clause
