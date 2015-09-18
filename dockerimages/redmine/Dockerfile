FROM cdelaitre/centos:6
MAINTAINER Christophe Delaitre <cdelaitre@gmail.com>

ADD my.cnf /root/my.cnf
ADD passenger.conf /root/passenger.conf
ADD database.yml /root/database.yml
ADD service.conf /root/service.conf
ADD authorized_keys /root/authorized_keys

ADD redmine_install.sh /root/redmine_install.sh
RUN chmod +x /root/redmine_install.sh
RUN sh /root/redmine_install.sh
VOLUME  ["/var/lib/mysql"]
