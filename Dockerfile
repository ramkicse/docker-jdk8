FROM centos

MAINTAINER Ramki <ramkicse@gmail.com>

RUN yum -y update && yum clean all

RUN yum install -y wget tar zip && yum clean all

RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u65-b17/jdk-8u65-linux-x64.rpm  && rpm -ivh jdk-8u65-linux-x64.rpm && rm -rf jdk-8u65-linux-x64.rpm

# Set the JAVA_HOME variable to make it clear where Java is located
ENV JAVA_HOME /usr/java/jdk1.8.0_65
