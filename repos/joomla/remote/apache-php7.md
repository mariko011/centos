## `joomla:apache-php7`

```console
$ docker pull joomla@sha256:97d0d1c32a64607b03fc4ea71f2920074b6bc021346c68ff2dba597a73e124a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:apache-php7` - linux; amd64

```console
$ docker pull joomla@sha256:b73f8e4ce910ab6ad604d1abc137022c342df1a85dfdfef5849966fa55a671db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.2 MB (176193611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40b42315788edcb200010e9e435299ac6abbe6176f48d47a00efd49e17a05810`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:12:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Tue, 10 Oct 2017 01:13:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:13:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 10 Oct 2017 01:13:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 10 Oct 2017 01:22:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:22:12 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 10 Oct 2017 01:22:12 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 10 Oct 2017 01:22:13 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 10 Oct 2017 01:22:13 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 10 Oct 2017 01:22:14 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 10 Oct 2017 01:22:15 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 10 Oct 2017 01:22:15 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 10 Oct 2017 01:22:15 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 10 Oct 2017 01:22:15 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 01:22:16 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 01:22:16 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 10 Oct 2017 01:49:42 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 10 Oct 2017 01:49:42 GMT
ENV PHP_VERSION=7.0.24
# Tue, 10 Oct 2017 01:49:43 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.24.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.24.tar.xz.asc/from/this/mirror
# Tue, 10 Oct 2017 01:49:43 GMT
ENV PHP_SHA256=4dba7aa365193c9229f89f1975fad4c01135d29922a338ffb4a27e840d6f1c98 PHP_MD5=
# Tue, 10 Oct 2017 01:50:06 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 10 Oct 2017 01:50:06 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 10 Oct 2017 01:52:59 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 10 Oct 2017 01:53:00 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Tue, 10 Oct 2017 01:53:00 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 10 Oct 2017 01:53:00 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 10 Oct 2017 01:53:00 GMT
WORKDIR /var/www/html
# Tue, 10 Oct 2017 01:53:00 GMT
EXPOSE 80/tcp
# Tue, 10 Oct 2017 01:53:01 GMT
CMD ["apache2-foreground"]
# Tue, 10 Oct 2017 11:46:21 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 10 Oct 2017 11:46:21 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 10 Oct 2017 11:46:22 GMT
RUN a2enmod rewrite
# Tue, 10 Oct 2017 11:46:59 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 10 Oct 2017 11:49:40 GMT
RUN docker-php-ext-install mysqli
# Tue, 10 Oct 2017 11:49:45 GMT
RUN docker-php-ext-install mcrypt
# Tue, 10 Oct 2017 11:50:07 GMT
RUN docker-php-ext-install zip
# Tue, 10 Oct 2017 11:50:07 GMT
VOLUME [/var/www/html]
# Tue, 10 Oct 2017 11:50:08 GMT
ENV JOOMLA_VERSION=3.8.0
# Tue, 10 Oct 2017 11:50:08 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Tue, 10 Oct 2017 11:50:14 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 10 Oct 2017 11:50:14 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Tue, 10 Oct 2017 11:50:14 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 10 Oct 2017 11:50:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 11:50:15 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e22dddbf921907e82e3dbea870be475c0d58274774f04af85407e06ae4c6ba`  
		Last Modified: Tue, 10 Oct 2017 02:33:19 GMT  
		Size: 82.5 MB (82497677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf0df491fd2e905203a9dd11b8efc67a152337cdea7168cbece4e430d13d05f6`  
		Last Modified: Tue, 10 Oct 2017 02:33:00 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425226034711dd26e5829df0fb8971dfb8e5cfa13268ff67d1b8c23db0dd3274`  
		Last Modified: Tue, 10 Oct 2017 02:34:30 GMT  
		Size: 3.0 MB (3012916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5c1815115971b0359b716d5638f959880a1b2a904ff0e048f76c66b7833e2`  
		Last Modified: Tue, 10 Oct 2017 02:34:29 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98ab63dc099c167bdaff469cf4d01512f9b680b88a3f04c6188aa6f7a591fd34`  
		Last Modified: Tue, 10 Oct 2017 02:34:27 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:389f9436e431e262b395b2348f6266933830cfd69cbe41775e6e022e9c828167`  
		Last Modified: Tue, 10 Oct 2017 02:34:27 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5bc131d410eb84162eeea976435d25cd8b7ec8c75fbd2b77f5e872d23d42f5e`  
		Last Modified: Tue, 10 Oct 2017 02:34:27 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e94d9d92a4ccd1c9b3068d1c1c27498beec696fc577d29e688059dc36f9152`  
		Last Modified: Tue, 10 Oct 2017 02:37:12 GMT  
		Size: 12.3 MB (12314203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec3ddbd87f8973270196378ca653690bc1c4709614fcf8325493e6fad8bf7fd`  
		Last Modified: Tue, 10 Oct 2017 02:37:11 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45983b8f800d7009da9126a33f39512d8d47d862b009f97e3fc861d05adc54a9`  
		Last Modified: Tue, 10 Oct 2017 02:37:14 GMT  
		Size: 13.2 MB (13211989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4499895c0a765cfea33b15aa3f2377852025a827707f34ff124dc2c2da6d3bcd`  
		Last Modified: Tue, 10 Oct 2017 02:37:11 GMT  
		Size: 2.2 KB (2178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40385e7918dd48eee59566949f7deaaeda13527515f9c869de281bf0ad6aacd8`  
		Last Modified: Tue, 10 Oct 2017 02:37:11 GMT  
		Size: 900.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b99136ea73d70c4959bb7b83d5bd727802c3377cbe789b4848699a5aae370d`  
		Last Modified: Tue, 10 Oct 2017 11:59:50 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581578e52201a305f8f2641d856d91b3eb34290203b1b71ee1710be0a8386fe9`  
		Last Modified: Tue, 10 Oct 2017 11:59:50 GMT  
		Size: 3.0 MB (2996993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87c53debf14fa9c8be999075982ff6bd043e7d347515a2b20570b5cf0a693fd`  
		Last Modified: Tue, 10 Oct 2017 11:59:49 GMT  
		Size: 56.4 KB (56397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc5c810c21b2722780a3552f262560c6c168ed282ccb8efb981e89291326753`  
		Last Modified: Tue, 10 Oct 2017 11:59:47 GMT  
		Size: 18.3 KB (18287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50383711689b9d6abf27bccf8bf763bd96a1ec6b7591a1ca06704721163d165f`  
		Last Modified: Tue, 10 Oct 2017 11:59:47 GMT  
		Size: 72.8 KB (72759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb256423fa2cf1c4a1f66b8e98b6d7482567779c73874a69bf5420c33844403`  
		Last Modified: Tue, 10 Oct 2017 11:59:52 GMT  
		Size: 9.4 MB (9409005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5360f9f094ac3bc0c836d39c8063e9372bbfbef1852495dd4971d2a44421807a`  
		Last Modified: Tue, 10 Oct 2017 11:59:47 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e1832a9efd64a3b5c1606901b12e3e89004c30425b216016a0fcf047e1d19a`  
		Last Modified: Tue, 10 Oct 2017 11:59:47 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
