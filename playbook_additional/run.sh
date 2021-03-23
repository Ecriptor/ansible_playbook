#!/bin/bash
docker run -it -d --rm --name ubuntu_netology -d pycontribs/ubuntu:latest
docker run -it -d --rm --name centos_netology -d centos:latest
docker run -it -d --rm --name fedora_netology -d fedora:latest
ansible-playbook -i inventory/prod.yml --ask-vault-pass site.yml
docker stop $(docker ps -qa)
