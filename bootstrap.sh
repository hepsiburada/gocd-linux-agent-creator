#!/usr/bin/env bash
set -ex

apt-get update
apt-get install ansible -y

cp /vagrant/hosts /home/ubuntu/hosts
cp /vagrant/assign_agent.yml /home/ubuntu/assign_agent.yml