FROM centos:6

MAINTAINER William GARCIA <william.garcia@pmsipilot.com>

RUN yum update -y ; yum install -y epel-release ; yum install -y salt-api

COPY ./etc /
COPY ./salt /

VOLUME /etc
VOLUME /salt

EXPOSE 8080

CMD ["/bin/bash"]

