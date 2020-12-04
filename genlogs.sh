#!/bin/bash

logdir=./logs
mkdir -p ${logdir}

rm -f ~/log.list /tmp/log.list ./log.repos
ansible-playbook -i 192.168.122.130, site.yml 2>&1 | tee ${logdir}/log.v0

rm -f ~/log.list /tmp/log.list ./log.repos
ansible-playbook -i 192.168.122.130, site.yml -v 2>&1 | tee ${logdir}/log.v1

rm -f ~/log.list /tmp/log.list ./log.repos
ansible-playbook -i 192.168.122.130, site.yml -vv 2>&1 | tee ${logdir}/log.v2

rm -f ~/log.list /tmp/log.list ./log.repos
ansible-playbook -i 192.168.122.130, site.yml -vvv 2>&1 | tee ${logdir}/log.v3

rm -f ~/log.list /tmp/log.list ./log.repos
ansible-playbook -i 192.168.122.130, site.yml -vvvv 2>&1 | tee ${logdir}/log.v4
