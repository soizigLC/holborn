#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$DIR"

echo
echo -e "\e[36m* Installation d'Ansible (pour Ubuntu) *"
echo -e "\e[35m========================================"
echo -e "\e[39m"

sudo apt-get install python-pip
sudo pip install --upgrade pip
sudo pip install ansible

echo
echo -e "\e[36m* Installation des dépendances (requirements) *"
echo -e "\e[35m==============================================="
echo -e "\e[39m"

sudo ansible-galaxy install -r requirements.yml

echo
echo -e "\e[36m* Changement des droits sur .ansible *"
echo -e "\e[35m======================================"
echo -e "\e[39m"

user=$(whoami)

sudo chown -R $user:$user /home/$user/.ansible
sudo chown -R $user:$user /home/$user/.ansible_galaxy

echo
echo -e "\e[36m* Let's playbooks ! *"
echo -e "\e[35m====================="
echo -e "\e[39m"

echo -e "\e[39m * Installation d'une VM de développement personnelle :"
echo -e "\e[39m"
echo -e "\e[34m       ansible-playbook -i development home.yml --extra-vars \"ansible_become_pass=sebastien\""
echo -e "\e[39m"

