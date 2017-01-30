[![Build Status - Master](https://travis-ci.org/juju4/ansible-adduser.svg?branch=master)](https://travis-ci.org/juju4/ansible-adduser)
[![Build Status - Devel](https://travis-ci.org/juju4/ansible-adduser.svg?branch=devel)](https://travis-ci.org/juju4/ansible-adduser/branches)
# adduser ansible role

A simple ansible role to add a unix user with its ssh key.

## Requirements & Dependencies

### Ansible
It was tested on the following versions:
 * 1.9
 * 2.0 (required for Windows)

### Operating systems

Tested with vagrant on Ubuntu 14.04 and OpenBSD 5.8.
Verified with kitchen against ubuntu14, centos7.

## Example Playbook

Just include this role in your list.
For example

```
- host: myhost
  roles:
    - adduser
```

you probably want to review variables

## Variables

```
adduser_user_name: deploy
adduser_user_comments: ""
adduser_sudoroot: true
adduser_password: change_me_or_die!
adduser_public_keys:
- dummykey.pub
```
* adduser_user_name: username to add
* adduser_password: please use ansible vault to store your real password
* adduser_public_keys: list of corresponding authorized keys


## Continuous integration

This role has a travis basic test (for github), more advanced with kitchen and also a Vagrantfile (test/vagrant).
Default kitchen config (.kitchen.yml) is lxd-based, while (.kitchen.vagrant.yml) is vagrant/virtualbox based.

Once you ensured all necessary roles are present, You can test with:
```
$ gem install kitchen-ansible kitchen-lxd_cli kitchen-sync kitchen-vagrant
$ cd /path/to/roles/adduser
$ kitchen verify
$ kitchen login
$ KITCHEN_YAML=".kitchen.vagrant.yml" kitchen verify
```
or
```
$ cd /path/to/roles/adduser/test/vagrant
$ vagrant up
$ vagrant ssh
```


## Troubleshooting & Known issues

* under OpenBSD, leaving password field cause an issue.

* ```repomd.xml does not match metalink for epel``` on Centos/Redhat
uncomment baselist and comment mirrorlist in /etc/yum.repos.d/epel.repo
(http://stackoverflow.com/questions/30949707/centos-6-6-errno-1-repomd-xml-does-not-match-metalink-for-updates-when-tryin)
Centos6 might also need ansible 2.1 (not 2.2) because of ```ERROR! Unexpected Exception: 'module' object has no attribute 'HAVE_DECL_MPZ_POWM_SEC'```

## License

BSD 2-clause


