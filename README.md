[![Build Status](https://travis-ci.org/juju4/ansible-adduser.svg?branch=master)](https://travis-ci.org/juju4/ansible-adduser)

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

you can test this role with test kitchen.
In the role folder, run
```
$ kitchen verify
```

## Troubleshooting & Known issues

* under OpenBSD, leaving password field cause an issue.

## License

BSD 2-clause


