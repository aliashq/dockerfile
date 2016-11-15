FROM centos:latest
MAINTAINER huqian 279760487@qq.com
RUN yum update -y
RUN yum install -y git
RUN yum install -y net-tools
RUN yum install -y openssh* 
RUN ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key
RUN ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key
RUN ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key

RUN /usr/sbin/sshd -D &
RUN whoami
RUN ps -aux

RUN git clone https://github.com/aliashq/dockerfile.git
RUN yum install -y gcc
RUN ls
RUN cd dockerfile
RUN ls dockerfile/
RUN gcc dockerfile/main.c -o main
RUN ./main
