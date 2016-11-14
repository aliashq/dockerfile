FROM ubuntu:14.04
MAINTAINER huqian 279760487@qq.com
RUN apt-get update
RUN apt-get install -y nginx  
CMD ["/bin/echo", "hi"]
