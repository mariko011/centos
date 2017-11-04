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
$ docker pull joomla@sha256:87ecfed28bbfe0df37f50846c6ba1d3efe5e56ffe3042caf73be5e8fdc479245
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3` - linux; amd64

```console
$ docker pull joomla@sha256:569a55922bf008b6cd08e0f7c212252034855017c350b46567bc9a446cd0e7c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.7 MB (172659877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71d405a268e8d3f053483e4ba40acdfd2a149f57c1d9f4ef5cd2bc84e5c1e8cf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 10:11:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Sat, 04 Nov 2017 10:12:05 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 04 Nov 2017 10:12:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 04 Nov 2017 10:12:07 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 04 Nov 2017 10:17:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 10:17:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 04 Nov 2017 10:17:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 04 Nov 2017 10:17:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Sat, 04 Nov 2017 10:17:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 04 Nov 2017 10:17:20 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Sat, 04 Nov 2017 10:17:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 04 Nov 2017 10:17:21 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 04 Nov 2017 10:17:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Sat, 04 Nov 2017 10:17:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 04 Nov 2017 10:17:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 04 Nov 2017 10:17:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 04 Nov 2017 11:23:09 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 04 Nov 2017 11:23:09 GMT
ENV PHP_VERSION=5.6.32
# Sat, 04 Nov 2017 11:23:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Sat, 04 Nov 2017 11:23:10 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Sat, 04 Nov 2017 11:23:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 04 Nov 2017 11:23:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:26:07 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 04 Nov 2017 11:26:08 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:26:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 04 Nov 2017 11:26:08 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:26:08 GMT
WORKDIR /var/www/html
# Sat, 04 Nov 2017 11:26:08 GMT
EXPOSE 80/tcp
# Sat, 04 Nov 2017 11:26:09 GMT
CMD ["apache2-foreground"]
# Sat, 04 Nov 2017 14:07:05 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 04 Nov 2017 14:07:05 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 04 Nov 2017 14:07:06 GMT
RUN a2enmod rewrite
# Sat, 04 Nov 2017 14:07:31 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 04 Nov 2017 14:07:39 GMT
RUN docker-php-ext-install mysqli
# Sat, 04 Nov 2017 14:07:45 GMT
RUN docker-php-ext-install mcrypt
# Sat, 04 Nov 2017 14:08:06 GMT
RUN docker-php-ext-install zip
# Sat, 04 Nov 2017 14:08:06 GMT
VOLUME [/var/www/html]
# Sat, 04 Nov 2017 14:08:07 GMT
ENV JOOMLA_VERSION=3.8.0
# Sat, 04 Nov 2017 14:08:07 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Sat, 04 Nov 2017 14:08:13 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 04 Nov 2017 14:08:13 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Sat, 04 Nov 2017 14:08:14 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Sat, 04 Nov 2017 14:08:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 14:08:15 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8204bc927258ee7d613ed166e9ee95041987ddbfddaf39594e54b403d55dc09`  
		Last Modified: Sat, 04 Nov 2017 11:53:46 GMT  
		Size: 82.5 MB (82497571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fc16bb18e4e7f7c6975e0cbef8949d968f35f0672b4ebd5006afb10c20ca10`  
		Last Modified: Sat, 04 Nov 2017 11:53:17 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31098e61b2ae5029460c46c69ecf26335ffdf5ba5a7e492a104018df593735c9`  
		Last Modified: Sat, 04 Nov 2017 11:55:30 GMT  
		Size: 3.0 MB (3012952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ae64bfd33d38ba595480aead27756418fa63d2e22da09dc0f2673d863eb051`  
		Last Modified: Sat, 04 Nov 2017 11:55:29 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003c1818b354888cc37d66173a56d44d1ff2b838f4b0cc3fffd403569686974c`  
		Last Modified: Sat, 04 Nov 2017 11:55:26 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fd4aeb32ad8234ae032a6ddbd2429dd6f1de2cc734319c8bfd7039b311fa9e`  
		Last Modified: Sat, 04 Nov 2017 11:55:26 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a094df7cedc1113abd270d4413af16b24013ba274fe2420cbbdf90f6c65e4efc`  
		Last Modified: Sat, 04 Nov 2017 11:55:26 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3bf6fc1a51d458237feb9dce24f825474e79effcce1beb49116c63a7fcf56dd`  
		Last Modified: Sat, 04 Nov 2017 12:07:02 GMT  
		Size: 12.8 MB (12818710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad235c26036088afd1c003e632bd42322640d9e796dc0151ae43b28e90d11997`  
		Last Modified: Sat, 04 Nov 2017 12:07:00 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edbf48bcbd7e5223e79aaff94e6c1ac3c4fff2d0cecefe8c80f501a01b0f2f50`  
		Last Modified: Sat, 04 Nov 2017 12:07:05 GMT  
		Size: 9.2 MB (9175640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6ae81d5745d569ea65dbdf9422d1e183bb475548a2d6c7f23729ea86d27fcd`  
		Last Modified: Sat, 04 Nov 2017 12:07:00 GMT  
		Size: 2.2 KB (2182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69838fd876d66a86b81229c3939492767b37e334b37d8101d601c6e14c7d4be1`  
		Last Modified: Sat, 04 Nov 2017 12:07:00 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a5524a7cb4f0fef324c6ce55aaf364bfec41f77e82efdf57d14c7b386ea889`  
		Last Modified: Sat, 04 Nov 2017 14:12:50 GMT  
		Size: 311.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32b669909b1bc189c27747b54700fb83eac6566f1b88a38d41a3879e7ee7e2e`  
		Last Modified: Sat, 04 Nov 2017 14:12:50 GMT  
		Size: 3.0 MB (3001484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0effa94b943a8f4b21b92f553cf6fdc34db9f8685e8d36607569066420c6d7`  
		Last Modified: Sat, 04 Nov 2017 14:12:50 GMT  
		Size: 58.0 KB (57998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c57c26c346029b24456a98ae1bd1accee82aca49b30feb63b20377078643ac`  
		Last Modified: Sat, 04 Nov 2017 14:12:47 GMT  
		Size: 19.7 KB (19705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8a9b80f4da5a8cd130ee2b4751e57f0c7f6b256cb5016f94f82a65d88c4f88`  
		Last Modified: Sat, 04 Nov 2017 14:12:48 GMT  
		Size: 63.4 KB (63413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338497e2405e3f75ec58d51c92eb19330eb7d63e2da779a7f12f3c2f983f2b8a`  
		Last Modified: Sat, 04 Nov 2017 14:12:50 GMT  
		Size: 9.4 MB (9409011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa2d7d03b2043def034b14fc60953d983e5ae8fdba53eb578266b879a39c2d7`  
		Last Modified: Sat, 04 Nov 2017 14:12:48 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd7b0cc509feb335e7bad16c312e56031221eb1e51665283df9b29ea6017dde`  
		Last Modified: Sat, 04 Nov 2017 14:12:47 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.8`

```console
$ docker pull joomla@sha256:87ecfed28bbfe0df37f50846c6ba1d3efe5e56ffe3042caf73be5e8fdc479245
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3.8` - linux; amd64

```console
$ docker pull joomla@sha256:569a55922bf008b6cd08e0f7c212252034855017c350b46567bc9a446cd0e7c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.7 MB (172659877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71d405a268e8d3f053483e4ba40acdfd2a149f57c1d9f4ef5cd2bc84e5c1e8cf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 10:11:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Sat, 04 Nov 2017 10:12:05 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 04 Nov 2017 10:12:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 04 Nov 2017 10:12:07 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 04 Nov 2017 10:17:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 10:17:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 04 Nov 2017 10:17:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 04 Nov 2017 10:17:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Sat, 04 Nov 2017 10:17:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 04 Nov 2017 10:17:20 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Sat, 04 Nov 2017 10:17:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 04 Nov 2017 10:17:21 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 04 Nov 2017 10:17:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Sat, 04 Nov 2017 10:17:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 04 Nov 2017 10:17:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 04 Nov 2017 10:17:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 04 Nov 2017 11:23:09 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 04 Nov 2017 11:23:09 GMT
ENV PHP_VERSION=5.6.32
# Sat, 04 Nov 2017 11:23:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Sat, 04 Nov 2017 11:23:10 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Sat, 04 Nov 2017 11:23:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 04 Nov 2017 11:23:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:26:07 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 04 Nov 2017 11:26:08 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:26:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 04 Nov 2017 11:26:08 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:26:08 GMT
WORKDIR /var/www/html
# Sat, 04 Nov 2017 11:26:08 GMT
EXPOSE 80/tcp
# Sat, 04 Nov 2017 11:26:09 GMT
CMD ["apache2-foreground"]
# Sat, 04 Nov 2017 14:07:05 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 04 Nov 2017 14:07:05 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 04 Nov 2017 14:07:06 GMT
RUN a2enmod rewrite
# Sat, 04 Nov 2017 14:07:31 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 04 Nov 2017 14:07:39 GMT
RUN docker-php-ext-install mysqli
# Sat, 04 Nov 2017 14:07:45 GMT
RUN docker-php-ext-install mcrypt
# Sat, 04 Nov 2017 14:08:06 GMT
RUN docker-php-ext-install zip
# Sat, 04 Nov 2017 14:08:06 GMT
VOLUME [/var/www/html]
# Sat, 04 Nov 2017 14:08:07 GMT
ENV JOOMLA_VERSION=3.8.0
# Sat, 04 Nov 2017 14:08:07 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Sat, 04 Nov 2017 14:08:13 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 04 Nov 2017 14:08:13 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Sat, 04 Nov 2017 14:08:14 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Sat, 04 Nov 2017 14:08:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 14:08:15 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8204bc927258ee7d613ed166e9ee95041987ddbfddaf39594e54b403d55dc09`  
		Last Modified: Sat, 04 Nov 2017 11:53:46 GMT  
		Size: 82.5 MB (82497571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fc16bb18e4e7f7c6975e0cbef8949d968f35f0672b4ebd5006afb10c20ca10`  
		Last Modified: Sat, 04 Nov 2017 11:53:17 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31098e61b2ae5029460c46c69ecf26335ffdf5ba5a7e492a104018df593735c9`  
		Last Modified: Sat, 04 Nov 2017 11:55:30 GMT  
		Size: 3.0 MB (3012952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ae64bfd33d38ba595480aead27756418fa63d2e22da09dc0f2673d863eb051`  
		Last Modified: Sat, 04 Nov 2017 11:55:29 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003c1818b354888cc37d66173a56d44d1ff2b838f4b0cc3fffd403569686974c`  
		Last Modified: Sat, 04 Nov 2017 11:55:26 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fd4aeb32ad8234ae032a6ddbd2429dd6f1de2cc734319c8bfd7039b311fa9e`  
		Last Modified: Sat, 04 Nov 2017 11:55:26 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a094df7cedc1113abd270d4413af16b24013ba274fe2420cbbdf90f6c65e4efc`  
		Last Modified: Sat, 04 Nov 2017 11:55:26 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3bf6fc1a51d458237feb9dce24f825474e79effcce1beb49116c63a7fcf56dd`  
		Last Modified: Sat, 04 Nov 2017 12:07:02 GMT  
		Size: 12.8 MB (12818710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad235c26036088afd1c003e632bd42322640d9e796dc0151ae43b28e90d11997`  
		Last Modified: Sat, 04 Nov 2017 12:07:00 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edbf48bcbd7e5223e79aaff94e6c1ac3c4fff2d0cecefe8c80f501a01b0f2f50`  
		Last Modified: Sat, 04 Nov 2017 12:07:05 GMT  
		Size: 9.2 MB (9175640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6ae81d5745d569ea65dbdf9422d1e183bb475548a2d6c7f23729ea86d27fcd`  
		Last Modified: Sat, 04 Nov 2017 12:07:00 GMT  
		Size: 2.2 KB (2182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69838fd876d66a86b81229c3939492767b37e334b37d8101d601c6e14c7d4be1`  
		Last Modified: Sat, 04 Nov 2017 12:07:00 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a5524a7cb4f0fef324c6ce55aaf364bfec41f77e82efdf57d14c7b386ea889`  
		Last Modified: Sat, 04 Nov 2017 14:12:50 GMT  
		Size: 311.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32b669909b1bc189c27747b54700fb83eac6566f1b88a38d41a3879e7ee7e2e`  
		Last Modified: Sat, 04 Nov 2017 14:12:50 GMT  
		Size: 3.0 MB (3001484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0effa94b943a8f4b21b92f553cf6fdc34db9f8685e8d36607569066420c6d7`  
		Last Modified: Sat, 04 Nov 2017 14:12:50 GMT  
		Size: 58.0 KB (57998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c57c26c346029b24456a98ae1bd1accee82aca49b30feb63b20377078643ac`  
		Last Modified: Sat, 04 Nov 2017 14:12:47 GMT  
		Size: 19.7 KB (19705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8a9b80f4da5a8cd130ee2b4751e57f0c7f6b256cb5016f94f82a65d88c4f88`  
		Last Modified: Sat, 04 Nov 2017 14:12:48 GMT  
		Size: 63.4 KB (63413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338497e2405e3f75ec58d51c92eb19330eb7d63e2da779a7f12f3c2f983f2b8a`  
		Last Modified: Sat, 04 Nov 2017 14:12:50 GMT  
		Size: 9.4 MB (9409011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa2d7d03b2043def034b14fc60953d983e5ae8fdba53eb578266b879a39c2d7`  
		Last Modified: Sat, 04 Nov 2017 14:12:48 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd7b0cc509feb335e7bad16c312e56031221eb1e51665283df9b29ea6017dde`  
		Last Modified: Sat, 04 Nov 2017 14:12:47 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.8.0`

```console
$ docker pull joomla@sha256:87ecfed28bbfe0df37f50846c6ba1d3efe5e56ffe3042caf73be5e8fdc479245
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3.8.0` - linux; amd64

```console
$ docker pull joomla@sha256:569a55922bf008b6cd08e0f7c212252034855017c350b46567bc9a446cd0e7c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.7 MB (172659877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71d405a268e8d3f053483e4ba40acdfd2a149f57c1d9f4ef5cd2bc84e5c1e8cf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 10:11:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Sat, 04 Nov 2017 10:12:05 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 04 Nov 2017 10:12:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 04 Nov 2017 10:12:07 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 04 Nov 2017 10:17:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 10:17:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 04 Nov 2017 10:17:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 04 Nov 2017 10:17:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Sat, 04 Nov 2017 10:17:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 04 Nov 2017 10:17:20 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Sat, 04 Nov 2017 10:17:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 04 Nov 2017 10:17:21 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 04 Nov 2017 10:17:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Sat, 04 Nov 2017 10:17:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 04 Nov 2017 10:17:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 04 Nov 2017 10:17:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 04 Nov 2017 11:23:09 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 04 Nov 2017 11:23:09 GMT
ENV PHP_VERSION=5.6.32
# Sat, 04 Nov 2017 11:23:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Sat, 04 Nov 2017 11:23:10 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Sat, 04 Nov 2017 11:23:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 04 Nov 2017 11:23:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:26:07 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 04 Nov 2017 11:26:08 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:26:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 04 Nov 2017 11:26:08 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:26:08 GMT
WORKDIR /var/www/html
# Sat, 04 Nov 2017 11:26:08 GMT
EXPOSE 80/tcp
# Sat, 04 Nov 2017 11:26:09 GMT
CMD ["apache2-foreground"]
# Sat, 04 Nov 2017 14:07:05 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 04 Nov 2017 14:07:05 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 04 Nov 2017 14:07:06 GMT
RUN a2enmod rewrite
# Sat, 04 Nov 2017 14:07:31 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 04 Nov 2017 14:07:39 GMT
RUN docker-php-ext-install mysqli
# Sat, 04 Nov 2017 14:07:45 GMT
RUN docker-php-ext-install mcrypt
# Sat, 04 Nov 2017 14:08:06 GMT
RUN docker-php-ext-install zip
# Sat, 04 Nov 2017 14:08:06 GMT
VOLUME [/var/www/html]
# Sat, 04 Nov 2017 14:08:07 GMT
ENV JOOMLA_VERSION=3.8.0
# Sat, 04 Nov 2017 14:08:07 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Sat, 04 Nov 2017 14:08:13 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 04 Nov 2017 14:08:13 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Sat, 04 Nov 2017 14:08:14 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Sat, 04 Nov 2017 14:08:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 14:08:15 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8204bc927258ee7d613ed166e9ee95041987ddbfddaf39594e54b403d55dc09`  
		Last Modified: Sat, 04 Nov 2017 11:53:46 GMT  
		Size: 82.5 MB (82497571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fc16bb18e4e7f7c6975e0cbef8949d968f35f0672b4ebd5006afb10c20ca10`  
		Last Modified: Sat, 04 Nov 2017 11:53:17 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31098e61b2ae5029460c46c69ecf26335ffdf5ba5a7e492a104018df593735c9`  
		Last Modified: Sat, 04 Nov 2017 11:55:30 GMT  
		Size: 3.0 MB (3012952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ae64bfd33d38ba595480aead27756418fa63d2e22da09dc0f2673d863eb051`  
		Last Modified: Sat, 04 Nov 2017 11:55:29 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003c1818b354888cc37d66173a56d44d1ff2b838f4b0cc3fffd403569686974c`  
		Last Modified: Sat, 04 Nov 2017 11:55:26 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fd4aeb32ad8234ae032a6ddbd2429dd6f1de2cc734319c8bfd7039b311fa9e`  
		Last Modified: Sat, 04 Nov 2017 11:55:26 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a094df7cedc1113abd270d4413af16b24013ba274fe2420cbbdf90f6c65e4efc`  
		Last Modified: Sat, 04 Nov 2017 11:55:26 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3bf6fc1a51d458237feb9dce24f825474e79effcce1beb49116c63a7fcf56dd`  
		Last Modified: Sat, 04 Nov 2017 12:07:02 GMT  
		Size: 12.8 MB (12818710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad235c26036088afd1c003e632bd42322640d9e796dc0151ae43b28e90d11997`  
		Last Modified: Sat, 04 Nov 2017 12:07:00 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edbf48bcbd7e5223e79aaff94e6c1ac3c4fff2d0cecefe8c80f501a01b0f2f50`  
		Last Modified: Sat, 04 Nov 2017 12:07:05 GMT  
		Size: 9.2 MB (9175640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6ae81d5745d569ea65dbdf9422d1e183bb475548a2d6c7f23729ea86d27fcd`  
		Last Modified: Sat, 04 Nov 2017 12:07:00 GMT  
		Size: 2.2 KB (2182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69838fd876d66a86b81229c3939492767b37e334b37d8101d601c6e14c7d4be1`  
		Last Modified: Sat, 04 Nov 2017 12:07:00 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a5524a7cb4f0fef324c6ce55aaf364bfec41f77e82efdf57d14c7b386ea889`  
		Last Modified: Sat, 04 Nov 2017 14:12:50 GMT  
		Size: 311.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32b669909b1bc189c27747b54700fb83eac6566f1b88a38d41a3879e7ee7e2e`  
		Last Modified: Sat, 04 Nov 2017 14:12:50 GMT  
		Size: 3.0 MB (3001484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0effa94b943a8f4b21b92f553cf6fdc34db9f8685e8d36607569066420c6d7`  
		Last Modified: Sat, 04 Nov 2017 14:12:50 GMT  
		Size: 58.0 KB (57998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c57c26c346029b24456a98ae1bd1accee82aca49b30feb63b20377078643ac`  
		Last Modified: Sat, 04 Nov 2017 14:12:47 GMT  
		Size: 19.7 KB (19705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8a9b80f4da5a8cd130ee2b4751e57f0c7f6b256cb5016f94f82a65d88c4f88`  
		Last Modified: Sat, 04 Nov 2017 14:12:48 GMT  
		Size: 63.4 KB (63413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338497e2405e3f75ec58d51c92eb19330eb7d63e2da779a7f12f3c2f983f2b8a`  
		Last Modified: Sat, 04 Nov 2017 14:12:50 GMT  
		Size: 9.4 MB (9409011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa2d7d03b2043def034b14fc60953d983e5ae8fdba53eb578266b879a39c2d7`  
		Last Modified: Sat, 04 Nov 2017 14:12:48 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd7b0cc509feb335e7bad16c312e56031221eb1e51665283df9b29ea6017dde`  
		Last Modified: Sat, 04 Nov 2017 14:12:47 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.8.0-apache`

```console
$ docker pull joomla@sha256:87ecfed28bbfe0df37f50846c6ba1d3efe5e56ffe3042caf73be5e8fdc479245
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3.8.0-apache` - linux; amd64

```console
$ docker pull joomla@sha256:569a55922bf008b6cd08e0f7c212252034855017c350b46567bc9a446cd0e7c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.7 MB (172659877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71d405a268e8d3f053483e4ba40acdfd2a149f57c1d9f4ef5cd2bc84e5c1e8cf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 10:11:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Sat, 04 Nov 2017 10:12:05 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 04 Nov 2017 10:12:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 04 Nov 2017 10:12:07 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 04 Nov 2017 10:17:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 10:17:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 04 Nov 2017 10:17:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 04 Nov 2017 10:17:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Sat, 04 Nov 2017 10:17:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 04 Nov 2017 10:17:20 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Sat, 04 Nov 2017 10:17:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 04 Nov 2017 10:17:21 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 04 Nov 2017 10:17:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Sat, 04 Nov 2017 10:17:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 04 Nov 2017 10:17:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 04 Nov 2017 10:17:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 04 Nov 2017 11:23:09 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 04 Nov 2017 11:23:09 GMT
ENV PHP_VERSION=5.6.32
# Sat, 04 Nov 2017 11:23:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Sat, 04 Nov 2017 11:23:10 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Sat, 04 Nov 2017 11:23:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 04 Nov 2017 11:23:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:26:07 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 04 Nov 2017 11:26:08 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:26:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 04 Nov 2017 11:26:08 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:26:08 GMT
WORKDIR /var/www/html
# Sat, 04 Nov 2017 11:26:08 GMT
EXPOSE 80/tcp
# Sat, 04 Nov 2017 11:26:09 GMT
CMD ["apache2-foreground"]
# Sat, 04 Nov 2017 14:07:05 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 04 Nov 2017 14:07:05 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 04 Nov 2017 14:07:06 GMT
RUN a2enmod rewrite
# Sat, 04 Nov 2017 14:07:31 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 04 Nov 2017 14:07:39 GMT
RUN docker-php-ext-install mysqli
# Sat, 04 Nov 2017 14:07:45 GMT
RUN docker-php-ext-install mcrypt
# Sat, 04 Nov 2017 14:08:06 GMT
RUN docker-php-ext-install zip
# Sat, 04 Nov 2017 14:08:06 GMT
VOLUME [/var/www/html]
# Sat, 04 Nov 2017 14:08:07 GMT
ENV JOOMLA_VERSION=3.8.0
# Sat, 04 Nov 2017 14:08:07 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Sat, 04 Nov 2017 14:08:13 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 04 Nov 2017 14:08:13 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Sat, 04 Nov 2017 14:08:14 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Sat, 04 Nov 2017 14:08:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 14:08:15 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8204bc927258ee7d613ed166e9ee95041987ddbfddaf39594e54b403d55dc09`  
		Last Modified: Sat, 04 Nov 2017 11:53:46 GMT  
		Size: 82.5 MB (82497571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fc16bb18e4e7f7c6975e0cbef8949d968f35f0672b4ebd5006afb10c20ca10`  
		Last Modified: Sat, 04 Nov 2017 11:53:17 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31098e61b2ae5029460c46c69ecf26335ffdf5ba5a7e492a104018df593735c9`  
		Last Modified: Sat, 04 Nov 2017 11:55:30 GMT  
		Size: 3.0 MB (3012952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ae64bfd33d38ba595480aead27756418fa63d2e22da09dc0f2673d863eb051`  
		Last Modified: Sat, 04 Nov 2017 11:55:29 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003c1818b354888cc37d66173a56d44d1ff2b838f4b0cc3fffd403569686974c`  
		Last Modified: Sat, 04 Nov 2017 11:55:26 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fd4aeb32ad8234ae032a6ddbd2429dd6f1de2cc734319c8bfd7039b311fa9e`  
		Last Modified: Sat, 04 Nov 2017 11:55:26 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a094df7cedc1113abd270d4413af16b24013ba274fe2420cbbdf90f6c65e4efc`  
		Last Modified: Sat, 04 Nov 2017 11:55:26 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3bf6fc1a51d458237feb9dce24f825474e79effcce1beb49116c63a7fcf56dd`  
		Last Modified: Sat, 04 Nov 2017 12:07:02 GMT  
		Size: 12.8 MB (12818710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad235c26036088afd1c003e632bd42322640d9e796dc0151ae43b28e90d11997`  
		Last Modified: Sat, 04 Nov 2017 12:07:00 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edbf48bcbd7e5223e79aaff94e6c1ac3c4fff2d0cecefe8c80f501a01b0f2f50`  
		Last Modified: Sat, 04 Nov 2017 12:07:05 GMT  
		Size: 9.2 MB (9175640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6ae81d5745d569ea65dbdf9422d1e183bb475548a2d6c7f23729ea86d27fcd`  
		Last Modified: Sat, 04 Nov 2017 12:07:00 GMT  
		Size: 2.2 KB (2182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69838fd876d66a86b81229c3939492767b37e334b37d8101d601c6e14c7d4be1`  
		Last Modified: Sat, 04 Nov 2017 12:07:00 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a5524a7cb4f0fef324c6ce55aaf364bfec41f77e82efdf57d14c7b386ea889`  
		Last Modified: Sat, 04 Nov 2017 14:12:50 GMT  
		Size: 311.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32b669909b1bc189c27747b54700fb83eac6566f1b88a38d41a3879e7ee7e2e`  
		Last Modified: Sat, 04 Nov 2017 14:12:50 GMT  
		Size: 3.0 MB (3001484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0effa94b943a8f4b21b92f553cf6fdc34db9f8685e8d36607569066420c6d7`  
		Last Modified: Sat, 04 Nov 2017 14:12:50 GMT  
		Size: 58.0 KB (57998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c57c26c346029b24456a98ae1bd1accee82aca49b30feb63b20377078643ac`  
		Last Modified: Sat, 04 Nov 2017 14:12:47 GMT  
		Size: 19.7 KB (19705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8a9b80f4da5a8cd130ee2b4751e57f0c7f6b256cb5016f94f82a65d88c4f88`  
		Last Modified: Sat, 04 Nov 2017 14:12:48 GMT  
		Size: 63.4 KB (63413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338497e2405e3f75ec58d51c92eb19330eb7d63e2da779a7f12f3c2f983f2b8a`  
		Last Modified: Sat, 04 Nov 2017 14:12:50 GMT  
		Size: 9.4 MB (9409011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa2d7d03b2043def034b14fc60953d983e5ae8fdba53eb578266b879a39c2d7`  
		Last Modified: Sat, 04 Nov 2017 14:12:48 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd7b0cc509feb335e7bad16c312e56031221eb1e51665283df9b29ea6017dde`  
		Last Modified: Sat, 04 Nov 2017 14:12:47 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.8.0-apache-php7`

```console
$ docker pull joomla@sha256:f58c0523a8145ebe074988ce1542e0ff947536efd08d22d55f19d92155c95105
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3.8.0-apache-php7` - linux; amd64

```console
$ docker pull joomla@sha256:c5557e978c653d5c4cf927a2379f46853b454454e9f3fc1975aa2043be6b53a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.2 MB (176200914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce1730431cafece144bbbe83425208549fae15e55e249a470eedae0444559136`
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
# Thu, 26 Oct 2017 20:09:20 GMT
ENV PHP_VERSION=7.0.25
# Thu, 26 Oct 2017 20:09:21 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.25.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.25.tar.xz.asc/from/this/mirror
# Thu, 26 Oct 2017 20:09:21 GMT
ENV PHP_SHA256=5cc14bd20fb2226f6d34465662425cd100441bde9042ea1cef2e4506d6ded8cc PHP_MD5=
# Thu, 26 Oct 2017 20:09:43 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 26 Oct 2017 20:09:43 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 26 Oct 2017 20:12:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 26 Oct 2017 20:12:09 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Thu, 26 Oct 2017 20:12:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 26 Oct 2017 20:12:09 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 26 Oct 2017 20:12:10 GMT
WORKDIR /var/www/html
# Thu, 26 Oct 2017 20:12:10 GMT
EXPOSE 80/tcp
# Thu, 26 Oct 2017 20:12:10 GMT
CMD ["apache2-foreground"]
# Sat, 04 Nov 2017 14:08:30 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 04 Nov 2017 14:08:30 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 04 Nov 2017 14:08:31 GMT
RUN a2enmod rewrite
# Sat, 04 Nov 2017 14:09:02 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 04 Nov 2017 14:09:11 GMT
RUN docker-php-ext-install mysqli
# Sat, 04 Nov 2017 14:09:17 GMT
RUN docker-php-ext-install mcrypt
# Sat, 04 Nov 2017 14:09:38 GMT
RUN docker-php-ext-install zip
# Sat, 04 Nov 2017 14:09:38 GMT
VOLUME [/var/www/html]
# Sat, 04 Nov 2017 14:09:38 GMT
ENV JOOMLA_VERSION=3.8.0
# Sat, 04 Nov 2017 14:09:38 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Sat, 04 Nov 2017 14:09:44 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 04 Nov 2017 14:09:46 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Sat, 04 Nov 2017 14:09:46 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Sat, 04 Nov 2017 14:09:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 14:09:47 GMT
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
	-	`sha256:32dfc8ebc5e12dc341a546efe2041095b06c11ff7925daa7d5789ac29cbccdd4`  
		Last Modified: Thu, 26 Oct 2017 20:43:49 GMT  
		Size: 12.3 MB (12318613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616a2f4968fc5e04c868a2a3abe72ee40a0fb21fed4e80a5b01e098881a81cf2`  
		Last Modified: Thu, 26 Oct 2017 20:43:48 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2f3b872c113a206c11bea8ee4d1b07fb9ea41ebd6b60f31c4b4a5666c32ba6`  
		Last Modified: Thu, 26 Oct 2017 20:44:10 GMT  
		Size: 13.2 MB (13214797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e47cd91486329d8190b68b42200e0befd01acede5dcb4ed3226d60cb6f29fe`  
		Last Modified: Thu, 26 Oct 2017 20:43:48 GMT  
		Size: 2.2 KB (2182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd7bd501ed7aaf592c54981f7255aa3dc3bba99ffc95e7a05c8358eebc2b918`  
		Last Modified: Thu, 26 Oct 2017 20:43:47 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0313ef4b5d89ac58f03dd7667c0c994074f419fcb0585214a9b7dd9ec5fdf80`  
		Last Modified: Sat, 04 Nov 2017 14:13:41 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32eb2563a4de8cf7f1a3e4c027799fae64a52227119fcfd138130294c79d3403`  
		Last Modified: Sat, 04 Nov 2017 14:13:41 GMT  
		Size: 3.0 MB (2997032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a069817eb542267bde49fdfff9a9c3a098da0dbbb0332de711e9e146c94e506`  
		Last Modified: Sat, 04 Nov 2017 14:13:41 GMT  
		Size: 56.4 KB (56410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cc031d7d17e8aefe9364098646a3d57da7f4a3d31078d01b3c8c339948740a`  
		Last Modified: Sat, 04 Nov 2017 14:13:39 GMT  
		Size: 18.3 KB (18293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb80c5776e5d1f86743605fdaeab9458ac1a850a6d7fdb5c93c1bd88672b6820`  
		Last Modified: Sat, 04 Nov 2017 14:13:39 GMT  
		Size: 72.8 KB (72763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d21e7da67c447269610a834a2c4f296e20c71bc6dcd4736ecef0f7f30b9a608`  
		Last Modified: Sat, 04 Nov 2017 14:13:41 GMT  
		Size: 9.4 MB (9409012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6af9d61172af3da47b9fad8ae5435257a15d02d3c5a05a5836bd38da4ed82e0`  
		Last Modified: Sat, 04 Nov 2017 14:13:39 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac8db915f665869b9f1122c3436feceba964e3b378eeb3cfcc57623a78628211`  
		Last Modified: Sat, 04 Nov 2017 14:13:38 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.8.0-fpm`

```console
$ docker pull joomla@sha256:097b0851b84439e645dcee21f694d44d5b2ce3068c4690b4f56dd3cc2ef188cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3.8.0-fpm` - linux; amd64

```console
$ docker pull joomla@sha256:861d95cf6e402aaa08abc6cae9cc37d4b9689ff347ce4bfc0b12803c60957d68
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.3 MB (169289232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69ac8150908f3c602357385f35040199367c6ce9e629185e8b4b1a56d4db3f5b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 10:11:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Sat, 04 Nov 2017 10:12:05 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 04 Nov 2017 10:12:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 04 Nov 2017 10:12:07 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 04 Nov 2017 10:21:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Sat, 04 Nov 2017 10:21:00 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 04 Nov 2017 10:21:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 04 Nov 2017 10:21:01 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 04 Nov 2017 11:26:18 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 04 Nov 2017 11:26:18 GMT
ENV PHP_VERSION=5.6.32
# Sat, 04 Nov 2017 11:26:18 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Sat, 04 Nov 2017 11:26:18 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Sat, 04 Nov 2017 11:26:32 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 04 Nov 2017 11:26:33 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:30:30 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 04 Nov 2017 11:30:31 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:30:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 04 Nov 2017 11:30:31 GMT
WORKDIR /var/www/html
# Sat, 04 Nov 2017 11:30:32 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 04 Nov 2017 11:30:32 GMT
EXPOSE 9000/tcp
# Sat, 04 Nov 2017 11:30:32 GMT
CMD ["php-fpm"]
# Sat, 04 Nov 2017 14:09:53 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 04 Nov 2017 14:09:53 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 04 Nov 2017 14:10:18 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 04 Nov 2017 14:10:26 GMT
RUN docker-php-ext-install mysqli
# Sat, 04 Nov 2017 14:10:32 GMT
RUN docker-php-ext-install mcrypt
# Sat, 04 Nov 2017 14:10:53 GMT
RUN docker-php-ext-install zip
# Sat, 04 Nov 2017 14:10:54 GMT
VOLUME [/var/www/html]
# Sat, 04 Nov 2017 14:10:54 GMT
ENV JOOMLA_VERSION=3.8.0
# Sat, 04 Nov 2017 14:10:54 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Sat, 04 Nov 2017 14:11:03 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 04 Nov 2017 14:11:03 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Sat, 04 Nov 2017 14:11:04 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Sat, 04 Nov 2017 14:11:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 14:11:04 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8204bc927258ee7d613ed166e9ee95041987ddbfddaf39594e54b403d55dc09`  
		Last Modified: Sat, 04 Nov 2017 11:53:46 GMT  
		Size: 82.5 MB (82497571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fc16bb18e4e7f7c6975e0cbef8949d968f35f0672b4ebd5006afb10c20ca10`  
		Last Modified: Sat, 04 Nov 2017 11:53:17 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e373d95597369ee3b074ccc1db856f2910557cbca2420e5675b9f0c74cb33ce8`  
		Last Modified: Sat, 04 Nov 2017 12:07:47 GMT  
		Size: 12.8 MB (12801459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea72132e8640652012ee0a59f8dcc5e493745e50b3c8deb245ead16c6be090d7`  
		Last Modified: Sat, 04 Nov 2017 12:07:43 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce16a7a57481224d6898080429c90f3bbdd009d19b9883e01f3ac952d78063e`  
		Last Modified: Sat, 04 Nov 2017 12:07:47 GMT  
		Size: 8.9 MB (8850979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8eeffa923158c860c62ebc0ef2f33101db91733210d9442fc9d8c736c07f1af`  
		Last Modified: Sat, 04 Nov 2017 12:07:43 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af1d66a9b9274dffe11f158216812564dfe0a9ef6986acc4986dd5397c97844`  
		Last Modified: Sat, 04 Nov 2017 12:07:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb42ac0b9f7c5e229ef66f30f36ccec9a2b79685e8a043456096a95c25ff5eee`  
		Last Modified: Sat, 04 Nov 2017 12:07:43 GMT  
		Size: 7.6 KB (7617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358967860a81909194265f50952c06a3abef19e4388899cc4313f0de4b309e7a`  
		Last Modified: Sat, 04 Nov 2017 14:14:10 GMT  
		Size: 3.0 MB (2981563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514609f516f1da59fe2688b8f61e71fce09595ab48b3ea9963f44a2aecdce688`  
		Last Modified: Sat, 04 Nov 2017 14:14:10 GMT  
		Size: 58.0 KB (57998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c2cf62519b1e32d6f98ba73a8f646ea203c4b0186cbfdeec74d1fca9ef0a9c`  
		Last Modified: Sat, 04 Nov 2017 14:14:07 GMT  
		Size: 19.7 KB (19707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e558b1f6dd0a744786c4affe5795fd65a6224fac864617749478424d02f187f0`  
		Last Modified: Sat, 04 Nov 2017 14:14:08 GMT  
		Size: 63.4 KB (63409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f1853c8674622f8eaf9219821bd4b2f830367e64b72a51fca9361eee57c414`  
		Last Modified: Sat, 04 Nov 2017 14:14:10 GMT  
		Size: 9.4 MB (9409020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef11c56a7828961b5e1f58302feb579e9d7fba741a6af82aa2f3acf43f90fa0`  
		Last Modified: Sat, 04 Nov 2017 14:14:07 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92bcca28723fe712540002fdebebe177bb3c3ce8bc45cfcd1b4d9e88d66b1aa`  
		Last Modified: Sat, 04 Nov 2017 14:14:08 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.8.0-fpm-php7`

```console
$ docker pull joomla@sha256:bcd900dde07b678cb688dfb6a90a01e2310eb09fedf0bae4f471a7ef8cff2dca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3.8.0-fpm-php7` - linux; amd64

```console
$ docker pull joomla@sha256:a955141d5c743f070634d77537362ad75263a3c270f80f406f672daa5961947f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.9 MB (172850107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78108f91cff7b098e4fc87a543cd17de985243f3222a72fa91fc07220a3082eb`
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
# Thu, 26 Oct 2017 20:17:22 GMT
ENV PHP_VERSION=7.0.25
# Thu, 26 Oct 2017 20:17:22 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.25.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.25.tar.xz.asc/from/this/mirror
# Thu, 26 Oct 2017 20:17:22 GMT
ENV PHP_SHA256=5cc14bd20fb2226f6d34465662425cd100441bde9042ea1cef2e4506d6ded8cc PHP_MD5=
# Thu, 26 Oct 2017 20:17:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 26 Oct 2017 20:17:44 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 26 Oct 2017 20:21:11 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 26 Oct 2017 20:21:11 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Thu, 26 Oct 2017 20:21:12 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 26 Oct 2017 20:21:12 GMT
WORKDIR /var/www/html
# Thu, 26 Oct 2017 20:21:13 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 26 Oct 2017 20:21:13 GMT
EXPOSE 9000/tcp
# Thu, 26 Oct 2017 20:21:13 GMT
CMD ["php-fpm"]
# Sat, 04 Nov 2017 14:11:17 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 04 Nov 2017 14:11:17 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 04 Nov 2017 14:11:44 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 04 Nov 2017 14:11:53 GMT
RUN docker-php-ext-install mysqli
# Sat, 04 Nov 2017 14:11:59 GMT
RUN docker-php-ext-install mcrypt
# Sat, 04 Nov 2017 14:12:19 GMT
RUN docker-php-ext-install zip
# Sat, 04 Nov 2017 14:12:20 GMT
VOLUME [/var/www/html]
# Sat, 04 Nov 2017 14:12:20 GMT
ENV JOOMLA_VERSION=3.8.0
# Sat, 04 Nov 2017 14:12:20 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Sat, 04 Nov 2017 14:12:27 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 04 Nov 2017 14:12:28 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Sat, 04 Nov 2017 14:12:28 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Sat, 04 Nov 2017 14:12:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 14:12:28 GMT
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
	-	`sha256:004eec0f86c3319872d0646d26598db3396b05ad5b36d8c7d7b16ecab54dcf40`  
		Last Modified: Thu, 26 Oct 2017 20:44:55 GMT  
		Size: 12.3 MB (12301410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c31b10a6fd14173c576305a8fea0eae3c18a0a93125e897b482f33d0fd69334`  
		Last Modified: Thu, 26 Oct 2017 20:44:49 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:411382ec869c7540703ae7771f3ec265474383ae0142ef0686d932617a3d87d2`  
		Last Modified: Thu, 26 Oct 2017 20:44:53 GMT  
		Size: 12.9 MB (12910188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d027256730f7d5eb3c303e52644ee4ba35d77f83fb0f1ffc484149fb0f37f2`  
		Last Modified: Thu, 26 Oct 2017 20:44:50 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f5f403318d639a158b9d455ccb2ea6b4cae912fcfca4a451d8202a42de4d53`  
		Last Modified: Thu, 26 Oct 2017 20:44:49 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfafe4900306ffdd3db378306a326c88e32cbf62fe5bd950f6c7ce741dba4bc8`  
		Last Modified: Thu, 26 Oct 2017 20:44:49 GMT  
		Size: 7.7 KB (7676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aeeeb1f6461ff01bd4e466e2f2364ac175945664d5dec649356c6db42ae59fb`  
		Last Modified: Sat, 04 Nov 2017 14:14:43 GMT  
		Size: 3.0 MB (2976771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148c5deb6ba2b91144670d2dca8c51a5a96a9a1677ab7b7f54be74a5362334aa`  
		Last Modified: Sat, 04 Nov 2017 14:14:42 GMT  
		Size: 56.4 KB (56406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1fce2e10b962d6ea3c4d1a07fef74fa759b12e5cb838ca4daf7959aee47589`  
		Last Modified: Sat, 04 Nov 2017 14:14:40 GMT  
		Size: 18.3 KB (18294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5f751aea9ea191e50393552f631cfdcd64264c80a20fb9153c176e0900b445`  
		Last Modified: Sat, 04 Nov 2017 14:14:41 GMT  
		Size: 72.8 KB (72765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3956530bdda0a45385a9e2f61819b0c8a05a3cfe6446c9186e02e23ff13485f`  
		Last Modified: Sat, 04 Nov 2017 14:14:43 GMT  
		Size: 9.4 MB (9409012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2dcd577e2f0a20e514095cb43a515bb80499e90c1e82d188660ab6bc0f05592`  
		Last Modified: Sat, 04 Nov 2017 14:14:40 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bb2d74922f7ffc815f2945941107ad02a9673ad4d8042c1108fb4bdf2d1e5c0`  
		Last Modified: Sat, 04 Nov 2017 14:14:40 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.8-apache`

```console
$ docker pull joomla@sha256:87ecfed28bbfe0df37f50846c6ba1d3efe5e56ffe3042caf73be5e8fdc479245
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3.8-apache` - linux; amd64

```console
$ docker pull joomla@sha256:569a55922bf008b6cd08e0f7c212252034855017c350b46567bc9a446cd0e7c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.7 MB (172659877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71d405a268e8d3f053483e4ba40acdfd2a149f57c1d9f4ef5cd2bc84e5c1e8cf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 10:11:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Sat, 04 Nov 2017 10:12:05 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 04 Nov 2017 10:12:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 04 Nov 2017 10:12:07 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 04 Nov 2017 10:17:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 10:17:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 04 Nov 2017 10:17:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 04 Nov 2017 10:17:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Sat, 04 Nov 2017 10:17:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 04 Nov 2017 10:17:20 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Sat, 04 Nov 2017 10:17:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 04 Nov 2017 10:17:21 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 04 Nov 2017 10:17:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Sat, 04 Nov 2017 10:17:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 04 Nov 2017 10:17:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 04 Nov 2017 10:17:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 04 Nov 2017 11:23:09 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 04 Nov 2017 11:23:09 GMT
ENV PHP_VERSION=5.6.32
# Sat, 04 Nov 2017 11:23:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Sat, 04 Nov 2017 11:23:10 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Sat, 04 Nov 2017 11:23:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 04 Nov 2017 11:23:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:26:07 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 04 Nov 2017 11:26:08 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:26:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 04 Nov 2017 11:26:08 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:26:08 GMT
WORKDIR /var/www/html
# Sat, 04 Nov 2017 11:26:08 GMT
EXPOSE 80/tcp
# Sat, 04 Nov 2017 11:26:09 GMT
CMD ["apache2-foreground"]
# Sat, 04 Nov 2017 14:07:05 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 04 Nov 2017 14:07:05 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 04 Nov 2017 14:07:06 GMT
RUN a2enmod rewrite
# Sat, 04 Nov 2017 14:07:31 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 04 Nov 2017 14:07:39 GMT
RUN docker-php-ext-install mysqli
# Sat, 04 Nov 2017 14:07:45 GMT
RUN docker-php-ext-install mcrypt
# Sat, 04 Nov 2017 14:08:06 GMT
RUN docker-php-ext-install zip
# Sat, 04 Nov 2017 14:08:06 GMT
VOLUME [/var/www/html]
# Sat, 04 Nov 2017 14:08:07 GMT
ENV JOOMLA_VERSION=3.8.0
# Sat, 04 Nov 2017 14:08:07 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Sat, 04 Nov 2017 14:08:13 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 04 Nov 2017 14:08:13 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Sat, 04 Nov 2017 14:08:14 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Sat, 04 Nov 2017 14:08:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 14:08:15 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8204bc927258ee7d613ed166e9ee95041987ddbfddaf39594e54b403d55dc09`  
		Last Modified: Sat, 04 Nov 2017 11:53:46 GMT  
		Size: 82.5 MB (82497571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fc16bb18e4e7f7c6975e0cbef8949d968f35f0672b4ebd5006afb10c20ca10`  
		Last Modified: Sat, 04 Nov 2017 11:53:17 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31098e61b2ae5029460c46c69ecf26335ffdf5ba5a7e492a104018df593735c9`  
		Last Modified: Sat, 04 Nov 2017 11:55:30 GMT  
		Size: 3.0 MB (3012952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ae64bfd33d38ba595480aead27756418fa63d2e22da09dc0f2673d863eb051`  
		Last Modified: Sat, 04 Nov 2017 11:55:29 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003c1818b354888cc37d66173a56d44d1ff2b838f4b0cc3fffd403569686974c`  
		Last Modified: Sat, 04 Nov 2017 11:55:26 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fd4aeb32ad8234ae032a6ddbd2429dd6f1de2cc734319c8bfd7039b311fa9e`  
		Last Modified: Sat, 04 Nov 2017 11:55:26 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a094df7cedc1113abd270d4413af16b24013ba274fe2420cbbdf90f6c65e4efc`  
		Last Modified: Sat, 04 Nov 2017 11:55:26 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3bf6fc1a51d458237feb9dce24f825474e79effcce1beb49116c63a7fcf56dd`  
		Last Modified: Sat, 04 Nov 2017 12:07:02 GMT  
		Size: 12.8 MB (12818710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad235c26036088afd1c003e632bd42322640d9e796dc0151ae43b28e90d11997`  
		Last Modified: Sat, 04 Nov 2017 12:07:00 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edbf48bcbd7e5223e79aaff94e6c1ac3c4fff2d0cecefe8c80f501a01b0f2f50`  
		Last Modified: Sat, 04 Nov 2017 12:07:05 GMT  
		Size: 9.2 MB (9175640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6ae81d5745d569ea65dbdf9422d1e183bb475548a2d6c7f23729ea86d27fcd`  
		Last Modified: Sat, 04 Nov 2017 12:07:00 GMT  
		Size: 2.2 KB (2182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69838fd876d66a86b81229c3939492767b37e334b37d8101d601c6e14c7d4be1`  
		Last Modified: Sat, 04 Nov 2017 12:07:00 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a5524a7cb4f0fef324c6ce55aaf364bfec41f77e82efdf57d14c7b386ea889`  
		Last Modified: Sat, 04 Nov 2017 14:12:50 GMT  
		Size: 311.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32b669909b1bc189c27747b54700fb83eac6566f1b88a38d41a3879e7ee7e2e`  
		Last Modified: Sat, 04 Nov 2017 14:12:50 GMT  
		Size: 3.0 MB (3001484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0effa94b943a8f4b21b92f553cf6fdc34db9f8685e8d36607569066420c6d7`  
		Last Modified: Sat, 04 Nov 2017 14:12:50 GMT  
		Size: 58.0 KB (57998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c57c26c346029b24456a98ae1bd1accee82aca49b30feb63b20377078643ac`  
		Last Modified: Sat, 04 Nov 2017 14:12:47 GMT  
		Size: 19.7 KB (19705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8a9b80f4da5a8cd130ee2b4751e57f0c7f6b256cb5016f94f82a65d88c4f88`  
		Last Modified: Sat, 04 Nov 2017 14:12:48 GMT  
		Size: 63.4 KB (63413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338497e2405e3f75ec58d51c92eb19330eb7d63e2da779a7f12f3c2f983f2b8a`  
		Last Modified: Sat, 04 Nov 2017 14:12:50 GMT  
		Size: 9.4 MB (9409011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa2d7d03b2043def034b14fc60953d983e5ae8fdba53eb578266b879a39c2d7`  
		Last Modified: Sat, 04 Nov 2017 14:12:48 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd7b0cc509feb335e7bad16c312e56031221eb1e51665283df9b29ea6017dde`  
		Last Modified: Sat, 04 Nov 2017 14:12:47 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.8-apache-php7`

```console
$ docker pull joomla@sha256:f58c0523a8145ebe074988ce1542e0ff947536efd08d22d55f19d92155c95105
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3.8-apache-php7` - linux; amd64

```console
$ docker pull joomla@sha256:c5557e978c653d5c4cf927a2379f46853b454454e9f3fc1975aa2043be6b53a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.2 MB (176200914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce1730431cafece144bbbe83425208549fae15e55e249a470eedae0444559136`
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
# Thu, 26 Oct 2017 20:09:20 GMT
ENV PHP_VERSION=7.0.25
# Thu, 26 Oct 2017 20:09:21 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.25.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.25.tar.xz.asc/from/this/mirror
# Thu, 26 Oct 2017 20:09:21 GMT
ENV PHP_SHA256=5cc14bd20fb2226f6d34465662425cd100441bde9042ea1cef2e4506d6ded8cc PHP_MD5=
# Thu, 26 Oct 2017 20:09:43 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 26 Oct 2017 20:09:43 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 26 Oct 2017 20:12:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 26 Oct 2017 20:12:09 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Thu, 26 Oct 2017 20:12:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 26 Oct 2017 20:12:09 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 26 Oct 2017 20:12:10 GMT
WORKDIR /var/www/html
# Thu, 26 Oct 2017 20:12:10 GMT
EXPOSE 80/tcp
# Thu, 26 Oct 2017 20:12:10 GMT
CMD ["apache2-foreground"]
# Sat, 04 Nov 2017 14:08:30 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 04 Nov 2017 14:08:30 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 04 Nov 2017 14:08:31 GMT
RUN a2enmod rewrite
# Sat, 04 Nov 2017 14:09:02 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 04 Nov 2017 14:09:11 GMT
RUN docker-php-ext-install mysqli
# Sat, 04 Nov 2017 14:09:17 GMT
RUN docker-php-ext-install mcrypt
# Sat, 04 Nov 2017 14:09:38 GMT
RUN docker-php-ext-install zip
# Sat, 04 Nov 2017 14:09:38 GMT
VOLUME [/var/www/html]
# Sat, 04 Nov 2017 14:09:38 GMT
ENV JOOMLA_VERSION=3.8.0
# Sat, 04 Nov 2017 14:09:38 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Sat, 04 Nov 2017 14:09:44 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 04 Nov 2017 14:09:46 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Sat, 04 Nov 2017 14:09:46 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Sat, 04 Nov 2017 14:09:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 14:09:47 GMT
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
	-	`sha256:32dfc8ebc5e12dc341a546efe2041095b06c11ff7925daa7d5789ac29cbccdd4`  
		Last Modified: Thu, 26 Oct 2017 20:43:49 GMT  
		Size: 12.3 MB (12318613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616a2f4968fc5e04c868a2a3abe72ee40a0fb21fed4e80a5b01e098881a81cf2`  
		Last Modified: Thu, 26 Oct 2017 20:43:48 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2f3b872c113a206c11bea8ee4d1b07fb9ea41ebd6b60f31c4b4a5666c32ba6`  
		Last Modified: Thu, 26 Oct 2017 20:44:10 GMT  
		Size: 13.2 MB (13214797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e47cd91486329d8190b68b42200e0befd01acede5dcb4ed3226d60cb6f29fe`  
		Last Modified: Thu, 26 Oct 2017 20:43:48 GMT  
		Size: 2.2 KB (2182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd7bd501ed7aaf592c54981f7255aa3dc3bba99ffc95e7a05c8358eebc2b918`  
		Last Modified: Thu, 26 Oct 2017 20:43:47 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0313ef4b5d89ac58f03dd7667c0c994074f419fcb0585214a9b7dd9ec5fdf80`  
		Last Modified: Sat, 04 Nov 2017 14:13:41 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32eb2563a4de8cf7f1a3e4c027799fae64a52227119fcfd138130294c79d3403`  
		Last Modified: Sat, 04 Nov 2017 14:13:41 GMT  
		Size: 3.0 MB (2997032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a069817eb542267bde49fdfff9a9c3a098da0dbbb0332de711e9e146c94e506`  
		Last Modified: Sat, 04 Nov 2017 14:13:41 GMT  
		Size: 56.4 KB (56410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cc031d7d17e8aefe9364098646a3d57da7f4a3d31078d01b3c8c339948740a`  
		Last Modified: Sat, 04 Nov 2017 14:13:39 GMT  
		Size: 18.3 KB (18293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb80c5776e5d1f86743605fdaeab9458ac1a850a6d7fdb5c93c1bd88672b6820`  
		Last Modified: Sat, 04 Nov 2017 14:13:39 GMT  
		Size: 72.8 KB (72763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d21e7da67c447269610a834a2c4f296e20c71bc6dcd4736ecef0f7f30b9a608`  
		Last Modified: Sat, 04 Nov 2017 14:13:41 GMT  
		Size: 9.4 MB (9409012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6af9d61172af3da47b9fad8ae5435257a15d02d3c5a05a5836bd38da4ed82e0`  
		Last Modified: Sat, 04 Nov 2017 14:13:39 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac8db915f665869b9f1122c3436feceba964e3b378eeb3cfcc57623a78628211`  
		Last Modified: Sat, 04 Nov 2017 14:13:38 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.8-fpm`

```console
$ docker pull joomla@sha256:097b0851b84439e645dcee21f694d44d5b2ce3068c4690b4f56dd3cc2ef188cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3.8-fpm` - linux; amd64

```console
$ docker pull joomla@sha256:861d95cf6e402aaa08abc6cae9cc37d4b9689ff347ce4bfc0b12803c60957d68
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.3 MB (169289232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69ac8150908f3c602357385f35040199367c6ce9e629185e8b4b1a56d4db3f5b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 10:11:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Sat, 04 Nov 2017 10:12:05 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 04 Nov 2017 10:12:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 04 Nov 2017 10:12:07 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 04 Nov 2017 10:21:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Sat, 04 Nov 2017 10:21:00 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 04 Nov 2017 10:21:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 04 Nov 2017 10:21:01 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 04 Nov 2017 11:26:18 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 04 Nov 2017 11:26:18 GMT
ENV PHP_VERSION=5.6.32
# Sat, 04 Nov 2017 11:26:18 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Sat, 04 Nov 2017 11:26:18 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Sat, 04 Nov 2017 11:26:32 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 04 Nov 2017 11:26:33 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:30:30 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 04 Nov 2017 11:30:31 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:30:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 04 Nov 2017 11:30:31 GMT
WORKDIR /var/www/html
# Sat, 04 Nov 2017 11:30:32 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 04 Nov 2017 11:30:32 GMT
EXPOSE 9000/tcp
# Sat, 04 Nov 2017 11:30:32 GMT
CMD ["php-fpm"]
# Sat, 04 Nov 2017 14:09:53 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 04 Nov 2017 14:09:53 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 04 Nov 2017 14:10:18 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 04 Nov 2017 14:10:26 GMT
RUN docker-php-ext-install mysqli
# Sat, 04 Nov 2017 14:10:32 GMT
RUN docker-php-ext-install mcrypt
# Sat, 04 Nov 2017 14:10:53 GMT
RUN docker-php-ext-install zip
# Sat, 04 Nov 2017 14:10:54 GMT
VOLUME [/var/www/html]
# Sat, 04 Nov 2017 14:10:54 GMT
ENV JOOMLA_VERSION=3.8.0
# Sat, 04 Nov 2017 14:10:54 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Sat, 04 Nov 2017 14:11:03 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 04 Nov 2017 14:11:03 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Sat, 04 Nov 2017 14:11:04 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Sat, 04 Nov 2017 14:11:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 14:11:04 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8204bc927258ee7d613ed166e9ee95041987ddbfddaf39594e54b403d55dc09`  
		Last Modified: Sat, 04 Nov 2017 11:53:46 GMT  
		Size: 82.5 MB (82497571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fc16bb18e4e7f7c6975e0cbef8949d968f35f0672b4ebd5006afb10c20ca10`  
		Last Modified: Sat, 04 Nov 2017 11:53:17 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e373d95597369ee3b074ccc1db856f2910557cbca2420e5675b9f0c74cb33ce8`  
		Last Modified: Sat, 04 Nov 2017 12:07:47 GMT  
		Size: 12.8 MB (12801459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea72132e8640652012ee0a59f8dcc5e493745e50b3c8deb245ead16c6be090d7`  
		Last Modified: Sat, 04 Nov 2017 12:07:43 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce16a7a57481224d6898080429c90f3bbdd009d19b9883e01f3ac952d78063e`  
		Last Modified: Sat, 04 Nov 2017 12:07:47 GMT  
		Size: 8.9 MB (8850979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8eeffa923158c860c62ebc0ef2f33101db91733210d9442fc9d8c736c07f1af`  
		Last Modified: Sat, 04 Nov 2017 12:07:43 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af1d66a9b9274dffe11f158216812564dfe0a9ef6986acc4986dd5397c97844`  
		Last Modified: Sat, 04 Nov 2017 12:07:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb42ac0b9f7c5e229ef66f30f36ccec9a2b79685e8a043456096a95c25ff5eee`  
		Last Modified: Sat, 04 Nov 2017 12:07:43 GMT  
		Size: 7.6 KB (7617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358967860a81909194265f50952c06a3abef19e4388899cc4313f0de4b309e7a`  
		Last Modified: Sat, 04 Nov 2017 14:14:10 GMT  
		Size: 3.0 MB (2981563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514609f516f1da59fe2688b8f61e71fce09595ab48b3ea9963f44a2aecdce688`  
		Last Modified: Sat, 04 Nov 2017 14:14:10 GMT  
		Size: 58.0 KB (57998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c2cf62519b1e32d6f98ba73a8f646ea203c4b0186cbfdeec74d1fca9ef0a9c`  
		Last Modified: Sat, 04 Nov 2017 14:14:07 GMT  
		Size: 19.7 KB (19707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e558b1f6dd0a744786c4affe5795fd65a6224fac864617749478424d02f187f0`  
		Last Modified: Sat, 04 Nov 2017 14:14:08 GMT  
		Size: 63.4 KB (63409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f1853c8674622f8eaf9219821bd4b2f830367e64b72a51fca9361eee57c414`  
		Last Modified: Sat, 04 Nov 2017 14:14:10 GMT  
		Size: 9.4 MB (9409020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef11c56a7828961b5e1f58302feb579e9d7fba741a6af82aa2f3acf43f90fa0`  
		Last Modified: Sat, 04 Nov 2017 14:14:07 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92bcca28723fe712540002fdebebe177bb3c3ce8bc45cfcd1b4d9e88d66b1aa`  
		Last Modified: Sat, 04 Nov 2017 14:14:08 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3.8-fpm-php7`

```console
$ docker pull joomla@sha256:bcd900dde07b678cb688dfb6a90a01e2310eb09fedf0bae4f471a7ef8cff2dca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3.8-fpm-php7` - linux; amd64

```console
$ docker pull joomla@sha256:a955141d5c743f070634d77537362ad75263a3c270f80f406f672daa5961947f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.9 MB (172850107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78108f91cff7b098e4fc87a543cd17de985243f3222a72fa91fc07220a3082eb`
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
# Thu, 26 Oct 2017 20:17:22 GMT
ENV PHP_VERSION=7.0.25
# Thu, 26 Oct 2017 20:17:22 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.25.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.25.tar.xz.asc/from/this/mirror
# Thu, 26 Oct 2017 20:17:22 GMT
ENV PHP_SHA256=5cc14bd20fb2226f6d34465662425cd100441bde9042ea1cef2e4506d6ded8cc PHP_MD5=
# Thu, 26 Oct 2017 20:17:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 26 Oct 2017 20:17:44 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 26 Oct 2017 20:21:11 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 26 Oct 2017 20:21:11 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Thu, 26 Oct 2017 20:21:12 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 26 Oct 2017 20:21:12 GMT
WORKDIR /var/www/html
# Thu, 26 Oct 2017 20:21:13 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 26 Oct 2017 20:21:13 GMT
EXPOSE 9000/tcp
# Thu, 26 Oct 2017 20:21:13 GMT
CMD ["php-fpm"]
# Sat, 04 Nov 2017 14:11:17 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 04 Nov 2017 14:11:17 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 04 Nov 2017 14:11:44 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 04 Nov 2017 14:11:53 GMT
RUN docker-php-ext-install mysqli
# Sat, 04 Nov 2017 14:11:59 GMT
RUN docker-php-ext-install mcrypt
# Sat, 04 Nov 2017 14:12:19 GMT
RUN docker-php-ext-install zip
# Sat, 04 Nov 2017 14:12:20 GMT
VOLUME [/var/www/html]
# Sat, 04 Nov 2017 14:12:20 GMT
ENV JOOMLA_VERSION=3.8.0
# Sat, 04 Nov 2017 14:12:20 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Sat, 04 Nov 2017 14:12:27 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 04 Nov 2017 14:12:28 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Sat, 04 Nov 2017 14:12:28 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Sat, 04 Nov 2017 14:12:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 14:12:28 GMT
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
	-	`sha256:004eec0f86c3319872d0646d26598db3396b05ad5b36d8c7d7b16ecab54dcf40`  
		Last Modified: Thu, 26 Oct 2017 20:44:55 GMT  
		Size: 12.3 MB (12301410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c31b10a6fd14173c576305a8fea0eae3c18a0a93125e897b482f33d0fd69334`  
		Last Modified: Thu, 26 Oct 2017 20:44:49 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:411382ec869c7540703ae7771f3ec265474383ae0142ef0686d932617a3d87d2`  
		Last Modified: Thu, 26 Oct 2017 20:44:53 GMT  
		Size: 12.9 MB (12910188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d027256730f7d5eb3c303e52644ee4ba35d77f83fb0f1ffc484149fb0f37f2`  
		Last Modified: Thu, 26 Oct 2017 20:44:50 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f5f403318d639a158b9d455ccb2ea6b4cae912fcfca4a451d8202a42de4d53`  
		Last Modified: Thu, 26 Oct 2017 20:44:49 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfafe4900306ffdd3db378306a326c88e32cbf62fe5bd950f6c7ce741dba4bc8`  
		Last Modified: Thu, 26 Oct 2017 20:44:49 GMT  
		Size: 7.7 KB (7676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aeeeb1f6461ff01bd4e466e2f2364ac175945664d5dec649356c6db42ae59fb`  
		Last Modified: Sat, 04 Nov 2017 14:14:43 GMT  
		Size: 3.0 MB (2976771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148c5deb6ba2b91144670d2dca8c51a5a96a9a1677ab7b7f54be74a5362334aa`  
		Last Modified: Sat, 04 Nov 2017 14:14:42 GMT  
		Size: 56.4 KB (56406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1fce2e10b962d6ea3c4d1a07fef74fa759b12e5cb838ca4daf7959aee47589`  
		Last Modified: Sat, 04 Nov 2017 14:14:40 GMT  
		Size: 18.3 KB (18294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5f751aea9ea191e50393552f631cfdcd64264c80a20fb9153c176e0900b445`  
		Last Modified: Sat, 04 Nov 2017 14:14:41 GMT  
		Size: 72.8 KB (72765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3956530bdda0a45385a9e2f61819b0c8a05a3cfe6446c9186e02e23ff13485f`  
		Last Modified: Sat, 04 Nov 2017 14:14:43 GMT  
		Size: 9.4 MB (9409012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2dcd577e2f0a20e514095cb43a515bb80499e90c1e82d188660ab6bc0f05592`  
		Last Modified: Sat, 04 Nov 2017 14:14:40 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bb2d74922f7ffc815f2945941107ad02a9673ad4d8042c1108fb4bdf2d1e5c0`  
		Last Modified: Sat, 04 Nov 2017 14:14:40 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-apache`

```console
$ docker pull joomla@sha256:87ecfed28bbfe0df37f50846c6ba1d3efe5e56ffe3042caf73be5e8fdc479245
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3-apache` - linux; amd64

```console
$ docker pull joomla@sha256:569a55922bf008b6cd08e0f7c212252034855017c350b46567bc9a446cd0e7c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.7 MB (172659877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71d405a268e8d3f053483e4ba40acdfd2a149f57c1d9f4ef5cd2bc84e5c1e8cf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 10:11:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Sat, 04 Nov 2017 10:12:05 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 04 Nov 2017 10:12:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 04 Nov 2017 10:12:07 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 04 Nov 2017 10:17:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 10:17:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 04 Nov 2017 10:17:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 04 Nov 2017 10:17:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Sat, 04 Nov 2017 10:17:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 04 Nov 2017 10:17:20 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Sat, 04 Nov 2017 10:17:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 04 Nov 2017 10:17:21 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 04 Nov 2017 10:17:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Sat, 04 Nov 2017 10:17:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 04 Nov 2017 10:17:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 04 Nov 2017 10:17:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 04 Nov 2017 11:23:09 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 04 Nov 2017 11:23:09 GMT
ENV PHP_VERSION=5.6.32
# Sat, 04 Nov 2017 11:23:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Sat, 04 Nov 2017 11:23:10 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Sat, 04 Nov 2017 11:23:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 04 Nov 2017 11:23:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:26:07 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 04 Nov 2017 11:26:08 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:26:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 04 Nov 2017 11:26:08 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:26:08 GMT
WORKDIR /var/www/html
# Sat, 04 Nov 2017 11:26:08 GMT
EXPOSE 80/tcp
# Sat, 04 Nov 2017 11:26:09 GMT
CMD ["apache2-foreground"]
# Sat, 04 Nov 2017 14:07:05 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 04 Nov 2017 14:07:05 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 04 Nov 2017 14:07:06 GMT
RUN a2enmod rewrite
# Sat, 04 Nov 2017 14:07:31 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 04 Nov 2017 14:07:39 GMT
RUN docker-php-ext-install mysqli
# Sat, 04 Nov 2017 14:07:45 GMT
RUN docker-php-ext-install mcrypt
# Sat, 04 Nov 2017 14:08:06 GMT
RUN docker-php-ext-install zip
# Sat, 04 Nov 2017 14:08:06 GMT
VOLUME [/var/www/html]
# Sat, 04 Nov 2017 14:08:07 GMT
ENV JOOMLA_VERSION=3.8.0
# Sat, 04 Nov 2017 14:08:07 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Sat, 04 Nov 2017 14:08:13 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 04 Nov 2017 14:08:13 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Sat, 04 Nov 2017 14:08:14 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Sat, 04 Nov 2017 14:08:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 14:08:15 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8204bc927258ee7d613ed166e9ee95041987ddbfddaf39594e54b403d55dc09`  
		Last Modified: Sat, 04 Nov 2017 11:53:46 GMT  
		Size: 82.5 MB (82497571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fc16bb18e4e7f7c6975e0cbef8949d968f35f0672b4ebd5006afb10c20ca10`  
		Last Modified: Sat, 04 Nov 2017 11:53:17 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31098e61b2ae5029460c46c69ecf26335ffdf5ba5a7e492a104018df593735c9`  
		Last Modified: Sat, 04 Nov 2017 11:55:30 GMT  
		Size: 3.0 MB (3012952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ae64bfd33d38ba595480aead27756418fa63d2e22da09dc0f2673d863eb051`  
		Last Modified: Sat, 04 Nov 2017 11:55:29 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003c1818b354888cc37d66173a56d44d1ff2b838f4b0cc3fffd403569686974c`  
		Last Modified: Sat, 04 Nov 2017 11:55:26 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fd4aeb32ad8234ae032a6ddbd2429dd6f1de2cc734319c8bfd7039b311fa9e`  
		Last Modified: Sat, 04 Nov 2017 11:55:26 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a094df7cedc1113abd270d4413af16b24013ba274fe2420cbbdf90f6c65e4efc`  
		Last Modified: Sat, 04 Nov 2017 11:55:26 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3bf6fc1a51d458237feb9dce24f825474e79effcce1beb49116c63a7fcf56dd`  
		Last Modified: Sat, 04 Nov 2017 12:07:02 GMT  
		Size: 12.8 MB (12818710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad235c26036088afd1c003e632bd42322640d9e796dc0151ae43b28e90d11997`  
		Last Modified: Sat, 04 Nov 2017 12:07:00 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edbf48bcbd7e5223e79aaff94e6c1ac3c4fff2d0cecefe8c80f501a01b0f2f50`  
		Last Modified: Sat, 04 Nov 2017 12:07:05 GMT  
		Size: 9.2 MB (9175640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6ae81d5745d569ea65dbdf9422d1e183bb475548a2d6c7f23729ea86d27fcd`  
		Last Modified: Sat, 04 Nov 2017 12:07:00 GMT  
		Size: 2.2 KB (2182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69838fd876d66a86b81229c3939492767b37e334b37d8101d601c6e14c7d4be1`  
		Last Modified: Sat, 04 Nov 2017 12:07:00 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a5524a7cb4f0fef324c6ce55aaf364bfec41f77e82efdf57d14c7b386ea889`  
		Last Modified: Sat, 04 Nov 2017 14:12:50 GMT  
		Size: 311.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32b669909b1bc189c27747b54700fb83eac6566f1b88a38d41a3879e7ee7e2e`  
		Last Modified: Sat, 04 Nov 2017 14:12:50 GMT  
		Size: 3.0 MB (3001484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0effa94b943a8f4b21b92f553cf6fdc34db9f8685e8d36607569066420c6d7`  
		Last Modified: Sat, 04 Nov 2017 14:12:50 GMT  
		Size: 58.0 KB (57998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c57c26c346029b24456a98ae1bd1accee82aca49b30feb63b20377078643ac`  
		Last Modified: Sat, 04 Nov 2017 14:12:47 GMT  
		Size: 19.7 KB (19705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8a9b80f4da5a8cd130ee2b4751e57f0c7f6b256cb5016f94f82a65d88c4f88`  
		Last Modified: Sat, 04 Nov 2017 14:12:48 GMT  
		Size: 63.4 KB (63413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338497e2405e3f75ec58d51c92eb19330eb7d63e2da779a7f12f3c2f983f2b8a`  
		Last Modified: Sat, 04 Nov 2017 14:12:50 GMT  
		Size: 9.4 MB (9409011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa2d7d03b2043def034b14fc60953d983e5ae8fdba53eb578266b879a39c2d7`  
		Last Modified: Sat, 04 Nov 2017 14:12:48 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd7b0cc509feb335e7bad16c312e56031221eb1e51665283df9b29ea6017dde`  
		Last Modified: Sat, 04 Nov 2017 14:12:47 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-apache-php7`

```console
$ docker pull joomla@sha256:f58c0523a8145ebe074988ce1542e0ff947536efd08d22d55f19d92155c95105
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3-apache-php7` - linux; amd64

```console
$ docker pull joomla@sha256:c5557e978c653d5c4cf927a2379f46853b454454e9f3fc1975aa2043be6b53a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.2 MB (176200914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce1730431cafece144bbbe83425208549fae15e55e249a470eedae0444559136`
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
# Thu, 26 Oct 2017 20:09:20 GMT
ENV PHP_VERSION=7.0.25
# Thu, 26 Oct 2017 20:09:21 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.25.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.25.tar.xz.asc/from/this/mirror
# Thu, 26 Oct 2017 20:09:21 GMT
ENV PHP_SHA256=5cc14bd20fb2226f6d34465662425cd100441bde9042ea1cef2e4506d6ded8cc PHP_MD5=
# Thu, 26 Oct 2017 20:09:43 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 26 Oct 2017 20:09:43 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 26 Oct 2017 20:12:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 26 Oct 2017 20:12:09 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Thu, 26 Oct 2017 20:12:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 26 Oct 2017 20:12:09 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 26 Oct 2017 20:12:10 GMT
WORKDIR /var/www/html
# Thu, 26 Oct 2017 20:12:10 GMT
EXPOSE 80/tcp
# Thu, 26 Oct 2017 20:12:10 GMT
CMD ["apache2-foreground"]
# Sat, 04 Nov 2017 14:08:30 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 04 Nov 2017 14:08:30 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 04 Nov 2017 14:08:31 GMT
RUN a2enmod rewrite
# Sat, 04 Nov 2017 14:09:02 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 04 Nov 2017 14:09:11 GMT
RUN docker-php-ext-install mysqli
# Sat, 04 Nov 2017 14:09:17 GMT
RUN docker-php-ext-install mcrypt
# Sat, 04 Nov 2017 14:09:38 GMT
RUN docker-php-ext-install zip
# Sat, 04 Nov 2017 14:09:38 GMT
VOLUME [/var/www/html]
# Sat, 04 Nov 2017 14:09:38 GMT
ENV JOOMLA_VERSION=3.8.0
# Sat, 04 Nov 2017 14:09:38 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Sat, 04 Nov 2017 14:09:44 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 04 Nov 2017 14:09:46 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Sat, 04 Nov 2017 14:09:46 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Sat, 04 Nov 2017 14:09:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 14:09:47 GMT
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
	-	`sha256:32dfc8ebc5e12dc341a546efe2041095b06c11ff7925daa7d5789ac29cbccdd4`  
		Last Modified: Thu, 26 Oct 2017 20:43:49 GMT  
		Size: 12.3 MB (12318613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616a2f4968fc5e04c868a2a3abe72ee40a0fb21fed4e80a5b01e098881a81cf2`  
		Last Modified: Thu, 26 Oct 2017 20:43:48 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2f3b872c113a206c11bea8ee4d1b07fb9ea41ebd6b60f31c4b4a5666c32ba6`  
		Last Modified: Thu, 26 Oct 2017 20:44:10 GMT  
		Size: 13.2 MB (13214797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e47cd91486329d8190b68b42200e0befd01acede5dcb4ed3226d60cb6f29fe`  
		Last Modified: Thu, 26 Oct 2017 20:43:48 GMT  
		Size: 2.2 KB (2182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd7bd501ed7aaf592c54981f7255aa3dc3bba99ffc95e7a05c8358eebc2b918`  
		Last Modified: Thu, 26 Oct 2017 20:43:47 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0313ef4b5d89ac58f03dd7667c0c994074f419fcb0585214a9b7dd9ec5fdf80`  
		Last Modified: Sat, 04 Nov 2017 14:13:41 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32eb2563a4de8cf7f1a3e4c027799fae64a52227119fcfd138130294c79d3403`  
		Last Modified: Sat, 04 Nov 2017 14:13:41 GMT  
		Size: 3.0 MB (2997032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a069817eb542267bde49fdfff9a9c3a098da0dbbb0332de711e9e146c94e506`  
		Last Modified: Sat, 04 Nov 2017 14:13:41 GMT  
		Size: 56.4 KB (56410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cc031d7d17e8aefe9364098646a3d57da7f4a3d31078d01b3c8c339948740a`  
		Last Modified: Sat, 04 Nov 2017 14:13:39 GMT  
		Size: 18.3 KB (18293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb80c5776e5d1f86743605fdaeab9458ac1a850a6d7fdb5c93c1bd88672b6820`  
		Last Modified: Sat, 04 Nov 2017 14:13:39 GMT  
		Size: 72.8 KB (72763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d21e7da67c447269610a834a2c4f296e20c71bc6dcd4736ecef0f7f30b9a608`  
		Last Modified: Sat, 04 Nov 2017 14:13:41 GMT  
		Size: 9.4 MB (9409012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6af9d61172af3da47b9fad8ae5435257a15d02d3c5a05a5836bd38da4ed82e0`  
		Last Modified: Sat, 04 Nov 2017 14:13:39 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac8db915f665869b9f1122c3436feceba964e3b378eeb3cfcc57623a78628211`  
		Last Modified: Sat, 04 Nov 2017 14:13:38 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-fpm`

```console
$ docker pull joomla@sha256:097b0851b84439e645dcee21f694d44d5b2ce3068c4690b4f56dd3cc2ef188cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3-fpm` - linux; amd64

```console
$ docker pull joomla@sha256:861d95cf6e402aaa08abc6cae9cc37d4b9689ff347ce4bfc0b12803c60957d68
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.3 MB (169289232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69ac8150908f3c602357385f35040199367c6ce9e629185e8b4b1a56d4db3f5b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 10:11:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Sat, 04 Nov 2017 10:12:05 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 04 Nov 2017 10:12:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 04 Nov 2017 10:12:07 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 04 Nov 2017 10:21:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Sat, 04 Nov 2017 10:21:00 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 04 Nov 2017 10:21:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 04 Nov 2017 10:21:01 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 04 Nov 2017 11:26:18 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 04 Nov 2017 11:26:18 GMT
ENV PHP_VERSION=5.6.32
# Sat, 04 Nov 2017 11:26:18 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Sat, 04 Nov 2017 11:26:18 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Sat, 04 Nov 2017 11:26:32 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 04 Nov 2017 11:26:33 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:30:30 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 04 Nov 2017 11:30:31 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:30:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 04 Nov 2017 11:30:31 GMT
WORKDIR /var/www/html
# Sat, 04 Nov 2017 11:30:32 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 04 Nov 2017 11:30:32 GMT
EXPOSE 9000/tcp
# Sat, 04 Nov 2017 11:30:32 GMT
CMD ["php-fpm"]
# Sat, 04 Nov 2017 14:09:53 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 04 Nov 2017 14:09:53 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 04 Nov 2017 14:10:18 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 04 Nov 2017 14:10:26 GMT
RUN docker-php-ext-install mysqli
# Sat, 04 Nov 2017 14:10:32 GMT
RUN docker-php-ext-install mcrypt
# Sat, 04 Nov 2017 14:10:53 GMT
RUN docker-php-ext-install zip
# Sat, 04 Nov 2017 14:10:54 GMT
VOLUME [/var/www/html]
# Sat, 04 Nov 2017 14:10:54 GMT
ENV JOOMLA_VERSION=3.8.0
# Sat, 04 Nov 2017 14:10:54 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Sat, 04 Nov 2017 14:11:03 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 04 Nov 2017 14:11:03 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Sat, 04 Nov 2017 14:11:04 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Sat, 04 Nov 2017 14:11:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 14:11:04 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8204bc927258ee7d613ed166e9ee95041987ddbfddaf39594e54b403d55dc09`  
		Last Modified: Sat, 04 Nov 2017 11:53:46 GMT  
		Size: 82.5 MB (82497571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fc16bb18e4e7f7c6975e0cbef8949d968f35f0672b4ebd5006afb10c20ca10`  
		Last Modified: Sat, 04 Nov 2017 11:53:17 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e373d95597369ee3b074ccc1db856f2910557cbca2420e5675b9f0c74cb33ce8`  
		Last Modified: Sat, 04 Nov 2017 12:07:47 GMT  
		Size: 12.8 MB (12801459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea72132e8640652012ee0a59f8dcc5e493745e50b3c8deb245ead16c6be090d7`  
		Last Modified: Sat, 04 Nov 2017 12:07:43 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce16a7a57481224d6898080429c90f3bbdd009d19b9883e01f3ac952d78063e`  
		Last Modified: Sat, 04 Nov 2017 12:07:47 GMT  
		Size: 8.9 MB (8850979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8eeffa923158c860c62ebc0ef2f33101db91733210d9442fc9d8c736c07f1af`  
		Last Modified: Sat, 04 Nov 2017 12:07:43 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af1d66a9b9274dffe11f158216812564dfe0a9ef6986acc4986dd5397c97844`  
		Last Modified: Sat, 04 Nov 2017 12:07:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb42ac0b9f7c5e229ef66f30f36ccec9a2b79685e8a043456096a95c25ff5eee`  
		Last Modified: Sat, 04 Nov 2017 12:07:43 GMT  
		Size: 7.6 KB (7617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358967860a81909194265f50952c06a3abef19e4388899cc4313f0de4b309e7a`  
		Last Modified: Sat, 04 Nov 2017 14:14:10 GMT  
		Size: 3.0 MB (2981563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514609f516f1da59fe2688b8f61e71fce09595ab48b3ea9963f44a2aecdce688`  
		Last Modified: Sat, 04 Nov 2017 14:14:10 GMT  
		Size: 58.0 KB (57998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c2cf62519b1e32d6f98ba73a8f646ea203c4b0186cbfdeec74d1fca9ef0a9c`  
		Last Modified: Sat, 04 Nov 2017 14:14:07 GMT  
		Size: 19.7 KB (19707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e558b1f6dd0a744786c4affe5795fd65a6224fac864617749478424d02f187f0`  
		Last Modified: Sat, 04 Nov 2017 14:14:08 GMT  
		Size: 63.4 KB (63409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f1853c8674622f8eaf9219821bd4b2f830367e64b72a51fca9361eee57c414`  
		Last Modified: Sat, 04 Nov 2017 14:14:10 GMT  
		Size: 9.4 MB (9409020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef11c56a7828961b5e1f58302feb579e9d7fba741a6af82aa2f3acf43f90fa0`  
		Last Modified: Sat, 04 Nov 2017 14:14:07 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92bcca28723fe712540002fdebebe177bb3c3ce8bc45cfcd1b4d9e88d66b1aa`  
		Last Modified: Sat, 04 Nov 2017 14:14:08 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:3-fpm-php7`

```console
$ docker pull joomla@sha256:bcd900dde07b678cb688dfb6a90a01e2310eb09fedf0bae4f471a7ef8cff2dca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3-fpm-php7` - linux; amd64

```console
$ docker pull joomla@sha256:a955141d5c743f070634d77537362ad75263a3c270f80f406f672daa5961947f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.9 MB (172850107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78108f91cff7b098e4fc87a543cd17de985243f3222a72fa91fc07220a3082eb`
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
# Thu, 26 Oct 2017 20:17:22 GMT
ENV PHP_VERSION=7.0.25
# Thu, 26 Oct 2017 20:17:22 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.25.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.25.tar.xz.asc/from/this/mirror
# Thu, 26 Oct 2017 20:17:22 GMT
ENV PHP_SHA256=5cc14bd20fb2226f6d34465662425cd100441bde9042ea1cef2e4506d6ded8cc PHP_MD5=
# Thu, 26 Oct 2017 20:17:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 26 Oct 2017 20:17:44 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 26 Oct 2017 20:21:11 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 26 Oct 2017 20:21:11 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Thu, 26 Oct 2017 20:21:12 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 26 Oct 2017 20:21:12 GMT
WORKDIR /var/www/html
# Thu, 26 Oct 2017 20:21:13 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 26 Oct 2017 20:21:13 GMT
EXPOSE 9000/tcp
# Thu, 26 Oct 2017 20:21:13 GMT
CMD ["php-fpm"]
# Sat, 04 Nov 2017 14:11:17 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 04 Nov 2017 14:11:17 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 04 Nov 2017 14:11:44 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 04 Nov 2017 14:11:53 GMT
RUN docker-php-ext-install mysqli
# Sat, 04 Nov 2017 14:11:59 GMT
RUN docker-php-ext-install mcrypt
# Sat, 04 Nov 2017 14:12:19 GMT
RUN docker-php-ext-install zip
# Sat, 04 Nov 2017 14:12:20 GMT
VOLUME [/var/www/html]
# Sat, 04 Nov 2017 14:12:20 GMT
ENV JOOMLA_VERSION=3.8.0
# Sat, 04 Nov 2017 14:12:20 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Sat, 04 Nov 2017 14:12:27 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 04 Nov 2017 14:12:28 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Sat, 04 Nov 2017 14:12:28 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Sat, 04 Nov 2017 14:12:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 14:12:28 GMT
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
	-	`sha256:004eec0f86c3319872d0646d26598db3396b05ad5b36d8c7d7b16ecab54dcf40`  
		Last Modified: Thu, 26 Oct 2017 20:44:55 GMT  
		Size: 12.3 MB (12301410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c31b10a6fd14173c576305a8fea0eae3c18a0a93125e897b482f33d0fd69334`  
		Last Modified: Thu, 26 Oct 2017 20:44:49 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:411382ec869c7540703ae7771f3ec265474383ae0142ef0686d932617a3d87d2`  
		Last Modified: Thu, 26 Oct 2017 20:44:53 GMT  
		Size: 12.9 MB (12910188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d027256730f7d5eb3c303e52644ee4ba35d77f83fb0f1ffc484149fb0f37f2`  
		Last Modified: Thu, 26 Oct 2017 20:44:50 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f5f403318d639a158b9d455ccb2ea6b4cae912fcfca4a451d8202a42de4d53`  
		Last Modified: Thu, 26 Oct 2017 20:44:49 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfafe4900306ffdd3db378306a326c88e32cbf62fe5bd950f6c7ce741dba4bc8`  
		Last Modified: Thu, 26 Oct 2017 20:44:49 GMT  
		Size: 7.7 KB (7676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aeeeb1f6461ff01bd4e466e2f2364ac175945664d5dec649356c6db42ae59fb`  
		Last Modified: Sat, 04 Nov 2017 14:14:43 GMT  
		Size: 3.0 MB (2976771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148c5deb6ba2b91144670d2dca8c51a5a96a9a1677ab7b7f54be74a5362334aa`  
		Last Modified: Sat, 04 Nov 2017 14:14:42 GMT  
		Size: 56.4 KB (56406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1fce2e10b962d6ea3c4d1a07fef74fa759b12e5cb838ca4daf7959aee47589`  
		Last Modified: Sat, 04 Nov 2017 14:14:40 GMT  
		Size: 18.3 KB (18294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5f751aea9ea191e50393552f631cfdcd64264c80a20fb9153c176e0900b445`  
		Last Modified: Sat, 04 Nov 2017 14:14:41 GMT  
		Size: 72.8 KB (72765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3956530bdda0a45385a9e2f61819b0c8a05a3cfe6446c9186e02e23ff13485f`  
		Last Modified: Sat, 04 Nov 2017 14:14:43 GMT  
		Size: 9.4 MB (9409012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2dcd577e2f0a20e514095cb43a515bb80499e90c1e82d188660ab6bc0f05592`  
		Last Modified: Sat, 04 Nov 2017 14:14:40 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bb2d74922f7ffc815f2945941107ad02a9673ad4d8042c1108fb4bdf2d1e5c0`  
		Last Modified: Sat, 04 Nov 2017 14:14:40 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:apache`

```console
$ docker pull joomla@sha256:87ecfed28bbfe0df37f50846c6ba1d3efe5e56ffe3042caf73be5e8fdc479245
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:apache` - linux; amd64

```console
$ docker pull joomla@sha256:569a55922bf008b6cd08e0f7c212252034855017c350b46567bc9a446cd0e7c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.7 MB (172659877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71d405a268e8d3f053483e4ba40acdfd2a149f57c1d9f4ef5cd2bc84e5c1e8cf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 10:11:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Sat, 04 Nov 2017 10:12:05 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 04 Nov 2017 10:12:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 04 Nov 2017 10:12:07 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 04 Nov 2017 10:17:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 10:17:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 04 Nov 2017 10:17:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 04 Nov 2017 10:17:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Sat, 04 Nov 2017 10:17:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 04 Nov 2017 10:17:20 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Sat, 04 Nov 2017 10:17:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 04 Nov 2017 10:17:21 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 04 Nov 2017 10:17:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Sat, 04 Nov 2017 10:17:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 04 Nov 2017 10:17:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 04 Nov 2017 10:17:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 04 Nov 2017 11:23:09 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 04 Nov 2017 11:23:09 GMT
ENV PHP_VERSION=5.6.32
# Sat, 04 Nov 2017 11:23:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Sat, 04 Nov 2017 11:23:10 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Sat, 04 Nov 2017 11:23:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 04 Nov 2017 11:23:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:26:07 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 04 Nov 2017 11:26:08 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:26:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 04 Nov 2017 11:26:08 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:26:08 GMT
WORKDIR /var/www/html
# Sat, 04 Nov 2017 11:26:08 GMT
EXPOSE 80/tcp
# Sat, 04 Nov 2017 11:26:09 GMT
CMD ["apache2-foreground"]
# Sat, 04 Nov 2017 14:07:05 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 04 Nov 2017 14:07:05 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 04 Nov 2017 14:07:06 GMT
RUN a2enmod rewrite
# Sat, 04 Nov 2017 14:07:31 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 04 Nov 2017 14:07:39 GMT
RUN docker-php-ext-install mysqli
# Sat, 04 Nov 2017 14:07:45 GMT
RUN docker-php-ext-install mcrypt
# Sat, 04 Nov 2017 14:08:06 GMT
RUN docker-php-ext-install zip
# Sat, 04 Nov 2017 14:08:06 GMT
VOLUME [/var/www/html]
# Sat, 04 Nov 2017 14:08:07 GMT
ENV JOOMLA_VERSION=3.8.0
# Sat, 04 Nov 2017 14:08:07 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Sat, 04 Nov 2017 14:08:13 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 04 Nov 2017 14:08:13 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Sat, 04 Nov 2017 14:08:14 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Sat, 04 Nov 2017 14:08:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 14:08:15 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8204bc927258ee7d613ed166e9ee95041987ddbfddaf39594e54b403d55dc09`  
		Last Modified: Sat, 04 Nov 2017 11:53:46 GMT  
		Size: 82.5 MB (82497571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fc16bb18e4e7f7c6975e0cbef8949d968f35f0672b4ebd5006afb10c20ca10`  
		Last Modified: Sat, 04 Nov 2017 11:53:17 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31098e61b2ae5029460c46c69ecf26335ffdf5ba5a7e492a104018df593735c9`  
		Last Modified: Sat, 04 Nov 2017 11:55:30 GMT  
		Size: 3.0 MB (3012952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ae64bfd33d38ba595480aead27756418fa63d2e22da09dc0f2673d863eb051`  
		Last Modified: Sat, 04 Nov 2017 11:55:29 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003c1818b354888cc37d66173a56d44d1ff2b838f4b0cc3fffd403569686974c`  
		Last Modified: Sat, 04 Nov 2017 11:55:26 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fd4aeb32ad8234ae032a6ddbd2429dd6f1de2cc734319c8bfd7039b311fa9e`  
		Last Modified: Sat, 04 Nov 2017 11:55:26 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a094df7cedc1113abd270d4413af16b24013ba274fe2420cbbdf90f6c65e4efc`  
		Last Modified: Sat, 04 Nov 2017 11:55:26 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3bf6fc1a51d458237feb9dce24f825474e79effcce1beb49116c63a7fcf56dd`  
		Last Modified: Sat, 04 Nov 2017 12:07:02 GMT  
		Size: 12.8 MB (12818710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad235c26036088afd1c003e632bd42322640d9e796dc0151ae43b28e90d11997`  
		Last Modified: Sat, 04 Nov 2017 12:07:00 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edbf48bcbd7e5223e79aaff94e6c1ac3c4fff2d0cecefe8c80f501a01b0f2f50`  
		Last Modified: Sat, 04 Nov 2017 12:07:05 GMT  
		Size: 9.2 MB (9175640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6ae81d5745d569ea65dbdf9422d1e183bb475548a2d6c7f23729ea86d27fcd`  
		Last Modified: Sat, 04 Nov 2017 12:07:00 GMT  
		Size: 2.2 KB (2182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69838fd876d66a86b81229c3939492767b37e334b37d8101d601c6e14c7d4be1`  
		Last Modified: Sat, 04 Nov 2017 12:07:00 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a5524a7cb4f0fef324c6ce55aaf364bfec41f77e82efdf57d14c7b386ea889`  
		Last Modified: Sat, 04 Nov 2017 14:12:50 GMT  
		Size: 311.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32b669909b1bc189c27747b54700fb83eac6566f1b88a38d41a3879e7ee7e2e`  
		Last Modified: Sat, 04 Nov 2017 14:12:50 GMT  
		Size: 3.0 MB (3001484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0effa94b943a8f4b21b92f553cf6fdc34db9f8685e8d36607569066420c6d7`  
		Last Modified: Sat, 04 Nov 2017 14:12:50 GMT  
		Size: 58.0 KB (57998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c57c26c346029b24456a98ae1bd1accee82aca49b30feb63b20377078643ac`  
		Last Modified: Sat, 04 Nov 2017 14:12:47 GMT  
		Size: 19.7 KB (19705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8a9b80f4da5a8cd130ee2b4751e57f0c7f6b256cb5016f94f82a65d88c4f88`  
		Last Modified: Sat, 04 Nov 2017 14:12:48 GMT  
		Size: 63.4 KB (63413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338497e2405e3f75ec58d51c92eb19330eb7d63e2da779a7f12f3c2f983f2b8a`  
		Last Modified: Sat, 04 Nov 2017 14:12:50 GMT  
		Size: 9.4 MB (9409011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa2d7d03b2043def034b14fc60953d983e5ae8fdba53eb578266b879a39c2d7`  
		Last Modified: Sat, 04 Nov 2017 14:12:48 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd7b0cc509feb335e7bad16c312e56031221eb1e51665283df9b29ea6017dde`  
		Last Modified: Sat, 04 Nov 2017 14:12:47 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:apache-php7`

```console
$ docker pull joomla@sha256:f58c0523a8145ebe074988ce1542e0ff947536efd08d22d55f19d92155c95105
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:apache-php7` - linux; amd64

```console
$ docker pull joomla@sha256:c5557e978c653d5c4cf927a2379f46853b454454e9f3fc1975aa2043be6b53a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.2 MB (176200914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce1730431cafece144bbbe83425208549fae15e55e249a470eedae0444559136`
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
# Thu, 26 Oct 2017 20:09:20 GMT
ENV PHP_VERSION=7.0.25
# Thu, 26 Oct 2017 20:09:21 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.25.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.25.tar.xz.asc/from/this/mirror
# Thu, 26 Oct 2017 20:09:21 GMT
ENV PHP_SHA256=5cc14bd20fb2226f6d34465662425cd100441bde9042ea1cef2e4506d6ded8cc PHP_MD5=
# Thu, 26 Oct 2017 20:09:43 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 26 Oct 2017 20:09:43 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 26 Oct 2017 20:12:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 26 Oct 2017 20:12:09 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Thu, 26 Oct 2017 20:12:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 26 Oct 2017 20:12:09 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 26 Oct 2017 20:12:10 GMT
WORKDIR /var/www/html
# Thu, 26 Oct 2017 20:12:10 GMT
EXPOSE 80/tcp
# Thu, 26 Oct 2017 20:12:10 GMT
CMD ["apache2-foreground"]
# Sat, 04 Nov 2017 14:08:30 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 04 Nov 2017 14:08:30 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 04 Nov 2017 14:08:31 GMT
RUN a2enmod rewrite
# Sat, 04 Nov 2017 14:09:02 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 04 Nov 2017 14:09:11 GMT
RUN docker-php-ext-install mysqli
# Sat, 04 Nov 2017 14:09:17 GMT
RUN docker-php-ext-install mcrypt
# Sat, 04 Nov 2017 14:09:38 GMT
RUN docker-php-ext-install zip
# Sat, 04 Nov 2017 14:09:38 GMT
VOLUME [/var/www/html]
# Sat, 04 Nov 2017 14:09:38 GMT
ENV JOOMLA_VERSION=3.8.0
# Sat, 04 Nov 2017 14:09:38 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Sat, 04 Nov 2017 14:09:44 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 04 Nov 2017 14:09:46 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Sat, 04 Nov 2017 14:09:46 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Sat, 04 Nov 2017 14:09:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 14:09:47 GMT
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
	-	`sha256:32dfc8ebc5e12dc341a546efe2041095b06c11ff7925daa7d5789ac29cbccdd4`  
		Last Modified: Thu, 26 Oct 2017 20:43:49 GMT  
		Size: 12.3 MB (12318613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616a2f4968fc5e04c868a2a3abe72ee40a0fb21fed4e80a5b01e098881a81cf2`  
		Last Modified: Thu, 26 Oct 2017 20:43:48 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2f3b872c113a206c11bea8ee4d1b07fb9ea41ebd6b60f31c4b4a5666c32ba6`  
		Last Modified: Thu, 26 Oct 2017 20:44:10 GMT  
		Size: 13.2 MB (13214797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e47cd91486329d8190b68b42200e0befd01acede5dcb4ed3226d60cb6f29fe`  
		Last Modified: Thu, 26 Oct 2017 20:43:48 GMT  
		Size: 2.2 KB (2182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd7bd501ed7aaf592c54981f7255aa3dc3bba99ffc95e7a05c8358eebc2b918`  
		Last Modified: Thu, 26 Oct 2017 20:43:47 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0313ef4b5d89ac58f03dd7667c0c994074f419fcb0585214a9b7dd9ec5fdf80`  
		Last Modified: Sat, 04 Nov 2017 14:13:41 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32eb2563a4de8cf7f1a3e4c027799fae64a52227119fcfd138130294c79d3403`  
		Last Modified: Sat, 04 Nov 2017 14:13:41 GMT  
		Size: 3.0 MB (2997032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a069817eb542267bde49fdfff9a9c3a098da0dbbb0332de711e9e146c94e506`  
		Last Modified: Sat, 04 Nov 2017 14:13:41 GMT  
		Size: 56.4 KB (56410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cc031d7d17e8aefe9364098646a3d57da7f4a3d31078d01b3c8c339948740a`  
		Last Modified: Sat, 04 Nov 2017 14:13:39 GMT  
		Size: 18.3 KB (18293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb80c5776e5d1f86743605fdaeab9458ac1a850a6d7fdb5c93c1bd88672b6820`  
		Last Modified: Sat, 04 Nov 2017 14:13:39 GMT  
		Size: 72.8 KB (72763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d21e7da67c447269610a834a2c4f296e20c71bc6dcd4736ecef0f7f30b9a608`  
		Last Modified: Sat, 04 Nov 2017 14:13:41 GMT  
		Size: 9.4 MB (9409012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6af9d61172af3da47b9fad8ae5435257a15d02d3c5a05a5836bd38da4ed82e0`  
		Last Modified: Sat, 04 Nov 2017 14:13:39 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac8db915f665869b9f1122c3436feceba964e3b378eeb3cfcc57623a78628211`  
		Last Modified: Sat, 04 Nov 2017 14:13:38 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:fpm`

```console
$ docker pull joomla@sha256:097b0851b84439e645dcee21f694d44d5b2ce3068c4690b4f56dd3cc2ef188cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:fpm` - linux; amd64

```console
$ docker pull joomla@sha256:861d95cf6e402aaa08abc6cae9cc37d4b9689ff347ce4bfc0b12803c60957d68
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.3 MB (169289232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69ac8150908f3c602357385f35040199367c6ce9e629185e8b4b1a56d4db3f5b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 10:11:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Sat, 04 Nov 2017 10:12:05 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 04 Nov 2017 10:12:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 04 Nov 2017 10:12:07 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 04 Nov 2017 10:21:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Sat, 04 Nov 2017 10:21:00 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 04 Nov 2017 10:21:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 04 Nov 2017 10:21:01 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 04 Nov 2017 11:26:18 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 04 Nov 2017 11:26:18 GMT
ENV PHP_VERSION=5.6.32
# Sat, 04 Nov 2017 11:26:18 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Sat, 04 Nov 2017 11:26:18 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Sat, 04 Nov 2017 11:26:32 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 04 Nov 2017 11:26:33 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:30:30 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 04 Nov 2017 11:30:31 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:30:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 04 Nov 2017 11:30:31 GMT
WORKDIR /var/www/html
# Sat, 04 Nov 2017 11:30:32 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 04 Nov 2017 11:30:32 GMT
EXPOSE 9000/tcp
# Sat, 04 Nov 2017 11:30:32 GMT
CMD ["php-fpm"]
# Sat, 04 Nov 2017 14:09:53 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 04 Nov 2017 14:09:53 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 04 Nov 2017 14:10:18 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 04 Nov 2017 14:10:26 GMT
RUN docker-php-ext-install mysqli
# Sat, 04 Nov 2017 14:10:32 GMT
RUN docker-php-ext-install mcrypt
# Sat, 04 Nov 2017 14:10:53 GMT
RUN docker-php-ext-install zip
# Sat, 04 Nov 2017 14:10:54 GMT
VOLUME [/var/www/html]
# Sat, 04 Nov 2017 14:10:54 GMT
ENV JOOMLA_VERSION=3.8.0
# Sat, 04 Nov 2017 14:10:54 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Sat, 04 Nov 2017 14:11:03 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 04 Nov 2017 14:11:03 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Sat, 04 Nov 2017 14:11:04 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Sat, 04 Nov 2017 14:11:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 14:11:04 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8204bc927258ee7d613ed166e9ee95041987ddbfddaf39594e54b403d55dc09`  
		Last Modified: Sat, 04 Nov 2017 11:53:46 GMT  
		Size: 82.5 MB (82497571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fc16bb18e4e7f7c6975e0cbef8949d968f35f0672b4ebd5006afb10c20ca10`  
		Last Modified: Sat, 04 Nov 2017 11:53:17 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e373d95597369ee3b074ccc1db856f2910557cbca2420e5675b9f0c74cb33ce8`  
		Last Modified: Sat, 04 Nov 2017 12:07:47 GMT  
		Size: 12.8 MB (12801459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea72132e8640652012ee0a59f8dcc5e493745e50b3c8deb245ead16c6be090d7`  
		Last Modified: Sat, 04 Nov 2017 12:07:43 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce16a7a57481224d6898080429c90f3bbdd009d19b9883e01f3ac952d78063e`  
		Last Modified: Sat, 04 Nov 2017 12:07:47 GMT  
		Size: 8.9 MB (8850979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8eeffa923158c860c62ebc0ef2f33101db91733210d9442fc9d8c736c07f1af`  
		Last Modified: Sat, 04 Nov 2017 12:07:43 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af1d66a9b9274dffe11f158216812564dfe0a9ef6986acc4986dd5397c97844`  
		Last Modified: Sat, 04 Nov 2017 12:07:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb42ac0b9f7c5e229ef66f30f36ccec9a2b79685e8a043456096a95c25ff5eee`  
		Last Modified: Sat, 04 Nov 2017 12:07:43 GMT  
		Size: 7.6 KB (7617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358967860a81909194265f50952c06a3abef19e4388899cc4313f0de4b309e7a`  
		Last Modified: Sat, 04 Nov 2017 14:14:10 GMT  
		Size: 3.0 MB (2981563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514609f516f1da59fe2688b8f61e71fce09595ab48b3ea9963f44a2aecdce688`  
		Last Modified: Sat, 04 Nov 2017 14:14:10 GMT  
		Size: 58.0 KB (57998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c2cf62519b1e32d6f98ba73a8f646ea203c4b0186cbfdeec74d1fca9ef0a9c`  
		Last Modified: Sat, 04 Nov 2017 14:14:07 GMT  
		Size: 19.7 KB (19707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e558b1f6dd0a744786c4affe5795fd65a6224fac864617749478424d02f187f0`  
		Last Modified: Sat, 04 Nov 2017 14:14:08 GMT  
		Size: 63.4 KB (63409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f1853c8674622f8eaf9219821bd4b2f830367e64b72a51fca9361eee57c414`  
		Last Modified: Sat, 04 Nov 2017 14:14:10 GMT  
		Size: 9.4 MB (9409020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef11c56a7828961b5e1f58302feb579e9d7fba741a6af82aa2f3acf43f90fa0`  
		Last Modified: Sat, 04 Nov 2017 14:14:07 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92bcca28723fe712540002fdebebe177bb3c3ce8bc45cfcd1b4d9e88d66b1aa`  
		Last Modified: Sat, 04 Nov 2017 14:14:08 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:fpm-php7`

```console
$ docker pull joomla@sha256:bcd900dde07b678cb688dfb6a90a01e2310eb09fedf0bae4f471a7ef8cff2dca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:fpm-php7` - linux; amd64

```console
$ docker pull joomla@sha256:a955141d5c743f070634d77537362ad75263a3c270f80f406f672daa5961947f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.9 MB (172850107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78108f91cff7b098e4fc87a543cd17de985243f3222a72fa91fc07220a3082eb`
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
# Thu, 26 Oct 2017 20:17:22 GMT
ENV PHP_VERSION=7.0.25
# Thu, 26 Oct 2017 20:17:22 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.25.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.25.tar.xz.asc/from/this/mirror
# Thu, 26 Oct 2017 20:17:22 GMT
ENV PHP_SHA256=5cc14bd20fb2226f6d34465662425cd100441bde9042ea1cef2e4506d6ded8cc PHP_MD5=
# Thu, 26 Oct 2017 20:17:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 26 Oct 2017 20:17:44 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 26 Oct 2017 20:21:11 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 26 Oct 2017 20:21:11 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Thu, 26 Oct 2017 20:21:12 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 26 Oct 2017 20:21:12 GMT
WORKDIR /var/www/html
# Thu, 26 Oct 2017 20:21:13 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 26 Oct 2017 20:21:13 GMT
EXPOSE 9000/tcp
# Thu, 26 Oct 2017 20:21:13 GMT
CMD ["php-fpm"]
# Sat, 04 Nov 2017 14:11:17 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 04 Nov 2017 14:11:17 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 04 Nov 2017 14:11:44 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 04 Nov 2017 14:11:53 GMT
RUN docker-php-ext-install mysqli
# Sat, 04 Nov 2017 14:11:59 GMT
RUN docker-php-ext-install mcrypt
# Sat, 04 Nov 2017 14:12:19 GMT
RUN docker-php-ext-install zip
# Sat, 04 Nov 2017 14:12:20 GMT
VOLUME [/var/www/html]
# Sat, 04 Nov 2017 14:12:20 GMT
ENV JOOMLA_VERSION=3.8.0
# Sat, 04 Nov 2017 14:12:20 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Sat, 04 Nov 2017 14:12:27 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 04 Nov 2017 14:12:28 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Sat, 04 Nov 2017 14:12:28 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Sat, 04 Nov 2017 14:12:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 14:12:28 GMT
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
	-	`sha256:004eec0f86c3319872d0646d26598db3396b05ad5b36d8c7d7b16ecab54dcf40`  
		Last Modified: Thu, 26 Oct 2017 20:44:55 GMT  
		Size: 12.3 MB (12301410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c31b10a6fd14173c576305a8fea0eae3c18a0a93125e897b482f33d0fd69334`  
		Last Modified: Thu, 26 Oct 2017 20:44:49 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:411382ec869c7540703ae7771f3ec265474383ae0142ef0686d932617a3d87d2`  
		Last Modified: Thu, 26 Oct 2017 20:44:53 GMT  
		Size: 12.9 MB (12910188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d027256730f7d5eb3c303e52644ee4ba35d77f83fb0f1ffc484149fb0f37f2`  
		Last Modified: Thu, 26 Oct 2017 20:44:50 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f5f403318d639a158b9d455ccb2ea6b4cae912fcfca4a451d8202a42de4d53`  
		Last Modified: Thu, 26 Oct 2017 20:44:49 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfafe4900306ffdd3db378306a326c88e32cbf62fe5bd950f6c7ce741dba4bc8`  
		Last Modified: Thu, 26 Oct 2017 20:44:49 GMT  
		Size: 7.7 KB (7676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aeeeb1f6461ff01bd4e466e2f2364ac175945664d5dec649356c6db42ae59fb`  
		Last Modified: Sat, 04 Nov 2017 14:14:43 GMT  
		Size: 3.0 MB (2976771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148c5deb6ba2b91144670d2dca8c51a5a96a9a1677ab7b7f54be74a5362334aa`  
		Last Modified: Sat, 04 Nov 2017 14:14:42 GMT  
		Size: 56.4 KB (56406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1fce2e10b962d6ea3c4d1a07fef74fa759b12e5cb838ca4daf7959aee47589`  
		Last Modified: Sat, 04 Nov 2017 14:14:40 GMT  
		Size: 18.3 KB (18294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5f751aea9ea191e50393552f631cfdcd64264c80a20fb9153c176e0900b445`  
		Last Modified: Sat, 04 Nov 2017 14:14:41 GMT  
		Size: 72.8 KB (72765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3956530bdda0a45385a9e2f61819b0c8a05a3cfe6446c9186e02e23ff13485f`  
		Last Modified: Sat, 04 Nov 2017 14:14:43 GMT  
		Size: 9.4 MB (9409012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2dcd577e2f0a20e514095cb43a515bb80499e90c1e82d188660ab6bc0f05592`  
		Last Modified: Sat, 04 Nov 2017 14:14:40 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bb2d74922f7ffc815f2945941107ad02a9673ad4d8042c1108fb4bdf2d1e5c0`  
		Last Modified: Sat, 04 Nov 2017 14:14:40 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `joomla:latest`

```console
$ docker pull joomla@sha256:87ecfed28bbfe0df37f50846c6ba1d3efe5e56ffe3042caf73be5e8fdc479245
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:latest` - linux; amd64

```console
$ docker pull joomla@sha256:569a55922bf008b6cd08e0f7c212252034855017c350b46567bc9a446cd0e7c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.7 MB (172659877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71d405a268e8d3f053483e4ba40acdfd2a149f57c1d9f4ef5cd2bc84e5c1e8cf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 10:11:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Sat, 04 Nov 2017 10:12:05 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 04 Nov 2017 10:12:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 04 Nov 2017 10:12:07 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 04 Nov 2017 10:17:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 10:17:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 04 Nov 2017 10:17:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 04 Nov 2017 10:17:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Sat, 04 Nov 2017 10:17:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 04 Nov 2017 10:17:20 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Sat, 04 Nov 2017 10:17:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 04 Nov 2017 10:17:21 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 04 Nov 2017 10:17:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Sat, 04 Nov 2017 10:17:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 04 Nov 2017 10:17:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 04 Nov 2017 10:17:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 04 Nov 2017 11:23:09 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 04 Nov 2017 11:23:09 GMT
ENV PHP_VERSION=5.6.32
# Sat, 04 Nov 2017 11:23:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Sat, 04 Nov 2017 11:23:10 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Sat, 04 Nov 2017 11:23:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 04 Nov 2017 11:23:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:26:07 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 04 Nov 2017 11:26:08 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:26:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 04 Nov 2017 11:26:08 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:26:08 GMT
WORKDIR /var/www/html
# Sat, 04 Nov 2017 11:26:08 GMT
EXPOSE 80/tcp
# Sat, 04 Nov 2017 11:26:09 GMT
CMD ["apache2-foreground"]
# Sat, 04 Nov 2017 14:07:05 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 04 Nov 2017 14:07:05 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 04 Nov 2017 14:07:06 GMT
RUN a2enmod rewrite
# Sat, 04 Nov 2017 14:07:31 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 04 Nov 2017 14:07:39 GMT
RUN docker-php-ext-install mysqli
# Sat, 04 Nov 2017 14:07:45 GMT
RUN docker-php-ext-install mcrypt
# Sat, 04 Nov 2017 14:08:06 GMT
RUN docker-php-ext-install zip
# Sat, 04 Nov 2017 14:08:06 GMT
VOLUME [/var/www/html]
# Sat, 04 Nov 2017 14:08:07 GMT
ENV JOOMLA_VERSION=3.8.0
# Sat, 04 Nov 2017 14:08:07 GMT
ENV JOOMLA_SHA1=e15cfee1b31fe65b1c5038d605478404be9f64e2
# Sat, 04 Nov 2017 14:08:13 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 04 Nov 2017 14:08:13 GMT
COPY file:3deca947777d335aa9a31ee948536cf75b09cc04e0c7d202b443732a0f66cc0b in /entrypoint.sh 
# Sat, 04 Nov 2017 14:08:14 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Sat, 04 Nov 2017 14:08:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 14:08:15 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8204bc927258ee7d613ed166e9ee95041987ddbfddaf39594e54b403d55dc09`  
		Last Modified: Sat, 04 Nov 2017 11:53:46 GMT  
		Size: 82.5 MB (82497571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fc16bb18e4e7f7c6975e0cbef8949d968f35f0672b4ebd5006afb10c20ca10`  
		Last Modified: Sat, 04 Nov 2017 11:53:17 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31098e61b2ae5029460c46c69ecf26335ffdf5ba5a7e492a104018df593735c9`  
		Last Modified: Sat, 04 Nov 2017 11:55:30 GMT  
		Size: 3.0 MB (3012952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ae64bfd33d38ba595480aead27756418fa63d2e22da09dc0f2673d863eb051`  
		Last Modified: Sat, 04 Nov 2017 11:55:29 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003c1818b354888cc37d66173a56d44d1ff2b838f4b0cc3fffd403569686974c`  
		Last Modified: Sat, 04 Nov 2017 11:55:26 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fd4aeb32ad8234ae032a6ddbd2429dd6f1de2cc734319c8bfd7039b311fa9e`  
		Last Modified: Sat, 04 Nov 2017 11:55:26 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a094df7cedc1113abd270d4413af16b24013ba274fe2420cbbdf90f6c65e4efc`  
		Last Modified: Sat, 04 Nov 2017 11:55:26 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3bf6fc1a51d458237feb9dce24f825474e79effcce1beb49116c63a7fcf56dd`  
		Last Modified: Sat, 04 Nov 2017 12:07:02 GMT  
		Size: 12.8 MB (12818710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad235c26036088afd1c003e632bd42322640d9e796dc0151ae43b28e90d11997`  
		Last Modified: Sat, 04 Nov 2017 12:07:00 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edbf48bcbd7e5223e79aaff94e6c1ac3c4fff2d0cecefe8c80f501a01b0f2f50`  
		Last Modified: Sat, 04 Nov 2017 12:07:05 GMT  
		Size: 9.2 MB (9175640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6ae81d5745d569ea65dbdf9422d1e183bb475548a2d6c7f23729ea86d27fcd`  
		Last Modified: Sat, 04 Nov 2017 12:07:00 GMT  
		Size: 2.2 KB (2182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69838fd876d66a86b81229c3939492767b37e334b37d8101d601c6e14c7d4be1`  
		Last Modified: Sat, 04 Nov 2017 12:07:00 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a5524a7cb4f0fef324c6ce55aaf364bfec41f77e82efdf57d14c7b386ea889`  
		Last Modified: Sat, 04 Nov 2017 14:12:50 GMT  
		Size: 311.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32b669909b1bc189c27747b54700fb83eac6566f1b88a38d41a3879e7ee7e2e`  
		Last Modified: Sat, 04 Nov 2017 14:12:50 GMT  
		Size: 3.0 MB (3001484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0effa94b943a8f4b21b92f553cf6fdc34db9f8685e8d36607569066420c6d7`  
		Last Modified: Sat, 04 Nov 2017 14:12:50 GMT  
		Size: 58.0 KB (57998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c57c26c346029b24456a98ae1bd1accee82aca49b30feb63b20377078643ac`  
		Last Modified: Sat, 04 Nov 2017 14:12:47 GMT  
		Size: 19.7 KB (19705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8a9b80f4da5a8cd130ee2b4751e57f0c7f6b256cb5016f94f82a65d88c4f88`  
		Last Modified: Sat, 04 Nov 2017 14:12:48 GMT  
		Size: 63.4 KB (63413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338497e2405e3f75ec58d51c92eb19330eb7d63e2da779a7f12f3c2f983f2b8a`  
		Last Modified: Sat, 04 Nov 2017 14:12:50 GMT  
		Size: 9.4 MB (9409011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa2d7d03b2043def034b14fc60953d983e5ae8fdba53eb578266b879a39c2d7`  
		Last Modified: Sat, 04 Nov 2017 14:12:48 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd7b0cc509feb335e7bad16c312e56031221eb1e51665283df9b29ea6017dde`  
		Last Modified: Sat, 04 Nov 2017 14:12:47 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
