FROM ubuntu:14.04
MAINTAINER huqian 279760487@qq.com
RUN apt-get update
RUN apt-get install -y nginx  
CMD ["/bin/echo", "hi"]
RUN apt-get install -y vim
RUN touch main.c
RUN echo "#include<stdio.h> \n int main(){ \n printf(\"hello world!\"); \n return 0; \n}" >main.c
RUN cat main.c
RUN apt-get install -y gcc
RUN gcc main.c
RUN ./a.out
