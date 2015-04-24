############################################################
# A Docker Container Installation of Redis
############################################################

#Declare CentOS the latest
FROM centos

Maintainer Joel Ferrier

RUN yum update -y

RUN yum install epel-release -y

RUN yum install redis -y

ADD redis.conf /etc/redis.conf

EXPOSE 6379

# Startup commands
CMD redis-server
