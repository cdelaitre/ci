FROM php:7.0-apache
# install ssh-client, vim
RUN apt-get update && apt-get install -y \
	openssh-client \
	vim \
	--no-install-recommends && rm -r /var/lib/apt/lists/*
# install ssh2 module
RUN \
	pecl install ssh2 channel://pecl.php.net/ssh2-1.0 \
	&& echo "extension=ssh2.so" > /usr/local/etc/php/conf.d/ext-ssh2.ini

