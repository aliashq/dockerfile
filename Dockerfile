FROM centos:latest
MAINTAINER huqian 279760487@qq.com
RUN sudo yum update
RUN curl -fsSL https://get.docker.com/ | sh
RUN sudo systemctl enable docker.service
RUN sudo systemctl start docker
RUN https://github.com/docker/docker.git

