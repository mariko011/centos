<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nextcloud`

-	[`nextcloud:11`](#nextcloud11)
-	[`nextcloud:11.0`](#nextcloud110)
-	[`nextcloud:11.0.5`](#nextcloud1105)
-	[`nextcloud:11.0.5-apache`](#nextcloud1105-apache)
-	[`nextcloud:11.0.5-fpm`](#nextcloud1105-fpm)
-	[`nextcloud:11.0-apache`](#nextcloud110-apache)
-	[`nextcloud:11.0-fpm`](#nextcloud110-fpm)
-	[`nextcloud:11-apache`](#nextcloud11-apache)
-	[`nextcloud:11-fpm`](#nextcloud11-fpm)
-	[`nextcloud:12`](#nextcloud12)
-	[`nextcloud:12.0`](#nextcloud120)
-	[`nextcloud:12.0.3`](#nextcloud1203)
-	[`nextcloud:12.0.3-apache`](#nextcloud1203-apache)
-	[`nextcloud:12.0.3-fpm`](#nextcloud1203-fpm)
-	[`nextcloud:12.0-apache`](#nextcloud120-apache)
-	[`nextcloud:12.0-fpm`](#nextcloud120-fpm)
-	[`nextcloud:12-apache`](#nextcloud12-apache)
-	[`nextcloud:12-fpm`](#nextcloud12-fpm)
-	[`nextcloud:apache`](#nextcloudapache)
-	[`nextcloud:fpm`](#nextcloudfpm)
-	[`nextcloud:latest`](#nextcloudlatest)

## `nextcloud:11`

```console
$ docker pull nextcloud@sha256:77c3cc50f64eb886de8932bb785bc1b161f2f0a647bafe12ff53ca126818de92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `nextcloud:11` - linux; s390x

