FROM php:7.0-apache
# install ssh-client
RUN apt-get update && apt-get install -y \
	openssh-client \
	libssh2–1-dev \
	libssh2–1 \
	vim \
	--no-install-recommends && rm -r /var/lib/apt/lists/*
# install ssh2 module
RUN \
	pecl install ssh2 \
	&& echo "extension=ssh2.so" > /usr/local/etc/php/conf.d/ext-ssh2.ini

