#!/bin/bash
echo 'remove unscd explicite errors' 
apt remove unscd

echo "add user {$1}"
adduser $1

echo "make user {$1} sudo"
usermod -aG sudo $1 

cp -r ~/.ssh /home/$1
chown -R $1:$1 /home/$1/.ssh

echo "fix ssh persistend connection"
echo "TCPKeepAlive yes" >> /etc/ssh/sshd_config 
echo "ClientAliveInterval 30" >> /etc/ssh/sshd_config 
echo "ClientAliveCountMax 99999" >> /etc/ssh/sshd_config

service sshd restart
