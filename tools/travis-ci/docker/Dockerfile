FROM centos:5.11
MAINTAINER jmk "julien.malik@paraiso.me"

ENV LC_ALL C
ENV TERM xterm

RUN yum -y update; yum -y install gcc make which git redhat-lsb libidn python python-lxml openssh-clients; yum clean all
