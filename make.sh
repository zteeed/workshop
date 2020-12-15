#!/bin/bash

SCRIPT=$(realpath -s $0)
SCRIPTPATH=$(dirname $SCRIPT)

export ANSIBLE_HOST_KEY_CHECKING=False
ansible-playbook $SCRIPTPATH/deploy.yml
