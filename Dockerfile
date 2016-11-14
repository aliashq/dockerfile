FROM ubuntu:14.04
MAINTAINER huqian 279760487@qq.com
RUN apt-get update
RUN apt-get install -y nginx  
CMD ["/bin/echo", "hi"]
RUN apt-get install -y vim
RUN touch main.c
RUN echo "#include<stdio.h> int main(){printf("hello world!\n"); return 0;}" >main.c
