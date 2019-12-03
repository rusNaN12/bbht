#!/bin/bash
echo 'remove unscd explicite errors' 
apt remove unscd

echo "add user {$1}"
adduser $1

echo "make user {$1} sudo"
usermod -aG sudo $1 

cp -r ~/.ssh /home/$1
chown -R sammy:sammy /home/$1/.ssh

