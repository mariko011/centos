<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `piwik`

-	[`piwik:2.16.2`](#piwik2162)
-	[`piwik:2.16`](#piwik216)
-	[`piwik:2`](#piwik2)
-	[`piwik:latest`](#piwiklatest)

## `piwik:2.16.2`

```console
$ docker pull piwik@sha256:5167c818d5c64abc3e56481a9e8fbdeec739f1c26a316c75e22f9bacd5298250
```

-	Platforms:
	-	linux; amd64

### `piwik:2.16.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.2 MB (186233197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb4bea96ff11ac4305b17d4cd85f26769d1aeb25297e51c96e8f5846353d2dd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:23:56 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 31 Aug 2016 00:37:08 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 16 Sep 2016 20:37:53 GMT
ENV PHP_VERSION=5.6.26
# Fri, 16 Sep 2016 20:37:53 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Fri, 16 Sep 2016 20:37:53 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Fri, 16 Sep 2016 20:37:56 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Fri, 16 Sep 2016 20:37:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:41:18 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 16 Sep 2016 20:41:18 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Fri, 16 Sep 2016 20:41:19 GMT
WORKDIR /var/www/html
# Fri, 16 Sep 2016 20:41:19 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 16 Sep 2016 20:41:20 GMT
EXPOSE 9000/tcp
# Fri, 16 Sep 2016 20:41:20 GMT
CMD ["php-fpm"]
# Fri, 16 Sep 2016 22:44:52 GMT
MAINTAINER pierre@piwik.org
# Fri, 16 Sep 2016 22:45:02 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       ssmtp       zip  && rm -rf /var/lib/apt/lists/*
# Fri, 16 Sep 2016 22:46:00 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr  && docker-php-ext-install gd mbstring mysql pdo_mysql zip
# Fri, 16 Sep 2016 22:46:05 GMT
RUN pecl install APCu geoip
# Fri, 16 Sep 2016 22:46:05 GMT
ENV PIWIK_VERSION=2.16.2
# Fri, 16 Sep 2016 22:46:14 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz  && chfn -f 'Piwik Admin' www-data
# Fri, 16 Sep 2016 22:46:14 GMT
COPY file:abc0ff564b95b724deccad7ff48d69d7a3d7d34cdee0cce0a887f3ed0e726d21 in /usr/local/etc/php/php.ini 
# Fri, 16 Sep 2016 22:46:16 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Fri, 16 Sep 2016 22:46:17 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Fri, 16 Sep 2016 22:46:17 GMT
VOLUME [/var/www/html]
# Fri, 16 Sep 2016 22:46:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Sep 2016 22:46:17 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f867227ba0ca7d341b526da9b951ce76c29841e628fd41e7848cd02a10cc9b3`  
		Last Modified: Fri, 16 Sep 2016 21:03:33 GMT  
		Size: 12.4 MB (12417483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e060fac29eab30697e9e6d0cf654eb74fd357cf9bae808a22716372d9167adf`  
		Last Modified: Fri, 16 Sep 2016 21:03:28 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc5c82aa9b2bd88b7d2110285a373e40b7340379ee6e0f8f95b6269ed7b6b28`  
		Last Modified: Fri, 16 Sep 2016 21:03:31 GMT  
		Size: 8.8 MB (8835389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28455473ebdcc509ff6d0f1005ba4537b9c06fc753eac522d34f7d983f90cac1`  
		Last Modified: Fri, 16 Sep 2016 21:03:28 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779e531cc75ed9693123bb9d9b2adcbf6905ef0dcdef6f54d7f69de0534e99d1`  
		Last Modified: Fri, 16 Sep 2016 21:03:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42627851ab0d4a77e88ff88f96a8ae1246b73e545c2fdd9111e46ff20acf58ec`  
		Last Modified: Fri, 16 Sep 2016 21:03:29 GMT  
		Size: 7.6 KB (7629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5701c5de8cae48a277f4581f5c96385249bb3b15e37cfb1aa25c392066610dab`  
		Last Modified: Fri, 16 Sep 2016 22:46:29 GMT  
		Size: 7.1 MB (7144264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af65479f2b22011c9f74e93a2b73b9eff55253e83c13c9decad6652248aba99c`  
		Last Modified: Fri, 16 Sep 2016 22:46:27 GMT  
		Size: 2.3 MB (2252604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58eb864d9c351f3153b84215a6b7bedcb7d79a806b8d5f52bf53a5477fcb17c`  
		Last Modified: Fri, 16 Sep 2016 22:46:23 GMT  
		Size: 46.6 KB (46574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7da833be97389a54d17aa59b40c443f41957545c6e91daa049d7b8c2afd7b34`  
		Last Modified: Fri, 16 Sep 2016 22:46:28 GMT  
		Size: 12.9 MB (12858945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b5c6712175a551a3f53db99d2d3b1d1eac8b80deeae94de639fced4d3a4c84b`  
		Last Modified: Fri, 16 Sep 2016 22:46:23 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c35e11b214d9015033eed48569b285d8e7f074bba70d5b2a3500be46e4c1c3`  
		Last Modified: Fri, 16 Sep 2016 22:46:27 GMT  
		Size: 13.7 MB (13717869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80db83e53c040057918d7558cf6a578ea1e84d31c3b1e7ba13a3411c4a865087`  
		Last Modified: Fri, 16 Sep 2016 22:46:24 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:2.16`

```console
$ docker pull piwik@sha256:3646278e91ce9cac954ed4187dc989bd5b5f0ab7e1730fc28dd7324c95502cd9
```

-	Platforms:
	-	linux; amd64

### `piwik:2.16` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.8 MB (186756218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f31e3f5b4892c057e3d5eac2317b5b4519123b79de9790f9b27e87c5354121e1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 23:24:49 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 19 Sep 2016 23:25:20 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 19 Sep 2016 23:25:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 19 Sep 2016 23:25:21 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 19 Sep 2016 23:35:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 20 Sep 2016 00:09:34 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 20 Sep 2016 00:09:35 GMT
ENV PHP_VERSION=5.6.26
# Tue, 20 Sep 2016 00:09:35 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Tue, 20 Sep 2016 00:09:36 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Tue, 20 Sep 2016 00:09:40 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Tue, 20 Sep 2016 00:09:40 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:17:06 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 20 Sep 2016 00:17:08 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:17:08 GMT
WORKDIR /var/www/html
# Tue, 20 Sep 2016 00:17:09 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 20 Sep 2016 00:17:09 GMT
EXPOSE 9000/tcp
# Tue, 20 Sep 2016 00:17:10 GMT
CMD ["php-fpm"]
# Tue, 20 Sep 2016 00:17:10 GMT
MAINTAINER pierre@piwik.org
# Wed, 21 Sep 2016 23:29:30 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       ssmtp       zip  && rm -rf /var/lib/apt/lists/*
# Wed, 21 Sep 2016 23:30:12 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap
# Wed, 21 Sep 2016 23:30:18 GMT
RUN pecl install APCu geoip
# Wed, 21 Sep 2016 23:30:18 GMT
ENV PIWIK_VERSION=2.16.2
# Wed, 21 Sep 2016 23:30:26 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz  && chfn -f 'Piwik Admin' www-data
# Wed, 21 Sep 2016 23:30:27 GMT
COPY file:abc0ff564b95b724deccad7ff48d69d7a3d7d34cdee0cce0a887f3ed0e726d21 in /usr/local/etc/php/php.ini 
# Wed, 21 Sep 2016 23:30:29 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Wed, 21 Sep 2016 23:30:29 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Wed, 21 Sep 2016 23:30:30 GMT
VOLUME [/var/www/html]
# Wed, 21 Sep 2016 23:30:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Sep 2016 23:30:30 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac8ac352fc3917a1c94b6fdd01f8cd1fbb5c84ba5cf9de0827f7aeaf809f51`  
		Last Modified: Tue, 20 Sep 2016 05:25:09 GMT  
		Size: 77.6 MB (77593020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba164c22a40422293321eacfbdf325437ddb9a8e9609a60531fc819076478dd`  
		Last Modified: Tue, 20 Sep 2016 05:24:46 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b542df4654dc77cdf26f8762e82fa1ab56de797797d91ce459191d710c2bd31`  
		Last Modified: Tue, 20 Sep 2016 05:26:33 GMT  
		Size: 12.4 MB (12417484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81713641802521724a63be2c0e32a8056354dbb7513d9bf9a5b2eb4eaab963dd`  
		Last Modified: Tue, 20 Sep 2016 05:26:30 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79ce1ce6c3586bf6ee8b9364a7b2f4d79eeb322e34ec69acf1360913d26fadf5`  
		Last Modified: Tue, 20 Sep 2016 05:26:33 GMT  
		Size: 8.8 MB (8834845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ee40203c5586f597e1398383ed6162c77610c54570dd66b58c3633adfd80dd`  
		Last Modified: Tue, 20 Sep 2016 05:26:29 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839d0cd71a26d95bf130dd5cc67b35be5fd7f463c0390a5707e18fea550f9ce1`  
		Last Modified: Tue, 20 Sep 2016 05:26:29 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7454258df3d2985f624fa22ba111aa3f4b85d215ed61bc69d1283853eee32f9`  
		Last Modified: Tue, 20 Sep 2016 05:26:26 GMT  
		Size: 7.6 KB (7625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da54c42e173a7c92fd1c2bbbb9f373f173bbc391fa477a5cdc3a38eefa26dee`  
		Last Modified: Wed, 21 Sep 2016 23:30:44 GMT  
		Size: 7.6 MB (7601066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a758d1a9525aa24a982352e4abaf1a926d69c49c40823135714c1037cc6aa4`  
		Last Modified: Wed, 21 Sep 2016 23:30:41 GMT  
		Size: 2.3 MB (2321054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aad580ee391a048379f9cbddd71eb6474502cfd20327d8a9df829602bde70fc`  
		Last Modified: Wed, 21 Sep 2016 23:30:38 GMT  
		Size: 46.6 KB (46596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79b30422a9d5ff28f8ebefed613a57c8dccda5d9d6ba6459a5cbf230dbe4cff`  
		Last Modified: Wed, 21 Sep 2016 23:30:42 GMT  
		Size: 12.9 MB (12858934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00b9c2e5f8bafac72bce6feaceda6333d778db36f53ac59caca39a986d2b410`  
		Last Modified: Wed, 21 Sep 2016 23:30:37 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba8777a07598e03f438e842911fe854700c1d50d07e9a336f39316c46390efd7`  
		Last Modified: Wed, 21 Sep 2016 23:30:40 GMT  
		Size: 13.7 MB (13717875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53000cbaeb3099f0e8ec7ad94f95e6d8e092a93c625795f06b05c87970f1f175`  
		Last Modified: Wed, 21 Sep 2016 23:30:39 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:2`

```console
$ docker pull piwik@sha256:6e686fdef1c24112fccfd098360898fef68e94e2981ff45b4b6ae4f2585c77d0
```

-	Platforms:
	-	linux; amd64

### `piwik:2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.6 MB (185615958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:227247c82ae51a480098771f91351b5ca1ff42f9f3e4836dc9bad902cb670614`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:16:45 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 31 Aug 2016 00:17:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 31 Aug 2016 00:17:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 31 Aug 2016 00:23:56 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 31 Aug 2016 00:37:08 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 31 Aug 2016 00:37:08 GMT
ENV PHP_VERSION=5.6.25
# Wed, 31 Aug 2016 00:37:09 GMT
ENV PHP_FILENAME=php-5.6.25.tar.xz
# Wed, 31 Aug 2016 00:37:09 GMT
ENV PHP_SHA256=7535cd6e20040ccec4594cc386c6f15c3f2c88f24163294a31068cf7dfe7f644
# Wed, 31 Aug 2016 00:37:12 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 31 Aug 2016 00:37:12 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 31 Aug 2016 00:40:35 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 31 Aug 2016 00:40:36 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Wed, 31 Aug 2016 00:40:36 GMT
WORKDIR /var/www/html
# Wed, 31 Aug 2016 00:40:37 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 31 Aug 2016 00:40:38 GMT
EXPOSE 9000/tcp
# Wed, 31 Aug 2016 00:40:38 GMT
CMD ["php-fpm"]
# Wed, 31 Aug 2016 00:44:13 GMT
MAINTAINER pierre@piwik.org
# Wed, 31 Aug 2016 00:44:23 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       ssmtp       zip  && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:45:22 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr  && docker-php-ext-install gd mbstring mysql pdo_mysql zip
# Wed, 31 Aug 2016 00:45:27 GMT
RUN pecl install APCu geoip
# Wed, 31 Aug 2016 00:45:27 GMT
ENV PIWIK_VERSION=2.16.2
# Wed, 31 Aug 2016 00:45:35 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz  && chfn -f 'Piwik Admin' www-data
# Wed, 31 Aug 2016 00:45:35 GMT
COPY file:abc0ff564b95b724deccad7ff48d69d7a3d7d34cdee0cce0a887f3ed0e726d21 in /usr/local/etc/php/php.ini 
# Wed, 31 Aug 2016 00:45:37 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Wed, 31 Aug 2016 00:45:37 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Wed, 31 Aug 2016 00:45:38 GMT
VOLUME [/var/www/html]
# Wed, 31 Aug 2016 00:45:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 31 Aug 2016 00:45:38 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c326a7a2d357d87c6aa7a196e69a61b2e0f6b91b4ed6bf5868e4dccb2ecaf`  
		Last Modified: Wed, 31 Aug 2016 16:58:23 GMT  
		Size: 77.6 MB (77582022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37fe44e518036ba100ac5a09e9e658e778d6167c6b308c630ab54750dc2a61`  
		Last Modified: Wed, 31 Aug 2016 16:57:50 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59daf88b88a76c4b1ae701700573dfedc0888882fc90d8d7be80b55ffd1871d3`  
		Last Modified: Wed, 07 Sep 2016 19:04:56 GMT  
		Size: 12.4 MB (12409729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3c97f7b1249dc4721395e8cbe8d423825d10cfd6b564780955a95a93ebb014e`  
		Last Modified: Wed, 07 Sep 2016 19:04:51 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f69e96d834d4fde2506631770a8f339c911c571c3fd2ee22889f60c77b4a39`  
		Last Modified: Wed, 07 Sep 2016 19:04:55 GMT  
		Size: 8.8 MB (8826760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423fe0ee3bf2226ae6c744b95312f864fd7642d1fc8fdf6a923739f10d6b211e`  
		Last Modified: Wed, 07 Sep 2016 19:04:51 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2826d98c16659b4a481a89fda1e92fa8b433015be6cf65dcf451f30dafef1f31`  
		Last Modified: Wed, 07 Sep 2016 19:04:51 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10a3f0dc15a2308b53549a30a5308d4afb6cdbbb129af0bfd58d47026d328af`  
		Last Modified: Wed, 07 Sep 2016 19:04:52 GMT  
		Size: 7.6 KB (7627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68dc13d436c3df78b304e8e7de36f88706e1302ca5b100b3e76ad2f0f9bf0713`  
		Last Modified: Wed, 07 Sep 2016 21:56:48 GMT  
		Size: 7.1 MB (7144251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1271a18a39e3132c52eac2eb6138d7368c711593893fb4044f254be89d1fadf`  
		Last Modified: Wed, 07 Sep 2016 21:56:46 GMT  
		Size: 2.3 MB (2252329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5905f60822d65d986e4e3c3a4b8299b2b5b7fb62f8fe6acc18642323786a37`  
		Last Modified: Wed, 07 Sep 2016 21:56:42 GMT  
		Size: 46.6 KB (46571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d4443b24d2c654f08e7a90cc6a177482d3dd8167affa1cb9e4b7275b7b46eb`  
		Last Modified: Wed, 07 Sep 2016 21:56:50 GMT  
		Size: 12.9 MB (12858942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d627b290fdee5bb3a9b3474ec10abcb2883bc7ffa671e44c918919f49f9b3113`  
		Last Modified: Wed, 07 Sep 2016 21:56:41 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5152f04a510435d77b5fa9bbaa9dbbf2a7271e84d61b0abce650280fef367d5b`  
		Last Modified: Wed, 07 Sep 2016 21:56:43 GMT  
		Size: 13.1 MB (13117306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bac8d95a12c60621da2da4248a49643b22ff20551ed90fc49aed87bb2e47495`  
		Last Modified: Wed, 07 Sep 2016 21:56:43 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:latest`

```console
$ docker pull piwik@sha256:3646278e91ce9cac954ed4187dc989bd5b5f0ab7e1730fc28dd7324c95502cd9
```

-	Platforms:
	-	linux; amd64

### `piwik:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.8 MB (186756218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f31e3f5b4892c057e3d5eac2317b5b4519123b79de9790f9b27e87c5354121e1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 23:24:49 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 19 Sep 2016 23:25:20 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 19 Sep 2016 23:25:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 19 Sep 2016 23:25:21 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 19 Sep 2016 23:35:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 20 Sep 2016 00:09:34 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 20 Sep 2016 00:09:35 GMT
ENV PHP_VERSION=5.6.26
# Tue, 20 Sep 2016 00:09:35 GMT
ENV PHP_FILENAME=php-5.6.26.tar.xz
# Tue, 20 Sep 2016 00:09:36 GMT
ENV PHP_SHA256=203a854f0f243cb2810d1c832bc871ff133eccdf1ff69d32846f93bc1bef58a8
# Tue, 20 Sep 2016 00:09:40 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Tue, 20 Sep 2016 00:09:40 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:17:06 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 20 Sep 2016 00:17:08 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:17:08 GMT
WORKDIR /var/www/html
# Tue, 20 Sep 2016 00:17:09 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 20 Sep 2016 00:17:09 GMT
EXPOSE 9000/tcp
# Tue, 20 Sep 2016 00:17:10 GMT
CMD ["php-fpm"]
# Tue, 20 Sep 2016 00:17:10 GMT
MAINTAINER pierre@piwik.org
# Wed, 21 Sep 2016 23:29:30 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       ssmtp       zip  && rm -rf /var/lib/apt/lists/*
# Wed, 21 Sep 2016 23:30:12 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap
# Wed, 21 Sep 2016 23:30:18 GMT
RUN pecl install APCu geoip
# Wed, 21 Sep 2016 23:30:18 GMT
ENV PIWIK_VERSION=2.16.2
# Wed, 21 Sep 2016 23:30:26 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz  && chfn -f 'Piwik Admin' www-data
# Wed, 21 Sep 2016 23:30:27 GMT
COPY file:abc0ff564b95b724deccad7ff48d69d7a3d7d34cdee0cce0a887f3ed0e726d21 in /usr/local/etc/php/php.ini 
# Wed, 21 Sep 2016 23:30:29 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Wed, 21 Sep 2016 23:30:29 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Wed, 21 Sep 2016 23:30:30 GMT
VOLUME [/var/www/html]
# Wed, 21 Sep 2016 23:30:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Sep 2016 23:30:30 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac8ac352fc3917a1c94b6fdd01f8cd1fbb5c84ba5cf9de0827f7aeaf809f51`  
		Last Modified: Tue, 20 Sep 2016 05:25:09 GMT  
		Size: 77.6 MB (77593020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba164c22a40422293321eacfbdf325437ddb9a8e9609a60531fc819076478dd`  
		Last Modified: Tue, 20 Sep 2016 05:24:46 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b542df4654dc77cdf26f8762e82fa1ab56de797797d91ce459191d710c2bd31`  
		Last Modified: Tue, 20 Sep 2016 05:26:33 GMT  
		Size: 12.4 MB (12417484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81713641802521724a63be2c0e32a8056354dbb7513d9bf9a5b2eb4eaab963dd`  
		Last Modified: Tue, 20 Sep 2016 05:26:30 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79ce1ce6c3586bf6ee8b9364a7b2f4d79eeb322e34ec69acf1360913d26fadf5`  
		Last Modified: Tue, 20 Sep 2016 05:26:33 GMT  
		Size: 8.8 MB (8834845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ee40203c5586f597e1398383ed6162c77610c54570dd66b58c3633adfd80dd`  
		Last Modified: Tue, 20 Sep 2016 05:26:29 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839d0cd71a26d95bf130dd5cc67b35be5fd7f463c0390a5707e18fea550f9ce1`  
		Last Modified: Tue, 20 Sep 2016 05:26:29 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7454258df3d2985f624fa22ba111aa3f4b85d215ed61bc69d1283853eee32f9`  
		Last Modified: Tue, 20 Sep 2016 05:26:26 GMT  
		Size: 7.6 KB (7625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da54c42e173a7c92fd1c2bbbb9f373f173bbc391fa477a5cdc3a38eefa26dee`  
		Last Modified: Wed, 21 Sep 2016 23:30:44 GMT  
		Size: 7.6 MB (7601066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a758d1a9525aa24a982352e4abaf1a926d69c49c40823135714c1037cc6aa4`  
		Last Modified: Wed, 21 Sep 2016 23:30:41 GMT  
		Size: 2.3 MB (2321054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aad580ee391a048379f9cbddd71eb6474502cfd20327d8a9df829602bde70fc`  
		Last Modified: Wed, 21 Sep 2016 23:30:38 GMT  
		Size: 46.6 KB (46596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79b30422a9d5ff28f8ebefed613a57c8dccda5d9d6ba6459a5cbf230dbe4cff`  
		Last Modified: Wed, 21 Sep 2016 23:30:42 GMT  
		Size: 12.9 MB (12858934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00b9c2e5f8bafac72bce6feaceda6333d778db36f53ac59caca39a986d2b410`  
		Last Modified: Wed, 21 Sep 2016 23:30:37 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba8777a07598e03f438e842911fe854700c1d50d07e9a336f39316c46390efd7`  
		Last Modified: Wed, 21 Sep 2016 23:30:40 GMT  
		Size: 13.7 MB (13717875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53000cbaeb3099f0e8ec7ad94f95e6d8e092a93c625795f06b05c87970f1f175`  
		Last Modified: Wed, 21 Sep 2016 23:30:39 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
