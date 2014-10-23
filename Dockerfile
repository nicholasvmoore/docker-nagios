# Nagios
#
# Version: 0.0.1

FROM centos:centos7
MAINTAINER Nicholas Moore

VOLUME /var/lib/plexmediaserver/
VOLUME /media

RUN rpm -Uvh http://mirrors.mit.edu/epel/7/x86_64/e/epel-release-7-2.noarch.rpm;\
    rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm;\
    yum -y install nagios nagios-plugins-all nagios-plugins-nrpe nrpe php httpd;\

EXPOSE 80 443

ENTRYPOINT ["/start.sh"]