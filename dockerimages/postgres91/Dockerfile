FROM cdelaitre/centos6
MAINTAINER Christophe Delaitre <cdelaitre@gmail.com>

# Install EPEL
RUN yum -y install http://mirror.pnl.gov/epel/6/i386/epel-release-6-8.noarch.rpm

# Install Development Tools
RUN yum -y groupinstall "Development Tools"

# Install pg repo
RUN rpm -i http://yum.postgresql.org/9.1/redhat/rhel-6-x86_64/pgdg-centos91-9.1-4.noarch.rpm

# Install server
RUN yum install -y postgresql91-server postgresql91-contrib

# Initialize DB data files
RUN su - postgres -c '/usr/pgsql-9.1/bin/initdb -D /var/lib/pgsql/data'

# Set permissions to allow logins, trust the bridge, this is the default for docker
RUN echo "host    all             all             172.17.42.1/32            trust" >> /var/lib/pgsql/data/pg_hba.conf

# Listen on all interfaces
RUN echo "listen_addresses='*'" >> /var/lib/pgsql/data/postgresql.conf

EXPOSE 5432

# start the database
CMD su - postgres -c '/usr/pgsql-9.1/bin/postgres -D /var/lib/pgsql/data'
