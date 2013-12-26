FROM ubuntu:latest
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10

RUN echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' > /etc/apt/sources.list.d/mongodb.list
RUN dpkg-divert --local --rename --add /sbin/initctl
RUN ln -s /bin/true /sbin/initctl

RUN apt-get update

RUN apt-get install -y mongodb-10gen
RUN mkdir -p /data/db
ENTRYPOINT ["mongod"]

EXPOSE 27017
