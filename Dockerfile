FROM centos:8

LABEL version="1.4"
LABEL maintainer="Andy Mason"
LABEL description="Ansible environment setup for NetApp modules"

RUN yum -y install git && yum install -y epel-release && yum install -y python3 python3-pip git && pip3 install ansible && pip3 install netapp-lib && pip3 install requests

ADD . /deploy
