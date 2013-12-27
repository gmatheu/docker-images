FROM ubuntu:latest

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN dpkg-divert --local --rename --add /sbin/initctl
RUN ln -s /bin/true /sbin/initctl

RUN apt-get update

RUN apt-get install -y memcached
ENTRYPOINT ["memcached", "-u", "daemon"]

EXPOSE 11211
