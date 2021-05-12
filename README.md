# Ansible roles

A collection of Ansible roles for web developers, tested on Ubuntu 20.04.

# Contents

- [Installation](#installation)
- [Setting up a new server (Running Ubuntu 20.04)](#setting-up-a-new-server-running-ubuntu-20.04)
- [Deploying a Node frontend application](#deploying-a-node-frontend-application)
- [Deploying a Node backend application](#deploying-a-node-backend-application)

# Installation

- Install [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html) on your local machine.
- Create a directory where you will store your servers paybooks.
- Inside that directory, clone this repository and name it `roles`:
```
git clone https://github.com/webNeat/ansible-roles.git roles
```

# Setting up a new server (Running Ubuntu 20.04)

**On the server** 
- Create a new user with the same username as your local username (this will make commands easier):
```
~# useradd <username>
~# usermod -aG sudo <username>
```
- Add your public SSH key to the authorized keys for that user (that way you can ssh without password).

**On local machine**
- Choose a name for your server and add it to `/etc/hosts`
```
<IP> <server-name>
```
And to `/etc/ansible/hosts`
```
<server-name>
```
- Create a `<server-name>.yml` file on your playbooks directory you created on the installation step:
```yaml
- hosts: <server-name>
  roles:
    - install-git
    - generate-ssh-key
    - install-nginx
    - install-certbot-nginx
  vars:
    git_name: <your-full-name>
    git_email: <your-email>
    ssh_email: <your-email>
    ssh_key_path: ~/.ssh/id_rsa
```
- Run the playbook
```
ansible-playbook <server-name>.yml -K
```

**Add ssh key to Github**

- SSH into your server and copy the content of your public ssh key `~/.ssh/id_rsa.pub`, and add it to your [Github SSH keys](https://github.com/settings/keys)

# Deploying a Node frontend application
...

# Deploying a Node backend application
...