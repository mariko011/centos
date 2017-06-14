<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `joomla`

-	[`joomla:3.7.0-apache`](#joomla370-apache)
-	[`joomla:3.7-apache`](#joomla37-apache)
-	[`joomla:3-apache`](#joomla3-apache)
-	[`joomla:apache`](#joomlaapache)
-	[`joomla:3.7.0`](#joomla370)
-	[`joomla:3.7`](#joomla37)
-	[`joomla:3`](#joomla3)
-	[`joomla:latest`](#joomlalatest)
-	[`joomla:3.7.0-apache-php7`](#joomla370-apache-php7)
-	[`joomla:3.7-apache-php7`](#joomla37-apache-php7)
-	[`joomla:3-apache-php7`](#joomla3-apache-php7)
-	[`joomla:apache-php7`](#joomlaapache-php7)
-	[`joomla:3.7.0-fpm`](#joomla370-fpm)
-	[`joomla:3.7-fpm`](#joomla37-fpm)
-	[`joomla:3-fpm`](#joomla3-fpm)
-	[`joomla:fpm`](#joomlafpm)
-	[`joomla:3.7.0-fpm-php7`](#joomla370-fpm-php7)
-	[`joomla:3.7-fpm-php7`](#joomla37-fpm-php7)
-	[`joomla:3-fpm-php7`](#joomla3-fpm-php7)
-	[`joomla:fpm-php7`](#joomlafpm-php7)

## `joomla:3.7.0-apache`

```console
$ docker pull joomla@sha256:058d943974159cefaaa82e670e6a9c5bae6c24f97e9624a2329ba2baffdf8d37
```

-	Platforms:
	-	linux; amd64

### `joomla:3.7.0-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.5 MB (171527292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:324beac4aaccfb916ee18b26775dd7c50b42505749a3c957bd985222a83bfaf1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 22:52:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:52:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 08 Jun 2017 22:53:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 08 Jun 2017 22:53:02 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 08 Jun 2017 22:53:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 08 Jun 2017 22:53:05 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 08 Jun 2017 22:53:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 08 Jun 2017 22:53:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 09 Jun 2017 15:20:23 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 09 Jun 2017 15:20:24 GMT
ENV PHP_VERSION=5.6.30
# Fri, 09 Jun 2017 15:20:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 09 Jun 2017 15:20:26 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 09 Jun 2017 15:21:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 15:21:14 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 13 Jun 2017 23:04:35 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 13 Jun 2017 23:04:55 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Tue, 13 Jun 2017 23:04:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 13 Jun 2017 23:04:57 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 13 Jun 2017 23:05:31 GMT
WORKDIR /var/www/html
# Tue, 13 Jun 2017 23:05:54 GMT
EXPOSE 80/tcp
# Tue, 13 Jun 2017 23:05:55 GMT
CMD ["apache2-foreground"]
# Wed, 14 Jun 2017 07:48:29 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 14 Jun 2017 07:48:30 GMT
RUN a2enmod rewrite
# Wed, 14 Jun 2017 07:48:58 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 14 Jun 2017 07:49:28 GMT
RUN docker-php-ext-install mysqli
# Wed, 14 Jun 2017 07:49:52 GMT
RUN docker-php-ext-install mcrypt
# Wed, 14 Jun 2017 07:50:33 GMT
RUN docker-php-ext-install zip
# Wed, 14 Jun 2017 07:50:38 GMT
VOLUME [/var/www/html]
# Wed, 14 Jun 2017 07:50:40 GMT
ENV JOOMLA_VERSION=3.7.0
# Wed, 14 Jun 2017 07:50:41 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Wed, 14 Jun 2017 07:51:12 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 14 Jun 2017 07:51:31 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 14 Jun 2017 07:51:32 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 14 Jun 2017 07:51:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Jun 2017 07:51:56 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e9b0c1871f3a98d9c059e5bd8c32329922b597e955aeb2996b83611a31ed1c`  
		Last Modified: Fri, 09 Jun 2017 05:51:26 GMT  
		Size: 2.8 MB (2783914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e2756f5f08ec966dbb623239d79701ffad4658c720373b154ec326f2458532`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ca1686b1712d41666865c88a26db11ecb736950c4a8a4070198c1e1b77951`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b20a8291dfb15667d29b65693a605462198881fca7d83d77e68c985457388`  
		Last Modified: Fri, 09 Jun 2017 05:51:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0c35492a16533f7fd075deaabee62790d1b0a914df163d74f7d6bc140fe256`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719b692e57dd378e12ed64795750adaf512987b8829af9bee479518dc09d83a4`  
		Last Modified: Fri, 09 Jun 2017 16:03:52 GMT  
		Size: 12.6 MB (12576817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f393a2429aaf4dc105a6fead7aa3a3e829bde6262a451fc28c5f32c456eaa5`  
		Last Modified: Fri, 09 Jun 2017 16:03:50 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:125592bbc92c1c938a35654945beccaf845fe031e73b50a2ddeb4f0729835a3d`  
		Last Modified: Wed, 14 Jun 2017 00:05:23 GMT  
		Size: 9.2 MB (9174033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a288be7910040dbef2e16ebdf8221f9578395af7e30dfb4edd2e6d8a680c14d`  
		Last Modified: Wed, 14 Jun 2017 00:05:20 GMT  
		Size: 2.1 KB (2125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5502930c88ef5fbef3a9bea950db62ca5d1a3ea535513d99aa95730cbd8c29`  
		Last Modified: Wed, 14 Jun 2017 00:05:19 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb919c0ed5a5173678bfa1687e35b66953a7b5679b022b160f174f169e9b961f`  
		Last Modified: Wed, 14 Jun 2017 08:04:10 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e02cba4cff2362a45e46e56294d7131e2eb608293f3e5686ebc24431fdfda3`  
		Last Modified: Wed, 14 Jun 2017 08:04:12 GMT  
		Size: 2.8 MB (2774838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5436365a1cd8f7b057a5c04add445ba19861b897fc9c68b76e2c91977462b7cc`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 57.9 KB (57945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdef61a05587e34834d4f466992374e555d2dde9fd3f1747a09aad07df3863d`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 19.7 KB (19660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e164618885917c05defe65c72eb6481902f5a390f63d44362ec83edb2fc08e45`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 63.4 KB (63359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20fc5d795d69a9bcffd4d03125db59c3f9df6371b44e70b824ef10a85a9e4a8`  
		Last Modified: Wed, 14 Jun 2017 08:04:10 GMT  
		Size: 9.0 MB (9006708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80fd96bc1dd1a88c75bc4114f3f706249884a277434d3b9ad90922b8d4c3ae25`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2593a14a0db2c2449171bda9985ed4c4b0c7b4b265de1b8f57772aa2933569b6`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.7-apache`

```console
$ docker pull joomla@sha256:058d943974159cefaaa82e670e6a9c5bae6c24f97e9624a2329ba2baffdf8d37
```

-	Platforms:
	-	linux; amd64

### `joomla:3.7-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.5 MB (171527292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:324beac4aaccfb916ee18b26775dd7c50b42505749a3c957bd985222a83bfaf1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 22:52:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:52:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 08 Jun 2017 22:53:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 08 Jun 2017 22:53:02 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 08 Jun 2017 22:53:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 08 Jun 2017 22:53:05 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 08 Jun 2017 22:53:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 08 Jun 2017 22:53:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 09 Jun 2017 15:20:23 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 09 Jun 2017 15:20:24 GMT
ENV PHP_VERSION=5.6.30
# Fri, 09 Jun 2017 15:20:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 09 Jun 2017 15:20:26 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 09 Jun 2017 15:21:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 15:21:14 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 13 Jun 2017 23:04:35 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 13 Jun 2017 23:04:55 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Tue, 13 Jun 2017 23:04:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 13 Jun 2017 23:04:57 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 13 Jun 2017 23:05:31 GMT
WORKDIR /var/www/html
# Tue, 13 Jun 2017 23:05:54 GMT
EXPOSE 80/tcp
# Tue, 13 Jun 2017 23:05:55 GMT
CMD ["apache2-foreground"]
# Wed, 14 Jun 2017 07:48:29 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 14 Jun 2017 07:48:30 GMT
RUN a2enmod rewrite
# Wed, 14 Jun 2017 07:48:58 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 14 Jun 2017 07:49:28 GMT
RUN docker-php-ext-install mysqli
# Wed, 14 Jun 2017 07:49:52 GMT
RUN docker-php-ext-install mcrypt
# Wed, 14 Jun 2017 07:50:33 GMT
RUN docker-php-ext-install zip
# Wed, 14 Jun 2017 07:50:38 GMT
VOLUME [/var/www/html]
# Wed, 14 Jun 2017 07:50:40 GMT
ENV JOOMLA_VERSION=3.7.0
# Wed, 14 Jun 2017 07:50:41 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Wed, 14 Jun 2017 07:51:12 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 14 Jun 2017 07:51:31 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 14 Jun 2017 07:51:32 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 14 Jun 2017 07:51:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Jun 2017 07:51:56 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e9b0c1871f3a98d9c059e5bd8c32329922b597e955aeb2996b83611a31ed1c`  
		Last Modified: Fri, 09 Jun 2017 05:51:26 GMT  
		Size: 2.8 MB (2783914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e2756f5f08ec966dbb623239d79701ffad4658c720373b154ec326f2458532`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ca1686b1712d41666865c88a26db11ecb736950c4a8a4070198c1e1b77951`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b20a8291dfb15667d29b65693a605462198881fca7d83d77e68c985457388`  
		Last Modified: Fri, 09 Jun 2017 05:51:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0c35492a16533f7fd075deaabee62790d1b0a914df163d74f7d6bc140fe256`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719b692e57dd378e12ed64795750adaf512987b8829af9bee479518dc09d83a4`  
		Last Modified: Fri, 09 Jun 2017 16:03:52 GMT  
		Size: 12.6 MB (12576817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f393a2429aaf4dc105a6fead7aa3a3e829bde6262a451fc28c5f32c456eaa5`  
		Last Modified: Fri, 09 Jun 2017 16:03:50 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:125592bbc92c1c938a35654945beccaf845fe031e73b50a2ddeb4f0729835a3d`  
		Last Modified: Wed, 14 Jun 2017 00:05:23 GMT  
		Size: 9.2 MB (9174033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a288be7910040dbef2e16ebdf8221f9578395af7e30dfb4edd2e6d8a680c14d`  
		Last Modified: Wed, 14 Jun 2017 00:05:20 GMT  
		Size: 2.1 KB (2125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5502930c88ef5fbef3a9bea950db62ca5d1a3ea535513d99aa95730cbd8c29`  
		Last Modified: Wed, 14 Jun 2017 00:05:19 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb919c0ed5a5173678bfa1687e35b66953a7b5679b022b160f174f169e9b961f`  
		Last Modified: Wed, 14 Jun 2017 08:04:10 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e02cba4cff2362a45e46e56294d7131e2eb608293f3e5686ebc24431fdfda3`  
		Last Modified: Wed, 14 Jun 2017 08:04:12 GMT  
		Size: 2.8 MB (2774838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5436365a1cd8f7b057a5c04add445ba19861b897fc9c68b76e2c91977462b7cc`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 57.9 KB (57945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdef61a05587e34834d4f466992374e555d2dde9fd3f1747a09aad07df3863d`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 19.7 KB (19660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e164618885917c05defe65c72eb6481902f5a390f63d44362ec83edb2fc08e45`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 63.4 KB (63359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20fc5d795d69a9bcffd4d03125db59c3f9df6371b44e70b824ef10a85a9e4a8`  
		Last Modified: Wed, 14 Jun 2017 08:04:10 GMT  
		Size: 9.0 MB (9006708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80fd96bc1dd1a88c75bc4114f3f706249884a277434d3b9ad90922b8d4c3ae25`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2593a14a0db2c2449171bda9985ed4c4b0c7b4b265de1b8f57772aa2933569b6`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-apache`

```console
$ docker pull joomla@sha256:058d943974159cefaaa82e670e6a9c5bae6c24f97e9624a2329ba2baffdf8d37
```

-	Platforms:
	-	linux; amd64

### `joomla:3-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.5 MB (171527292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:324beac4aaccfb916ee18b26775dd7c50b42505749a3c957bd985222a83bfaf1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 22:52:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:52:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 08 Jun 2017 22:53:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 08 Jun 2017 22:53:02 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 08 Jun 2017 22:53:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 08 Jun 2017 22:53:05 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 08 Jun 2017 22:53:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 08 Jun 2017 22:53:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 09 Jun 2017 15:20:23 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 09 Jun 2017 15:20:24 GMT
ENV PHP_VERSION=5.6.30
# Fri, 09 Jun 2017 15:20:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 09 Jun 2017 15:20:26 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 09 Jun 2017 15:21:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 15:21:14 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 13 Jun 2017 23:04:35 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 13 Jun 2017 23:04:55 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Tue, 13 Jun 2017 23:04:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 13 Jun 2017 23:04:57 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 13 Jun 2017 23:05:31 GMT
WORKDIR /var/www/html
# Tue, 13 Jun 2017 23:05:54 GMT
EXPOSE 80/tcp
# Tue, 13 Jun 2017 23:05:55 GMT
CMD ["apache2-foreground"]
# Wed, 14 Jun 2017 07:48:29 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 14 Jun 2017 07:48:30 GMT
RUN a2enmod rewrite
# Wed, 14 Jun 2017 07:48:58 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 14 Jun 2017 07:49:28 GMT
RUN docker-php-ext-install mysqli
# Wed, 14 Jun 2017 07:49:52 GMT
RUN docker-php-ext-install mcrypt
# Wed, 14 Jun 2017 07:50:33 GMT
RUN docker-php-ext-install zip
# Wed, 14 Jun 2017 07:50:38 GMT
VOLUME [/var/www/html]
# Wed, 14 Jun 2017 07:50:40 GMT
ENV JOOMLA_VERSION=3.7.0
# Wed, 14 Jun 2017 07:50:41 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Wed, 14 Jun 2017 07:51:12 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 14 Jun 2017 07:51:31 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 14 Jun 2017 07:51:32 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 14 Jun 2017 07:51:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Jun 2017 07:51:56 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e9b0c1871f3a98d9c059e5bd8c32329922b597e955aeb2996b83611a31ed1c`  
		Last Modified: Fri, 09 Jun 2017 05:51:26 GMT  
		Size: 2.8 MB (2783914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e2756f5f08ec966dbb623239d79701ffad4658c720373b154ec326f2458532`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ca1686b1712d41666865c88a26db11ecb736950c4a8a4070198c1e1b77951`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b20a8291dfb15667d29b65693a605462198881fca7d83d77e68c985457388`  
		Last Modified: Fri, 09 Jun 2017 05:51:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0c35492a16533f7fd075deaabee62790d1b0a914df163d74f7d6bc140fe256`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719b692e57dd378e12ed64795750adaf512987b8829af9bee479518dc09d83a4`  
		Last Modified: Fri, 09 Jun 2017 16:03:52 GMT  
		Size: 12.6 MB (12576817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f393a2429aaf4dc105a6fead7aa3a3e829bde6262a451fc28c5f32c456eaa5`  
		Last Modified: Fri, 09 Jun 2017 16:03:50 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:125592bbc92c1c938a35654945beccaf845fe031e73b50a2ddeb4f0729835a3d`  
		Last Modified: Wed, 14 Jun 2017 00:05:23 GMT  
		Size: 9.2 MB (9174033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a288be7910040dbef2e16ebdf8221f9578395af7e30dfb4edd2e6d8a680c14d`  
		Last Modified: Wed, 14 Jun 2017 00:05:20 GMT  
		Size: 2.1 KB (2125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5502930c88ef5fbef3a9bea950db62ca5d1a3ea535513d99aa95730cbd8c29`  
		Last Modified: Wed, 14 Jun 2017 00:05:19 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb919c0ed5a5173678bfa1687e35b66953a7b5679b022b160f174f169e9b961f`  
		Last Modified: Wed, 14 Jun 2017 08:04:10 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e02cba4cff2362a45e46e56294d7131e2eb608293f3e5686ebc24431fdfda3`  
		Last Modified: Wed, 14 Jun 2017 08:04:12 GMT  
		Size: 2.8 MB (2774838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5436365a1cd8f7b057a5c04add445ba19861b897fc9c68b76e2c91977462b7cc`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 57.9 KB (57945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdef61a05587e34834d4f466992374e555d2dde9fd3f1747a09aad07df3863d`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 19.7 KB (19660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e164618885917c05defe65c72eb6481902f5a390f63d44362ec83edb2fc08e45`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 63.4 KB (63359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20fc5d795d69a9bcffd4d03125db59c3f9df6371b44e70b824ef10a85a9e4a8`  
		Last Modified: Wed, 14 Jun 2017 08:04:10 GMT  
		Size: 9.0 MB (9006708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80fd96bc1dd1a88c75bc4114f3f706249884a277434d3b9ad90922b8d4c3ae25`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2593a14a0db2c2449171bda9985ed4c4b0c7b4b265de1b8f57772aa2933569b6`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:apache`

```console
$ docker pull joomla@sha256:058d943974159cefaaa82e670e6a9c5bae6c24f97e9624a2329ba2baffdf8d37
```

-	Platforms:
	-	linux; amd64

### `joomla:apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.5 MB (171527292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:324beac4aaccfb916ee18b26775dd7c50b42505749a3c957bd985222a83bfaf1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 22:52:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:52:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 08 Jun 2017 22:53:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 08 Jun 2017 22:53:02 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 08 Jun 2017 22:53:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 08 Jun 2017 22:53:05 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 08 Jun 2017 22:53:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 08 Jun 2017 22:53:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 09 Jun 2017 15:20:23 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 09 Jun 2017 15:20:24 GMT
ENV PHP_VERSION=5.6.30
# Fri, 09 Jun 2017 15:20:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 09 Jun 2017 15:20:26 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 09 Jun 2017 15:21:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 15:21:14 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 13 Jun 2017 23:04:35 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 13 Jun 2017 23:04:55 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Tue, 13 Jun 2017 23:04:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 13 Jun 2017 23:04:57 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 13 Jun 2017 23:05:31 GMT
WORKDIR /var/www/html
# Tue, 13 Jun 2017 23:05:54 GMT
EXPOSE 80/tcp
# Tue, 13 Jun 2017 23:05:55 GMT
CMD ["apache2-foreground"]
# Wed, 14 Jun 2017 07:48:29 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 14 Jun 2017 07:48:30 GMT
RUN a2enmod rewrite
# Wed, 14 Jun 2017 07:48:58 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 14 Jun 2017 07:49:28 GMT
RUN docker-php-ext-install mysqli
# Wed, 14 Jun 2017 07:49:52 GMT
RUN docker-php-ext-install mcrypt
# Wed, 14 Jun 2017 07:50:33 GMT
RUN docker-php-ext-install zip
# Wed, 14 Jun 2017 07:50:38 GMT
VOLUME [/var/www/html]
# Wed, 14 Jun 2017 07:50:40 GMT
ENV JOOMLA_VERSION=3.7.0
# Wed, 14 Jun 2017 07:50:41 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Wed, 14 Jun 2017 07:51:12 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 14 Jun 2017 07:51:31 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 14 Jun 2017 07:51:32 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 14 Jun 2017 07:51:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Jun 2017 07:51:56 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e9b0c1871f3a98d9c059e5bd8c32329922b597e955aeb2996b83611a31ed1c`  
		Last Modified: Fri, 09 Jun 2017 05:51:26 GMT  
		Size: 2.8 MB (2783914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e2756f5f08ec966dbb623239d79701ffad4658c720373b154ec326f2458532`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ca1686b1712d41666865c88a26db11ecb736950c4a8a4070198c1e1b77951`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b20a8291dfb15667d29b65693a605462198881fca7d83d77e68c985457388`  
		Last Modified: Fri, 09 Jun 2017 05:51:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0c35492a16533f7fd075deaabee62790d1b0a914df163d74f7d6bc140fe256`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719b692e57dd378e12ed64795750adaf512987b8829af9bee479518dc09d83a4`  
		Last Modified: Fri, 09 Jun 2017 16:03:52 GMT  
		Size: 12.6 MB (12576817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f393a2429aaf4dc105a6fead7aa3a3e829bde6262a451fc28c5f32c456eaa5`  
		Last Modified: Fri, 09 Jun 2017 16:03:50 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:125592bbc92c1c938a35654945beccaf845fe031e73b50a2ddeb4f0729835a3d`  
		Last Modified: Wed, 14 Jun 2017 00:05:23 GMT  
		Size: 9.2 MB (9174033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a288be7910040dbef2e16ebdf8221f9578395af7e30dfb4edd2e6d8a680c14d`  
		Last Modified: Wed, 14 Jun 2017 00:05:20 GMT  
		Size: 2.1 KB (2125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5502930c88ef5fbef3a9bea950db62ca5d1a3ea535513d99aa95730cbd8c29`  
		Last Modified: Wed, 14 Jun 2017 00:05:19 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb919c0ed5a5173678bfa1687e35b66953a7b5679b022b160f174f169e9b961f`  
		Last Modified: Wed, 14 Jun 2017 08:04:10 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e02cba4cff2362a45e46e56294d7131e2eb608293f3e5686ebc24431fdfda3`  
		Last Modified: Wed, 14 Jun 2017 08:04:12 GMT  
		Size: 2.8 MB (2774838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5436365a1cd8f7b057a5c04add445ba19861b897fc9c68b76e2c91977462b7cc`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 57.9 KB (57945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdef61a05587e34834d4f466992374e555d2dde9fd3f1747a09aad07df3863d`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 19.7 KB (19660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e164618885917c05defe65c72eb6481902f5a390f63d44362ec83edb2fc08e45`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 63.4 KB (63359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20fc5d795d69a9bcffd4d03125db59c3f9df6371b44e70b824ef10a85a9e4a8`  
		Last Modified: Wed, 14 Jun 2017 08:04:10 GMT  
		Size: 9.0 MB (9006708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80fd96bc1dd1a88c75bc4114f3f706249884a277434d3b9ad90922b8d4c3ae25`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2593a14a0db2c2449171bda9985ed4c4b0c7b4b265de1b8f57772aa2933569b6`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.7.0`

```console
$ docker pull joomla@sha256:058d943974159cefaaa82e670e6a9c5bae6c24f97e9624a2329ba2baffdf8d37
```

-	Platforms:
	-	linux; amd64

### `joomla:3.7.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.5 MB (171527292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:324beac4aaccfb916ee18b26775dd7c50b42505749a3c957bd985222a83bfaf1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 22:52:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:52:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 08 Jun 2017 22:53:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 08 Jun 2017 22:53:02 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 08 Jun 2017 22:53:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 08 Jun 2017 22:53:05 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 08 Jun 2017 22:53:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 08 Jun 2017 22:53:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 09 Jun 2017 15:20:23 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 09 Jun 2017 15:20:24 GMT
ENV PHP_VERSION=5.6.30
# Fri, 09 Jun 2017 15:20:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 09 Jun 2017 15:20:26 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 09 Jun 2017 15:21:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 15:21:14 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 13 Jun 2017 23:04:35 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 13 Jun 2017 23:04:55 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Tue, 13 Jun 2017 23:04:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 13 Jun 2017 23:04:57 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 13 Jun 2017 23:05:31 GMT
WORKDIR /var/www/html
# Tue, 13 Jun 2017 23:05:54 GMT
EXPOSE 80/tcp
# Tue, 13 Jun 2017 23:05:55 GMT
CMD ["apache2-foreground"]
# Wed, 14 Jun 2017 07:48:29 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 14 Jun 2017 07:48:30 GMT
RUN a2enmod rewrite
# Wed, 14 Jun 2017 07:48:58 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 14 Jun 2017 07:49:28 GMT
RUN docker-php-ext-install mysqli
# Wed, 14 Jun 2017 07:49:52 GMT
RUN docker-php-ext-install mcrypt
# Wed, 14 Jun 2017 07:50:33 GMT
RUN docker-php-ext-install zip
# Wed, 14 Jun 2017 07:50:38 GMT
VOLUME [/var/www/html]
# Wed, 14 Jun 2017 07:50:40 GMT
ENV JOOMLA_VERSION=3.7.0
# Wed, 14 Jun 2017 07:50:41 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Wed, 14 Jun 2017 07:51:12 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 14 Jun 2017 07:51:31 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 14 Jun 2017 07:51:32 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 14 Jun 2017 07:51:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Jun 2017 07:51:56 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e9b0c1871f3a98d9c059e5bd8c32329922b597e955aeb2996b83611a31ed1c`  
		Last Modified: Fri, 09 Jun 2017 05:51:26 GMT  
		Size: 2.8 MB (2783914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e2756f5f08ec966dbb623239d79701ffad4658c720373b154ec326f2458532`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ca1686b1712d41666865c88a26db11ecb736950c4a8a4070198c1e1b77951`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b20a8291dfb15667d29b65693a605462198881fca7d83d77e68c985457388`  
		Last Modified: Fri, 09 Jun 2017 05:51:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0c35492a16533f7fd075deaabee62790d1b0a914df163d74f7d6bc140fe256`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719b692e57dd378e12ed64795750adaf512987b8829af9bee479518dc09d83a4`  
		Last Modified: Fri, 09 Jun 2017 16:03:52 GMT  
		Size: 12.6 MB (12576817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f393a2429aaf4dc105a6fead7aa3a3e829bde6262a451fc28c5f32c456eaa5`  
		Last Modified: Fri, 09 Jun 2017 16:03:50 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:125592bbc92c1c938a35654945beccaf845fe031e73b50a2ddeb4f0729835a3d`  
		Last Modified: Wed, 14 Jun 2017 00:05:23 GMT  
		Size: 9.2 MB (9174033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a288be7910040dbef2e16ebdf8221f9578395af7e30dfb4edd2e6d8a680c14d`  
		Last Modified: Wed, 14 Jun 2017 00:05:20 GMT  
		Size: 2.1 KB (2125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5502930c88ef5fbef3a9bea950db62ca5d1a3ea535513d99aa95730cbd8c29`  
		Last Modified: Wed, 14 Jun 2017 00:05:19 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb919c0ed5a5173678bfa1687e35b66953a7b5679b022b160f174f169e9b961f`  
		Last Modified: Wed, 14 Jun 2017 08:04:10 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e02cba4cff2362a45e46e56294d7131e2eb608293f3e5686ebc24431fdfda3`  
		Last Modified: Wed, 14 Jun 2017 08:04:12 GMT  
		Size: 2.8 MB (2774838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5436365a1cd8f7b057a5c04add445ba19861b897fc9c68b76e2c91977462b7cc`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 57.9 KB (57945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdef61a05587e34834d4f466992374e555d2dde9fd3f1747a09aad07df3863d`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 19.7 KB (19660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e164618885917c05defe65c72eb6481902f5a390f63d44362ec83edb2fc08e45`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 63.4 KB (63359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20fc5d795d69a9bcffd4d03125db59c3f9df6371b44e70b824ef10a85a9e4a8`  
		Last Modified: Wed, 14 Jun 2017 08:04:10 GMT  
		Size: 9.0 MB (9006708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80fd96bc1dd1a88c75bc4114f3f706249884a277434d3b9ad90922b8d4c3ae25`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2593a14a0db2c2449171bda9985ed4c4b0c7b4b265de1b8f57772aa2933569b6`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.7`

```console
$ docker pull joomla@sha256:058d943974159cefaaa82e670e6a9c5bae6c24f97e9624a2329ba2baffdf8d37
```

-	Platforms:
	-	linux; amd64

### `joomla:3.7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.5 MB (171527292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:324beac4aaccfb916ee18b26775dd7c50b42505749a3c957bd985222a83bfaf1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 22:52:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:52:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 08 Jun 2017 22:53:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 08 Jun 2017 22:53:02 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 08 Jun 2017 22:53:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 08 Jun 2017 22:53:05 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 08 Jun 2017 22:53:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 08 Jun 2017 22:53:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 09 Jun 2017 15:20:23 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 09 Jun 2017 15:20:24 GMT
ENV PHP_VERSION=5.6.30
# Fri, 09 Jun 2017 15:20:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 09 Jun 2017 15:20:26 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 09 Jun 2017 15:21:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 15:21:14 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 13 Jun 2017 23:04:35 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 13 Jun 2017 23:04:55 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Tue, 13 Jun 2017 23:04:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 13 Jun 2017 23:04:57 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 13 Jun 2017 23:05:31 GMT
WORKDIR /var/www/html
# Tue, 13 Jun 2017 23:05:54 GMT
EXPOSE 80/tcp
# Tue, 13 Jun 2017 23:05:55 GMT
CMD ["apache2-foreground"]
# Wed, 14 Jun 2017 07:48:29 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 14 Jun 2017 07:48:30 GMT
RUN a2enmod rewrite
# Wed, 14 Jun 2017 07:48:58 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 14 Jun 2017 07:49:28 GMT
RUN docker-php-ext-install mysqli
# Wed, 14 Jun 2017 07:49:52 GMT
RUN docker-php-ext-install mcrypt
# Wed, 14 Jun 2017 07:50:33 GMT
RUN docker-php-ext-install zip
# Wed, 14 Jun 2017 07:50:38 GMT
VOLUME [/var/www/html]
# Wed, 14 Jun 2017 07:50:40 GMT
ENV JOOMLA_VERSION=3.7.0
# Wed, 14 Jun 2017 07:50:41 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Wed, 14 Jun 2017 07:51:12 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 14 Jun 2017 07:51:31 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 14 Jun 2017 07:51:32 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 14 Jun 2017 07:51:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Jun 2017 07:51:56 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e9b0c1871f3a98d9c059e5bd8c32329922b597e955aeb2996b83611a31ed1c`  
		Last Modified: Fri, 09 Jun 2017 05:51:26 GMT  
		Size: 2.8 MB (2783914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e2756f5f08ec966dbb623239d79701ffad4658c720373b154ec326f2458532`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ca1686b1712d41666865c88a26db11ecb736950c4a8a4070198c1e1b77951`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b20a8291dfb15667d29b65693a605462198881fca7d83d77e68c985457388`  
		Last Modified: Fri, 09 Jun 2017 05:51:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0c35492a16533f7fd075deaabee62790d1b0a914df163d74f7d6bc140fe256`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719b692e57dd378e12ed64795750adaf512987b8829af9bee479518dc09d83a4`  
		Last Modified: Fri, 09 Jun 2017 16:03:52 GMT  
		Size: 12.6 MB (12576817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f393a2429aaf4dc105a6fead7aa3a3e829bde6262a451fc28c5f32c456eaa5`  
		Last Modified: Fri, 09 Jun 2017 16:03:50 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:125592bbc92c1c938a35654945beccaf845fe031e73b50a2ddeb4f0729835a3d`  
		Last Modified: Wed, 14 Jun 2017 00:05:23 GMT  
		Size: 9.2 MB (9174033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a288be7910040dbef2e16ebdf8221f9578395af7e30dfb4edd2e6d8a680c14d`  
		Last Modified: Wed, 14 Jun 2017 00:05:20 GMT  
		Size: 2.1 KB (2125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5502930c88ef5fbef3a9bea950db62ca5d1a3ea535513d99aa95730cbd8c29`  
		Last Modified: Wed, 14 Jun 2017 00:05:19 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb919c0ed5a5173678bfa1687e35b66953a7b5679b022b160f174f169e9b961f`  
		Last Modified: Wed, 14 Jun 2017 08:04:10 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e02cba4cff2362a45e46e56294d7131e2eb608293f3e5686ebc24431fdfda3`  
		Last Modified: Wed, 14 Jun 2017 08:04:12 GMT  
		Size: 2.8 MB (2774838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5436365a1cd8f7b057a5c04add445ba19861b897fc9c68b76e2c91977462b7cc`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 57.9 KB (57945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdef61a05587e34834d4f466992374e555d2dde9fd3f1747a09aad07df3863d`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 19.7 KB (19660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e164618885917c05defe65c72eb6481902f5a390f63d44362ec83edb2fc08e45`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 63.4 KB (63359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20fc5d795d69a9bcffd4d03125db59c3f9df6371b44e70b824ef10a85a9e4a8`  
		Last Modified: Wed, 14 Jun 2017 08:04:10 GMT  
		Size: 9.0 MB (9006708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80fd96bc1dd1a88c75bc4114f3f706249884a277434d3b9ad90922b8d4c3ae25`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2593a14a0db2c2449171bda9985ed4c4b0c7b4b265de1b8f57772aa2933569b6`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3`

```console
$ docker pull joomla@sha256:058d943974159cefaaa82e670e6a9c5bae6c24f97e9624a2329ba2baffdf8d37
```

-	Platforms:
	-	linux; amd64

### `joomla:3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.5 MB (171527292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:324beac4aaccfb916ee18b26775dd7c50b42505749a3c957bd985222a83bfaf1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 22:52:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:52:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 08 Jun 2017 22:53:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 08 Jun 2017 22:53:02 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 08 Jun 2017 22:53:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 08 Jun 2017 22:53:05 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 08 Jun 2017 22:53:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 08 Jun 2017 22:53:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 09 Jun 2017 15:20:23 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 09 Jun 2017 15:20:24 GMT
ENV PHP_VERSION=5.6.30
# Fri, 09 Jun 2017 15:20:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 09 Jun 2017 15:20:26 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 09 Jun 2017 15:21:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 15:21:14 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 13 Jun 2017 23:04:35 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 13 Jun 2017 23:04:55 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Tue, 13 Jun 2017 23:04:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 13 Jun 2017 23:04:57 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 13 Jun 2017 23:05:31 GMT
WORKDIR /var/www/html
# Tue, 13 Jun 2017 23:05:54 GMT
EXPOSE 80/tcp
# Tue, 13 Jun 2017 23:05:55 GMT
CMD ["apache2-foreground"]
# Wed, 14 Jun 2017 07:48:29 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 14 Jun 2017 07:48:30 GMT
RUN a2enmod rewrite
# Wed, 14 Jun 2017 07:48:58 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 14 Jun 2017 07:49:28 GMT
RUN docker-php-ext-install mysqli
# Wed, 14 Jun 2017 07:49:52 GMT
RUN docker-php-ext-install mcrypt
# Wed, 14 Jun 2017 07:50:33 GMT
RUN docker-php-ext-install zip
# Wed, 14 Jun 2017 07:50:38 GMT
VOLUME [/var/www/html]
# Wed, 14 Jun 2017 07:50:40 GMT
ENV JOOMLA_VERSION=3.7.0
# Wed, 14 Jun 2017 07:50:41 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Wed, 14 Jun 2017 07:51:12 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 14 Jun 2017 07:51:31 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 14 Jun 2017 07:51:32 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 14 Jun 2017 07:51:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Jun 2017 07:51:56 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e9b0c1871f3a98d9c059e5bd8c32329922b597e955aeb2996b83611a31ed1c`  
		Last Modified: Fri, 09 Jun 2017 05:51:26 GMT  
		Size: 2.8 MB (2783914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e2756f5f08ec966dbb623239d79701ffad4658c720373b154ec326f2458532`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ca1686b1712d41666865c88a26db11ecb736950c4a8a4070198c1e1b77951`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b20a8291dfb15667d29b65693a605462198881fca7d83d77e68c985457388`  
		Last Modified: Fri, 09 Jun 2017 05:51:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0c35492a16533f7fd075deaabee62790d1b0a914df163d74f7d6bc140fe256`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719b692e57dd378e12ed64795750adaf512987b8829af9bee479518dc09d83a4`  
		Last Modified: Fri, 09 Jun 2017 16:03:52 GMT  
		Size: 12.6 MB (12576817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f393a2429aaf4dc105a6fead7aa3a3e829bde6262a451fc28c5f32c456eaa5`  
		Last Modified: Fri, 09 Jun 2017 16:03:50 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:125592bbc92c1c938a35654945beccaf845fe031e73b50a2ddeb4f0729835a3d`  
		Last Modified: Wed, 14 Jun 2017 00:05:23 GMT  
		Size: 9.2 MB (9174033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a288be7910040dbef2e16ebdf8221f9578395af7e30dfb4edd2e6d8a680c14d`  
		Last Modified: Wed, 14 Jun 2017 00:05:20 GMT  
		Size: 2.1 KB (2125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5502930c88ef5fbef3a9bea950db62ca5d1a3ea535513d99aa95730cbd8c29`  
		Last Modified: Wed, 14 Jun 2017 00:05:19 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb919c0ed5a5173678bfa1687e35b66953a7b5679b022b160f174f169e9b961f`  
		Last Modified: Wed, 14 Jun 2017 08:04:10 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e02cba4cff2362a45e46e56294d7131e2eb608293f3e5686ebc24431fdfda3`  
		Last Modified: Wed, 14 Jun 2017 08:04:12 GMT  
		Size: 2.8 MB (2774838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5436365a1cd8f7b057a5c04add445ba19861b897fc9c68b76e2c91977462b7cc`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 57.9 KB (57945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdef61a05587e34834d4f466992374e555d2dde9fd3f1747a09aad07df3863d`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 19.7 KB (19660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e164618885917c05defe65c72eb6481902f5a390f63d44362ec83edb2fc08e45`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 63.4 KB (63359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20fc5d795d69a9bcffd4d03125db59c3f9df6371b44e70b824ef10a85a9e4a8`  
		Last Modified: Wed, 14 Jun 2017 08:04:10 GMT  
		Size: 9.0 MB (9006708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80fd96bc1dd1a88c75bc4114f3f706249884a277434d3b9ad90922b8d4c3ae25`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2593a14a0db2c2449171bda9985ed4c4b0c7b4b265de1b8f57772aa2933569b6`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:latest`

```console
$ docker pull joomla@sha256:058d943974159cefaaa82e670e6a9c5bae6c24f97e9624a2329ba2baffdf8d37
```

-	Platforms:
	-	linux; amd64

### `joomla:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.5 MB (171527292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:324beac4aaccfb916ee18b26775dd7c50b42505749a3c957bd985222a83bfaf1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 22:52:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:52:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 08 Jun 2017 22:53:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 08 Jun 2017 22:53:02 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 08 Jun 2017 22:53:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 08 Jun 2017 22:53:05 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 08 Jun 2017 22:53:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 08 Jun 2017 22:53:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 09 Jun 2017 15:20:23 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 09 Jun 2017 15:20:24 GMT
ENV PHP_VERSION=5.6.30
# Fri, 09 Jun 2017 15:20:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 09 Jun 2017 15:20:26 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 09 Jun 2017 15:21:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 15:21:14 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 13 Jun 2017 23:04:35 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 13 Jun 2017 23:04:55 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Tue, 13 Jun 2017 23:04:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 13 Jun 2017 23:04:57 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 13 Jun 2017 23:05:31 GMT
WORKDIR /var/www/html
# Tue, 13 Jun 2017 23:05:54 GMT
EXPOSE 80/tcp
# Tue, 13 Jun 2017 23:05:55 GMT
CMD ["apache2-foreground"]
# Wed, 14 Jun 2017 07:48:29 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 14 Jun 2017 07:48:30 GMT
RUN a2enmod rewrite
# Wed, 14 Jun 2017 07:48:58 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 14 Jun 2017 07:49:28 GMT
RUN docker-php-ext-install mysqli
# Wed, 14 Jun 2017 07:49:52 GMT
RUN docker-php-ext-install mcrypt
# Wed, 14 Jun 2017 07:50:33 GMT
RUN docker-php-ext-install zip
# Wed, 14 Jun 2017 07:50:38 GMT
VOLUME [/var/www/html]
# Wed, 14 Jun 2017 07:50:40 GMT
ENV JOOMLA_VERSION=3.7.0
# Wed, 14 Jun 2017 07:50:41 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Wed, 14 Jun 2017 07:51:12 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 14 Jun 2017 07:51:31 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 14 Jun 2017 07:51:32 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 14 Jun 2017 07:51:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Jun 2017 07:51:56 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e9b0c1871f3a98d9c059e5bd8c32329922b597e955aeb2996b83611a31ed1c`  
		Last Modified: Fri, 09 Jun 2017 05:51:26 GMT  
		Size: 2.8 MB (2783914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e2756f5f08ec966dbb623239d79701ffad4658c720373b154ec326f2458532`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ca1686b1712d41666865c88a26db11ecb736950c4a8a4070198c1e1b77951`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b20a8291dfb15667d29b65693a605462198881fca7d83d77e68c985457388`  
		Last Modified: Fri, 09 Jun 2017 05:51:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0c35492a16533f7fd075deaabee62790d1b0a914df163d74f7d6bc140fe256`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719b692e57dd378e12ed64795750adaf512987b8829af9bee479518dc09d83a4`  
		Last Modified: Fri, 09 Jun 2017 16:03:52 GMT  
		Size: 12.6 MB (12576817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f393a2429aaf4dc105a6fead7aa3a3e829bde6262a451fc28c5f32c456eaa5`  
		Last Modified: Fri, 09 Jun 2017 16:03:50 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:125592bbc92c1c938a35654945beccaf845fe031e73b50a2ddeb4f0729835a3d`  
		Last Modified: Wed, 14 Jun 2017 00:05:23 GMT  
		Size: 9.2 MB (9174033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a288be7910040dbef2e16ebdf8221f9578395af7e30dfb4edd2e6d8a680c14d`  
		Last Modified: Wed, 14 Jun 2017 00:05:20 GMT  
		Size: 2.1 KB (2125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5502930c88ef5fbef3a9bea950db62ca5d1a3ea535513d99aa95730cbd8c29`  
		Last Modified: Wed, 14 Jun 2017 00:05:19 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb919c0ed5a5173678bfa1687e35b66953a7b5679b022b160f174f169e9b961f`  
		Last Modified: Wed, 14 Jun 2017 08:04:10 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e02cba4cff2362a45e46e56294d7131e2eb608293f3e5686ebc24431fdfda3`  
		Last Modified: Wed, 14 Jun 2017 08:04:12 GMT  
		Size: 2.8 MB (2774838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5436365a1cd8f7b057a5c04add445ba19861b897fc9c68b76e2c91977462b7cc`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 57.9 KB (57945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdef61a05587e34834d4f466992374e555d2dde9fd3f1747a09aad07df3863d`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 19.7 KB (19660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e164618885917c05defe65c72eb6481902f5a390f63d44362ec83edb2fc08e45`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 63.4 KB (63359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20fc5d795d69a9bcffd4d03125db59c3f9df6371b44e70b824ef10a85a9e4a8`  
		Last Modified: Wed, 14 Jun 2017 08:04:10 GMT  
		Size: 9.0 MB (9006708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80fd96bc1dd1a88c75bc4114f3f706249884a277434d3b9ad90922b8d4c3ae25`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2593a14a0db2c2449171bda9985ed4c4b0c7b4b265de1b8f57772aa2933569b6`  
		Last Modified: Wed, 14 Jun 2017 08:04:08 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.7.0-apache-php7`

```console
$ docker pull joomla@sha256:e82e8981b174aa00c7dbb63816a057389fef72916d54a236aae3be65dbf772f2
```

-	Platforms:
	-	linux; amd64

### `joomla:3.7.0-apache-php7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.7 MB (175719696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2029e0bf4be45386a5074f5290a6a1d9f5295b5dcfe2d66fdf0fae1b80089ab2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 22:52:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:52:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 08 Jun 2017 22:53:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 08 Jun 2017 22:53:02 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 08 Jun 2017 22:53:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 08 Jun 2017 22:53:05 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 08 Jun 2017 22:53:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 08 Jun 2017 22:53:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 09 Jun 2017 14:02:38 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 09 Jun 2017 14:02:38 GMT
ENV PHP_VERSION=7.0.20
# Fri, 09 Jun 2017 14:02:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.20.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.20.tar.xz.asc/from/this/mirror
# Fri, 09 Jun 2017 14:02:40 GMT
ENV PHP_SHA256=31b9cf1fb83fe3cd82c2f6603a0ae81ae6abacb5286827e362d8f85e68908e0a PHP_MD5=e84615871c1c6dbd0860746a31f3a7c8
# Fri, 09 Jun 2017 14:02:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 14:02:54 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 13 Jun 2017 22:24:19 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 13 Jun 2017 22:25:04 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Tue, 13 Jun 2017 22:25:25 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 13 Jun 2017 22:25:48 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 13 Jun 2017 22:26:12 GMT
WORKDIR /var/www/html
# Tue, 13 Jun 2017 22:26:57 GMT
EXPOSE 80/tcp
# Tue, 13 Jun 2017 22:27:43 GMT
CMD ["apache2-foreground"]
# Wed, 14 Jun 2017 07:52:42 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 14 Jun 2017 07:52:44 GMT
RUN a2enmod rewrite
# Wed, 14 Jun 2017 07:53:10 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 14 Jun 2017 07:53:42 GMT
RUN docker-php-ext-install mysqli
# Wed, 14 Jun 2017 07:54:04 GMT
RUN docker-php-ext-install mcrypt
# Wed, 14 Jun 2017 07:54:43 GMT
RUN docker-php-ext-install zip
# Wed, 14 Jun 2017 07:54:50 GMT
VOLUME [/var/www/html]
# Wed, 14 Jun 2017 07:54:51 GMT
ENV JOOMLA_VERSION=3.7.0
# Wed, 14 Jun 2017 07:54:52 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Wed, 14 Jun 2017 07:55:22 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 14 Jun 2017 07:55:41 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 14 Jun 2017 07:55:42 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 14 Jun 2017 07:56:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Jun 2017 07:56:07 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e9b0c1871f3a98d9c059e5bd8c32329922b597e955aeb2996b83611a31ed1c`  
		Last Modified: Fri, 09 Jun 2017 05:51:26 GMT  
		Size: 2.8 MB (2783914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e2756f5f08ec966dbb623239d79701ffad4658c720373b154ec326f2458532`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ca1686b1712d41666865c88a26db11ecb736950c4a8a4070198c1e1b77951`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b20a8291dfb15667d29b65693a605462198881fca7d83d77e68c985457388`  
		Last Modified: Fri, 09 Jun 2017 05:51:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0c35492a16533f7fd075deaabee62790d1b0a914df163d74f7d6bc140fe256`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9eaabd0b3af7fd70f37e8718e49fcb583b334c2e60d24557b5952f9400bc0cd`  
		Last Modified: Fri, 09 Jun 2017 15:55:14 GMT  
		Size: 12.7 MB (12732252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3eeff67d9eb058fd5c23385222cb983890b6f9072a52bbbe170ac407278aecc`  
		Last Modified: Fri, 09 Jun 2017 15:55:13 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211cb941d3cecfa67ac14f5b7a0e2986875e327d34f7c065ba37487219f8904b`  
		Last Modified: Tue, 13 Jun 2017 23:50:09 GMT  
		Size: 13.2 MB (13209929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a95774266dea114da7700012486a74cd1fd86d9199a6587b36ece98357374c`  
		Last Modified: Tue, 13 Jun 2017 23:50:05 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5706d584924cb37d040a720765aa6a1329f57bc1f0f30a10b8c83c93743dafc`  
		Last Modified: Tue, 13 Jun 2017 23:50:05 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63afb9171a2894dc8b0980a847c606ab8da9acdaea5a70d6722dcf65fed4853`  
		Last Modified: Wed, 14 Jun 2017 08:10:13 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb60a3db785e5e57dda32ad0f6f9ab6d8038e08fe8bcc7d5e7627d8cd2f5edb`  
		Last Modified: Wed, 14 Jun 2017 08:10:12 GMT  
		Size: 2.8 MB (2769621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15e5e7e379979689b3048e9810f9d61c9e5917c4a3b94f6394b9508fcc44189`  
		Last Modified: Wed, 14 Jun 2017 08:10:10 GMT  
		Size: 56.3 KB (56289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ae9c8bd58a3f0598740c964a1d39a3fba26d55fb7b044ffc2d28c92a32c12b`  
		Last Modified: Wed, 14 Jun 2017 08:10:09 GMT  
		Size: 18.2 KB (18250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f7d6d4bb7e0aab9bee46f975b9a3361de56b4ec08f14833ce3cf3cc4ae224f3`  
		Last Modified: Wed, 14 Jun 2017 08:10:10 GMT  
		Size: 72.7 KB (72715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3afaa6e59509c707bd43e3779b99775b0e7c119f4df7bb69c3d513d9ba5d8513`  
		Last Modified: Wed, 14 Jun 2017 08:10:12 GMT  
		Size: 9.0 MB (9006706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:198cb16cb56c911f22c0f205c10cde062637769a14c95aa11b38933b3fa167a9`  
		Last Modified: Wed, 14 Jun 2017 08:10:10 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab0a8af581fe07309a7f21a737e9d0e65ad19221c357f8db053bd2941f1cce2`  
		Last Modified: Wed, 14 Jun 2017 08:10:09 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.7-apache-php7`

```console
$ docker pull joomla@sha256:e82e8981b174aa00c7dbb63816a057389fef72916d54a236aae3be65dbf772f2
```

-	Platforms:
	-	linux; amd64

### `joomla:3.7-apache-php7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.7 MB (175719696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2029e0bf4be45386a5074f5290a6a1d9f5295b5dcfe2d66fdf0fae1b80089ab2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 22:52:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:52:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 08 Jun 2017 22:53:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 08 Jun 2017 22:53:02 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 08 Jun 2017 22:53:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 08 Jun 2017 22:53:05 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 08 Jun 2017 22:53:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 08 Jun 2017 22:53:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 09 Jun 2017 14:02:38 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 09 Jun 2017 14:02:38 GMT
ENV PHP_VERSION=7.0.20
# Fri, 09 Jun 2017 14:02:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.20.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.20.tar.xz.asc/from/this/mirror
# Fri, 09 Jun 2017 14:02:40 GMT
ENV PHP_SHA256=31b9cf1fb83fe3cd82c2f6603a0ae81ae6abacb5286827e362d8f85e68908e0a PHP_MD5=e84615871c1c6dbd0860746a31f3a7c8
# Fri, 09 Jun 2017 14:02:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 14:02:54 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 13 Jun 2017 22:24:19 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 13 Jun 2017 22:25:04 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Tue, 13 Jun 2017 22:25:25 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 13 Jun 2017 22:25:48 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 13 Jun 2017 22:26:12 GMT
WORKDIR /var/www/html
# Tue, 13 Jun 2017 22:26:57 GMT
EXPOSE 80/tcp
# Tue, 13 Jun 2017 22:27:43 GMT
CMD ["apache2-foreground"]
# Wed, 14 Jun 2017 07:52:42 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 14 Jun 2017 07:52:44 GMT
RUN a2enmod rewrite
# Wed, 14 Jun 2017 07:53:10 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 14 Jun 2017 07:53:42 GMT
RUN docker-php-ext-install mysqli
# Wed, 14 Jun 2017 07:54:04 GMT
RUN docker-php-ext-install mcrypt
# Wed, 14 Jun 2017 07:54:43 GMT
RUN docker-php-ext-install zip
# Wed, 14 Jun 2017 07:54:50 GMT
VOLUME [/var/www/html]
# Wed, 14 Jun 2017 07:54:51 GMT
ENV JOOMLA_VERSION=3.7.0
# Wed, 14 Jun 2017 07:54:52 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Wed, 14 Jun 2017 07:55:22 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 14 Jun 2017 07:55:41 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 14 Jun 2017 07:55:42 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 14 Jun 2017 07:56:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Jun 2017 07:56:07 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e9b0c1871f3a98d9c059e5bd8c32329922b597e955aeb2996b83611a31ed1c`  
		Last Modified: Fri, 09 Jun 2017 05:51:26 GMT  
		Size: 2.8 MB (2783914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e2756f5f08ec966dbb623239d79701ffad4658c720373b154ec326f2458532`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ca1686b1712d41666865c88a26db11ecb736950c4a8a4070198c1e1b77951`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b20a8291dfb15667d29b65693a605462198881fca7d83d77e68c985457388`  
		Last Modified: Fri, 09 Jun 2017 05:51:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0c35492a16533f7fd075deaabee62790d1b0a914df163d74f7d6bc140fe256`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9eaabd0b3af7fd70f37e8718e49fcb583b334c2e60d24557b5952f9400bc0cd`  
		Last Modified: Fri, 09 Jun 2017 15:55:14 GMT  
		Size: 12.7 MB (12732252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3eeff67d9eb058fd5c23385222cb983890b6f9072a52bbbe170ac407278aecc`  
		Last Modified: Fri, 09 Jun 2017 15:55:13 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211cb941d3cecfa67ac14f5b7a0e2986875e327d34f7c065ba37487219f8904b`  
		Last Modified: Tue, 13 Jun 2017 23:50:09 GMT  
		Size: 13.2 MB (13209929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a95774266dea114da7700012486a74cd1fd86d9199a6587b36ece98357374c`  
		Last Modified: Tue, 13 Jun 2017 23:50:05 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5706d584924cb37d040a720765aa6a1329f57bc1f0f30a10b8c83c93743dafc`  
		Last Modified: Tue, 13 Jun 2017 23:50:05 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63afb9171a2894dc8b0980a847c606ab8da9acdaea5a70d6722dcf65fed4853`  
		Last Modified: Wed, 14 Jun 2017 08:10:13 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb60a3db785e5e57dda32ad0f6f9ab6d8038e08fe8bcc7d5e7627d8cd2f5edb`  
		Last Modified: Wed, 14 Jun 2017 08:10:12 GMT  
		Size: 2.8 MB (2769621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15e5e7e379979689b3048e9810f9d61c9e5917c4a3b94f6394b9508fcc44189`  
		Last Modified: Wed, 14 Jun 2017 08:10:10 GMT  
		Size: 56.3 KB (56289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ae9c8bd58a3f0598740c964a1d39a3fba26d55fb7b044ffc2d28c92a32c12b`  
		Last Modified: Wed, 14 Jun 2017 08:10:09 GMT  
		Size: 18.2 KB (18250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f7d6d4bb7e0aab9bee46f975b9a3361de56b4ec08f14833ce3cf3cc4ae224f3`  
		Last Modified: Wed, 14 Jun 2017 08:10:10 GMT  
		Size: 72.7 KB (72715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3afaa6e59509c707bd43e3779b99775b0e7c119f4df7bb69c3d513d9ba5d8513`  
		Last Modified: Wed, 14 Jun 2017 08:10:12 GMT  
		Size: 9.0 MB (9006706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:198cb16cb56c911f22c0f205c10cde062637769a14c95aa11b38933b3fa167a9`  
		Last Modified: Wed, 14 Jun 2017 08:10:10 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab0a8af581fe07309a7f21a737e9d0e65ad19221c357f8db053bd2941f1cce2`  
		Last Modified: Wed, 14 Jun 2017 08:10:09 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-apache-php7`

```console
$ docker pull joomla@sha256:e82e8981b174aa00c7dbb63816a057389fef72916d54a236aae3be65dbf772f2
```

-	Platforms:
	-	linux; amd64

### `joomla:3-apache-php7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.7 MB (175719696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2029e0bf4be45386a5074f5290a6a1d9f5295b5dcfe2d66fdf0fae1b80089ab2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 22:52:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:52:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 08 Jun 2017 22:53:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 08 Jun 2017 22:53:02 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 08 Jun 2017 22:53:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 08 Jun 2017 22:53:05 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 08 Jun 2017 22:53:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 08 Jun 2017 22:53:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 09 Jun 2017 14:02:38 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 09 Jun 2017 14:02:38 GMT
ENV PHP_VERSION=7.0.20
# Fri, 09 Jun 2017 14:02:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.20.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.20.tar.xz.asc/from/this/mirror
# Fri, 09 Jun 2017 14:02:40 GMT
ENV PHP_SHA256=31b9cf1fb83fe3cd82c2f6603a0ae81ae6abacb5286827e362d8f85e68908e0a PHP_MD5=e84615871c1c6dbd0860746a31f3a7c8
# Fri, 09 Jun 2017 14:02:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 14:02:54 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 13 Jun 2017 22:24:19 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 13 Jun 2017 22:25:04 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Tue, 13 Jun 2017 22:25:25 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 13 Jun 2017 22:25:48 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 13 Jun 2017 22:26:12 GMT
WORKDIR /var/www/html
# Tue, 13 Jun 2017 22:26:57 GMT
EXPOSE 80/tcp
# Tue, 13 Jun 2017 22:27:43 GMT
CMD ["apache2-foreground"]
# Wed, 14 Jun 2017 07:52:42 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 14 Jun 2017 07:52:44 GMT
RUN a2enmod rewrite
# Wed, 14 Jun 2017 07:53:10 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 14 Jun 2017 07:53:42 GMT
RUN docker-php-ext-install mysqli
# Wed, 14 Jun 2017 07:54:04 GMT
RUN docker-php-ext-install mcrypt
# Wed, 14 Jun 2017 07:54:43 GMT
RUN docker-php-ext-install zip
# Wed, 14 Jun 2017 07:54:50 GMT
VOLUME [/var/www/html]
# Wed, 14 Jun 2017 07:54:51 GMT
ENV JOOMLA_VERSION=3.7.0
# Wed, 14 Jun 2017 07:54:52 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Wed, 14 Jun 2017 07:55:22 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 14 Jun 2017 07:55:41 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 14 Jun 2017 07:55:42 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 14 Jun 2017 07:56:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Jun 2017 07:56:07 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e9b0c1871f3a98d9c059e5bd8c32329922b597e955aeb2996b83611a31ed1c`  
		Last Modified: Fri, 09 Jun 2017 05:51:26 GMT  
		Size: 2.8 MB (2783914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e2756f5f08ec966dbb623239d79701ffad4658c720373b154ec326f2458532`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ca1686b1712d41666865c88a26db11ecb736950c4a8a4070198c1e1b77951`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b20a8291dfb15667d29b65693a605462198881fca7d83d77e68c985457388`  
		Last Modified: Fri, 09 Jun 2017 05:51:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0c35492a16533f7fd075deaabee62790d1b0a914df163d74f7d6bc140fe256`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9eaabd0b3af7fd70f37e8718e49fcb583b334c2e60d24557b5952f9400bc0cd`  
		Last Modified: Fri, 09 Jun 2017 15:55:14 GMT  
		Size: 12.7 MB (12732252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3eeff67d9eb058fd5c23385222cb983890b6f9072a52bbbe170ac407278aecc`  
		Last Modified: Fri, 09 Jun 2017 15:55:13 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211cb941d3cecfa67ac14f5b7a0e2986875e327d34f7c065ba37487219f8904b`  
		Last Modified: Tue, 13 Jun 2017 23:50:09 GMT  
		Size: 13.2 MB (13209929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a95774266dea114da7700012486a74cd1fd86d9199a6587b36ece98357374c`  
		Last Modified: Tue, 13 Jun 2017 23:50:05 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5706d584924cb37d040a720765aa6a1329f57bc1f0f30a10b8c83c93743dafc`  
		Last Modified: Tue, 13 Jun 2017 23:50:05 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63afb9171a2894dc8b0980a847c606ab8da9acdaea5a70d6722dcf65fed4853`  
		Last Modified: Wed, 14 Jun 2017 08:10:13 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb60a3db785e5e57dda32ad0f6f9ab6d8038e08fe8bcc7d5e7627d8cd2f5edb`  
		Last Modified: Wed, 14 Jun 2017 08:10:12 GMT  
		Size: 2.8 MB (2769621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15e5e7e379979689b3048e9810f9d61c9e5917c4a3b94f6394b9508fcc44189`  
		Last Modified: Wed, 14 Jun 2017 08:10:10 GMT  
		Size: 56.3 KB (56289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ae9c8bd58a3f0598740c964a1d39a3fba26d55fb7b044ffc2d28c92a32c12b`  
		Last Modified: Wed, 14 Jun 2017 08:10:09 GMT  
		Size: 18.2 KB (18250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f7d6d4bb7e0aab9bee46f975b9a3361de56b4ec08f14833ce3cf3cc4ae224f3`  
		Last Modified: Wed, 14 Jun 2017 08:10:10 GMT  
		Size: 72.7 KB (72715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3afaa6e59509c707bd43e3779b99775b0e7c119f4df7bb69c3d513d9ba5d8513`  
		Last Modified: Wed, 14 Jun 2017 08:10:12 GMT  
		Size: 9.0 MB (9006706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:198cb16cb56c911f22c0f205c10cde062637769a14c95aa11b38933b3fa167a9`  
		Last Modified: Wed, 14 Jun 2017 08:10:10 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab0a8af581fe07309a7f21a737e9d0e65ad19221c357f8db053bd2941f1cce2`  
		Last Modified: Wed, 14 Jun 2017 08:10:09 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:apache-php7`

```console
$ docker pull joomla@sha256:e82e8981b174aa00c7dbb63816a057389fef72916d54a236aae3be65dbf772f2
```

-	Platforms:
	-	linux; amd64

### `joomla:apache-php7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.7 MB (175719696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2029e0bf4be45386a5074f5290a6a1d9f5295b5dcfe2d66fdf0fae1b80089ab2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 22:52:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:52:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 08 Jun 2017 22:53:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 08 Jun 2017 22:53:02 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 08 Jun 2017 22:53:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 08 Jun 2017 22:53:05 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 08 Jun 2017 22:53:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 08 Jun 2017 22:53:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 08 Jun 2017 22:53:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 22:53:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 09 Jun 2017 14:02:38 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 09 Jun 2017 14:02:38 GMT
ENV PHP_VERSION=7.0.20
# Fri, 09 Jun 2017 14:02:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.20.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.20.tar.xz.asc/from/this/mirror
# Fri, 09 Jun 2017 14:02:40 GMT
ENV PHP_SHA256=31b9cf1fb83fe3cd82c2f6603a0ae81ae6abacb5286827e362d8f85e68908e0a PHP_MD5=e84615871c1c6dbd0860746a31f3a7c8
# Fri, 09 Jun 2017 14:02:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 14:02:54 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 13 Jun 2017 22:24:19 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 13 Jun 2017 22:25:04 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Tue, 13 Jun 2017 22:25:25 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 13 Jun 2017 22:25:48 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 13 Jun 2017 22:26:12 GMT
WORKDIR /var/www/html
# Tue, 13 Jun 2017 22:26:57 GMT
EXPOSE 80/tcp
# Tue, 13 Jun 2017 22:27:43 GMT
CMD ["apache2-foreground"]
# Wed, 14 Jun 2017 07:52:42 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 14 Jun 2017 07:52:44 GMT
RUN a2enmod rewrite
# Wed, 14 Jun 2017 07:53:10 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 14 Jun 2017 07:53:42 GMT
RUN docker-php-ext-install mysqli
# Wed, 14 Jun 2017 07:54:04 GMT
RUN docker-php-ext-install mcrypt
# Wed, 14 Jun 2017 07:54:43 GMT
RUN docker-php-ext-install zip
# Wed, 14 Jun 2017 07:54:50 GMT
VOLUME [/var/www/html]
# Wed, 14 Jun 2017 07:54:51 GMT
ENV JOOMLA_VERSION=3.7.0
# Wed, 14 Jun 2017 07:54:52 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Wed, 14 Jun 2017 07:55:22 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 14 Jun 2017 07:55:41 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 14 Jun 2017 07:55:42 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 14 Jun 2017 07:56:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Jun 2017 07:56:07 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e9b0c1871f3a98d9c059e5bd8c32329922b597e955aeb2996b83611a31ed1c`  
		Last Modified: Fri, 09 Jun 2017 05:51:26 GMT  
		Size: 2.8 MB (2783914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e2756f5f08ec966dbb623239d79701ffad4658c720373b154ec326f2458532`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ca1686b1712d41666865c88a26db11ecb736950c4a8a4070198c1e1b77951`  
		Last Modified: Fri, 09 Jun 2017 05:51:21 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b20a8291dfb15667d29b65693a605462198881fca7d83d77e68c985457388`  
		Last Modified: Fri, 09 Jun 2017 05:51:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0c35492a16533f7fd075deaabee62790d1b0a914df163d74f7d6bc140fe256`  
		Last Modified: Fri, 09 Jun 2017 05:51:18 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9eaabd0b3af7fd70f37e8718e49fcb583b334c2e60d24557b5952f9400bc0cd`  
		Last Modified: Fri, 09 Jun 2017 15:55:14 GMT  
		Size: 12.7 MB (12732252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3eeff67d9eb058fd5c23385222cb983890b6f9072a52bbbe170ac407278aecc`  
		Last Modified: Fri, 09 Jun 2017 15:55:13 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211cb941d3cecfa67ac14f5b7a0e2986875e327d34f7c065ba37487219f8904b`  
		Last Modified: Tue, 13 Jun 2017 23:50:09 GMT  
		Size: 13.2 MB (13209929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a95774266dea114da7700012486a74cd1fd86d9199a6587b36ece98357374c`  
		Last Modified: Tue, 13 Jun 2017 23:50:05 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5706d584924cb37d040a720765aa6a1329f57bc1f0f30a10b8c83c93743dafc`  
		Last Modified: Tue, 13 Jun 2017 23:50:05 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63afb9171a2894dc8b0980a847c606ab8da9acdaea5a70d6722dcf65fed4853`  
		Last Modified: Wed, 14 Jun 2017 08:10:13 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb60a3db785e5e57dda32ad0f6f9ab6d8038e08fe8bcc7d5e7627d8cd2f5edb`  
		Last Modified: Wed, 14 Jun 2017 08:10:12 GMT  
		Size: 2.8 MB (2769621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15e5e7e379979689b3048e9810f9d61c9e5917c4a3b94f6394b9508fcc44189`  
		Last Modified: Wed, 14 Jun 2017 08:10:10 GMT  
		Size: 56.3 KB (56289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ae9c8bd58a3f0598740c964a1d39a3fba26d55fb7b044ffc2d28c92a32c12b`  
		Last Modified: Wed, 14 Jun 2017 08:10:09 GMT  
		Size: 18.2 KB (18250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f7d6d4bb7e0aab9bee46f975b9a3361de56b4ec08f14833ce3cf3cc4ae224f3`  
		Last Modified: Wed, 14 Jun 2017 08:10:10 GMT  
		Size: 72.7 KB (72715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3afaa6e59509c707bd43e3779b99775b0e7c119f4df7bb69c3d513d9ba5d8513`  
		Last Modified: Wed, 14 Jun 2017 08:10:12 GMT  
		Size: 9.0 MB (9006706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:198cb16cb56c911f22c0f205c10cde062637769a14c95aa11b38933b3fa167a9`  
		Last Modified: Wed, 14 Jun 2017 08:10:10 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab0a8af581fe07309a7f21a737e9d0e65ad19221c357f8db053bd2941f1cce2`  
		Last Modified: Wed, 14 Jun 2017 08:10:09 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.7.0-fpm`

```console
$ docker pull joomla@sha256:27b44baa96d90fd3cbd72aaf4a0d563606f37cd6236504f792f4f41822e6edf0
```

-	Platforms:
	-	linux; amd64

### `joomla:3.7.0-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168159629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca87aaa7074a62ca3134c8235d9fdc6ea539cdbae7e7ada1dd817c671d9e4a48`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 23:00:32 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 08 Jun 2017 23:00:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 09 Jun 2017 15:27:45 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 09 Jun 2017 15:27:46 GMT
ENV PHP_VERSION=5.6.30
# Fri, 09 Jun 2017 15:27:47 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 09 Jun 2017 15:27:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 09 Jun 2017 15:28:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 15:28:35 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 13 Jun 2017 23:11:47 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 13 Jun 2017 23:11:54 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Tue, 13 Jun 2017 23:12:18 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 13 Jun 2017 23:12:19 GMT
WORKDIR /var/www/html
# Tue, 13 Jun 2017 23:12:21 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 13 Jun 2017 23:12:22 GMT
EXPOSE 9000/tcp
# Tue, 13 Jun 2017 23:12:23 GMT
CMD ["php-fpm"]
# Wed, 14 Jun 2017 07:57:16 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 14 Jun 2017 07:57:42 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 14 Jun 2017 07:57:51 GMT
RUN docker-php-ext-install mysqli
# Wed, 14 Jun 2017 07:58:12 GMT
RUN docker-php-ext-install mcrypt
# Wed, 14 Jun 2017 07:58:52 GMT
RUN docker-php-ext-install zip
# Wed, 14 Jun 2017 07:58:58 GMT
VOLUME [/var/www/html]
# Wed, 14 Jun 2017 07:58:58 GMT
ENV JOOMLA_VERSION=3.7.0
# Wed, 14 Jun 2017 07:59:00 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Wed, 14 Jun 2017 07:59:30 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 14 Jun 2017 07:59:49 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 14 Jun 2017 07:59:50 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 14 Jun 2017 07:59:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Jun 2017 08:00:14 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea53502a7b9aca8f75ca6614e8e36aaa6c91ec32e1177a14229913e4edcad43`  
		Last Modified: Fri, 09 Jun 2017 16:05:13 GMT  
		Size: 12.6 MB (12559561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1043355cdd71d7c0e8c10129c0ed3cbe4fdfd2df91db58ca82b38234527ce3`  
		Last Modified: Fri, 09 Jun 2017 16:05:12 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0628ab9fd139d6d1fafa86ac54bdf93fa17ee344cb91e29f1afaa2ae78a4e99`  
		Last Modified: Wed, 14 Jun 2017 00:07:38 GMT  
		Size: 8.6 MB (8623395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c6c88f769cad56a5a05d6bc6531158d09c04051bc2b17d0f0eec5051fca5c1`  
		Last Modified: Wed, 14 Jun 2017 00:07:34 GMT  
		Size: 2.1 KB (2116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:224af299815c03d0c879b72ba83a65c9a12b4184d47bb8d74625271ff41b5d3b`  
		Last Modified: Wed, 14 Jun 2017 00:07:34 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd7e93bfe176448fe557aa2a05de5e239211ef70ca52ab35324bcedd2c39e16`  
		Last Modified: Wed, 14 Jun 2017 00:07:35 GMT  
		Size: 7.6 KB (7608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ebd26caaae2a709baa0c5003d91e20552c1efec1e499f6a637e7d16c7b4689a`  
		Last Modified: Wed, 14 Jun 2017 08:13:14 GMT  
		Size: 2.8 MB (2754811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a2f65d9d2a7dd29bc364d98b16ab71a0e711778d4975a086bac37f185584b3`  
		Last Modified: Wed, 14 Jun 2017 08:13:10 GMT  
		Size: 57.9 KB (57944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8aabc563033a68e988dde5dadf60c867de43b22f7109a998f1d2d1b23f97f8f`  
		Last Modified: Wed, 14 Jun 2017 08:13:10 GMT  
		Size: 19.7 KB (19659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b412be177b069256a76c29c62ddae058e9a10f2d9d2582e5b87a26f5a03ed768`  
		Last Modified: Wed, 14 Jun 2017 08:13:10 GMT  
		Size: 63.4 KB (63361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:638a5c2afe0b02e286fc6174057b965d190cdcadca96a333f5f0a233d7ceeb5a`  
		Last Modified: Wed, 14 Jun 2017 08:13:13 GMT  
		Size: 9.0 MB (9006703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd0d795ae1a610ca2bc4043f9816846bb300e1ef141953ebc6c591f2a51b05b`  
		Last Modified: Wed, 14 Jun 2017 08:13:10 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5bddff345197169568fac67de0592de86b58ad5979a63b2b1c213f5efd03b8`  
		Last Modified: Wed, 14 Jun 2017 08:13:10 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.7-fpm`

```console
$ docker pull joomla@sha256:27b44baa96d90fd3cbd72aaf4a0d563606f37cd6236504f792f4f41822e6edf0
```

-	Platforms:
	-	linux; amd64

### `joomla:3.7-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168159629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca87aaa7074a62ca3134c8235d9fdc6ea539cdbae7e7ada1dd817c671d9e4a48`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 23:00:32 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 08 Jun 2017 23:00:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 09 Jun 2017 15:27:45 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 09 Jun 2017 15:27:46 GMT
ENV PHP_VERSION=5.6.30
# Fri, 09 Jun 2017 15:27:47 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 09 Jun 2017 15:27:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 09 Jun 2017 15:28:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 15:28:35 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 13 Jun 2017 23:11:47 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 13 Jun 2017 23:11:54 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Tue, 13 Jun 2017 23:12:18 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 13 Jun 2017 23:12:19 GMT
WORKDIR /var/www/html
# Tue, 13 Jun 2017 23:12:21 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 13 Jun 2017 23:12:22 GMT
EXPOSE 9000/tcp
# Tue, 13 Jun 2017 23:12:23 GMT
CMD ["php-fpm"]
# Wed, 14 Jun 2017 07:57:16 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 14 Jun 2017 07:57:42 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 14 Jun 2017 07:57:51 GMT
RUN docker-php-ext-install mysqli
# Wed, 14 Jun 2017 07:58:12 GMT
RUN docker-php-ext-install mcrypt
# Wed, 14 Jun 2017 07:58:52 GMT
RUN docker-php-ext-install zip
# Wed, 14 Jun 2017 07:58:58 GMT
VOLUME [/var/www/html]
# Wed, 14 Jun 2017 07:58:58 GMT
ENV JOOMLA_VERSION=3.7.0
# Wed, 14 Jun 2017 07:59:00 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Wed, 14 Jun 2017 07:59:30 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 14 Jun 2017 07:59:49 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 14 Jun 2017 07:59:50 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 14 Jun 2017 07:59:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Jun 2017 08:00:14 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea53502a7b9aca8f75ca6614e8e36aaa6c91ec32e1177a14229913e4edcad43`  
		Last Modified: Fri, 09 Jun 2017 16:05:13 GMT  
		Size: 12.6 MB (12559561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1043355cdd71d7c0e8c10129c0ed3cbe4fdfd2df91db58ca82b38234527ce3`  
		Last Modified: Fri, 09 Jun 2017 16:05:12 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0628ab9fd139d6d1fafa86ac54bdf93fa17ee344cb91e29f1afaa2ae78a4e99`  
		Last Modified: Wed, 14 Jun 2017 00:07:38 GMT  
		Size: 8.6 MB (8623395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c6c88f769cad56a5a05d6bc6531158d09c04051bc2b17d0f0eec5051fca5c1`  
		Last Modified: Wed, 14 Jun 2017 00:07:34 GMT  
		Size: 2.1 KB (2116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:224af299815c03d0c879b72ba83a65c9a12b4184d47bb8d74625271ff41b5d3b`  
		Last Modified: Wed, 14 Jun 2017 00:07:34 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd7e93bfe176448fe557aa2a05de5e239211ef70ca52ab35324bcedd2c39e16`  
		Last Modified: Wed, 14 Jun 2017 00:07:35 GMT  
		Size: 7.6 KB (7608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ebd26caaae2a709baa0c5003d91e20552c1efec1e499f6a637e7d16c7b4689a`  
		Last Modified: Wed, 14 Jun 2017 08:13:14 GMT  
		Size: 2.8 MB (2754811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a2f65d9d2a7dd29bc364d98b16ab71a0e711778d4975a086bac37f185584b3`  
		Last Modified: Wed, 14 Jun 2017 08:13:10 GMT  
		Size: 57.9 KB (57944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8aabc563033a68e988dde5dadf60c867de43b22f7109a998f1d2d1b23f97f8f`  
		Last Modified: Wed, 14 Jun 2017 08:13:10 GMT  
		Size: 19.7 KB (19659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b412be177b069256a76c29c62ddae058e9a10f2d9d2582e5b87a26f5a03ed768`  
		Last Modified: Wed, 14 Jun 2017 08:13:10 GMT  
		Size: 63.4 KB (63361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:638a5c2afe0b02e286fc6174057b965d190cdcadca96a333f5f0a233d7ceeb5a`  
		Last Modified: Wed, 14 Jun 2017 08:13:13 GMT  
		Size: 9.0 MB (9006703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd0d795ae1a610ca2bc4043f9816846bb300e1ef141953ebc6c591f2a51b05b`  
		Last Modified: Wed, 14 Jun 2017 08:13:10 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5bddff345197169568fac67de0592de86b58ad5979a63b2b1c213f5efd03b8`  
		Last Modified: Wed, 14 Jun 2017 08:13:10 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-fpm`

```console
$ docker pull joomla@sha256:27b44baa96d90fd3cbd72aaf4a0d563606f37cd6236504f792f4f41822e6edf0
```

-	Platforms:
	-	linux; amd64

### `joomla:3-fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168159629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca87aaa7074a62ca3134c8235d9fdc6ea539cdbae7e7ada1dd817c671d9e4a48`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 23:00:32 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 08 Jun 2017 23:00:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 09 Jun 2017 15:27:45 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 09 Jun 2017 15:27:46 GMT
ENV PHP_VERSION=5.6.30
# Fri, 09 Jun 2017 15:27:47 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 09 Jun 2017 15:27:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 09 Jun 2017 15:28:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 15:28:35 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 13 Jun 2017 23:11:47 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 13 Jun 2017 23:11:54 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Tue, 13 Jun 2017 23:12:18 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 13 Jun 2017 23:12:19 GMT
WORKDIR /var/www/html
# Tue, 13 Jun 2017 23:12:21 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 13 Jun 2017 23:12:22 GMT
EXPOSE 9000/tcp
# Tue, 13 Jun 2017 23:12:23 GMT
CMD ["php-fpm"]
# Wed, 14 Jun 2017 07:57:16 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 14 Jun 2017 07:57:42 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 14 Jun 2017 07:57:51 GMT
RUN docker-php-ext-install mysqli
# Wed, 14 Jun 2017 07:58:12 GMT
RUN docker-php-ext-install mcrypt
# Wed, 14 Jun 2017 07:58:52 GMT
RUN docker-php-ext-install zip
# Wed, 14 Jun 2017 07:58:58 GMT
VOLUME [/var/www/html]
# Wed, 14 Jun 2017 07:58:58 GMT
ENV JOOMLA_VERSION=3.7.0
# Wed, 14 Jun 2017 07:59:00 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Wed, 14 Jun 2017 07:59:30 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 14 Jun 2017 07:59:49 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 14 Jun 2017 07:59:50 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 14 Jun 2017 07:59:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Jun 2017 08:00:14 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea53502a7b9aca8f75ca6614e8e36aaa6c91ec32e1177a14229913e4edcad43`  
		Last Modified: Fri, 09 Jun 2017 16:05:13 GMT  
		Size: 12.6 MB (12559561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1043355cdd71d7c0e8c10129c0ed3cbe4fdfd2df91db58ca82b38234527ce3`  
		Last Modified: Fri, 09 Jun 2017 16:05:12 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0628ab9fd139d6d1fafa86ac54bdf93fa17ee344cb91e29f1afaa2ae78a4e99`  
		Last Modified: Wed, 14 Jun 2017 00:07:38 GMT  
		Size: 8.6 MB (8623395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c6c88f769cad56a5a05d6bc6531158d09c04051bc2b17d0f0eec5051fca5c1`  
		Last Modified: Wed, 14 Jun 2017 00:07:34 GMT  
		Size: 2.1 KB (2116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:224af299815c03d0c879b72ba83a65c9a12b4184d47bb8d74625271ff41b5d3b`  
		Last Modified: Wed, 14 Jun 2017 00:07:34 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd7e93bfe176448fe557aa2a05de5e239211ef70ca52ab35324bcedd2c39e16`  
		Last Modified: Wed, 14 Jun 2017 00:07:35 GMT  
		Size: 7.6 KB (7608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ebd26caaae2a709baa0c5003d91e20552c1efec1e499f6a637e7d16c7b4689a`  
		Last Modified: Wed, 14 Jun 2017 08:13:14 GMT  
		Size: 2.8 MB (2754811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a2f65d9d2a7dd29bc364d98b16ab71a0e711778d4975a086bac37f185584b3`  
		Last Modified: Wed, 14 Jun 2017 08:13:10 GMT  
		Size: 57.9 KB (57944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8aabc563033a68e988dde5dadf60c867de43b22f7109a998f1d2d1b23f97f8f`  
		Last Modified: Wed, 14 Jun 2017 08:13:10 GMT  
		Size: 19.7 KB (19659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b412be177b069256a76c29c62ddae058e9a10f2d9d2582e5b87a26f5a03ed768`  
		Last Modified: Wed, 14 Jun 2017 08:13:10 GMT  
		Size: 63.4 KB (63361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:638a5c2afe0b02e286fc6174057b965d190cdcadca96a333f5f0a233d7ceeb5a`  
		Last Modified: Wed, 14 Jun 2017 08:13:13 GMT  
		Size: 9.0 MB (9006703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd0d795ae1a610ca2bc4043f9816846bb300e1ef141953ebc6c591f2a51b05b`  
		Last Modified: Wed, 14 Jun 2017 08:13:10 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5bddff345197169568fac67de0592de86b58ad5979a63b2b1c213f5efd03b8`  
		Last Modified: Wed, 14 Jun 2017 08:13:10 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:fpm`

```console
$ docker pull joomla@sha256:27b44baa96d90fd3cbd72aaf4a0d563606f37cd6236504f792f4f41822e6edf0
```

-	Platforms:
	-	linux; amd64

### `joomla:fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168159629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca87aaa7074a62ca3134c8235d9fdc6ea539cdbae7e7ada1dd817c671d9e4a48`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 23:00:32 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 08 Jun 2017 23:00:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 09 Jun 2017 15:27:45 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 09 Jun 2017 15:27:46 GMT
ENV PHP_VERSION=5.6.30
# Fri, 09 Jun 2017 15:27:47 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Fri, 09 Jun 2017 15:27:48 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Fri, 09 Jun 2017 15:28:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 15:28:35 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 13 Jun 2017 23:11:47 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 13 Jun 2017 23:11:54 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Tue, 13 Jun 2017 23:12:18 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 13 Jun 2017 23:12:19 GMT
WORKDIR /var/www/html
# Tue, 13 Jun 2017 23:12:21 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 13 Jun 2017 23:12:22 GMT
EXPOSE 9000/tcp
# Tue, 13 Jun 2017 23:12:23 GMT
CMD ["php-fpm"]
# Wed, 14 Jun 2017 07:57:16 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 14 Jun 2017 07:57:42 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 14 Jun 2017 07:57:51 GMT
RUN docker-php-ext-install mysqli
# Wed, 14 Jun 2017 07:58:12 GMT
RUN docker-php-ext-install mcrypt
# Wed, 14 Jun 2017 07:58:52 GMT
RUN docker-php-ext-install zip
# Wed, 14 Jun 2017 07:58:58 GMT
VOLUME [/var/www/html]
# Wed, 14 Jun 2017 07:58:58 GMT
ENV JOOMLA_VERSION=3.7.0
# Wed, 14 Jun 2017 07:59:00 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Wed, 14 Jun 2017 07:59:30 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 14 Jun 2017 07:59:49 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 14 Jun 2017 07:59:50 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 14 Jun 2017 07:59:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Jun 2017 08:00:14 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea53502a7b9aca8f75ca6614e8e36aaa6c91ec32e1177a14229913e4edcad43`  
		Last Modified: Fri, 09 Jun 2017 16:05:13 GMT  
		Size: 12.6 MB (12559561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1043355cdd71d7c0e8c10129c0ed3cbe4fdfd2df91db58ca82b38234527ce3`  
		Last Modified: Fri, 09 Jun 2017 16:05:12 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0628ab9fd139d6d1fafa86ac54bdf93fa17ee344cb91e29f1afaa2ae78a4e99`  
		Last Modified: Wed, 14 Jun 2017 00:07:38 GMT  
		Size: 8.6 MB (8623395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c6c88f769cad56a5a05d6bc6531158d09c04051bc2b17d0f0eec5051fca5c1`  
		Last Modified: Wed, 14 Jun 2017 00:07:34 GMT  
		Size: 2.1 KB (2116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:224af299815c03d0c879b72ba83a65c9a12b4184d47bb8d74625271ff41b5d3b`  
		Last Modified: Wed, 14 Jun 2017 00:07:34 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd7e93bfe176448fe557aa2a05de5e239211ef70ca52ab35324bcedd2c39e16`  
		Last Modified: Wed, 14 Jun 2017 00:07:35 GMT  
		Size: 7.6 KB (7608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ebd26caaae2a709baa0c5003d91e20552c1efec1e499f6a637e7d16c7b4689a`  
		Last Modified: Wed, 14 Jun 2017 08:13:14 GMT  
		Size: 2.8 MB (2754811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a2f65d9d2a7dd29bc364d98b16ab71a0e711778d4975a086bac37f185584b3`  
		Last Modified: Wed, 14 Jun 2017 08:13:10 GMT  
		Size: 57.9 KB (57944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8aabc563033a68e988dde5dadf60c867de43b22f7109a998f1d2d1b23f97f8f`  
		Last Modified: Wed, 14 Jun 2017 08:13:10 GMT  
		Size: 19.7 KB (19659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b412be177b069256a76c29c62ddae058e9a10f2d9d2582e5b87a26f5a03ed768`  
		Last Modified: Wed, 14 Jun 2017 08:13:10 GMT  
		Size: 63.4 KB (63361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:638a5c2afe0b02e286fc6174057b965d190cdcadca96a333f5f0a233d7ceeb5a`  
		Last Modified: Wed, 14 Jun 2017 08:13:13 GMT  
		Size: 9.0 MB (9006703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd0d795ae1a610ca2bc4043f9816846bb300e1ef141953ebc6c591f2a51b05b`  
		Last Modified: Wed, 14 Jun 2017 08:13:10 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5bddff345197169568fac67de0592de86b58ad5979a63b2b1c213f5efd03b8`  
		Last Modified: Wed, 14 Jun 2017 08:13:10 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.7.0-fpm-php7`

```console
$ docker pull joomla@sha256:1bba57bc2c9dfd3b0f356e53b03e963eae83c52fa6c93dfa1c8c9e7df1eb3dbb
```

-	Platforms:
	-	linux; amd64

### `joomla:3.7.0-fpm-php7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.4 MB (172369374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f64c20ebbede9d53b4bc8f0eb1cd8f3cf8e51069e75f80524c12cf2ab771679`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 23:00:32 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 08 Jun 2017 23:00:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 09 Jun 2017 14:05:42 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 09 Jun 2017 14:05:42 GMT
ENV PHP_VERSION=7.0.20
# Fri, 09 Jun 2017 14:05:43 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.20.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.20.tar.xz.asc/from/this/mirror
# Fri, 09 Jun 2017 14:05:44 GMT
ENV PHP_SHA256=31b9cf1fb83fe3cd82c2f6603a0ae81ae6abacb5286827e362d8f85e68908e0a PHP_MD5=e84615871c1c6dbd0860746a31f3a7c8
# Fri, 09 Jun 2017 14:05:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 14:05:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 13 Jun 2017 22:37:48 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 13 Jun 2017 22:37:57 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Tue, 13 Jun 2017 22:37:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 13 Jun 2017 22:38:00 GMT
WORKDIR /var/www/html
# Tue, 13 Jun 2017 22:38:47 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 13 Jun 2017 22:39:32 GMT
EXPOSE 9000/tcp
# Tue, 13 Jun 2017 22:40:18 GMT
CMD ["php-fpm"]
# Wed, 14 Jun 2017 08:01:01 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 14 Jun 2017 08:01:26 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 14 Jun 2017 08:01:36 GMT
RUN docker-php-ext-install mysqli
# Wed, 14 Jun 2017 08:02:00 GMT
RUN docker-php-ext-install mcrypt
# Wed, 14 Jun 2017 08:02:39 GMT
RUN docker-php-ext-install zip
# Wed, 14 Jun 2017 08:02:47 GMT
VOLUME [/var/www/html]
# Wed, 14 Jun 2017 08:02:48 GMT
ENV JOOMLA_VERSION=3.7.0
# Wed, 14 Jun 2017 08:02:49 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Wed, 14 Jun 2017 08:02:56 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 14 Jun 2017 08:03:14 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 14 Jun 2017 08:03:16 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 14 Jun 2017 08:03:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Jun 2017 08:03:40 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c54e27778fdf355fa292e75fca820a00750d2729e3624e8d9eeb957283fe7fc7`  
		Last Modified: Fri, 09 Jun 2017 15:56:14 GMT  
		Size: 12.7 MB (12715010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ecc435eb1e7bbf699b4692ea214c4f935d753267285d1018f7dfb93372f6af`  
		Last Modified: Fri, 09 Jun 2017 15:56:12 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80cb2415c5b56c3a6d3008a9cf9c86e85b870ec7bc9edff28fb084e47b1ec3e3`  
		Last Modified: Tue, 13 Jun 2017 23:51:42 GMT  
		Size: 12.7 MB (12677273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4510ca78dba5023f36b8e74ec9e21744d284ec1b4c04d2cb429351c96719e16f`  
		Last Modified: Tue, 13 Jun 2017 23:51:38 GMT  
		Size: 2.1 KB (2119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0df546cbfa88f102af353bbdf850757939b279ce3726fc8af376653eff0650`  
		Last Modified: Tue, 13 Jun 2017 23:51:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e7e5a374a9f3fa291bd46256057d7b35d48a70dd8eea442ef6da8a0dd3a5a3`  
		Last Modified: Tue, 13 Jun 2017 23:51:37 GMT  
		Size: 7.7 KB (7663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780387fb33d6a830bca1c9e4ea92f8e02f089672899274b1d3e97edeec7fe0b1`  
		Last Modified: Wed, 14 Jun 2017 08:16:15 GMT  
		Size: 2.7 MB (2748895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd64548387ef4e44be968fdbf04d9364b45e0bc00f8fc7973134de5c0684e831`  
		Last Modified: Wed, 14 Jun 2017 08:16:11 GMT  
		Size: 56.3 KB (56266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cf784d2e2b6fa04332146f79f11a5ce3ce576d0724f49df7e1773ac14d39f4e`  
		Last Modified: Wed, 14 Jun 2017 08:16:11 GMT  
		Size: 18.3 KB (18260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c63bfba11453735eaf5c75b771a12e1ac99b0796434378898bd807008f1b49`  
		Last Modified: Wed, 14 Jun 2017 08:16:11 GMT  
		Size: 72.7 KB (72712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f396ffcb49ac3f60254874d5a7aeea882f41d65ceca06a6769b61b999b1166`  
		Last Modified: Wed, 14 Jun 2017 08:16:14 GMT  
		Size: 9.0 MB (9006705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd9ba30e180e4ad2eff608db6462a0713261c40dce8121668a768be6b37f41c`  
		Last Modified: Wed, 14 Jun 2017 08:16:11 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3a2e7fa15f251b1f46f8ed07b0bf2339cb505c99a983eb8f9ab293fa7623362`  
		Last Modified: Wed, 14 Jun 2017 08:16:11 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.7-fpm-php7`

```console
$ docker pull joomla@sha256:1bba57bc2c9dfd3b0f356e53b03e963eae83c52fa6c93dfa1c8c9e7df1eb3dbb
```

-	Platforms:
	-	linux; amd64

### `joomla:3.7-fpm-php7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.4 MB (172369374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f64c20ebbede9d53b4bc8f0eb1cd8f3cf8e51069e75f80524c12cf2ab771679`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 23:00:32 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 08 Jun 2017 23:00:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 09 Jun 2017 14:05:42 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 09 Jun 2017 14:05:42 GMT
ENV PHP_VERSION=7.0.20
# Fri, 09 Jun 2017 14:05:43 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.20.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.20.tar.xz.asc/from/this/mirror
# Fri, 09 Jun 2017 14:05:44 GMT
ENV PHP_SHA256=31b9cf1fb83fe3cd82c2f6603a0ae81ae6abacb5286827e362d8f85e68908e0a PHP_MD5=e84615871c1c6dbd0860746a31f3a7c8
# Fri, 09 Jun 2017 14:05:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 14:05:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 13 Jun 2017 22:37:48 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 13 Jun 2017 22:37:57 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Tue, 13 Jun 2017 22:37:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 13 Jun 2017 22:38:00 GMT
WORKDIR /var/www/html
# Tue, 13 Jun 2017 22:38:47 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 13 Jun 2017 22:39:32 GMT
EXPOSE 9000/tcp
# Tue, 13 Jun 2017 22:40:18 GMT
CMD ["php-fpm"]
# Wed, 14 Jun 2017 08:01:01 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 14 Jun 2017 08:01:26 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 14 Jun 2017 08:01:36 GMT
RUN docker-php-ext-install mysqli
# Wed, 14 Jun 2017 08:02:00 GMT
RUN docker-php-ext-install mcrypt
# Wed, 14 Jun 2017 08:02:39 GMT
RUN docker-php-ext-install zip
# Wed, 14 Jun 2017 08:02:47 GMT
VOLUME [/var/www/html]
# Wed, 14 Jun 2017 08:02:48 GMT
ENV JOOMLA_VERSION=3.7.0
# Wed, 14 Jun 2017 08:02:49 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Wed, 14 Jun 2017 08:02:56 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 14 Jun 2017 08:03:14 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 14 Jun 2017 08:03:16 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 14 Jun 2017 08:03:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Jun 2017 08:03:40 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c54e27778fdf355fa292e75fca820a00750d2729e3624e8d9eeb957283fe7fc7`  
		Last Modified: Fri, 09 Jun 2017 15:56:14 GMT  
		Size: 12.7 MB (12715010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ecc435eb1e7bbf699b4692ea214c4f935d753267285d1018f7dfb93372f6af`  
		Last Modified: Fri, 09 Jun 2017 15:56:12 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80cb2415c5b56c3a6d3008a9cf9c86e85b870ec7bc9edff28fb084e47b1ec3e3`  
		Last Modified: Tue, 13 Jun 2017 23:51:42 GMT  
		Size: 12.7 MB (12677273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4510ca78dba5023f36b8e74ec9e21744d284ec1b4c04d2cb429351c96719e16f`  
		Last Modified: Tue, 13 Jun 2017 23:51:38 GMT  
		Size: 2.1 KB (2119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0df546cbfa88f102af353bbdf850757939b279ce3726fc8af376653eff0650`  
		Last Modified: Tue, 13 Jun 2017 23:51:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e7e5a374a9f3fa291bd46256057d7b35d48a70dd8eea442ef6da8a0dd3a5a3`  
		Last Modified: Tue, 13 Jun 2017 23:51:37 GMT  
		Size: 7.7 KB (7663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780387fb33d6a830bca1c9e4ea92f8e02f089672899274b1d3e97edeec7fe0b1`  
		Last Modified: Wed, 14 Jun 2017 08:16:15 GMT  
		Size: 2.7 MB (2748895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd64548387ef4e44be968fdbf04d9364b45e0bc00f8fc7973134de5c0684e831`  
		Last Modified: Wed, 14 Jun 2017 08:16:11 GMT  
		Size: 56.3 KB (56266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cf784d2e2b6fa04332146f79f11a5ce3ce576d0724f49df7e1773ac14d39f4e`  
		Last Modified: Wed, 14 Jun 2017 08:16:11 GMT  
		Size: 18.3 KB (18260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c63bfba11453735eaf5c75b771a12e1ac99b0796434378898bd807008f1b49`  
		Last Modified: Wed, 14 Jun 2017 08:16:11 GMT  
		Size: 72.7 KB (72712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f396ffcb49ac3f60254874d5a7aeea882f41d65ceca06a6769b61b999b1166`  
		Last Modified: Wed, 14 Jun 2017 08:16:14 GMT  
		Size: 9.0 MB (9006705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd9ba30e180e4ad2eff608db6462a0713261c40dce8121668a768be6b37f41c`  
		Last Modified: Wed, 14 Jun 2017 08:16:11 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3a2e7fa15f251b1f46f8ed07b0bf2339cb505c99a983eb8f9ab293fa7623362`  
		Last Modified: Wed, 14 Jun 2017 08:16:11 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-fpm-php7`

```console
$ docker pull joomla@sha256:1bba57bc2c9dfd3b0f356e53b03e963eae83c52fa6c93dfa1c8c9e7df1eb3dbb
```

-	Platforms:
	-	linux; amd64

### `joomla:3-fpm-php7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.4 MB (172369374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f64c20ebbede9d53b4bc8f0eb1cd8f3cf8e51069e75f80524c12cf2ab771679`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 23:00:32 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 08 Jun 2017 23:00:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 09 Jun 2017 14:05:42 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 09 Jun 2017 14:05:42 GMT
ENV PHP_VERSION=7.0.20
# Fri, 09 Jun 2017 14:05:43 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.20.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.20.tar.xz.asc/from/this/mirror
# Fri, 09 Jun 2017 14:05:44 GMT
ENV PHP_SHA256=31b9cf1fb83fe3cd82c2f6603a0ae81ae6abacb5286827e362d8f85e68908e0a PHP_MD5=e84615871c1c6dbd0860746a31f3a7c8
# Fri, 09 Jun 2017 14:05:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 14:05:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 13 Jun 2017 22:37:48 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 13 Jun 2017 22:37:57 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Tue, 13 Jun 2017 22:37:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 13 Jun 2017 22:38:00 GMT
WORKDIR /var/www/html
# Tue, 13 Jun 2017 22:38:47 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 13 Jun 2017 22:39:32 GMT
EXPOSE 9000/tcp
# Tue, 13 Jun 2017 22:40:18 GMT
CMD ["php-fpm"]
# Wed, 14 Jun 2017 08:01:01 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 14 Jun 2017 08:01:26 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 14 Jun 2017 08:01:36 GMT
RUN docker-php-ext-install mysqli
# Wed, 14 Jun 2017 08:02:00 GMT
RUN docker-php-ext-install mcrypt
# Wed, 14 Jun 2017 08:02:39 GMT
RUN docker-php-ext-install zip
# Wed, 14 Jun 2017 08:02:47 GMT
VOLUME [/var/www/html]
# Wed, 14 Jun 2017 08:02:48 GMT
ENV JOOMLA_VERSION=3.7.0
# Wed, 14 Jun 2017 08:02:49 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Wed, 14 Jun 2017 08:02:56 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 14 Jun 2017 08:03:14 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 14 Jun 2017 08:03:16 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 14 Jun 2017 08:03:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Jun 2017 08:03:40 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c54e27778fdf355fa292e75fca820a00750d2729e3624e8d9eeb957283fe7fc7`  
		Last Modified: Fri, 09 Jun 2017 15:56:14 GMT  
		Size: 12.7 MB (12715010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ecc435eb1e7bbf699b4692ea214c4f935d753267285d1018f7dfb93372f6af`  
		Last Modified: Fri, 09 Jun 2017 15:56:12 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80cb2415c5b56c3a6d3008a9cf9c86e85b870ec7bc9edff28fb084e47b1ec3e3`  
		Last Modified: Tue, 13 Jun 2017 23:51:42 GMT  
		Size: 12.7 MB (12677273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4510ca78dba5023f36b8e74ec9e21744d284ec1b4c04d2cb429351c96719e16f`  
		Last Modified: Tue, 13 Jun 2017 23:51:38 GMT  
		Size: 2.1 KB (2119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0df546cbfa88f102af353bbdf850757939b279ce3726fc8af376653eff0650`  
		Last Modified: Tue, 13 Jun 2017 23:51:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e7e5a374a9f3fa291bd46256057d7b35d48a70dd8eea442ef6da8a0dd3a5a3`  
		Last Modified: Tue, 13 Jun 2017 23:51:37 GMT  
		Size: 7.7 KB (7663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780387fb33d6a830bca1c9e4ea92f8e02f089672899274b1d3e97edeec7fe0b1`  
		Last Modified: Wed, 14 Jun 2017 08:16:15 GMT  
		Size: 2.7 MB (2748895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd64548387ef4e44be968fdbf04d9364b45e0bc00f8fc7973134de5c0684e831`  
		Last Modified: Wed, 14 Jun 2017 08:16:11 GMT  
		Size: 56.3 KB (56266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cf784d2e2b6fa04332146f79f11a5ce3ce576d0724f49df7e1773ac14d39f4e`  
		Last Modified: Wed, 14 Jun 2017 08:16:11 GMT  
		Size: 18.3 KB (18260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c63bfba11453735eaf5c75b771a12e1ac99b0796434378898bd807008f1b49`  
		Last Modified: Wed, 14 Jun 2017 08:16:11 GMT  
		Size: 72.7 KB (72712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f396ffcb49ac3f60254874d5a7aeea882f41d65ceca06a6769b61b999b1166`  
		Last Modified: Wed, 14 Jun 2017 08:16:14 GMT  
		Size: 9.0 MB (9006705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd9ba30e180e4ad2eff608db6462a0713261c40dce8121668a768be6b37f41c`  
		Last Modified: Wed, 14 Jun 2017 08:16:11 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3a2e7fa15f251b1f46f8ed07b0bf2339cb505c99a983eb8f9ab293fa7623362`  
		Last Modified: Wed, 14 Jun 2017 08:16:11 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:fpm-php7`

```console
$ docker pull joomla@sha256:1bba57bc2c9dfd3b0f356e53b03e963eae83c52fa6c93dfa1c8c9e7df1eb3dbb
```

-	Platforms:
	-	linux; amd64

### `joomla:fpm-php7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.4 MB (172369374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f64c20ebbede9d53b4bc8f0eb1cd8f3cf8e51069e75f80524c12cf2ab771679`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 22:43:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 08 Jun 2017 22:43:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 08 Jun 2017 22:43:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 08 Jun 2017 22:43:35 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 08 Jun 2017 23:00:32 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 08 Jun 2017 23:00:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 08 Jun 2017 23:00:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 09 Jun 2017 14:05:42 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 09 Jun 2017 14:05:42 GMT
ENV PHP_VERSION=7.0.20
# Fri, 09 Jun 2017 14:05:43 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.20.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.20.tar.xz.asc/from/this/mirror
# Fri, 09 Jun 2017 14:05:44 GMT
ENV PHP_SHA256=31b9cf1fb83fe3cd82c2f6603a0ae81ae6abacb5286827e362d8f85e68908e0a PHP_MD5=e84615871c1c6dbd0860746a31f3a7c8
# Fri, 09 Jun 2017 14:05:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 14:05:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 13 Jun 2017 22:37:48 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 13 Jun 2017 22:37:57 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Tue, 13 Jun 2017 22:37:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 13 Jun 2017 22:38:00 GMT
WORKDIR /var/www/html
# Tue, 13 Jun 2017 22:38:47 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 13 Jun 2017 22:39:32 GMT
EXPOSE 9000/tcp
# Tue, 13 Jun 2017 22:40:18 GMT
CMD ["php-fpm"]
# Wed, 14 Jun 2017 08:01:01 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 14 Jun 2017 08:01:26 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Wed, 14 Jun 2017 08:01:36 GMT
RUN docker-php-ext-install mysqli
# Wed, 14 Jun 2017 08:02:00 GMT
RUN docker-php-ext-install mcrypt
# Wed, 14 Jun 2017 08:02:39 GMT
RUN docker-php-ext-install zip
# Wed, 14 Jun 2017 08:02:47 GMT
VOLUME [/var/www/html]
# Wed, 14 Jun 2017 08:02:48 GMT
ENV JOOMLA_VERSION=3.7.0
# Wed, 14 Jun 2017 08:02:49 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Wed, 14 Jun 2017 08:02:56 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 14 Jun 2017 08:03:14 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Wed, 14 Jun 2017 08:03:16 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Wed, 14 Jun 2017 08:03:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Jun 2017 08:03:40 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d676534ff31563c0d3cd60a30137d929e3731fcff3702b1dab1690cf60fc6688`  
		Last Modified: Fri, 09 Jun 2017 05:51:50 GMT  
		Size: 82.5 MB (82493636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a1f6ddd8d3ad32ed2207ec2ddba3002af112fdc44df8a268644731ccbef42`  
		Last Modified: Fri, 09 Jun 2017 05:51:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c54e27778fdf355fa292e75fca820a00750d2729e3624e8d9eeb957283fe7fc7`  
		Last Modified: Fri, 09 Jun 2017 15:56:14 GMT  
		Size: 12.7 MB (12715010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ecc435eb1e7bbf699b4692ea214c4f935d753267285d1018f7dfb93372f6af`  
		Last Modified: Fri, 09 Jun 2017 15:56:12 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80cb2415c5b56c3a6d3008a9cf9c86e85b870ec7bc9edff28fb084e47b1ec3e3`  
		Last Modified: Tue, 13 Jun 2017 23:51:42 GMT  
		Size: 12.7 MB (12677273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4510ca78dba5023f36b8e74ec9e21744d284ec1b4c04d2cb429351c96719e16f`  
		Last Modified: Tue, 13 Jun 2017 23:51:38 GMT  
		Size: 2.1 KB (2119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0df546cbfa88f102af353bbdf850757939b279ce3726fc8af376653eff0650`  
		Last Modified: Tue, 13 Jun 2017 23:51:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e7e5a374a9f3fa291bd46256057d7b35d48a70dd8eea442ef6da8a0dd3a5a3`  
		Last Modified: Tue, 13 Jun 2017 23:51:37 GMT  
		Size: 7.7 KB (7663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780387fb33d6a830bca1c9e4ea92f8e02f089672899274b1d3e97edeec7fe0b1`  
		Last Modified: Wed, 14 Jun 2017 08:16:15 GMT  
		Size: 2.7 MB (2748895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd64548387ef4e44be968fdbf04d9364b45e0bc00f8fc7973134de5c0684e831`  
		Last Modified: Wed, 14 Jun 2017 08:16:11 GMT  
		Size: 56.3 KB (56266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cf784d2e2b6fa04332146f79f11a5ce3ce576d0724f49df7e1773ac14d39f4e`  
		Last Modified: Wed, 14 Jun 2017 08:16:11 GMT  
		Size: 18.3 KB (18260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c63bfba11453735eaf5c75b771a12e1ac99b0796434378898bd807008f1b49`  
		Last Modified: Wed, 14 Jun 2017 08:16:11 GMT  
		Size: 72.7 KB (72712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f396ffcb49ac3f60254874d5a7aeea882f41d65ceca06a6769b61b999b1166`  
		Last Modified: Wed, 14 Jun 2017 08:16:14 GMT  
		Size: 9.0 MB (9006705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd9ba30e180e4ad2eff608db6462a0713261c40dce8121668a768be6b37f41c`  
		Last Modified: Wed, 14 Jun 2017 08:16:11 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3a2e7fa15f251b1f46f8ed07b0bf2339cb505c99a983eb8f9ab293fa7623362`  
		Last Modified: Wed, 14 Jun 2017 08:16:11 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
