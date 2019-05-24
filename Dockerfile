#Ansible enviornment setup for NetApp modules
#Version 1.0
FROM centos:7

MAINTAINER Andy Mason version: 1.1

RUN yum install -y epel-release && yum install -y python python-pip git && pip install --upgrade pip && pip install ansible && pip install netapp-lib && pip install solidfire-sdk-python && git clone http://github.com/netappdeploy/deploy.git

CMD ansible-playbook /deploy/cluster_setup.yml
