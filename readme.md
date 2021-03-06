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

* Cloner ce projet `git clone git@gitlab.com:SebastienM4j/holborn.git`
* Installer [Ansible](https://www.ansible.com/) en suivant [cette procédure](http://docs.ansible.com/ansible/intro_installation.html)
    * Pour Ubuntu, exécuter simplement le script `./getstarted.sh`


Utilisation
-----------

### Prérequis pour une machine (VM) de développement

* Installer [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
    * Installer également l'Extension Pack
* Télécharger un ISO d'une distribution Ubuntu
* Créer une nouvelle VM VirtualBox de type Linux Ubuntu 64 bits
    * Configurer les ressources
    * Configurer les répertoires de l'hôte à monter automatiquement
* Démarrer la VM en lui fournissant l'ISO afin d'installer Ubuntu
* Après l'installation, installer les suppléments invités
    * Cf [page 70, § 4.2.2.1](http://download.virtualbox.org/virtualbox/UserManual_fr_FR.pdf)
    * `sudo apt-get install dkms`
    * Aller dans le répertoire de montage du CD
    * `sudo sh ./VBoxLinuxAdditions.run`

* Clé SSH
    * Pour récupérer une clé SSH d'une précédente VM
        * Sur la précédente VM, copier le répertoire `~/.ssh` dans un répertoire de l'hôte `cp -R ~/.ssh /media/sf_something`
        * Dans la nouvelle VM paramétrer ce même répertoire en tant que dossier partagé
        * Pour pouvoir y accéder ajoute le groupe `vboxsf` à l'utilisateur avec `sudo usermod -a -G vboxsf sebastien`
        * Puis copier le répertoire `.ssh` dans le home `cp -R /media/sf_something/.ssh ~/`
    * Sinon créer une nouvelle clé
        * Créer un clé SSH `ssh-keygen -C "sebastien@email.com"`
        * Copier la clé publique `~/.ssh/id_rsa.pub` dans [GitLab](https://gitlab.com/profile/keys)

* Installer Git `sudo apt-get install git`
* Créer un répertoire pour accueillir le projet `mkdir -p /home/sebastien/workspace/private ; cd /home/sebastien/workspace/private`
* Cloner ce projet `git clone git@gitlab.com:SebastienM4j/holborn.git ; cd holborn`
* Installer [Ansible](https://www.ansible.com/) en suivant [cette procédure](http://docs.ansible.com/ansible/intro_installation.html)
    * Pour Ubuntu, exécuter simplement le script `./getstarted.sh`

#### Configuration d'une machine de développement personnelle

`ansible-playbook -i development home.yml --limit home --ask-become-pass --ask-vault-pass`

#### Configuration d'une machine de développement pour Apologic

`ansible-playbook -i development apologic.yml --limit apologic --ask-become-pass --ask-vault-pass`

