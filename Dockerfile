FROM centos:latest
MAINTAINER Jaynath120.kumar@gmail.com

RUN yum update -y && yum install -y git openssh-server wget unzip

# Download pyhton 2.7, pip and also install python dependent packages using pip
RUN yum install -y python2 python2-pip && pip2 install selenium requests

# Download chromedriver 2.40 and unzip it
RUN wget https://chromedriver.storage.googleapis.com/2.40/chromedriver_linux64.zip && unzip chromedriver_linux64.zip && mv chromedriver /usr/local/bin

# Download chrome browser
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
RUN yum install -y google-chrome-stable_current_x86_64.rpm Xvfb

RUN mkdir -p /root/shared_volume

VOLUME /root/shared_volume

USER root
WORKDIR /root
EXPOSE 80
