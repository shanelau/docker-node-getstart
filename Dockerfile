FROM centos:latest

ENV NODE_VERSION 6.0.0


RUN yum update && \
yum -y install wget && \
wget -qO-  http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz | tar zxv && \
npm config set registry http://rnpm.hz.netease.com/ && \
npm install -g pm2 && \
cd /www-web1

PATH /node-v$NODE_VERSION-linux-x64/bin:$PATH

ADD . /www/node-web1

WORKDIR /www/node-web1

CMD ["pm2-docker", "process.yml"]
