## Base image
FROM ubuntu:14.10
MAINTAINER Matt and Berno  bernokl@gmail.com

# Install
RUN apt-get update
RUN apt-get -y install python-software-properties
RUN apt-get -y install software-properties-common
RUN apt-get -y install wget
RUN apt-get -y install git
RUN apt-get -y install salt-minion
ENV DEBIAN_FRONTEND noninteractive
RUN git clone https://github.com/sporkd2/salting.git
RUN cp -R salting/salt/roots/ /srv/salt/
RUN cp -R salting/salt/pillars/ /srv/pillars/
ADD minion-docker /etc/salt/minion
RUN salt-call --local state.highstate


