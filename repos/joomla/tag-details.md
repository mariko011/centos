<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `joomla`

-	[`joomla:3`](#joomla3)
-	[`joomla:3.8`](#joomla38)
-	[`joomla:3.8.0`](#joomla380)
-	[`joomla:3.8.0-apache`](#joomla380-apache)
-	[`joomla:3.8.0-apache-php7`](#joomla380-apache-php7)
-	[`joomla:3.8.0-fpm`](#joomla380-fpm)
-	[`joomla:3.8.0-fpm-php7`](#joomla380-fpm-php7)
-	[`joomla:3.8-apache`](#joomla38-apache)
-	[`joomla:3.8-apache-php7`](#joomla38-apache-php7)
-	[`joomla:3.8-fpm`](#joomla38-fpm)
-	[`joomla:3.8-fpm-php7`](#joomla38-fpm-php7)
-	[`joomla:3-apache`](#joomla3-apache)
-	[`joomla:3-apache-php7`](#joomla3-apache-php7)
-	[`joomla:3-fpm`](#joomla3-fpm)
-	[`joomla:3-fpm-php7`](#joomla3-fpm-php7)
-	[`joomla:apache`](#joomlaapache)
-	[`joomla:apache-php7`](#joomlaapache-php7)
-	[`joomla:fpm`](#joomlafpm)
-	[`joomla:fpm-php7`](#joomlafpm-php7)
-	[`joomla:latest`](#joomlalatest)

## `joomla:3`

```console
$ docker pull joomla@sha256:6877763517788cffc15d47ad2ea0dd4d4e2c5245f51a772dfaba213a929043ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3` - linux; amd64

```console
$ docker pull joomla@sha256:9fba824279f4313949542a798d53d4d3b7e5c517efb244262ff1f511cc45374e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.7 MB (172656724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9efefea638252f013a6ce43b284127ecdcc0173a506cb5174fa57324cef9d3e3`
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
# Tue, 10 Oct 2017 02:14:51 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 10 Oct 2017 02:14:51 GMT
ENV PHP_VERSION=5.6.31
# Tue, 10 Oct 2017 02:14:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Tue, 10 Oct 2017 02:14:52 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Tue, 10 Oct 2017 02:15:15 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 10 Oct 2017 02:15:16 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:18:39 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 10 Oct 2017 02:18:39 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:18:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 10 Oct 2017 02:18:40 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:18:40 GMT
WORKDIR /var/www/html
# Tue, 10 Oct 2017 02:18:40 GMT
EXPOSE 80/tcp
# Tue, 10 Oct 2017 02:18:40 GMT
CMD ["apache2-foreground"]
# Tue, 10 Oct 2017 11:36:28 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 10 Oct 2017 11:36:28 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 10 Oct 2017 11:36:30 GMT
RUN a2enmod rewrite
# Tue, 10 Oct 2017 11:37:10 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 10 Oct 2017 11:39:42 GMT
RUN docker-php-ext-install mysqli
# Tue, 10 Oct 2017 11:39:47 GMT
RUN docker-php-ext-install mcrypt
# Tue, 10 Oct 2017 11:40:12 GMT
RUN docker-php-ext-install zip
# Tue, 10 Oct 2017 11:40:12 GMT
VOLUME [/var/www/html]
# Tue, 10 Oct 2017 11:40:13 GMT
ENV JOOMLA_VERSION=3.8.0
# Tue, 10 Oct 2017 11:40:13 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Tue, 10 Oct 2017 11:40:21 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 10 Oct 2017 11:40:22 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Tue, 10 Oct 2017 11:40:22 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 10 Oct 2017 11:40:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 11:40:23 GMT
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
	-	`sha256:9cb5e45bde9bc1e256bf4acc98bd61144c847c60cf617840ff828ed112b9d159`  
		Last Modified: Tue, 10 Oct 2017 02:39:33 GMT  
		Size: 12.8 MB (12815664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e02f171c87c2a7ffd77370d926a0388f80c0011c39afc65e5476f92ceaacb35`  
		Last Modified: Tue, 10 Oct 2017 02:39:32 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83f7a2556eed4fc31d14efbc7dfc86427e0ab246beb650ed9f48921df8dce98`  
		Last Modified: Tue, 10 Oct 2017 02:39:35 GMT  
		Size: 9.2 MB (9175418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af433a4135621830148cf6d8f95f7d965fe1a29fb6495df9f8cfe1cd6b8f55e9`  
		Last Modified: Tue, 10 Oct 2017 02:39:31 GMT  
		Size: 2.2 KB (2178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854be1a14f98a015a9dc61a40768f5a8aae04ca5aba8cead425de6f613844dda`  
		Last Modified: Tue, 10 Oct 2017 02:39:31 GMT  
		Size: 901.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d3d7fb3c08c9c9d9946305c87ae1215ccafe0fe4bd0d0f72b1f4ba4b4ae1f9`  
		Last Modified: Tue, 10 Oct 2017 11:58:29 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d6cc0f5c8a0421dd60078808a5bec01d338b47b86f5544452ad6dc1b258d4e`  
		Last Modified: Tue, 10 Oct 2017 11:58:30 GMT  
		Size: 3.0 MB (3001549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efefc8c88e7a2e4ee716c2be7ab0395f98bdd6e965ce3712f5f62b88462e495d`  
		Last Modified: Tue, 10 Oct 2017 11:58:29 GMT  
		Size: 58.0 KB (57992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8989ffa42492b4d625479a5913a7a01ddd4d3e5db83fceb4fcff6640042705d6`  
		Last Modified: Tue, 10 Oct 2017 11:58:27 GMT  
		Size: 19.7 KB (19702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4005577c51d0fe74d60ccdcb456033dd15b6afc9f8fc39dac0054b610ba5a199`  
		Last Modified: Tue, 10 Oct 2017 11:58:27 GMT  
		Size: 63.4 KB (63404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ecdc7c6ca755ec8d585a936244835a5879a209389fe27191fae1d9515cc1fe`  
		Last Modified: Tue, 10 Oct 2017 11:58:33 GMT  
		Size: 9.4 MB (9409020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d394f6d500e0aff96f898e6abb09b2ce9f1754d2019b4935d85a3ea82dfde360`  
		Last Modified: Tue, 10 Oct 2017 11:58:27 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be215435fe00639422dfed82e67233664c649b383256aaf7b230ce4f7113059`  
		Last Modified: Tue, 10 Oct 2017 11:58:27 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.8`

```console
$ docker pull joomla@sha256:6877763517788cffc15d47ad2ea0dd4d4e2c5245f51a772dfaba213a929043ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3.8` - linux; amd64

```console
$ docker pull joomla@sha256:9fba824279f4313949542a798d53d4d3b7e5c517efb244262ff1f511cc45374e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.7 MB (172656724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9efefea638252f013a6ce43b284127ecdcc0173a506cb5174fa57324cef9d3e3`
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
# Tue, 10 Oct 2017 02:14:51 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 10 Oct 2017 02:14:51 GMT
ENV PHP_VERSION=5.6.31
# Tue, 10 Oct 2017 02:14:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Tue, 10 Oct 2017 02:14:52 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Tue, 10 Oct 2017 02:15:15 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 10 Oct 2017 02:15:16 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:18:39 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 10 Oct 2017 02:18:39 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:18:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 10 Oct 2017 02:18:40 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:18:40 GMT
WORKDIR /var/www/html
# Tue, 10 Oct 2017 02:18:40 GMT
EXPOSE 80/tcp
# Tue, 10 Oct 2017 02:18:40 GMT
CMD ["apache2-foreground"]
# Tue, 10 Oct 2017 11:36:28 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 10 Oct 2017 11:36:28 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 10 Oct 2017 11:36:30 GMT
RUN a2enmod rewrite
# Tue, 10 Oct 2017 11:37:10 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 10 Oct 2017 11:39:42 GMT
RUN docker-php-ext-install mysqli
# Tue, 10 Oct 2017 11:39:47 GMT
RUN docker-php-ext-install mcrypt
# Tue, 10 Oct 2017 11:40:12 GMT
RUN docker-php-ext-install zip
# Tue, 10 Oct 2017 11:40:12 GMT
VOLUME [/var/www/html]
# Tue, 10 Oct 2017 11:40:13 GMT
ENV JOOMLA_VERSION=3.8.0
# Tue, 10 Oct 2017 11:40:13 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Tue, 10 Oct 2017 11:40:21 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 10 Oct 2017 11:40:22 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Tue, 10 Oct 2017 11:40:22 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 10 Oct 2017 11:40:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 11:40:23 GMT
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
	-	`sha256:9cb5e45bde9bc1e256bf4acc98bd61144c847c60cf617840ff828ed112b9d159`  
		Last Modified: Tue, 10 Oct 2017 02:39:33 GMT  
		Size: 12.8 MB (12815664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e02f171c87c2a7ffd77370d926a0388f80c0011c39afc65e5476f92ceaacb35`  
		Last Modified: Tue, 10 Oct 2017 02:39:32 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83f7a2556eed4fc31d14efbc7dfc86427e0ab246beb650ed9f48921df8dce98`  
		Last Modified: Tue, 10 Oct 2017 02:39:35 GMT  
		Size: 9.2 MB (9175418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af433a4135621830148cf6d8f95f7d965fe1a29fb6495df9f8cfe1cd6b8f55e9`  
		Last Modified: Tue, 10 Oct 2017 02:39:31 GMT  
		Size: 2.2 KB (2178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854be1a14f98a015a9dc61a40768f5a8aae04ca5aba8cead425de6f613844dda`  
		Last Modified: Tue, 10 Oct 2017 02:39:31 GMT  
		Size: 901.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d3d7fb3c08c9c9d9946305c87ae1215ccafe0fe4bd0d0f72b1f4ba4b4ae1f9`  
		Last Modified: Tue, 10 Oct 2017 11:58:29 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d6cc0f5c8a0421dd60078808a5bec01d338b47b86f5544452ad6dc1b258d4e`  
		Last Modified: Tue, 10 Oct 2017 11:58:30 GMT  
		Size: 3.0 MB (3001549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efefc8c88e7a2e4ee716c2be7ab0395f98bdd6e965ce3712f5f62b88462e495d`  
		Last Modified: Tue, 10 Oct 2017 11:58:29 GMT  
		Size: 58.0 KB (57992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8989ffa42492b4d625479a5913a7a01ddd4d3e5db83fceb4fcff6640042705d6`  
		Last Modified: Tue, 10 Oct 2017 11:58:27 GMT  
		Size: 19.7 KB (19702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4005577c51d0fe74d60ccdcb456033dd15b6afc9f8fc39dac0054b610ba5a199`  
		Last Modified: Tue, 10 Oct 2017 11:58:27 GMT  
		Size: 63.4 KB (63404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ecdc7c6ca755ec8d585a936244835a5879a209389fe27191fae1d9515cc1fe`  
		Last Modified: Tue, 10 Oct 2017 11:58:33 GMT  
		Size: 9.4 MB (9409020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d394f6d500e0aff96f898e6abb09b2ce9f1754d2019b4935d85a3ea82dfde360`  
		Last Modified: Tue, 10 Oct 2017 11:58:27 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be215435fe00639422dfed82e67233664c649b383256aaf7b230ce4f7113059`  
		Last Modified: Tue, 10 Oct 2017 11:58:27 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.8.0`

```console
$ docker pull joomla@sha256:6877763517788cffc15d47ad2ea0dd4d4e2c5245f51a772dfaba213a929043ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3.8.0` - linux; amd64

```console
$ docker pull joomla@sha256:9fba824279f4313949542a798d53d4d3b7e5c517efb244262ff1f511cc45374e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.7 MB (172656724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9efefea638252f013a6ce43b284127ecdcc0173a506cb5174fa57324cef9d3e3`
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
# Tue, 10 Oct 2017 02:14:51 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 10 Oct 2017 02:14:51 GMT
ENV PHP_VERSION=5.6.31
# Tue, 10 Oct 2017 02:14:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Tue, 10 Oct 2017 02:14:52 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Tue, 10 Oct 2017 02:15:15 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 10 Oct 2017 02:15:16 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:18:39 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 10 Oct 2017 02:18:39 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:18:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 10 Oct 2017 02:18:40 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:18:40 GMT
WORKDIR /var/www/html
# Tue, 10 Oct 2017 02:18:40 GMT
EXPOSE 80/tcp
# Tue, 10 Oct 2017 02:18:40 GMT
CMD ["apache2-foreground"]
# Tue, 10 Oct 2017 11:36:28 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 10 Oct 2017 11:36:28 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 10 Oct 2017 11:36:30 GMT
RUN a2enmod rewrite
# Tue, 10 Oct 2017 11:37:10 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 10 Oct 2017 11:39:42 GMT
RUN docker-php-ext-install mysqli
# Tue, 10 Oct 2017 11:39:47 GMT
RUN docker-php-ext-install mcrypt
# Tue, 10 Oct 2017 11:40:12 GMT
RUN docker-php-ext-install zip
# Tue, 10 Oct 2017 11:40:12 GMT
VOLUME [/var/www/html]
# Tue, 10 Oct 2017 11:40:13 GMT
ENV JOOMLA_VERSION=3.8.0
# Tue, 10 Oct 2017 11:40:13 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Tue, 10 Oct 2017 11:40:21 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 10 Oct 2017 11:40:22 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Tue, 10 Oct 2017 11:40:22 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 10 Oct 2017 11:40:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 11:40:23 GMT
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
	-	`sha256:9cb5e45bde9bc1e256bf4acc98bd61144c847c60cf617840ff828ed112b9d159`  
		Last Modified: Tue, 10 Oct 2017 02:39:33 GMT  
		Size: 12.8 MB (12815664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e02f171c87c2a7ffd77370d926a0388f80c0011c39afc65e5476f92ceaacb35`  
		Last Modified: Tue, 10 Oct 2017 02:39:32 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83f7a2556eed4fc31d14efbc7dfc86427e0ab246beb650ed9f48921df8dce98`  
		Last Modified: Tue, 10 Oct 2017 02:39:35 GMT  
		Size: 9.2 MB (9175418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af433a4135621830148cf6d8f95f7d965fe1a29fb6495df9f8cfe1cd6b8f55e9`  
		Last Modified: Tue, 10 Oct 2017 02:39:31 GMT  
		Size: 2.2 KB (2178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854be1a14f98a015a9dc61a40768f5a8aae04ca5aba8cead425de6f613844dda`  
		Last Modified: Tue, 10 Oct 2017 02:39:31 GMT  
		Size: 901.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d3d7fb3c08c9c9d9946305c87ae1215ccafe0fe4bd0d0f72b1f4ba4b4ae1f9`  
		Last Modified: Tue, 10 Oct 2017 11:58:29 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d6cc0f5c8a0421dd60078808a5bec01d338b47b86f5544452ad6dc1b258d4e`  
		Last Modified: Tue, 10 Oct 2017 11:58:30 GMT  
		Size: 3.0 MB (3001549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efefc8c88e7a2e4ee716c2be7ab0395f98bdd6e965ce3712f5f62b88462e495d`  
		Last Modified: Tue, 10 Oct 2017 11:58:29 GMT  
		Size: 58.0 KB (57992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8989ffa42492b4d625479a5913a7a01ddd4d3e5db83fceb4fcff6640042705d6`  
		Last Modified: Tue, 10 Oct 2017 11:58:27 GMT  
		Size: 19.7 KB (19702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4005577c51d0fe74d60ccdcb456033dd15b6afc9f8fc39dac0054b610ba5a199`  
		Last Modified: Tue, 10 Oct 2017 11:58:27 GMT  
		Size: 63.4 KB (63404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ecdc7c6ca755ec8d585a936244835a5879a209389fe27191fae1d9515cc1fe`  
		Last Modified: Tue, 10 Oct 2017 11:58:33 GMT  
		Size: 9.4 MB (9409020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d394f6d500e0aff96f898e6abb09b2ce9f1754d2019b4935d85a3ea82dfde360`  
		Last Modified: Tue, 10 Oct 2017 11:58:27 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be215435fe00639422dfed82e67233664c649b383256aaf7b230ce4f7113059`  
		Last Modified: Tue, 10 Oct 2017 11:58:27 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.8.0-apache`

```console
$ docker pull joomla@sha256:6877763517788cffc15d47ad2ea0dd4d4e2c5245f51a772dfaba213a929043ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3.8.0-apache` - linux; amd64

```console
$ docker pull joomla@sha256:9fba824279f4313949542a798d53d4d3b7e5c517efb244262ff1f511cc45374e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.7 MB (172656724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9efefea638252f013a6ce43b284127ecdcc0173a506cb5174fa57324cef9d3e3`
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
# Tue, 10 Oct 2017 02:14:51 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 10 Oct 2017 02:14:51 GMT
ENV PHP_VERSION=5.6.31
# Tue, 10 Oct 2017 02:14:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Tue, 10 Oct 2017 02:14:52 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Tue, 10 Oct 2017 02:15:15 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 10 Oct 2017 02:15:16 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:18:39 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 10 Oct 2017 02:18:39 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:18:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 10 Oct 2017 02:18:40 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:18:40 GMT
WORKDIR /var/www/html
# Tue, 10 Oct 2017 02:18:40 GMT
EXPOSE 80/tcp
# Tue, 10 Oct 2017 02:18:40 GMT
CMD ["apache2-foreground"]
# Tue, 10 Oct 2017 11:36:28 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 10 Oct 2017 11:36:28 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 10 Oct 2017 11:36:30 GMT
RUN a2enmod rewrite
# Tue, 10 Oct 2017 11:37:10 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 10 Oct 2017 11:39:42 GMT
RUN docker-php-ext-install mysqli
# Tue, 10 Oct 2017 11:39:47 GMT
RUN docker-php-ext-install mcrypt
# Tue, 10 Oct 2017 11:40:12 GMT
RUN docker-php-ext-install zip
# Tue, 10 Oct 2017 11:40:12 GMT
VOLUME [/var/www/html]
# Tue, 10 Oct 2017 11:40:13 GMT
ENV JOOMLA_VERSION=3.8.0
# Tue, 10 Oct 2017 11:40:13 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Tue, 10 Oct 2017 11:40:21 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 10 Oct 2017 11:40:22 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Tue, 10 Oct 2017 11:40:22 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 10 Oct 2017 11:40:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 11:40:23 GMT
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
	-	`sha256:9cb5e45bde9bc1e256bf4acc98bd61144c847c60cf617840ff828ed112b9d159`  
		Last Modified: Tue, 10 Oct 2017 02:39:33 GMT  
		Size: 12.8 MB (12815664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e02f171c87c2a7ffd77370d926a0388f80c0011c39afc65e5476f92ceaacb35`  
		Last Modified: Tue, 10 Oct 2017 02:39:32 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83f7a2556eed4fc31d14efbc7dfc86427e0ab246beb650ed9f48921df8dce98`  
		Last Modified: Tue, 10 Oct 2017 02:39:35 GMT  
		Size: 9.2 MB (9175418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af433a4135621830148cf6d8f95f7d965fe1a29fb6495df9f8cfe1cd6b8f55e9`  
		Last Modified: Tue, 10 Oct 2017 02:39:31 GMT  
		Size: 2.2 KB (2178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854be1a14f98a015a9dc61a40768f5a8aae04ca5aba8cead425de6f613844dda`  
		Last Modified: Tue, 10 Oct 2017 02:39:31 GMT  
		Size: 901.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d3d7fb3c08c9c9d9946305c87ae1215ccafe0fe4bd0d0f72b1f4ba4b4ae1f9`  
		Last Modified: Tue, 10 Oct 2017 11:58:29 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d6cc0f5c8a0421dd60078808a5bec01d338b47b86f5544452ad6dc1b258d4e`  
		Last Modified: Tue, 10 Oct 2017 11:58:30 GMT  
		Size: 3.0 MB (3001549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efefc8c88e7a2e4ee716c2be7ab0395f98bdd6e965ce3712f5f62b88462e495d`  
		Last Modified: Tue, 10 Oct 2017 11:58:29 GMT  
		Size: 58.0 KB (57992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8989ffa42492b4d625479a5913a7a01ddd4d3e5db83fceb4fcff6640042705d6`  
		Last Modified: Tue, 10 Oct 2017 11:58:27 GMT  
		Size: 19.7 KB (19702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4005577c51d0fe74d60ccdcb456033dd15b6afc9f8fc39dac0054b610ba5a199`  
		Last Modified: Tue, 10 Oct 2017 11:58:27 GMT  
		Size: 63.4 KB (63404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ecdc7c6ca755ec8d585a936244835a5879a209389fe27191fae1d9515cc1fe`  
		Last Modified: Tue, 10 Oct 2017 11:58:33 GMT  
		Size: 9.4 MB (9409020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d394f6d500e0aff96f898e6abb09b2ce9f1754d2019b4935d85a3ea82dfde360`  
		Last Modified: Tue, 10 Oct 2017 11:58:27 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be215435fe00639422dfed82e67233664c649b383256aaf7b230ce4f7113059`  
		Last Modified: Tue, 10 Oct 2017 11:58:27 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.8.0-apache-php7`

```console
$ docker pull joomla@sha256:97d0d1c32a64607b03fc4ea71f2920074b6bc021346c68ff2dba597a73e124a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3.8.0-apache-php7` - linux; amd64

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

## `joomla:3.8.0-fpm`

```console
$ docker pull joomla@sha256:9f10ab6c0f132a7fb17ad7de488be993fbae67f049ca80b0ebf59b260a2dcabd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3.8.0-fpm` - linux; amd64

```console
$ docker pull joomla@sha256:97ae29eb7ba644eac6aa103b60bf243f49a2d45e9d90bab1d67cf36541c2dba4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.3 MB (169285856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48ed85028357f8b9361c7736e3706d073ca764286136b6a8a2f8f741a2b79e9d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

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
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 10 Oct 2017 02:18:51 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 10 Oct 2017 02:18:51 GMT
ENV PHP_VERSION=5.6.31
# Tue, 10 Oct 2017 02:18:52 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Tue, 10 Oct 2017 02:18:52 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Tue, 10 Oct 2017 02:19:14 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 10 Oct 2017 02:19:15 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:23:37 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 10 Oct 2017 02:25:09 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:25:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 10 Oct 2017 02:25:09 GMT
WORKDIR /var/www/html
# Tue, 10 Oct 2017 02:25:10 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 10 Oct 2017 02:25:10 GMT
EXPOSE 9000/tcp
# Tue, 10 Oct 2017 02:25:10 GMT
CMD ["php-fpm"]
# Tue, 10 Oct 2017 11:50:36 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 10 Oct 2017 11:50:36 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 10 Oct 2017 11:51:15 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 10 Oct 2017 11:51:22 GMT
RUN docker-php-ext-install mysqli
# Tue, 10 Oct 2017 11:51:27 GMT
RUN docker-php-ext-install mcrypt
# Tue, 10 Oct 2017 11:51:47 GMT
RUN docker-php-ext-install zip
# Tue, 10 Oct 2017 11:51:47 GMT
VOLUME [/var/www/html]
# Tue, 10 Oct 2017 11:51:47 GMT
ENV JOOMLA_VERSION=3.8.0
# Tue, 10 Oct 2017 11:51:48 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Tue, 10 Oct 2017 11:51:53 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 10 Oct 2017 11:51:54 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Tue, 10 Oct 2017 11:51:54 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 10 Oct 2017 11:51:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 11:51:54 GMT
CMD ["php-fpm"]
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
	-	`sha256:e5b72f6c0ef2374cfd7b271ab4e916b2c716a5db7774461d34eafaf355421e7d`  
		Last Modified: Tue, 10 Oct 2017 02:40:10 GMT  
		Size: 12.8 MB (12798384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54fa1f998df72a4229c587007fcc51d34745d13784895c9ef13cbb0dab3050c4`  
		Last Modified: Tue, 10 Oct 2017 02:40:06 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49225e4445ebc98b261608751e00f117a6bdf4d59e5be163722a47165d18c7a`  
		Last Modified: Tue, 10 Oct 2017 02:40:09 GMT  
		Size: 8.9 MB (8850549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980a9927246e1485caf5a2025773b873e12a5b60c8a41df3f819956b5c6fcf51`  
		Last Modified: Tue, 10 Oct 2017 02:40:07 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4827145d006347ada89772f155fb1838c5f0c481dcea2a6a6cc9723feab4c7b3`  
		Last Modified: Tue, 10 Oct 2017 02:40:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a5986b192cd35da1a3aa3b66297ad1e79f4ace55d59d6e36db641296fb6be5`  
		Last Modified: Tue, 10 Oct 2017 02:40:06 GMT  
		Size: 7.6 KB (7617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b9c9de1bf656f042389aea846781917c02a64f7bc8a8bf2596be6fc61d3dbb`  
		Last Modified: Tue, 10 Oct 2017 12:00:34 GMT  
		Size: 3.0 MB (2981592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62cfdc8b71626ec3a0e31b15de66709d777df9cda71be7d98ae4f462ced96f5f`  
		Last Modified: Tue, 10 Oct 2017 12:00:33 GMT  
		Size: 58.0 KB (58003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c52bd9ad6ca781a4066c5dd42a29ed62ed2524c664f9919636547bc388ecaa2`  
		Last Modified: Tue, 10 Oct 2017 12:00:31 GMT  
		Size: 19.7 KB (19703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:551a730e622aee716e835ba435649104fcf030277fc0a1bd768a2d87fd99f56f`  
		Last Modified: Tue, 10 Oct 2017 12:00:31 GMT  
		Size: 63.4 KB (63417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d621c20cf6047ccc7fdb4884c617fcba588d8f9aaad5251399633c4eaa2b794`  
		Last Modified: Tue, 10 Oct 2017 12:00:35 GMT  
		Size: 9.4 MB (9409011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f271407e2915480d1d6bf146a0122494392e8fb1b96a046e91c5e983662789`  
		Last Modified: Tue, 10 Oct 2017 12:00:31 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df992f6d7f6914e278ad0c6118f68fafdb1196d5f7c3ba42ca17b53440b34cf`  
		Last Modified: Tue, 10 Oct 2017 12:00:31 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.8.0-fpm-php7`

```console
$ docker pull joomla@sha256:66aeb9ba05986eae370e69303011079debed572f751ab365bc71c8e3cd567514
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3.8.0-fpm-php7` - linux; amd64

```console
$ docker pull joomla@sha256:56be71e4e87159beea733ac6071d350baa7b2e55734e80b9567e0d97471cd15b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.8 MB (172842129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3a619a4b4c7663786e3926011bb269a0d0c3ad8d5bb9e9e8de12982e9f439b4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

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
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 10 Oct 2017 01:57:02 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 10 Oct 2017 01:57:02 GMT
ENV PHP_VERSION=7.0.24
# Tue, 10 Oct 2017 01:57:02 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.24.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.24.tar.xz.asc/from/this/mirror
# Tue, 10 Oct 2017 01:57:03 GMT
ENV PHP_SHA256=4dba7aa365193c9229f89f1975fad4c01135d29922a338ffb4a27e840d6f1c98 PHP_MD5=
# Tue, 10 Oct 2017 01:57:26 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 10 Oct 2017 01:57:26 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:01:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 10 Oct 2017 02:01:38 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:01:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 10 Oct 2017 02:01:38 GMT
WORKDIR /var/www/html
# Tue, 10 Oct 2017 02:01:39 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 10 Oct 2017 02:01:39 GMT
EXPOSE 9000/tcp
# Tue, 10 Oct 2017 02:01:39 GMT
CMD ["php-fpm"]
# Tue, 10 Oct 2017 11:52:04 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 10 Oct 2017 11:52:04 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 10 Oct 2017 11:52:36 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 10 Oct 2017 11:52:47 GMT
RUN docker-php-ext-install mysqli
# Tue, 10 Oct 2017 11:52:52 GMT
RUN docker-php-ext-install mcrypt
# Tue, 10 Oct 2017 11:53:10 GMT
RUN docker-php-ext-install zip
# Tue, 10 Oct 2017 11:53:10 GMT
VOLUME [/var/www/html]
# Tue, 10 Oct 2017 11:53:11 GMT
ENV JOOMLA_VERSION=3.8.0
# Tue, 10 Oct 2017 11:53:11 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Tue, 10 Oct 2017 11:53:16 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 10 Oct 2017 11:53:17 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Tue, 10 Oct 2017 11:53:17 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 10 Oct 2017 11:53:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 11:53:17 GMT
CMD ["php-fpm"]
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
	-	`sha256:90813fe894455b3ffff86c543aa5a7c41e1a436236fda8a8b7be81aac7ac6018`  
		Last Modified: Tue, 10 Oct 2017 02:37:43 GMT  
		Size: 12.3 MB (12296746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed7765682b2ed87c3a6ea37b53bd2d1ceed07a0d71bd418b4d967d3ee0b07a7`  
		Last Modified: Tue, 10 Oct 2017 02:37:36 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc646077200fc3e323cb880cb53e8a589e68ed542bfe4debf1053c5795ed9109`  
		Last Modified: Tue, 10 Oct 2017 02:37:40 GMT  
		Size: 12.9 MB (12906929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e499eec99f051bb556d192215d0704226d11a068defc3065b82460c087352f`  
		Last Modified: Tue, 10 Oct 2017 02:37:38 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca8f39f9f61ef3d4b66ca15e7661c1cce5a2804b5e11f8e05fe1d7ee9e916de`  
		Last Modified: Tue, 10 Oct 2017 02:37:36 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad08f01e0eb4443a5c24bf0702a6c6655ba6d5dcf3c64bc3efd9049c88241387`  
		Last Modified: Tue, 10 Oct 2017 02:37:37 GMT  
		Size: 7.7 KB (7678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a99f73ba6146cb1627dca19fd8443fd83a9cde224c8729008a04420e889322`  
		Last Modified: Tue, 10 Oct 2017 12:01:18 GMT  
		Size: 3.0 MB (2976707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa43714ec9ca5b39da749266f1c890cb93f8fac3bd3d784a8c8f21bdc4f7b7d`  
		Last Modified: Tue, 10 Oct 2017 12:01:18 GMT  
		Size: 56.4 KB (56416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e860f58ef856e7a5eeb7b515660595d39e5618287d11454cf8002e1466da99`  
		Last Modified: Tue, 10 Oct 2017 12:01:15 GMT  
		Size: 18.3 KB (18287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663e4c5da903dbb106f5bda8d1f24078b273b4116a01ee615ea755fdbda18d2a`  
		Last Modified: Tue, 10 Oct 2017 12:01:15 GMT  
		Size: 72.8 KB (72764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565965627b601f2972d391b8e3d46d2e48b993a63706ea1d092a7405c31ed8bb`  
		Last Modified: Tue, 10 Oct 2017 12:01:17 GMT  
		Size: 9.4 MB (9409018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b987b04407ddeaef90851fac218a723c1b3f440562ea1e5968fa526e12dfac`  
		Last Modified: Tue, 10 Oct 2017 12:01:15 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e2fa78354559c6eaaaffcf80b81e3a852664eb498959886a7a9d83eec50609`  
		Last Modified: Tue, 10 Oct 2017 12:01:15 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.8-apache`

```console
$ docker pull joomla@sha256:6877763517788cffc15d47ad2ea0dd4d4e2c5245f51a772dfaba213a929043ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3.8-apache` - linux; amd64

```console
$ docker pull joomla@sha256:9fba824279f4313949542a798d53d4d3b7e5c517efb244262ff1f511cc45374e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.7 MB (172656724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9efefea638252f013a6ce43b284127ecdcc0173a506cb5174fa57324cef9d3e3`
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
# Tue, 10 Oct 2017 02:14:51 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 10 Oct 2017 02:14:51 GMT
ENV PHP_VERSION=5.6.31
# Tue, 10 Oct 2017 02:14:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Tue, 10 Oct 2017 02:14:52 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Tue, 10 Oct 2017 02:15:15 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 10 Oct 2017 02:15:16 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:18:39 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 10 Oct 2017 02:18:39 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:18:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 10 Oct 2017 02:18:40 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:18:40 GMT
WORKDIR /var/www/html
# Tue, 10 Oct 2017 02:18:40 GMT
EXPOSE 80/tcp
# Tue, 10 Oct 2017 02:18:40 GMT
CMD ["apache2-foreground"]
# Tue, 10 Oct 2017 11:36:28 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 10 Oct 2017 11:36:28 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 10 Oct 2017 11:36:30 GMT
RUN a2enmod rewrite
# Tue, 10 Oct 2017 11:37:10 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 10 Oct 2017 11:39:42 GMT
RUN docker-php-ext-install mysqli
# Tue, 10 Oct 2017 11:39:47 GMT
RUN docker-php-ext-install mcrypt
# Tue, 10 Oct 2017 11:40:12 GMT
RUN docker-php-ext-install zip
# Tue, 10 Oct 2017 11:40:12 GMT
VOLUME [/var/www/html]
# Tue, 10 Oct 2017 11:40:13 GMT
ENV JOOMLA_VERSION=3.8.0
# Tue, 10 Oct 2017 11:40:13 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Tue, 10 Oct 2017 11:40:21 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 10 Oct 2017 11:40:22 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Tue, 10 Oct 2017 11:40:22 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 10 Oct 2017 11:40:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 11:40:23 GMT
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
	-	`sha256:9cb5e45bde9bc1e256bf4acc98bd61144c847c60cf617840ff828ed112b9d159`  
		Last Modified: Tue, 10 Oct 2017 02:39:33 GMT  
		Size: 12.8 MB (12815664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e02f171c87c2a7ffd77370d926a0388f80c0011c39afc65e5476f92ceaacb35`  
		Last Modified: Tue, 10 Oct 2017 02:39:32 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83f7a2556eed4fc31d14efbc7dfc86427e0ab246beb650ed9f48921df8dce98`  
		Last Modified: Tue, 10 Oct 2017 02:39:35 GMT  
		Size: 9.2 MB (9175418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af433a4135621830148cf6d8f95f7d965fe1a29fb6495df9f8cfe1cd6b8f55e9`  
		Last Modified: Tue, 10 Oct 2017 02:39:31 GMT  
		Size: 2.2 KB (2178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854be1a14f98a015a9dc61a40768f5a8aae04ca5aba8cead425de6f613844dda`  
		Last Modified: Tue, 10 Oct 2017 02:39:31 GMT  
		Size: 901.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d3d7fb3c08c9c9d9946305c87ae1215ccafe0fe4bd0d0f72b1f4ba4b4ae1f9`  
		Last Modified: Tue, 10 Oct 2017 11:58:29 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d6cc0f5c8a0421dd60078808a5bec01d338b47b86f5544452ad6dc1b258d4e`  
		Last Modified: Tue, 10 Oct 2017 11:58:30 GMT  
		Size: 3.0 MB (3001549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efefc8c88e7a2e4ee716c2be7ab0395f98bdd6e965ce3712f5f62b88462e495d`  
		Last Modified: Tue, 10 Oct 2017 11:58:29 GMT  
		Size: 58.0 KB (57992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8989ffa42492b4d625479a5913a7a01ddd4d3e5db83fceb4fcff6640042705d6`  
		Last Modified: Tue, 10 Oct 2017 11:58:27 GMT  
		Size: 19.7 KB (19702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4005577c51d0fe74d60ccdcb456033dd15b6afc9f8fc39dac0054b610ba5a199`  
		Last Modified: Tue, 10 Oct 2017 11:58:27 GMT  
		Size: 63.4 KB (63404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ecdc7c6ca755ec8d585a936244835a5879a209389fe27191fae1d9515cc1fe`  
		Last Modified: Tue, 10 Oct 2017 11:58:33 GMT  
		Size: 9.4 MB (9409020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d394f6d500e0aff96f898e6abb09b2ce9f1754d2019b4935d85a3ea82dfde360`  
		Last Modified: Tue, 10 Oct 2017 11:58:27 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be215435fe00639422dfed82e67233664c649b383256aaf7b230ce4f7113059`  
		Last Modified: Tue, 10 Oct 2017 11:58:27 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.8-apache-php7`

```console
$ docker pull joomla@sha256:97d0d1c32a64607b03fc4ea71f2920074b6bc021346c68ff2dba597a73e124a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3.8-apache-php7` - linux; amd64

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

## `joomla:3.8-fpm`

```console
$ docker pull joomla@sha256:9f10ab6c0f132a7fb17ad7de488be993fbae67f049ca80b0ebf59b260a2dcabd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3.8-fpm` - linux; amd64

```console
$ docker pull joomla@sha256:97ae29eb7ba644eac6aa103b60bf243f49a2d45e9d90bab1d67cf36541c2dba4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.3 MB (169285856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48ed85028357f8b9361c7736e3706d073ca764286136b6a8a2f8f741a2b79e9d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

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
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 10 Oct 2017 02:18:51 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 10 Oct 2017 02:18:51 GMT
ENV PHP_VERSION=5.6.31
# Tue, 10 Oct 2017 02:18:52 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Tue, 10 Oct 2017 02:18:52 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Tue, 10 Oct 2017 02:19:14 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 10 Oct 2017 02:19:15 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:23:37 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 10 Oct 2017 02:25:09 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:25:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 10 Oct 2017 02:25:09 GMT
WORKDIR /var/www/html
# Tue, 10 Oct 2017 02:25:10 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 10 Oct 2017 02:25:10 GMT
EXPOSE 9000/tcp
# Tue, 10 Oct 2017 02:25:10 GMT
CMD ["php-fpm"]
# Tue, 10 Oct 2017 11:50:36 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 10 Oct 2017 11:50:36 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 10 Oct 2017 11:51:15 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 10 Oct 2017 11:51:22 GMT
RUN docker-php-ext-install mysqli
# Tue, 10 Oct 2017 11:51:27 GMT
RUN docker-php-ext-install mcrypt
# Tue, 10 Oct 2017 11:51:47 GMT
RUN docker-php-ext-install zip
# Tue, 10 Oct 2017 11:51:47 GMT
VOLUME [/var/www/html]
# Tue, 10 Oct 2017 11:51:47 GMT
ENV JOOMLA_VERSION=3.8.0
# Tue, 10 Oct 2017 11:51:48 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Tue, 10 Oct 2017 11:51:53 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 10 Oct 2017 11:51:54 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Tue, 10 Oct 2017 11:51:54 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 10 Oct 2017 11:51:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 11:51:54 GMT
CMD ["php-fpm"]
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
	-	`sha256:e5b72f6c0ef2374cfd7b271ab4e916b2c716a5db7774461d34eafaf355421e7d`  
		Last Modified: Tue, 10 Oct 2017 02:40:10 GMT  
		Size: 12.8 MB (12798384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54fa1f998df72a4229c587007fcc51d34745d13784895c9ef13cbb0dab3050c4`  
		Last Modified: Tue, 10 Oct 2017 02:40:06 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49225e4445ebc98b261608751e00f117a6bdf4d59e5be163722a47165d18c7a`  
		Last Modified: Tue, 10 Oct 2017 02:40:09 GMT  
		Size: 8.9 MB (8850549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980a9927246e1485caf5a2025773b873e12a5b60c8a41df3f819956b5c6fcf51`  
		Last Modified: Tue, 10 Oct 2017 02:40:07 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4827145d006347ada89772f155fb1838c5f0c481dcea2a6a6cc9723feab4c7b3`  
		Last Modified: Tue, 10 Oct 2017 02:40:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a5986b192cd35da1a3aa3b66297ad1e79f4ace55d59d6e36db641296fb6be5`  
		Last Modified: Tue, 10 Oct 2017 02:40:06 GMT  
		Size: 7.6 KB (7617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b9c9de1bf656f042389aea846781917c02a64f7bc8a8bf2596be6fc61d3dbb`  
		Last Modified: Tue, 10 Oct 2017 12:00:34 GMT  
		Size: 3.0 MB (2981592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62cfdc8b71626ec3a0e31b15de66709d777df9cda71be7d98ae4f462ced96f5f`  
		Last Modified: Tue, 10 Oct 2017 12:00:33 GMT  
		Size: 58.0 KB (58003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c52bd9ad6ca781a4066c5dd42a29ed62ed2524c664f9919636547bc388ecaa2`  
		Last Modified: Tue, 10 Oct 2017 12:00:31 GMT  
		Size: 19.7 KB (19703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:551a730e622aee716e835ba435649104fcf030277fc0a1bd768a2d87fd99f56f`  
		Last Modified: Tue, 10 Oct 2017 12:00:31 GMT  
		Size: 63.4 KB (63417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d621c20cf6047ccc7fdb4884c617fcba588d8f9aaad5251399633c4eaa2b794`  
		Last Modified: Tue, 10 Oct 2017 12:00:35 GMT  
		Size: 9.4 MB (9409011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f271407e2915480d1d6bf146a0122494392e8fb1b96a046e91c5e983662789`  
		Last Modified: Tue, 10 Oct 2017 12:00:31 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df992f6d7f6914e278ad0c6118f68fafdb1196d5f7c3ba42ca17b53440b34cf`  
		Last Modified: Tue, 10 Oct 2017 12:00:31 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.8-fpm-php7`

```console
$ docker pull joomla@sha256:66aeb9ba05986eae370e69303011079debed572f751ab365bc71c8e3cd567514
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3.8-fpm-php7` - linux; amd64

```console
$ docker pull joomla@sha256:56be71e4e87159beea733ac6071d350baa7b2e55734e80b9567e0d97471cd15b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.8 MB (172842129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3a619a4b4c7663786e3926011bb269a0d0c3ad8d5bb9e9e8de12982e9f439b4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

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
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 10 Oct 2017 01:57:02 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 10 Oct 2017 01:57:02 GMT
ENV PHP_VERSION=7.0.24
# Tue, 10 Oct 2017 01:57:02 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.24.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.24.tar.xz.asc/from/this/mirror
# Tue, 10 Oct 2017 01:57:03 GMT
ENV PHP_SHA256=4dba7aa365193c9229f89f1975fad4c01135d29922a338ffb4a27e840d6f1c98 PHP_MD5=
# Tue, 10 Oct 2017 01:57:26 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 10 Oct 2017 01:57:26 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:01:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 10 Oct 2017 02:01:38 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:01:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 10 Oct 2017 02:01:38 GMT
WORKDIR /var/www/html
# Tue, 10 Oct 2017 02:01:39 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 10 Oct 2017 02:01:39 GMT
EXPOSE 9000/tcp
# Tue, 10 Oct 2017 02:01:39 GMT
CMD ["php-fpm"]
# Tue, 10 Oct 2017 11:52:04 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 10 Oct 2017 11:52:04 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 10 Oct 2017 11:52:36 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 10 Oct 2017 11:52:47 GMT
RUN docker-php-ext-install mysqli
# Tue, 10 Oct 2017 11:52:52 GMT
RUN docker-php-ext-install mcrypt
# Tue, 10 Oct 2017 11:53:10 GMT
RUN docker-php-ext-install zip
# Tue, 10 Oct 2017 11:53:10 GMT
VOLUME [/var/www/html]
# Tue, 10 Oct 2017 11:53:11 GMT
ENV JOOMLA_VERSION=3.8.0
# Tue, 10 Oct 2017 11:53:11 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Tue, 10 Oct 2017 11:53:16 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 10 Oct 2017 11:53:17 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Tue, 10 Oct 2017 11:53:17 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 10 Oct 2017 11:53:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 11:53:17 GMT
CMD ["php-fpm"]
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
	-	`sha256:90813fe894455b3ffff86c543aa5a7c41e1a436236fda8a8b7be81aac7ac6018`  
		Last Modified: Tue, 10 Oct 2017 02:37:43 GMT  
		Size: 12.3 MB (12296746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed7765682b2ed87c3a6ea37b53bd2d1ceed07a0d71bd418b4d967d3ee0b07a7`  
		Last Modified: Tue, 10 Oct 2017 02:37:36 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc646077200fc3e323cb880cb53e8a589e68ed542bfe4debf1053c5795ed9109`  
		Last Modified: Tue, 10 Oct 2017 02:37:40 GMT  
		Size: 12.9 MB (12906929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e499eec99f051bb556d192215d0704226d11a068defc3065b82460c087352f`  
		Last Modified: Tue, 10 Oct 2017 02:37:38 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca8f39f9f61ef3d4b66ca15e7661c1cce5a2804b5e11f8e05fe1d7ee9e916de`  
		Last Modified: Tue, 10 Oct 2017 02:37:36 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad08f01e0eb4443a5c24bf0702a6c6655ba6d5dcf3c64bc3efd9049c88241387`  
		Last Modified: Tue, 10 Oct 2017 02:37:37 GMT  
		Size: 7.7 KB (7678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a99f73ba6146cb1627dca19fd8443fd83a9cde224c8729008a04420e889322`  
		Last Modified: Tue, 10 Oct 2017 12:01:18 GMT  
		Size: 3.0 MB (2976707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa43714ec9ca5b39da749266f1c890cb93f8fac3bd3d784a8c8f21bdc4f7b7d`  
		Last Modified: Tue, 10 Oct 2017 12:01:18 GMT  
		Size: 56.4 KB (56416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e860f58ef856e7a5eeb7b515660595d39e5618287d11454cf8002e1466da99`  
		Last Modified: Tue, 10 Oct 2017 12:01:15 GMT  
		Size: 18.3 KB (18287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663e4c5da903dbb106f5bda8d1f24078b273b4116a01ee615ea755fdbda18d2a`  
		Last Modified: Tue, 10 Oct 2017 12:01:15 GMT  
		Size: 72.8 KB (72764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565965627b601f2972d391b8e3d46d2e48b993a63706ea1d092a7405c31ed8bb`  
		Last Modified: Tue, 10 Oct 2017 12:01:17 GMT  
		Size: 9.4 MB (9409018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b987b04407ddeaef90851fac218a723c1b3f440562ea1e5968fa526e12dfac`  
		Last Modified: Tue, 10 Oct 2017 12:01:15 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e2fa78354559c6eaaaffcf80b81e3a852664eb498959886a7a9d83eec50609`  
		Last Modified: Tue, 10 Oct 2017 12:01:15 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-apache`

```console
$ docker pull joomla@sha256:6877763517788cffc15d47ad2ea0dd4d4e2c5245f51a772dfaba213a929043ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3-apache` - linux; amd64

```console
$ docker pull joomla@sha256:9fba824279f4313949542a798d53d4d3b7e5c517efb244262ff1f511cc45374e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.7 MB (172656724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9efefea638252f013a6ce43b284127ecdcc0173a506cb5174fa57324cef9d3e3`
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
# Tue, 10 Oct 2017 02:14:51 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 10 Oct 2017 02:14:51 GMT
ENV PHP_VERSION=5.6.31
# Tue, 10 Oct 2017 02:14:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Tue, 10 Oct 2017 02:14:52 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Tue, 10 Oct 2017 02:15:15 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 10 Oct 2017 02:15:16 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:18:39 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 10 Oct 2017 02:18:39 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:18:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 10 Oct 2017 02:18:40 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:18:40 GMT
WORKDIR /var/www/html
# Tue, 10 Oct 2017 02:18:40 GMT
EXPOSE 80/tcp
# Tue, 10 Oct 2017 02:18:40 GMT
CMD ["apache2-foreground"]
# Tue, 10 Oct 2017 11:36:28 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 10 Oct 2017 11:36:28 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 10 Oct 2017 11:36:30 GMT
RUN a2enmod rewrite
# Tue, 10 Oct 2017 11:37:10 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 10 Oct 2017 11:39:42 GMT
RUN docker-php-ext-install mysqli
# Tue, 10 Oct 2017 11:39:47 GMT
RUN docker-php-ext-install mcrypt
# Tue, 10 Oct 2017 11:40:12 GMT
RUN docker-php-ext-install zip
# Tue, 10 Oct 2017 11:40:12 GMT
VOLUME [/var/www/html]
# Tue, 10 Oct 2017 11:40:13 GMT
ENV JOOMLA_VERSION=3.8.0
# Tue, 10 Oct 2017 11:40:13 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Tue, 10 Oct 2017 11:40:21 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 10 Oct 2017 11:40:22 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Tue, 10 Oct 2017 11:40:22 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 10 Oct 2017 11:40:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 11:40:23 GMT
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
	-	`sha256:9cb5e45bde9bc1e256bf4acc98bd61144c847c60cf617840ff828ed112b9d159`  
		Last Modified: Tue, 10 Oct 2017 02:39:33 GMT  
		Size: 12.8 MB (12815664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e02f171c87c2a7ffd77370d926a0388f80c0011c39afc65e5476f92ceaacb35`  
		Last Modified: Tue, 10 Oct 2017 02:39:32 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83f7a2556eed4fc31d14efbc7dfc86427e0ab246beb650ed9f48921df8dce98`  
		Last Modified: Tue, 10 Oct 2017 02:39:35 GMT  
		Size: 9.2 MB (9175418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af433a4135621830148cf6d8f95f7d965fe1a29fb6495df9f8cfe1cd6b8f55e9`  
		Last Modified: Tue, 10 Oct 2017 02:39:31 GMT  
		Size: 2.2 KB (2178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854be1a14f98a015a9dc61a40768f5a8aae04ca5aba8cead425de6f613844dda`  
		Last Modified: Tue, 10 Oct 2017 02:39:31 GMT  
		Size: 901.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d3d7fb3c08c9c9d9946305c87ae1215ccafe0fe4bd0d0f72b1f4ba4b4ae1f9`  
		Last Modified: Tue, 10 Oct 2017 11:58:29 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d6cc0f5c8a0421dd60078808a5bec01d338b47b86f5544452ad6dc1b258d4e`  
		Last Modified: Tue, 10 Oct 2017 11:58:30 GMT  
		Size: 3.0 MB (3001549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efefc8c88e7a2e4ee716c2be7ab0395f98bdd6e965ce3712f5f62b88462e495d`  
		Last Modified: Tue, 10 Oct 2017 11:58:29 GMT  
		Size: 58.0 KB (57992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8989ffa42492b4d625479a5913a7a01ddd4d3e5db83fceb4fcff6640042705d6`  
		Last Modified: Tue, 10 Oct 2017 11:58:27 GMT  
		Size: 19.7 KB (19702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4005577c51d0fe74d60ccdcb456033dd15b6afc9f8fc39dac0054b610ba5a199`  
		Last Modified: Tue, 10 Oct 2017 11:58:27 GMT  
		Size: 63.4 KB (63404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ecdc7c6ca755ec8d585a936244835a5879a209389fe27191fae1d9515cc1fe`  
		Last Modified: Tue, 10 Oct 2017 11:58:33 GMT  
		Size: 9.4 MB (9409020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d394f6d500e0aff96f898e6abb09b2ce9f1754d2019b4935d85a3ea82dfde360`  
		Last Modified: Tue, 10 Oct 2017 11:58:27 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be215435fe00639422dfed82e67233664c649b383256aaf7b230ce4f7113059`  
		Last Modified: Tue, 10 Oct 2017 11:58:27 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-apache-php7`

```console
$ docker pull joomla@sha256:97d0d1c32a64607b03fc4ea71f2920074b6bc021346c68ff2dba597a73e124a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3-apache-php7` - linux; amd64

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

## `joomla:3-fpm`

```console
$ docker pull joomla@sha256:9f10ab6c0f132a7fb17ad7de488be993fbae67f049ca80b0ebf59b260a2dcabd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3-fpm` - linux; amd64

```console
$ docker pull joomla@sha256:97ae29eb7ba644eac6aa103b60bf243f49a2d45e9d90bab1d67cf36541c2dba4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.3 MB (169285856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48ed85028357f8b9361c7736e3706d073ca764286136b6a8a2f8f741a2b79e9d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

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
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 10 Oct 2017 02:18:51 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 10 Oct 2017 02:18:51 GMT
ENV PHP_VERSION=5.6.31
# Tue, 10 Oct 2017 02:18:52 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Tue, 10 Oct 2017 02:18:52 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Tue, 10 Oct 2017 02:19:14 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 10 Oct 2017 02:19:15 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:23:37 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 10 Oct 2017 02:25:09 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:25:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 10 Oct 2017 02:25:09 GMT
WORKDIR /var/www/html
# Tue, 10 Oct 2017 02:25:10 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 10 Oct 2017 02:25:10 GMT
EXPOSE 9000/tcp
# Tue, 10 Oct 2017 02:25:10 GMT
CMD ["php-fpm"]
# Tue, 10 Oct 2017 11:50:36 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 10 Oct 2017 11:50:36 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 10 Oct 2017 11:51:15 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 10 Oct 2017 11:51:22 GMT
RUN docker-php-ext-install mysqli
# Tue, 10 Oct 2017 11:51:27 GMT
RUN docker-php-ext-install mcrypt
# Tue, 10 Oct 2017 11:51:47 GMT
RUN docker-php-ext-install zip
# Tue, 10 Oct 2017 11:51:47 GMT
VOLUME [/var/www/html]
# Tue, 10 Oct 2017 11:51:47 GMT
ENV JOOMLA_VERSION=3.8.0
# Tue, 10 Oct 2017 11:51:48 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Tue, 10 Oct 2017 11:51:53 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 10 Oct 2017 11:51:54 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Tue, 10 Oct 2017 11:51:54 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 10 Oct 2017 11:51:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 11:51:54 GMT
CMD ["php-fpm"]
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
	-	`sha256:e5b72f6c0ef2374cfd7b271ab4e916b2c716a5db7774461d34eafaf355421e7d`  
		Last Modified: Tue, 10 Oct 2017 02:40:10 GMT  
		Size: 12.8 MB (12798384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54fa1f998df72a4229c587007fcc51d34745d13784895c9ef13cbb0dab3050c4`  
		Last Modified: Tue, 10 Oct 2017 02:40:06 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49225e4445ebc98b261608751e00f117a6bdf4d59e5be163722a47165d18c7a`  
		Last Modified: Tue, 10 Oct 2017 02:40:09 GMT  
		Size: 8.9 MB (8850549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980a9927246e1485caf5a2025773b873e12a5b60c8a41df3f819956b5c6fcf51`  
		Last Modified: Tue, 10 Oct 2017 02:40:07 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4827145d006347ada89772f155fb1838c5f0c481dcea2a6a6cc9723feab4c7b3`  
		Last Modified: Tue, 10 Oct 2017 02:40:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a5986b192cd35da1a3aa3b66297ad1e79f4ace55d59d6e36db641296fb6be5`  
		Last Modified: Tue, 10 Oct 2017 02:40:06 GMT  
		Size: 7.6 KB (7617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b9c9de1bf656f042389aea846781917c02a64f7bc8a8bf2596be6fc61d3dbb`  
		Last Modified: Tue, 10 Oct 2017 12:00:34 GMT  
		Size: 3.0 MB (2981592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62cfdc8b71626ec3a0e31b15de66709d777df9cda71be7d98ae4f462ced96f5f`  
		Last Modified: Tue, 10 Oct 2017 12:00:33 GMT  
		Size: 58.0 KB (58003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c52bd9ad6ca781a4066c5dd42a29ed62ed2524c664f9919636547bc388ecaa2`  
		Last Modified: Tue, 10 Oct 2017 12:00:31 GMT  
		Size: 19.7 KB (19703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:551a730e622aee716e835ba435649104fcf030277fc0a1bd768a2d87fd99f56f`  
		Last Modified: Tue, 10 Oct 2017 12:00:31 GMT  
		Size: 63.4 KB (63417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d621c20cf6047ccc7fdb4884c617fcba588d8f9aaad5251399633c4eaa2b794`  
		Last Modified: Tue, 10 Oct 2017 12:00:35 GMT  
		Size: 9.4 MB (9409011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f271407e2915480d1d6bf146a0122494392e8fb1b96a046e91c5e983662789`  
		Last Modified: Tue, 10 Oct 2017 12:00:31 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df992f6d7f6914e278ad0c6118f68fafdb1196d5f7c3ba42ca17b53440b34cf`  
		Last Modified: Tue, 10 Oct 2017 12:00:31 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-fpm-php7`

```console
$ docker pull joomla@sha256:66aeb9ba05986eae370e69303011079debed572f751ab365bc71c8e3cd567514
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3-fpm-php7` - linux; amd64

```console
$ docker pull joomla@sha256:56be71e4e87159beea733ac6071d350baa7b2e55734e80b9567e0d97471cd15b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.8 MB (172842129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3a619a4b4c7663786e3926011bb269a0d0c3ad8d5bb9e9e8de12982e9f439b4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

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
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 10 Oct 2017 01:57:02 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 10 Oct 2017 01:57:02 GMT
ENV PHP_VERSION=7.0.24
# Tue, 10 Oct 2017 01:57:02 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.24.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.24.tar.xz.asc/from/this/mirror
# Tue, 10 Oct 2017 01:57:03 GMT
ENV PHP_SHA256=4dba7aa365193c9229f89f1975fad4c01135d29922a338ffb4a27e840d6f1c98 PHP_MD5=
# Tue, 10 Oct 2017 01:57:26 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 10 Oct 2017 01:57:26 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:01:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 10 Oct 2017 02:01:38 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:01:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 10 Oct 2017 02:01:38 GMT
WORKDIR /var/www/html
# Tue, 10 Oct 2017 02:01:39 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 10 Oct 2017 02:01:39 GMT
EXPOSE 9000/tcp
# Tue, 10 Oct 2017 02:01:39 GMT
CMD ["php-fpm"]
# Tue, 10 Oct 2017 11:52:04 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 10 Oct 2017 11:52:04 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 10 Oct 2017 11:52:36 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 10 Oct 2017 11:52:47 GMT
RUN docker-php-ext-install mysqli
# Tue, 10 Oct 2017 11:52:52 GMT
RUN docker-php-ext-install mcrypt
# Tue, 10 Oct 2017 11:53:10 GMT
RUN docker-php-ext-install zip
# Tue, 10 Oct 2017 11:53:10 GMT
VOLUME [/var/www/html]
# Tue, 10 Oct 2017 11:53:11 GMT
ENV JOOMLA_VERSION=3.8.0
# Tue, 10 Oct 2017 11:53:11 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Tue, 10 Oct 2017 11:53:16 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 10 Oct 2017 11:53:17 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Tue, 10 Oct 2017 11:53:17 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 10 Oct 2017 11:53:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 11:53:17 GMT
CMD ["php-fpm"]
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
	-	`sha256:90813fe894455b3ffff86c543aa5a7c41e1a436236fda8a8b7be81aac7ac6018`  
		Last Modified: Tue, 10 Oct 2017 02:37:43 GMT  
		Size: 12.3 MB (12296746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed7765682b2ed87c3a6ea37b53bd2d1ceed07a0d71bd418b4d967d3ee0b07a7`  
		Last Modified: Tue, 10 Oct 2017 02:37:36 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc646077200fc3e323cb880cb53e8a589e68ed542bfe4debf1053c5795ed9109`  
		Last Modified: Tue, 10 Oct 2017 02:37:40 GMT  
		Size: 12.9 MB (12906929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e499eec99f051bb556d192215d0704226d11a068defc3065b82460c087352f`  
		Last Modified: Tue, 10 Oct 2017 02:37:38 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca8f39f9f61ef3d4b66ca15e7661c1cce5a2804b5e11f8e05fe1d7ee9e916de`  
		Last Modified: Tue, 10 Oct 2017 02:37:36 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad08f01e0eb4443a5c24bf0702a6c6655ba6d5dcf3c64bc3efd9049c88241387`  
		Last Modified: Tue, 10 Oct 2017 02:37:37 GMT  
		Size: 7.7 KB (7678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a99f73ba6146cb1627dca19fd8443fd83a9cde224c8729008a04420e889322`  
		Last Modified: Tue, 10 Oct 2017 12:01:18 GMT  
		Size: 3.0 MB (2976707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa43714ec9ca5b39da749266f1c890cb93f8fac3bd3d784a8c8f21bdc4f7b7d`  
		Last Modified: Tue, 10 Oct 2017 12:01:18 GMT  
		Size: 56.4 KB (56416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e860f58ef856e7a5eeb7b515660595d39e5618287d11454cf8002e1466da99`  
		Last Modified: Tue, 10 Oct 2017 12:01:15 GMT  
		Size: 18.3 KB (18287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663e4c5da903dbb106f5bda8d1f24078b273b4116a01ee615ea755fdbda18d2a`  
		Last Modified: Tue, 10 Oct 2017 12:01:15 GMT  
		Size: 72.8 KB (72764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565965627b601f2972d391b8e3d46d2e48b993a63706ea1d092a7405c31ed8bb`  
		Last Modified: Tue, 10 Oct 2017 12:01:17 GMT  
		Size: 9.4 MB (9409018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b987b04407ddeaef90851fac218a723c1b3f440562ea1e5968fa526e12dfac`  
		Last Modified: Tue, 10 Oct 2017 12:01:15 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e2fa78354559c6eaaaffcf80b81e3a852664eb498959886a7a9d83eec50609`  
		Last Modified: Tue, 10 Oct 2017 12:01:15 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:apache`

```console
$ docker pull joomla@sha256:6877763517788cffc15d47ad2ea0dd4d4e2c5245f51a772dfaba213a929043ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:apache` - linux; amd64

```console
$ docker pull joomla@sha256:9fba824279f4313949542a798d53d4d3b7e5c517efb244262ff1f511cc45374e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.7 MB (172656724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9efefea638252f013a6ce43b284127ecdcc0173a506cb5174fa57324cef9d3e3`
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
# Tue, 10 Oct 2017 02:14:51 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 10 Oct 2017 02:14:51 GMT
ENV PHP_VERSION=5.6.31
# Tue, 10 Oct 2017 02:14:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Tue, 10 Oct 2017 02:14:52 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Tue, 10 Oct 2017 02:15:15 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 10 Oct 2017 02:15:16 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:18:39 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 10 Oct 2017 02:18:39 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:18:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 10 Oct 2017 02:18:40 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:18:40 GMT
WORKDIR /var/www/html
# Tue, 10 Oct 2017 02:18:40 GMT
EXPOSE 80/tcp
# Tue, 10 Oct 2017 02:18:40 GMT
CMD ["apache2-foreground"]
# Tue, 10 Oct 2017 11:36:28 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 10 Oct 2017 11:36:28 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 10 Oct 2017 11:36:30 GMT
RUN a2enmod rewrite
# Tue, 10 Oct 2017 11:37:10 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 10 Oct 2017 11:39:42 GMT
RUN docker-php-ext-install mysqli
# Tue, 10 Oct 2017 11:39:47 GMT
RUN docker-php-ext-install mcrypt
# Tue, 10 Oct 2017 11:40:12 GMT
RUN docker-php-ext-install zip
# Tue, 10 Oct 2017 11:40:12 GMT
VOLUME [/var/www/html]
# Tue, 10 Oct 2017 11:40:13 GMT
ENV JOOMLA_VERSION=3.8.0
# Tue, 10 Oct 2017 11:40:13 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Tue, 10 Oct 2017 11:40:21 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 10 Oct 2017 11:40:22 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Tue, 10 Oct 2017 11:40:22 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 10 Oct 2017 11:40:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 11:40:23 GMT
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
	-	`sha256:9cb5e45bde9bc1e256bf4acc98bd61144c847c60cf617840ff828ed112b9d159`  
		Last Modified: Tue, 10 Oct 2017 02:39:33 GMT  
		Size: 12.8 MB (12815664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e02f171c87c2a7ffd77370d926a0388f80c0011c39afc65e5476f92ceaacb35`  
		Last Modified: Tue, 10 Oct 2017 02:39:32 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83f7a2556eed4fc31d14efbc7dfc86427e0ab246beb650ed9f48921df8dce98`  
		Last Modified: Tue, 10 Oct 2017 02:39:35 GMT  
		Size: 9.2 MB (9175418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af433a4135621830148cf6d8f95f7d965fe1a29fb6495df9f8cfe1cd6b8f55e9`  
		Last Modified: Tue, 10 Oct 2017 02:39:31 GMT  
		Size: 2.2 KB (2178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854be1a14f98a015a9dc61a40768f5a8aae04ca5aba8cead425de6f613844dda`  
		Last Modified: Tue, 10 Oct 2017 02:39:31 GMT  
		Size: 901.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d3d7fb3c08c9c9d9946305c87ae1215ccafe0fe4bd0d0f72b1f4ba4b4ae1f9`  
		Last Modified: Tue, 10 Oct 2017 11:58:29 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d6cc0f5c8a0421dd60078808a5bec01d338b47b86f5544452ad6dc1b258d4e`  
		Last Modified: Tue, 10 Oct 2017 11:58:30 GMT  
		Size: 3.0 MB (3001549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efefc8c88e7a2e4ee716c2be7ab0395f98bdd6e965ce3712f5f62b88462e495d`  
		Last Modified: Tue, 10 Oct 2017 11:58:29 GMT  
		Size: 58.0 KB (57992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8989ffa42492b4d625479a5913a7a01ddd4d3e5db83fceb4fcff6640042705d6`  
		Last Modified: Tue, 10 Oct 2017 11:58:27 GMT  
		Size: 19.7 KB (19702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4005577c51d0fe74d60ccdcb456033dd15b6afc9f8fc39dac0054b610ba5a199`  
		Last Modified: Tue, 10 Oct 2017 11:58:27 GMT  
		Size: 63.4 KB (63404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ecdc7c6ca755ec8d585a936244835a5879a209389fe27191fae1d9515cc1fe`  
		Last Modified: Tue, 10 Oct 2017 11:58:33 GMT  
		Size: 9.4 MB (9409020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d394f6d500e0aff96f898e6abb09b2ce9f1754d2019b4935d85a3ea82dfde360`  
		Last Modified: Tue, 10 Oct 2017 11:58:27 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be215435fe00639422dfed82e67233664c649b383256aaf7b230ce4f7113059`  
		Last Modified: Tue, 10 Oct 2017 11:58:27 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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

## `joomla:fpm`

```console
$ docker pull joomla@sha256:9f10ab6c0f132a7fb17ad7de488be993fbae67f049ca80b0ebf59b260a2dcabd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:fpm` - linux; amd64

```console
$ docker pull joomla@sha256:97ae29eb7ba644eac6aa103b60bf243f49a2d45e9d90bab1d67cf36541c2dba4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.3 MB (169285856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48ed85028357f8b9361c7736e3706d073ca764286136b6a8a2f8f741a2b79e9d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

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
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 10 Oct 2017 02:18:51 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 10 Oct 2017 02:18:51 GMT
ENV PHP_VERSION=5.6.31
# Tue, 10 Oct 2017 02:18:52 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Tue, 10 Oct 2017 02:18:52 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Tue, 10 Oct 2017 02:19:14 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 10 Oct 2017 02:19:15 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:23:37 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 10 Oct 2017 02:25:09 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:25:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 10 Oct 2017 02:25:09 GMT
WORKDIR /var/www/html
# Tue, 10 Oct 2017 02:25:10 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 10 Oct 2017 02:25:10 GMT
EXPOSE 9000/tcp
# Tue, 10 Oct 2017 02:25:10 GMT
CMD ["php-fpm"]
# Tue, 10 Oct 2017 11:50:36 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 10 Oct 2017 11:50:36 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 10 Oct 2017 11:51:15 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 10 Oct 2017 11:51:22 GMT
RUN docker-php-ext-install mysqli
# Tue, 10 Oct 2017 11:51:27 GMT
RUN docker-php-ext-install mcrypt
# Tue, 10 Oct 2017 11:51:47 GMT
RUN docker-php-ext-install zip
# Tue, 10 Oct 2017 11:51:47 GMT
VOLUME [/var/www/html]
# Tue, 10 Oct 2017 11:51:47 GMT
ENV JOOMLA_VERSION=3.8.0
# Tue, 10 Oct 2017 11:51:48 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Tue, 10 Oct 2017 11:51:53 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 10 Oct 2017 11:51:54 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Tue, 10 Oct 2017 11:51:54 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 10 Oct 2017 11:51:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 11:51:54 GMT
CMD ["php-fpm"]
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
	-	`sha256:e5b72f6c0ef2374cfd7b271ab4e916b2c716a5db7774461d34eafaf355421e7d`  
		Last Modified: Tue, 10 Oct 2017 02:40:10 GMT  
		Size: 12.8 MB (12798384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54fa1f998df72a4229c587007fcc51d34745d13784895c9ef13cbb0dab3050c4`  
		Last Modified: Tue, 10 Oct 2017 02:40:06 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49225e4445ebc98b261608751e00f117a6bdf4d59e5be163722a47165d18c7a`  
		Last Modified: Tue, 10 Oct 2017 02:40:09 GMT  
		Size: 8.9 MB (8850549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980a9927246e1485caf5a2025773b873e12a5b60c8a41df3f819956b5c6fcf51`  
		Last Modified: Tue, 10 Oct 2017 02:40:07 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4827145d006347ada89772f155fb1838c5f0c481dcea2a6a6cc9723feab4c7b3`  
		Last Modified: Tue, 10 Oct 2017 02:40:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a5986b192cd35da1a3aa3b66297ad1e79f4ace55d59d6e36db641296fb6be5`  
		Last Modified: Tue, 10 Oct 2017 02:40:06 GMT  
		Size: 7.6 KB (7617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b9c9de1bf656f042389aea846781917c02a64f7bc8a8bf2596be6fc61d3dbb`  
		Last Modified: Tue, 10 Oct 2017 12:00:34 GMT  
		Size: 3.0 MB (2981592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62cfdc8b71626ec3a0e31b15de66709d777df9cda71be7d98ae4f462ced96f5f`  
		Last Modified: Tue, 10 Oct 2017 12:00:33 GMT  
		Size: 58.0 KB (58003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c52bd9ad6ca781a4066c5dd42a29ed62ed2524c664f9919636547bc388ecaa2`  
		Last Modified: Tue, 10 Oct 2017 12:00:31 GMT  
		Size: 19.7 KB (19703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:551a730e622aee716e835ba435649104fcf030277fc0a1bd768a2d87fd99f56f`  
		Last Modified: Tue, 10 Oct 2017 12:00:31 GMT  
		Size: 63.4 KB (63417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d621c20cf6047ccc7fdb4884c617fcba588d8f9aaad5251399633c4eaa2b794`  
		Last Modified: Tue, 10 Oct 2017 12:00:35 GMT  
		Size: 9.4 MB (9409011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f271407e2915480d1d6bf146a0122494392e8fb1b96a046e91c5e983662789`  
		Last Modified: Tue, 10 Oct 2017 12:00:31 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df992f6d7f6914e278ad0c6118f68fafdb1196d5f7c3ba42ca17b53440b34cf`  
		Last Modified: Tue, 10 Oct 2017 12:00:31 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:fpm-php7`

```console
$ docker pull joomla@sha256:66aeb9ba05986eae370e69303011079debed572f751ab365bc71c8e3cd567514
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:fpm-php7` - linux; amd64

```console
$ docker pull joomla@sha256:56be71e4e87159beea733ac6071d350baa7b2e55734e80b9567e0d97471cd15b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.8 MB (172842129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3a619a4b4c7663786e3926011bb269a0d0c3ad8d5bb9e9e8de12982e9f439b4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

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
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 01:27:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 10 Oct 2017 01:57:02 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 10 Oct 2017 01:57:02 GMT
ENV PHP_VERSION=7.0.24
# Tue, 10 Oct 2017 01:57:02 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.24.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.24.tar.xz.asc/from/this/mirror
# Tue, 10 Oct 2017 01:57:03 GMT
ENV PHP_SHA256=4dba7aa365193c9229f89f1975fad4c01135d29922a338ffb4a27e840d6f1c98 PHP_MD5=
# Tue, 10 Oct 2017 01:57:26 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 10 Oct 2017 01:57:26 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:01:27 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 10 Oct 2017 02:01:38 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:01:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 10 Oct 2017 02:01:38 GMT
WORKDIR /var/www/html
# Tue, 10 Oct 2017 02:01:39 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 10 Oct 2017 02:01:39 GMT
EXPOSE 9000/tcp
# Tue, 10 Oct 2017 02:01:39 GMT
CMD ["php-fpm"]
# Tue, 10 Oct 2017 11:52:04 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 10 Oct 2017 11:52:04 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 10 Oct 2017 11:52:36 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 10 Oct 2017 11:52:47 GMT
RUN docker-php-ext-install mysqli
# Tue, 10 Oct 2017 11:52:52 GMT
RUN docker-php-ext-install mcrypt
# Tue, 10 Oct 2017 11:53:10 GMT
RUN docker-php-ext-install zip
# Tue, 10 Oct 2017 11:53:10 GMT
VOLUME [/var/www/html]
# Tue, 10 Oct 2017 11:53:11 GMT
ENV JOOMLA_VERSION=3.8.0
# Tue, 10 Oct 2017 11:53:11 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Tue, 10 Oct 2017 11:53:16 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 10 Oct 2017 11:53:17 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Tue, 10 Oct 2017 11:53:17 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 10 Oct 2017 11:53:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 11:53:17 GMT
CMD ["php-fpm"]
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
	-	`sha256:90813fe894455b3ffff86c543aa5a7c41e1a436236fda8a8b7be81aac7ac6018`  
		Last Modified: Tue, 10 Oct 2017 02:37:43 GMT  
		Size: 12.3 MB (12296746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed7765682b2ed87c3a6ea37b53bd2d1ceed07a0d71bd418b4d967d3ee0b07a7`  
		Last Modified: Tue, 10 Oct 2017 02:37:36 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc646077200fc3e323cb880cb53e8a589e68ed542bfe4debf1053c5795ed9109`  
		Last Modified: Tue, 10 Oct 2017 02:37:40 GMT  
		Size: 12.9 MB (12906929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e499eec99f051bb556d192215d0704226d11a068defc3065b82460c087352f`  
		Last Modified: Tue, 10 Oct 2017 02:37:38 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca8f39f9f61ef3d4b66ca15e7661c1cce5a2804b5e11f8e05fe1d7ee9e916de`  
		Last Modified: Tue, 10 Oct 2017 02:37:36 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad08f01e0eb4443a5c24bf0702a6c6655ba6d5dcf3c64bc3efd9049c88241387`  
		Last Modified: Tue, 10 Oct 2017 02:37:37 GMT  
		Size: 7.7 KB (7678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a99f73ba6146cb1627dca19fd8443fd83a9cde224c8729008a04420e889322`  
		Last Modified: Tue, 10 Oct 2017 12:01:18 GMT  
		Size: 3.0 MB (2976707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa43714ec9ca5b39da749266f1c890cb93f8fac3bd3d784a8c8f21bdc4f7b7d`  
		Last Modified: Tue, 10 Oct 2017 12:01:18 GMT  
		Size: 56.4 KB (56416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e860f58ef856e7a5eeb7b515660595d39e5618287d11454cf8002e1466da99`  
		Last Modified: Tue, 10 Oct 2017 12:01:15 GMT  
		Size: 18.3 KB (18287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663e4c5da903dbb106f5bda8d1f24078b273b4116a01ee615ea755fdbda18d2a`  
		Last Modified: Tue, 10 Oct 2017 12:01:15 GMT  
		Size: 72.8 KB (72764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565965627b601f2972d391b8e3d46d2e48b993a63706ea1d092a7405c31ed8bb`  
		Last Modified: Tue, 10 Oct 2017 12:01:17 GMT  
		Size: 9.4 MB (9409018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b987b04407ddeaef90851fac218a723c1b3f440562ea1e5968fa526e12dfac`  
		Last Modified: Tue, 10 Oct 2017 12:01:15 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e2fa78354559c6eaaaffcf80b81e3a852664eb498959886a7a9d83eec50609`  
		Last Modified: Tue, 10 Oct 2017 12:01:15 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:latest`

```console
$ docker pull joomla@sha256:6877763517788cffc15d47ad2ea0dd4d4e2c5245f51a772dfaba213a929043ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:latest` - linux; amd64

```console
$ docker pull joomla@sha256:9fba824279f4313949542a798d53d4d3b7e5c517efb244262ff1f511cc45374e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.7 MB (172656724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9efefea638252f013a6ce43b284127ecdcc0173a506cb5174fa57324cef9d3e3`
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
# Tue, 10 Oct 2017 02:14:51 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 10 Oct 2017 02:14:51 GMT
ENV PHP_VERSION=5.6.31
# Tue, 10 Oct 2017 02:14:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror
# Tue, 10 Oct 2017 02:14:52 GMT
ENV PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4 PHP_MD5=
# Tue, 10 Oct 2017 02:15:15 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 10 Oct 2017 02:15:16 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:18:39 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 10 Oct 2017 02:18:39 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:18:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 10 Oct 2017 02:18:40 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:18:40 GMT
WORKDIR /var/www/html
# Tue, 10 Oct 2017 02:18:40 GMT
EXPOSE 80/tcp
# Tue, 10 Oct 2017 02:18:40 GMT
CMD ["apache2-foreground"]
# Tue, 10 Oct 2017 11:36:28 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 10 Oct 2017 11:36:28 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 10 Oct 2017 11:36:30 GMT
RUN a2enmod rewrite
# Tue, 10 Oct 2017 11:37:10 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 10 Oct 2017 11:39:42 GMT
RUN docker-php-ext-install mysqli
# Tue, 10 Oct 2017 11:39:47 GMT
RUN docker-php-ext-install mcrypt
# Tue, 10 Oct 2017 11:40:12 GMT
RUN docker-php-ext-install zip
# Tue, 10 Oct 2017 11:40:12 GMT
VOLUME [/var/www/html]
# Tue, 10 Oct 2017 11:40:13 GMT
ENV JOOMLA_VERSION=3.8.0
# Tue, 10 Oct 2017 11:40:13 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Tue, 10 Oct 2017 11:40:21 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 10 Oct 2017 11:40:22 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Tue, 10 Oct 2017 11:40:22 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 10 Oct 2017 11:40:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 11:40:23 GMT
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
	-	`sha256:9cb5e45bde9bc1e256bf4acc98bd61144c847c60cf617840ff828ed112b9d159`  
		Last Modified: Tue, 10 Oct 2017 02:39:33 GMT  
		Size: 12.8 MB (12815664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e02f171c87c2a7ffd77370d926a0388f80c0011c39afc65e5476f92ceaacb35`  
		Last Modified: Tue, 10 Oct 2017 02:39:32 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83f7a2556eed4fc31d14efbc7dfc86427e0ab246beb650ed9f48921df8dce98`  
		Last Modified: Tue, 10 Oct 2017 02:39:35 GMT  
		Size: 9.2 MB (9175418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af433a4135621830148cf6d8f95f7d965fe1a29fb6495df9f8cfe1cd6b8f55e9`  
		Last Modified: Tue, 10 Oct 2017 02:39:31 GMT  
		Size: 2.2 KB (2178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854be1a14f98a015a9dc61a40768f5a8aae04ca5aba8cead425de6f613844dda`  
		Last Modified: Tue, 10 Oct 2017 02:39:31 GMT  
		Size: 901.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d3d7fb3c08c9c9d9946305c87ae1215ccafe0fe4bd0d0f72b1f4ba4b4ae1f9`  
		Last Modified: Tue, 10 Oct 2017 11:58:29 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d6cc0f5c8a0421dd60078808a5bec01d338b47b86f5544452ad6dc1b258d4e`  
		Last Modified: Tue, 10 Oct 2017 11:58:30 GMT  
		Size: 3.0 MB (3001549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efefc8c88e7a2e4ee716c2be7ab0395f98bdd6e965ce3712f5f62b88462e495d`  
		Last Modified: Tue, 10 Oct 2017 11:58:29 GMT  
		Size: 58.0 KB (57992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8989ffa42492b4d625479a5913a7a01ddd4d3e5db83fceb4fcff6640042705d6`  
		Last Modified: Tue, 10 Oct 2017 11:58:27 GMT  
		Size: 19.7 KB (19702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4005577c51d0fe74d60ccdcb456033dd15b6afc9f8fc39dac0054b610ba5a199`  
		Last Modified: Tue, 10 Oct 2017 11:58:27 GMT  
		Size: 63.4 KB (63404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ecdc7c6ca755ec8d585a936244835a5879a209389fe27191fae1d9515cc1fe`  
		Last Modified: Tue, 10 Oct 2017 11:58:33 GMT  
		Size: 9.4 MB (9409020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d394f6d500e0aff96f898e6abb09b2ce9f1754d2019b4935d85a3ea82dfde360`  
		Last Modified: Tue, 10 Oct 2017 11:58:27 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be215435fe00639422dfed82e67233664c649b383256aaf7b230ce4f7113059`  
		Last Modified: Tue, 10 Oct 2017 11:58:27 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
