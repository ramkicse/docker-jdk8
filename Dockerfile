FROM centos
MAINTAINER Ramki <rmkicse@gmail.com>

RUN yum install -y wget && yum clean all

RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u45-b14/jdk-8u45-linux-x64.rpm && rpm -ivh jdk-8u45-linux-x64.rpm && rm -rf jdk-8u45-linux-x64.rpm


