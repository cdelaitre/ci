# [CI Continuous Integration](../README.md)

## ansible

###Requirements
- ansible (version 1.8.4 used here)

####Installation on centos6
- add epel6 repo:
```
yum install http://mirror.pnl.gov/epel/6/i386/epel-release-6-8.noarch.rpm
```
- if python-paramiko v1.7.6+ is installed, remove it:
```
yum remove python-paramiko
```
- install ansible:
```
yum install ansible
---> Package ansible.noarch 0:1.8.4-1.el6 will be installed
---> Package python-paramiko.noarch 0:1.7.5-2.1.el6 will be installed
```
- test ansible:
```
ansible --version
 [WARNING]: The version of gmp you have installed has a known issue regarding
timing vulnerabilities when used with pycrypto. If possible, you should update
it (i.e. yum update gmp).

ansible 1.8.4
  configured module search path = None
```

####Configuration
- Server : Generate ansible rsa key
```
# root@server
useradd ansible
su - ansible
ssh-keygen -t rsa -C "ansible"
chmod 600 .ssh/id_rsa*
```

- Client : Add ansible user to sudoers
```
# root@client
useradd ansible
vi /etc/sudoers
# Add ansible user to sudoers
Defaults:ansible    !requiretty
ansible         ALL=(ALL)       NOPASSWD: ALL
```

- Server : Copy ansible rsa public key to client
```
# ansible@server
ssh-copy-id client
ssh client
```

####Test : Server => ping client
```
# ansible@server
ansible client -m ping
 [WARNING]: The version of gmp you have installed has a known issue regarding
timing vulnerabilities when used with pycrypto. If possible, you should update
it (i.e. yum update gmp).

Enter passphrase for key '/home/ansible/.ssh/id_rsa':
XXX.XXX.XXX.XXX | success >> {
    "changed": false,
    "ping": "pong"
}
```
