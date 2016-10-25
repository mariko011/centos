<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `joomla`

-	[`joomla:3.6.4-apache`](#joomla364-apache)
-	[`joomla:3.6-apache`](#joomla36-apache)
-	[`joomla:3-apache`](#joomla3-apache)
-	[`joomla:apache`](#joomlaapache)
-	[`joomla:3.6.4`](#joomla364)
-	[`joomla:3.6`](#joomla36)
-	[`joomla:3`](#joomla3)
-	[`joomla:latest`](#joomlalatest)
-	[`joomla:3.6.4-apache-php7`](#joomla364-apache-php7)
-	[`joomla:3.6-apache-php7`](#joomla36-apache-php7)
-	[`joomla:3-apache-php7`](#joomla3-apache-php7)
-	[`joomla:apache-php7`](#joomlaapache-php7)
-	[`joomla:3.6.4-fpm`](#joomla364-fpm)
-	[`joomla:3.6-fpm`](#joomla36-fpm)
-	[`joomla:3-fpm`](#joomla3-fpm)
-	[`joomla:fpm`](#joomlafpm)
-	[`joomla:3.6.4-fpm-php7`](#joomla364-fpm-php7)
-	[`joomla:3.6-fpm-php7`](#joomla36-fpm-php7)
-	[`joomla:3-fpm-php7`](#joomla3-fpm-php7)
-	[`joomla:fpm-php7`](#joomlafpm-php7)

## `joomla:3.6.4-apache`

```console
$ docker pull joomla@sha256:9346eb9570eaa530a8f38ae80e6e9a3e415c15ca2817781cadc492105d6571bd
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6.4-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.3 MB (172337223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a5bf1c279488de8acf4c12906ebd85d45b9473841dac3d0fe2af070cb531642`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:06:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:06:59 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:07:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:07:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:09:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:28 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:09:29 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:09:29 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 06:34:47 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 22 Oct 2016 06:34:49 GMT
RUN a2enmod rewrite
# Sat, 22 Oct 2016 06:35:18 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 22 Oct 2016 06:35:26 GMT
RUN docker-php-ext-install mysqli
# Sat, 22 Oct 2016 06:35:31 GMT
RUN docker-php-ext-install mcrypt
# Sat, 22 Oct 2016 06:35:31 GMT
VOLUME [/var/www/html]
# Tue, 25 Oct 2016 17:00:49 GMT
ENV JOOMLA_VERSION=3.6.4
# Tue, 25 Oct 2016 17:00:49 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Tue, 25 Oct 2016 17:00:57 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 25 Oct 2016 17:00:58 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Tue, 25 Oct 2016 17:00:58 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 25 Oct 2016 17:00:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Oct 2016 17:00:59 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6568948eed6bcf50d20e2726bfeef451b165d6461df82e391de4b11f396220a0`  
		Last Modified: Fri, 21 Oct 2016 23:09:41 GMT  
		Size: 12.6 MB (12568563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc0094a10b566d20f6dc2161e5ec8811cd3b4b5af1bf5460842c8acf33dfd9e`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7142d56062eceba4a61183c2191117d8170f020bfbc5fbc0653394ccdce39648`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 15.9 MB (15917122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a44a9f63706f4fd404e88856d3c71546e8a5bd9952c8832d01a0f8385936262`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7c9a7c351590d606233e40bda4f8f7c2be0bc8f6f868188d74b6c73876bb5c`  
		Last Modified: Fri, 21 Oct 2016 23:09:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5c5e57af57a52371283850c783a06c0c81b587090dde45976432787e6c5dff9`  
		Last Modified: Sat, 22 Oct 2016 06:35:55 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616063eaa571d3213b053bdfa37b8e9abf81a799d3222ead7780b13b15104b69`  
		Last Modified: Sat, 22 Oct 2016 06:35:58 GMT  
		Size: 3.0 MB (3048554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874367e6cae0d57be3228fd5502746ae31725f35afa56037602cf39bdce014d9`  
		Last Modified: Sat, 22 Oct 2016 06:35:52 GMT  
		Size: 266.1 KB (266113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2695b38e0553af28af3aa82f1f3a503a749909fe6287ac335e38a0e6ad98804d`  
		Last Modified: Sat, 22 Oct 2016 06:35:52 GMT  
		Size: 61.2 KB (61182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3510aceb08d0bd403a095c9a16a0e59d3a03956e1fd32f58ad89b1a2f8c20c91`  
		Last Modified: Tue, 25 Oct 2016 17:01:49 GMT  
		Size: 8.7 MB (8674914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea061e614a7d8aaaabe323aa373da66d8ef96dd4a601f01a570225c5b6a54f5`  
		Last Modified: Tue, 25 Oct 2016 17:01:45 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d91818807485593faf72a4114d0b1953c01216de7916fe474500ada0f7b542`  
		Last Modified: Tue, 25 Oct 2016 17:01:46 GMT  
		Size: 603.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6-apache`

```console
$ docker pull joomla@sha256:9346eb9570eaa530a8f38ae80e6e9a3e415c15ca2817781cadc492105d6571bd
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.3 MB (172337223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a5bf1c279488de8acf4c12906ebd85d45b9473841dac3d0fe2af070cb531642`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:06:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:06:59 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:07:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:07:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:09:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:28 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:09:29 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:09:29 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 06:34:47 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 22 Oct 2016 06:34:49 GMT
RUN a2enmod rewrite
# Sat, 22 Oct 2016 06:35:18 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 22 Oct 2016 06:35:26 GMT
RUN docker-php-ext-install mysqli
# Sat, 22 Oct 2016 06:35:31 GMT
RUN docker-php-ext-install mcrypt
# Sat, 22 Oct 2016 06:35:31 GMT
VOLUME [/var/www/html]
# Tue, 25 Oct 2016 17:00:49 GMT
ENV JOOMLA_VERSION=3.6.4
# Tue, 25 Oct 2016 17:00:49 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Tue, 25 Oct 2016 17:00:57 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 25 Oct 2016 17:00:58 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Tue, 25 Oct 2016 17:00:58 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 25 Oct 2016 17:00:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Oct 2016 17:00:59 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6568948eed6bcf50d20e2726bfeef451b165d6461df82e391de4b11f396220a0`  
		Last Modified: Fri, 21 Oct 2016 23:09:41 GMT  
		Size: 12.6 MB (12568563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc0094a10b566d20f6dc2161e5ec8811cd3b4b5af1bf5460842c8acf33dfd9e`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7142d56062eceba4a61183c2191117d8170f020bfbc5fbc0653394ccdce39648`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 15.9 MB (15917122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a44a9f63706f4fd404e88856d3c71546e8a5bd9952c8832d01a0f8385936262`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7c9a7c351590d606233e40bda4f8f7c2be0bc8f6f868188d74b6c73876bb5c`  
		Last Modified: Fri, 21 Oct 2016 23:09:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5c5e57af57a52371283850c783a06c0c81b587090dde45976432787e6c5dff9`  
		Last Modified: Sat, 22 Oct 2016 06:35:55 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616063eaa571d3213b053bdfa37b8e9abf81a799d3222ead7780b13b15104b69`  
		Last Modified: Sat, 22 Oct 2016 06:35:58 GMT  
		Size: 3.0 MB (3048554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874367e6cae0d57be3228fd5502746ae31725f35afa56037602cf39bdce014d9`  
		Last Modified: Sat, 22 Oct 2016 06:35:52 GMT  
		Size: 266.1 KB (266113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2695b38e0553af28af3aa82f1f3a503a749909fe6287ac335e38a0e6ad98804d`  
		Last Modified: Sat, 22 Oct 2016 06:35:52 GMT  
		Size: 61.2 KB (61182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3510aceb08d0bd403a095c9a16a0e59d3a03956e1fd32f58ad89b1a2f8c20c91`  
		Last Modified: Tue, 25 Oct 2016 17:01:49 GMT  
		Size: 8.7 MB (8674914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea061e614a7d8aaaabe323aa373da66d8ef96dd4a601f01a570225c5b6a54f5`  
		Last Modified: Tue, 25 Oct 2016 17:01:45 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d91818807485593faf72a4114d0b1953c01216de7916fe474500ada0f7b542`  
		Last Modified: Tue, 25 Oct 2016 17:01:46 GMT  
		Size: 603.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-apache`

```console
$ docker pull joomla@sha256:9346eb9570eaa530a8f38ae80e6e9a3e415c15ca2817781cadc492105d6571bd
```

-	Platforms:
	-	linux; amd64

### `joomla:3-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.3 MB (172337223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a5bf1c279488de8acf4c12906ebd85d45b9473841dac3d0fe2af070cb531642`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:06:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:06:59 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:07:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:07:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:09:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:28 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:09:29 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:09:29 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 06:34:47 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 22 Oct 2016 06:34:49 GMT
RUN a2enmod rewrite
# Sat, 22 Oct 2016 06:35:18 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 22 Oct 2016 06:35:26 GMT
RUN docker-php-ext-install mysqli
# Sat, 22 Oct 2016 06:35:31 GMT
RUN docker-php-ext-install mcrypt
# Sat, 22 Oct 2016 06:35:31 GMT
VOLUME [/var/www/html]
# Tue, 25 Oct 2016 17:00:49 GMT
ENV JOOMLA_VERSION=3.6.4
# Tue, 25 Oct 2016 17:00:49 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Tue, 25 Oct 2016 17:00:57 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 25 Oct 2016 17:00:58 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Tue, 25 Oct 2016 17:00:58 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 25 Oct 2016 17:00:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Oct 2016 17:00:59 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6568948eed6bcf50d20e2726bfeef451b165d6461df82e391de4b11f396220a0`  
		Last Modified: Fri, 21 Oct 2016 23:09:41 GMT  
		Size: 12.6 MB (12568563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc0094a10b566d20f6dc2161e5ec8811cd3b4b5af1bf5460842c8acf33dfd9e`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7142d56062eceba4a61183c2191117d8170f020bfbc5fbc0653394ccdce39648`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 15.9 MB (15917122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a44a9f63706f4fd404e88856d3c71546e8a5bd9952c8832d01a0f8385936262`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7c9a7c351590d606233e40bda4f8f7c2be0bc8f6f868188d74b6c73876bb5c`  
		Last Modified: Fri, 21 Oct 2016 23:09:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5c5e57af57a52371283850c783a06c0c81b587090dde45976432787e6c5dff9`  
		Last Modified: Sat, 22 Oct 2016 06:35:55 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616063eaa571d3213b053bdfa37b8e9abf81a799d3222ead7780b13b15104b69`  
		Last Modified: Sat, 22 Oct 2016 06:35:58 GMT  
		Size: 3.0 MB (3048554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874367e6cae0d57be3228fd5502746ae31725f35afa56037602cf39bdce014d9`  
		Last Modified: Sat, 22 Oct 2016 06:35:52 GMT  
		Size: 266.1 KB (266113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2695b38e0553af28af3aa82f1f3a503a749909fe6287ac335e38a0e6ad98804d`  
		Last Modified: Sat, 22 Oct 2016 06:35:52 GMT  
		Size: 61.2 KB (61182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3510aceb08d0bd403a095c9a16a0e59d3a03956e1fd32f58ad89b1a2f8c20c91`  
		Last Modified: Tue, 25 Oct 2016 17:01:49 GMT  
		Size: 8.7 MB (8674914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea061e614a7d8aaaabe323aa373da66d8ef96dd4a601f01a570225c5b6a54f5`  
		Last Modified: Tue, 25 Oct 2016 17:01:45 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d91818807485593faf72a4114d0b1953c01216de7916fe474500ada0f7b542`  
		Last Modified: Tue, 25 Oct 2016 17:01:46 GMT  
		Size: 603.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:apache`

```console
$ docker pull joomla@sha256:9346eb9570eaa530a8f38ae80e6e9a3e415c15ca2817781cadc492105d6571bd
```

-	Platforms:
	-	linux; amd64

### `joomla:apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.3 MB (172337223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a5bf1c279488de8acf4c12906ebd85d45b9473841dac3d0fe2af070cb531642`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:06:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:06:59 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:07:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:07:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:09:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:28 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:09:29 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:09:29 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 06:34:47 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 22 Oct 2016 06:34:49 GMT
RUN a2enmod rewrite
# Sat, 22 Oct 2016 06:35:18 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 22 Oct 2016 06:35:26 GMT
RUN docker-php-ext-install mysqli
# Sat, 22 Oct 2016 06:35:31 GMT
RUN docker-php-ext-install mcrypt
# Sat, 22 Oct 2016 06:35:31 GMT
VOLUME [/var/www/html]
# Tue, 25 Oct 2016 17:00:49 GMT
ENV JOOMLA_VERSION=3.6.4
# Tue, 25 Oct 2016 17:00:49 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Tue, 25 Oct 2016 17:00:57 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 25 Oct 2016 17:00:58 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Tue, 25 Oct 2016 17:00:58 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 25 Oct 2016 17:00:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Oct 2016 17:00:59 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6568948eed6bcf50d20e2726bfeef451b165d6461df82e391de4b11f396220a0`  
		Last Modified: Fri, 21 Oct 2016 23:09:41 GMT  
		Size: 12.6 MB (12568563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc0094a10b566d20f6dc2161e5ec8811cd3b4b5af1bf5460842c8acf33dfd9e`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7142d56062eceba4a61183c2191117d8170f020bfbc5fbc0653394ccdce39648`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 15.9 MB (15917122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a44a9f63706f4fd404e88856d3c71546e8a5bd9952c8832d01a0f8385936262`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7c9a7c351590d606233e40bda4f8f7c2be0bc8f6f868188d74b6c73876bb5c`  
		Last Modified: Fri, 21 Oct 2016 23:09:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5c5e57af57a52371283850c783a06c0c81b587090dde45976432787e6c5dff9`  
		Last Modified: Sat, 22 Oct 2016 06:35:55 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616063eaa571d3213b053bdfa37b8e9abf81a799d3222ead7780b13b15104b69`  
		Last Modified: Sat, 22 Oct 2016 06:35:58 GMT  
		Size: 3.0 MB (3048554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874367e6cae0d57be3228fd5502746ae31725f35afa56037602cf39bdce014d9`  
		Last Modified: Sat, 22 Oct 2016 06:35:52 GMT  
		Size: 266.1 KB (266113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2695b38e0553af28af3aa82f1f3a503a749909fe6287ac335e38a0e6ad98804d`  
		Last Modified: Sat, 22 Oct 2016 06:35:52 GMT  
		Size: 61.2 KB (61182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3510aceb08d0bd403a095c9a16a0e59d3a03956e1fd32f58ad89b1a2f8c20c91`  
		Last Modified: Tue, 25 Oct 2016 17:01:49 GMT  
		Size: 8.7 MB (8674914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea061e614a7d8aaaabe323aa373da66d8ef96dd4a601f01a570225c5b6a54f5`  
		Last Modified: Tue, 25 Oct 2016 17:01:45 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d91818807485593faf72a4114d0b1953c01216de7916fe474500ada0f7b542`  
		Last Modified: Tue, 25 Oct 2016 17:01:46 GMT  
		Size: 603.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6.4`

```console
$ docker pull joomla@sha256:9346eb9570eaa530a8f38ae80e6e9a3e415c15ca2817781cadc492105d6571bd
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.3 MB (172337223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a5bf1c279488de8acf4c12906ebd85d45b9473841dac3d0fe2af070cb531642`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:06:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:06:59 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:07:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:07:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:09:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:28 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:09:29 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:09:29 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 06:34:47 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 22 Oct 2016 06:34:49 GMT
RUN a2enmod rewrite
# Sat, 22 Oct 2016 06:35:18 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 22 Oct 2016 06:35:26 GMT
RUN docker-php-ext-install mysqli
# Sat, 22 Oct 2016 06:35:31 GMT
RUN docker-php-ext-install mcrypt
# Sat, 22 Oct 2016 06:35:31 GMT
VOLUME [/var/www/html]
# Tue, 25 Oct 2016 17:00:49 GMT
ENV JOOMLA_VERSION=3.6.4
# Tue, 25 Oct 2016 17:00:49 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Tue, 25 Oct 2016 17:00:57 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 25 Oct 2016 17:00:58 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Tue, 25 Oct 2016 17:00:58 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 25 Oct 2016 17:00:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Oct 2016 17:00:59 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6568948eed6bcf50d20e2726bfeef451b165d6461df82e391de4b11f396220a0`  
		Last Modified: Fri, 21 Oct 2016 23:09:41 GMT  
		Size: 12.6 MB (12568563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc0094a10b566d20f6dc2161e5ec8811cd3b4b5af1bf5460842c8acf33dfd9e`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7142d56062eceba4a61183c2191117d8170f020bfbc5fbc0653394ccdce39648`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 15.9 MB (15917122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a44a9f63706f4fd404e88856d3c71546e8a5bd9952c8832d01a0f8385936262`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7c9a7c351590d606233e40bda4f8f7c2be0bc8f6f868188d74b6c73876bb5c`  
		Last Modified: Fri, 21 Oct 2016 23:09:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5c5e57af57a52371283850c783a06c0c81b587090dde45976432787e6c5dff9`  
		Last Modified: Sat, 22 Oct 2016 06:35:55 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616063eaa571d3213b053bdfa37b8e9abf81a799d3222ead7780b13b15104b69`  
		Last Modified: Sat, 22 Oct 2016 06:35:58 GMT  
		Size: 3.0 MB (3048554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874367e6cae0d57be3228fd5502746ae31725f35afa56037602cf39bdce014d9`  
		Last Modified: Sat, 22 Oct 2016 06:35:52 GMT  
		Size: 266.1 KB (266113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2695b38e0553af28af3aa82f1f3a503a749909fe6287ac335e38a0e6ad98804d`  
		Last Modified: Sat, 22 Oct 2016 06:35:52 GMT  
		Size: 61.2 KB (61182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3510aceb08d0bd403a095c9a16a0e59d3a03956e1fd32f58ad89b1a2f8c20c91`  
		Last Modified: Tue, 25 Oct 2016 17:01:49 GMT  
		Size: 8.7 MB (8674914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea061e614a7d8aaaabe323aa373da66d8ef96dd4a601f01a570225c5b6a54f5`  
		Last Modified: Tue, 25 Oct 2016 17:01:45 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d91818807485593faf72a4114d0b1953c01216de7916fe474500ada0f7b542`  
		Last Modified: Tue, 25 Oct 2016 17:01:46 GMT  
		Size: 603.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6`

```console
$ docker pull joomla@sha256:9346eb9570eaa530a8f38ae80e6e9a3e415c15ca2817781cadc492105d6571bd
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.3 MB (172337223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a5bf1c279488de8acf4c12906ebd85d45b9473841dac3d0fe2af070cb531642`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:06:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:06:59 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:07:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:07:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:09:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:28 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:09:29 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:09:29 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 06:34:47 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 22 Oct 2016 06:34:49 GMT
RUN a2enmod rewrite
# Sat, 22 Oct 2016 06:35:18 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 22 Oct 2016 06:35:26 GMT
RUN docker-php-ext-install mysqli
# Sat, 22 Oct 2016 06:35:31 GMT
RUN docker-php-ext-install mcrypt
# Sat, 22 Oct 2016 06:35:31 GMT
VOLUME [/var/www/html]
# Tue, 25 Oct 2016 17:00:49 GMT
ENV JOOMLA_VERSION=3.6.4
# Tue, 25 Oct 2016 17:00:49 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Tue, 25 Oct 2016 17:00:57 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 25 Oct 2016 17:00:58 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Tue, 25 Oct 2016 17:00:58 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 25 Oct 2016 17:00:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Oct 2016 17:00:59 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6568948eed6bcf50d20e2726bfeef451b165d6461df82e391de4b11f396220a0`  
		Last Modified: Fri, 21 Oct 2016 23:09:41 GMT  
		Size: 12.6 MB (12568563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc0094a10b566d20f6dc2161e5ec8811cd3b4b5af1bf5460842c8acf33dfd9e`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7142d56062eceba4a61183c2191117d8170f020bfbc5fbc0653394ccdce39648`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 15.9 MB (15917122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a44a9f63706f4fd404e88856d3c71546e8a5bd9952c8832d01a0f8385936262`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7c9a7c351590d606233e40bda4f8f7c2be0bc8f6f868188d74b6c73876bb5c`  
		Last Modified: Fri, 21 Oct 2016 23:09:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5c5e57af57a52371283850c783a06c0c81b587090dde45976432787e6c5dff9`  
		Last Modified: Sat, 22 Oct 2016 06:35:55 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616063eaa571d3213b053bdfa37b8e9abf81a799d3222ead7780b13b15104b69`  
		Last Modified: Sat, 22 Oct 2016 06:35:58 GMT  
		Size: 3.0 MB (3048554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874367e6cae0d57be3228fd5502746ae31725f35afa56037602cf39bdce014d9`  
		Last Modified: Sat, 22 Oct 2016 06:35:52 GMT  
		Size: 266.1 KB (266113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2695b38e0553af28af3aa82f1f3a503a749909fe6287ac335e38a0e6ad98804d`  
		Last Modified: Sat, 22 Oct 2016 06:35:52 GMT  
		Size: 61.2 KB (61182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3510aceb08d0bd403a095c9a16a0e59d3a03956e1fd32f58ad89b1a2f8c20c91`  
		Last Modified: Tue, 25 Oct 2016 17:01:49 GMT  
		Size: 8.7 MB (8674914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea061e614a7d8aaaabe323aa373da66d8ef96dd4a601f01a570225c5b6a54f5`  
		Last Modified: Tue, 25 Oct 2016 17:01:45 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d91818807485593faf72a4114d0b1953c01216de7916fe474500ada0f7b542`  
		Last Modified: Tue, 25 Oct 2016 17:01:46 GMT  
		Size: 603.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3`

```console
$ docker pull joomla@sha256:9346eb9570eaa530a8f38ae80e6e9a3e415c15ca2817781cadc492105d6571bd
```

-	Platforms:
	-	linux; amd64

### `joomla:3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.3 MB (172337223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a5bf1c279488de8acf4c12906ebd85d45b9473841dac3d0fe2af070cb531642`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:06:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:06:59 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:07:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:07:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:09:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:28 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:09:29 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:09:29 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 06:34:47 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 22 Oct 2016 06:34:49 GMT
RUN a2enmod rewrite
# Sat, 22 Oct 2016 06:35:18 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 22 Oct 2016 06:35:26 GMT
RUN docker-php-ext-install mysqli
# Sat, 22 Oct 2016 06:35:31 GMT
RUN docker-php-ext-install mcrypt
# Sat, 22 Oct 2016 06:35:31 GMT
VOLUME [/var/www/html]
# Tue, 25 Oct 2016 17:00:49 GMT
ENV JOOMLA_VERSION=3.6.4
# Tue, 25 Oct 2016 17:00:49 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Tue, 25 Oct 2016 17:00:57 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 25 Oct 2016 17:00:58 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Tue, 25 Oct 2016 17:00:58 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 25 Oct 2016 17:00:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Oct 2016 17:00:59 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6568948eed6bcf50d20e2726bfeef451b165d6461df82e391de4b11f396220a0`  
		Last Modified: Fri, 21 Oct 2016 23:09:41 GMT  
		Size: 12.6 MB (12568563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc0094a10b566d20f6dc2161e5ec8811cd3b4b5af1bf5460842c8acf33dfd9e`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7142d56062eceba4a61183c2191117d8170f020bfbc5fbc0653394ccdce39648`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 15.9 MB (15917122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a44a9f63706f4fd404e88856d3c71546e8a5bd9952c8832d01a0f8385936262`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7c9a7c351590d606233e40bda4f8f7c2be0bc8f6f868188d74b6c73876bb5c`  
		Last Modified: Fri, 21 Oct 2016 23:09:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5c5e57af57a52371283850c783a06c0c81b587090dde45976432787e6c5dff9`  
		Last Modified: Sat, 22 Oct 2016 06:35:55 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616063eaa571d3213b053bdfa37b8e9abf81a799d3222ead7780b13b15104b69`  
		Last Modified: Sat, 22 Oct 2016 06:35:58 GMT  
		Size: 3.0 MB (3048554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874367e6cae0d57be3228fd5502746ae31725f35afa56037602cf39bdce014d9`  
		Last Modified: Sat, 22 Oct 2016 06:35:52 GMT  
		Size: 266.1 KB (266113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2695b38e0553af28af3aa82f1f3a503a749909fe6287ac335e38a0e6ad98804d`  
		Last Modified: Sat, 22 Oct 2016 06:35:52 GMT  
		Size: 61.2 KB (61182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3510aceb08d0bd403a095c9a16a0e59d3a03956e1fd32f58ad89b1a2f8c20c91`  
		Last Modified: Tue, 25 Oct 2016 17:01:49 GMT  
		Size: 8.7 MB (8674914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea061e614a7d8aaaabe323aa373da66d8ef96dd4a601f01a570225c5b6a54f5`  
		Last Modified: Tue, 25 Oct 2016 17:01:45 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d91818807485593faf72a4114d0b1953c01216de7916fe474500ada0f7b542`  
		Last Modified: Tue, 25 Oct 2016 17:01:46 GMT  
		Size: 603.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:latest`

```console
$ docker pull joomla@sha256:9346eb9570eaa530a8f38ae80e6e9a3e415c15ca2817781cadc492105d6571bd
```

-	Platforms:
	-	linux; amd64

### `joomla:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.3 MB (172337223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a5bf1c279488de8acf4c12906ebd85d45b9473841dac3d0fe2af070cb531642`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:06:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:06:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:06:59 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:07:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:07:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:09:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:28 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:09:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:09:29 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:09:29 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 06:34:47 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 22 Oct 2016 06:34:49 GMT
RUN a2enmod rewrite
# Sat, 22 Oct 2016 06:35:18 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 22 Oct 2016 06:35:26 GMT
RUN docker-php-ext-install mysqli
# Sat, 22 Oct 2016 06:35:31 GMT
RUN docker-php-ext-install mcrypt
# Sat, 22 Oct 2016 06:35:31 GMT
VOLUME [/var/www/html]
# Tue, 25 Oct 2016 17:00:49 GMT
ENV JOOMLA_VERSION=3.6.4
# Tue, 25 Oct 2016 17:00:49 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Tue, 25 Oct 2016 17:00:57 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 25 Oct 2016 17:00:58 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Tue, 25 Oct 2016 17:00:58 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 25 Oct 2016 17:00:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Oct 2016 17:00:59 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6568948eed6bcf50d20e2726bfeef451b165d6461df82e391de4b11f396220a0`  
		Last Modified: Fri, 21 Oct 2016 23:09:41 GMT  
		Size: 12.6 MB (12568563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc0094a10b566d20f6dc2161e5ec8811cd3b4b5af1bf5460842c8acf33dfd9e`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7142d56062eceba4a61183c2191117d8170f020bfbc5fbc0653394ccdce39648`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 15.9 MB (15917122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a44a9f63706f4fd404e88856d3c71546e8a5bd9952c8832d01a0f8385936262`  
		Last Modified: Fri, 21 Oct 2016 23:09:40 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7c9a7c351590d606233e40bda4f8f7c2be0bc8f6f868188d74b6c73876bb5c`  
		Last Modified: Fri, 21 Oct 2016 23:09:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5c5e57af57a52371283850c783a06c0c81b587090dde45976432787e6c5dff9`  
		Last Modified: Sat, 22 Oct 2016 06:35:55 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616063eaa571d3213b053bdfa37b8e9abf81a799d3222ead7780b13b15104b69`  
		Last Modified: Sat, 22 Oct 2016 06:35:58 GMT  
		Size: 3.0 MB (3048554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874367e6cae0d57be3228fd5502746ae31725f35afa56037602cf39bdce014d9`  
		Last Modified: Sat, 22 Oct 2016 06:35:52 GMT  
		Size: 266.1 KB (266113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2695b38e0553af28af3aa82f1f3a503a749909fe6287ac335e38a0e6ad98804d`  
		Last Modified: Sat, 22 Oct 2016 06:35:52 GMT  
		Size: 61.2 KB (61182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3510aceb08d0bd403a095c9a16a0e59d3a03956e1fd32f58ad89b1a2f8c20c91`  
		Last Modified: Tue, 25 Oct 2016 17:01:49 GMT  
		Size: 8.7 MB (8674914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea061e614a7d8aaaabe323aa373da66d8ef96dd4a601f01a570225c5b6a54f5`  
		Last Modified: Tue, 25 Oct 2016 17:01:45 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d91818807485593faf72a4114d0b1953c01216de7916fe474500ada0f7b542`  
		Last Modified: Tue, 25 Oct 2016 17:01:46 GMT  
		Size: 603.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6.4-apache-php7`

```console
$ docker pull joomla@sha256:43d3fc6725673acd2503b1d00534a0c16aab811dab598a4aafe7e74e7e287ffa
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6.4-apache-php7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.3 MB (176299690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:213d49ff60da6b29b16aff1410f0c20bb1e935d4629951a2528a6346dcd8861f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:24:50 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 21 Oct 2016 23:24:50 GMT
ENV PHP_VERSION=7.0.12
# Fri, 21 Oct 2016 23:24:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.12.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:24:51 GMT
ENV PHP_SHA256=f3d6c49e1c242e5995dec15e503fde996c327eb86cd7ec45c690e93c971b83ff PHP_MD5=bdcc4dbdac90c2a39422786653059f70
# Fri, 21 Oct 2016 23:25:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:25:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:27:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:27:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:27:29 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:27:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:27:30 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:27:30 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 06:37:29 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 22 Oct 2016 06:37:30 GMT
RUN a2enmod rewrite
# Sat, 22 Oct 2016 06:37:53 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 22 Oct 2016 06:38:01 GMT
RUN docker-php-ext-install mysqli
# Sat, 22 Oct 2016 06:38:07 GMT
RUN docker-php-ext-install mcrypt
# Sat, 22 Oct 2016 06:38:07 GMT
VOLUME [/var/www/html]
# Tue, 25 Oct 2016 17:01:00 GMT
ENV JOOMLA_VERSION=3.6.4
# Tue, 25 Oct 2016 17:01:00 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Tue, 25 Oct 2016 17:01:08 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 25 Oct 2016 17:01:09 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Tue, 25 Oct 2016 17:01:09 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 25 Oct 2016 17:01:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Oct 2016 17:01:10 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e96bbe5f39331b13ed5029c35c06d9ed53a5a34f25d5f91f9f21ec1d43580d`  
		Last Modified: Fri, 21 Oct 2016 23:27:42 GMT  
		Size: 12.6 MB (12649180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a0f9cbb0e8ce246d971c38650768fc9156e35f79d6ada5e17ef56690be4bea`  
		Last Modified: Fri, 21 Oct 2016 23:27:39 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35993c3d51fa74bf0a46b8150fc26f92aff643a2fb636aa550c0171ad6d8a4ea`  
		Last Modified: Fri, 21 Oct 2016 23:27:48 GMT  
		Size: 19.8 MB (19835446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca744082437711d140c6f674637b5aa956d757a9b48d17f8999f9ae4f11d74f8`  
		Last Modified: Fri, 21 Oct 2016 23:27:40 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68eaf37ec0f8c4de829239ceb5a013c39e842e86a898d8c529e7eb4cb4833256`  
		Last Modified: Fri, 21 Oct 2016 23:27:40 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ed9d9623b5e075d76f1d148c5fa491aefc19a7568b2b8f19e9acb5c806ab03`  
		Last Modified: Sat, 22 Oct 2016 06:38:31 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bee1843ed0369e7f0a4c42094c7274ce670c4d5156e1194ea4a21b9317faab5`  
		Last Modified: Sat, 22 Oct 2016 06:38:32 GMT  
		Size: 3.0 MB (3025614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf36e7c78fd3b8b68d172b8555b7cf6f79f3131b4f8aced4a520b6279d0313f`  
		Last Modified: Sat, 22 Oct 2016 06:38:28 GMT  
		Size: 257.3 KB (257339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f23ba9ba70b3f0e55a19129313bb68853ac870ddd042ae5cb662c25f4d138518`  
		Last Modified: Sat, 22 Oct 2016 06:38:28 GMT  
		Size: 56.4 KB (56423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7347ea08a1d844799e22bb2cd9c242f8835bb13b6c79f164ef80eb616d7226`  
		Last Modified: Tue, 25 Oct 2016 17:03:34 GMT  
		Size: 8.7 MB (8674917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c5cb5294115ef53561320ae6afe09b043be8a71ec596ac9e6cd359294a186e`  
		Last Modified: Tue, 25 Oct 2016 17:03:30 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e5e389c794cbb4ea0ca9751a2f99aa989b946385bef3425b1bdf142fe57da15`  
		Last Modified: Tue, 25 Oct 2016 17:03:31 GMT  
		Size: 604.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6-apache-php7`

```console
$ docker pull joomla@sha256:43d3fc6725673acd2503b1d00534a0c16aab811dab598a4aafe7e74e7e287ffa
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6-apache-php7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.3 MB (176299690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:213d49ff60da6b29b16aff1410f0c20bb1e935d4629951a2528a6346dcd8861f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:24:50 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 21 Oct 2016 23:24:50 GMT
ENV PHP_VERSION=7.0.12
# Fri, 21 Oct 2016 23:24:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.12.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:24:51 GMT
ENV PHP_SHA256=f3d6c49e1c242e5995dec15e503fde996c327eb86cd7ec45c690e93c971b83ff PHP_MD5=bdcc4dbdac90c2a39422786653059f70
# Fri, 21 Oct 2016 23:25:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:25:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:27:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:27:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:27:29 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:27:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:27:30 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:27:30 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 06:37:29 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 22 Oct 2016 06:37:30 GMT
RUN a2enmod rewrite
# Sat, 22 Oct 2016 06:37:53 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 22 Oct 2016 06:38:01 GMT
RUN docker-php-ext-install mysqli
# Sat, 22 Oct 2016 06:38:07 GMT
RUN docker-php-ext-install mcrypt
# Sat, 22 Oct 2016 06:38:07 GMT
VOLUME [/var/www/html]
# Tue, 25 Oct 2016 17:01:00 GMT
ENV JOOMLA_VERSION=3.6.4
# Tue, 25 Oct 2016 17:01:00 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Tue, 25 Oct 2016 17:01:08 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 25 Oct 2016 17:01:09 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Tue, 25 Oct 2016 17:01:09 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 25 Oct 2016 17:01:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Oct 2016 17:01:10 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e96bbe5f39331b13ed5029c35c06d9ed53a5a34f25d5f91f9f21ec1d43580d`  
		Last Modified: Fri, 21 Oct 2016 23:27:42 GMT  
		Size: 12.6 MB (12649180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a0f9cbb0e8ce246d971c38650768fc9156e35f79d6ada5e17ef56690be4bea`  
		Last Modified: Fri, 21 Oct 2016 23:27:39 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35993c3d51fa74bf0a46b8150fc26f92aff643a2fb636aa550c0171ad6d8a4ea`  
		Last Modified: Fri, 21 Oct 2016 23:27:48 GMT  
		Size: 19.8 MB (19835446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca744082437711d140c6f674637b5aa956d757a9b48d17f8999f9ae4f11d74f8`  
		Last Modified: Fri, 21 Oct 2016 23:27:40 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68eaf37ec0f8c4de829239ceb5a013c39e842e86a898d8c529e7eb4cb4833256`  
		Last Modified: Fri, 21 Oct 2016 23:27:40 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ed9d9623b5e075d76f1d148c5fa491aefc19a7568b2b8f19e9acb5c806ab03`  
		Last Modified: Sat, 22 Oct 2016 06:38:31 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bee1843ed0369e7f0a4c42094c7274ce670c4d5156e1194ea4a21b9317faab5`  
		Last Modified: Sat, 22 Oct 2016 06:38:32 GMT  
		Size: 3.0 MB (3025614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf36e7c78fd3b8b68d172b8555b7cf6f79f3131b4f8aced4a520b6279d0313f`  
		Last Modified: Sat, 22 Oct 2016 06:38:28 GMT  
		Size: 257.3 KB (257339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f23ba9ba70b3f0e55a19129313bb68853ac870ddd042ae5cb662c25f4d138518`  
		Last Modified: Sat, 22 Oct 2016 06:38:28 GMT  
		Size: 56.4 KB (56423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7347ea08a1d844799e22bb2cd9c242f8835bb13b6c79f164ef80eb616d7226`  
		Last Modified: Tue, 25 Oct 2016 17:03:34 GMT  
		Size: 8.7 MB (8674917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c5cb5294115ef53561320ae6afe09b043be8a71ec596ac9e6cd359294a186e`  
		Last Modified: Tue, 25 Oct 2016 17:03:30 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e5e389c794cbb4ea0ca9751a2f99aa989b946385bef3425b1bdf142fe57da15`  
		Last Modified: Tue, 25 Oct 2016 17:03:31 GMT  
		Size: 604.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-apache-php7`

```console
$ docker pull joomla@sha256:43d3fc6725673acd2503b1d00534a0c16aab811dab598a4aafe7e74e7e287ffa
```

-	Platforms:
	-	linux; amd64

### `joomla:3-apache-php7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.3 MB (176299690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:213d49ff60da6b29b16aff1410f0c20bb1e935d4629951a2528a6346dcd8861f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:24:50 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 21 Oct 2016 23:24:50 GMT
ENV PHP_VERSION=7.0.12
# Fri, 21 Oct 2016 23:24:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.12.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:24:51 GMT
ENV PHP_SHA256=f3d6c49e1c242e5995dec15e503fde996c327eb86cd7ec45c690e93c971b83ff PHP_MD5=bdcc4dbdac90c2a39422786653059f70
# Fri, 21 Oct 2016 23:25:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:25:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:27:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:27:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:27:29 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:27:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:27:30 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:27:30 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 06:37:29 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 22 Oct 2016 06:37:30 GMT
RUN a2enmod rewrite
# Sat, 22 Oct 2016 06:37:53 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 22 Oct 2016 06:38:01 GMT
RUN docker-php-ext-install mysqli
# Sat, 22 Oct 2016 06:38:07 GMT
RUN docker-php-ext-install mcrypt
# Sat, 22 Oct 2016 06:38:07 GMT
VOLUME [/var/www/html]
# Tue, 25 Oct 2016 17:01:00 GMT
ENV JOOMLA_VERSION=3.6.4
# Tue, 25 Oct 2016 17:01:00 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Tue, 25 Oct 2016 17:01:08 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 25 Oct 2016 17:01:09 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Tue, 25 Oct 2016 17:01:09 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 25 Oct 2016 17:01:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Oct 2016 17:01:10 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e96bbe5f39331b13ed5029c35c06d9ed53a5a34f25d5f91f9f21ec1d43580d`  
		Last Modified: Fri, 21 Oct 2016 23:27:42 GMT  
		Size: 12.6 MB (12649180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a0f9cbb0e8ce246d971c38650768fc9156e35f79d6ada5e17ef56690be4bea`  
		Last Modified: Fri, 21 Oct 2016 23:27:39 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35993c3d51fa74bf0a46b8150fc26f92aff643a2fb636aa550c0171ad6d8a4ea`  
		Last Modified: Fri, 21 Oct 2016 23:27:48 GMT  
		Size: 19.8 MB (19835446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca744082437711d140c6f674637b5aa956d757a9b48d17f8999f9ae4f11d74f8`  
		Last Modified: Fri, 21 Oct 2016 23:27:40 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68eaf37ec0f8c4de829239ceb5a013c39e842e86a898d8c529e7eb4cb4833256`  
		Last Modified: Fri, 21 Oct 2016 23:27:40 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ed9d9623b5e075d76f1d148c5fa491aefc19a7568b2b8f19e9acb5c806ab03`  
		Last Modified: Sat, 22 Oct 2016 06:38:31 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bee1843ed0369e7f0a4c42094c7274ce670c4d5156e1194ea4a21b9317faab5`  
		Last Modified: Sat, 22 Oct 2016 06:38:32 GMT  
		Size: 3.0 MB (3025614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf36e7c78fd3b8b68d172b8555b7cf6f79f3131b4f8aced4a520b6279d0313f`  
		Last Modified: Sat, 22 Oct 2016 06:38:28 GMT  
		Size: 257.3 KB (257339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f23ba9ba70b3f0e55a19129313bb68853ac870ddd042ae5cb662c25f4d138518`  
		Last Modified: Sat, 22 Oct 2016 06:38:28 GMT  
		Size: 56.4 KB (56423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7347ea08a1d844799e22bb2cd9c242f8835bb13b6c79f164ef80eb616d7226`  
		Last Modified: Tue, 25 Oct 2016 17:03:34 GMT  
		Size: 8.7 MB (8674917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c5cb5294115ef53561320ae6afe09b043be8a71ec596ac9e6cd359294a186e`  
		Last Modified: Tue, 25 Oct 2016 17:03:30 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e5e389c794cbb4ea0ca9751a2f99aa989b946385bef3425b1bdf142fe57da15`  
		Last Modified: Tue, 25 Oct 2016 17:03:31 GMT  
		Size: 604.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:apache-php7`

```console
$ docker pull joomla@sha256:43d3fc6725673acd2503b1d00534a0c16aab811dab598a4aafe7e74e7e287ffa
```

-	Platforms:
	-	linux; amd64

### `joomla:apache-php7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.3 MB (176299690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:213d49ff60da6b29b16aff1410f0c20bb1e935d4629951a2528a6346dcd8861f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:06:51 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 21 Oct 2016 23:06:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 21 Oct 2016 23:06:53 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 21 Oct 2016 23:06:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 21 Oct 2016 23:06:55 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 21 Oct 2016 23:06:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 21 Oct 2016 23:06:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 21 Oct 2016 23:24:50 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 21 Oct 2016 23:24:50 GMT
ENV PHP_VERSION=7.0.12
# Fri, 21 Oct 2016 23:24:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.12.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:24:51 GMT
ENV PHP_SHA256=f3d6c49e1c242e5995dec15e503fde996c327eb86cd7ec45c690e93c971b83ff PHP_MD5=bdcc4dbdac90c2a39422786653059f70
# Fri, 21 Oct 2016 23:25:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:25:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:27:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:27:28 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:27:29 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:27:29 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:27:30 GMT
EXPOSE 80/tcp
# Fri, 21 Oct 2016 23:27:30 GMT
CMD ["apache2-foreground"]
# Sat, 22 Oct 2016 06:37:29 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 22 Oct 2016 06:37:30 GMT
RUN a2enmod rewrite
# Sat, 22 Oct 2016 06:37:53 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 22 Oct 2016 06:38:01 GMT
RUN docker-php-ext-install mysqli
# Sat, 22 Oct 2016 06:38:07 GMT
RUN docker-php-ext-install mcrypt
# Sat, 22 Oct 2016 06:38:07 GMT
VOLUME [/var/www/html]
# Tue, 25 Oct 2016 17:01:00 GMT
ENV JOOMLA_VERSION=3.6.4
# Tue, 25 Oct 2016 17:01:00 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Tue, 25 Oct 2016 17:01:08 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 25 Oct 2016 17:01:09 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Tue, 25 Oct 2016 17:01:09 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 25 Oct 2016 17:01:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Oct 2016 17:01:10 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9469dadeb45e2bf96191c3d1c4c98a3282e66d57c06e21804b4cef3bf527a5`  
		Last Modified: Fri, 21 Oct 2016 23:09:47 GMT  
		Size: 2.8 MB (2849018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33aa1941b67e7da1ca43bb6b4201b769e7279a459830cebda7052502da4ac`  
		Last Modified: Fri, 21 Oct 2016 23:09:45 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b922600db1ad40c4a2b061951a7464f6ec713faeddb2df9c33bb4059a87de5`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01805b6582a44e60e358f5a6fa40dddbba21649cc976f8d1d84ece7bfe7a531a`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43f09bb70c28be54271f3b3af1c130e2f9fca8f64d6fd0aefa7b18890c62d6`  
		Last Modified: Fri, 21 Oct 2016 23:09:42 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e96bbe5f39331b13ed5029c35c06d9ed53a5a34f25d5f91f9f21ec1d43580d`  
		Last Modified: Fri, 21 Oct 2016 23:27:42 GMT  
		Size: 12.6 MB (12649180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a0f9cbb0e8ce246d971c38650768fc9156e35f79d6ada5e17ef56690be4bea`  
		Last Modified: Fri, 21 Oct 2016 23:27:39 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35993c3d51fa74bf0a46b8150fc26f92aff643a2fb636aa550c0171ad6d8a4ea`  
		Last Modified: Fri, 21 Oct 2016 23:27:48 GMT  
		Size: 19.8 MB (19835446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca744082437711d140c6f674637b5aa956d757a9b48d17f8999f9ae4f11d74f8`  
		Last Modified: Fri, 21 Oct 2016 23:27:40 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68eaf37ec0f8c4de829239ceb5a013c39e842e86a898d8c529e7eb4cb4833256`  
		Last Modified: Fri, 21 Oct 2016 23:27:40 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ed9d9623b5e075d76f1d148c5fa491aefc19a7568b2b8f19e9acb5c806ab03`  
		Last Modified: Sat, 22 Oct 2016 06:38:31 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bee1843ed0369e7f0a4c42094c7274ce670c4d5156e1194ea4a21b9317faab5`  
		Last Modified: Sat, 22 Oct 2016 06:38:32 GMT  
		Size: 3.0 MB (3025614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf36e7c78fd3b8b68d172b8555b7cf6f79f3131b4f8aced4a520b6279d0313f`  
		Last Modified: Sat, 22 Oct 2016 06:38:28 GMT  
		Size: 257.3 KB (257339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f23ba9ba70b3f0e55a19129313bb68853ac870ddd042ae5cb662c25f4d138518`  
		Last Modified: Sat, 22 Oct 2016 06:38:28 GMT  
		Size: 56.4 KB (56423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7347ea08a1d844799e22bb2cd9c242f8835bb13b6c79f164ef80eb616d7226`  
		Last Modified: Tue, 25 Oct 2016 17:03:34 GMT  
		Size: 8.7 MB (8674917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c5cb5294115ef53561320ae6afe09b043be8a71ec596ac9e6cd359294a186e`  
		Last Modified: Tue, 25 Oct 2016 17:03:30 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e5e389c794cbb4ea0ca9751a2f99aa989b946385bef3425b1bdf142fe57da15`  
		Last Modified: Tue, 25 Oct 2016 17:03:31 GMT  
		Size: 604.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6.4-fpm`

```console
$ docker pull joomla@sha256:857cc5ed7200d6083fd98cfe9727ab923a31528be2063d94c32c392514b0091b
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6.4-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.4 MB (162375062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ccc81c24a3476e336b9b0553df2aa1a4d0f0a092d6352211b9889a382f0d7d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:10:18 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 21 Oct 2016 23:10:18 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:10:31 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:10:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:13:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:14:00 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:14:00 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:14:01 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 21 Oct 2016 23:14:02 GMT
EXPOSE 9000/tcp
# Fri, 21 Oct 2016 23:14:02 GMT
CMD ["php-fpm"]
# Sat, 22 Oct 2016 06:39:15 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 22 Oct 2016 06:39:38 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 22 Oct 2016 06:39:46 GMT
RUN docker-php-ext-install mysqli
# Sat, 22 Oct 2016 06:39:51 GMT
RUN docker-php-ext-install mcrypt
# Sat, 22 Oct 2016 06:39:52 GMT
VOLUME [/var/www/html]
# Tue, 25 Oct 2016 17:01:11 GMT
ENV JOOMLA_VERSION=3.6.4
# Tue, 25 Oct 2016 17:01:11 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Tue, 25 Oct 2016 17:01:19 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 25 Oct 2016 17:01:20 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Tue, 25 Oct 2016 17:01:20 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 25 Oct 2016 17:01:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Oct 2016 17:01:21 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa40caf97a527ab5b58f26d26b407b55f4fae6798e1d7f89267747d74195f1b`  
		Last Modified: Fri, 21 Oct 2016 23:14:18 GMT  
		Size: 12.5 MB (12549527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064a3d3e9245dbe11fb127133ebdf3e7feb188948093feb6b1597ff1c1c2ed23`  
		Last Modified: Fri, 21 Oct 2016 23:14:12 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8cd631ee525e5d7ae7dea910aa38eb0270991abc1dc5ca199d17a824383e47`  
		Last Modified: Fri, 21 Oct 2016 23:14:14 GMT  
		Size: 8.8 MB (8841952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3181f198b31f771fb106ad398e5e61380a7122b7f48ad2949ce0937eae2ff49b`  
		Last Modified: Fri, 21 Oct 2016 23:14:12 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f4db8284a3c17605cf8a4b33cf8cfb43ce5e4d78c1104fea88e88b47f704af`  
		Last Modified: Fri, 21 Oct 2016 23:14:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca292aae86f240632732ffde349c152c947ea665d31b37c80a2689a8858e394`  
		Last Modified: Fri, 21 Oct 2016 23:14:11 GMT  
		Size: 7.6 KB (7631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50ae455e28f6c674c6616e3c72692fef1938608af53e3e3cd9772db53807c648`  
		Last Modified: Sat, 22 Oct 2016 06:40:15 GMT  
		Size: 3.0 MB (3025102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd256a23262dfd0de0d736f4c75507c608bdb9454f17956f3fd1c79167a78c9b`  
		Last Modified: Sat, 22 Oct 2016 06:40:13 GMT  
		Size: 266.1 KB (266116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6761e1db87714628c13eea6749e7078976bd63bf3287a107290d00aba25aafbc`  
		Last Modified: Sat, 22 Oct 2016 06:40:12 GMT  
		Size: 61.2 KB (61183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589f856b150e73766ce42c851290f7f845e6aadaf1d45bbae21ef9008913a745`  
		Last Modified: Tue, 25 Oct 2016 17:04:29 GMT  
		Size: 8.7 MB (8674911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8f82d1c2b539eed324dd4086dc4113298ae979cac61fc86d112004da9033ba`  
		Last Modified: Tue, 25 Oct 2016 17:04:27 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41f64ba51bdddd89dc58a19309fcf56a1707916d46a54d2c60fb1ee0bc2448a`  
		Last Modified: Tue, 25 Oct 2016 17:04:28 GMT  
		Size: 604.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6-fpm`

```console
$ docker pull joomla@sha256:857cc5ed7200d6083fd98cfe9727ab923a31528be2063d94c32c392514b0091b
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.4 MB (162375062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ccc81c24a3476e336b9b0553df2aa1a4d0f0a092d6352211b9889a382f0d7d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:10:18 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 21 Oct 2016 23:10:18 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:10:31 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:10:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:13:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:14:00 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:14:00 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:14:01 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 21 Oct 2016 23:14:02 GMT
EXPOSE 9000/tcp
# Fri, 21 Oct 2016 23:14:02 GMT
CMD ["php-fpm"]
# Sat, 22 Oct 2016 06:39:15 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 22 Oct 2016 06:39:38 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 22 Oct 2016 06:39:46 GMT
RUN docker-php-ext-install mysqli
# Sat, 22 Oct 2016 06:39:51 GMT
RUN docker-php-ext-install mcrypt
# Sat, 22 Oct 2016 06:39:52 GMT
VOLUME [/var/www/html]
# Tue, 25 Oct 2016 17:01:11 GMT
ENV JOOMLA_VERSION=3.6.4
# Tue, 25 Oct 2016 17:01:11 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Tue, 25 Oct 2016 17:01:19 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 25 Oct 2016 17:01:20 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Tue, 25 Oct 2016 17:01:20 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 25 Oct 2016 17:01:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Oct 2016 17:01:21 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa40caf97a527ab5b58f26d26b407b55f4fae6798e1d7f89267747d74195f1b`  
		Last Modified: Fri, 21 Oct 2016 23:14:18 GMT  
		Size: 12.5 MB (12549527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064a3d3e9245dbe11fb127133ebdf3e7feb188948093feb6b1597ff1c1c2ed23`  
		Last Modified: Fri, 21 Oct 2016 23:14:12 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8cd631ee525e5d7ae7dea910aa38eb0270991abc1dc5ca199d17a824383e47`  
		Last Modified: Fri, 21 Oct 2016 23:14:14 GMT  
		Size: 8.8 MB (8841952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3181f198b31f771fb106ad398e5e61380a7122b7f48ad2949ce0937eae2ff49b`  
		Last Modified: Fri, 21 Oct 2016 23:14:12 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f4db8284a3c17605cf8a4b33cf8cfb43ce5e4d78c1104fea88e88b47f704af`  
		Last Modified: Fri, 21 Oct 2016 23:14:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca292aae86f240632732ffde349c152c947ea665d31b37c80a2689a8858e394`  
		Last Modified: Fri, 21 Oct 2016 23:14:11 GMT  
		Size: 7.6 KB (7631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50ae455e28f6c674c6616e3c72692fef1938608af53e3e3cd9772db53807c648`  
		Last Modified: Sat, 22 Oct 2016 06:40:15 GMT  
		Size: 3.0 MB (3025102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd256a23262dfd0de0d736f4c75507c608bdb9454f17956f3fd1c79167a78c9b`  
		Last Modified: Sat, 22 Oct 2016 06:40:13 GMT  
		Size: 266.1 KB (266116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6761e1db87714628c13eea6749e7078976bd63bf3287a107290d00aba25aafbc`  
		Last Modified: Sat, 22 Oct 2016 06:40:12 GMT  
		Size: 61.2 KB (61183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589f856b150e73766ce42c851290f7f845e6aadaf1d45bbae21ef9008913a745`  
		Last Modified: Tue, 25 Oct 2016 17:04:29 GMT  
		Size: 8.7 MB (8674911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8f82d1c2b539eed324dd4086dc4113298ae979cac61fc86d112004da9033ba`  
		Last Modified: Tue, 25 Oct 2016 17:04:27 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41f64ba51bdddd89dc58a19309fcf56a1707916d46a54d2c60fb1ee0bc2448a`  
		Last Modified: Tue, 25 Oct 2016 17:04:28 GMT  
		Size: 604.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-fpm`

```console
$ docker pull joomla@sha256:857cc5ed7200d6083fd98cfe9727ab923a31528be2063d94c32c392514b0091b
```

-	Platforms:
	-	linux; amd64

### `joomla:3-fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.4 MB (162375062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ccc81c24a3476e336b9b0553df2aa1a4d0f0a092d6352211b9889a382f0d7d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:10:18 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 21 Oct 2016 23:10:18 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:10:31 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:10:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:13:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:14:00 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:14:00 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:14:01 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 21 Oct 2016 23:14:02 GMT
EXPOSE 9000/tcp
# Fri, 21 Oct 2016 23:14:02 GMT
CMD ["php-fpm"]
# Sat, 22 Oct 2016 06:39:15 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 22 Oct 2016 06:39:38 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 22 Oct 2016 06:39:46 GMT
RUN docker-php-ext-install mysqli
# Sat, 22 Oct 2016 06:39:51 GMT
RUN docker-php-ext-install mcrypt
# Sat, 22 Oct 2016 06:39:52 GMT
VOLUME [/var/www/html]
# Tue, 25 Oct 2016 17:01:11 GMT
ENV JOOMLA_VERSION=3.6.4
# Tue, 25 Oct 2016 17:01:11 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Tue, 25 Oct 2016 17:01:19 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 25 Oct 2016 17:01:20 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Tue, 25 Oct 2016 17:01:20 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 25 Oct 2016 17:01:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Oct 2016 17:01:21 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa40caf97a527ab5b58f26d26b407b55f4fae6798e1d7f89267747d74195f1b`  
		Last Modified: Fri, 21 Oct 2016 23:14:18 GMT  
		Size: 12.5 MB (12549527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064a3d3e9245dbe11fb127133ebdf3e7feb188948093feb6b1597ff1c1c2ed23`  
		Last Modified: Fri, 21 Oct 2016 23:14:12 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8cd631ee525e5d7ae7dea910aa38eb0270991abc1dc5ca199d17a824383e47`  
		Last Modified: Fri, 21 Oct 2016 23:14:14 GMT  
		Size: 8.8 MB (8841952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3181f198b31f771fb106ad398e5e61380a7122b7f48ad2949ce0937eae2ff49b`  
		Last Modified: Fri, 21 Oct 2016 23:14:12 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f4db8284a3c17605cf8a4b33cf8cfb43ce5e4d78c1104fea88e88b47f704af`  
		Last Modified: Fri, 21 Oct 2016 23:14:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca292aae86f240632732ffde349c152c947ea665d31b37c80a2689a8858e394`  
		Last Modified: Fri, 21 Oct 2016 23:14:11 GMT  
		Size: 7.6 KB (7631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50ae455e28f6c674c6616e3c72692fef1938608af53e3e3cd9772db53807c648`  
		Last Modified: Sat, 22 Oct 2016 06:40:15 GMT  
		Size: 3.0 MB (3025102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd256a23262dfd0de0d736f4c75507c608bdb9454f17956f3fd1c79167a78c9b`  
		Last Modified: Sat, 22 Oct 2016 06:40:13 GMT  
		Size: 266.1 KB (266116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6761e1db87714628c13eea6749e7078976bd63bf3287a107290d00aba25aafbc`  
		Last Modified: Sat, 22 Oct 2016 06:40:12 GMT  
		Size: 61.2 KB (61183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589f856b150e73766ce42c851290f7f845e6aadaf1d45bbae21ef9008913a745`  
		Last Modified: Tue, 25 Oct 2016 17:04:29 GMT  
		Size: 8.7 MB (8674911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8f82d1c2b539eed324dd4086dc4113298ae979cac61fc86d112004da9033ba`  
		Last Modified: Tue, 25 Oct 2016 17:04:27 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41f64ba51bdddd89dc58a19309fcf56a1707916d46a54d2c60fb1ee0bc2448a`  
		Last Modified: Tue, 25 Oct 2016 17:04:28 GMT  
		Size: 604.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:fpm`

```console
$ docker pull joomla@sha256:857cc5ed7200d6083fd98cfe9727ab923a31528be2063d94c32c392514b0091b
```

-	Platforms:
	-	linux; amd64

### `joomla:fpm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.4 MB (162375062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ccc81c24a3476e336b9b0553df2aa1a4d0f0a092d6352211b9889a382f0d7d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:10:18 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 21 Oct 2016 23:10:18 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_VERSION=5.6.27
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.27.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:10:19 GMT
ENV PHP_SHA256=16eb544498339d1d855292826e2e547ab01a31600141094959073e5e10e93ab5 PHP_MD5=9ce6efc96d5ab81ef808f8ed6b1f242d
# Fri, 21 Oct 2016 23:10:31 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:10:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:13:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:14:00 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:14:00 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:14:01 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 21 Oct 2016 23:14:02 GMT
EXPOSE 9000/tcp
# Fri, 21 Oct 2016 23:14:02 GMT
CMD ["php-fpm"]
# Sat, 22 Oct 2016 06:39:15 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 22 Oct 2016 06:39:38 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 22 Oct 2016 06:39:46 GMT
RUN docker-php-ext-install mysqli
# Sat, 22 Oct 2016 06:39:51 GMT
RUN docker-php-ext-install mcrypt
# Sat, 22 Oct 2016 06:39:52 GMT
VOLUME [/var/www/html]
# Tue, 25 Oct 2016 17:01:11 GMT
ENV JOOMLA_VERSION=3.6.4
# Tue, 25 Oct 2016 17:01:11 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Tue, 25 Oct 2016 17:01:19 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 25 Oct 2016 17:01:20 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Tue, 25 Oct 2016 17:01:20 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 25 Oct 2016 17:01:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Oct 2016 17:01:21 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa40caf97a527ab5b58f26d26b407b55f4fae6798e1d7f89267747d74195f1b`  
		Last Modified: Fri, 21 Oct 2016 23:14:18 GMT  
		Size: 12.5 MB (12549527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064a3d3e9245dbe11fb127133ebdf3e7feb188948093feb6b1597ff1c1c2ed23`  
		Last Modified: Fri, 21 Oct 2016 23:14:12 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8cd631ee525e5d7ae7dea910aa38eb0270991abc1dc5ca199d17a824383e47`  
		Last Modified: Fri, 21 Oct 2016 23:14:14 GMT  
		Size: 8.8 MB (8841952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3181f198b31f771fb106ad398e5e61380a7122b7f48ad2949ce0937eae2ff49b`  
		Last Modified: Fri, 21 Oct 2016 23:14:12 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f4db8284a3c17605cf8a4b33cf8cfb43ce5e4d78c1104fea88e88b47f704af`  
		Last Modified: Fri, 21 Oct 2016 23:14:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca292aae86f240632732ffde349c152c947ea665d31b37c80a2689a8858e394`  
		Last Modified: Fri, 21 Oct 2016 23:14:11 GMT  
		Size: 7.6 KB (7631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50ae455e28f6c674c6616e3c72692fef1938608af53e3e3cd9772db53807c648`  
		Last Modified: Sat, 22 Oct 2016 06:40:15 GMT  
		Size: 3.0 MB (3025102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd256a23262dfd0de0d736f4c75507c608bdb9454f17956f3fd1c79167a78c9b`  
		Last Modified: Sat, 22 Oct 2016 06:40:13 GMT  
		Size: 266.1 KB (266116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6761e1db87714628c13eea6749e7078976bd63bf3287a107290d00aba25aafbc`  
		Last Modified: Sat, 22 Oct 2016 06:40:12 GMT  
		Size: 61.2 KB (61183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589f856b150e73766ce42c851290f7f845e6aadaf1d45bbae21ef9008913a745`  
		Last Modified: Tue, 25 Oct 2016 17:04:29 GMT  
		Size: 8.7 MB (8674911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8f82d1c2b539eed324dd4086dc4113298ae979cac61fc86d112004da9033ba`  
		Last Modified: Tue, 25 Oct 2016 17:04:27 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41f64ba51bdddd89dc58a19309fcf56a1707916d46a54d2c60fb1ee0bc2448a`  
		Last Modified: Tue, 25 Oct 2016 17:04:28 GMT  
		Size: 604.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6.4-fpm-php7`

```console
$ docker pull joomla@sha256:0344d7eb7fe63b98692823bd0221b05fb33273da697d58fe6916931ef7d0d291
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6.4-fpm-php7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.3 MB (166310424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e97a72b41147b00b3e5cc05781548d8ea8c5dca8ff5ecbd822b8d8412537cd91`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:10:18 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 21 Oct 2016 23:28:32 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 21 Oct 2016 23:28:32 GMT
ENV PHP_VERSION=7.0.12
# Fri, 21 Oct 2016 23:28:32 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.12.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:28:33 GMT
ENV PHP_SHA256=f3d6c49e1c242e5995dec15e503fde996c327eb86cd7ec45c690e93c971b83ff PHP_MD5=bdcc4dbdac90c2a39422786653059f70
# Fri, 21 Oct 2016 23:28:43 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:28:43 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:32:23 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:32:24 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:32:25 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:32:26 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 21 Oct 2016 23:32:26 GMT
EXPOSE 9000/tcp
# Fri, 21 Oct 2016 23:32:26 GMT
CMD ["php-fpm"]
# Sat, 22 Oct 2016 06:40:57 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 22 Oct 2016 06:41:22 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 22 Oct 2016 06:41:30 GMT
RUN docker-php-ext-install mysqli
# Sat, 22 Oct 2016 06:41:35 GMT
RUN docker-php-ext-install mcrypt
# Sat, 22 Oct 2016 06:41:35 GMT
VOLUME [/var/www/html]
# Tue, 25 Oct 2016 17:01:22 GMT
ENV JOOMLA_VERSION=3.6.4
# Tue, 25 Oct 2016 17:01:22 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Tue, 25 Oct 2016 17:01:32 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 25 Oct 2016 17:01:33 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Tue, 25 Oct 2016 17:01:33 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 25 Oct 2016 17:01:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Oct 2016 17:01:34 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3dfe5fc2fd0a2d5522e19c63e6d4171ed74a6f37273f8aec9b32f70d3feea68`  
		Last Modified: Fri, 21 Oct 2016 23:32:40 GMT  
		Size: 12.6 MB (12630266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff9da97b0bd5f09a8998c3b8032e6dd8f1d444656fce7470b04b5618a4bab0f`  
		Last Modified: Fri, 21 Oct 2016 23:32:36 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe4bdeeceddfa984fc7cbe4096caad726e396a83586c01313280c7cbb5a8971`  
		Last Modified: Fri, 21 Oct 2016 23:32:40 GMT  
		Size: 12.7 MB (12732773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f591100ce7c6e1bf2c85d16185b24feb51eaca9afb22261dc2d8f810114ad288`  
		Last Modified: Fri, 21 Oct 2016 23:32:36 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0963a0fcf1d1b60f5f1c3c7338943d02d8efba6a6c4ddeded1748c8e71a29c23`  
		Last Modified: Fri, 21 Oct 2016 23:32:36 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6113ca3025f36b607a357300e907b8340b69ac9169651ce399aa4385eaaf882`  
		Last Modified: Fri, 21 Oct 2016 23:32:36 GMT  
		Size: 7.7 KB (7690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba47ccd1e742ddbb02824a7cc67afead0e038e666de38fc6ee5efe8757179d4`  
		Last Modified: Sat, 22 Oct 2016 06:42:00 GMT  
		Size: 3.0 MB (3002379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31242bf68f8cf70208b8c11c7054a12ad6937525e130dc5927a193f36d9ead8`  
		Last Modified: Sat, 22 Oct 2016 06:41:56 GMT  
		Size: 257.3 KB (257340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4772c3edeaa02cbb57c47241d630fe1fc4b0ec4cc46706e89e8fdb83d41b7d69`  
		Last Modified: Sat, 22 Oct 2016 06:41:56 GMT  
		Size: 56.4 KB (56423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95dea3a6be2d6c1aac250cf565ee018fdaa3d47cb64fa1297896912e4d2eeab3`  
		Last Modified: Tue, 25 Oct 2016 17:05:26 GMT  
		Size: 8.7 MB (8674918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9eeb34bd206ab501f2c01703d14b257eed0a2ce448db103d99b7051cff0ffe`  
		Last Modified: Tue, 25 Oct 2016 17:05:25 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f5cef3f33674dfe1d888953b86770d6915d270da8ad00a5202a54845ef6f3b`  
		Last Modified: Tue, 25 Oct 2016 17:05:24 GMT  
		Size: 604.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.6-fpm-php7`

```console
$ docker pull joomla@sha256:0344d7eb7fe63b98692823bd0221b05fb33273da697d58fe6916931ef7d0d291
```

-	Platforms:
	-	linux; amd64

### `joomla:3.6-fpm-php7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.3 MB (166310424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e97a72b41147b00b3e5cc05781548d8ea8c5dca8ff5ecbd822b8d8412537cd91`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:10:18 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 21 Oct 2016 23:28:32 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 21 Oct 2016 23:28:32 GMT
ENV PHP_VERSION=7.0.12
# Fri, 21 Oct 2016 23:28:32 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.12.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:28:33 GMT
ENV PHP_SHA256=f3d6c49e1c242e5995dec15e503fde996c327eb86cd7ec45c690e93c971b83ff PHP_MD5=bdcc4dbdac90c2a39422786653059f70
# Fri, 21 Oct 2016 23:28:43 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:28:43 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:32:23 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:32:24 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:32:25 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:32:26 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 21 Oct 2016 23:32:26 GMT
EXPOSE 9000/tcp
# Fri, 21 Oct 2016 23:32:26 GMT
CMD ["php-fpm"]
# Sat, 22 Oct 2016 06:40:57 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 22 Oct 2016 06:41:22 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 22 Oct 2016 06:41:30 GMT
RUN docker-php-ext-install mysqli
# Sat, 22 Oct 2016 06:41:35 GMT
RUN docker-php-ext-install mcrypt
# Sat, 22 Oct 2016 06:41:35 GMT
VOLUME [/var/www/html]
# Tue, 25 Oct 2016 17:01:22 GMT
ENV JOOMLA_VERSION=3.6.4
# Tue, 25 Oct 2016 17:01:22 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Tue, 25 Oct 2016 17:01:32 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 25 Oct 2016 17:01:33 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Tue, 25 Oct 2016 17:01:33 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 25 Oct 2016 17:01:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Oct 2016 17:01:34 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3dfe5fc2fd0a2d5522e19c63e6d4171ed74a6f37273f8aec9b32f70d3feea68`  
		Last Modified: Fri, 21 Oct 2016 23:32:40 GMT  
		Size: 12.6 MB (12630266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff9da97b0bd5f09a8998c3b8032e6dd8f1d444656fce7470b04b5618a4bab0f`  
		Last Modified: Fri, 21 Oct 2016 23:32:36 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe4bdeeceddfa984fc7cbe4096caad726e396a83586c01313280c7cbb5a8971`  
		Last Modified: Fri, 21 Oct 2016 23:32:40 GMT  
		Size: 12.7 MB (12732773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f591100ce7c6e1bf2c85d16185b24feb51eaca9afb22261dc2d8f810114ad288`  
		Last Modified: Fri, 21 Oct 2016 23:32:36 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0963a0fcf1d1b60f5f1c3c7338943d02d8efba6a6c4ddeded1748c8e71a29c23`  
		Last Modified: Fri, 21 Oct 2016 23:32:36 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6113ca3025f36b607a357300e907b8340b69ac9169651ce399aa4385eaaf882`  
		Last Modified: Fri, 21 Oct 2016 23:32:36 GMT  
		Size: 7.7 KB (7690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba47ccd1e742ddbb02824a7cc67afead0e038e666de38fc6ee5efe8757179d4`  
		Last Modified: Sat, 22 Oct 2016 06:42:00 GMT  
		Size: 3.0 MB (3002379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31242bf68f8cf70208b8c11c7054a12ad6937525e130dc5927a193f36d9ead8`  
		Last Modified: Sat, 22 Oct 2016 06:41:56 GMT  
		Size: 257.3 KB (257340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4772c3edeaa02cbb57c47241d630fe1fc4b0ec4cc46706e89e8fdb83d41b7d69`  
		Last Modified: Sat, 22 Oct 2016 06:41:56 GMT  
		Size: 56.4 KB (56423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95dea3a6be2d6c1aac250cf565ee018fdaa3d47cb64fa1297896912e4d2eeab3`  
		Last Modified: Tue, 25 Oct 2016 17:05:26 GMT  
		Size: 8.7 MB (8674918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9eeb34bd206ab501f2c01703d14b257eed0a2ce448db103d99b7051cff0ffe`  
		Last Modified: Tue, 25 Oct 2016 17:05:25 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f5cef3f33674dfe1d888953b86770d6915d270da8ad00a5202a54845ef6f3b`  
		Last Modified: Tue, 25 Oct 2016 17:05:24 GMT  
		Size: 604.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-fpm-php7`

```console
$ docker pull joomla@sha256:0344d7eb7fe63b98692823bd0221b05fb33273da697d58fe6916931ef7d0d291
```

-	Platforms:
	-	linux; amd64

### `joomla:3-fpm-php7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.3 MB (166310424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e97a72b41147b00b3e5cc05781548d8ea8c5dca8ff5ecbd822b8d8412537cd91`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:10:18 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 21 Oct 2016 23:28:32 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 21 Oct 2016 23:28:32 GMT
ENV PHP_VERSION=7.0.12
# Fri, 21 Oct 2016 23:28:32 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.12.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:28:33 GMT
ENV PHP_SHA256=f3d6c49e1c242e5995dec15e503fde996c327eb86cd7ec45c690e93c971b83ff PHP_MD5=bdcc4dbdac90c2a39422786653059f70
# Fri, 21 Oct 2016 23:28:43 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:28:43 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:32:23 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:32:24 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:32:25 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:32:26 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 21 Oct 2016 23:32:26 GMT
EXPOSE 9000/tcp
# Fri, 21 Oct 2016 23:32:26 GMT
CMD ["php-fpm"]
# Sat, 22 Oct 2016 06:40:57 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 22 Oct 2016 06:41:22 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 22 Oct 2016 06:41:30 GMT
RUN docker-php-ext-install mysqli
# Sat, 22 Oct 2016 06:41:35 GMT
RUN docker-php-ext-install mcrypt
# Sat, 22 Oct 2016 06:41:35 GMT
VOLUME [/var/www/html]
# Tue, 25 Oct 2016 17:01:22 GMT
ENV JOOMLA_VERSION=3.6.4
# Tue, 25 Oct 2016 17:01:22 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Tue, 25 Oct 2016 17:01:32 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 25 Oct 2016 17:01:33 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Tue, 25 Oct 2016 17:01:33 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 25 Oct 2016 17:01:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Oct 2016 17:01:34 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3dfe5fc2fd0a2d5522e19c63e6d4171ed74a6f37273f8aec9b32f70d3feea68`  
		Last Modified: Fri, 21 Oct 2016 23:32:40 GMT  
		Size: 12.6 MB (12630266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff9da97b0bd5f09a8998c3b8032e6dd8f1d444656fce7470b04b5618a4bab0f`  
		Last Modified: Fri, 21 Oct 2016 23:32:36 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe4bdeeceddfa984fc7cbe4096caad726e396a83586c01313280c7cbb5a8971`  
		Last Modified: Fri, 21 Oct 2016 23:32:40 GMT  
		Size: 12.7 MB (12732773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f591100ce7c6e1bf2c85d16185b24feb51eaca9afb22261dc2d8f810114ad288`  
		Last Modified: Fri, 21 Oct 2016 23:32:36 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0963a0fcf1d1b60f5f1c3c7338943d02d8efba6a6c4ddeded1748c8e71a29c23`  
		Last Modified: Fri, 21 Oct 2016 23:32:36 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6113ca3025f36b607a357300e907b8340b69ac9169651ce399aa4385eaaf882`  
		Last Modified: Fri, 21 Oct 2016 23:32:36 GMT  
		Size: 7.7 KB (7690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba47ccd1e742ddbb02824a7cc67afead0e038e666de38fc6ee5efe8757179d4`  
		Last Modified: Sat, 22 Oct 2016 06:42:00 GMT  
		Size: 3.0 MB (3002379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31242bf68f8cf70208b8c11c7054a12ad6937525e130dc5927a193f36d9ead8`  
		Last Modified: Sat, 22 Oct 2016 06:41:56 GMT  
		Size: 257.3 KB (257340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4772c3edeaa02cbb57c47241d630fe1fc4b0ec4cc46706e89e8fdb83d41b7d69`  
		Last Modified: Sat, 22 Oct 2016 06:41:56 GMT  
		Size: 56.4 KB (56423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95dea3a6be2d6c1aac250cf565ee018fdaa3d47cb64fa1297896912e4d2eeab3`  
		Last Modified: Tue, 25 Oct 2016 17:05:26 GMT  
		Size: 8.7 MB (8674918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9eeb34bd206ab501f2c01703d14b257eed0a2ce448db103d99b7051cff0ffe`  
		Last Modified: Tue, 25 Oct 2016 17:05:25 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f5cef3f33674dfe1d888953b86770d6915d270da8ad00a5202a54845ef6f3b`  
		Last Modified: Tue, 25 Oct 2016 17:05:24 GMT  
		Size: 604.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:fpm-php7`

```console
$ docker pull joomla@sha256:0344d7eb7fe63b98692823bd0221b05fb33273da697d58fe6916931ef7d0d291
```

-	Platforms:
	-	linux; amd64

### `joomla:fpm-php7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.3 MB (166310424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e97a72b41147b00b3e5cc05781548d8ea8c5dca8ff5ecbd822b8d8412537cd91`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 23:01:05 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 21 Oct 2016 23:01:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 21 Oct 2016 23:01:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Oct 2016 23:01:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Oct 2016 23:10:18 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 21 Oct 2016 23:28:32 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Fri, 21 Oct 2016 23:28:32 GMT
ENV PHP_VERSION=7.0.12
# Fri, 21 Oct 2016 23:28:32 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.12.tar.xz.asc/from/this/mirror
# Fri, 21 Oct 2016 23:28:33 GMT
ENV PHP_SHA256=f3d6c49e1c242e5995dec15e503fde996c327eb86cd7ec45c690e93c971b83ff PHP_MD5=bdcc4dbdac90c2a39422786653059f70
# Fri, 21 Oct 2016 23:28:43 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 21 Oct 2016 23:28:43 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:32:23 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 21 Oct 2016 23:32:24 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:32:25 GMT
WORKDIR /var/www/html
# Fri, 21 Oct 2016 23:32:26 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 21 Oct 2016 23:32:26 GMT
EXPOSE 9000/tcp
# Fri, 21 Oct 2016 23:32:26 GMT
CMD ["php-fpm"]
# Sat, 22 Oct 2016 06:40:57 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 22 Oct 2016 06:41:22 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 22 Oct 2016 06:41:30 GMT
RUN docker-php-ext-install mysqli
# Sat, 22 Oct 2016 06:41:35 GMT
RUN docker-php-ext-install mcrypt
# Sat, 22 Oct 2016 06:41:35 GMT
VOLUME [/var/www/html]
# Tue, 25 Oct 2016 17:01:22 GMT
ENV JOOMLA_VERSION=3.6.4
# Tue, 25 Oct 2016 17:01:22 GMT
ENV JOOMLA_SHA1=81ecad99727fd336f72756439666808eaabcc716
# Tue, 25 Oct 2016 17:01:32 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 25 Oct 2016 17:01:33 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Tue, 25 Oct 2016 17:01:33 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 25 Oct 2016 17:01:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Oct 2016 17:01:34 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee27d07994b1416f2e7788dd5cb9465227c9f20b284fbe27e39dc16cdf09bef`  
		Last Modified: Fri, 21 Oct 2016 23:05:41 GMT  
		Size: 77.6 MB (77591114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43536f442a0088e8efbb5e950eb44fcd061bfae86fbe11e0d82c732284f40c2`  
		Last Modified: Fri, 21 Oct 2016 23:05:20 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3dfe5fc2fd0a2d5522e19c63e6d4171ed74a6f37273f8aec9b32f70d3feea68`  
		Last Modified: Fri, 21 Oct 2016 23:32:40 GMT  
		Size: 12.6 MB (12630266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff9da97b0bd5f09a8998c3b8032e6dd8f1d444656fce7470b04b5618a4bab0f`  
		Last Modified: Fri, 21 Oct 2016 23:32:36 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe4bdeeceddfa984fc7cbe4096caad726e396a83586c01313280c7cbb5a8971`  
		Last Modified: Fri, 21 Oct 2016 23:32:40 GMT  
		Size: 12.7 MB (12732773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f591100ce7c6e1bf2c85d16185b24feb51eaca9afb22261dc2d8f810114ad288`  
		Last Modified: Fri, 21 Oct 2016 23:32:36 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0963a0fcf1d1b60f5f1c3c7338943d02d8efba6a6c4ddeded1748c8e71a29c23`  
		Last Modified: Fri, 21 Oct 2016 23:32:36 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6113ca3025f36b607a357300e907b8340b69ac9169651ce399aa4385eaaf882`  
		Last Modified: Fri, 21 Oct 2016 23:32:36 GMT  
		Size: 7.7 KB (7690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba47ccd1e742ddbb02824a7cc67afead0e038e666de38fc6ee5efe8757179d4`  
		Last Modified: Sat, 22 Oct 2016 06:42:00 GMT  
		Size: 3.0 MB (3002379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31242bf68f8cf70208b8c11c7054a12ad6937525e130dc5927a193f36d9ead8`  
		Last Modified: Sat, 22 Oct 2016 06:41:56 GMT  
		Size: 257.3 KB (257340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4772c3edeaa02cbb57c47241d630fe1fc4b0ec4cc46706e89e8fdb83d41b7d69`  
		Last Modified: Sat, 22 Oct 2016 06:41:56 GMT  
		Size: 56.4 KB (56423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95dea3a6be2d6c1aac250cf565ee018fdaa3d47cb64fa1297896912e4d2eeab3`  
		Last Modified: Tue, 25 Oct 2016 17:05:26 GMT  
		Size: 8.7 MB (8674918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9eeb34bd206ab501f2c01703d14b257eed0a2ce448db103d99b7051cff0ffe`  
		Last Modified: Tue, 25 Oct 2016 17:05:25 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f5cef3f33674dfe1d888953b86770d6915d270da8ad00a5202a54845ef6f3b`  
		Last Modified: Tue, 25 Oct 2016 17:05:24 GMT  
		Size: 604.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
