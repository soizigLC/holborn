Holborn
=======

Configuration de mes environnements linux (personnel, travail, serveur, etc...).


Développement
-------------

### Environnement technique

Ce projet utilise [Ansible](https://www.ansible.com/) pour automatiser la configuration des environnements.

* [Ansible](https://www.ansible.com/)
* [Ansible Documentation](http://docs.ansible.com/)
* [Ansible Galaxy](https://galaxy.ansible.com/)

### Installation

* Installer [Ansible](https://www.ansible.com/) en suivant [cette procédure](http://docs.ansible.com/ansible/intro_installation.html)
    * Exemple pour une machine [Debian/Ubuntu](http://docs.ansible.com/ansible/intro_installation.html#latest-releases-via-apt-ubuntu) :
```shell
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible
```
* Cloner ce projet `git clone git@gitlab.com:smouquet/holborn.git`
* Se placer dans le répertoire du projet `cd holborn`


Utilisation
-----------

### Prérequis

* Suivre la même procédure d'installation que ci-dessus
* Installer les dépendances `sudo ansible-galaxy install -r requirements.yml`

### Exemples

Configuration d'une machine de développement personnelle :

`ansible-playbook -i development home.yml --extra-vars "ansible_become_pass=sebastien"`
