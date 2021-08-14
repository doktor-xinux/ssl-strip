#Baseimage ubuntu 16:04
FROM ubuntu:16.04
#we are the maintainer 
MAINTAINER technik@xinux.de
#only run at built
RUN  apt-get update && apt-get install -y sslstrip tcpdump iputils-ping  && apt-get clean
#COPY start.sh /
EXPOSE 10000
EXPOSE 10001
CMD ["/usr/bin/sslstrip", "-afkw" , "/dev/stdout"]
