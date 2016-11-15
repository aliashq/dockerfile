FROM centos:latest
MAINTAINER huqian 279760487@qq.com
RUN yum update
RUN curl -fsSL https://get.docker.com/ | sh
RUN systemctl enable docker.service
RUN https://github.com/docker/docker.git

