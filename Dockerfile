FROM centos:7
#FROM centos/python-36-centos7

LABEL version="1.3"
LABEL maintainer="Andy Mason"
LABEL description="Ansible environment setup for NetApp modules"

RUN yum update git && yum install -y epel-release && yum install -y python python-pip git && pip install --upgrade pip && pip install ansible && pip install netapp-lib
# && git clone --single-branch --branch dockerupdates http://github.com/jasnic02/deploy.git /deploy
# && pip install solidfire-sdk-python
# && git clone http://github.com/netappdeploy/deploy.git

ADD . /deploy
