Assigning GOCD agents with Ansible.
You need a linux machine containing Ansible, thats why we use Vagrant.

__Installs Go Agent version 17.2.0-4587__

### Prerequisites
You need a linux machine containing Ansible, thats why we are going to use Vagrant.
* You already installed Vagrant and Oracle Virtual Machine.
* Change agent ip list in `hosts` file
* Change docker registry server ip in `daemon.json`

### Creating a new virtual machine consisting ansible
* Go to the root directory in bash/cmd. (root dir consists Vagrantfile)
* `vagrant up`

Once Vagrant set the new vm, go inside it by: `vagrant ssh`

##### One time setup:
Adding your generated ssh key to the remotes:
for each remote: 
```
ubuntu@ubuntu-xenial:~$ ssh-keygen
Generating public/private rsa key pair.
Enter file in which to save the key (/home/ubuntu/.ssh/id_rsa):
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in /home/ubuntu/.ssh/id_rsa.
Your public key has been saved in /home/ubuntu/.ssh/id_rsa.pub.
The key fingerprint is:
SHA256:FoOStEG/xqbJuY/5Nu/IruFylc2k0SQwE8Llbi3IR0s ubuntu@ubuntu-xenial
The key's randomart image is:
+---[RSA 2048]----+
| ..oXo           |
|  .+ B...        |
|    E o+o        |
| . = =..oo       |
|  o * *BS        |
|   + B+.o        |
|    *.           |
|  ...*o.         |
|   o***+o        |
+----[SHA256]-----+
ubuntu@ubuntu-xenial:~$

$ ssh-copy-id root@REMOTE_IP
```

### Assigining agents
* change `hosts` file
* run `ansible-playbook -i hosts -s -u root assign_agent.yml`

__Agent restart may be needed for assigning docker group__