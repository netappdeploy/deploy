FROM centos:8
#FROM centos/python-36-centos7

LABEL version="1.4"
LABEL maintainer="Andy Mason"
LABEL description="Ansible environment setup for NetApp modules"

RUN yum -y install git && yum install -y epel-release && yum install -y python3 python3-pip git && pip3 install ansible && pip3 install netapp-lib && pip3 install requests
# && git clone --single-branch --branch dockerupdates http://github.com/jasnic02/deploy.git /deploy
# && pip install solidfire-sdk-python
# && git clone http://github.com/netappdeploy/deploy.git

ADD . /deploy