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
common_deploy_user_name: deploy
COMMON_DEPLOY_PASSWORD: change_me_or_die!
common_deploy_public_keys:
- dummykey.pub
```
* common_deploy_user_name: username to add
* common_deploy_public_keys: list of corresponding authorized keys


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



