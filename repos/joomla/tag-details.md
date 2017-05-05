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
$ docker pull joomla@sha256:b81decf552f7f9d320494df8430c5ea0e6b3eca39003e0bc02a8fa68b990d5e5
```

-	Platforms:
	-	linux; amd64

### `joomla:3.7.0-apache` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168363457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5209d6e3738c1cadef3acf2bb83b4f1f78fdd7730360f8b18b44555815dbfa9a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 02:53:21 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Apr 2017 02:53:59 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 25 Apr 2017 02:54:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Apr 2017 02:54:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 25 Apr 2017 03:02:14 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 03:02:23 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 25 Apr 2017 03:02:24 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 25 Apr 2017 03:02:25 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 25 Apr 2017 03:02:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 25 Apr 2017 03:02:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 25 Apr 2017 03:02:50 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 25 Apr 2017 03:03:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 25 Apr 2017 03:03:09 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 25 Apr 2017 03:03:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:03:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:03:32 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 25 Apr 2017 03:03:33 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 25 Apr 2017 03:03:34 GMT
ENV PHP_VERSION=5.6.30
# Tue, 25 Apr 2017 03:03:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 25 Apr 2017 03:03:36 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 25 Apr 2017 03:03:49 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 25 Apr 2017 03:03:50 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 25 Apr 2017 03:06:58 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 05 May 2017 20:43:27 GMT
COPY multi:2322553de3ca67507508fc2dce30f88e38a62b59394dc81c4180177a850ae993 in /usr/local/bin/ 
# Fri, 05 May 2017 20:43:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 05 May 2017 20:43:29 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 05 May 2017 20:43:30 GMT
WORKDIR /var/www/html
# Fri, 05 May 2017 20:43:31 GMT
EXPOSE 80/tcp
# Fri, 05 May 2017 20:43:31 GMT
CMD ["apache2-foreground"]
# Fri, 05 May 2017 22:28:39 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 05 May 2017 22:28:41 GMT
RUN a2enmod rewrite
# Fri, 05 May 2017 22:29:08 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 05 May 2017 22:29:17 GMT
RUN docker-php-ext-install mysqli
# Fri, 05 May 2017 22:29:23 GMT
RUN docker-php-ext-install mcrypt
# Fri, 05 May 2017 22:29:47 GMT
RUN docker-php-ext-install zip
# Fri, 05 May 2017 22:29:56 GMT
VOLUME [/var/www/html]
# Fri, 05 May 2017 22:29:57 GMT
ENV JOOMLA_VERSION=3.7.0
# Fri, 05 May 2017 22:29:58 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Fri, 05 May 2017 22:30:06 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 05 May 2017 22:30:07 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 05 May 2017 22:30:09 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 05 May 2017 22:30:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 05 May 2017 22:30:10 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b8a88a0af049efa3c92b1c96a947f501ec7c751a568b0d3881b3c757a184a3`  
		Last Modified: Tue, 25 Apr 2017 04:02:19 GMT  
		Size: 78.8 MB (78849205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78c922dd678a8a2c701087b1ac1381c50cb83d0bf5fc1c55c86f1ce22c7c49f`  
		Last Modified: Tue, 25 Apr 2017 04:01:55 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6680e61553d3560bbea1e9216874edb5343ee5de4ac18c563d6c172b99ad8a29`  
		Last Modified: Tue, 25 Apr 2017 04:06:37 GMT  
		Size: 2.9 MB (2912027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1ddb74fbec50907d2cdf9dc95054800b07cf13b96c21d8179c57c0e9bd1f3c`  
		Last Modified: Tue, 25 Apr 2017 04:06:35 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048af0e095264aca62e46b93162f4b66446bc1757207ab9eef0daf7db10b02bc`  
		Last Modified: Tue, 25 Apr 2017 04:06:37 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11ab675603929db5ec0fc46e5515d12e15fb78cc56c54fe03fe0f54536aafb3`  
		Last Modified: Tue, 25 Apr 2017 04:06:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b684f7dda232126ac8d2bacfb38b9d65cbf2eec0c4f0e832dfe88f1e9f2d38c`  
		Last Modified: Tue, 25 Apr 2017 04:06:32 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206854c69eb74ef6ef251a17eab670993e42e7782a24e2e09ec838f4e29fc17d`  
		Last Modified: Tue, 25 Apr 2017 04:23:56 GMT  
		Size: 12.6 MB (12580047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e643dc9b09439ff3960ee95f984ec37f3017db06771ca4e9fcf1fbec07a2ce`  
		Last Modified: Tue, 25 Apr 2017 04:23:55 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9503d4d2386dc728ad0e8f848f933a9b492ad02087d0cbc845c0e0d7628d531`  
		Last Modified: Tue, 25 Apr 2017 04:23:58 GMT  
		Size: 9.5 MB (9537705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0493b2037613ffe23d59de45cf4207fbe734b3ce6941ceca418438614136ed25`  
		Last Modified: Fri, 05 May 2017 21:05:14 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860ba2172be97015ecdd9d6a61ca6c0df46bfb87da14685a67355a0a40fd3afb`  
		Last Modified: Fri, 05 May 2017 21:05:15 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237889f242fc50b92725aece8f050e5c9dbe9fdd41cc3d20b282e378b9b67b58`  
		Last Modified: Fri, 05 May 2017 22:35:04 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82892ef41f1deccf4bc81f46ccc40d2cd5d7f0c8c300cd70d1d5a69e9b1e114`  
		Last Modified: Fri, 05 May 2017 22:35:05 GMT  
		Size: 2.8 MB (2778484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76d8a2be66cb66da1b6fc741b69b9da3c145f3630c49f79959c09fcc8e13169`  
		Last Modified: Fri, 05 May 2017 22:35:05 GMT  
		Size: 57.9 KB (57948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a534951750d104b4054358fbf499cbba3ee6e66501300b0f6d300359be7b31d`  
		Last Modified: Fri, 05 May 2017 22:35:05 GMT  
		Size: 19.7 KB (19662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a0764ed6ff15b6aab47074ee649bf90d31a93931700bfd50807279762adf83`  
		Last Modified: Fri, 05 May 2017 22:35:04 GMT  
		Size: 63.4 KB (63363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2044852f7efa429fbee52d7ce2b2ac1032ed72022b7fc32e1529226882696e7c`  
		Last Modified: Fri, 05 May 2017 22:35:06 GMT  
		Size: 9.0 MB (9006709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b84adab7535b9ffc6f90be55314e0350e0d7e9f7c12341b45b303e47404b36`  
		Last Modified: Fri, 05 May 2017 22:35:04 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d255c29802136e23cce8924bd312aeaec2fe3090c94c41cec2d00dee290f25`  
		Last Modified: Fri, 05 May 2017 22:35:05 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.7-apache`

```console
$ docker pull joomla@sha256:b81decf552f7f9d320494df8430c5ea0e6b3eca39003e0bc02a8fa68b990d5e5
```

-	Platforms:
	-	linux; amd64

### `joomla:3.7-apache` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168363457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5209d6e3738c1cadef3acf2bb83b4f1f78fdd7730360f8b18b44555815dbfa9a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 02:53:21 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Apr 2017 02:53:59 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 25 Apr 2017 02:54:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Apr 2017 02:54:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 25 Apr 2017 03:02:14 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 03:02:23 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 25 Apr 2017 03:02:24 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 25 Apr 2017 03:02:25 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 25 Apr 2017 03:02:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 25 Apr 2017 03:02:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 25 Apr 2017 03:02:50 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 25 Apr 2017 03:03:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 25 Apr 2017 03:03:09 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 25 Apr 2017 03:03:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:03:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:03:32 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 25 Apr 2017 03:03:33 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 25 Apr 2017 03:03:34 GMT
ENV PHP_VERSION=5.6.30
# Tue, 25 Apr 2017 03:03:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 25 Apr 2017 03:03:36 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 25 Apr 2017 03:03:49 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 25 Apr 2017 03:03:50 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 25 Apr 2017 03:06:58 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 05 May 2017 20:43:27 GMT
COPY multi:2322553de3ca67507508fc2dce30f88e38a62b59394dc81c4180177a850ae993 in /usr/local/bin/ 
# Fri, 05 May 2017 20:43:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 05 May 2017 20:43:29 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 05 May 2017 20:43:30 GMT
WORKDIR /var/www/html
# Fri, 05 May 2017 20:43:31 GMT
EXPOSE 80/tcp
# Fri, 05 May 2017 20:43:31 GMT
CMD ["apache2-foreground"]
# Fri, 05 May 2017 22:28:39 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 05 May 2017 22:28:41 GMT
RUN a2enmod rewrite
# Fri, 05 May 2017 22:29:08 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 05 May 2017 22:29:17 GMT
RUN docker-php-ext-install mysqli
# Fri, 05 May 2017 22:29:23 GMT
RUN docker-php-ext-install mcrypt
# Fri, 05 May 2017 22:29:47 GMT
RUN docker-php-ext-install zip
# Fri, 05 May 2017 22:29:56 GMT
VOLUME [/var/www/html]
# Fri, 05 May 2017 22:29:57 GMT
ENV JOOMLA_VERSION=3.7.0
# Fri, 05 May 2017 22:29:58 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Fri, 05 May 2017 22:30:06 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 05 May 2017 22:30:07 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 05 May 2017 22:30:09 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 05 May 2017 22:30:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 05 May 2017 22:30:10 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b8a88a0af049efa3c92b1c96a947f501ec7c751a568b0d3881b3c757a184a3`  
		Last Modified: Tue, 25 Apr 2017 04:02:19 GMT  
		Size: 78.8 MB (78849205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78c922dd678a8a2c701087b1ac1381c50cb83d0bf5fc1c55c86f1ce22c7c49f`  
		Last Modified: Tue, 25 Apr 2017 04:01:55 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6680e61553d3560bbea1e9216874edb5343ee5de4ac18c563d6c172b99ad8a29`  
		Last Modified: Tue, 25 Apr 2017 04:06:37 GMT  
		Size: 2.9 MB (2912027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1ddb74fbec50907d2cdf9dc95054800b07cf13b96c21d8179c57c0e9bd1f3c`  
		Last Modified: Tue, 25 Apr 2017 04:06:35 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048af0e095264aca62e46b93162f4b66446bc1757207ab9eef0daf7db10b02bc`  
		Last Modified: Tue, 25 Apr 2017 04:06:37 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11ab675603929db5ec0fc46e5515d12e15fb78cc56c54fe03fe0f54536aafb3`  
		Last Modified: Tue, 25 Apr 2017 04:06:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b684f7dda232126ac8d2bacfb38b9d65cbf2eec0c4f0e832dfe88f1e9f2d38c`  
		Last Modified: Tue, 25 Apr 2017 04:06:32 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206854c69eb74ef6ef251a17eab670993e42e7782a24e2e09ec838f4e29fc17d`  
		Last Modified: Tue, 25 Apr 2017 04:23:56 GMT  
		Size: 12.6 MB (12580047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e643dc9b09439ff3960ee95f984ec37f3017db06771ca4e9fcf1fbec07a2ce`  
		Last Modified: Tue, 25 Apr 2017 04:23:55 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9503d4d2386dc728ad0e8f848f933a9b492ad02087d0cbc845c0e0d7628d531`  
		Last Modified: Tue, 25 Apr 2017 04:23:58 GMT  
		Size: 9.5 MB (9537705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0493b2037613ffe23d59de45cf4207fbe734b3ce6941ceca418438614136ed25`  
		Last Modified: Fri, 05 May 2017 21:05:14 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860ba2172be97015ecdd9d6a61ca6c0df46bfb87da14685a67355a0a40fd3afb`  
		Last Modified: Fri, 05 May 2017 21:05:15 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237889f242fc50b92725aece8f050e5c9dbe9fdd41cc3d20b282e378b9b67b58`  
		Last Modified: Fri, 05 May 2017 22:35:04 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82892ef41f1deccf4bc81f46ccc40d2cd5d7f0c8c300cd70d1d5a69e9b1e114`  
		Last Modified: Fri, 05 May 2017 22:35:05 GMT  
		Size: 2.8 MB (2778484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76d8a2be66cb66da1b6fc741b69b9da3c145f3630c49f79959c09fcc8e13169`  
		Last Modified: Fri, 05 May 2017 22:35:05 GMT  
		Size: 57.9 KB (57948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a534951750d104b4054358fbf499cbba3ee6e66501300b0f6d300359be7b31d`  
		Last Modified: Fri, 05 May 2017 22:35:05 GMT  
		Size: 19.7 KB (19662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a0764ed6ff15b6aab47074ee649bf90d31a93931700bfd50807279762adf83`  
		Last Modified: Fri, 05 May 2017 22:35:04 GMT  
		Size: 63.4 KB (63363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2044852f7efa429fbee52d7ce2b2ac1032ed72022b7fc32e1529226882696e7c`  
		Last Modified: Fri, 05 May 2017 22:35:06 GMT  
		Size: 9.0 MB (9006709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b84adab7535b9ffc6f90be55314e0350e0d7e9f7c12341b45b303e47404b36`  
		Last Modified: Fri, 05 May 2017 22:35:04 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d255c29802136e23cce8924bd312aeaec2fe3090c94c41cec2d00dee290f25`  
		Last Modified: Fri, 05 May 2017 22:35:05 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-apache`

```console
$ docker pull joomla@sha256:b81decf552f7f9d320494df8430c5ea0e6b3eca39003e0bc02a8fa68b990d5e5
```

-	Platforms:
	-	linux; amd64

### `joomla:3-apache` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168363457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5209d6e3738c1cadef3acf2bb83b4f1f78fdd7730360f8b18b44555815dbfa9a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 02:53:21 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Apr 2017 02:53:59 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 25 Apr 2017 02:54:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Apr 2017 02:54:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 25 Apr 2017 03:02:14 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 03:02:23 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 25 Apr 2017 03:02:24 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 25 Apr 2017 03:02:25 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 25 Apr 2017 03:02:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 25 Apr 2017 03:02:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 25 Apr 2017 03:02:50 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 25 Apr 2017 03:03:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 25 Apr 2017 03:03:09 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 25 Apr 2017 03:03:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:03:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:03:32 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 25 Apr 2017 03:03:33 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 25 Apr 2017 03:03:34 GMT
ENV PHP_VERSION=5.6.30
# Tue, 25 Apr 2017 03:03:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 25 Apr 2017 03:03:36 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 25 Apr 2017 03:03:49 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 25 Apr 2017 03:03:50 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 25 Apr 2017 03:06:58 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 05 May 2017 20:43:27 GMT
COPY multi:2322553de3ca67507508fc2dce30f88e38a62b59394dc81c4180177a850ae993 in /usr/local/bin/ 
# Fri, 05 May 2017 20:43:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 05 May 2017 20:43:29 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 05 May 2017 20:43:30 GMT
WORKDIR /var/www/html
# Fri, 05 May 2017 20:43:31 GMT
EXPOSE 80/tcp
# Fri, 05 May 2017 20:43:31 GMT
CMD ["apache2-foreground"]
# Fri, 05 May 2017 22:28:39 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 05 May 2017 22:28:41 GMT
RUN a2enmod rewrite
# Fri, 05 May 2017 22:29:08 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 05 May 2017 22:29:17 GMT
RUN docker-php-ext-install mysqli
# Fri, 05 May 2017 22:29:23 GMT
RUN docker-php-ext-install mcrypt
# Fri, 05 May 2017 22:29:47 GMT
RUN docker-php-ext-install zip
# Fri, 05 May 2017 22:29:56 GMT
VOLUME [/var/www/html]
# Fri, 05 May 2017 22:29:57 GMT
ENV JOOMLA_VERSION=3.7.0
# Fri, 05 May 2017 22:29:58 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Fri, 05 May 2017 22:30:06 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 05 May 2017 22:30:07 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 05 May 2017 22:30:09 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 05 May 2017 22:30:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 05 May 2017 22:30:10 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b8a88a0af049efa3c92b1c96a947f501ec7c751a568b0d3881b3c757a184a3`  
		Last Modified: Tue, 25 Apr 2017 04:02:19 GMT  
		Size: 78.8 MB (78849205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78c922dd678a8a2c701087b1ac1381c50cb83d0bf5fc1c55c86f1ce22c7c49f`  
		Last Modified: Tue, 25 Apr 2017 04:01:55 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6680e61553d3560bbea1e9216874edb5343ee5de4ac18c563d6c172b99ad8a29`  
		Last Modified: Tue, 25 Apr 2017 04:06:37 GMT  
		Size: 2.9 MB (2912027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1ddb74fbec50907d2cdf9dc95054800b07cf13b96c21d8179c57c0e9bd1f3c`  
		Last Modified: Tue, 25 Apr 2017 04:06:35 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048af0e095264aca62e46b93162f4b66446bc1757207ab9eef0daf7db10b02bc`  
		Last Modified: Tue, 25 Apr 2017 04:06:37 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11ab675603929db5ec0fc46e5515d12e15fb78cc56c54fe03fe0f54536aafb3`  
		Last Modified: Tue, 25 Apr 2017 04:06:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b684f7dda232126ac8d2bacfb38b9d65cbf2eec0c4f0e832dfe88f1e9f2d38c`  
		Last Modified: Tue, 25 Apr 2017 04:06:32 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206854c69eb74ef6ef251a17eab670993e42e7782a24e2e09ec838f4e29fc17d`  
		Last Modified: Tue, 25 Apr 2017 04:23:56 GMT  
		Size: 12.6 MB (12580047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e643dc9b09439ff3960ee95f984ec37f3017db06771ca4e9fcf1fbec07a2ce`  
		Last Modified: Tue, 25 Apr 2017 04:23:55 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9503d4d2386dc728ad0e8f848f933a9b492ad02087d0cbc845c0e0d7628d531`  
		Last Modified: Tue, 25 Apr 2017 04:23:58 GMT  
		Size: 9.5 MB (9537705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0493b2037613ffe23d59de45cf4207fbe734b3ce6941ceca418438614136ed25`  
		Last Modified: Fri, 05 May 2017 21:05:14 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860ba2172be97015ecdd9d6a61ca6c0df46bfb87da14685a67355a0a40fd3afb`  
		Last Modified: Fri, 05 May 2017 21:05:15 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237889f242fc50b92725aece8f050e5c9dbe9fdd41cc3d20b282e378b9b67b58`  
		Last Modified: Fri, 05 May 2017 22:35:04 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82892ef41f1deccf4bc81f46ccc40d2cd5d7f0c8c300cd70d1d5a69e9b1e114`  
		Last Modified: Fri, 05 May 2017 22:35:05 GMT  
		Size: 2.8 MB (2778484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76d8a2be66cb66da1b6fc741b69b9da3c145f3630c49f79959c09fcc8e13169`  
		Last Modified: Fri, 05 May 2017 22:35:05 GMT  
		Size: 57.9 KB (57948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a534951750d104b4054358fbf499cbba3ee6e66501300b0f6d300359be7b31d`  
		Last Modified: Fri, 05 May 2017 22:35:05 GMT  
		Size: 19.7 KB (19662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a0764ed6ff15b6aab47074ee649bf90d31a93931700bfd50807279762adf83`  
		Last Modified: Fri, 05 May 2017 22:35:04 GMT  
		Size: 63.4 KB (63363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2044852f7efa429fbee52d7ce2b2ac1032ed72022b7fc32e1529226882696e7c`  
		Last Modified: Fri, 05 May 2017 22:35:06 GMT  
		Size: 9.0 MB (9006709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b84adab7535b9ffc6f90be55314e0350e0d7e9f7c12341b45b303e47404b36`  
		Last Modified: Fri, 05 May 2017 22:35:04 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d255c29802136e23cce8924bd312aeaec2fe3090c94c41cec2d00dee290f25`  
		Last Modified: Fri, 05 May 2017 22:35:05 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:apache`

```console
$ docker pull joomla@sha256:b81decf552f7f9d320494df8430c5ea0e6b3eca39003e0bc02a8fa68b990d5e5
```

-	Platforms:
	-	linux; amd64

### `joomla:apache` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168363457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5209d6e3738c1cadef3acf2bb83b4f1f78fdd7730360f8b18b44555815dbfa9a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 02:53:21 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Apr 2017 02:53:59 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 25 Apr 2017 02:54:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Apr 2017 02:54:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 25 Apr 2017 03:02:14 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 03:02:23 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 25 Apr 2017 03:02:24 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 25 Apr 2017 03:02:25 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 25 Apr 2017 03:02:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 25 Apr 2017 03:02:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 25 Apr 2017 03:02:50 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 25 Apr 2017 03:03:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 25 Apr 2017 03:03:09 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 25 Apr 2017 03:03:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:03:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:03:32 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 25 Apr 2017 03:03:33 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 25 Apr 2017 03:03:34 GMT
ENV PHP_VERSION=5.6.30
# Tue, 25 Apr 2017 03:03:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 25 Apr 2017 03:03:36 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 25 Apr 2017 03:03:49 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 25 Apr 2017 03:03:50 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 25 Apr 2017 03:06:58 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 05 May 2017 20:43:27 GMT
COPY multi:2322553de3ca67507508fc2dce30f88e38a62b59394dc81c4180177a850ae993 in /usr/local/bin/ 
# Fri, 05 May 2017 20:43:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 05 May 2017 20:43:29 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 05 May 2017 20:43:30 GMT
WORKDIR /var/www/html
# Fri, 05 May 2017 20:43:31 GMT
EXPOSE 80/tcp
# Fri, 05 May 2017 20:43:31 GMT
CMD ["apache2-foreground"]
# Fri, 05 May 2017 22:28:39 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 05 May 2017 22:28:41 GMT
RUN a2enmod rewrite
# Fri, 05 May 2017 22:29:08 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 05 May 2017 22:29:17 GMT
RUN docker-php-ext-install mysqli
# Fri, 05 May 2017 22:29:23 GMT
RUN docker-php-ext-install mcrypt
# Fri, 05 May 2017 22:29:47 GMT
RUN docker-php-ext-install zip
# Fri, 05 May 2017 22:29:56 GMT
VOLUME [/var/www/html]
# Fri, 05 May 2017 22:29:57 GMT
ENV JOOMLA_VERSION=3.7.0
# Fri, 05 May 2017 22:29:58 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Fri, 05 May 2017 22:30:06 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 05 May 2017 22:30:07 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 05 May 2017 22:30:09 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 05 May 2017 22:30:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 05 May 2017 22:30:10 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b8a88a0af049efa3c92b1c96a947f501ec7c751a568b0d3881b3c757a184a3`  
		Last Modified: Tue, 25 Apr 2017 04:02:19 GMT  
		Size: 78.8 MB (78849205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78c922dd678a8a2c701087b1ac1381c50cb83d0bf5fc1c55c86f1ce22c7c49f`  
		Last Modified: Tue, 25 Apr 2017 04:01:55 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6680e61553d3560bbea1e9216874edb5343ee5de4ac18c563d6c172b99ad8a29`  
		Last Modified: Tue, 25 Apr 2017 04:06:37 GMT  
		Size: 2.9 MB (2912027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1ddb74fbec50907d2cdf9dc95054800b07cf13b96c21d8179c57c0e9bd1f3c`  
		Last Modified: Tue, 25 Apr 2017 04:06:35 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048af0e095264aca62e46b93162f4b66446bc1757207ab9eef0daf7db10b02bc`  
		Last Modified: Tue, 25 Apr 2017 04:06:37 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11ab675603929db5ec0fc46e5515d12e15fb78cc56c54fe03fe0f54536aafb3`  
		Last Modified: Tue, 25 Apr 2017 04:06:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b684f7dda232126ac8d2bacfb38b9d65cbf2eec0c4f0e832dfe88f1e9f2d38c`  
		Last Modified: Tue, 25 Apr 2017 04:06:32 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206854c69eb74ef6ef251a17eab670993e42e7782a24e2e09ec838f4e29fc17d`  
		Last Modified: Tue, 25 Apr 2017 04:23:56 GMT  
		Size: 12.6 MB (12580047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e643dc9b09439ff3960ee95f984ec37f3017db06771ca4e9fcf1fbec07a2ce`  
		Last Modified: Tue, 25 Apr 2017 04:23:55 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9503d4d2386dc728ad0e8f848f933a9b492ad02087d0cbc845c0e0d7628d531`  
		Last Modified: Tue, 25 Apr 2017 04:23:58 GMT  
		Size: 9.5 MB (9537705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0493b2037613ffe23d59de45cf4207fbe734b3ce6941ceca418438614136ed25`  
		Last Modified: Fri, 05 May 2017 21:05:14 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860ba2172be97015ecdd9d6a61ca6c0df46bfb87da14685a67355a0a40fd3afb`  
		Last Modified: Fri, 05 May 2017 21:05:15 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237889f242fc50b92725aece8f050e5c9dbe9fdd41cc3d20b282e378b9b67b58`  
		Last Modified: Fri, 05 May 2017 22:35:04 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82892ef41f1deccf4bc81f46ccc40d2cd5d7f0c8c300cd70d1d5a69e9b1e114`  
		Last Modified: Fri, 05 May 2017 22:35:05 GMT  
		Size: 2.8 MB (2778484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76d8a2be66cb66da1b6fc741b69b9da3c145f3630c49f79959c09fcc8e13169`  
		Last Modified: Fri, 05 May 2017 22:35:05 GMT  
		Size: 57.9 KB (57948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a534951750d104b4054358fbf499cbba3ee6e66501300b0f6d300359be7b31d`  
		Last Modified: Fri, 05 May 2017 22:35:05 GMT  
		Size: 19.7 KB (19662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a0764ed6ff15b6aab47074ee649bf90d31a93931700bfd50807279762adf83`  
		Last Modified: Fri, 05 May 2017 22:35:04 GMT  
		Size: 63.4 KB (63363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2044852f7efa429fbee52d7ce2b2ac1032ed72022b7fc32e1529226882696e7c`  
		Last Modified: Fri, 05 May 2017 22:35:06 GMT  
		Size: 9.0 MB (9006709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b84adab7535b9ffc6f90be55314e0350e0d7e9f7c12341b45b303e47404b36`  
		Last Modified: Fri, 05 May 2017 22:35:04 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d255c29802136e23cce8924bd312aeaec2fe3090c94c41cec2d00dee290f25`  
		Last Modified: Fri, 05 May 2017 22:35:05 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.7.0`

```console
$ docker pull joomla@sha256:b81decf552f7f9d320494df8430c5ea0e6b3eca39003e0bc02a8fa68b990d5e5
```

-	Platforms:
	-	linux; amd64

### `joomla:3.7.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168363457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5209d6e3738c1cadef3acf2bb83b4f1f78fdd7730360f8b18b44555815dbfa9a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 02:53:21 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Apr 2017 02:53:59 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 25 Apr 2017 02:54:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Apr 2017 02:54:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 25 Apr 2017 03:02:14 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 03:02:23 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 25 Apr 2017 03:02:24 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 25 Apr 2017 03:02:25 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 25 Apr 2017 03:02:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 25 Apr 2017 03:02:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 25 Apr 2017 03:02:50 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 25 Apr 2017 03:03:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 25 Apr 2017 03:03:09 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 25 Apr 2017 03:03:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:03:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:03:32 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 25 Apr 2017 03:03:33 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 25 Apr 2017 03:03:34 GMT
ENV PHP_VERSION=5.6.30
# Tue, 25 Apr 2017 03:03:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 25 Apr 2017 03:03:36 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 25 Apr 2017 03:03:49 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 25 Apr 2017 03:03:50 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 25 Apr 2017 03:06:58 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 05 May 2017 20:43:27 GMT
COPY multi:2322553de3ca67507508fc2dce30f88e38a62b59394dc81c4180177a850ae993 in /usr/local/bin/ 
# Fri, 05 May 2017 20:43:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 05 May 2017 20:43:29 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 05 May 2017 20:43:30 GMT
WORKDIR /var/www/html
# Fri, 05 May 2017 20:43:31 GMT
EXPOSE 80/tcp
# Fri, 05 May 2017 20:43:31 GMT
CMD ["apache2-foreground"]
# Fri, 05 May 2017 22:28:39 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 05 May 2017 22:28:41 GMT
RUN a2enmod rewrite
# Fri, 05 May 2017 22:29:08 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 05 May 2017 22:29:17 GMT
RUN docker-php-ext-install mysqli
# Fri, 05 May 2017 22:29:23 GMT
RUN docker-php-ext-install mcrypt
# Fri, 05 May 2017 22:29:47 GMT
RUN docker-php-ext-install zip
# Fri, 05 May 2017 22:29:56 GMT
VOLUME [/var/www/html]
# Fri, 05 May 2017 22:29:57 GMT
ENV JOOMLA_VERSION=3.7.0
# Fri, 05 May 2017 22:29:58 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Fri, 05 May 2017 22:30:06 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 05 May 2017 22:30:07 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 05 May 2017 22:30:09 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 05 May 2017 22:30:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 05 May 2017 22:30:10 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b8a88a0af049efa3c92b1c96a947f501ec7c751a568b0d3881b3c757a184a3`  
		Last Modified: Tue, 25 Apr 2017 04:02:19 GMT  
		Size: 78.8 MB (78849205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78c922dd678a8a2c701087b1ac1381c50cb83d0bf5fc1c55c86f1ce22c7c49f`  
		Last Modified: Tue, 25 Apr 2017 04:01:55 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6680e61553d3560bbea1e9216874edb5343ee5de4ac18c563d6c172b99ad8a29`  
		Last Modified: Tue, 25 Apr 2017 04:06:37 GMT  
		Size: 2.9 MB (2912027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1ddb74fbec50907d2cdf9dc95054800b07cf13b96c21d8179c57c0e9bd1f3c`  
		Last Modified: Tue, 25 Apr 2017 04:06:35 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048af0e095264aca62e46b93162f4b66446bc1757207ab9eef0daf7db10b02bc`  
		Last Modified: Tue, 25 Apr 2017 04:06:37 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11ab675603929db5ec0fc46e5515d12e15fb78cc56c54fe03fe0f54536aafb3`  
		Last Modified: Tue, 25 Apr 2017 04:06:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b684f7dda232126ac8d2bacfb38b9d65cbf2eec0c4f0e832dfe88f1e9f2d38c`  
		Last Modified: Tue, 25 Apr 2017 04:06:32 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206854c69eb74ef6ef251a17eab670993e42e7782a24e2e09ec838f4e29fc17d`  
		Last Modified: Tue, 25 Apr 2017 04:23:56 GMT  
		Size: 12.6 MB (12580047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e643dc9b09439ff3960ee95f984ec37f3017db06771ca4e9fcf1fbec07a2ce`  
		Last Modified: Tue, 25 Apr 2017 04:23:55 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9503d4d2386dc728ad0e8f848f933a9b492ad02087d0cbc845c0e0d7628d531`  
		Last Modified: Tue, 25 Apr 2017 04:23:58 GMT  
		Size: 9.5 MB (9537705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0493b2037613ffe23d59de45cf4207fbe734b3ce6941ceca418438614136ed25`  
		Last Modified: Fri, 05 May 2017 21:05:14 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860ba2172be97015ecdd9d6a61ca6c0df46bfb87da14685a67355a0a40fd3afb`  
		Last Modified: Fri, 05 May 2017 21:05:15 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237889f242fc50b92725aece8f050e5c9dbe9fdd41cc3d20b282e378b9b67b58`  
		Last Modified: Fri, 05 May 2017 22:35:04 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82892ef41f1deccf4bc81f46ccc40d2cd5d7f0c8c300cd70d1d5a69e9b1e114`  
		Last Modified: Fri, 05 May 2017 22:35:05 GMT  
		Size: 2.8 MB (2778484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76d8a2be66cb66da1b6fc741b69b9da3c145f3630c49f79959c09fcc8e13169`  
		Last Modified: Fri, 05 May 2017 22:35:05 GMT  
		Size: 57.9 KB (57948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a534951750d104b4054358fbf499cbba3ee6e66501300b0f6d300359be7b31d`  
		Last Modified: Fri, 05 May 2017 22:35:05 GMT  
		Size: 19.7 KB (19662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a0764ed6ff15b6aab47074ee649bf90d31a93931700bfd50807279762adf83`  
		Last Modified: Fri, 05 May 2017 22:35:04 GMT  
		Size: 63.4 KB (63363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2044852f7efa429fbee52d7ce2b2ac1032ed72022b7fc32e1529226882696e7c`  
		Last Modified: Fri, 05 May 2017 22:35:06 GMT  
		Size: 9.0 MB (9006709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b84adab7535b9ffc6f90be55314e0350e0d7e9f7c12341b45b303e47404b36`  
		Last Modified: Fri, 05 May 2017 22:35:04 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d255c29802136e23cce8924bd312aeaec2fe3090c94c41cec2d00dee290f25`  
		Last Modified: Fri, 05 May 2017 22:35:05 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.7`

```console
$ docker pull joomla@sha256:b81decf552f7f9d320494df8430c5ea0e6b3eca39003e0bc02a8fa68b990d5e5
```

-	Platforms:
	-	linux; amd64

### `joomla:3.7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168363457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5209d6e3738c1cadef3acf2bb83b4f1f78fdd7730360f8b18b44555815dbfa9a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 02:53:21 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Apr 2017 02:53:59 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 25 Apr 2017 02:54:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Apr 2017 02:54:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 25 Apr 2017 03:02:14 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 03:02:23 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 25 Apr 2017 03:02:24 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 25 Apr 2017 03:02:25 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 25 Apr 2017 03:02:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 25 Apr 2017 03:02:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 25 Apr 2017 03:02:50 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 25 Apr 2017 03:03:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 25 Apr 2017 03:03:09 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 25 Apr 2017 03:03:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:03:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:03:32 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 25 Apr 2017 03:03:33 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 25 Apr 2017 03:03:34 GMT
ENV PHP_VERSION=5.6.30
# Tue, 25 Apr 2017 03:03:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 25 Apr 2017 03:03:36 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 25 Apr 2017 03:03:49 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 25 Apr 2017 03:03:50 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 25 Apr 2017 03:06:58 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 05 May 2017 20:43:27 GMT
COPY multi:2322553de3ca67507508fc2dce30f88e38a62b59394dc81c4180177a850ae993 in /usr/local/bin/ 
# Fri, 05 May 2017 20:43:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 05 May 2017 20:43:29 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 05 May 2017 20:43:30 GMT
WORKDIR /var/www/html
# Fri, 05 May 2017 20:43:31 GMT
EXPOSE 80/tcp
# Fri, 05 May 2017 20:43:31 GMT
CMD ["apache2-foreground"]
# Fri, 05 May 2017 22:28:39 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 05 May 2017 22:28:41 GMT
RUN a2enmod rewrite
# Fri, 05 May 2017 22:29:08 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 05 May 2017 22:29:17 GMT
RUN docker-php-ext-install mysqli
# Fri, 05 May 2017 22:29:23 GMT
RUN docker-php-ext-install mcrypt
# Fri, 05 May 2017 22:29:47 GMT
RUN docker-php-ext-install zip
# Fri, 05 May 2017 22:29:56 GMT
VOLUME [/var/www/html]
# Fri, 05 May 2017 22:29:57 GMT
ENV JOOMLA_VERSION=3.7.0
# Fri, 05 May 2017 22:29:58 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Fri, 05 May 2017 22:30:06 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 05 May 2017 22:30:07 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 05 May 2017 22:30:09 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 05 May 2017 22:30:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 05 May 2017 22:30:10 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b8a88a0af049efa3c92b1c96a947f501ec7c751a568b0d3881b3c757a184a3`  
		Last Modified: Tue, 25 Apr 2017 04:02:19 GMT  
		Size: 78.8 MB (78849205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78c922dd678a8a2c701087b1ac1381c50cb83d0bf5fc1c55c86f1ce22c7c49f`  
		Last Modified: Tue, 25 Apr 2017 04:01:55 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6680e61553d3560bbea1e9216874edb5343ee5de4ac18c563d6c172b99ad8a29`  
		Last Modified: Tue, 25 Apr 2017 04:06:37 GMT  
		Size: 2.9 MB (2912027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1ddb74fbec50907d2cdf9dc95054800b07cf13b96c21d8179c57c0e9bd1f3c`  
		Last Modified: Tue, 25 Apr 2017 04:06:35 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048af0e095264aca62e46b93162f4b66446bc1757207ab9eef0daf7db10b02bc`  
		Last Modified: Tue, 25 Apr 2017 04:06:37 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11ab675603929db5ec0fc46e5515d12e15fb78cc56c54fe03fe0f54536aafb3`  
		Last Modified: Tue, 25 Apr 2017 04:06:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b684f7dda232126ac8d2bacfb38b9d65cbf2eec0c4f0e832dfe88f1e9f2d38c`  
		Last Modified: Tue, 25 Apr 2017 04:06:32 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206854c69eb74ef6ef251a17eab670993e42e7782a24e2e09ec838f4e29fc17d`  
		Last Modified: Tue, 25 Apr 2017 04:23:56 GMT  
		Size: 12.6 MB (12580047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e643dc9b09439ff3960ee95f984ec37f3017db06771ca4e9fcf1fbec07a2ce`  
		Last Modified: Tue, 25 Apr 2017 04:23:55 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9503d4d2386dc728ad0e8f848f933a9b492ad02087d0cbc845c0e0d7628d531`  
		Last Modified: Tue, 25 Apr 2017 04:23:58 GMT  
		Size: 9.5 MB (9537705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0493b2037613ffe23d59de45cf4207fbe734b3ce6941ceca418438614136ed25`  
		Last Modified: Fri, 05 May 2017 21:05:14 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860ba2172be97015ecdd9d6a61ca6c0df46bfb87da14685a67355a0a40fd3afb`  
		Last Modified: Fri, 05 May 2017 21:05:15 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237889f242fc50b92725aece8f050e5c9dbe9fdd41cc3d20b282e378b9b67b58`  
		Last Modified: Fri, 05 May 2017 22:35:04 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82892ef41f1deccf4bc81f46ccc40d2cd5d7f0c8c300cd70d1d5a69e9b1e114`  
		Last Modified: Fri, 05 May 2017 22:35:05 GMT  
		Size: 2.8 MB (2778484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76d8a2be66cb66da1b6fc741b69b9da3c145f3630c49f79959c09fcc8e13169`  
		Last Modified: Fri, 05 May 2017 22:35:05 GMT  
		Size: 57.9 KB (57948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a534951750d104b4054358fbf499cbba3ee6e66501300b0f6d300359be7b31d`  
		Last Modified: Fri, 05 May 2017 22:35:05 GMT  
		Size: 19.7 KB (19662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a0764ed6ff15b6aab47074ee649bf90d31a93931700bfd50807279762adf83`  
		Last Modified: Fri, 05 May 2017 22:35:04 GMT  
		Size: 63.4 KB (63363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2044852f7efa429fbee52d7ce2b2ac1032ed72022b7fc32e1529226882696e7c`  
		Last Modified: Fri, 05 May 2017 22:35:06 GMT  
		Size: 9.0 MB (9006709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b84adab7535b9ffc6f90be55314e0350e0d7e9f7c12341b45b303e47404b36`  
		Last Modified: Fri, 05 May 2017 22:35:04 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d255c29802136e23cce8924bd312aeaec2fe3090c94c41cec2d00dee290f25`  
		Last Modified: Fri, 05 May 2017 22:35:05 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3`

```console
$ docker pull joomla@sha256:b81decf552f7f9d320494df8430c5ea0e6b3eca39003e0bc02a8fa68b990d5e5
```

-	Platforms:
	-	linux; amd64

### `joomla:3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168363457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5209d6e3738c1cadef3acf2bb83b4f1f78fdd7730360f8b18b44555815dbfa9a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 02:53:21 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Apr 2017 02:53:59 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 25 Apr 2017 02:54:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Apr 2017 02:54:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 25 Apr 2017 03:02:14 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 03:02:23 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 25 Apr 2017 03:02:24 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 25 Apr 2017 03:02:25 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 25 Apr 2017 03:02:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 25 Apr 2017 03:02:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 25 Apr 2017 03:02:50 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 25 Apr 2017 03:03:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 25 Apr 2017 03:03:09 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 25 Apr 2017 03:03:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:03:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:03:32 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 25 Apr 2017 03:03:33 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 25 Apr 2017 03:03:34 GMT
ENV PHP_VERSION=5.6.30
# Tue, 25 Apr 2017 03:03:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 25 Apr 2017 03:03:36 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 25 Apr 2017 03:03:49 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 25 Apr 2017 03:03:50 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 25 Apr 2017 03:06:58 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 05 May 2017 20:43:27 GMT
COPY multi:2322553de3ca67507508fc2dce30f88e38a62b59394dc81c4180177a850ae993 in /usr/local/bin/ 
# Fri, 05 May 2017 20:43:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 05 May 2017 20:43:29 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 05 May 2017 20:43:30 GMT
WORKDIR /var/www/html
# Fri, 05 May 2017 20:43:31 GMT
EXPOSE 80/tcp
# Fri, 05 May 2017 20:43:31 GMT
CMD ["apache2-foreground"]
# Fri, 05 May 2017 22:28:39 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 05 May 2017 22:28:41 GMT
RUN a2enmod rewrite
# Fri, 05 May 2017 22:29:08 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 05 May 2017 22:29:17 GMT
RUN docker-php-ext-install mysqli
# Fri, 05 May 2017 22:29:23 GMT
RUN docker-php-ext-install mcrypt
# Fri, 05 May 2017 22:29:47 GMT
RUN docker-php-ext-install zip
# Fri, 05 May 2017 22:29:56 GMT
VOLUME [/var/www/html]
# Fri, 05 May 2017 22:29:57 GMT
ENV JOOMLA_VERSION=3.7.0
# Fri, 05 May 2017 22:29:58 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Fri, 05 May 2017 22:30:06 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 05 May 2017 22:30:07 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 05 May 2017 22:30:09 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 05 May 2017 22:30:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 05 May 2017 22:30:10 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b8a88a0af049efa3c92b1c96a947f501ec7c751a568b0d3881b3c757a184a3`  
		Last Modified: Tue, 25 Apr 2017 04:02:19 GMT  
		Size: 78.8 MB (78849205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78c922dd678a8a2c701087b1ac1381c50cb83d0bf5fc1c55c86f1ce22c7c49f`  
		Last Modified: Tue, 25 Apr 2017 04:01:55 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6680e61553d3560bbea1e9216874edb5343ee5de4ac18c563d6c172b99ad8a29`  
		Last Modified: Tue, 25 Apr 2017 04:06:37 GMT  
		Size: 2.9 MB (2912027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1ddb74fbec50907d2cdf9dc95054800b07cf13b96c21d8179c57c0e9bd1f3c`  
		Last Modified: Tue, 25 Apr 2017 04:06:35 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048af0e095264aca62e46b93162f4b66446bc1757207ab9eef0daf7db10b02bc`  
		Last Modified: Tue, 25 Apr 2017 04:06:37 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11ab675603929db5ec0fc46e5515d12e15fb78cc56c54fe03fe0f54536aafb3`  
		Last Modified: Tue, 25 Apr 2017 04:06:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b684f7dda232126ac8d2bacfb38b9d65cbf2eec0c4f0e832dfe88f1e9f2d38c`  
		Last Modified: Tue, 25 Apr 2017 04:06:32 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206854c69eb74ef6ef251a17eab670993e42e7782a24e2e09ec838f4e29fc17d`  
		Last Modified: Tue, 25 Apr 2017 04:23:56 GMT  
		Size: 12.6 MB (12580047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e643dc9b09439ff3960ee95f984ec37f3017db06771ca4e9fcf1fbec07a2ce`  
		Last Modified: Tue, 25 Apr 2017 04:23:55 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9503d4d2386dc728ad0e8f848f933a9b492ad02087d0cbc845c0e0d7628d531`  
		Last Modified: Tue, 25 Apr 2017 04:23:58 GMT  
		Size: 9.5 MB (9537705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0493b2037613ffe23d59de45cf4207fbe734b3ce6941ceca418438614136ed25`  
		Last Modified: Fri, 05 May 2017 21:05:14 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860ba2172be97015ecdd9d6a61ca6c0df46bfb87da14685a67355a0a40fd3afb`  
		Last Modified: Fri, 05 May 2017 21:05:15 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237889f242fc50b92725aece8f050e5c9dbe9fdd41cc3d20b282e378b9b67b58`  
		Last Modified: Fri, 05 May 2017 22:35:04 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82892ef41f1deccf4bc81f46ccc40d2cd5d7f0c8c300cd70d1d5a69e9b1e114`  
		Last Modified: Fri, 05 May 2017 22:35:05 GMT  
		Size: 2.8 MB (2778484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76d8a2be66cb66da1b6fc741b69b9da3c145f3630c49f79959c09fcc8e13169`  
		Last Modified: Fri, 05 May 2017 22:35:05 GMT  
		Size: 57.9 KB (57948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a534951750d104b4054358fbf499cbba3ee6e66501300b0f6d300359be7b31d`  
		Last Modified: Fri, 05 May 2017 22:35:05 GMT  
		Size: 19.7 KB (19662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a0764ed6ff15b6aab47074ee649bf90d31a93931700bfd50807279762adf83`  
		Last Modified: Fri, 05 May 2017 22:35:04 GMT  
		Size: 63.4 KB (63363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2044852f7efa429fbee52d7ce2b2ac1032ed72022b7fc32e1529226882696e7c`  
		Last Modified: Fri, 05 May 2017 22:35:06 GMT  
		Size: 9.0 MB (9006709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b84adab7535b9ffc6f90be55314e0350e0d7e9f7c12341b45b303e47404b36`  
		Last Modified: Fri, 05 May 2017 22:35:04 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d255c29802136e23cce8924bd312aeaec2fe3090c94c41cec2d00dee290f25`  
		Last Modified: Fri, 05 May 2017 22:35:05 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:latest`

```console
$ docker pull joomla@sha256:b81decf552f7f9d320494df8430c5ea0e6b3eca39003e0bc02a8fa68b990d5e5
```

-	Platforms:
	-	linux; amd64

### `joomla:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168363457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5209d6e3738c1cadef3acf2bb83b4f1f78fdd7730360f8b18b44555815dbfa9a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 02:53:21 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Apr 2017 02:53:59 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 25 Apr 2017 02:54:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Apr 2017 02:54:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 25 Apr 2017 03:02:14 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 03:02:23 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 25 Apr 2017 03:02:24 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 25 Apr 2017 03:02:25 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 25 Apr 2017 03:02:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 25 Apr 2017 03:02:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 25 Apr 2017 03:02:50 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 25 Apr 2017 03:03:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 25 Apr 2017 03:03:09 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 25 Apr 2017 03:03:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:03:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:03:32 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 25 Apr 2017 03:03:33 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 25 Apr 2017 03:03:34 GMT
ENV PHP_VERSION=5.6.30
# Tue, 25 Apr 2017 03:03:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 25 Apr 2017 03:03:36 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 25 Apr 2017 03:03:49 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 25 Apr 2017 03:03:50 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 25 Apr 2017 03:06:58 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 05 May 2017 20:43:27 GMT
COPY multi:2322553de3ca67507508fc2dce30f88e38a62b59394dc81c4180177a850ae993 in /usr/local/bin/ 
# Fri, 05 May 2017 20:43:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 05 May 2017 20:43:29 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 05 May 2017 20:43:30 GMT
WORKDIR /var/www/html
# Fri, 05 May 2017 20:43:31 GMT
EXPOSE 80/tcp
# Fri, 05 May 2017 20:43:31 GMT
CMD ["apache2-foreground"]
# Fri, 05 May 2017 22:28:39 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 05 May 2017 22:28:41 GMT
RUN a2enmod rewrite
# Fri, 05 May 2017 22:29:08 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 05 May 2017 22:29:17 GMT
RUN docker-php-ext-install mysqli
# Fri, 05 May 2017 22:29:23 GMT
RUN docker-php-ext-install mcrypt
# Fri, 05 May 2017 22:29:47 GMT
RUN docker-php-ext-install zip
# Fri, 05 May 2017 22:29:56 GMT
VOLUME [/var/www/html]
# Fri, 05 May 2017 22:29:57 GMT
ENV JOOMLA_VERSION=3.7.0
# Fri, 05 May 2017 22:29:58 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Fri, 05 May 2017 22:30:06 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 05 May 2017 22:30:07 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 05 May 2017 22:30:09 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 05 May 2017 22:30:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 05 May 2017 22:30:10 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b8a88a0af049efa3c92b1c96a947f501ec7c751a568b0d3881b3c757a184a3`  
		Last Modified: Tue, 25 Apr 2017 04:02:19 GMT  
		Size: 78.8 MB (78849205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78c922dd678a8a2c701087b1ac1381c50cb83d0bf5fc1c55c86f1ce22c7c49f`  
		Last Modified: Tue, 25 Apr 2017 04:01:55 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6680e61553d3560bbea1e9216874edb5343ee5de4ac18c563d6c172b99ad8a29`  
		Last Modified: Tue, 25 Apr 2017 04:06:37 GMT  
		Size: 2.9 MB (2912027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1ddb74fbec50907d2cdf9dc95054800b07cf13b96c21d8179c57c0e9bd1f3c`  
		Last Modified: Tue, 25 Apr 2017 04:06:35 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048af0e095264aca62e46b93162f4b66446bc1757207ab9eef0daf7db10b02bc`  
		Last Modified: Tue, 25 Apr 2017 04:06:37 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11ab675603929db5ec0fc46e5515d12e15fb78cc56c54fe03fe0f54536aafb3`  
		Last Modified: Tue, 25 Apr 2017 04:06:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b684f7dda232126ac8d2bacfb38b9d65cbf2eec0c4f0e832dfe88f1e9f2d38c`  
		Last Modified: Tue, 25 Apr 2017 04:06:32 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206854c69eb74ef6ef251a17eab670993e42e7782a24e2e09ec838f4e29fc17d`  
		Last Modified: Tue, 25 Apr 2017 04:23:56 GMT  
		Size: 12.6 MB (12580047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e643dc9b09439ff3960ee95f984ec37f3017db06771ca4e9fcf1fbec07a2ce`  
		Last Modified: Tue, 25 Apr 2017 04:23:55 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9503d4d2386dc728ad0e8f848f933a9b492ad02087d0cbc845c0e0d7628d531`  
		Last Modified: Tue, 25 Apr 2017 04:23:58 GMT  
		Size: 9.5 MB (9537705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0493b2037613ffe23d59de45cf4207fbe734b3ce6941ceca418438614136ed25`  
		Last Modified: Fri, 05 May 2017 21:05:14 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860ba2172be97015ecdd9d6a61ca6c0df46bfb87da14685a67355a0a40fd3afb`  
		Last Modified: Fri, 05 May 2017 21:05:15 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237889f242fc50b92725aece8f050e5c9dbe9fdd41cc3d20b282e378b9b67b58`  
		Last Modified: Fri, 05 May 2017 22:35:04 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82892ef41f1deccf4bc81f46ccc40d2cd5d7f0c8c300cd70d1d5a69e9b1e114`  
		Last Modified: Fri, 05 May 2017 22:35:05 GMT  
		Size: 2.8 MB (2778484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76d8a2be66cb66da1b6fc741b69b9da3c145f3630c49f79959c09fcc8e13169`  
		Last Modified: Fri, 05 May 2017 22:35:05 GMT  
		Size: 57.9 KB (57948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a534951750d104b4054358fbf499cbba3ee6e66501300b0f6d300359be7b31d`  
		Last Modified: Fri, 05 May 2017 22:35:05 GMT  
		Size: 19.7 KB (19662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a0764ed6ff15b6aab47074ee649bf90d31a93931700bfd50807279762adf83`  
		Last Modified: Fri, 05 May 2017 22:35:04 GMT  
		Size: 63.4 KB (63363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2044852f7efa429fbee52d7ce2b2ac1032ed72022b7fc32e1529226882696e7c`  
		Last Modified: Fri, 05 May 2017 22:35:06 GMT  
		Size: 9.0 MB (9006709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b84adab7535b9ffc6f90be55314e0350e0d7e9f7c12341b45b303e47404b36`  
		Last Modified: Fri, 05 May 2017 22:35:04 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d255c29802136e23cce8924bd312aeaec2fe3090c94c41cec2d00dee290f25`  
		Last Modified: Fri, 05 May 2017 22:35:05 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.7.0-apache-php7`

```console
$ docker pull joomla@sha256:3369a9eb487852d64d32644bc029fc0c24315fc64f60e748a9e17b5d552b472f
```

-	Platforms:
	-	linux; amd64

### `joomla:3.7.0-apache-php7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.7 MB (172693420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94341cc76bffadf40218e744bcd63de782ab9eb921d0f768ef8f9309cfc2461f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 02:53:21 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Apr 2017 02:53:59 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 25 Apr 2017 02:54:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Apr 2017 02:54:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 25 Apr 2017 03:02:14 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 03:02:23 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 25 Apr 2017 03:02:24 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 25 Apr 2017 03:02:25 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 25 Apr 2017 03:02:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 25 Apr 2017 03:02:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 25 Apr 2017 03:02:50 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 25 Apr 2017 03:03:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 25 Apr 2017 03:03:09 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 25 Apr 2017 03:03:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:03:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:03:32 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 25 Apr 2017 03:43:09 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 25 Apr 2017 03:43:10 GMT
ENV PHP_VERSION=7.0.18
# Tue, 25 Apr 2017 03:43:11 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.18.tar.xz.asc/from/this/mirror
# Tue, 25 Apr 2017 03:43:11 GMT
ENV PHP_SHA256=679cffcdf2495dee5ab89bda595e678a1096136678b3a1d08f1f57ba347c234d PHP_MD5=a578c55644d233635d2caa96c3a6f9c7
# Tue, 25 Apr 2017 03:43:34 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 25 Apr 2017 03:43:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 25 Apr 2017 03:48:20 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 05 May 2017 20:40:48 GMT
COPY multi:2322553de3ca67507508fc2dce30f88e38a62b59394dc81c4180177a850ae993 in /usr/local/bin/ 
# Fri, 05 May 2017 20:40:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 05 May 2017 20:40:49 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 05 May 2017 20:40:50 GMT
WORKDIR /var/www/html
# Fri, 05 May 2017 20:40:51 GMT
EXPOSE 80/tcp
# Fri, 05 May 2017 20:40:51 GMT
CMD ["apache2-foreground"]
# Fri, 05 May 2017 22:30:30 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 05 May 2017 22:30:32 GMT
RUN a2enmod rewrite
# Fri, 05 May 2017 22:30:56 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 05 May 2017 22:31:05 GMT
RUN docker-php-ext-install mysqli
# Fri, 05 May 2017 22:31:11 GMT
RUN docker-php-ext-install mcrypt
# Fri, 05 May 2017 22:31:29 GMT
RUN docker-php-ext-install zip
# Fri, 05 May 2017 22:31:30 GMT
VOLUME [/var/www/html]
# Fri, 05 May 2017 22:31:31 GMT
ENV JOOMLA_VERSION=3.7.0
# Fri, 05 May 2017 22:31:32 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Fri, 05 May 2017 22:31:39 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 05 May 2017 22:31:40 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 05 May 2017 22:31:41 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 05 May 2017 22:31:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 05 May 2017 22:31:42 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b8a88a0af049efa3c92b1c96a947f501ec7c751a568b0d3881b3c757a184a3`  
		Last Modified: Tue, 25 Apr 2017 04:02:19 GMT  
		Size: 78.8 MB (78849205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78c922dd678a8a2c701087b1ac1381c50cb83d0bf5fc1c55c86f1ce22c7c49f`  
		Last Modified: Tue, 25 Apr 2017 04:01:55 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6680e61553d3560bbea1e9216874edb5343ee5de4ac18c563d6c172b99ad8a29`  
		Last Modified: Tue, 25 Apr 2017 04:06:37 GMT  
		Size: 2.9 MB (2912027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1ddb74fbec50907d2cdf9dc95054800b07cf13b96c21d8179c57c0e9bd1f3c`  
		Last Modified: Tue, 25 Apr 2017 04:06:35 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048af0e095264aca62e46b93162f4b66446bc1757207ab9eef0daf7db10b02bc`  
		Last Modified: Tue, 25 Apr 2017 04:06:37 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11ab675603929db5ec0fc46e5515d12e15fb78cc56c54fe03fe0f54536aafb3`  
		Last Modified: Tue, 25 Apr 2017 04:06:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b684f7dda232126ac8d2bacfb38b9d65cbf2eec0c4f0e832dfe88f1e9f2d38c`  
		Last Modified: Tue, 25 Apr 2017 04:06:32 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437114e6ad078a60192567f76c658612d61c47565b433c0a4b71a75bdbd98e79`  
		Last Modified: Tue, 25 Apr 2017 04:16:14 GMT  
		Size: 12.7 MB (12723585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716c40fa7804eb5cae82b761ac207f1de4d8e26ab6b7826666b32c4502a848db`  
		Last Modified: Tue, 25 Apr 2017 04:16:12 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9830e8e32b8aa4daf76275a0b5c6f4fd9f2ed6b362f3e414de715f7f0dc961af`  
		Last Modified: Tue, 25 Apr 2017 04:16:15 GMT  
		Size: 13.7 MB (13723132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2297c91f5866573e07ce5b4d2e139d0b99a55cbb359a9992430df69e8c2b4a9d`  
		Last Modified: Fri, 05 May 2017 20:58:27 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a936b327b0e2098467baf267c21223887a16ce4dce80fb5f3c3ecc57cef5d10d`  
		Last Modified: Fri, 05 May 2017 20:58:27 GMT  
		Size: 892.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7469774d47afc6bea53621cbc722bbf51129a5c7b957aa2bb4494b1daae70bd`  
		Last Modified: Fri, 05 May 2017 22:37:52 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f8ae12c3d47ea9e8ae1b0c2ce54dfb888ada72c435bd99da37edfa8c23b42b`  
		Last Modified: Fri, 05 May 2017 22:37:52 GMT  
		Size: 2.8 MB (2773232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99b86523d73b98bd811f4b0d8fc3a0536d85a96555092a539a85172f4afbc36`  
		Last Modified: Fri, 05 May 2017 22:37:52 GMT  
		Size: 56.3 KB (56268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0fb4e53afc17e6b1e181b1fea242476fda8c4c23efe043d59bb1e4ddaab5d80`  
		Last Modified: Fri, 05 May 2017 22:37:52 GMT  
		Size: 18.2 KB (18248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5418d1a29a033fbc4a715ffc6837520fc098e066ad50404c06969fa5a2c944d`  
		Last Modified: Fri, 05 May 2017 22:37:51 GMT  
		Size: 72.7 KB (72715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e28c4ddbac28b7ba82a4f6e2da873a3835cad679fd1227d05716d3c64db2ed6`  
		Last Modified: Fri, 05 May 2017 22:37:53 GMT  
		Size: 9.0 MB (9006702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c7a730a18bfd73d9b3f03588545ca0c59c769f92f1aee47a5f39eeda6537a05`  
		Last Modified: Fri, 05 May 2017 22:37:51 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84759aac5cdff09f0d2811a6c78c768cc48d7a6202a04ba8daa197bdd16865e4`  
		Last Modified: Fri, 05 May 2017 22:37:51 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.7-apache-php7`

```console
$ docker pull joomla@sha256:3369a9eb487852d64d32644bc029fc0c24315fc64f60e748a9e17b5d552b472f
```

-	Platforms:
	-	linux; amd64

### `joomla:3.7-apache-php7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.7 MB (172693420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94341cc76bffadf40218e744bcd63de782ab9eb921d0f768ef8f9309cfc2461f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 02:53:21 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Apr 2017 02:53:59 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 25 Apr 2017 02:54:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Apr 2017 02:54:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 25 Apr 2017 03:02:14 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 03:02:23 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 25 Apr 2017 03:02:24 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 25 Apr 2017 03:02:25 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 25 Apr 2017 03:02:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 25 Apr 2017 03:02:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 25 Apr 2017 03:02:50 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 25 Apr 2017 03:03:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 25 Apr 2017 03:03:09 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 25 Apr 2017 03:03:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:03:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:03:32 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 25 Apr 2017 03:43:09 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 25 Apr 2017 03:43:10 GMT
ENV PHP_VERSION=7.0.18
# Tue, 25 Apr 2017 03:43:11 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.18.tar.xz.asc/from/this/mirror
# Tue, 25 Apr 2017 03:43:11 GMT
ENV PHP_SHA256=679cffcdf2495dee5ab89bda595e678a1096136678b3a1d08f1f57ba347c234d PHP_MD5=a578c55644d233635d2caa96c3a6f9c7
# Tue, 25 Apr 2017 03:43:34 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 25 Apr 2017 03:43:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 25 Apr 2017 03:48:20 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 05 May 2017 20:40:48 GMT
COPY multi:2322553de3ca67507508fc2dce30f88e38a62b59394dc81c4180177a850ae993 in /usr/local/bin/ 
# Fri, 05 May 2017 20:40:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 05 May 2017 20:40:49 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 05 May 2017 20:40:50 GMT
WORKDIR /var/www/html
# Fri, 05 May 2017 20:40:51 GMT
EXPOSE 80/tcp
# Fri, 05 May 2017 20:40:51 GMT
CMD ["apache2-foreground"]
# Fri, 05 May 2017 22:30:30 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 05 May 2017 22:30:32 GMT
RUN a2enmod rewrite
# Fri, 05 May 2017 22:30:56 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 05 May 2017 22:31:05 GMT
RUN docker-php-ext-install mysqli
# Fri, 05 May 2017 22:31:11 GMT
RUN docker-php-ext-install mcrypt
# Fri, 05 May 2017 22:31:29 GMT
RUN docker-php-ext-install zip
# Fri, 05 May 2017 22:31:30 GMT
VOLUME [/var/www/html]
# Fri, 05 May 2017 22:31:31 GMT
ENV JOOMLA_VERSION=3.7.0
# Fri, 05 May 2017 22:31:32 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Fri, 05 May 2017 22:31:39 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 05 May 2017 22:31:40 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 05 May 2017 22:31:41 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 05 May 2017 22:31:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 05 May 2017 22:31:42 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b8a88a0af049efa3c92b1c96a947f501ec7c751a568b0d3881b3c757a184a3`  
		Last Modified: Tue, 25 Apr 2017 04:02:19 GMT  
		Size: 78.8 MB (78849205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78c922dd678a8a2c701087b1ac1381c50cb83d0bf5fc1c55c86f1ce22c7c49f`  
		Last Modified: Tue, 25 Apr 2017 04:01:55 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6680e61553d3560bbea1e9216874edb5343ee5de4ac18c563d6c172b99ad8a29`  
		Last Modified: Tue, 25 Apr 2017 04:06:37 GMT  
		Size: 2.9 MB (2912027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1ddb74fbec50907d2cdf9dc95054800b07cf13b96c21d8179c57c0e9bd1f3c`  
		Last Modified: Tue, 25 Apr 2017 04:06:35 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048af0e095264aca62e46b93162f4b66446bc1757207ab9eef0daf7db10b02bc`  
		Last Modified: Tue, 25 Apr 2017 04:06:37 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11ab675603929db5ec0fc46e5515d12e15fb78cc56c54fe03fe0f54536aafb3`  
		Last Modified: Tue, 25 Apr 2017 04:06:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b684f7dda232126ac8d2bacfb38b9d65cbf2eec0c4f0e832dfe88f1e9f2d38c`  
		Last Modified: Tue, 25 Apr 2017 04:06:32 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437114e6ad078a60192567f76c658612d61c47565b433c0a4b71a75bdbd98e79`  
		Last Modified: Tue, 25 Apr 2017 04:16:14 GMT  
		Size: 12.7 MB (12723585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716c40fa7804eb5cae82b761ac207f1de4d8e26ab6b7826666b32c4502a848db`  
		Last Modified: Tue, 25 Apr 2017 04:16:12 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9830e8e32b8aa4daf76275a0b5c6f4fd9f2ed6b362f3e414de715f7f0dc961af`  
		Last Modified: Tue, 25 Apr 2017 04:16:15 GMT  
		Size: 13.7 MB (13723132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2297c91f5866573e07ce5b4d2e139d0b99a55cbb359a9992430df69e8c2b4a9d`  
		Last Modified: Fri, 05 May 2017 20:58:27 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a936b327b0e2098467baf267c21223887a16ce4dce80fb5f3c3ecc57cef5d10d`  
		Last Modified: Fri, 05 May 2017 20:58:27 GMT  
		Size: 892.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7469774d47afc6bea53621cbc722bbf51129a5c7b957aa2bb4494b1daae70bd`  
		Last Modified: Fri, 05 May 2017 22:37:52 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f8ae12c3d47ea9e8ae1b0c2ce54dfb888ada72c435bd99da37edfa8c23b42b`  
		Last Modified: Fri, 05 May 2017 22:37:52 GMT  
		Size: 2.8 MB (2773232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99b86523d73b98bd811f4b0d8fc3a0536d85a96555092a539a85172f4afbc36`  
		Last Modified: Fri, 05 May 2017 22:37:52 GMT  
		Size: 56.3 KB (56268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0fb4e53afc17e6b1e181b1fea242476fda8c4c23efe043d59bb1e4ddaab5d80`  
		Last Modified: Fri, 05 May 2017 22:37:52 GMT  
		Size: 18.2 KB (18248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5418d1a29a033fbc4a715ffc6837520fc098e066ad50404c06969fa5a2c944d`  
		Last Modified: Fri, 05 May 2017 22:37:51 GMT  
		Size: 72.7 KB (72715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e28c4ddbac28b7ba82a4f6e2da873a3835cad679fd1227d05716d3c64db2ed6`  
		Last Modified: Fri, 05 May 2017 22:37:53 GMT  
		Size: 9.0 MB (9006702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c7a730a18bfd73d9b3f03588545ca0c59c769f92f1aee47a5f39eeda6537a05`  
		Last Modified: Fri, 05 May 2017 22:37:51 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84759aac5cdff09f0d2811a6c78c768cc48d7a6202a04ba8daa197bdd16865e4`  
		Last Modified: Fri, 05 May 2017 22:37:51 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-apache-php7`

```console
$ docker pull joomla@sha256:3369a9eb487852d64d32644bc029fc0c24315fc64f60e748a9e17b5d552b472f
```

-	Platforms:
	-	linux; amd64

### `joomla:3-apache-php7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.7 MB (172693420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94341cc76bffadf40218e744bcd63de782ab9eb921d0f768ef8f9309cfc2461f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 02:53:21 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Apr 2017 02:53:59 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 25 Apr 2017 02:54:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Apr 2017 02:54:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 25 Apr 2017 03:02:14 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 03:02:23 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 25 Apr 2017 03:02:24 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 25 Apr 2017 03:02:25 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 25 Apr 2017 03:02:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 25 Apr 2017 03:02:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 25 Apr 2017 03:02:50 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 25 Apr 2017 03:03:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 25 Apr 2017 03:03:09 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 25 Apr 2017 03:03:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:03:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:03:32 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 25 Apr 2017 03:43:09 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 25 Apr 2017 03:43:10 GMT
ENV PHP_VERSION=7.0.18
# Tue, 25 Apr 2017 03:43:11 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.18.tar.xz.asc/from/this/mirror
# Tue, 25 Apr 2017 03:43:11 GMT
ENV PHP_SHA256=679cffcdf2495dee5ab89bda595e678a1096136678b3a1d08f1f57ba347c234d PHP_MD5=a578c55644d233635d2caa96c3a6f9c7
# Tue, 25 Apr 2017 03:43:34 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 25 Apr 2017 03:43:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 25 Apr 2017 03:48:20 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 05 May 2017 20:40:48 GMT
COPY multi:2322553de3ca67507508fc2dce30f88e38a62b59394dc81c4180177a850ae993 in /usr/local/bin/ 
# Fri, 05 May 2017 20:40:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 05 May 2017 20:40:49 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 05 May 2017 20:40:50 GMT
WORKDIR /var/www/html
# Fri, 05 May 2017 20:40:51 GMT
EXPOSE 80/tcp
# Fri, 05 May 2017 20:40:51 GMT
CMD ["apache2-foreground"]
# Fri, 05 May 2017 22:30:30 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 05 May 2017 22:30:32 GMT
RUN a2enmod rewrite
# Fri, 05 May 2017 22:30:56 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 05 May 2017 22:31:05 GMT
RUN docker-php-ext-install mysqli
# Fri, 05 May 2017 22:31:11 GMT
RUN docker-php-ext-install mcrypt
# Fri, 05 May 2017 22:31:29 GMT
RUN docker-php-ext-install zip
# Fri, 05 May 2017 22:31:30 GMT
VOLUME [/var/www/html]
# Fri, 05 May 2017 22:31:31 GMT
ENV JOOMLA_VERSION=3.7.0
# Fri, 05 May 2017 22:31:32 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Fri, 05 May 2017 22:31:39 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 05 May 2017 22:31:40 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 05 May 2017 22:31:41 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 05 May 2017 22:31:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 05 May 2017 22:31:42 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b8a88a0af049efa3c92b1c96a947f501ec7c751a568b0d3881b3c757a184a3`  
		Last Modified: Tue, 25 Apr 2017 04:02:19 GMT  
		Size: 78.8 MB (78849205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78c922dd678a8a2c701087b1ac1381c50cb83d0bf5fc1c55c86f1ce22c7c49f`  
		Last Modified: Tue, 25 Apr 2017 04:01:55 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6680e61553d3560bbea1e9216874edb5343ee5de4ac18c563d6c172b99ad8a29`  
		Last Modified: Tue, 25 Apr 2017 04:06:37 GMT  
		Size: 2.9 MB (2912027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1ddb74fbec50907d2cdf9dc95054800b07cf13b96c21d8179c57c0e9bd1f3c`  
		Last Modified: Tue, 25 Apr 2017 04:06:35 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048af0e095264aca62e46b93162f4b66446bc1757207ab9eef0daf7db10b02bc`  
		Last Modified: Tue, 25 Apr 2017 04:06:37 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11ab675603929db5ec0fc46e5515d12e15fb78cc56c54fe03fe0f54536aafb3`  
		Last Modified: Tue, 25 Apr 2017 04:06:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b684f7dda232126ac8d2bacfb38b9d65cbf2eec0c4f0e832dfe88f1e9f2d38c`  
		Last Modified: Tue, 25 Apr 2017 04:06:32 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437114e6ad078a60192567f76c658612d61c47565b433c0a4b71a75bdbd98e79`  
		Last Modified: Tue, 25 Apr 2017 04:16:14 GMT  
		Size: 12.7 MB (12723585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716c40fa7804eb5cae82b761ac207f1de4d8e26ab6b7826666b32c4502a848db`  
		Last Modified: Tue, 25 Apr 2017 04:16:12 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9830e8e32b8aa4daf76275a0b5c6f4fd9f2ed6b362f3e414de715f7f0dc961af`  
		Last Modified: Tue, 25 Apr 2017 04:16:15 GMT  
		Size: 13.7 MB (13723132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2297c91f5866573e07ce5b4d2e139d0b99a55cbb359a9992430df69e8c2b4a9d`  
		Last Modified: Fri, 05 May 2017 20:58:27 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a936b327b0e2098467baf267c21223887a16ce4dce80fb5f3c3ecc57cef5d10d`  
		Last Modified: Fri, 05 May 2017 20:58:27 GMT  
		Size: 892.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7469774d47afc6bea53621cbc722bbf51129a5c7b957aa2bb4494b1daae70bd`  
		Last Modified: Fri, 05 May 2017 22:37:52 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f8ae12c3d47ea9e8ae1b0c2ce54dfb888ada72c435bd99da37edfa8c23b42b`  
		Last Modified: Fri, 05 May 2017 22:37:52 GMT  
		Size: 2.8 MB (2773232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99b86523d73b98bd811f4b0d8fc3a0536d85a96555092a539a85172f4afbc36`  
		Last Modified: Fri, 05 May 2017 22:37:52 GMT  
		Size: 56.3 KB (56268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0fb4e53afc17e6b1e181b1fea242476fda8c4c23efe043d59bb1e4ddaab5d80`  
		Last Modified: Fri, 05 May 2017 22:37:52 GMT  
		Size: 18.2 KB (18248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5418d1a29a033fbc4a715ffc6837520fc098e066ad50404c06969fa5a2c944d`  
		Last Modified: Fri, 05 May 2017 22:37:51 GMT  
		Size: 72.7 KB (72715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e28c4ddbac28b7ba82a4f6e2da873a3835cad679fd1227d05716d3c64db2ed6`  
		Last Modified: Fri, 05 May 2017 22:37:53 GMT  
		Size: 9.0 MB (9006702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c7a730a18bfd73d9b3f03588545ca0c59c769f92f1aee47a5f39eeda6537a05`  
		Last Modified: Fri, 05 May 2017 22:37:51 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84759aac5cdff09f0d2811a6c78c768cc48d7a6202a04ba8daa197bdd16865e4`  
		Last Modified: Fri, 05 May 2017 22:37:51 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:apache-php7`

```console
$ docker pull joomla@sha256:3369a9eb487852d64d32644bc029fc0c24315fc64f60e748a9e17b5d552b472f
```

-	Platforms:
	-	linux; amd64

### `joomla:apache-php7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.7 MB (172693420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94341cc76bffadf40218e744bcd63de782ab9eb921d0f768ef8f9309cfc2461f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 02:53:21 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Apr 2017 02:53:59 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 25 Apr 2017 02:54:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Apr 2017 02:54:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 25 Apr 2017 03:02:14 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 03:02:23 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 25 Apr 2017 03:02:24 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 25 Apr 2017 03:02:25 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 25 Apr 2017 03:02:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 25 Apr 2017 03:02:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 25 Apr 2017 03:02:50 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 25 Apr 2017 03:03:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 25 Apr 2017 03:03:09 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 25 Apr 2017 03:03:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:03:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:03:32 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 25 Apr 2017 03:43:09 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 25 Apr 2017 03:43:10 GMT
ENV PHP_VERSION=7.0.18
# Tue, 25 Apr 2017 03:43:11 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.18.tar.xz.asc/from/this/mirror
# Tue, 25 Apr 2017 03:43:11 GMT
ENV PHP_SHA256=679cffcdf2495dee5ab89bda595e678a1096136678b3a1d08f1f57ba347c234d PHP_MD5=a578c55644d233635d2caa96c3a6f9c7
# Tue, 25 Apr 2017 03:43:34 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 25 Apr 2017 03:43:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 25 Apr 2017 03:48:20 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 05 May 2017 20:40:48 GMT
COPY multi:2322553de3ca67507508fc2dce30f88e38a62b59394dc81c4180177a850ae993 in /usr/local/bin/ 
# Fri, 05 May 2017 20:40:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 05 May 2017 20:40:49 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 05 May 2017 20:40:50 GMT
WORKDIR /var/www/html
# Fri, 05 May 2017 20:40:51 GMT
EXPOSE 80/tcp
# Fri, 05 May 2017 20:40:51 GMT
CMD ["apache2-foreground"]
# Fri, 05 May 2017 22:30:30 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 05 May 2017 22:30:32 GMT
RUN a2enmod rewrite
# Fri, 05 May 2017 22:30:56 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 05 May 2017 22:31:05 GMT
RUN docker-php-ext-install mysqli
# Fri, 05 May 2017 22:31:11 GMT
RUN docker-php-ext-install mcrypt
# Fri, 05 May 2017 22:31:29 GMT
RUN docker-php-ext-install zip
# Fri, 05 May 2017 22:31:30 GMT
VOLUME [/var/www/html]
# Fri, 05 May 2017 22:31:31 GMT
ENV JOOMLA_VERSION=3.7.0
# Fri, 05 May 2017 22:31:32 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Fri, 05 May 2017 22:31:39 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 05 May 2017 22:31:40 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 05 May 2017 22:31:41 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 05 May 2017 22:31:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 05 May 2017 22:31:42 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b8a88a0af049efa3c92b1c96a947f501ec7c751a568b0d3881b3c757a184a3`  
		Last Modified: Tue, 25 Apr 2017 04:02:19 GMT  
		Size: 78.8 MB (78849205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78c922dd678a8a2c701087b1ac1381c50cb83d0bf5fc1c55c86f1ce22c7c49f`  
		Last Modified: Tue, 25 Apr 2017 04:01:55 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6680e61553d3560bbea1e9216874edb5343ee5de4ac18c563d6c172b99ad8a29`  
		Last Modified: Tue, 25 Apr 2017 04:06:37 GMT  
		Size: 2.9 MB (2912027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1ddb74fbec50907d2cdf9dc95054800b07cf13b96c21d8179c57c0e9bd1f3c`  
		Last Modified: Tue, 25 Apr 2017 04:06:35 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048af0e095264aca62e46b93162f4b66446bc1757207ab9eef0daf7db10b02bc`  
		Last Modified: Tue, 25 Apr 2017 04:06:37 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11ab675603929db5ec0fc46e5515d12e15fb78cc56c54fe03fe0f54536aafb3`  
		Last Modified: Tue, 25 Apr 2017 04:06:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b684f7dda232126ac8d2bacfb38b9d65cbf2eec0c4f0e832dfe88f1e9f2d38c`  
		Last Modified: Tue, 25 Apr 2017 04:06:32 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437114e6ad078a60192567f76c658612d61c47565b433c0a4b71a75bdbd98e79`  
		Last Modified: Tue, 25 Apr 2017 04:16:14 GMT  
		Size: 12.7 MB (12723585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716c40fa7804eb5cae82b761ac207f1de4d8e26ab6b7826666b32c4502a848db`  
		Last Modified: Tue, 25 Apr 2017 04:16:12 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9830e8e32b8aa4daf76275a0b5c6f4fd9f2ed6b362f3e414de715f7f0dc961af`  
		Last Modified: Tue, 25 Apr 2017 04:16:15 GMT  
		Size: 13.7 MB (13723132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2297c91f5866573e07ce5b4d2e139d0b99a55cbb359a9992430df69e8c2b4a9d`  
		Last Modified: Fri, 05 May 2017 20:58:27 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a936b327b0e2098467baf267c21223887a16ce4dce80fb5f3c3ecc57cef5d10d`  
		Last Modified: Fri, 05 May 2017 20:58:27 GMT  
		Size: 892.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7469774d47afc6bea53621cbc722bbf51129a5c7b957aa2bb4494b1daae70bd`  
		Last Modified: Fri, 05 May 2017 22:37:52 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f8ae12c3d47ea9e8ae1b0c2ce54dfb888ada72c435bd99da37edfa8c23b42b`  
		Last Modified: Fri, 05 May 2017 22:37:52 GMT  
		Size: 2.8 MB (2773232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99b86523d73b98bd811f4b0d8fc3a0536d85a96555092a539a85172f4afbc36`  
		Last Modified: Fri, 05 May 2017 22:37:52 GMT  
		Size: 56.3 KB (56268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0fb4e53afc17e6b1e181b1fea242476fda8c4c23efe043d59bb1e4ddaab5d80`  
		Last Modified: Fri, 05 May 2017 22:37:52 GMT  
		Size: 18.2 KB (18248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5418d1a29a033fbc4a715ffc6837520fc098e066ad50404c06969fa5a2c944d`  
		Last Modified: Fri, 05 May 2017 22:37:51 GMT  
		Size: 72.7 KB (72715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e28c4ddbac28b7ba82a4f6e2da873a3835cad679fd1227d05716d3c64db2ed6`  
		Last Modified: Fri, 05 May 2017 22:37:53 GMT  
		Size: 9.0 MB (9006702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c7a730a18bfd73d9b3f03588545ca0c59c769f92f1aee47a5f39eeda6537a05`  
		Last Modified: Fri, 05 May 2017 22:37:51 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84759aac5cdff09f0d2811a6c78c768cc48d7a6202a04ba8daa197bdd16865e4`  
		Last Modified: Fri, 05 May 2017 22:37:51 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.7.0-fpm`

```console
$ docker pull joomla@sha256:3d6a17cd6bec4d6df6e1ae3881c010dd94d3412bd9e3dbc1ed26d335458a11aa
```

-	Platforms:
	-	linux; amd64

### `joomla:3.7.0-fpm` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.9 MB (164857271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c0a72e65cd87e6a71ac4eb6208e348bc127d39d186fec42f791fef530769358`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 02:53:21 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Apr 2017 02:53:59 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 25 Apr 2017 02:54:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Apr 2017 02:54:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 25 Apr 2017 03:07:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 25 Apr 2017 03:07:47 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:07:48 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:07:48 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 25 Apr 2017 03:07:49 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 25 Apr 2017 03:08:05 GMT
ENV PHP_VERSION=5.6.30
# Tue, 25 Apr 2017 03:08:06 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 25 Apr 2017 03:08:06 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 25 Apr 2017 03:08:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 25 Apr 2017 03:08:27 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 25 Apr 2017 03:12:11 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 05 May 2017 20:43:51 GMT
COPY multi:6f0472135e558ecb6e8d4994f3ad7153def074d5ddc522114a95b3132d9e14ae in /usr/local/bin/ 
# Fri, 05 May 2017 20:43:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 05 May 2017 20:43:53 GMT
WORKDIR /var/www/html
# Fri, 05 May 2017 20:43:55 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 05 May 2017 20:43:55 GMT
EXPOSE 9000/tcp
# Fri, 05 May 2017 20:43:56 GMT
CMD ["php-fpm"]
# Fri, 05 May 2017 22:32:01 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 05 May 2017 22:32:25 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 05 May 2017 22:32:33 GMT
RUN docker-php-ext-install mysqli
# Fri, 05 May 2017 22:32:39 GMT
RUN docker-php-ext-install mcrypt
# Fri, 05 May 2017 22:32:59 GMT
RUN docker-php-ext-install zip
# Fri, 05 May 2017 22:33:00 GMT
VOLUME [/var/www/html]
# Fri, 05 May 2017 22:33:01 GMT
ENV JOOMLA_VERSION=3.7.0
# Fri, 05 May 2017 22:33:01 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Fri, 05 May 2017 22:33:09 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 05 May 2017 22:33:10 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 05 May 2017 22:33:11 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 05 May 2017 22:33:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 05 May 2017 22:33:12 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b8a88a0af049efa3c92b1c96a947f501ec7c751a568b0d3881b3c757a184a3`  
		Last Modified: Tue, 25 Apr 2017 04:02:19 GMT  
		Size: 78.8 MB (78849205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78c922dd678a8a2c701087b1ac1381c50cb83d0bf5fc1c55c86f1ce22c7c49f`  
		Last Modified: Tue, 25 Apr 2017 04:01:55 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed16e0ed90d8267aed19ba8457fde5e72854455d8b71513d350b1a508dca071b`  
		Last Modified: Tue, 25 Apr 2017 04:25:05 GMT  
		Size: 12.6 MB (12560706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2895c191af4d8fcee844c1e1db66ada4334b72de73e2fa1a9aa3731b7dd17f`  
		Last Modified: Tue, 25 Apr 2017 04:25:00 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d575de0a5becca6127fceee010c8d5b69a51c5bf46c61019b219a3dfa0a5868d`  
		Last Modified: Tue, 25 Apr 2017 04:25:06 GMT  
		Size: 9.0 MB (8981308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e362a296cb97dd04c71acddc66f7391348a14f16113fb9e33f8a7cc2fbd5f03`  
		Last Modified: Fri, 05 May 2017 21:06:20 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd6660565321fb558d79e00720004fed215ddd6289bb18dba3efa98413e7a21`  
		Last Modified: Fri, 05 May 2017 21:06:20 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d600199256b5f182c7e253e6e1bb9def2a37500e00956df6c109017dfa055d39`  
		Last Modified: Fri, 05 May 2017 21:06:20 GMT  
		Size: 7.6 KB (7607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6fece064243567c9a87ff255d6fad8ccc726e406e9f70f2b2b22e45e5bde51`  
		Last Modified: Fri, 05 May 2017 22:39:19 GMT  
		Size: 2.8 MB (2755878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37932785c8b0f11cb9f46c5920fc43614bd90c4a9f1624c6bce3085ad613f75f`  
		Last Modified: Fri, 05 May 2017 22:39:18 GMT  
		Size: 57.9 KB (57947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca5f1191c3d3eb0079af8edbb6e1be0f92d90edff52cf46a54b9b8d88a336f4`  
		Last Modified: Fri, 05 May 2017 22:39:19 GMT  
		Size: 19.7 KB (19660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86fd69015b9d97fc828475adbf1b3de0d25218f26fc4412192dbd4565566aa85`  
		Last Modified: Fri, 05 May 2017 22:39:19 GMT  
		Size: 63.4 KB (63364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0122275ae6e331b73e0dc6e66d37ce03b85c60089ad6958ce97fe1a20a5f58e0`  
		Last Modified: Fri, 05 May 2017 22:39:21 GMT  
		Size: 9.0 MB (9006713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751a9943313624984d6d76217f4b409661ffc5804d32e6735530fcb33be1d184`  
		Last Modified: Fri, 05 May 2017 22:39:18 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c4a8d24a2d100d5d1eb7c51de94e0e78c5f8262200855b0bc1e6c82057eedfe`  
		Last Modified: Fri, 05 May 2017 22:39:19 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.7-fpm`

```console
$ docker pull joomla@sha256:3d6a17cd6bec4d6df6e1ae3881c010dd94d3412bd9e3dbc1ed26d335458a11aa
```

-	Platforms:
	-	linux; amd64

### `joomla:3.7-fpm` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.9 MB (164857271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c0a72e65cd87e6a71ac4eb6208e348bc127d39d186fec42f791fef530769358`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 02:53:21 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Apr 2017 02:53:59 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 25 Apr 2017 02:54:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Apr 2017 02:54:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 25 Apr 2017 03:07:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 25 Apr 2017 03:07:47 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:07:48 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:07:48 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 25 Apr 2017 03:07:49 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 25 Apr 2017 03:08:05 GMT
ENV PHP_VERSION=5.6.30
# Tue, 25 Apr 2017 03:08:06 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 25 Apr 2017 03:08:06 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 25 Apr 2017 03:08:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 25 Apr 2017 03:08:27 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 25 Apr 2017 03:12:11 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 05 May 2017 20:43:51 GMT
COPY multi:6f0472135e558ecb6e8d4994f3ad7153def074d5ddc522114a95b3132d9e14ae in /usr/local/bin/ 
# Fri, 05 May 2017 20:43:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 05 May 2017 20:43:53 GMT
WORKDIR /var/www/html
# Fri, 05 May 2017 20:43:55 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 05 May 2017 20:43:55 GMT
EXPOSE 9000/tcp
# Fri, 05 May 2017 20:43:56 GMT
CMD ["php-fpm"]
# Fri, 05 May 2017 22:32:01 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 05 May 2017 22:32:25 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 05 May 2017 22:32:33 GMT
RUN docker-php-ext-install mysqli
# Fri, 05 May 2017 22:32:39 GMT
RUN docker-php-ext-install mcrypt
# Fri, 05 May 2017 22:32:59 GMT
RUN docker-php-ext-install zip
# Fri, 05 May 2017 22:33:00 GMT
VOLUME [/var/www/html]
# Fri, 05 May 2017 22:33:01 GMT
ENV JOOMLA_VERSION=3.7.0
# Fri, 05 May 2017 22:33:01 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Fri, 05 May 2017 22:33:09 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 05 May 2017 22:33:10 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 05 May 2017 22:33:11 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 05 May 2017 22:33:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 05 May 2017 22:33:12 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b8a88a0af049efa3c92b1c96a947f501ec7c751a568b0d3881b3c757a184a3`  
		Last Modified: Tue, 25 Apr 2017 04:02:19 GMT  
		Size: 78.8 MB (78849205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78c922dd678a8a2c701087b1ac1381c50cb83d0bf5fc1c55c86f1ce22c7c49f`  
		Last Modified: Tue, 25 Apr 2017 04:01:55 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed16e0ed90d8267aed19ba8457fde5e72854455d8b71513d350b1a508dca071b`  
		Last Modified: Tue, 25 Apr 2017 04:25:05 GMT  
		Size: 12.6 MB (12560706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2895c191af4d8fcee844c1e1db66ada4334b72de73e2fa1a9aa3731b7dd17f`  
		Last Modified: Tue, 25 Apr 2017 04:25:00 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d575de0a5becca6127fceee010c8d5b69a51c5bf46c61019b219a3dfa0a5868d`  
		Last Modified: Tue, 25 Apr 2017 04:25:06 GMT  
		Size: 9.0 MB (8981308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e362a296cb97dd04c71acddc66f7391348a14f16113fb9e33f8a7cc2fbd5f03`  
		Last Modified: Fri, 05 May 2017 21:06:20 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd6660565321fb558d79e00720004fed215ddd6289bb18dba3efa98413e7a21`  
		Last Modified: Fri, 05 May 2017 21:06:20 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d600199256b5f182c7e253e6e1bb9def2a37500e00956df6c109017dfa055d39`  
		Last Modified: Fri, 05 May 2017 21:06:20 GMT  
		Size: 7.6 KB (7607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6fece064243567c9a87ff255d6fad8ccc726e406e9f70f2b2b22e45e5bde51`  
		Last Modified: Fri, 05 May 2017 22:39:19 GMT  
		Size: 2.8 MB (2755878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37932785c8b0f11cb9f46c5920fc43614bd90c4a9f1624c6bce3085ad613f75f`  
		Last Modified: Fri, 05 May 2017 22:39:18 GMT  
		Size: 57.9 KB (57947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca5f1191c3d3eb0079af8edbb6e1be0f92d90edff52cf46a54b9b8d88a336f4`  
		Last Modified: Fri, 05 May 2017 22:39:19 GMT  
		Size: 19.7 KB (19660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86fd69015b9d97fc828475adbf1b3de0d25218f26fc4412192dbd4565566aa85`  
		Last Modified: Fri, 05 May 2017 22:39:19 GMT  
		Size: 63.4 KB (63364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0122275ae6e331b73e0dc6e66d37ce03b85c60089ad6958ce97fe1a20a5f58e0`  
		Last Modified: Fri, 05 May 2017 22:39:21 GMT  
		Size: 9.0 MB (9006713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751a9943313624984d6d76217f4b409661ffc5804d32e6735530fcb33be1d184`  
		Last Modified: Fri, 05 May 2017 22:39:18 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c4a8d24a2d100d5d1eb7c51de94e0e78c5f8262200855b0bc1e6c82057eedfe`  
		Last Modified: Fri, 05 May 2017 22:39:19 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-fpm`

```console
$ docker pull joomla@sha256:3d6a17cd6bec4d6df6e1ae3881c010dd94d3412bd9e3dbc1ed26d335458a11aa
```

-	Platforms:
	-	linux; amd64

### `joomla:3-fpm` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.9 MB (164857271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c0a72e65cd87e6a71ac4eb6208e348bc127d39d186fec42f791fef530769358`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 02:53:21 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Apr 2017 02:53:59 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 25 Apr 2017 02:54:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Apr 2017 02:54:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 25 Apr 2017 03:07:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 25 Apr 2017 03:07:47 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:07:48 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:07:48 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 25 Apr 2017 03:07:49 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 25 Apr 2017 03:08:05 GMT
ENV PHP_VERSION=5.6.30
# Tue, 25 Apr 2017 03:08:06 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 25 Apr 2017 03:08:06 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 25 Apr 2017 03:08:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 25 Apr 2017 03:08:27 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 25 Apr 2017 03:12:11 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 05 May 2017 20:43:51 GMT
COPY multi:6f0472135e558ecb6e8d4994f3ad7153def074d5ddc522114a95b3132d9e14ae in /usr/local/bin/ 
# Fri, 05 May 2017 20:43:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 05 May 2017 20:43:53 GMT
WORKDIR /var/www/html
# Fri, 05 May 2017 20:43:55 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 05 May 2017 20:43:55 GMT
EXPOSE 9000/tcp
# Fri, 05 May 2017 20:43:56 GMT
CMD ["php-fpm"]
# Fri, 05 May 2017 22:32:01 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 05 May 2017 22:32:25 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 05 May 2017 22:32:33 GMT
RUN docker-php-ext-install mysqli
# Fri, 05 May 2017 22:32:39 GMT
RUN docker-php-ext-install mcrypt
# Fri, 05 May 2017 22:32:59 GMT
RUN docker-php-ext-install zip
# Fri, 05 May 2017 22:33:00 GMT
VOLUME [/var/www/html]
# Fri, 05 May 2017 22:33:01 GMT
ENV JOOMLA_VERSION=3.7.0
# Fri, 05 May 2017 22:33:01 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Fri, 05 May 2017 22:33:09 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 05 May 2017 22:33:10 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 05 May 2017 22:33:11 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 05 May 2017 22:33:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 05 May 2017 22:33:12 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b8a88a0af049efa3c92b1c96a947f501ec7c751a568b0d3881b3c757a184a3`  
		Last Modified: Tue, 25 Apr 2017 04:02:19 GMT  
		Size: 78.8 MB (78849205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78c922dd678a8a2c701087b1ac1381c50cb83d0bf5fc1c55c86f1ce22c7c49f`  
		Last Modified: Tue, 25 Apr 2017 04:01:55 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed16e0ed90d8267aed19ba8457fde5e72854455d8b71513d350b1a508dca071b`  
		Last Modified: Tue, 25 Apr 2017 04:25:05 GMT  
		Size: 12.6 MB (12560706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2895c191af4d8fcee844c1e1db66ada4334b72de73e2fa1a9aa3731b7dd17f`  
		Last Modified: Tue, 25 Apr 2017 04:25:00 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d575de0a5becca6127fceee010c8d5b69a51c5bf46c61019b219a3dfa0a5868d`  
		Last Modified: Tue, 25 Apr 2017 04:25:06 GMT  
		Size: 9.0 MB (8981308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e362a296cb97dd04c71acddc66f7391348a14f16113fb9e33f8a7cc2fbd5f03`  
		Last Modified: Fri, 05 May 2017 21:06:20 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd6660565321fb558d79e00720004fed215ddd6289bb18dba3efa98413e7a21`  
		Last Modified: Fri, 05 May 2017 21:06:20 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d600199256b5f182c7e253e6e1bb9def2a37500e00956df6c109017dfa055d39`  
		Last Modified: Fri, 05 May 2017 21:06:20 GMT  
		Size: 7.6 KB (7607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6fece064243567c9a87ff255d6fad8ccc726e406e9f70f2b2b22e45e5bde51`  
		Last Modified: Fri, 05 May 2017 22:39:19 GMT  
		Size: 2.8 MB (2755878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37932785c8b0f11cb9f46c5920fc43614bd90c4a9f1624c6bce3085ad613f75f`  
		Last Modified: Fri, 05 May 2017 22:39:18 GMT  
		Size: 57.9 KB (57947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca5f1191c3d3eb0079af8edbb6e1be0f92d90edff52cf46a54b9b8d88a336f4`  
		Last Modified: Fri, 05 May 2017 22:39:19 GMT  
		Size: 19.7 KB (19660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86fd69015b9d97fc828475adbf1b3de0d25218f26fc4412192dbd4565566aa85`  
		Last Modified: Fri, 05 May 2017 22:39:19 GMT  
		Size: 63.4 KB (63364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0122275ae6e331b73e0dc6e66d37ce03b85c60089ad6958ce97fe1a20a5f58e0`  
		Last Modified: Fri, 05 May 2017 22:39:21 GMT  
		Size: 9.0 MB (9006713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751a9943313624984d6d76217f4b409661ffc5804d32e6735530fcb33be1d184`  
		Last Modified: Fri, 05 May 2017 22:39:18 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c4a8d24a2d100d5d1eb7c51de94e0e78c5f8262200855b0bc1e6c82057eedfe`  
		Last Modified: Fri, 05 May 2017 22:39:19 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:fpm`

```console
$ docker pull joomla@sha256:3d6a17cd6bec4d6df6e1ae3881c010dd94d3412bd9e3dbc1ed26d335458a11aa
```

-	Platforms:
	-	linux; amd64

### `joomla:fpm` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.9 MB (164857271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c0a72e65cd87e6a71ac4eb6208e348bc127d39d186fec42f791fef530769358`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 02:53:21 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Apr 2017 02:53:59 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 25 Apr 2017 02:54:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Apr 2017 02:54:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 25 Apr 2017 03:07:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 25 Apr 2017 03:07:47 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:07:48 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:07:48 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 25 Apr 2017 03:07:49 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 25 Apr 2017 03:08:05 GMT
ENV PHP_VERSION=5.6.30
# Tue, 25 Apr 2017 03:08:06 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 25 Apr 2017 03:08:06 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 25 Apr 2017 03:08:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 25 Apr 2017 03:08:27 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 25 Apr 2017 03:12:11 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 05 May 2017 20:43:51 GMT
COPY multi:6f0472135e558ecb6e8d4994f3ad7153def074d5ddc522114a95b3132d9e14ae in /usr/local/bin/ 
# Fri, 05 May 2017 20:43:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 05 May 2017 20:43:53 GMT
WORKDIR /var/www/html
# Fri, 05 May 2017 20:43:55 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 05 May 2017 20:43:55 GMT
EXPOSE 9000/tcp
# Fri, 05 May 2017 20:43:56 GMT
CMD ["php-fpm"]
# Fri, 05 May 2017 22:32:01 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 05 May 2017 22:32:25 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 05 May 2017 22:32:33 GMT
RUN docker-php-ext-install mysqli
# Fri, 05 May 2017 22:32:39 GMT
RUN docker-php-ext-install mcrypt
# Fri, 05 May 2017 22:32:59 GMT
RUN docker-php-ext-install zip
# Fri, 05 May 2017 22:33:00 GMT
VOLUME [/var/www/html]
# Fri, 05 May 2017 22:33:01 GMT
ENV JOOMLA_VERSION=3.7.0
# Fri, 05 May 2017 22:33:01 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Fri, 05 May 2017 22:33:09 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 05 May 2017 22:33:10 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 05 May 2017 22:33:11 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 05 May 2017 22:33:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 05 May 2017 22:33:12 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b8a88a0af049efa3c92b1c96a947f501ec7c751a568b0d3881b3c757a184a3`  
		Last Modified: Tue, 25 Apr 2017 04:02:19 GMT  
		Size: 78.8 MB (78849205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78c922dd678a8a2c701087b1ac1381c50cb83d0bf5fc1c55c86f1ce22c7c49f`  
		Last Modified: Tue, 25 Apr 2017 04:01:55 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed16e0ed90d8267aed19ba8457fde5e72854455d8b71513d350b1a508dca071b`  
		Last Modified: Tue, 25 Apr 2017 04:25:05 GMT  
		Size: 12.6 MB (12560706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2895c191af4d8fcee844c1e1db66ada4334b72de73e2fa1a9aa3731b7dd17f`  
		Last Modified: Tue, 25 Apr 2017 04:25:00 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d575de0a5becca6127fceee010c8d5b69a51c5bf46c61019b219a3dfa0a5868d`  
		Last Modified: Tue, 25 Apr 2017 04:25:06 GMT  
		Size: 9.0 MB (8981308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e362a296cb97dd04c71acddc66f7391348a14f16113fb9e33f8a7cc2fbd5f03`  
		Last Modified: Fri, 05 May 2017 21:06:20 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd6660565321fb558d79e00720004fed215ddd6289bb18dba3efa98413e7a21`  
		Last Modified: Fri, 05 May 2017 21:06:20 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d600199256b5f182c7e253e6e1bb9def2a37500e00956df6c109017dfa055d39`  
		Last Modified: Fri, 05 May 2017 21:06:20 GMT  
		Size: 7.6 KB (7607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6fece064243567c9a87ff255d6fad8ccc726e406e9f70f2b2b22e45e5bde51`  
		Last Modified: Fri, 05 May 2017 22:39:19 GMT  
		Size: 2.8 MB (2755878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37932785c8b0f11cb9f46c5920fc43614bd90c4a9f1624c6bce3085ad613f75f`  
		Last Modified: Fri, 05 May 2017 22:39:18 GMT  
		Size: 57.9 KB (57947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca5f1191c3d3eb0079af8edbb6e1be0f92d90edff52cf46a54b9b8d88a336f4`  
		Last Modified: Fri, 05 May 2017 22:39:19 GMT  
		Size: 19.7 KB (19660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86fd69015b9d97fc828475adbf1b3de0d25218f26fc4412192dbd4565566aa85`  
		Last Modified: Fri, 05 May 2017 22:39:19 GMT  
		Size: 63.4 KB (63364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0122275ae6e331b73e0dc6e66d37ce03b85c60089ad6958ce97fe1a20a5f58e0`  
		Last Modified: Fri, 05 May 2017 22:39:21 GMT  
		Size: 9.0 MB (9006713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751a9943313624984d6d76217f4b409661ffc5804d32e6735530fcb33be1d184`  
		Last Modified: Fri, 05 May 2017 22:39:18 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c4a8d24a2d100d5d1eb7c51de94e0e78c5f8262200855b0bc1e6c82057eedfe`  
		Last Modified: Fri, 05 May 2017 22:39:19 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.7.0-fpm-php7`

```console
$ docker pull joomla@sha256:649321fe1ac7c36953c86b853077f8436b90941908450e851fd347dc99f277fd
```

-	Platforms:
	-	linux; amd64

### `joomla:3.7.0-fpm-php7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.2 MB (169205714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da4a397dc471fcef79714e18a5a26373f6d52ceafb1da8ce18b311c97b4a7602`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 02:53:21 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Apr 2017 02:53:59 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 25 Apr 2017 02:54:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Apr 2017 02:54:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 25 Apr 2017 03:07:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 25 Apr 2017 03:07:47 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:07:48 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:07:48 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 25 Apr 2017 03:47:30 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 25 Apr 2017 03:47:31 GMT
ENV PHP_VERSION=7.0.18
# Tue, 25 Apr 2017 03:47:31 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.18.tar.xz.asc/from/this/mirror
# Tue, 25 Apr 2017 03:47:32 GMT
ENV PHP_SHA256=679cffcdf2495dee5ab89bda595e678a1096136678b3a1d08f1f57ba347c234d PHP_MD5=a578c55644d233635d2caa96c3a6f9c7
# Tue, 25 Apr 2017 03:47:49 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 25 Apr 2017 03:47:50 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 25 Apr 2017 03:54:45 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 05 May 2017 20:41:11 GMT
COPY multi:6f0472135e558ecb6e8d4994f3ad7153def074d5ddc522114a95b3132d9e14ae in /usr/local/bin/ 
# Fri, 05 May 2017 20:41:12 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 05 May 2017 20:41:13 GMT
WORKDIR /var/www/html
# Fri, 05 May 2017 20:41:15 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 05 May 2017 20:41:15 GMT
EXPOSE 9000/tcp
# Fri, 05 May 2017 20:41:16 GMT
CMD ["php-fpm"]
# Fri, 05 May 2017 22:33:31 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 05 May 2017 22:33:56 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 05 May 2017 22:34:04 GMT
RUN docker-php-ext-install mysqli
# Fri, 05 May 2017 22:34:10 GMT
RUN docker-php-ext-install mcrypt
# Fri, 05 May 2017 22:34:29 GMT
RUN docker-php-ext-install zip
# Fri, 05 May 2017 22:34:29 GMT
VOLUME [/var/www/html]
# Fri, 05 May 2017 22:34:30 GMT
ENV JOOMLA_VERSION=3.7.0
# Fri, 05 May 2017 22:34:31 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Fri, 05 May 2017 22:34:38 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 05 May 2017 22:34:39 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 05 May 2017 22:34:40 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 05 May 2017 22:34:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 05 May 2017 22:34:42 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b8a88a0af049efa3c92b1c96a947f501ec7c751a568b0d3881b3c757a184a3`  
		Last Modified: Tue, 25 Apr 2017 04:02:19 GMT  
		Size: 78.8 MB (78849205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78c922dd678a8a2c701087b1ac1381c50cb83d0bf5fc1c55c86f1ce22c7c49f`  
		Last Modified: Tue, 25 Apr 2017 04:01:55 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9d4b75f6e3ce6a52dc156727599ae2c0d204059ed8acd8d863c2fbea0fd7e6`  
		Last Modified: Tue, 25 Apr 2017 04:17:15 GMT  
		Size: 12.7 MB (12704414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a147d1231b11a61565d91d9753728db0f390ee6b53f0f432fad9864b7d1c7287`  
		Last Modified: Tue, 25 Apr 2017 04:17:12 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c71be854c7bed6be0c8572c193fcfaa92dfa3d0b56fd4ed00204949b3c0e60`  
		Last Modified: Tue, 25 Apr 2017 04:17:15 GMT  
		Size: 13.2 MB (13185884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87184a7336309be9d4447075ced71f5a99c117d5c265537442eb68d1e0970cec`  
		Last Modified: Fri, 05 May 2017 20:59:11 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4b710d41102ee40739913eb1aa778dd2d01fab388a33150364b78d027ca05e`  
		Last Modified: Fri, 05 May 2017 20:59:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b3b1b6b422b00be80f5283b6a6e3c5469c85872ca1913061555f2bda4c3301`  
		Last Modified: Fri, 05 May 2017 20:59:12 GMT  
		Size: 7.7 KB (7669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd5b4ec6f3b82b28ef4c408804f57aac82395488bd949651349fdf0e7d57343`  
		Last Modified: Fri, 05 May 2017 22:40:45 GMT  
		Size: 2.7 MB (2749727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eca0110128d410b07485b4d4a0c9383b890daf4911bec56287555d40d49fee6`  
		Last Modified: Fri, 05 May 2017 22:40:44 GMT  
		Size: 56.3 KB (56267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4835461152dbe54209e987c22ae097b6cfe73d65976abf1b379ce5d673df80a`  
		Last Modified: Fri, 05 May 2017 22:40:45 GMT  
		Size: 18.2 KB (18243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb3ccfa9dbd3176cdf7378ff176506985b2e40642fcd2b332605c4da6f84d5aa`  
		Last Modified: Fri, 05 May 2017 22:40:45 GMT  
		Size: 72.7 KB (72721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a811b846a04e7fbc98a3a93aff9061cbc90a0747337abca5a1d1f39766974a9`  
		Last Modified: Fri, 05 May 2017 22:40:47 GMT  
		Size: 9.0 MB (9006704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68492be64851ada6fc09c55539bf8b3dadb78160d71aec89c3eb14f2b5238ad`  
		Last Modified: Fri, 05 May 2017 22:40:45 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391865dd200738441eba7c13e48ebf97afe7b4931d85a76ecfd019aebaacd311`  
		Last Modified: Fri, 05 May 2017 22:40:45 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.7-fpm-php7`

```console
$ docker pull joomla@sha256:649321fe1ac7c36953c86b853077f8436b90941908450e851fd347dc99f277fd
```

-	Platforms:
	-	linux; amd64

### `joomla:3.7-fpm-php7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.2 MB (169205714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da4a397dc471fcef79714e18a5a26373f6d52ceafb1da8ce18b311c97b4a7602`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 02:53:21 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Apr 2017 02:53:59 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 25 Apr 2017 02:54:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Apr 2017 02:54:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 25 Apr 2017 03:07:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 25 Apr 2017 03:07:47 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:07:48 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:07:48 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 25 Apr 2017 03:47:30 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 25 Apr 2017 03:47:31 GMT
ENV PHP_VERSION=7.0.18
# Tue, 25 Apr 2017 03:47:31 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.18.tar.xz.asc/from/this/mirror
# Tue, 25 Apr 2017 03:47:32 GMT
ENV PHP_SHA256=679cffcdf2495dee5ab89bda595e678a1096136678b3a1d08f1f57ba347c234d PHP_MD5=a578c55644d233635d2caa96c3a6f9c7
# Tue, 25 Apr 2017 03:47:49 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 25 Apr 2017 03:47:50 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 25 Apr 2017 03:54:45 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 05 May 2017 20:41:11 GMT
COPY multi:6f0472135e558ecb6e8d4994f3ad7153def074d5ddc522114a95b3132d9e14ae in /usr/local/bin/ 
# Fri, 05 May 2017 20:41:12 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 05 May 2017 20:41:13 GMT
WORKDIR /var/www/html
# Fri, 05 May 2017 20:41:15 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 05 May 2017 20:41:15 GMT
EXPOSE 9000/tcp
# Fri, 05 May 2017 20:41:16 GMT
CMD ["php-fpm"]
# Fri, 05 May 2017 22:33:31 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 05 May 2017 22:33:56 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 05 May 2017 22:34:04 GMT
RUN docker-php-ext-install mysqli
# Fri, 05 May 2017 22:34:10 GMT
RUN docker-php-ext-install mcrypt
# Fri, 05 May 2017 22:34:29 GMT
RUN docker-php-ext-install zip
# Fri, 05 May 2017 22:34:29 GMT
VOLUME [/var/www/html]
# Fri, 05 May 2017 22:34:30 GMT
ENV JOOMLA_VERSION=3.7.0
# Fri, 05 May 2017 22:34:31 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Fri, 05 May 2017 22:34:38 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 05 May 2017 22:34:39 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 05 May 2017 22:34:40 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 05 May 2017 22:34:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 05 May 2017 22:34:42 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b8a88a0af049efa3c92b1c96a947f501ec7c751a568b0d3881b3c757a184a3`  
		Last Modified: Tue, 25 Apr 2017 04:02:19 GMT  
		Size: 78.8 MB (78849205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78c922dd678a8a2c701087b1ac1381c50cb83d0bf5fc1c55c86f1ce22c7c49f`  
		Last Modified: Tue, 25 Apr 2017 04:01:55 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9d4b75f6e3ce6a52dc156727599ae2c0d204059ed8acd8d863c2fbea0fd7e6`  
		Last Modified: Tue, 25 Apr 2017 04:17:15 GMT  
		Size: 12.7 MB (12704414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a147d1231b11a61565d91d9753728db0f390ee6b53f0f432fad9864b7d1c7287`  
		Last Modified: Tue, 25 Apr 2017 04:17:12 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c71be854c7bed6be0c8572c193fcfaa92dfa3d0b56fd4ed00204949b3c0e60`  
		Last Modified: Tue, 25 Apr 2017 04:17:15 GMT  
		Size: 13.2 MB (13185884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87184a7336309be9d4447075ced71f5a99c117d5c265537442eb68d1e0970cec`  
		Last Modified: Fri, 05 May 2017 20:59:11 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4b710d41102ee40739913eb1aa778dd2d01fab388a33150364b78d027ca05e`  
		Last Modified: Fri, 05 May 2017 20:59:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b3b1b6b422b00be80f5283b6a6e3c5469c85872ca1913061555f2bda4c3301`  
		Last Modified: Fri, 05 May 2017 20:59:12 GMT  
		Size: 7.7 KB (7669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd5b4ec6f3b82b28ef4c408804f57aac82395488bd949651349fdf0e7d57343`  
		Last Modified: Fri, 05 May 2017 22:40:45 GMT  
		Size: 2.7 MB (2749727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eca0110128d410b07485b4d4a0c9383b890daf4911bec56287555d40d49fee6`  
		Last Modified: Fri, 05 May 2017 22:40:44 GMT  
		Size: 56.3 KB (56267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4835461152dbe54209e987c22ae097b6cfe73d65976abf1b379ce5d673df80a`  
		Last Modified: Fri, 05 May 2017 22:40:45 GMT  
		Size: 18.2 KB (18243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb3ccfa9dbd3176cdf7378ff176506985b2e40642fcd2b332605c4da6f84d5aa`  
		Last Modified: Fri, 05 May 2017 22:40:45 GMT  
		Size: 72.7 KB (72721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a811b846a04e7fbc98a3a93aff9061cbc90a0747337abca5a1d1f39766974a9`  
		Last Modified: Fri, 05 May 2017 22:40:47 GMT  
		Size: 9.0 MB (9006704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68492be64851ada6fc09c55539bf8b3dadb78160d71aec89c3eb14f2b5238ad`  
		Last Modified: Fri, 05 May 2017 22:40:45 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391865dd200738441eba7c13e48ebf97afe7b4931d85a76ecfd019aebaacd311`  
		Last Modified: Fri, 05 May 2017 22:40:45 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-fpm-php7`

```console
$ docker pull joomla@sha256:649321fe1ac7c36953c86b853077f8436b90941908450e851fd347dc99f277fd
```

-	Platforms:
	-	linux; amd64

### `joomla:3-fpm-php7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.2 MB (169205714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da4a397dc471fcef79714e18a5a26373f6d52ceafb1da8ce18b311c97b4a7602`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 02:53:21 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Apr 2017 02:53:59 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 25 Apr 2017 02:54:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Apr 2017 02:54:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 25 Apr 2017 03:07:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 25 Apr 2017 03:07:47 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:07:48 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:07:48 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 25 Apr 2017 03:47:30 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 25 Apr 2017 03:47:31 GMT
ENV PHP_VERSION=7.0.18
# Tue, 25 Apr 2017 03:47:31 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.18.tar.xz.asc/from/this/mirror
# Tue, 25 Apr 2017 03:47:32 GMT
ENV PHP_SHA256=679cffcdf2495dee5ab89bda595e678a1096136678b3a1d08f1f57ba347c234d PHP_MD5=a578c55644d233635d2caa96c3a6f9c7
# Tue, 25 Apr 2017 03:47:49 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 25 Apr 2017 03:47:50 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 25 Apr 2017 03:54:45 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 05 May 2017 20:41:11 GMT
COPY multi:6f0472135e558ecb6e8d4994f3ad7153def074d5ddc522114a95b3132d9e14ae in /usr/local/bin/ 
# Fri, 05 May 2017 20:41:12 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 05 May 2017 20:41:13 GMT
WORKDIR /var/www/html
# Fri, 05 May 2017 20:41:15 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 05 May 2017 20:41:15 GMT
EXPOSE 9000/tcp
# Fri, 05 May 2017 20:41:16 GMT
CMD ["php-fpm"]
# Fri, 05 May 2017 22:33:31 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 05 May 2017 22:33:56 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 05 May 2017 22:34:04 GMT
RUN docker-php-ext-install mysqli
# Fri, 05 May 2017 22:34:10 GMT
RUN docker-php-ext-install mcrypt
# Fri, 05 May 2017 22:34:29 GMT
RUN docker-php-ext-install zip
# Fri, 05 May 2017 22:34:29 GMT
VOLUME [/var/www/html]
# Fri, 05 May 2017 22:34:30 GMT
ENV JOOMLA_VERSION=3.7.0
# Fri, 05 May 2017 22:34:31 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Fri, 05 May 2017 22:34:38 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 05 May 2017 22:34:39 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 05 May 2017 22:34:40 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 05 May 2017 22:34:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 05 May 2017 22:34:42 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b8a88a0af049efa3c92b1c96a947f501ec7c751a568b0d3881b3c757a184a3`  
		Last Modified: Tue, 25 Apr 2017 04:02:19 GMT  
		Size: 78.8 MB (78849205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78c922dd678a8a2c701087b1ac1381c50cb83d0bf5fc1c55c86f1ce22c7c49f`  
		Last Modified: Tue, 25 Apr 2017 04:01:55 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9d4b75f6e3ce6a52dc156727599ae2c0d204059ed8acd8d863c2fbea0fd7e6`  
		Last Modified: Tue, 25 Apr 2017 04:17:15 GMT  
		Size: 12.7 MB (12704414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a147d1231b11a61565d91d9753728db0f390ee6b53f0f432fad9864b7d1c7287`  
		Last Modified: Tue, 25 Apr 2017 04:17:12 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c71be854c7bed6be0c8572c193fcfaa92dfa3d0b56fd4ed00204949b3c0e60`  
		Last Modified: Tue, 25 Apr 2017 04:17:15 GMT  
		Size: 13.2 MB (13185884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87184a7336309be9d4447075ced71f5a99c117d5c265537442eb68d1e0970cec`  
		Last Modified: Fri, 05 May 2017 20:59:11 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4b710d41102ee40739913eb1aa778dd2d01fab388a33150364b78d027ca05e`  
		Last Modified: Fri, 05 May 2017 20:59:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b3b1b6b422b00be80f5283b6a6e3c5469c85872ca1913061555f2bda4c3301`  
		Last Modified: Fri, 05 May 2017 20:59:12 GMT  
		Size: 7.7 KB (7669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd5b4ec6f3b82b28ef4c408804f57aac82395488bd949651349fdf0e7d57343`  
		Last Modified: Fri, 05 May 2017 22:40:45 GMT  
		Size: 2.7 MB (2749727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eca0110128d410b07485b4d4a0c9383b890daf4911bec56287555d40d49fee6`  
		Last Modified: Fri, 05 May 2017 22:40:44 GMT  
		Size: 56.3 KB (56267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4835461152dbe54209e987c22ae097b6cfe73d65976abf1b379ce5d673df80a`  
		Last Modified: Fri, 05 May 2017 22:40:45 GMT  
		Size: 18.2 KB (18243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb3ccfa9dbd3176cdf7378ff176506985b2e40642fcd2b332605c4da6f84d5aa`  
		Last Modified: Fri, 05 May 2017 22:40:45 GMT  
		Size: 72.7 KB (72721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a811b846a04e7fbc98a3a93aff9061cbc90a0747337abca5a1d1f39766974a9`  
		Last Modified: Fri, 05 May 2017 22:40:47 GMT  
		Size: 9.0 MB (9006704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68492be64851ada6fc09c55539bf8b3dadb78160d71aec89c3eb14f2b5238ad`  
		Last Modified: Fri, 05 May 2017 22:40:45 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391865dd200738441eba7c13e48ebf97afe7b4931d85a76ecfd019aebaacd311`  
		Last Modified: Fri, 05 May 2017 22:40:45 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:fpm-php7`

```console
$ docker pull joomla@sha256:649321fe1ac7c36953c86b853077f8436b90941908450e851fd347dc99f277fd
```

-	Platforms:
	-	linux; amd64

### `joomla:fpm-php7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.2 MB (169205714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da4a397dc471fcef79714e18a5a26373f6d52ceafb1da8ce18b311c97b4a7602`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 02:53:21 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Apr 2017 02:53:59 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 25 Apr 2017 02:54:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Apr 2017 02:54:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 25 Apr 2017 03:07:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 25 Apr 2017 03:07:47 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:07:48 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:07:48 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 25 Apr 2017 03:47:30 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 25 Apr 2017 03:47:31 GMT
ENV PHP_VERSION=7.0.18
# Tue, 25 Apr 2017 03:47:31 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.18.tar.xz.asc/from/this/mirror
# Tue, 25 Apr 2017 03:47:32 GMT
ENV PHP_SHA256=679cffcdf2495dee5ab89bda595e678a1096136678b3a1d08f1f57ba347c234d PHP_MD5=a578c55644d233635d2caa96c3a6f9c7
# Tue, 25 Apr 2017 03:47:49 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 25 Apr 2017 03:47:50 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 25 Apr 2017 03:54:45 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 05 May 2017 20:41:11 GMT
COPY multi:6f0472135e558ecb6e8d4994f3ad7153def074d5ddc522114a95b3132d9e14ae in /usr/local/bin/ 
# Fri, 05 May 2017 20:41:12 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 05 May 2017 20:41:13 GMT
WORKDIR /var/www/html
# Fri, 05 May 2017 20:41:15 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 05 May 2017 20:41:15 GMT
EXPOSE 9000/tcp
# Fri, 05 May 2017 20:41:16 GMT
CMD ["php-fpm"]
# Fri, 05 May 2017 22:33:31 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 05 May 2017 22:33:56 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 05 May 2017 22:34:04 GMT
RUN docker-php-ext-install mysqli
# Fri, 05 May 2017 22:34:10 GMT
RUN docker-php-ext-install mcrypt
# Fri, 05 May 2017 22:34:29 GMT
RUN docker-php-ext-install zip
# Fri, 05 May 2017 22:34:29 GMT
VOLUME [/var/www/html]
# Fri, 05 May 2017 22:34:30 GMT
ENV JOOMLA_VERSION=3.7.0
# Fri, 05 May 2017 22:34:31 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Fri, 05 May 2017 22:34:38 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 05 May 2017 22:34:39 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 05 May 2017 22:34:40 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 05 May 2017 22:34:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 05 May 2017 22:34:42 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b8a88a0af049efa3c92b1c96a947f501ec7c751a568b0d3881b3c757a184a3`  
		Last Modified: Tue, 25 Apr 2017 04:02:19 GMT  
		Size: 78.8 MB (78849205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78c922dd678a8a2c701087b1ac1381c50cb83d0bf5fc1c55c86f1ce22c7c49f`  
		Last Modified: Tue, 25 Apr 2017 04:01:55 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9d4b75f6e3ce6a52dc156727599ae2c0d204059ed8acd8d863c2fbea0fd7e6`  
		Last Modified: Tue, 25 Apr 2017 04:17:15 GMT  
		Size: 12.7 MB (12704414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a147d1231b11a61565d91d9753728db0f390ee6b53f0f432fad9864b7d1c7287`  
		Last Modified: Tue, 25 Apr 2017 04:17:12 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c71be854c7bed6be0c8572c193fcfaa92dfa3d0b56fd4ed00204949b3c0e60`  
		Last Modified: Tue, 25 Apr 2017 04:17:15 GMT  
		Size: 13.2 MB (13185884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87184a7336309be9d4447075ced71f5a99c117d5c265537442eb68d1e0970cec`  
		Last Modified: Fri, 05 May 2017 20:59:11 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4b710d41102ee40739913eb1aa778dd2d01fab388a33150364b78d027ca05e`  
		Last Modified: Fri, 05 May 2017 20:59:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b3b1b6b422b00be80f5283b6a6e3c5469c85872ca1913061555f2bda4c3301`  
		Last Modified: Fri, 05 May 2017 20:59:12 GMT  
		Size: 7.7 KB (7669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd5b4ec6f3b82b28ef4c408804f57aac82395488bd949651349fdf0e7d57343`  
		Last Modified: Fri, 05 May 2017 22:40:45 GMT  
		Size: 2.7 MB (2749727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eca0110128d410b07485b4d4a0c9383b890daf4911bec56287555d40d49fee6`  
		Last Modified: Fri, 05 May 2017 22:40:44 GMT  
		Size: 56.3 KB (56267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4835461152dbe54209e987c22ae097b6cfe73d65976abf1b379ce5d673df80a`  
		Last Modified: Fri, 05 May 2017 22:40:45 GMT  
		Size: 18.2 KB (18243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb3ccfa9dbd3176cdf7378ff176506985b2e40642fcd2b332605c4da6f84d5aa`  
		Last Modified: Fri, 05 May 2017 22:40:45 GMT  
		Size: 72.7 KB (72721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a811b846a04e7fbc98a3a93aff9061cbc90a0747337abca5a1d1f39766974a9`  
		Last Modified: Fri, 05 May 2017 22:40:47 GMT  
		Size: 9.0 MB (9006704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68492be64851ada6fc09c55539bf8b3dadb78160d71aec89c3eb14f2b5238ad`  
		Last Modified: Fri, 05 May 2017 22:40:45 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391865dd200738441eba7c13e48ebf97afe7b4931d85a76ecfd019aebaacd311`  
		Last Modified: Fri, 05 May 2017 22:40:45 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
