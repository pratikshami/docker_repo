FROM www.cybage-docker-registry.com:9080/ubuntu

MAINTAINER pratiksha misal <pratikshami@cybage.com>

RUN yum -y install wget make npm tar

RUN mkdir /src

RUN cd /src
RUN wget http://nodejs.org/dist/v0.12.0/node-v0.12.0.tar.gz

RUN tar -zxvf node-v0.12.0.tar.gz 
 
RUN yum install gcc gcc-c++ -y

RUN cd node-v* && ./configure && make && make install


EXPOSE 4545

#creating a volume 
RUN mkdir -p /data/node_backend
VOLUME ["/data/node_backend"]

