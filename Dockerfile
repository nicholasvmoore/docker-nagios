# Nagios
#
# Version: 0.0.1

FROM centos:centos7
MAINTAINER Nicholas Moore

VOLUME /var/lib/plexmediaserver/
VOLUME /media

RUN cp /usr/share/zoneinfo/US/Pacific /etc/localtime;\
    rpm -Uvh http://mirror.us.leaseweb.net/epel/7/x86_64/e/epel-release-7-2.noarch.rpm;\
    yum -y install nginx nagios nagios-plugins-all php nagios-plugins-nrpe nrpe;\
    yum clean all

EXPOSE 80 5666

#ENTRYPOINT ["/start.sh"]
ENTRYPOINT ["/bin/bash"]