```console
$ docker pull nextcloud@sha256:46d8dc10e33abbc775d00acff1fe12dfbc1f9894cf6e604cd54b8e7cc19482cc
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.1 MB (233104218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fc33b59b056c4b563911bed5ea4493ab26b2e72a02cc7431ee78f8926f04f7d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:18:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 08 Sep 2017 06:19:14 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:19:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 08 Sep 2017 06:19:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 08 Sep 2017 06:22:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:22:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 08 Sep 2017 06:23:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 08 Sep 2017 06:23:00 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 08 Sep 2017 06:23:01 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 08 Sep 2017 06:23:01 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 08 Sep 2017 06:23:02 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 06:23:03 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_VERSION=7.1.9
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 08 Sep 2017 06:23:19 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 06:23:19 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 06:25:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Sep 2017 17:22:33 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Thu, 21 Sep 2017 17:22:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Sep 2017 17:22:33 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 21 Sep 2017 17:22:34 GMT
WORKDIR /var/www/html
# Thu, 21 Sep 2017 17:22:34 GMT
EXPOSE 80/tcp
# Thu, 21 Sep 2017 17:22:34 GMT
CMD ["apache2-foreground"]
# Thu, 21 Sep 2017 17:50:49 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 21 Sep 2017 17:52:53 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Thu, 21 Sep 2017 17:52:54 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 21 Sep 2017 17:52:54 GMT
RUN a2enmod rewrite
# Thu, 21 Sep 2017 17:53:18 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Thu, 21 Sep 2017 17:53:18 GMT
RUN a2enmod rewrite
# Thu, 21 Sep 2017 17:53:18 GMT
ENV NEXTCLOUD_VERSION=11.0.5
# Thu, 21 Sep 2017 17:53:19 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Thu, 21 Sep 2017 17:53:19 GMT
VOLUME [/var/www/html]
# Thu, 21 Sep 2017 17:53:39 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Thu, 21 Sep 2017 17:53:40 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Thu, 21 Sep 2017 17:53:40 GMT
COPY multi:a4ce16f733fa0a4cb4b62b3fe3229e71f5a6b970a03b912772780cdb452098f4 in /usr/src/nextcloud/config/ 
# Thu, 21 Sep 2017 17:53:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 17:53:40 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701b1d6891093c664aafb5ddded8b897bab2678b49b4c39ed152c86139e3b472`  
		Last Modified: Fri, 08 Sep 2017 06:58:03 GMT  
		Size: 64.0 MB (63977876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e477fee1ce9a2412b1abf6eb058badc7a59941c997bf3c5764c47e9f3d51e2f0`  
		Last Modified: Fri, 08 Sep 2017 06:57:49 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e311b1d5cc2339ce23df72332cc46172629bd6963e8637778bb8f88fcdd864`  
		Last Modified: Fri, 08 Sep 2017 06:58:25 GMT  
		Size: 3.0 MB (3022480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d672acbf183bc3af07e7748180d93a6840e2318cd89c297d412c1e411529260`  
		Last Modified: Fri, 08 Sep 2017 06:58:24 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab45def1c89dc1f846f7d3ae8e83f3d1e4545980614f582148db747e84351a72`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d137773f7744dbe6997e12c595f10532708ad0d138d8bee39c78b11a3876048`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f35a6f0e12655b63b7b31b460fbbd16bf9b36b984c3d681e9dd64788a29998`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d829983b803a79caeb8eddf17a4b9589d56bbde42e6f9be16a66cf837addfc9`  
		Last Modified: Fri, 08 Sep 2017 06:58:22 GMT  
		Size: 12.5 MB (12509581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b186566cc709c8c1a770d57f62a500a9eb6a9f59812ce47d28cde8774b850648`  
		Last Modified: Fri, 08 Sep 2017 06:58:21 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb759026a75c2bfeb3e7b0d2bca8a72ec0859321feabfa7d74bc386d29874e3`  
		Last Modified: Fri, 08 Sep 2017 06:58:25 GMT  
		Size: 14.0 MB (14048119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfd73e35d71aa65f5fe44fcf1f25c670da66c2497ab351fd488d16e5e327a4f`  
		Last Modified: Thu, 21 Sep 2017 17:24:22 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1affa5a5b42c12b3722de9c5817991ede94966f37761dd1edc15c4a0e3b5ec62`  
		Last Modified: Thu, 21 Sep 2017 17:24:22 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1d8755b9754237c1548613becaeabf8ad6a1c2918977dcf231e7381269cc80`  
		Last Modified: Thu, 21 Sep 2017 17:59:00 GMT  
		Size: 36.8 MB (36830226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc9b4cb21ecaded08735db51e5a1b7592f7bc5c62d2284b25f7482e1fb8c070`  
		Last Modified: Thu, 21 Sep 2017 17:58:53 GMT  
		Size: 2.0 MB (1963481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c57085e60c6a0dc86a69e2d554ddc2f1a7a6f1e59f460c06ab8874e479b69b`  
		Last Modified: Thu, 21 Sep 2017 17:58:53 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07a516baa82fba28515e2a8ab3c3ec83c1f3a4db04599e062b24a64400ab5d3`  
		Last Modified: Thu, 21 Sep 2017 17:58:52 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03a960119a20feb16e42fcb650808ffc81da8686a4fc45707d31e9857ba3e41f`  
		Last Modified: Thu, 21 Sep 2017 17:58:52 GMT  
		Size: 1.4 MB (1354553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190366b0e92dcf802d8c591bdeb52d480524e845433188c14afba2d04782c123`  
		Last Modified: Fri, 08 Sep 2017 07:43:46 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dddc82d67d05323d728c5f33b37168c9a2cb3cca56922e9fcbf609fbfa6263c`  
		Last Modified: Thu, 21 Sep 2017 17:58:56 GMT  
		Size: 46.6 MB (46600370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a39e0d8f17395c4e254f09d8e6a331675df8ab409696f3e08d8d969013ec5ed`  
		Last Modified: Thu, 21 Sep 2017 17:58:48 GMT  
		Size: 938.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db4bb39171c0d55c06fceb0bce880a90b6067d2b044cb08dfede2d7186f7bdb8`  
		Last Modified: Thu, 21 Sep 2017 17:58:47 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11.0`

```console
$ docker pull nextcloud@sha256:77c3cc50f64eb886de8932bb785bc1b161f2f0a647bafe12ff53ca126818de92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `nextcloud:11.0` - linux; s390x

```console
$ docker pull nextcloud@sha256:46d8dc10e33abbc775d00acff1fe12dfbc1f9894cf6e604cd54b8e7cc19482cc
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.1 MB (233104218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fc33b59b056c4b563911bed5ea4493ab26b2e72a02cc7431ee78f8926f04f7d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:18:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 08 Sep 2017 06:19:14 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:19:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 08 Sep 2017 06:19:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 08 Sep 2017 06:22:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:22:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 08 Sep 2017 06:23:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 08 Sep 2017 06:23:00 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 08 Sep 2017 06:23:01 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 08 Sep 2017 06:23:01 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 08 Sep 2017 06:23:02 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 06:23:03 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_VERSION=7.1.9
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 08 Sep 2017 06:23:19 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 06:23:19 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 06:25:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Sep 2017 17:22:33 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Thu, 21 Sep 2017 17:22:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Sep 2017 17:22:33 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 21 Sep 2017 17:22:34 GMT
WORKDIR /var/www/html
# Thu, 21 Sep 2017 17:22:34 GMT
EXPOSE 80/tcp
# Thu, 21 Sep 2017 17:22:34 GMT
CMD ["apache2-foreground"]
# Thu, 21 Sep 2017 17:50:49 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 21 Sep 2017 17:52:53 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Thu, 21 Sep 2017 17:52:54 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 21 Sep 2017 17:52:54 GMT
RUN a2enmod rewrite
# Thu, 21 Sep 2017 17:53:18 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Thu, 21 Sep 2017 17:53:18 GMT
RUN a2enmod rewrite
# Thu, 21 Sep 2017 17:53:18 GMT
ENV NEXTCLOUD_VERSION=11.0.5
# Thu, 21 Sep 2017 17:53:19 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Thu, 21 Sep 2017 17:53:19 GMT
VOLUME [/var/www/html]
# Thu, 21 Sep 2017 17:53:39 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Thu, 21 Sep 2017 17:53:40 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Thu, 21 Sep 2017 17:53:40 GMT
COPY multi:a4ce16f733fa0a4cb4b62b3fe3229e71f5a6b970a03b912772780cdb452098f4 in /usr/src/nextcloud/config/ 
# Thu, 21 Sep 2017 17:53:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 17:53:40 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701b1d6891093c664aafb5ddded8b897bab2678b49b4c39ed152c86139e3b472`  
		Last Modified: Fri, 08 Sep 2017 06:58:03 GMT  
		Size: 64.0 MB (63977876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e477fee1ce9a2412b1abf6eb058badc7a59941c997bf3c5764c47e9f3d51e2f0`  
		Last Modified: Fri, 08 Sep 2017 06:57:49 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e311b1d5cc2339ce23df72332cc46172629bd6963e8637778bb8f88fcdd864`  
		Last Modified: Fri, 08 Sep 2017 06:58:25 GMT  
		Size: 3.0 MB (3022480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d672acbf183bc3af07e7748180d93a6840e2318cd89c297d412c1e411529260`  
		Last Modified: Fri, 08 Sep 2017 06:58:24 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab45def1c89dc1f846f7d3ae8e83f3d1e4545980614f582148db747e84351a72`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d137773f7744dbe6997e12c595f10532708ad0d138d8bee39c78b11a3876048`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f35a6f0e12655b63b7b31b460fbbd16bf9b36b984c3d681e9dd64788a29998`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d829983b803a79caeb8eddf17a4b9589d56bbde42e6f9be16a66cf837addfc9`  
		Last Modified: Fri, 08 Sep 2017 06:58:22 GMT  
		Size: 12.5 MB (12509581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b186566cc709c8c1a770d57f62a500a9eb6a9f59812ce47d28cde8774b850648`  
		Last Modified: Fri, 08 Sep 2017 06:58:21 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb759026a75c2bfeb3e7b0d2bca8a72ec0859321feabfa7d74bc386d29874e3`  
		Last Modified: Fri, 08 Sep 2017 06:58:25 GMT  
		Size: 14.0 MB (14048119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfd73e35d71aa65f5fe44fcf1f25c670da66c2497ab351fd488d16e5e327a4f`  
		Last Modified: Thu, 21 Sep 2017 17:24:22 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1affa5a5b42c12b3722de9c5817991ede94966f37761dd1edc15c4a0e3b5ec62`  
		Last Modified: Thu, 21 Sep 2017 17:24:22 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1d8755b9754237c1548613becaeabf8ad6a1c2918977dcf231e7381269cc80`  
		Last Modified: Thu, 21 Sep 2017 17:59:00 GMT  
		Size: 36.8 MB (36830226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc9b4cb21ecaded08735db51e5a1b7592f7bc5c62d2284b25f7482e1fb8c070`  
		Last Modified: Thu, 21 Sep 2017 17:58:53 GMT  
		Size: 2.0 MB (1963481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c57085e60c6a0dc86a69e2d554ddc2f1a7a6f1e59f460c06ab8874e479b69b`  
		Last Modified: Thu, 21 Sep 2017 17:58:53 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07a516baa82fba28515e2a8ab3c3ec83c1f3a4db04599e062b24a64400ab5d3`  
		Last Modified: Thu, 21 Sep 2017 17:58:52 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03a960119a20feb16e42fcb650808ffc81da8686a4fc45707d31e9857ba3e41f`  
		Last Modified: Thu, 21 Sep 2017 17:58:52 GMT  
		Size: 1.4 MB (1354553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190366b0e92dcf802d8c591bdeb52d480524e845433188c14afba2d04782c123`  
		Last Modified: Fri, 08 Sep 2017 07:43:46 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dddc82d67d05323d728c5f33b37168c9a2cb3cca56922e9fcbf609fbfa6263c`  
		Last Modified: Thu, 21 Sep 2017 17:58:56 GMT  
		Size: 46.6 MB (46600370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a39e0d8f17395c4e254f09d8e6a331675df8ab409696f3e08d8d969013ec5ed`  
		Last Modified: Thu, 21 Sep 2017 17:58:48 GMT  
		Size: 938.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db4bb39171c0d55c06fceb0bce880a90b6067d2b044cb08dfede2d7186f7bdb8`  
		Last Modified: Thu, 21 Sep 2017 17:58:47 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11.0.5`

```console
$ docker pull nextcloud@sha256:77c3cc50f64eb886de8932bb785bc1b161f2f0a647bafe12ff53ca126818de92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `nextcloud:11.0.5` - linux; s390x

```console
$ docker pull nextcloud@sha256:46d8dc10e33abbc775d00acff1fe12dfbc1f9894cf6e604cd54b8e7cc19482cc
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.1 MB (233104218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fc33b59b056c4b563911bed5ea4493ab26b2e72a02cc7431ee78f8926f04f7d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:18:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 08 Sep 2017 06:19:14 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:19:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 08 Sep 2017 06:19:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 08 Sep 2017 06:22:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:22:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 08 Sep 2017 06:23:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 08 Sep 2017 06:23:00 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 08 Sep 2017 06:23:01 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 08 Sep 2017 06:23:01 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 08 Sep 2017 06:23:02 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 06:23:03 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_VERSION=7.1.9
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 08 Sep 2017 06:23:19 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 06:23:19 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 06:25:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Sep 2017 17:22:33 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Thu, 21 Sep 2017 17:22:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Sep 2017 17:22:33 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 21 Sep 2017 17:22:34 GMT
WORKDIR /var/www/html
# Thu, 21 Sep 2017 17:22:34 GMT
EXPOSE 80/tcp
# Thu, 21 Sep 2017 17:22:34 GMT
CMD ["apache2-foreground"]
# Thu, 21 Sep 2017 17:50:49 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 21 Sep 2017 17:52:53 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Thu, 21 Sep 2017 17:52:54 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 21 Sep 2017 17:52:54 GMT
RUN a2enmod rewrite
# Thu, 21 Sep 2017 17:53:18 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Thu, 21 Sep 2017 17:53:18 GMT
RUN a2enmod rewrite
# Thu, 21 Sep 2017 17:53:18 GMT
ENV NEXTCLOUD_VERSION=11.0.5
# Thu, 21 Sep 2017 17:53:19 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Thu, 21 Sep 2017 17:53:19 GMT
VOLUME [/var/www/html]
# Thu, 21 Sep 2017 17:53:39 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Thu, 21 Sep 2017 17:53:40 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Thu, 21 Sep 2017 17:53:40 GMT
COPY multi:a4ce16f733fa0a4cb4b62b3fe3229e71f5a6b970a03b912772780cdb452098f4 in /usr/src/nextcloud/config/ 
# Thu, 21 Sep 2017 17:53:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 17:53:40 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701b1d6891093c664aafb5ddded8b897bab2678b49b4c39ed152c86139e3b472`  
		Last Modified: Fri, 08 Sep 2017 06:58:03 GMT  
		Size: 64.0 MB (63977876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e477fee1ce9a2412b1abf6eb058badc7a59941c997bf3c5764c47e9f3d51e2f0`  
		Last Modified: Fri, 08 Sep 2017 06:57:49 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e311b1d5cc2339ce23df72332cc46172629bd6963e8637778bb8f88fcdd864`  
		Last Modified: Fri, 08 Sep 2017 06:58:25 GMT  
		Size: 3.0 MB (3022480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d672acbf183bc3af07e7748180d93a6840e2318cd89c297d412c1e411529260`  
		Last Modified: Fri, 08 Sep 2017 06:58:24 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab45def1c89dc1f846f7d3ae8e83f3d1e4545980614f582148db747e84351a72`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d137773f7744dbe6997e12c595f10532708ad0d138d8bee39c78b11a3876048`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f35a6f0e12655b63b7b31b460fbbd16bf9b36b984c3d681e9dd64788a29998`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d829983b803a79caeb8eddf17a4b9589d56bbde42e6f9be16a66cf837addfc9`  
		Last Modified: Fri, 08 Sep 2017 06:58:22 GMT  
		Size: 12.5 MB (12509581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b186566cc709c8c1a770d57f62a500a9eb6a9f59812ce47d28cde8774b850648`  
		Last Modified: Fri, 08 Sep 2017 06:58:21 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb759026a75c2bfeb3e7b0d2bca8a72ec0859321feabfa7d74bc386d29874e3`  
		Last Modified: Fri, 08 Sep 2017 06:58:25 GMT  
		Size: 14.0 MB (14048119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfd73e35d71aa65f5fe44fcf1f25c670da66c2497ab351fd488d16e5e327a4f`  
		Last Modified: Thu, 21 Sep 2017 17:24:22 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1affa5a5b42c12b3722de9c5817991ede94966f37761dd1edc15c4a0e3b5ec62`  
		Last Modified: Thu, 21 Sep 2017 17:24:22 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1d8755b9754237c1548613becaeabf8ad6a1c2918977dcf231e7381269cc80`  
		Last Modified: Thu, 21 Sep 2017 17:59:00 GMT  
		Size: 36.8 MB (36830226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc9b4cb21ecaded08735db51e5a1b7592f7bc5c62d2284b25f7482e1fb8c070`  
		Last Modified: Thu, 21 Sep 2017 17:58:53 GMT  
		Size: 2.0 MB (1963481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c57085e60c6a0dc86a69e2d554ddc2f1a7a6f1e59f460c06ab8874e479b69b`  
		Last Modified: Thu, 21 Sep 2017 17:58:53 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07a516baa82fba28515e2a8ab3c3ec83c1f3a4db04599e062b24a64400ab5d3`  
		Last Modified: Thu, 21 Sep 2017 17:58:52 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03a960119a20feb16e42fcb650808ffc81da8686a4fc45707d31e9857ba3e41f`  
		Last Modified: Thu, 21 Sep 2017 17:58:52 GMT  
		Size: 1.4 MB (1354553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190366b0e92dcf802d8c591bdeb52d480524e845433188c14afba2d04782c123`  
		Last Modified: Fri, 08 Sep 2017 07:43:46 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dddc82d67d05323d728c5f33b37168c9a2cb3cca56922e9fcbf609fbfa6263c`  
		Last Modified: Thu, 21 Sep 2017 17:58:56 GMT  
		Size: 46.6 MB (46600370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a39e0d8f17395c4e254f09d8e6a331675df8ab409696f3e08d8d969013ec5ed`  
		Last Modified: Thu, 21 Sep 2017 17:58:48 GMT  
		Size: 938.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db4bb39171c0d55c06fceb0bce880a90b6067d2b044cb08dfede2d7186f7bdb8`  
		Last Modified: Thu, 21 Sep 2017 17:58:47 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11.0.5-apache`

```console
$ docker pull nextcloud@sha256:77c3cc50f64eb886de8932bb785bc1b161f2f0a647bafe12ff53ca126818de92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `nextcloud:11.0.5-apache` - linux; s390x

```console
$ docker pull nextcloud@sha256:46d8dc10e33abbc775d00acff1fe12dfbc1f9894cf6e604cd54b8e7cc19482cc
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.1 MB (233104218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fc33b59b056c4b563911bed5ea4493ab26b2e72a02cc7431ee78f8926f04f7d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:18:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 08 Sep 2017 06:19:14 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:19:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 08 Sep 2017 06:19:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 08 Sep 2017 06:22:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:22:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 08 Sep 2017 06:23:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 08 Sep 2017 06:23:00 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 08 Sep 2017 06:23:01 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 08 Sep 2017 06:23:01 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 08 Sep 2017 06:23:02 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 06:23:03 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_VERSION=7.1.9
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 08 Sep 2017 06:23:19 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 06:23:19 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 06:25:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Sep 2017 17:22:33 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Thu, 21 Sep 2017 17:22:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Sep 2017 17:22:33 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 21 Sep 2017 17:22:34 GMT
WORKDIR /var/www/html
# Thu, 21 Sep 2017 17:22:34 GMT
EXPOSE 80/tcp
# Thu, 21 Sep 2017 17:22:34 GMT
CMD ["apache2-foreground"]
# Thu, 21 Sep 2017 17:50:49 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 21 Sep 2017 17:52:53 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Thu, 21 Sep 2017 17:52:54 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 21 Sep 2017 17:52:54 GMT
RUN a2enmod rewrite
# Thu, 21 Sep 2017 17:53:18 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Thu, 21 Sep 2017 17:53:18 GMT
RUN a2enmod rewrite
# Thu, 21 Sep 2017 17:53:18 GMT
ENV NEXTCLOUD_VERSION=11.0.5
# Thu, 21 Sep 2017 17:53:19 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Thu, 21 Sep 2017 17:53:19 GMT
VOLUME [/var/www/html]
# Thu, 21 Sep 2017 17:53:39 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Thu, 21 Sep 2017 17:53:40 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Thu, 21 Sep 2017 17:53:40 GMT
COPY multi:a4ce16f733fa0a4cb4b62b3fe3229e71f5a6b970a03b912772780cdb452098f4 in /usr/src/nextcloud/config/ 
# Thu, 21 Sep 2017 17:53:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 17:53:40 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701b1d6891093c664aafb5ddded8b897bab2678b49b4c39ed152c86139e3b472`  
		Last Modified: Fri, 08 Sep 2017 06:58:03 GMT  
		Size: 64.0 MB (63977876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e477fee1ce9a2412b1abf6eb058badc7a59941c997bf3c5764c47e9f3d51e2f0`  
		Last Modified: Fri, 08 Sep 2017 06:57:49 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e311b1d5cc2339ce23df72332cc46172629bd6963e8637778bb8f88fcdd864`  
		Last Modified: Fri, 08 Sep 2017 06:58:25 GMT  
		Size: 3.0 MB (3022480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d672acbf183bc3af07e7748180d93a6840e2318cd89c297d412c1e411529260`  
		Last Modified: Fri, 08 Sep 2017 06:58:24 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab45def1c89dc1f846f7d3ae8e83f3d1e4545980614f582148db747e84351a72`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d137773f7744dbe6997e12c595f10532708ad0d138d8bee39c78b11a3876048`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f35a6f0e12655b63b7b31b460fbbd16bf9b36b984c3d681e9dd64788a29998`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d829983b803a79caeb8eddf17a4b9589d56bbde42e6f9be16a66cf837addfc9`  
		Last Modified: Fri, 08 Sep 2017 06:58:22 GMT  
		Size: 12.5 MB (12509581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b186566cc709c8c1a770d57f62a500a9eb6a9f59812ce47d28cde8774b850648`  
		Last Modified: Fri, 08 Sep 2017 06:58:21 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb759026a75c2bfeb3e7b0d2bca8a72ec0859321feabfa7d74bc386d29874e3`  
		Last Modified: Fri, 08 Sep 2017 06:58:25 GMT  
		Size: 14.0 MB (14048119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfd73e35d71aa65f5fe44fcf1f25c670da66c2497ab351fd488d16e5e327a4f`  
		Last Modified: Thu, 21 Sep 2017 17:24:22 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1affa5a5b42c12b3722de9c5817991ede94966f37761dd1edc15c4a0e3b5ec62`  
		Last Modified: Thu, 21 Sep 2017 17:24:22 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1d8755b9754237c1548613becaeabf8ad6a1c2918977dcf231e7381269cc80`  
		Last Modified: Thu, 21 Sep 2017 17:59:00 GMT  
		Size: 36.8 MB (36830226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc9b4cb21ecaded08735db51e5a1b7592f7bc5c62d2284b25f7482e1fb8c070`  
		Last Modified: Thu, 21 Sep 2017 17:58:53 GMT  
		Size: 2.0 MB (1963481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c57085e60c6a0dc86a69e2d554ddc2f1a7a6f1e59f460c06ab8874e479b69b`  
		Last Modified: Thu, 21 Sep 2017 17:58:53 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07a516baa82fba28515e2a8ab3c3ec83c1f3a4db04599e062b24a64400ab5d3`  
		Last Modified: Thu, 21 Sep 2017 17:58:52 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03a960119a20feb16e42fcb650808ffc81da8686a4fc45707d31e9857ba3e41f`  
		Last Modified: Thu, 21 Sep 2017 17:58:52 GMT  
		Size: 1.4 MB (1354553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190366b0e92dcf802d8c591bdeb52d480524e845433188c14afba2d04782c123`  
		Last Modified: Fri, 08 Sep 2017 07:43:46 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dddc82d67d05323d728c5f33b37168c9a2cb3cca56922e9fcbf609fbfa6263c`  
		Last Modified: Thu, 21 Sep 2017 17:58:56 GMT  
		Size: 46.6 MB (46600370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a39e0d8f17395c4e254f09d8e6a331675df8ab409696f3e08d8d969013ec5ed`  
		Last Modified: Thu, 21 Sep 2017 17:58:48 GMT  
		Size: 938.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db4bb39171c0d55c06fceb0bce880a90b6067d2b044cb08dfede2d7186f7bdb8`  
		Last Modified: Thu, 21 Sep 2017 17:58:47 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11.0.5-fpm`

```console
$ docker pull nextcloud@sha256:053432f845384d8d514fe3912b56095504530f251f89e4611f67618d41e5a267
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `nextcloud:11.0.5-fpm` - linux; s390x

```console
$ docker pull nextcloud@sha256:b62fe5c464b58dfa6da2889e06859181fd539bf535b77cbe0cf567aaef6d2b37
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.8 MB (229838825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54ce09dc21d700982bacc1cf72c02cc891231c06d1f5077c59f1de7792624a56`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:18:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 08 Sep 2017 06:19:14 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:19:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 08 Sep 2017 06:19:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 08 Sep 2017 06:25:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 08 Sep 2017 06:25:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:25:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:25:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 06:25:40 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 08 Sep 2017 06:25:40 GMT
ENV PHP_VERSION=7.1.9
# Fri, 08 Sep 2017 06:25:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 06:25:40 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 08 Sep 2017 06:25:57 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 06:25:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 06:29:00 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Sep 2017 17:22:39 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Thu, 21 Sep 2017 17:22:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Sep 2017 17:22:39 GMT
WORKDIR /var/www/html
# Thu, 21 Sep 2017 17:22:40 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 21 Sep 2017 17:22:40 GMT
EXPOSE 9000/tcp
# Thu, 21 Sep 2017 17:22:40 GMT
CMD ["php-fpm"]
# Thu, 21 Sep 2017 17:54:04 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 21 Sep 2017 17:56:11 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Thu, 21 Sep 2017 17:56:12 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 21 Sep 2017 17:56:35 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Thu, 21 Sep 2017 17:56:35 GMT
ENV NEXTCLOUD_VERSION=11.0.5
# Thu, 21 Sep 2017 17:56:35 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Thu, 21 Sep 2017 17:56:36 GMT
VOLUME [/var/www/html]
# Thu, 21 Sep 2017 17:57:33 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Thu, 21 Sep 2017 17:57:34 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Thu, 21 Sep 2017 17:57:34 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Thu, 21 Sep 2017 17:57:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 17:57:35 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701b1d6891093c664aafb5ddded8b897bab2678b49b4c39ed152c86139e3b472`  
		Last Modified: Fri, 08 Sep 2017 06:58:03 GMT  
		Size: 64.0 MB (63977876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e477fee1ce9a2412b1abf6eb058badc7a59941c997bf3c5764c47e9f3d51e2f0`  
		Last Modified: Fri, 08 Sep 2017 06:57:49 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25477b33aeb20022499d2d5afbf87cbf3751a8975adb8b3eaaa17662f8ce506`  
		Last Modified: Fri, 08 Sep 2017 06:58:37 GMT  
		Size: 12.5 MB (12492492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f261f8fcfe12d7e6ba85504c78d8da0ce51c69568bb456845b05f0ee0a3c0fc6`  
		Last Modified: Fri, 08 Sep 2017 06:58:35 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704776b16a2a6069173f9e7b39e88bc683291e27dfb963a982bc2baa31b4f57d`  
		Last Modified: Fri, 08 Sep 2017 06:58:38 GMT  
		Size: 13.8 MB (13837411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e70773a5164f3290a6db31e3b63fb2758b308ae0af70de1fb3f6b09fbbd7ebc`  
		Last Modified: Thu, 21 Sep 2017 17:24:39 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334859d5f7248e90292be0966c143b00190c8768a4ac7aa2a40cd171fa146fae`  
		Last Modified: Thu, 21 Sep 2017 17:24:39 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b83972bfccdb69e2cce358007827b0b34936eeb2b9d02269bfab27997dff5e2`  
		Last Modified: Thu, 21 Sep 2017 17:24:39 GMT  
		Size: 7.7 KB (7687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c270f2f749479a33e993d5f8595ebe79dcf3a3752366cb0dbc8a83a18eb6996c`  
		Last Modified: Thu, 21 Sep 2017 17:59:33 GMT  
		Size: 36.8 MB (36810725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84455482172cdf33c03f569d25882a832991aad353f732695c80589db54f3f6c`  
		Last Modified: Thu, 21 Sep 2017 17:59:31 GMT  
		Size: 2.0 MB (1963709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f17a300762782db1c86e0c072e867b0d26e583787d68ab18e06cb02940a20a`  
		Last Modified: Thu, 21 Sep 2017 17:59:24 GMT  
		Size: 355.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13a638ff85f0b32e0f5d71152b4cc93e2b45437c0a571495d2b2f9341bfb387`  
		Last Modified: Thu, 21 Sep 2017 17:59:24 GMT  
		Size: 1.4 MB (1354543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b621c6363cbf3286e2917bf4d2f785419c7b0bc0542f336c2c64bad1d31f88`  
		Last Modified: Thu, 21 Sep 2017 17:59:23 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1606176ebeefd8936262a5caec635a8cc2c3bd8ab43f364519bc850015b0c3a0`  
		Last Modified: Thu, 21 Sep 2017 17:59:33 GMT  
		Size: 46.6 MB (46600381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc99fb31a672492f9c2c048ed44f058fe859fa3d62cd29f2561260d99cd3e6d`  
		Last Modified: Thu, 21 Sep 2017 17:59:24 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5acfbe16aff596dec37639447a3e8f118872dbceeb39ebf2e784a509024beed8`  
		Last Modified: Thu, 21 Sep 2017 17:59:23 GMT  
		Size: 783.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11.0-apache`

```console
$ docker pull nextcloud@sha256:77c3cc50f64eb886de8932bb785bc1b161f2f0a647bafe12ff53ca126818de92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `nextcloud:11.0-apache` - linux; s390x

```console
$ docker pull nextcloud@sha256:46d8dc10e33abbc775d00acff1fe12dfbc1f9894cf6e604cd54b8e7cc19482cc
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.1 MB (233104218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fc33b59b056c4b563911bed5ea4493ab26b2e72a02cc7431ee78f8926f04f7d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:18:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 08 Sep 2017 06:19:14 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:19:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 08 Sep 2017 06:19:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 08 Sep 2017 06:22:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:22:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 08 Sep 2017 06:23:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 08 Sep 2017 06:23:00 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 08 Sep 2017 06:23:01 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 08 Sep 2017 06:23:01 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 08 Sep 2017 06:23:02 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 06:23:03 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_VERSION=7.1.9
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 08 Sep 2017 06:23:19 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 06:23:19 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 06:25:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Sep 2017 17:22:33 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Thu, 21 Sep 2017 17:22:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Sep 2017 17:22:33 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 21 Sep 2017 17:22:34 GMT
WORKDIR /var/www/html
# Thu, 21 Sep 2017 17:22:34 GMT
EXPOSE 80/tcp
# Thu, 21 Sep 2017 17:22:34 GMT
CMD ["apache2-foreground"]
# Thu, 21 Sep 2017 17:50:49 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 21 Sep 2017 17:52:53 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Thu, 21 Sep 2017 17:52:54 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 21 Sep 2017 17:52:54 GMT
RUN a2enmod rewrite
# Thu, 21 Sep 2017 17:53:18 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Thu, 21 Sep 2017 17:53:18 GMT
RUN a2enmod rewrite
# Thu, 21 Sep 2017 17:53:18 GMT
ENV NEXTCLOUD_VERSION=11.0.5
# Thu, 21 Sep 2017 17:53:19 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Thu, 21 Sep 2017 17:53:19 GMT
VOLUME [/var/www/html]
# Thu, 21 Sep 2017 17:53:39 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Thu, 21 Sep 2017 17:53:40 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Thu, 21 Sep 2017 17:53:40 GMT
COPY multi:a4ce16f733fa0a4cb4b62b3fe3229e71f5a6b970a03b912772780cdb452098f4 in /usr/src/nextcloud/config/ 
# Thu, 21 Sep 2017 17:53:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 17:53:40 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701b1d6891093c664aafb5ddded8b897bab2678b49b4c39ed152c86139e3b472`  
		Last Modified: Fri, 08 Sep 2017 06:58:03 GMT  
		Size: 64.0 MB (63977876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e477fee1ce9a2412b1abf6eb058badc7a59941c997bf3c5764c47e9f3d51e2f0`  
		Last Modified: Fri, 08 Sep 2017 06:57:49 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e311b1d5cc2339ce23df72332cc46172629bd6963e8637778bb8f88fcdd864`  
		Last Modified: Fri, 08 Sep 2017 06:58:25 GMT  
		Size: 3.0 MB (3022480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d672acbf183bc3af07e7748180d93a6840e2318cd89c297d412c1e411529260`  
		Last Modified: Fri, 08 Sep 2017 06:58:24 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab45def1c89dc1f846f7d3ae8e83f3d1e4545980614f582148db747e84351a72`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d137773f7744dbe6997e12c595f10532708ad0d138d8bee39c78b11a3876048`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f35a6f0e12655b63b7b31b460fbbd16bf9b36b984c3d681e9dd64788a29998`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d829983b803a79caeb8eddf17a4b9589d56bbde42e6f9be16a66cf837addfc9`  
		Last Modified: Fri, 08 Sep 2017 06:58:22 GMT  
		Size: 12.5 MB (12509581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b186566cc709c8c1a770d57f62a500a9eb6a9f59812ce47d28cde8774b850648`  
		Last Modified: Fri, 08 Sep 2017 06:58:21 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb759026a75c2bfeb3e7b0d2bca8a72ec0859321feabfa7d74bc386d29874e3`  
		Last Modified: Fri, 08 Sep 2017 06:58:25 GMT  
		Size: 14.0 MB (14048119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfd73e35d71aa65f5fe44fcf1f25c670da66c2497ab351fd488d16e5e327a4f`  
		Last Modified: Thu, 21 Sep 2017 17:24:22 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1affa5a5b42c12b3722de9c5817991ede94966f37761dd1edc15c4a0e3b5ec62`  
		Last Modified: Thu, 21 Sep 2017 17:24:22 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1d8755b9754237c1548613becaeabf8ad6a1c2918977dcf231e7381269cc80`  
		Last Modified: Thu, 21 Sep 2017 17:59:00 GMT  
		Size: 36.8 MB (36830226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc9b4cb21ecaded08735db51e5a1b7592f7bc5c62d2284b25f7482e1fb8c070`  
		Last Modified: Thu, 21 Sep 2017 17:58:53 GMT  
		Size: 2.0 MB (1963481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c57085e60c6a0dc86a69e2d554ddc2f1a7a6f1e59f460c06ab8874e479b69b`  
		Last Modified: Thu, 21 Sep 2017 17:58:53 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07a516baa82fba28515e2a8ab3c3ec83c1f3a4db04599e062b24a64400ab5d3`  
		Last Modified: Thu, 21 Sep 2017 17:58:52 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03a960119a20feb16e42fcb650808ffc81da8686a4fc45707d31e9857ba3e41f`  
		Last Modified: Thu, 21 Sep 2017 17:58:52 GMT  
		Size: 1.4 MB (1354553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190366b0e92dcf802d8c591bdeb52d480524e845433188c14afba2d04782c123`  
		Last Modified: Fri, 08 Sep 2017 07:43:46 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dddc82d67d05323d728c5f33b37168c9a2cb3cca56922e9fcbf609fbfa6263c`  
		Last Modified: Thu, 21 Sep 2017 17:58:56 GMT  
		Size: 46.6 MB (46600370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a39e0d8f17395c4e254f09d8e6a331675df8ab409696f3e08d8d969013ec5ed`  
		Last Modified: Thu, 21 Sep 2017 17:58:48 GMT  
		Size: 938.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db4bb39171c0d55c06fceb0bce880a90b6067d2b044cb08dfede2d7186f7bdb8`  
		Last Modified: Thu, 21 Sep 2017 17:58:47 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11.0-fpm`

```console
$ docker pull nextcloud@sha256:053432f845384d8d514fe3912b56095504530f251f89e4611f67618d41e5a267
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `nextcloud:11.0-fpm` - linux; s390x

```console
$ docker pull nextcloud@sha256:b62fe5c464b58dfa6da2889e06859181fd539bf535b77cbe0cf567aaef6d2b37
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.8 MB (229838825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54ce09dc21d700982bacc1cf72c02cc891231c06d1f5077c59f1de7792624a56`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:18:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 08 Sep 2017 06:19:14 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:19:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 08 Sep 2017 06:19:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 08 Sep 2017 06:25:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 08 Sep 2017 06:25:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:25:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:25:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 06:25:40 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 08 Sep 2017 06:25:40 GMT
ENV PHP_VERSION=7.1.9
# Fri, 08 Sep 2017 06:25:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 06:25:40 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 08 Sep 2017 06:25:57 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 06:25:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 06:29:00 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Sep 2017 17:22:39 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Thu, 21 Sep 2017 17:22:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Sep 2017 17:22:39 GMT
WORKDIR /var/www/html
# Thu, 21 Sep 2017 17:22:40 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 21 Sep 2017 17:22:40 GMT
EXPOSE 9000/tcp
# Thu, 21 Sep 2017 17:22:40 GMT
CMD ["php-fpm"]
# Thu, 21 Sep 2017 17:54:04 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 21 Sep 2017 17:56:11 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Thu, 21 Sep 2017 17:56:12 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 21 Sep 2017 17:56:35 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Thu, 21 Sep 2017 17:56:35 GMT
ENV NEXTCLOUD_VERSION=11.0.5
# Thu, 21 Sep 2017 17:56:35 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Thu, 21 Sep 2017 17:56:36 GMT
VOLUME [/var/www/html]
# Thu, 21 Sep 2017 17:57:33 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Thu, 21 Sep 2017 17:57:34 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Thu, 21 Sep 2017 17:57:34 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Thu, 21 Sep 2017 17:57:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 17:57:35 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701b1d6891093c664aafb5ddded8b897bab2678b49b4c39ed152c86139e3b472`  
		Last Modified: Fri, 08 Sep 2017 06:58:03 GMT  
		Size: 64.0 MB (63977876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e477fee1ce9a2412b1abf6eb058badc7a59941c997bf3c5764c47e9f3d51e2f0`  
		Last Modified: Fri, 08 Sep 2017 06:57:49 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25477b33aeb20022499d2d5afbf87cbf3751a8975adb8b3eaaa17662f8ce506`  
		Last Modified: Fri, 08 Sep 2017 06:58:37 GMT  
		Size: 12.5 MB (12492492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f261f8fcfe12d7e6ba85504c78d8da0ce51c69568bb456845b05f0ee0a3c0fc6`  
		Last Modified: Fri, 08 Sep 2017 06:58:35 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704776b16a2a6069173f9e7b39e88bc683291e27dfb963a982bc2baa31b4f57d`  
		Last Modified: Fri, 08 Sep 2017 06:58:38 GMT  
		Size: 13.8 MB (13837411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e70773a5164f3290a6db31e3b63fb2758b308ae0af70de1fb3f6b09fbbd7ebc`  
		Last Modified: Thu, 21 Sep 2017 17:24:39 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334859d5f7248e90292be0966c143b00190c8768a4ac7aa2a40cd171fa146fae`  
		Last Modified: Thu, 21 Sep 2017 17:24:39 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b83972bfccdb69e2cce358007827b0b34936eeb2b9d02269bfab27997dff5e2`  
		Last Modified: Thu, 21 Sep 2017 17:24:39 GMT  
		Size: 7.7 KB (7687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c270f2f749479a33e993d5f8595ebe79dcf3a3752366cb0dbc8a83a18eb6996c`  
		Last Modified: Thu, 21 Sep 2017 17:59:33 GMT  
		Size: 36.8 MB (36810725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84455482172cdf33c03f569d25882a832991aad353f732695c80589db54f3f6c`  
		Last Modified: Thu, 21 Sep 2017 17:59:31 GMT  
		Size: 2.0 MB (1963709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f17a300762782db1c86e0c072e867b0d26e583787d68ab18e06cb02940a20a`  
		Last Modified: Thu, 21 Sep 2017 17:59:24 GMT  
		Size: 355.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13a638ff85f0b32e0f5d71152b4cc93e2b45437c0a571495d2b2f9341bfb387`  
		Last Modified: Thu, 21 Sep 2017 17:59:24 GMT  
		Size: 1.4 MB (1354543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b621c6363cbf3286e2917bf4d2f785419c7b0bc0542f336c2c64bad1d31f88`  
		Last Modified: Thu, 21 Sep 2017 17:59:23 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1606176ebeefd8936262a5caec635a8cc2c3bd8ab43f364519bc850015b0c3a0`  
		Last Modified: Thu, 21 Sep 2017 17:59:33 GMT  
		Size: 46.6 MB (46600381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc99fb31a672492f9c2c048ed44f058fe859fa3d62cd29f2561260d99cd3e6d`  
		Last Modified: Thu, 21 Sep 2017 17:59:24 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5acfbe16aff596dec37639447a3e8f118872dbceeb39ebf2e784a509024beed8`  
		Last Modified: Thu, 21 Sep 2017 17:59:23 GMT  
		Size: 783.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11-apache`

```console
$ docker pull nextcloud@sha256:77c3cc50f64eb886de8932bb785bc1b161f2f0a647bafe12ff53ca126818de92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `nextcloud:11-apache` - linux; s390x

```console
$ docker pull nextcloud@sha256:46d8dc10e33abbc775d00acff1fe12dfbc1f9894cf6e604cd54b8e7cc19482cc
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.1 MB (233104218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fc33b59b056c4b563911bed5ea4493ab26b2e72a02cc7431ee78f8926f04f7d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:18:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 08 Sep 2017 06:19:14 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:19:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 08 Sep 2017 06:19:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 08 Sep 2017 06:22:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:22:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 08 Sep 2017 06:23:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 08 Sep 2017 06:23:00 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 08 Sep 2017 06:23:01 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 08 Sep 2017 06:23:01 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 08 Sep 2017 06:23:02 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 06:23:03 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_VERSION=7.1.9
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 08 Sep 2017 06:23:19 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 06:23:19 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 06:25:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Sep 2017 17:22:33 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Thu, 21 Sep 2017 17:22:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Sep 2017 17:22:33 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 21 Sep 2017 17:22:34 GMT
WORKDIR /var/www/html
# Thu, 21 Sep 2017 17:22:34 GMT
EXPOSE 80/tcp
# Thu, 21 Sep 2017 17:22:34 GMT
CMD ["apache2-foreground"]
# Thu, 21 Sep 2017 17:50:49 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 21 Sep 2017 17:52:53 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Thu, 21 Sep 2017 17:52:54 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 21 Sep 2017 17:52:54 GMT
RUN a2enmod rewrite
# Thu, 21 Sep 2017 17:53:18 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Thu, 21 Sep 2017 17:53:18 GMT
RUN a2enmod rewrite
# Thu, 21 Sep 2017 17:53:18 GMT
ENV NEXTCLOUD_VERSION=11.0.5
# Thu, 21 Sep 2017 17:53:19 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Thu, 21 Sep 2017 17:53:19 GMT
VOLUME [/var/www/html]
# Thu, 21 Sep 2017 17:53:39 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Thu, 21 Sep 2017 17:53:40 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Thu, 21 Sep 2017 17:53:40 GMT
COPY multi:a4ce16f733fa0a4cb4b62b3fe3229e71f5a6b970a03b912772780cdb452098f4 in /usr/src/nextcloud/config/ 
# Thu, 21 Sep 2017 17:53:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 17:53:40 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701b1d6891093c664aafb5ddded8b897bab2678b49b4c39ed152c86139e3b472`  
		Last Modified: Fri, 08 Sep 2017 06:58:03 GMT  
		Size: 64.0 MB (63977876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e477fee1ce9a2412b1abf6eb058badc7a59941c997bf3c5764c47e9f3d51e2f0`  
		Last Modified: Fri, 08 Sep 2017 06:57:49 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e311b1d5cc2339ce23df72332cc46172629bd6963e8637778bb8f88fcdd864`  
		Last Modified: Fri, 08 Sep 2017 06:58:25 GMT  
		Size: 3.0 MB (3022480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d672acbf183bc3af07e7748180d93a6840e2318cd89c297d412c1e411529260`  
		Last Modified: Fri, 08 Sep 2017 06:58:24 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab45def1c89dc1f846f7d3ae8e83f3d1e4545980614f582148db747e84351a72`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d137773f7744dbe6997e12c595f10532708ad0d138d8bee39c78b11a3876048`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f35a6f0e12655b63b7b31b460fbbd16bf9b36b984c3d681e9dd64788a29998`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d829983b803a79caeb8eddf17a4b9589d56bbde42e6f9be16a66cf837addfc9`  
		Last Modified: Fri, 08 Sep 2017 06:58:22 GMT  
		Size: 12.5 MB (12509581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b186566cc709c8c1a770d57f62a500a9eb6a9f59812ce47d28cde8774b850648`  
		Last Modified: Fri, 08 Sep 2017 06:58:21 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb759026a75c2bfeb3e7b0d2bca8a72ec0859321feabfa7d74bc386d29874e3`  
		Last Modified: Fri, 08 Sep 2017 06:58:25 GMT  
		Size: 14.0 MB (14048119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfd73e35d71aa65f5fe44fcf1f25c670da66c2497ab351fd488d16e5e327a4f`  
		Last Modified: Thu, 21 Sep 2017 17:24:22 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1affa5a5b42c12b3722de9c5817991ede94966f37761dd1edc15c4a0e3b5ec62`  
		Last Modified: Thu, 21 Sep 2017 17:24:22 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1d8755b9754237c1548613becaeabf8ad6a1c2918977dcf231e7381269cc80`  
		Last Modified: Thu, 21 Sep 2017 17:59:00 GMT  
		Size: 36.8 MB (36830226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc9b4cb21ecaded08735db51e5a1b7592f7bc5c62d2284b25f7482e1fb8c070`  
		Last Modified: Thu, 21 Sep 2017 17:58:53 GMT  
		Size: 2.0 MB (1963481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c57085e60c6a0dc86a69e2d554ddc2f1a7a6f1e59f460c06ab8874e479b69b`  
		Last Modified: Thu, 21 Sep 2017 17:58:53 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07a516baa82fba28515e2a8ab3c3ec83c1f3a4db04599e062b24a64400ab5d3`  
		Last Modified: Thu, 21 Sep 2017 17:58:52 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03a960119a20feb16e42fcb650808ffc81da8686a4fc45707d31e9857ba3e41f`  
		Last Modified: Thu, 21 Sep 2017 17:58:52 GMT  
		Size: 1.4 MB (1354553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190366b0e92dcf802d8c591bdeb52d480524e845433188c14afba2d04782c123`  
		Last Modified: Fri, 08 Sep 2017 07:43:46 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dddc82d67d05323d728c5f33b37168c9a2cb3cca56922e9fcbf609fbfa6263c`  
		Last Modified: Thu, 21 Sep 2017 17:58:56 GMT  
		Size: 46.6 MB (46600370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a39e0d8f17395c4e254f09d8e6a331675df8ab409696f3e08d8d969013ec5ed`  
		Last Modified: Thu, 21 Sep 2017 17:58:48 GMT  
		Size: 938.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db4bb39171c0d55c06fceb0bce880a90b6067d2b044cb08dfede2d7186f7bdb8`  
		Last Modified: Thu, 21 Sep 2017 17:58:47 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:11-fpm`

```console
$ docker pull nextcloud@sha256:053432f845384d8d514fe3912b56095504530f251f89e4611f67618d41e5a267
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `nextcloud:11-fpm` - linux; s390x

```console
$ docker pull nextcloud@sha256:b62fe5c464b58dfa6da2889e06859181fd539bf535b77cbe0cf567aaef6d2b37
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.8 MB (229838825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54ce09dc21d700982bacc1cf72c02cc891231c06d1f5077c59f1de7792624a56`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:18:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 08 Sep 2017 06:19:14 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:19:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 08 Sep 2017 06:19:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 08 Sep 2017 06:25:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 08 Sep 2017 06:25:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:25:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:25:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 06:25:40 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 08 Sep 2017 06:25:40 GMT
ENV PHP_VERSION=7.1.9
# Fri, 08 Sep 2017 06:25:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 06:25:40 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 08 Sep 2017 06:25:57 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 06:25:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 06:29:00 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Sep 2017 17:22:39 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Thu, 21 Sep 2017 17:22:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Sep 2017 17:22:39 GMT
WORKDIR /var/www/html
# Thu, 21 Sep 2017 17:22:40 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 21 Sep 2017 17:22:40 GMT
EXPOSE 9000/tcp
# Thu, 21 Sep 2017 17:22:40 GMT
CMD ["php-fpm"]
# Thu, 21 Sep 2017 17:54:04 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 21 Sep 2017 17:56:11 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Thu, 21 Sep 2017 17:56:12 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 21 Sep 2017 17:56:35 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Thu, 21 Sep 2017 17:56:35 GMT
ENV NEXTCLOUD_VERSION=11.0.5
# Thu, 21 Sep 2017 17:56:35 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Thu, 21 Sep 2017 17:56:36 GMT
VOLUME [/var/www/html]
# Thu, 21 Sep 2017 17:57:33 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Thu, 21 Sep 2017 17:57:34 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Thu, 21 Sep 2017 17:57:34 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Thu, 21 Sep 2017 17:57:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 17:57:35 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701b1d6891093c664aafb5ddded8b897bab2678b49b4c39ed152c86139e3b472`  
		Last Modified: Fri, 08 Sep 2017 06:58:03 GMT  
		Size: 64.0 MB (63977876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e477fee1ce9a2412b1abf6eb058badc7a59941c997bf3c5764c47e9f3d51e2f0`  
		Last Modified: Fri, 08 Sep 2017 06:57:49 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25477b33aeb20022499d2d5afbf87cbf3751a8975adb8b3eaaa17662f8ce506`  
		Last Modified: Fri, 08 Sep 2017 06:58:37 GMT  
		Size: 12.5 MB (12492492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f261f8fcfe12d7e6ba85504c78d8da0ce51c69568bb456845b05f0ee0a3c0fc6`  
		Last Modified: Fri, 08 Sep 2017 06:58:35 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704776b16a2a6069173f9e7b39e88bc683291e27dfb963a982bc2baa31b4f57d`  
		Last Modified: Fri, 08 Sep 2017 06:58:38 GMT  
		Size: 13.8 MB (13837411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e70773a5164f3290a6db31e3b63fb2758b308ae0af70de1fb3f6b09fbbd7ebc`  
		Last Modified: Thu, 21 Sep 2017 17:24:39 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334859d5f7248e90292be0966c143b00190c8768a4ac7aa2a40cd171fa146fae`  
		Last Modified: Thu, 21 Sep 2017 17:24:39 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b83972bfccdb69e2cce358007827b0b34936eeb2b9d02269bfab27997dff5e2`  
		Last Modified: Thu, 21 Sep 2017 17:24:39 GMT  
		Size: 7.7 KB (7687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c270f2f749479a33e993d5f8595ebe79dcf3a3752366cb0dbc8a83a18eb6996c`  
		Last Modified: Thu, 21 Sep 2017 17:59:33 GMT  
		Size: 36.8 MB (36810725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84455482172cdf33c03f569d25882a832991aad353f732695c80589db54f3f6c`  
		Last Modified: Thu, 21 Sep 2017 17:59:31 GMT  
		Size: 2.0 MB (1963709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f17a300762782db1c86e0c072e867b0d26e583787d68ab18e06cb02940a20a`  
		Last Modified: Thu, 21 Sep 2017 17:59:24 GMT  
		Size: 355.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13a638ff85f0b32e0f5d71152b4cc93e2b45437c0a571495d2b2f9341bfb387`  
		Last Modified: Thu, 21 Sep 2017 17:59:24 GMT  
		Size: 1.4 MB (1354543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b621c6363cbf3286e2917bf4d2f785419c7b0bc0542f336c2c64bad1d31f88`  
		Last Modified: Thu, 21 Sep 2017 17:59:23 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1606176ebeefd8936262a5caec635a8cc2c3bd8ab43f364519bc850015b0c3a0`  
		Last Modified: Thu, 21 Sep 2017 17:59:33 GMT  
		Size: 46.6 MB (46600381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc99fb31a672492f9c2c048ed44f058fe859fa3d62cd29f2561260d99cd3e6d`  
		Last Modified: Thu, 21 Sep 2017 17:59:24 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5acfbe16aff596dec37639447a3e8f118872dbceeb39ebf2e784a509024beed8`  
		Last Modified: Thu, 21 Sep 2017 17:59:23 GMT  
		Size: 783.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12`

```console
$ docker pull nextcloud@sha256:c45ae0a1f04b47fbe290959942fdd3235a7d628637c6abe4431e6b054f5dc279
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `nextcloud:12` - linux; s390x

```console
$ docker pull nextcloud@sha256:d3b714da4ac0b8a0074138a4ee53ce3cdbe00287ce2b8e0d19241015f4b1249c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.5 MB (233474156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bce38d8f5152e88472fd69e9afd5dca839a0b1fce9cca4ea7182d0bf4c2ff67`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:18:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 08 Sep 2017 06:19:14 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:19:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 08 Sep 2017 06:19:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 08 Sep 2017 06:22:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:22:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 08 Sep 2017 06:23:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 08 Sep 2017 06:23:00 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 08 Sep 2017 06:23:01 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 08 Sep 2017 06:23:01 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 08 Sep 2017 06:23:02 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 06:23:03 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_VERSION=7.1.9
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 08 Sep 2017 06:23:19 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 06:23:19 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 06:25:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Sep 2017 17:22:33 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Thu, 21 Sep 2017 17:22:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Sep 2017 17:22:33 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 21 Sep 2017 17:22:34 GMT
WORKDIR /var/www/html
# Thu, 21 Sep 2017 17:22:34 GMT
EXPOSE 80/tcp
# Thu, 21 Sep 2017 17:22:34 GMT
CMD ["apache2-foreground"]
# Thu, 21 Sep 2017 17:50:49 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 21 Sep 2017 17:52:53 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Thu, 21 Sep 2017 17:52:54 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 21 Sep 2017 17:52:54 GMT
RUN a2enmod rewrite
# Thu, 21 Sep 2017 17:53:18 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Thu, 21 Sep 2017 17:53:18 GMT
RUN a2enmod rewrite
# Thu, 21 Sep 2017 17:57:39 GMT
ENV NEXTCLOUD_VERSION=12.0.3
# Thu, 21 Sep 2017 17:57:40 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Thu, 21 Sep 2017 17:57:40 GMT
VOLUME [/var/www/html]
# Thu, 21 Sep 2017 17:57:57 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Thu, 21 Sep 2017 17:57:58 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Thu, 21 Sep 2017 17:57:58 GMT
COPY multi:a4ce16f733fa0a4cb4b62b3fe3229e71f5a6b970a03b912772780cdb452098f4 in /usr/src/nextcloud/config/ 
# Thu, 21 Sep 2017 17:57:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 17:57:59 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701b1d6891093c664aafb5ddded8b897bab2678b49b4c39ed152c86139e3b472`  
		Last Modified: Fri, 08 Sep 2017 06:58:03 GMT  
		Size: 64.0 MB (63977876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e477fee1ce9a2412b1abf6eb058badc7a59941c997bf3c5764c47e9f3d51e2f0`  
		Last Modified: Fri, 08 Sep 2017 06:57:49 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e311b1d5cc2339ce23df72332cc46172629bd6963e8637778bb8f88fcdd864`  
		Last Modified: Fri, 08 Sep 2017 06:58:25 GMT  
		Size: 3.0 MB (3022480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d672acbf183bc3af07e7748180d93a6840e2318cd89c297d412c1e411529260`  
		Last Modified: Fri, 08 Sep 2017 06:58:24 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab45def1c89dc1f846f7d3ae8e83f3d1e4545980614f582148db747e84351a72`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d137773f7744dbe6997e12c595f10532708ad0d138d8bee39c78b11a3876048`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f35a6f0e12655b63b7b31b460fbbd16bf9b36b984c3d681e9dd64788a29998`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d829983b803a79caeb8eddf17a4b9589d56bbde42e6f9be16a66cf837addfc9`  
		Last Modified: Fri, 08 Sep 2017 06:58:22 GMT  
		Size: 12.5 MB (12509581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b186566cc709c8c1a770d57f62a500a9eb6a9f59812ce47d28cde8774b850648`  
		Last Modified: Fri, 08 Sep 2017 06:58:21 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb759026a75c2bfeb3e7b0d2bca8a72ec0859321feabfa7d74bc386d29874e3`  
		Last Modified: Fri, 08 Sep 2017 06:58:25 GMT  
		Size: 14.0 MB (14048119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfd73e35d71aa65f5fe44fcf1f25c670da66c2497ab351fd488d16e5e327a4f`  
		Last Modified: Thu, 21 Sep 2017 17:24:22 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1affa5a5b42c12b3722de9c5817991ede94966f37761dd1edc15c4a0e3b5ec62`  
		Last Modified: Thu, 21 Sep 2017 17:24:22 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1d8755b9754237c1548613becaeabf8ad6a1c2918977dcf231e7381269cc80`  
		Last Modified: Thu, 21 Sep 2017 17:59:00 GMT  
		Size: 36.8 MB (36830226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc9b4cb21ecaded08735db51e5a1b7592f7bc5c62d2284b25f7482e1fb8c070`  
		Last Modified: Thu, 21 Sep 2017 17:58:53 GMT  
		Size: 2.0 MB (1963481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c57085e60c6a0dc86a69e2d554ddc2f1a7a6f1e59f460c06ab8874e479b69b`  
		Last Modified: Thu, 21 Sep 2017 17:58:53 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07a516baa82fba28515e2a8ab3c3ec83c1f3a4db04599e062b24a64400ab5d3`  
		Last Modified: Thu, 21 Sep 2017 17:58:52 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03a960119a20feb16e42fcb650808ffc81da8686a4fc45707d31e9857ba3e41f`  
		Last Modified: Thu, 21 Sep 2017 17:58:52 GMT  
		Size: 1.4 MB (1354553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190366b0e92dcf802d8c591bdeb52d480524e845433188c14afba2d04782c123`  
		Last Modified: Fri, 08 Sep 2017 07:43:46 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4558f22230e57bc6766eb98c920f36b62fd258d7a6ec0f1b06c1293771f880`  
		Last Modified: Thu, 21 Sep 2017 17:59:56 GMT  
		Size: 47.0 MB (46970309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343cb36532f4f9fb28ce4cda44eedc04651c9e902b7502eed9d85cff7b54eb17`  
		Last Modified: Thu, 21 Sep 2017 17:59:47 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e81740fc800aff654abc3eb066033e42e09eaef8b3e5bad1c6ed0f4364aa075`  
		Last Modified: Thu, 21 Sep 2017 17:59:47 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12.0`

```console
$ docker pull nextcloud@sha256:c45ae0a1f04b47fbe290959942fdd3235a7d628637c6abe4431e6b054f5dc279
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `nextcloud:12.0` - linux; s390x

```console
$ docker pull nextcloud@sha256:d3b714da4ac0b8a0074138a4ee53ce3cdbe00287ce2b8e0d19241015f4b1249c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.5 MB (233474156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bce38d8f5152e88472fd69e9afd5dca839a0b1fce9cca4ea7182d0bf4c2ff67`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:18:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 08 Sep 2017 06:19:14 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:19:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 08 Sep 2017 06:19:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 08 Sep 2017 06:22:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:22:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 08 Sep 2017 06:23:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 08 Sep 2017 06:23:00 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 08 Sep 2017 06:23:01 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 08 Sep 2017 06:23:01 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 08 Sep 2017 06:23:02 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 06:23:03 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_VERSION=7.1.9
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 08 Sep 2017 06:23:19 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 06:23:19 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 06:25:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Sep 2017 17:22:33 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Thu, 21 Sep 2017 17:22:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Sep 2017 17:22:33 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 21 Sep 2017 17:22:34 GMT
WORKDIR /var/www/html
# Thu, 21 Sep 2017 17:22:34 GMT
EXPOSE 80/tcp
# Thu, 21 Sep 2017 17:22:34 GMT
CMD ["apache2-foreground"]
# Thu, 21 Sep 2017 17:50:49 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 21 Sep 2017 17:52:53 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Thu, 21 Sep 2017 17:52:54 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 21 Sep 2017 17:52:54 GMT
RUN a2enmod rewrite
# Thu, 21 Sep 2017 17:53:18 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Thu, 21 Sep 2017 17:53:18 GMT
RUN a2enmod rewrite
# Thu, 21 Sep 2017 17:57:39 GMT
ENV NEXTCLOUD_VERSION=12.0.3
# Thu, 21 Sep 2017 17:57:40 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Thu, 21 Sep 2017 17:57:40 GMT
VOLUME [/var/www/html]
# Thu, 21 Sep 2017 17:57:57 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Thu, 21 Sep 2017 17:57:58 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Thu, 21 Sep 2017 17:57:58 GMT
COPY multi:a4ce16f733fa0a4cb4b62b3fe3229e71f5a6b970a03b912772780cdb452098f4 in /usr/src/nextcloud/config/ 
# Thu, 21 Sep 2017 17:57:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 17:57:59 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701b1d6891093c664aafb5ddded8b897bab2678b49b4c39ed152c86139e3b472`  
		Last Modified: Fri, 08 Sep 2017 06:58:03 GMT  
		Size: 64.0 MB (63977876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e477fee1ce9a2412b1abf6eb058badc7a59941c997bf3c5764c47e9f3d51e2f0`  
		Last Modified: Fri, 08 Sep 2017 06:57:49 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e311b1d5cc2339ce23df72332cc46172629bd6963e8637778bb8f88fcdd864`  
		Last Modified: Fri, 08 Sep 2017 06:58:25 GMT  
		Size: 3.0 MB (3022480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d672acbf183bc3af07e7748180d93a6840e2318cd89c297d412c1e411529260`  
		Last Modified: Fri, 08 Sep 2017 06:58:24 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab45def1c89dc1f846f7d3ae8e83f3d1e4545980614f582148db747e84351a72`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d137773f7744dbe6997e12c595f10532708ad0d138d8bee39c78b11a3876048`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f35a6f0e12655b63b7b31b460fbbd16bf9b36b984c3d681e9dd64788a29998`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d829983b803a79caeb8eddf17a4b9589d56bbde42e6f9be16a66cf837addfc9`  
		Last Modified: Fri, 08 Sep 2017 06:58:22 GMT  
		Size: 12.5 MB (12509581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b186566cc709c8c1a770d57f62a500a9eb6a9f59812ce47d28cde8774b850648`  
		Last Modified: Fri, 08 Sep 2017 06:58:21 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb759026a75c2bfeb3e7b0d2bca8a72ec0859321feabfa7d74bc386d29874e3`  
		Last Modified: Fri, 08 Sep 2017 06:58:25 GMT  
		Size: 14.0 MB (14048119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfd73e35d71aa65f5fe44fcf1f25c670da66c2497ab351fd488d16e5e327a4f`  
		Last Modified: Thu, 21 Sep 2017 17:24:22 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1affa5a5b42c12b3722de9c5817991ede94966f37761dd1edc15c4a0e3b5ec62`  
		Last Modified: Thu, 21 Sep 2017 17:24:22 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1d8755b9754237c1548613becaeabf8ad6a1c2918977dcf231e7381269cc80`  
		Last Modified: Thu, 21 Sep 2017 17:59:00 GMT  
		Size: 36.8 MB (36830226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc9b4cb21ecaded08735db51e5a1b7592f7bc5c62d2284b25f7482e1fb8c070`  
		Last Modified: Thu, 21 Sep 2017 17:58:53 GMT  
		Size: 2.0 MB (1963481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c57085e60c6a0dc86a69e2d554ddc2f1a7a6f1e59f460c06ab8874e479b69b`  
		Last Modified: Thu, 21 Sep 2017 17:58:53 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07a516baa82fba28515e2a8ab3c3ec83c1f3a4db04599e062b24a64400ab5d3`  
		Last Modified: Thu, 21 Sep 2017 17:58:52 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03a960119a20feb16e42fcb650808ffc81da8686a4fc45707d31e9857ba3e41f`  
		Last Modified: Thu, 21 Sep 2017 17:58:52 GMT  
		Size: 1.4 MB (1354553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190366b0e92dcf802d8c591bdeb52d480524e845433188c14afba2d04782c123`  
		Last Modified: Fri, 08 Sep 2017 07:43:46 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4558f22230e57bc6766eb98c920f36b62fd258d7a6ec0f1b06c1293771f880`  
		Last Modified: Thu, 21 Sep 2017 17:59:56 GMT  
		Size: 47.0 MB (46970309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343cb36532f4f9fb28ce4cda44eedc04651c9e902b7502eed9d85cff7b54eb17`  
		Last Modified: Thu, 21 Sep 2017 17:59:47 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e81740fc800aff654abc3eb066033e42e09eaef8b3e5bad1c6ed0f4364aa075`  
		Last Modified: Thu, 21 Sep 2017 17:59:47 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12.0.3`

```console
$ docker pull nextcloud@sha256:c45ae0a1f04b47fbe290959942fdd3235a7d628637c6abe4431e6b054f5dc279
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `nextcloud:12.0.3` - linux; s390x

```console
$ docker pull nextcloud@sha256:d3b714da4ac0b8a0074138a4ee53ce3cdbe00287ce2b8e0d19241015f4b1249c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.5 MB (233474156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bce38d8f5152e88472fd69e9afd5dca839a0b1fce9cca4ea7182d0bf4c2ff67`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:18:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 08 Sep 2017 06:19:14 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:19:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 08 Sep 2017 06:19:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 08 Sep 2017 06:22:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:22:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 08 Sep 2017 06:23:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 08 Sep 2017 06:23:00 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 08 Sep 2017 06:23:01 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 08 Sep 2017 06:23:01 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 08 Sep 2017 06:23:02 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 06:23:03 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_VERSION=7.1.9
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 08 Sep 2017 06:23:19 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 06:23:19 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 06:25:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Sep 2017 17:22:33 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Thu, 21 Sep 2017 17:22:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Sep 2017 17:22:33 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 21 Sep 2017 17:22:34 GMT
WORKDIR /var/www/html
# Thu, 21 Sep 2017 17:22:34 GMT
EXPOSE 80/tcp
# Thu, 21 Sep 2017 17:22:34 GMT
CMD ["apache2-foreground"]
# Thu, 21 Sep 2017 17:50:49 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 21 Sep 2017 17:52:53 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Thu, 21 Sep 2017 17:52:54 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 21 Sep 2017 17:52:54 GMT
RUN a2enmod rewrite
# Thu, 21 Sep 2017 17:53:18 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Thu, 21 Sep 2017 17:53:18 GMT
RUN a2enmod rewrite
# Thu, 21 Sep 2017 17:57:39 GMT
ENV NEXTCLOUD_VERSION=12.0.3
# Thu, 21 Sep 2017 17:57:40 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Thu, 21 Sep 2017 17:57:40 GMT
VOLUME [/var/www/html]
# Thu, 21 Sep 2017 17:57:57 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Thu, 21 Sep 2017 17:57:58 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Thu, 21 Sep 2017 17:57:58 GMT
COPY multi:a4ce16f733fa0a4cb4b62b3fe3229e71f5a6b970a03b912772780cdb452098f4 in /usr/src/nextcloud/config/ 
# Thu, 21 Sep 2017 17:57:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 17:57:59 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701b1d6891093c664aafb5ddded8b897bab2678b49b4c39ed152c86139e3b472`  
		Last Modified: Fri, 08 Sep 2017 06:58:03 GMT  
		Size: 64.0 MB (63977876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e477fee1ce9a2412b1abf6eb058badc7a59941c997bf3c5764c47e9f3d51e2f0`  
		Last Modified: Fri, 08 Sep 2017 06:57:49 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e311b1d5cc2339ce23df72332cc46172629bd6963e8637778bb8f88fcdd864`  
		Last Modified: Fri, 08 Sep 2017 06:58:25 GMT  
		Size: 3.0 MB (3022480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d672acbf183bc3af07e7748180d93a6840e2318cd89c297d412c1e411529260`  
		Last Modified: Fri, 08 Sep 2017 06:58:24 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab45def1c89dc1f846f7d3ae8e83f3d1e4545980614f582148db747e84351a72`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d137773f7744dbe6997e12c595f10532708ad0d138d8bee39c78b11a3876048`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f35a6f0e12655b63b7b31b460fbbd16bf9b36b984c3d681e9dd64788a29998`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d829983b803a79caeb8eddf17a4b9589d56bbde42e6f9be16a66cf837addfc9`  
		Last Modified: Fri, 08 Sep 2017 06:58:22 GMT  
		Size: 12.5 MB (12509581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b186566cc709c8c1a770d57f62a500a9eb6a9f59812ce47d28cde8774b850648`  
		Last Modified: Fri, 08 Sep 2017 06:58:21 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb759026a75c2bfeb3e7b0d2bca8a72ec0859321feabfa7d74bc386d29874e3`  
		Last Modified: Fri, 08 Sep 2017 06:58:25 GMT  
		Size: 14.0 MB (14048119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfd73e35d71aa65f5fe44fcf1f25c670da66c2497ab351fd488d16e5e327a4f`  
		Last Modified: Thu, 21 Sep 2017 17:24:22 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1affa5a5b42c12b3722de9c5817991ede94966f37761dd1edc15c4a0e3b5ec62`  
		Last Modified: Thu, 21 Sep 2017 17:24:22 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1d8755b9754237c1548613becaeabf8ad6a1c2918977dcf231e7381269cc80`  
		Last Modified: Thu, 21 Sep 2017 17:59:00 GMT  
		Size: 36.8 MB (36830226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc9b4cb21ecaded08735db51e5a1b7592f7bc5c62d2284b25f7482e1fb8c070`  
		Last Modified: Thu, 21 Sep 2017 17:58:53 GMT  
		Size: 2.0 MB (1963481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c57085e60c6a0dc86a69e2d554ddc2f1a7a6f1e59f460c06ab8874e479b69b`  
		Last Modified: Thu, 21 Sep 2017 17:58:53 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07a516baa82fba28515e2a8ab3c3ec83c1f3a4db04599e062b24a64400ab5d3`  
		Last Modified: Thu, 21 Sep 2017 17:58:52 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03a960119a20feb16e42fcb650808ffc81da8686a4fc45707d31e9857ba3e41f`  
		Last Modified: Thu, 21 Sep 2017 17:58:52 GMT  
		Size: 1.4 MB (1354553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190366b0e92dcf802d8c591bdeb52d480524e845433188c14afba2d04782c123`  
		Last Modified: Fri, 08 Sep 2017 07:43:46 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4558f22230e57bc6766eb98c920f36b62fd258d7a6ec0f1b06c1293771f880`  
		Last Modified: Thu, 21 Sep 2017 17:59:56 GMT  
		Size: 47.0 MB (46970309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343cb36532f4f9fb28ce4cda44eedc04651c9e902b7502eed9d85cff7b54eb17`  
		Last Modified: Thu, 21 Sep 2017 17:59:47 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e81740fc800aff654abc3eb066033e42e09eaef8b3e5bad1c6ed0f4364aa075`  
		Last Modified: Thu, 21 Sep 2017 17:59:47 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12.0.3-apache`

```console
$ docker pull nextcloud@sha256:c45ae0a1f04b47fbe290959942fdd3235a7d628637c6abe4431e6b054f5dc279
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `nextcloud:12.0.3-apache` - linux; s390x

```console
$ docker pull nextcloud@sha256:d3b714da4ac0b8a0074138a4ee53ce3cdbe00287ce2b8e0d19241015f4b1249c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.5 MB (233474156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bce38d8f5152e88472fd69e9afd5dca839a0b1fce9cca4ea7182d0bf4c2ff67`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:18:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 08 Sep 2017 06:19:14 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:19:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 08 Sep 2017 06:19:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 08 Sep 2017 06:22:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:22:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 08 Sep 2017 06:23:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 08 Sep 2017 06:23:00 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 08 Sep 2017 06:23:01 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 08 Sep 2017 06:23:01 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 08 Sep 2017 06:23:02 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 06:23:03 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_VERSION=7.1.9
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 08 Sep 2017 06:23:19 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 06:23:19 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 06:25:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Sep 2017 17:22:33 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Thu, 21 Sep 2017 17:22:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Sep 2017 17:22:33 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 21 Sep 2017 17:22:34 GMT
WORKDIR /var/www/html
# Thu, 21 Sep 2017 17:22:34 GMT
EXPOSE 80/tcp
# Thu, 21 Sep 2017 17:22:34 GMT
CMD ["apache2-foreground"]
# Thu, 21 Sep 2017 17:50:49 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 21 Sep 2017 17:52:53 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Thu, 21 Sep 2017 17:52:54 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 21 Sep 2017 17:52:54 GMT
RUN a2enmod rewrite
# Thu, 21 Sep 2017 17:53:18 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Thu, 21 Sep 2017 17:53:18 GMT
RUN a2enmod rewrite
# Thu, 21 Sep 2017 17:57:39 GMT
ENV NEXTCLOUD_VERSION=12.0.3
# Thu, 21 Sep 2017 17:57:40 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Thu, 21 Sep 2017 17:57:40 GMT
VOLUME [/var/www/html]
# Thu, 21 Sep 2017 17:57:57 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Thu, 21 Sep 2017 17:57:58 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Thu, 21 Sep 2017 17:57:58 GMT
COPY multi:a4ce16f733fa0a4cb4b62b3fe3229e71f5a6b970a03b912772780cdb452098f4 in /usr/src/nextcloud/config/ 
# Thu, 21 Sep 2017 17:57:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 17:57:59 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701b1d6891093c664aafb5ddded8b897bab2678b49b4c39ed152c86139e3b472`  
		Last Modified: Fri, 08 Sep 2017 06:58:03 GMT  
		Size: 64.0 MB (63977876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e477fee1ce9a2412b1abf6eb058badc7a59941c997bf3c5764c47e9f3d51e2f0`  
		Last Modified: Fri, 08 Sep 2017 06:57:49 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e311b1d5cc2339ce23df72332cc46172629bd6963e8637778bb8f88fcdd864`  
		Last Modified: Fri, 08 Sep 2017 06:58:25 GMT  
		Size: 3.0 MB (3022480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d672acbf183bc3af07e7748180d93a6840e2318cd89c297d412c1e411529260`  
		Last Modified: Fri, 08 Sep 2017 06:58:24 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab45def1c89dc1f846f7d3ae8e83f3d1e4545980614f582148db747e84351a72`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d137773f7744dbe6997e12c595f10532708ad0d138d8bee39c78b11a3876048`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f35a6f0e12655b63b7b31b460fbbd16bf9b36b984c3d681e9dd64788a29998`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d829983b803a79caeb8eddf17a4b9589d56bbde42e6f9be16a66cf837addfc9`  
		Last Modified: Fri, 08 Sep 2017 06:58:22 GMT  
		Size: 12.5 MB (12509581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b186566cc709c8c1a770d57f62a500a9eb6a9f59812ce47d28cde8774b850648`  
		Last Modified: Fri, 08 Sep 2017 06:58:21 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb759026a75c2bfeb3e7b0d2bca8a72ec0859321feabfa7d74bc386d29874e3`  
		Last Modified: Fri, 08 Sep 2017 06:58:25 GMT  
		Size: 14.0 MB (14048119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfd73e35d71aa65f5fe44fcf1f25c670da66c2497ab351fd488d16e5e327a4f`  
		Last Modified: Thu, 21 Sep 2017 17:24:22 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1affa5a5b42c12b3722de9c5817991ede94966f37761dd1edc15c4a0e3b5ec62`  
		Last Modified: Thu, 21 Sep 2017 17:24:22 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1d8755b9754237c1548613becaeabf8ad6a1c2918977dcf231e7381269cc80`  
		Last Modified: Thu, 21 Sep 2017 17:59:00 GMT  
		Size: 36.8 MB (36830226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc9b4cb21ecaded08735db51e5a1b7592f7bc5c62d2284b25f7482e1fb8c070`  
		Last Modified: Thu, 21 Sep 2017 17:58:53 GMT  
		Size: 2.0 MB (1963481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c57085e60c6a0dc86a69e2d554ddc2f1a7a6f1e59f460c06ab8874e479b69b`  
		Last Modified: Thu, 21 Sep 2017 17:58:53 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07a516baa82fba28515e2a8ab3c3ec83c1f3a4db04599e062b24a64400ab5d3`  
		Last Modified: Thu, 21 Sep 2017 17:58:52 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03a960119a20feb16e42fcb650808ffc81da8686a4fc45707d31e9857ba3e41f`  
		Last Modified: Thu, 21 Sep 2017 17:58:52 GMT  
		Size: 1.4 MB (1354553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190366b0e92dcf802d8c591bdeb52d480524e845433188c14afba2d04782c123`  
		Last Modified: Fri, 08 Sep 2017 07:43:46 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4558f22230e57bc6766eb98c920f36b62fd258d7a6ec0f1b06c1293771f880`  
		Last Modified: Thu, 21 Sep 2017 17:59:56 GMT  
		Size: 47.0 MB (46970309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343cb36532f4f9fb28ce4cda44eedc04651c9e902b7502eed9d85cff7b54eb17`  
		Last Modified: Thu, 21 Sep 2017 17:59:47 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e81740fc800aff654abc3eb066033e42e09eaef8b3e5bad1c6ed0f4364aa075`  
		Last Modified: Thu, 21 Sep 2017 17:59:47 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12.0.3-fpm`

```console
$ docker pull nextcloud@sha256:f5decf881b6a6e60237d6d625d29cc6088ac3e1f16f292eaccec8406c59b140d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `nextcloud:12.0.3-fpm` - linux; s390x

```console
$ docker pull nextcloud@sha256:43823da64fc15aff620a4af71ed0304e1a9fad91a870c35eed2ccaa2b8f046f9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.2 MB (230208763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e2eb4b7c442229859726be4d5f33ad84d705838bdbe6948c5f1ea693869e2cd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:18:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 08 Sep 2017 06:19:14 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:19:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 08 Sep 2017 06:19:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 08 Sep 2017 06:25:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 08 Sep 2017 06:25:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:25:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:25:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 06:25:40 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 08 Sep 2017 06:25:40 GMT
ENV PHP_VERSION=7.1.9
# Fri, 08 Sep 2017 06:25:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 06:25:40 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 08 Sep 2017 06:25:57 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 06:25:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 06:29:00 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Sep 2017 17:22:39 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Thu, 21 Sep 2017 17:22:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Sep 2017 17:22:39 GMT
WORKDIR /var/www/html
# Thu, 21 Sep 2017 17:22:40 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 21 Sep 2017 17:22:40 GMT
EXPOSE 9000/tcp
# Thu, 21 Sep 2017 17:22:40 GMT
CMD ["php-fpm"]
# Thu, 21 Sep 2017 17:54:04 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 21 Sep 2017 17:56:11 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Thu, 21 Sep 2017 17:56:12 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 21 Sep 2017 17:56:35 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Thu, 21 Sep 2017 17:58:05 GMT
ENV NEXTCLOUD_VERSION=12.0.3
# Thu, 21 Sep 2017 17:58:05 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Thu, 21 Sep 2017 17:58:05 GMT
VOLUME [/var/www/html]
# Thu, 21 Sep 2017 17:58:33 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Thu, 21 Sep 2017 17:58:34 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Thu, 21 Sep 2017 17:58:34 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Thu, 21 Sep 2017 17:58:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 17:58:34 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701b1d6891093c664aafb5ddded8b897bab2678b49b4c39ed152c86139e3b472`  
		Last Modified: Fri, 08 Sep 2017 06:58:03 GMT  
		Size: 64.0 MB (63977876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e477fee1ce9a2412b1abf6eb058badc7a59941c997bf3c5764c47e9f3d51e2f0`  
		Last Modified: Fri, 08 Sep 2017 06:57:49 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25477b33aeb20022499d2d5afbf87cbf3751a8975adb8b3eaaa17662f8ce506`  
		Last Modified: Fri, 08 Sep 2017 06:58:37 GMT  
		Size: 12.5 MB (12492492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f261f8fcfe12d7e6ba85504c78d8da0ce51c69568bb456845b05f0ee0a3c0fc6`  
		Last Modified: Fri, 08 Sep 2017 06:58:35 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704776b16a2a6069173f9e7b39e88bc683291e27dfb963a982bc2baa31b4f57d`  
		Last Modified: Fri, 08 Sep 2017 06:58:38 GMT  
		Size: 13.8 MB (13837411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e70773a5164f3290a6db31e3b63fb2758b308ae0af70de1fb3f6b09fbbd7ebc`  
		Last Modified: Thu, 21 Sep 2017 17:24:39 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334859d5f7248e90292be0966c143b00190c8768a4ac7aa2a40cd171fa146fae`  
		Last Modified: Thu, 21 Sep 2017 17:24:39 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b83972bfccdb69e2cce358007827b0b34936eeb2b9d02269bfab27997dff5e2`  
		Last Modified: Thu, 21 Sep 2017 17:24:39 GMT  
		Size: 7.7 KB (7687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c270f2f749479a33e993d5f8595ebe79dcf3a3752366cb0dbc8a83a18eb6996c`  
		Last Modified: Thu, 21 Sep 2017 17:59:33 GMT  
		Size: 36.8 MB (36810725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84455482172cdf33c03f569d25882a832991aad353f732695c80589db54f3f6c`  
		Last Modified: Thu, 21 Sep 2017 17:59:31 GMT  
		Size: 2.0 MB (1963709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f17a300762782db1c86e0c072e867b0d26e583787d68ab18e06cb02940a20a`  
		Last Modified: Thu, 21 Sep 2017 17:59:24 GMT  
		Size: 355.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13a638ff85f0b32e0f5d71152b4cc93e2b45437c0a571495d2b2f9341bfb387`  
		Last Modified: Thu, 21 Sep 2017 17:59:24 GMT  
		Size: 1.4 MB (1354543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b621c6363cbf3286e2917bf4d2f785419c7b0bc0542f336c2c64bad1d31f88`  
		Last Modified: Thu, 21 Sep 2017 17:59:23 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864d2aaa16a075a62ba3d4dfa0e0584c818cc90946169ace6b8286a28c590d2b`  
		Last Modified: Thu, 21 Sep 2017 18:00:35 GMT  
		Size: 47.0 MB (46970322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e2d62b0e5e28b7b4c6d000ab682078ef3254167dfa28b359718302c6fea790`  
		Last Modified: Thu, 21 Sep 2017 18:00:27 GMT  
		Size: 940.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c30e7aa9d00eceb4589ad34b03c345e17db7c2ac8b96fc11d1935c8164cbeff`  
		Last Modified: Thu, 21 Sep 2017 18:00:27 GMT  
		Size: 781.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12.0-apache`

```console
$ docker pull nextcloud@sha256:c45ae0a1f04b47fbe290959942fdd3235a7d628637c6abe4431e6b054f5dc279
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `nextcloud:12.0-apache` - linux; s390x

```console
$ docker pull nextcloud@sha256:d3b714da4ac0b8a0074138a4ee53ce3cdbe00287ce2b8e0d19241015f4b1249c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.5 MB (233474156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bce38d8f5152e88472fd69e9afd5dca839a0b1fce9cca4ea7182d0bf4c2ff67`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:18:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 08 Sep 2017 06:19:14 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:19:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 08 Sep 2017 06:19:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 08 Sep 2017 06:22:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:22:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 08 Sep 2017 06:23:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 08 Sep 2017 06:23:00 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 08 Sep 2017 06:23:01 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 08 Sep 2017 06:23:01 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 08 Sep 2017 06:23:02 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 06:23:03 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_VERSION=7.1.9
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 08 Sep 2017 06:23:19 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 06:23:19 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 06:25:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Sep 2017 17:22:33 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Thu, 21 Sep 2017 17:22:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Sep 2017 17:22:33 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 21 Sep 2017 17:22:34 GMT
WORKDIR /var/www/html
# Thu, 21 Sep 2017 17:22:34 GMT
EXPOSE 80/tcp
# Thu, 21 Sep 2017 17:22:34 GMT
CMD ["apache2-foreground"]
# Thu, 21 Sep 2017 17:50:49 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 21 Sep 2017 17:52:53 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Thu, 21 Sep 2017 17:52:54 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 21 Sep 2017 17:52:54 GMT
RUN a2enmod rewrite
# Thu, 21 Sep 2017 17:53:18 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Thu, 21 Sep 2017 17:53:18 GMT
RUN a2enmod rewrite
# Thu, 21 Sep 2017 17:57:39 GMT
ENV NEXTCLOUD_VERSION=12.0.3
# Thu, 21 Sep 2017 17:57:40 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Thu, 21 Sep 2017 17:57:40 GMT
VOLUME [/var/www/html]
# Thu, 21 Sep 2017 17:57:57 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Thu, 21 Sep 2017 17:57:58 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Thu, 21 Sep 2017 17:57:58 GMT
COPY multi:a4ce16f733fa0a4cb4b62b3fe3229e71f5a6b970a03b912772780cdb452098f4 in /usr/src/nextcloud/config/ 
# Thu, 21 Sep 2017 17:57:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 17:57:59 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701b1d6891093c664aafb5ddded8b897bab2678b49b4c39ed152c86139e3b472`  
		Last Modified: Fri, 08 Sep 2017 06:58:03 GMT  
		Size: 64.0 MB (63977876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e477fee1ce9a2412b1abf6eb058badc7a59941c997bf3c5764c47e9f3d51e2f0`  
		Last Modified: Fri, 08 Sep 2017 06:57:49 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e311b1d5cc2339ce23df72332cc46172629bd6963e8637778bb8f88fcdd864`  
		Last Modified: Fri, 08 Sep 2017 06:58:25 GMT  
		Size: 3.0 MB (3022480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d672acbf183bc3af07e7748180d93a6840e2318cd89c297d412c1e411529260`  
		Last Modified: Fri, 08 Sep 2017 06:58:24 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab45def1c89dc1f846f7d3ae8e83f3d1e4545980614f582148db747e84351a72`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d137773f7744dbe6997e12c595f10532708ad0d138d8bee39c78b11a3876048`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f35a6f0e12655b63b7b31b460fbbd16bf9b36b984c3d681e9dd64788a29998`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d829983b803a79caeb8eddf17a4b9589d56bbde42e6f9be16a66cf837addfc9`  
		Last Modified: Fri, 08 Sep 2017 06:58:22 GMT  
		Size: 12.5 MB (12509581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b186566cc709c8c1a770d57f62a500a9eb6a9f59812ce47d28cde8774b850648`  
		Last Modified: Fri, 08 Sep 2017 06:58:21 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb759026a75c2bfeb3e7b0d2bca8a72ec0859321feabfa7d74bc386d29874e3`  
		Last Modified: Fri, 08 Sep 2017 06:58:25 GMT  
		Size: 14.0 MB (14048119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfd73e35d71aa65f5fe44fcf1f25c670da66c2497ab351fd488d16e5e327a4f`  
		Last Modified: Thu, 21 Sep 2017 17:24:22 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1affa5a5b42c12b3722de9c5817991ede94966f37761dd1edc15c4a0e3b5ec62`  
		Last Modified: Thu, 21 Sep 2017 17:24:22 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1d8755b9754237c1548613becaeabf8ad6a1c2918977dcf231e7381269cc80`  
		Last Modified: Thu, 21 Sep 2017 17:59:00 GMT  
		Size: 36.8 MB (36830226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc9b4cb21ecaded08735db51e5a1b7592f7bc5c62d2284b25f7482e1fb8c070`  
		Last Modified: Thu, 21 Sep 2017 17:58:53 GMT  
		Size: 2.0 MB (1963481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c57085e60c6a0dc86a69e2d554ddc2f1a7a6f1e59f460c06ab8874e479b69b`  
		Last Modified: Thu, 21 Sep 2017 17:58:53 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07a516baa82fba28515e2a8ab3c3ec83c1f3a4db04599e062b24a64400ab5d3`  
		Last Modified: Thu, 21 Sep 2017 17:58:52 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03a960119a20feb16e42fcb650808ffc81da8686a4fc45707d31e9857ba3e41f`  
		Last Modified: Thu, 21 Sep 2017 17:58:52 GMT  
		Size: 1.4 MB (1354553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190366b0e92dcf802d8c591bdeb52d480524e845433188c14afba2d04782c123`  
		Last Modified: Fri, 08 Sep 2017 07:43:46 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4558f22230e57bc6766eb98c920f36b62fd258d7a6ec0f1b06c1293771f880`  
		Last Modified: Thu, 21 Sep 2017 17:59:56 GMT  
		Size: 47.0 MB (46970309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343cb36532f4f9fb28ce4cda44eedc04651c9e902b7502eed9d85cff7b54eb17`  
		Last Modified: Thu, 21 Sep 2017 17:59:47 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e81740fc800aff654abc3eb066033e42e09eaef8b3e5bad1c6ed0f4364aa075`  
		Last Modified: Thu, 21 Sep 2017 17:59:47 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12.0-fpm`

```console
$ docker pull nextcloud@sha256:f5decf881b6a6e60237d6d625d29cc6088ac3e1f16f292eaccec8406c59b140d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `nextcloud:12.0-fpm` - linux; s390x

```console
$ docker pull nextcloud@sha256:43823da64fc15aff620a4af71ed0304e1a9fad91a870c35eed2ccaa2b8f046f9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.2 MB (230208763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e2eb4b7c442229859726be4d5f33ad84d705838bdbe6948c5f1ea693869e2cd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:18:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 08 Sep 2017 06:19:14 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:19:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 08 Sep 2017 06:19:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 08 Sep 2017 06:25:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 08 Sep 2017 06:25:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:25:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:25:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 06:25:40 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 08 Sep 2017 06:25:40 GMT
ENV PHP_VERSION=7.1.9
# Fri, 08 Sep 2017 06:25:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 06:25:40 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 08 Sep 2017 06:25:57 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 06:25:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 06:29:00 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Sep 2017 17:22:39 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Thu, 21 Sep 2017 17:22:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Sep 2017 17:22:39 GMT
WORKDIR /var/www/html
# Thu, 21 Sep 2017 17:22:40 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 21 Sep 2017 17:22:40 GMT
EXPOSE 9000/tcp
# Thu, 21 Sep 2017 17:22:40 GMT
CMD ["php-fpm"]
# Thu, 21 Sep 2017 17:54:04 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 21 Sep 2017 17:56:11 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Thu, 21 Sep 2017 17:56:12 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 21 Sep 2017 17:56:35 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Thu, 21 Sep 2017 17:58:05 GMT
ENV NEXTCLOUD_VERSION=12.0.3
# Thu, 21 Sep 2017 17:58:05 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Thu, 21 Sep 2017 17:58:05 GMT
VOLUME [/var/www/html]
# Thu, 21 Sep 2017 17:58:33 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Thu, 21 Sep 2017 17:58:34 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Thu, 21 Sep 2017 17:58:34 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Thu, 21 Sep 2017 17:58:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 17:58:34 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701b1d6891093c664aafb5ddded8b897bab2678b49b4c39ed152c86139e3b472`  
		Last Modified: Fri, 08 Sep 2017 06:58:03 GMT  
		Size: 64.0 MB (63977876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e477fee1ce9a2412b1abf6eb058badc7a59941c997bf3c5764c47e9f3d51e2f0`  
		Last Modified: Fri, 08 Sep 2017 06:57:49 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25477b33aeb20022499d2d5afbf87cbf3751a8975adb8b3eaaa17662f8ce506`  
		Last Modified: Fri, 08 Sep 2017 06:58:37 GMT  
		Size: 12.5 MB (12492492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f261f8fcfe12d7e6ba85504c78d8da0ce51c69568bb456845b05f0ee0a3c0fc6`  
		Last Modified: Fri, 08 Sep 2017 06:58:35 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704776b16a2a6069173f9e7b39e88bc683291e27dfb963a982bc2baa31b4f57d`  
		Last Modified: Fri, 08 Sep 2017 06:58:38 GMT  
		Size: 13.8 MB (13837411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e70773a5164f3290a6db31e3b63fb2758b308ae0af70de1fb3f6b09fbbd7ebc`  
		Last Modified: Thu, 21 Sep 2017 17:24:39 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334859d5f7248e90292be0966c143b00190c8768a4ac7aa2a40cd171fa146fae`  
		Last Modified: Thu, 21 Sep 2017 17:24:39 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b83972bfccdb69e2cce358007827b0b34936eeb2b9d02269bfab27997dff5e2`  
		Last Modified: Thu, 21 Sep 2017 17:24:39 GMT  
		Size: 7.7 KB (7687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c270f2f749479a33e993d5f8595ebe79dcf3a3752366cb0dbc8a83a18eb6996c`  
		Last Modified: Thu, 21 Sep 2017 17:59:33 GMT  
		Size: 36.8 MB (36810725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84455482172cdf33c03f569d25882a832991aad353f732695c80589db54f3f6c`  
		Last Modified: Thu, 21 Sep 2017 17:59:31 GMT  
		Size: 2.0 MB (1963709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f17a300762782db1c86e0c072e867b0d26e583787d68ab18e06cb02940a20a`  
		Last Modified: Thu, 21 Sep 2017 17:59:24 GMT  
		Size: 355.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13a638ff85f0b32e0f5d71152b4cc93e2b45437c0a571495d2b2f9341bfb387`  
		Last Modified: Thu, 21 Sep 2017 17:59:24 GMT  
		Size: 1.4 MB (1354543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b621c6363cbf3286e2917bf4d2f785419c7b0bc0542f336c2c64bad1d31f88`  
		Last Modified: Thu, 21 Sep 2017 17:59:23 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864d2aaa16a075a62ba3d4dfa0e0584c818cc90946169ace6b8286a28c590d2b`  
		Last Modified: Thu, 21 Sep 2017 18:00:35 GMT  
		Size: 47.0 MB (46970322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e2d62b0e5e28b7b4c6d000ab682078ef3254167dfa28b359718302c6fea790`  
		Last Modified: Thu, 21 Sep 2017 18:00:27 GMT  
		Size: 940.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c30e7aa9d00eceb4589ad34b03c345e17db7c2ac8b96fc11d1935c8164cbeff`  
		Last Modified: Thu, 21 Sep 2017 18:00:27 GMT  
		Size: 781.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12-apache`

```console
$ docker pull nextcloud@sha256:c45ae0a1f04b47fbe290959942fdd3235a7d628637c6abe4431e6b054f5dc279
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `nextcloud:12-apache` - linux; s390x

```console
$ docker pull nextcloud@sha256:d3b714da4ac0b8a0074138a4ee53ce3cdbe00287ce2b8e0d19241015f4b1249c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.5 MB (233474156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bce38d8f5152e88472fd69e9afd5dca839a0b1fce9cca4ea7182d0bf4c2ff67`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:18:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 08 Sep 2017 06:19:14 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:19:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 08 Sep 2017 06:19:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 08 Sep 2017 06:22:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:22:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 08 Sep 2017 06:23:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 08 Sep 2017 06:23:00 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 08 Sep 2017 06:23:01 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 08 Sep 2017 06:23:01 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 08 Sep 2017 06:23:02 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 06:23:03 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_VERSION=7.1.9
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 08 Sep 2017 06:23:19 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 06:23:19 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 06:25:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Sep 2017 17:22:33 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Thu, 21 Sep 2017 17:22:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Sep 2017 17:22:33 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 21 Sep 2017 17:22:34 GMT
WORKDIR /var/www/html
# Thu, 21 Sep 2017 17:22:34 GMT
EXPOSE 80/tcp
# Thu, 21 Sep 2017 17:22:34 GMT
CMD ["apache2-foreground"]
# Thu, 21 Sep 2017 17:50:49 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 21 Sep 2017 17:52:53 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Thu, 21 Sep 2017 17:52:54 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 21 Sep 2017 17:52:54 GMT
RUN a2enmod rewrite
# Thu, 21 Sep 2017 17:53:18 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Thu, 21 Sep 2017 17:53:18 GMT
RUN a2enmod rewrite
# Thu, 21 Sep 2017 17:57:39 GMT
ENV NEXTCLOUD_VERSION=12.0.3
# Thu, 21 Sep 2017 17:57:40 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Thu, 21 Sep 2017 17:57:40 GMT
VOLUME [/var/www/html]
# Thu, 21 Sep 2017 17:57:57 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Thu, 21 Sep 2017 17:57:58 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Thu, 21 Sep 2017 17:57:58 GMT
COPY multi:a4ce16f733fa0a4cb4b62b3fe3229e71f5a6b970a03b912772780cdb452098f4 in /usr/src/nextcloud/config/ 
# Thu, 21 Sep 2017 17:57:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 17:57:59 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701b1d6891093c664aafb5ddded8b897bab2678b49b4c39ed152c86139e3b472`  
		Last Modified: Fri, 08 Sep 2017 06:58:03 GMT  
		Size: 64.0 MB (63977876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e477fee1ce9a2412b1abf6eb058badc7a59941c997bf3c5764c47e9f3d51e2f0`  
		Last Modified: Fri, 08 Sep 2017 06:57:49 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e311b1d5cc2339ce23df72332cc46172629bd6963e8637778bb8f88fcdd864`  
		Last Modified: Fri, 08 Sep 2017 06:58:25 GMT  
		Size: 3.0 MB (3022480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d672acbf183bc3af07e7748180d93a6840e2318cd89c297d412c1e411529260`  
		Last Modified: Fri, 08 Sep 2017 06:58:24 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab45def1c89dc1f846f7d3ae8e83f3d1e4545980614f582148db747e84351a72`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d137773f7744dbe6997e12c595f10532708ad0d138d8bee39c78b11a3876048`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f35a6f0e12655b63b7b31b460fbbd16bf9b36b984c3d681e9dd64788a29998`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d829983b803a79caeb8eddf17a4b9589d56bbde42e6f9be16a66cf837addfc9`  
		Last Modified: Fri, 08 Sep 2017 06:58:22 GMT  
		Size: 12.5 MB (12509581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b186566cc709c8c1a770d57f62a500a9eb6a9f59812ce47d28cde8774b850648`  
		Last Modified: Fri, 08 Sep 2017 06:58:21 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb759026a75c2bfeb3e7b0d2bca8a72ec0859321feabfa7d74bc386d29874e3`  
		Last Modified: Fri, 08 Sep 2017 06:58:25 GMT  
		Size: 14.0 MB (14048119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfd73e35d71aa65f5fe44fcf1f25c670da66c2497ab351fd488d16e5e327a4f`  
		Last Modified: Thu, 21 Sep 2017 17:24:22 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1affa5a5b42c12b3722de9c5817991ede94966f37761dd1edc15c4a0e3b5ec62`  
		Last Modified: Thu, 21 Sep 2017 17:24:22 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1d8755b9754237c1548613becaeabf8ad6a1c2918977dcf231e7381269cc80`  
		Last Modified: Thu, 21 Sep 2017 17:59:00 GMT  
		Size: 36.8 MB (36830226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc9b4cb21ecaded08735db51e5a1b7592f7bc5c62d2284b25f7482e1fb8c070`  
		Last Modified: Thu, 21 Sep 2017 17:58:53 GMT  
		Size: 2.0 MB (1963481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c57085e60c6a0dc86a69e2d554ddc2f1a7a6f1e59f460c06ab8874e479b69b`  
		Last Modified: Thu, 21 Sep 2017 17:58:53 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07a516baa82fba28515e2a8ab3c3ec83c1f3a4db04599e062b24a64400ab5d3`  
		Last Modified: Thu, 21 Sep 2017 17:58:52 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03a960119a20feb16e42fcb650808ffc81da8686a4fc45707d31e9857ba3e41f`  
		Last Modified: Thu, 21 Sep 2017 17:58:52 GMT  
		Size: 1.4 MB (1354553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190366b0e92dcf802d8c591bdeb52d480524e845433188c14afba2d04782c123`  
		Last Modified: Fri, 08 Sep 2017 07:43:46 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4558f22230e57bc6766eb98c920f36b62fd258d7a6ec0f1b06c1293771f880`  
		Last Modified: Thu, 21 Sep 2017 17:59:56 GMT  
		Size: 47.0 MB (46970309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343cb36532f4f9fb28ce4cda44eedc04651c9e902b7502eed9d85cff7b54eb17`  
		Last Modified: Thu, 21 Sep 2017 17:59:47 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e81740fc800aff654abc3eb066033e42e09eaef8b3e5bad1c6ed0f4364aa075`  
		Last Modified: Thu, 21 Sep 2017 17:59:47 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:12-fpm`

```console
$ docker pull nextcloud@sha256:f5decf881b6a6e60237d6d625d29cc6088ac3e1f16f292eaccec8406c59b140d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `nextcloud:12-fpm` - linux; s390x

```console
$ docker pull nextcloud@sha256:43823da64fc15aff620a4af71ed0304e1a9fad91a870c35eed2ccaa2b8f046f9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.2 MB (230208763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e2eb4b7c442229859726be4d5f33ad84d705838bdbe6948c5f1ea693869e2cd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:18:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 08 Sep 2017 06:19:14 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:19:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 08 Sep 2017 06:19:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 08 Sep 2017 06:25:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 08 Sep 2017 06:25:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:25:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:25:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 06:25:40 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 08 Sep 2017 06:25:40 GMT
ENV PHP_VERSION=7.1.9
# Fri, 08 Sep 2017 06:25:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 06:25:40 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 08 Sep 2017 06:25:57 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 06:25:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 06:29:00 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Sep 2017 17:22:39 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Thu, 21 Sep 2017 17:22:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Sep 2017 17:22:39 GMT
WORKDIR /var/www/html
# Thu, 21 Sep 2017 17:22:40 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 21 Sep 2017 17:22:40 GMT
EXPOSE 9000/tcp
# Thu, 21 Sep 2017 17:22:40 GMT
CMD ["php-fpm"]
# Thu, 21 Sep 2017 17:54:04 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 21 Sep 2017 17:56:11 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Thu, 21 Sep 2017 17:56:12 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 21 Sep 2017 17:56:35 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Thu, 21 Sep 2017 17:58:05 GMT
ENV NEXTCLOUD_VERSION=12.0.3
# Thu, 21 Sep 2017 17:58:05 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Thu, 21 Sep 2017 17:58:05 GMT
VOLUME [/var/www/html]
# Thu, 21 Sep 2017 17:58:33 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Thu, 21 Sep 2017 17:58:34 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Thu, 21 Sep 2017 17:58:34 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Thu, 21 Sep 2017 17:58:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 17:58:34 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701b1d6891093c664aafb5ddded8b897bab2678b49b4c39ed152c86139e3b472`  
		Last Modified: Fri, 08 Sep 2017 06:58:03 GMT  
		Size: 64.0 MB (63977876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e477fee1ce9a2412b1abf6eb058badc7a59941c997bf3c5764c47e9f3d51e2f0`  
		Last Modified: Fri, 08 Sep 2017 06:57:49 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25477b33aeb20022499d2d5afbf87cbf3751a8975adb8b3eaaa17662f8ce506`  
		Last Modified: Fri, 08 Sep 2017 06:58:37 GMT  
		Size: 12.5 MB (12492492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f261f8fcfe12d7e6ba85504c78d8da0ce51c69568bb456845b05f0ee0a3c0fc6`  
		Last Modified: Fri, 08 Sep 2017 06:58:35 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704776b16a2a6069173f9e7b39e88bc683291e27dfb963a982bc2baa31b4f57d`  
		Last Modified: Fri, 08 Sep 2017 06:58:38 GMT  
		Size: 13.8 MB (13837411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e70773a5164f3290a6db31e3b63fb2758b308ae0af70de1fb3f6b09fbbd7ebc`  
		Last Modified: Thu, 21 Sep 2017 17:24:39 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334859d5f7248e90292be0966c143b00190c8768a4ac7aa2a40cd171fa146fae`  
		Last Modified: Thu, 21 Sep 2017 17:24:39 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b83972bfccdb69e2cce358007827b0b34936eeb2b9d02269bfab27997dff5e2`  
		Last Modified: Thu, 21 Sep 2017 17:24:39 GMT  
		Size: 7.7 KB (7687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c270f2f749479a33e993d5f8595ebe79dcf3a3752366cb0dbc8a83a18eb6996c`  
		Last Modified: Thu, 21 Sep 2017 17:59:33 GMT  
		Size: 36.8 MB (36810725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84455482172cdf33c03f569d25882a832991aad353f732695c80589db54f3f6c`  
		Last Modified: Thu, 21 Sep 2017 17:59:31 GMT  
		Size: 2.0 MB (1963709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f17a300762782db1c86e0c072e867b0d26e583787d68ab18e06cb02940a20a`  
		Last Modified: Thu, 21 Sep 2017 17:59:24 GMT  
		Size: 355.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13a638ff85f0b32e0f5d71152b4cc93e2b45437c0a571495d2b2f9341bfb387`  
		Last Modified: Thu, 21 Sep 2017 17:59:24 GMT  
		Size: 1.4 MB (1354543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b621c6363cbf3286e2917bf4d2f785419c7b0bc0542f336c2c64bad1d31f88`  
		Last Modified: Thu, 21 Sep 2017 17:59:23 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864d2aaa16a075a62ba3d4dfa0e0584c818cc90946169ace6b8286a28c590d2b`  
		Last Modified: Thu, 21 Sep 2017 18:00:35 GMT  
		Size: 47.0 MB (46970322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e2d62b0e5e28b7b4c6d000ab682078ef3254167dfa28b359718302c6fea790`  
		Last Modified: Thu, 21 Sep 2017 18:00:27 GMT  
		Size: 940.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c30e7aa9d00eceb4589ad34b03c345e17db7c2ac8b96fc11d1935c8164cbeff`  
		Last Modified: Thu, 21 Sep 2017 18:00:27 GMT  
		Size: 781.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:apache`

```console
$ docker pull nextcloud@sha256:c45ae0a1f04b47fbe290959942fdd3235a7d628637c6abe4431e6b054f5dc279
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `nextcloud:apache` - linux; s390x

```console
$ docker pull nextcloud@sha256:d3b714da4ac0b8a0074138a4ee53ce3cdbe00287ce2b8e0d19241015f4b1249c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.5 MB (233474156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bce38d8f5152e88472fd69e9afd5dca839a0b1fce9cca4ea7182d0bf4c2ff67`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:18:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 08 Sep 2017 06:19:14 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:19:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 08 Sep 2017 06:19:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 08 Sep 2017 06:22:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:22:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 08 Sep 2017 06:23:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 08 Sep 2017 06:23:00 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 08 Sep 2017 06:23:01 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 08 Sep 2017 06:23:01 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 08 Sep 2017 06:23:02 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 06:23:03 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_VERSION=7.1.9
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 08 Sep 2017 06:23:19 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 06:23:19 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 06:25:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Sep 2017 17:22:33 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Thu, 21 Sep 2017 17:22:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Sep 2017 17:22:33 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 21 Sep 2017 17:22:34 GMT
WORKDIR /var/www/html
# Thu, 21 Sep 2017 17:22:34 GMT
EXPOSE 80/tcp
# Thu, 21 Sep 2017 17:22:34 GMT
CMD ["apache2-foreground"]
# Thu, 21 Sep 2017 17:50:49 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 21 Sep 2017 17:52:53 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Thu, 21 Sep 2017 17:52:54 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 21 Sep 2017 17:52:54 GMT
RUN a2enmod rewrite
# Thu, 21 Sep 2017 17:53:18 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Thu, 21 Sep 2017 17:53:18 GMT
RUN a2enmod rewrite
# Thu, 21 Sep 2017 17:57:39 GMT
ENV NEXTCLOUD_VERSION=12.0.3
# Thu, 21 Sep 2017 17:57:40 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Thu, 21 Sep 2017 17:57:40 GMT
VOLUME [/var/www/html]
# Thu, 21 Sep 2017 17:57:57 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Thu, 21 Sep 2017 17:57:58 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Thu, 21 Sep 2017 17:57:58 GMT
COPY multi:a4ce16f733fa0a4cb4b62b3fe3229e71f5a6b970a03b912772780cdb452098f4 in /usr/src/nextcloud/config/ 
# Thu, 21 Sep 2017 17:57:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 17:57:59 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701b1d6891093c664aafb5ddded8b897bab2678b49b4c39ed152c86139e3b472`  
		Last Modified: Fri, 08 Sep 2017 06:58:03 GMT  
		Size: 64.0 MB (63977876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e477fee1ce9a2412b1abf6eb058badc7a59941c997bf3c5764c47e9f3d51e2f0`  
		Last Modified: Fri, 08 Sep 2017 06:57:49 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e311b1d5cc2339ce23df72332cc46172629bd6963e8637778bb8f88fcdd864`  
		Last Modified: Fri, 08 Sep 2017 06:58:25 GMT  
		Size: 3.0 MB (3022480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d672acbf183bc3af07e7748180d93a6840e2318cd89c297d412c1e411529260`  
		Last Modified: Fri, 08 Sep 2017 06:58:24 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab45def1c89dc1f846f7d3ae8e83f3d1e4545980614f582148db747e84351a72`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d137773f7744dbe6997e12c595f10532708ad0d138d8bee39c78b11a3876048`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f35a6f0e12655b63b7b31b460fbbd16bf9b36b984c3d681e9dd64788a29998`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d829983b803a79caeb8eddf17a4b9589d56bbde42e6f9be16a66cf837addfc9`  
		Last Modified: Fri, 08 Sep 2017 06:58:22 GMT  
		Size: 12.5 MB (12509581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b186566cc709c8c1a770d57f62a500a9eb6a9f59812ce47d28cde8774b850648`  
		Last Modified: Fri, 08 Sep 2017 06:58:21 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb759026a75c2bfeb3e7b0d2bca8a72ec0859321feabfa7d74bc386d29874e3`  
		Last Modified: Fri, 08 Sep 2017 06:58:25 GMT  
		Size: 14.0 MB (14048119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfd73e35d71aa65f5fe44fcf1f25c670da66c2497ab351fd488d16e5e327a4f`  
		Last Modified: Thu, 21 Sep 2017 17:24:22 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1affa5a5b42c12b3722de9c5817991ede94966f37761dd1edc15c4a0e3b5ec62`  
		Last Modified: Thu, 21 Sep 2017 17:24:22 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1d8755b9754237c1548613becaeabf8ad6a1c2918977dcf231e7381269cc80`  
		Last Modified: Thu, 21 Sep 2017 17:59:00 GMT  
		Size: 36.8 MB (36830226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc9b4cb21ecaded08735db51e5a1b7592f7bc5c62d2284b25f7482e1fb8c070`  
		Last Modified: Thu, 21 Sep 2017 17:58:53 GMT  
		Size: 2.0 MB (1963481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c57085e60c6a0dc86a69e2d554ddc2f1a7a6f1e59f460c06ab8874e479b69b`  
		Last Modified: Thu, 21 Sep 2017 17:58:53 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07a516baa82fba28515e2a8ab3c3ec83c1f3a4db04599e062b24a64400ab5d3`  
		Last Modified: Thu, 21 Sep 2017 17:58:52 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03a960119a20feb16e42fcb650808ffc81da8686a4fc45707d31e9857ba3e41f`  
		Last Modified: Thu, 21 Sep 2017 17:58:52 GMT  
		Size: 1.4 MB (1354553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190366b0e92dcf802d8c591bdeb52d480524e845433188c14afba2d04782c123`  
		Last Modified: Fri, 08 Sep 2017 07:43:46 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4558f22230e57bc6766eb98c920f36b62fd258d7a6ec0f1b06c1293771f880`  
		Last Modified: Thu, 21 Sep 2017 17:59:56 GMT  
		Size: 47.0 MB (46970309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343cb36532f4f9fb28ce4cda44eedc04651c9e902b7502eed9d85cff7b54eb17`  
		Last Modified: Thu, 21 Sep 2017 17:59:47 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e81740fc800aff654abc3eb066033e42e09eaef8b3e5bad1c6ed0f4364aa075`  
		Last Modified: Thu, 21 Sep 2017 17:59:47 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:fpm`

```console
$ docker pull nextcloud@sha256:f5decf881b6a6e60237d6d625d29cc6088ac3e1f16f292eaccec8406c59b140d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `nextcloud:fpm` - linux; s390x

```console
$ docker pull nextcloud@sha256:43823da64fc15aff620a4af71ed0304e1a9fad91a870c35eed2ccaa2b8f046f9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.2 MB (230208763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e2eb4b7c442229859726be4d5f33ad84d705838bdbe6948c5f1ea693869e2cd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:18:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 08 Sep 2017 06:19:14 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:19:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 08 Sep 2017 06:19:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 08 Sep 2017 06:25:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 08 Sep 2017 06:25:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:25:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:25:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 06:25:40 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 08 Sep 2017 06:25:40 GMT
ENV PHP_VERSION=7.1.9
# Fri, 08 Sep 2017 06:25:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 06:25:40 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 08 Sep 2017 06:25:57 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 06:25:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 06:29:00 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Sep 2017 17:22:39 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Thu, 21 Sep 2017 17:22:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Sep 2017 17:22:39 GMT
WORKDIR /var/www/html
# Thu, 21 Sep 2017 17:22:40 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 21 Sep 2017 17:22:40 GMT
EXPOSE 9000/tcp
# Thu, 21 Sep 2017 17:22:40 GMT
CMD ["php-fpm"]
# Thu, 21 Sep 2017 17:54:04 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 21 Sep 2017 17:56:11 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Thu, 21 Sep 2017 17:56:12 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 21 Sep 2017 17:56:35 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Thu, 21 Sep 2017 17:58:05 GMT
ENV NEXTCLOUD_VERSION=12.0.3
# Thu, 21 Sep 2017 17:58:05 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Thu, 21 Sep 2017 17:58:05 GMT
VOLUME [/var/www/html]
# Thu, 21 Sep 2017 17:58:33 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Thu, 21 Sep 2017 17:58:34 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Thu, 21 Sep 2017 17:58:34 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Thu, 21 Sep 2017 17:58:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 17:58:34 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701b1d6891093c664aafb5ddded8b897bab2678b49b4c39ed152c86139e3b472`  
		Last Modified: Fri, 08 Sep 2017 06:58:03 GMT  
		Size: 64.0 MB (63977876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e477fee1ce9a2412b1abf6eb058badc7a59941c997bf3c5764c47e9f3d51e2f0`  
		Last Modified: Fri, 08 Sep 2017 06:57:49 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25477b33aeb20022499d2d5afbf87cbf3751a8975adb8b3eaaa17662f8ce506`  
		Last Modified: Fri, 08 Sep 2017 06:58:37 GMT  
		Size: 12.5 MB (12492492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f261f8fcfe12d7e6ba85504c78d8da0ce51c69568bb456845b05f0ee0a3c0fc6`  
		Last Modified: Fri, 08 Sep 2017 06:58:35 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704776b16a2a6069173f9e7b39e88bc683291e27dfb963a982bc2baa31b4f57d`  
		Last Modified: Fri, 08 Sep 2017 06:58:38 GMT  
		Size: 13.8 MB (13837411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e70773a5164f3290a6db31e3b63fb2758b308ae0af70de1fb3f6b09fbbd7ebc`  
		Last Modified: Thu, 21 Sep 2017 17:24:39 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334859d5f7248e90292be0966c143b00190c8768a4ac7aa2a40cd171fa146fae`  
		Last Modified: Thu, 21 Sep 2017 17:24:39 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b83972bfccdb69e2cce358007827b0b34936eeb2b9d02269bfab27997dff5e2`  
		Last Modified: Thu, 21 Sep 2017 17:24:39 GMT  
		Size: 7.7 KB (7687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c270f2f749479a33e993d5f8595ebe79dcf3a3752366cb0dbc8a83a18eb6996c`  
		Last Modified: Thu, 21 Sep 2017 17:59:33 GMT  
		Size: 36.8 MB (36810725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84455482172cdf33c03f569d25882a832991aad353f732695c80589db54f3f6c`  
		Last Modified: Thu, 21 Sep 2017 17:59:31 GMT  
		Size: 2.0 MB (1963709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f17a300762782db1c86e0c072e867b0d26e583787d68ab18e06cb02940a20a`  
		Last Modified: Thu, 21 Sep 2017 17:59:24 GMT  
		Size: 355.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13a638ff85f0b32e0f5d71152b4cc93e2b45437c0a571495d2b2f9341bfb387`  
		Last Modified: Thu, 21 Sep 2017 17:59:24 GMT  
		Size: 1.4 MB (1354543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b621c6363cbf3286e2917bf4d2f785419c7b0bc0542f336c2c64bad1d31f88`  
		Last Modified: Thu, 21 Sep 2017 17:59:23 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864d2aaa16a075a62ba3d4dfa0e0584c818cc90946169ace6b8286a28c590d2b`  
		Last Modified: Thu, 21 Sep 2017 18:00:35 GMT  
		Size: 47.0 MB (46970322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e2d62b0e5e28b7b4c6d000ab682078ef3254167dfa28b359718302c6fea790`  
		Last Modified: Thu, 21 Sep 2017 18:00:27 GMT  
		Size: 940.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c30e7aa9d00eceb4589ad34b03c345e17db7c2ac8b96fc11d1935c8164cbeff`  
		Last Modified: Thu, 21 Sep 2017 18:00:27 GMT  
		Size: 781.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nextcloud:latest`

```console
$ docker pull nextcloud@sha256:c45ae0a1f04b47fbe290959942fdd3235a7d628637c6abe4431e6b054f5dc279
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `nextcloud:latest` - linux; s390x

```console
$ docker pull nextcloud@sha256:d3b714da4ac0b8a0074138a4ee53ce3cdbe00287ce2b8e0d19241015f4b1249c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.5 MB (233474156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bce38d8f5152e88472fd69e9afd5dca839a0b1fce9cca4ea7182d0bf4c2ff67`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:18:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 08 Sep 2017 06:19:14 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:19:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 08 Sep 2017 06:19:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 08 Sep 2017 06:22:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:22:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 08 Sep 2017 06:23:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 08 Sep 2017 06:23:00 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 08 Sep 2017 06:23:01 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 08 Sep 2017 06:23:01 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 08 Sep 2017 06:23:02 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 08 Sep 2017 06:23:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 08 Sep 2017 06:23:03 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_VERSION=7.1.9
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror
# Fri, 08 Sep 2017 06:23:03 GMT
ENV PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c PHP_MD5=
# Fri, 08 Sep 2017 06:23:19 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 08 Sep 2017 06:23:19 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 08 Sep 2017 06:25:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Sep 2017 17:22:33 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Thu, 21 Sep 2017 17:22:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Sep 2017 17:22:33 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 21 Sep 2017 17:22:34 GMT
WORKDIR /var/www/html
# Thu, 21 Sep 2017 17:22:34 GMT
EXPOSE 80/tcp
# Thu, 21 Sep 2017 17:22:34 GMT
CMD ["apache2-foreground"]
# Thu, 21 Sep 2017 17:50:49 GMT
RUN apt-get update && apt-get install -y   rsync   bzip2   libcurl4-openssl-dev   libfreetype6-dev   libicu-dev   libjpeg-dev   libldap2-dev   libmcrypt-dev   libmemcached-dev   libpng12-dev   libpq-dev   libxml2-dev   && rm -rf /var/lib/apt/lists/*
# Thu, 21 Sep 2017 17:52:53 GMT
RUN debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"   && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr   && docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"   && docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl
# Thu, 21 Sep 2017 17:52:54 GMT
RUN {   echo 'opcache.enable=1';   echo 'opcache.enable_cli=1';   echo 'opcache.interned_strings_buffer=8';   echo 'opcache.max_accelerated_files=10000';   echo 'opcache.memory_consumption=128';   echo 'opcache.save_comments=1';   echo 'opcache.revalidate_freq=1';   } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 21 Sep 2017 17:52:54 GMT
RUN a2enmod rewrite
# Thu, 21 Sep 2017 17:53:18 GMT
RUN set -ex  && pecl install APCu-5.1.8  && pecl install memcached-3.0.3  && pecl install redis-3.1.3  && docker-php-ext-enable apcu redis memcached
# Thu, 21 Sep 2017 17:53:18 GMT
RUN a2enmod rewrite
# Thu, 21 Sep 2017 17:57:39 GMT
ENV NEXTCLOUD_VERSION=12.0.3
# Thu, 21 Sep 2017 17:57:40 GMT
RUN chown -R www-data:root /var/www/html &&     chmod -R g=u /var/www/html
# Thu, 21 Sep 2017 17:57:40 GMT
VOLUME [/var/www/html]
# Thu, 21 Sep 2017 17:57:57 GMT
RUN curl -fsSL -o nextcloud.tar.bz2     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2"  && curl -fsSL -o nextcloud.tar.bz2.asc     "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A  && gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2  && rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc  && tar -xjf nextcloud.tar.bz2 -C /usr/src/  && rm nextcloud.tar.bz2  && rm -rf /usr/src/nextcloud/updater  && mkdir -p /usr/src/nextcloud/data  && mkdir -p /usr/src/nextcloud/custom_apps  && chmod +x /usr/src/nextcloud/occ
# Thu, 21 Sep 2017 17:57:58 GMT
COPY file:3fa42fa6664f03c90280a265050a78ef70bf32cd31864db727f5ee7e94828722 in /entrypoint.sh 
# Thu, 21 Sep 2017 17:57:58 GMT
COPY multi:a4ce16f733fa0a4cb4b62b3fe3229e71f5a6b970a03b912772780cdb452098f4 in /usr/src/nextcloud/config/ 
# Thu, 21 Sep 2017 17:57:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 17:57:59 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701b1d6891093c664aafb5ddded8b897bab2678b49b4c39ed152c86139e3b472`  
		Last Modified: Fri, 08 Sep 2017 06:58:03 GMT  
		Size: 64.0 MB (63977876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e477fee1ce9a2412b1abf6eb058badc7a59941c997bf3c5764c47e9f3d51e2f0`  
		Last Modified: Fri, 08 Sep 2017 06:57:49 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e311b1d5cc2339ce23df72332cc46172629bd6963e8637778bb8f88fcdd864`  
		Last Modified: Fri, 08 Sep 2017 06:58:25 GMT  
		Size: 3.0 MB (3022480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d672acbf183bc3af07e7748180d93a6840e2318cd89c297d412c1e411529260`  
		Last Modified: Fri, 08 Sep 2017 06:58:24 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab45def1c89dc1f846f7d3ae8e83f3d1e4545980614f582148db747e84351a72`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d137773f7744dbe6997e12c595f10532708ad0d138d8bee39c78b11a3876048`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f35a6f0e12655b63b7b31b460fbbd16bf9b36b984c3d681e9dd64788a29998`  
		Last Modified: Fri, 08 Sep 2017 06:58:23 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d829983b803a79caeb8eddf17a4b9589d56bbde42e6f9be16a66cf837addfc9`  
		Last Modified: Fri, 08 Sep 2017 06:58:22 GMT  
		Size: 12.5 MB (12509581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b186566cc709c8c1a770d57f62a500a9eb6a9f59812ce47d28cde8774b850648`  
		Last Modified: Fri, 08 Sep 2017 06:58:21 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb759026a75c2bfeb3e7b0d2bca8a72ec0859321feabfa7d74bc386d29874e3`  
		Last Modified: Fri, 08 Sep 2017 06:58:25 GMT  
		Size: 14.0 MB (14048119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfd73e35d71aa65f5fe44fcf1f25c670da66c2497ab351fd488d16e5e327a4f`  
		Last Modified: Thu, 21 Sep 2017 17:24:22 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1affa5a5b42c12b3722de9c5817991ede94966f37761dd1edc15c4a0e3b5ec62`  
		Last Modified: Thu, 21 Sep 2017 17:24:22 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1d8755b9754237c1548613becaeabf8ad6a1c2918977dcf231e7381269cc80`  
		Last Modified: Thu, 21 Sep 2017 17:59:00 GMT  
		Size: 36.8 MB (36830226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc9b4cb21ecaded08735db51e5a1b7592f7bc5c62d2284b25f7482e1fb8c070`  
		Last Modified: Thu, 21 Sep 2017 17:58:53 GMT  
		Size: 2.0 MB (1963481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c57085e60c6a0dc86a69e2d554ddc2f1a7a6f1e59f460c06ab8874e479b69b`  
		Last Modified: Thu, 21 Sep 2017 17:58:53 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07a516baa82fba28515e2a8ab3c3ec83c1f3a4db04599e062b24a64400ab5d3`  
		Last Modified: Thu, 21 Sep 2017 17:58:52 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03a960119a20feb16e42fcb650808ffc81da8686a4fc45707d31e9857ba3e41f`  
		Last Modified: Thu, 21 Sep 2017 17:58:52 GMT  
		Size: 1.4 MB (1354553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190366b0e92dcf802d8c591bdeb52d480524e845433188c14afba2d04782c123`  
		Last Modified: Fri, 08 Sep 2017 07:43:46 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4558f22230e57bc6766eb98c920f36b62fd258d7a6ec0f1b06c1293771f880`  
		Last Modified: Thu, 21 Sep 2017 17:59:56 GMT  
		Size: 47.0 MB (46970309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343cb36532f4f9fb28ce4cda44eedc04651c9e902b7502eed9d85cff7b54eb17`  
		Last Modified: Thu, 21 Sep 2017 17:59:47 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e81740fc800aff654abc3eb066033e42e09eaef8b3e5bad1c6ed0f4364aa075`  
		Last Modified: Thu, 21 Sep 2017 17:59:47 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
