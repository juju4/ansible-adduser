# Dockerfile inspired from https://hub.docker.com/r/williamyeh/ansible/

# ==> Choose a base image to emulate Linux distribution...
FROM williamyeh/ansible:ubuntu14.04
#FROM williamyeh/ansible:ubuntu12.04
#FROM williamyeh/ansible:debian8
#FROM williamyeh/ansible:debian7
#FROM williamyeh/ansible:centos7
#FROM williamyeh/ansible:centos6
#FROM williamyeh/ansible:alpine3


# ==> Copying Ansible playbook...
WORKDIR /tmp
COPY  .  /etc/ansible/roles/adduser

# ==> Creating inventory file...
RUN echo localhost > inventory

# ==> Executing Ansible...
RUN ansible-playbook -i inventory /etc/ansible/roles/adduser/test/integration/default/default.yml \
      --connection=local --sudo

