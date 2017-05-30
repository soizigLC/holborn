#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$DIR"

echo
echo -e "\e[36m* Installation d'Ansible (pour Ubuntu) *"
echo -e "\e[35m========================================"
echo -e "\e[39m"

sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible

echo
echo -e "\e[36m* Installation des dépendances (requirements) *"
echo -e "\e[35m==============================================="
echo -e "\e[39m"

sudo ansible-galaxy install -r requirements.yml

echo
echo -e "\e[36m* Let's playbooks ! *"
echo -e "\e[35m====================="
echo -e "\e[39m"

echo -e "\e[39m * Installation d'une VM de développement personnelle :"
echo -e "\e[39m"
echo -e "\e[34m       ansible-playbook -i development home.yml --extra-vars \"ansible_become_pass=sebastien\""
echo -e "\e[39m"

