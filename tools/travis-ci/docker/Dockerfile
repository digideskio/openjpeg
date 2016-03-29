FROM centos:5.11
MAINTAINER jmk "julien.malik@paraiso.me"

ENV LC_ALL C
ENV TERM xterm

RUN yum -y update; yum -y install gcc make libtool elfutils; yum clean all

# CMD ["/bin/bash"]
