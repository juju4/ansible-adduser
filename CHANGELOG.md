# Changelog

## Unreleased

* docs(ISSUE_TEMPLATE): add good community note from trufflehog project
* ci: add github release notes config
* ci: add dependabot workflow to update github actions
* ci: add gitleaks and trufflehog in lint workflow and pre-commit
* chore: remove legacy Dockerfile
* ci: Secure workflows - token permissions read-only (PR#4 from juju4/step-security/secure-workflows)
* ci(release): Revert "add release workflow - plu5/automatic-releases-with-sha-action"

## 1.6.1 (2023-01-28)

* ci(release): apply on all tags
* ci(galaxy): regroup in a single job

## 1.6.0 (2023-01-28)

* ci(release): add release workflow
* ci(pre-commit): more hooks, review hooks order
* fix: add PATH environment for debian-11 visudo
* feat: add commitzen to enforce conventional_commits
* chore(pre-commit): autoupdate
* chore(yamllint): fix
* docs: add Github Private vulnerability reporting (beta) to SECURITY.md
* docs: add CODE_OF_CONDUCT, CONTRIBUTING, SECURITY and issue+PR templates
* ci: add explicit no permissions
* chore: fix ansible-lint fqcn
* ci: default: add workflow_dispatch and rockylinux:9
* ci: lint: add workflow_dispatch, review codespell settings and portable find
* lint: merge codespell into lint workflow
* ci: workflows: add env.ANSIBLE_ROLE
* chore: fix ansible-lint no-free-form
* ci: github workflows: use some central settings for requirements.txt and lint
* ci: pre-commit: autoupdate
* chore: fix ansible-lint
* chore: meta: add standalone true

## 1.5.1 (2022-09-17)

* ci: galaxy: update to galaxy-action@1.2.1

## 1.5.0 (2022-09-17)

* chore: fix ansible-lint 6.5.1
* cleaning: remove older distributions references like trusty
* ci: lint: remove schedule
* chore: fix ansible syntax change
* ci: fix molecule/Dockerfile for 22.04
* chore: ansible-lint: warn on syntax-check
* ci: pre-commit: autoupdate; add codespell to pre-commit
* chore: fix ansible-lint
* ci: workflows: add codespell
* ci: workflows: add dryrun
* ci: github workflow: separate lint, use pre-release as advanced notice
* chore: fix fqcn-builtins - ansible-lint 6

## 1.4.0 (2022-02-26)

* ci: remove test/travis
* ci: workflow: add coming ubuntu:22.04 +experimental
* chore: fix ansible s/ignore_errors/failed_when/
* ci: workflow: add coming ubuntu:22.04
* ci: workflow: add experimental option
* chore: fix ansible callbacks_enabled typo
* defaults: define home based on given username as default
* ci: workflow: replace centos:8 docker by redhat/ubi8 and rockylinux:8
* docs: README update

## 1.3.5 (2021-11-06)

* ci: github action: galaxy action on release - fixed

## 1.3.4 (2021-11-06)

* ci: github action: galaxy action on release - testing

## 1.3.3 (2021-11-06)

* ci: github action: galaxy action on release - testing

## 1.3.2 (2021-11-06)

* ci: github action: galaxy action on release - testing

## 1.3.1 (2021-11-06)

* ci: github action: galaxy action on release - testing

## 1.3.0 (2021-08-21)

* ci: github action: galaxy action on release
* defaults: fix expire time for idempotence
* chore: fix ansible s/callback_whitelist/callback_enabled/
* chore: add gitignore
* ci: add pre-commit config
* chore: fix latest ansible-lint
* chore: galaxy meta: cleaning

## 1.2.0 (2021-03-06)

* ci: github action: Environment step
* ci: github action: workaround ansible-lint#1329
* chore: fix lint/indent
* docs: README: s/travis-ci.org/travis-ci.com/
* docs: add github badges in README
* ci: add default workflow
* ci: github: add configuration for probot-stale
* chore: ansible-lint exclusion for 106 - ansible-lint#966
* chore: enforce permissions - new ansible-lint 208
* ci: review travis config, switch to molecule
* ci: add molecule tests

## 1.1.0 (2020-07-18)

* bug: fix debian admin usergroup - PR#1
* feat: Ubuntu 20.04 support
* ci: add default-nopasswd test suite
* ci: add centos-8

## 1.0.0 (2019-07-20)

* ci: Alpine 3.9
* bug: packer: missing vagrant default insecure key (replace at start)

## 0.9.0 (2019-02-17)

* ci: travis - fix ansible TRANSFORM_INVALID_GROUP_CHARS
* chore: galaxy lint

## 0.8.0 (2018-06-16)

* feat: packer config
* feat: Ubuntu 18.04 support
* chore: use ansible omit
* chore: change ansible sudo to become
* ci: travis review
* feat: use existing distribution sudo group if possible
* defaults: set expiry to 6 months
* feat: support openbsd doas

## 0.7.0 (2017-01-29)

* feat: support Alpine Linux
* review galaxy metadata
* ci: Jenkinsfile
* ci: travis
