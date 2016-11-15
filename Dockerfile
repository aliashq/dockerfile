FROM centos:latest
MAINTAINER huqian 279760487@qq.com
RUN yum update -y
RUN yum install -y git
RUN yum install -y net-tools
RUN yum install -y ssh
RUN systemctl restart sshd
RUN ps -e

RUN git clone https://github.com/docker/docker.git

RUN ping google.com

