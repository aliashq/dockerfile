FROM centos:latest
MAINTAINER huqian 279760487@qq.com
RUN yum update
RUN yum install -y git
RUN git clone https://github.com/docker/docker.git

