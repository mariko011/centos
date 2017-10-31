## `drupal:8-fpm`

```console
$ docker pull drupal@sha256:8059eac743851cd9df10edb14cb7c6754f716014b3cb9885f05b75369644fdac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `drupal:8-fpm` - linux; amd64

```console
$ docker pull drupal@sha256:79f496d2114ebba224030fc2f36ebc50952372ac6b6c1d1e504b248f2e223faa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.1 MB (177067895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e9e7ee1d76cd5ee7fba829abfde374af14b3dbe13fcfd08773e59aecdf3c2cd`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Tue, 10 Oct 2017 01:27:12 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Mon, 30 Oct 2017 22:19:10 GMT
ENV PHP_VERSION=7.1.11
# Mon, 30 Oct 2017 22:19:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.11.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.11.tar.xz.asc/from/this/mirror
# Mon, 30 Oct 2017 22:19:10 GMT
ENV PHP_SHA256=074093e9d7d21afedc5106904218a80a47b854abe368d2728ed22184c884893e PHP_MD5=
# Mon, 30 Oct 2017 22:19:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Mon, 30 Oct 2017 22:19:33 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 30 Oct 2017 22:23:23 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 30 Oct 2017 22:27:18 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Mon, 30 Oct 2017 22:27:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 30 Oct 2017 22:27:19 GMT
WORKDIR /var/www/html
# Mon, 30 Oct 2017 22:27:20 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 30 Oct 2017 22:27:20 GMT
EXPOSE 9000/tcp
# Mon, 30 Oct 2017 22:27:20 GMT
CMD ["php-fpm"]
# Tue, 31 Oct 2017 01:08:38 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 31 Oct 2017 01:10:07 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 31 Oct 2017 01:10:08 GMT
WORKDIR /var/www/html
# Tue, 31 Oct 2017 01:10:08 GMT
ENV DRUPAL_VERSION=8.4.0
# Tue, 31 Oct 2017 01:10:08 GMT
ENV DRUPAL_MD5=074795a2f5fc0b599a7dcfb9d1fb03f5
# Tue, 31 Oct 2017 01:10:12 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
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
	-	`sha256:bf400f69f9bdaf563c4f549f6d4bef6feb8fc6387ac79a83412b34d196568aea`  
		Last Modified: Mon, 30 Oct 2017 23:52:09 GMT  
		Size: 12.5 MB (12506599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ebad45d70ad2219cfcab3a7f899470d5bd6e99eb22c8ffde9a42dc6c10d6324`  
		Last Modified: Mon, 30 Oct 2017 23:52:07 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc790732ca0cefaa3cdcecb2a77ce74bd72ff6f94b06970106bb348f511ca68`  
		Last Modified: Mon, 30 Oct 2017 23:52:09 GMT  
		Size: 13.8 MB (13831289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44def4cccf32d5a350b9f03945e04ec2bb93636e13f024420dd0b94d940cf154`  
		Last Modified: Mon, 30 Oct 2017 23:52:06 GMT  
		Size: 2.2 KB (2172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45e54c9a638de6e9200fd4616fa99e13d538b968e713e9fa974f533179e5ec76`  
		Last Modified: Mon, 30 Oct 2017 23:52:05 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f41260e56c4f0ffb767eadfeba47c7a5e8b96c440d095e518a42c1785a53d2`  
		Last Modified: Mon, 30 Oct 2017 23:52:05 GMT  
		Size: 7.7 KB (7681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d040e33695123e5d0912f893ad752e2b58b81b2f1f5d8fbac0df4a0201fad139`  
		Last Modified: Tue, 31 Oct 2017 01:28:19 GMT  
		Size: 2.1 MB (2087221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e7aadab0df10dcdf747c4cff5933e61ad510d3ec4f1a3bf7be7b5f5f770e23`  
		Last Modified: Tue, 31 Oct 2017 01:28:18 GMT  
		Size: 355.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dbde4b7ca1eb99d84952649de69700da61bb7e30e3372f373d3a5067a2556b6`  
		Last Modified: Tue, 31 Oct 2017 01:28:28 GMT  
		Size: 13.5 MB (13538965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `drupal:8-fpm` - linux; arm variant v5

```console
$ docker pull drupal@sha256:7d2b6f5f201872a18b20990bda7d907ac0f4f57dc43abfa5e3bd43903a259daf
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.0 MB (155044838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6042c8e8f7825429a6b53445a0b363f319113bc91613d583c5edf7e370a7136`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:44:50 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Mon, 09 Oct 2017 22:45:58 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:45:58 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 09 Oct 2017 22:46:00 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 09 Oct 2017 22:55:05 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Mon, 09 Oct 2017 22:55:05 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 09 Oct 2017 22:55:06 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 09 Oct 2017 22:55:06 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Mon, 09 Oct 2017 22:55:06 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Mon, 09 Oct 2017 22:55:06 GMT
ENV PHP_VERSION=7.1.10
# Mon, 09 Oct 2017 22:55:07 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.10.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.10.tar.xz.asc/from/this/mirror
# Mon, 09 Oct 2017 22:55:07 GMT
ENV PHP_SHA256=2b8efa771a2ead0bb3ae67b530ca505b5b286adc873cca9ce97a6e1d6815c50b PHP_MD5=
# Mon, 09 Oct 2017 22:56:02 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Mon, 09 Oct 2017 22:56:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:59:48 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 09 Oct 2017 22:59:49 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:59:49 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 09 Oct 2017 22:59:50 GMT
WORKDIR /var/www/html
# Mon, 09 Oct 2017 22:59:51 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 09 Oct 2017 22:59:52 GMT
EXPOSE 9000/tcp
# Mon, 09 Oct 2017 22:59:52 GMT
CMD ["php-fpm"]
# Tue, 10 Oct 2017 01:55:20 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 01:55:21 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 10 Oct 2017 01:55:22 GMT
WORKDIR /var/www/html
# Tue, 10 Oct 2017 01:55:22 GMT
ENV DRUPAL_VERSION=8.4.0
# Tue, 10 Oct 2017 01:55:22 GMT
ENV DRUPAL_MD5=074795a2f5fc0b599a7dcfb9d1fb03f5
# Tue, 10 Oct 2017 01:55:31 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad1ba133bf708efd9b75cf971201a4ed647286864942a66d5c9d86b126f9b92`  
		Last Modified: Mon, 09 Oct 2017 23:39:58 GMT  
		Size: 63.5 MB (63526955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa24f60e9c2ee1e5256863f0b528469123443a094ca2c8a19dfe9890a89b664a`  
		Last Modified: Mon, 09 Oct 2017 23:39:37 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:436418356b0dbfeb68e60d399201caf5bae6d9c6f8158ce7db6591752a4f2635`  
		Last Modified: Mon, 09 Oct 2017 23:40:48 GMT  
		Size: 12.5 MB (12501041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2b4cd653c171a0dd639c0c59f2d13820c06841e9b0d287e426737f3f32e2ec`  
		Last Modified: Mon, 09 Oct 2017 23:40:46 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:549ca7156b211b3aa869e050e4808c9d231e7f18c52ce594e152fe65cb7615f1`  
		Last Modified: Mon, 09 Oct 2017 23:40:50 GMT  
		Size: 12.6 MB (12590164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7efeba0a9663d02683acc174865644e51d842bb0f6591b20ee22fa9c949e2de`  
		Last Modified: Mon, 09 Oct 2017 23:40:48 GMT  
		Size: 2.2 KB (2172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2d800587bdc18f3a1e2508a2fbc17110ef2034dd0fef6ebab987fa1b6d139b`  
		Last Modified: Mon, 09 Oct 2017 23:40:46 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb34e5d2a445e1b2f30798941d33d63ec1d3d66637b5e52435f549483727d88b`  
		Last Modified: Mon, 09 Oct 2017 23:40:46 GMT  
		Size: 7.7 KB (7681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37061592cd20436e8758cf8f15e7fd03d88b0a9f85640367f4384d51116d8158`  
		Last Modified: Tue, 10 Oct 2017 02:00:51 GMT  
		Size: 2.0 MB (1996531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3371af3988bd53251b8cf3ddf632fe089d025403ef98faadb4c803a91c4f37f2`  
		Last Modified: Tue, 10 Oct 2017 02:00:50 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db0dd58f40eaffe1f207e9399126ca8f65d989e3c3bb6504ab73f9e8dc61d77a`  
		Last Modified: Tue, 10 Oct 2017 02:00:58 GMT  
		Size: 13.5 MB (13539180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `drupal:8-fpm` - linux; arm variant v7

```console
$ docker pull drupal@sha256:6adc92ac75807bb438b7bd24c89699f32dbf839f7f568e874b4a63a2ca7a4591
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.3 MB (152333692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c93fdfe0ab9a09b854955c347edb77f8e3c10b259a165871440c6b03dd79db8`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:08:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Mon, 09 Oct 2017 23:10:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:10:03 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 09 Oct 2017 23:10:04 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 09 Oct 2017 23:19:26 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Mon, 09 Oct 2017 23:19:26 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 09 Oct 2017 23:19:26 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 09 Oct 2017 23:19:27 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Mon, 09 Oct 2017 23:19:27 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Mon, 09 Oct 2017 23:19:27 GMT
ENV PHP_VERSION=7.1.10
# Mon, 09 Oct 2017 23:19:28 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.10.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.10.tar.xz.asc/from/this/mirror
# Mon, 09 Oct 2017 23:19:28 GMT
ENV PHP_SHA256=2b8efa771a2ead0bb3ae67b530ca505b5b286adc873cca9ce97a6e1d6815c50b PHP_MD5=
# Mon, 09 Oct 2017 23:20:16 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Mon, 09 Oct 2017 23:20:17 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 09 Oct 2017 23:23:32 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 09 Oct 2017 23:23:34 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Mon, 09 Oct 2017 23:23:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 09 Oct 2017 23:23:38 GMT
WORKDIR /var/www/html
# Mon, 09 Oct 2017 23:23:39 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 09 Oct 2017 23:23:39 GMT
EXPOSE 9000/tcp
# Mon, 09 Oct 2017 23:23:39 GMT
CMD ["php-fpm"]
# Tue, 10 Oct 2017 01:55:17 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 01:55:18 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 10 Oct 2017 01:55:19 GMT
WORKDIR /var/www/html
# Tue, 10 Oct 2017 01:55:19 GMT
ENV DRUPAL_VERSION=8.4.0
# Tue, 10 Oct 2017 01:55:19 GMT
ENV DRUPAL_MD5=074795a2f5fc0b599a7dcfb9d1fb03f5
# Tue, 10 Oct 2017 01:55:28 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be530d54777d3b6901a69cebe98eb5b0bde4c6c3d6ab1447b9c76a1b7c86069d`  
		Last Modified: Tue, 10 Oct 2017 00:03:17 GMT  
		Size: 63.8 MB (63794787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4780c6a3912aa6ac660ed0fc0c12bba611f9ef448dfa9a5ba381e9f64e6c5e9`  
		Last Modified: Tue, 10 Oct 2017 00:02:59 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:224c675fe60ffe21f5e388c08b8130eb147362bcd95ea555893a40cbbc60f622`  
		Last Modified: Tue, 10 Oct 2017 00:04:25 GMT  
		Size: 12.5 MB (12500989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdcf12c5dfd4e150991fd25ca158e3c5488e759eaab68eb2fdce4327ad6474d`  
		Last Modified: Tue, 10 Oct 2017 00:04:23 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5869974e8f61dfe2f006496d8ee98f5f6e679c4e6d5a0bba66c02725d88783`  
		Last Modified: Tue, 10 Oct 2017 00:04:26 GMT  
		Size: 11.9 MB (11885943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a71a456ebfedce1406ff3d0ee05a02f9fe6d9283726375ebadabf71095c446a`  
		Last Modified: Tue, 10 Oct 2017 00:04:23 GMT  
		Size: 2.2 KB (2172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb3b3dca72f9bc592f8d78f96cc18bf31663326029c472f5b491a2fbdde2418`  
		Last Modified: Tue, 10 Oct 2017 00:04:23 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cada8c03b5e43600c6c9a3b1b5b3d450c8c7b390f3d15fb75b1609107e984acd`  
		Last Modified: Tue, 10 Oct 2017 00:04:22 GMT  
		Size: 7.7 KB (7680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce77a045ca756f5204e4caac5a22cdec58387ae9f420b4346ecfc5b84290fc6`  
		Last Modified: Tue, 10 Oct 2017 02:01:24 GMT  
		Size: 1.9 MB (1915428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5a8b0bc5bec9d0b37d4a4a47934743c9d116ee117034826ad2167622e1e50f`  
		Last Modified: Tue, 10 Oct 2017 02:01:23 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b708efc2cc7746ff49fe42d1ce7761853be9be5c07c409496228ba89e990d31`  
		Last Modified: Tue, 10 Oct 2017 02:01:31 GMT  
		Size: 13.5 MB (13539158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `drupal:8-fpm` - linux; arm64 variant v8

```console
$ docker pull drupal@sha256:ce634854ab155c54b4b3851d25a454eafdfdd8f4a266a5cfe4f76df15ffdfd25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.5 MB (155486858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2effdd754a5984cbb9d8d2acdf54d6cfe9447afc20f83884a65da93d919ffcf3`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 03:01:07 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Tue, 10 Oct 2017 03:02:43 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:02:45 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 10 Oct 2017 03:02:47 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 10 Oct 2017 03:19:11 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 10 Oct 2017 03:19:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 03:19:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 03:19:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 10 Oct 2017 03:19:13 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 31 Oct 2017 02:13:03 GMT
ENV PHP_VERSION=7.1.11
# Tue, 31 Oct 2017 02:13:04 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.11.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.11.tar.xz.asc/from/this/mirror
# Tue, 31 Oct 2017 02:13:04 GMT
ENV PHP_SHA256=074093e9d7d21afedc5106904218a80a47b854abe368d2728ed22184c884893e PHP_MD5=
# Tue, 31 Oct 2017 02:13:36 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 31 Oct 2017 02:13:37 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 31 Oct 2017 02:20:21 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 31 Oct 2017 02:20:22 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Tue, 31 Oct 2017 02:20:23 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 31 Oct 2017 02:20:23 GMT
WORKDIR /var/www/html
# Tue, 31 Oct 2017 02:20:25 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 31 Oct 2017 02:20:25 GMT
EXPOSE 9000/tcp
# Tue, 31 Oct 2017 02:20:26 GMT
CMD ["php-fpm"]
# Tue, 31 Oct 2017 03:58:34 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 31 Oct 2017 03:58:36 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 31 Oct 2017 03:58:37 GMT
WORKDIR /var/www/html
# Tue, 31 Oct 2017 03:58:38 GMT
ENV DRUPAL_VERSION=8.4.0
# Tue, 31 Oct 2017 03:58:38 GMT
ENV DRUPAL_MD5=074795a2f5fc0b599a7dcfb9d1fb03f5
# Tue, 31 Oct 2017 03:58:51 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566f7722328920229649e457c4c3f2ac00fbc51bf18e43b7e857a4bb929b14d3`  
		Last Modified: Tue, 10 Oct 2017 04:44:17 GMT  
		Size: 64.6 MB (64612700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336490976ea28a6a8a9bb6f3a9127ff718ef2f6b0ae5d00edc65504b2d61d00f`  
		Last Modified: Tue, 10 Oct 2017 04:43:16 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40fc527750d0c274efe79909600138d30c9ff256c9aa918f6517bddc009dc29e`  
		Last Modified: Tue, 31 Oct 2017 03:02:41 GMT  
		Size: 12.5 MB (12504541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d69e4436c18f597ee12c6ac37f6d34f88cf4dd9024b7917400b0642f7911d354`  
		Last Modified: Tue, 31 Oct 2017 03:02:37 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63250cb7893b6adea3b0a8ae6215c25ba725b87c9f11f32449190fc713fdfa20`  
		Last Modified: Tue, 31 Oct 2017 03:02:41 GMT  
		Size: 12.9 MB (12921929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7977dbffc5eec63f43be1c14d83880f93a1c77857981ff9b6cd93124a04676`  
		Last Modified: Tue, 31 Oct 2017 03:02:36 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88c091714991567bcbc17445fcfb199c322d92869f28223e59d10e95eb9c863a`  
		Last Modified: Tue, 31 Oct 2017 03:02:36 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f296872c14308249a5ed51ce33c7a870c7c10ba6003edb848e09d7cbc3dc7fa2`  
		Last Modified: Tue, 31 Oct 2017 03:02:36 GMT  
		Size: 7.7 KB (7684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f5fb41166dbd836ab57ef3ecc0a9c1889a4d04796605ad9c74e8250a464168`  
		Last Modified: Tue, 31 Oct 2017 04:02:39 GMT  
		Size: 2.0 MB (1968380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4c51a77100afa929cb090e139b258aaecf823d4254b8319e16dc8b0efaeb9f`  
		Last Modified: Tue, 31 Oct 2017 04:02:40 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5cf4996cea016a333b319de4709255b2290c20ce26773eb14de958f1e0f25d2`  
		Last Modified: Tue, 31 Oct 2017 04:02:47 GMT  
		Size: 13.5 MB (13538972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `drupal:8-fpm` - linux; 386

```console
$ docker pull drupal@sha256:1d11141e35d170b3d0dec06926cff0241c729842c9b7abaab6a2bbebe4c04f7b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178578043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b1121745b4b60e68071ec0c8920db52be638ebb81e43b661bbcbafb21051de6`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:46:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Tue, 10 Oct 2017 00:47:26 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:47:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 10 Oct 2017 00:48:10 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 10 Oct 2017 01:03:42 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 10 Oct 2017 01:03:42 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 01:03:42 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 01:03:43 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 10 Oct 2017 01:03:43 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 10 Oct 2017 01:03:43 GMT
ENV PHP_VERSION=7.1.10
# Tue, 10 Oct 2017 01:03:43 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.10.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.10.tar.xz.asc/from/this/mirror
# Tue, 10 Oct 2017 01:03:43 GMT
ENV PHP_SHA256=2b8efa771a2ead0bb3ae67b530ca505b5b286adc873cca9ce97a6e1d6815c50b PHP_MD5=
# Tue, 10 Oct 2017 01:04:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 10 Oct 2017 01:04:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 10 Oct 2017 01:09:19 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 10 Oct 2017 01:11:07 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Tue, 10 Oct 2017 01:11:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 10 Oct 2017 01:11:07 GMT
WORKDIR /var/www/html
# Tue, 10 Oct 2017 01:11:07 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 10 Oct 2017 01:11:08 GMT
EXPOSE 9000/tcp
# Tue, 10 Oct 2017 01:11:08 GMT
CMD ["php-fpm"]
# Tue, 10 Oct 2017 05:35:35 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 05:39:04 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 10 Oct 2017 05:39:04 GMT
WORKDIR /var/www/html
# Tue, 10 Oct 2017 05:39:04 GMT
ENV DRUPAL_VERSION=8.4.0
# Tue, 10 Oct 2017 05:39:04 GMT
ENV DRUPAL_MD5=074795a2f5fc0b599a7dcfb9d1fb03f5
# Tue, 10 Oct 2017 05:39:09 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671377a40e7b26497e7f12a7eac26f6af150ea739eebde2bbba9d79637b86551`  
		Last Modified: Tue, 10 Oct 2017 02:12:39 GMT  
		Size: 83.9 MB (83886879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f42450014c192b9a7782838f21339b652510d23b58558735a45cb0c723651b`  
		Last Modified: Tue, 10 Oct 2017 02:12:21 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207834def6a6ed8c5cfda352def7f9c5e400cbd9151bbbd39a935635457ed8ba`  
		Last Modified: Tue, 10 Oct 2017 02:14:12 GMT  
		Size: 12.5 MB (12502231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d534bccac35f48f55b2cfd52b83b31aad4fc5f9237f6553517f32f625cb0e602`  
		Last Modified: Tue, 10 Oct 2017 02:14:11 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c93c7e14d8b05cfe455320556935afae5caad395158d8a0c27e735b98f6d349`  
		Last Modified: Tue, 10 Oct 2017 02:14:14 GMT  
		Size: 13.7 MB (13715389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:200db56fdcea5c91d8210e42ce94a1f2e3295f41077a3cbe33fdcb4a5fb6e9e3`  
		Last Modified: Tue, 10 Oct 2017 02:14:11 GMT  
		Size: 2.2 KB (2170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f748da86490474759ee08f65965175b311d7f0c514b8ebe154792a1930bc622`  
		Last Modified: Tue, 10 Oct 2017 02:14:10 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a26997664df97512c6298f886abf50ea6fbd0f6c08164fe6bbf9d100c9e6a46`  
		Last Modified: Tue, 10 Oct 2017 02:14:11 GMT  
		Size: 7.7 KB (7683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee3840845bdc095eefa40ddbc558b3d130586a4e476da663c31399c37392a1d`  
		Last Modified: Tue, 10 Oct 2017 05:55:23 GMT  
		Size: 2.1 MB (2149707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:800f6f3b98bf8705ea21c47e3155bd3f75b370eaafe47ed3329de943356821b4`  
		Last Modified: Tue, 10 Oct 2017 05:55:22 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d52485d3d3138b1361f88d7b2f40b814f4dce7f7c4e3a54fa62a740c49d7b2a`  
		Last Modified: Tue, 10 Oct 2017 05:55:35 GMT  
		Size: 13.5 MB (13538972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `drupal:8-fpm` - linux; ppc64le

```console
$ docker pull drupal@sha256:ecc675cb4ab3afe831cd581b4bd69bbfa32ed1df8644790faa84a18db1173c40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.1 MB (163115365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81d551e4ab498eb9ad64c87f5c05b2c544f7255d713e691853e4a544c318587b`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 04:59:32 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Tue, 10 Oct 2017 05:07:27 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:07:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 10 Oct 2017 05:07:38 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 10 Oct 2017 05:24:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Tue, 10 Oct 2017 05:24:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 05:24:25 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 05:24:28 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 10 Oct 2017 05:24:31 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Tue, 10 Oct 2017 05:24:33 GMT
ENV PHP_VERSION=7.1.10
# Tue, 10 Oct 2017 05:24:36 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.10.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.10.tar.xz.asc/from/this/mirror
# Tue, 10 Oct 2017 05:24:38 GMT
ENV PHP_SHA256=2b8efa771a2ead0bb3ae67b530ca505b5b286adc873cca9ce97a6e1d6815c50b PHP_MD5=
# Tue, 10 Oct 2017 05:25:32 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 10 Oct 2017 05:25:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 10 Oct 2017 05:30:41 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 10 Oct 2017 05:30:44 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Tue, 10 Oct 2017 05:30:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 10 Oct 2017 05:30:50 GMT
WORKDIR /var/www/html
# Tue, 10 Oct 2017 05:30:57 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 10 Oct 2017 05:31:00 GMT
EXPOSE 9000/tcp
# Tue, 10 Oct 2017 05:31:03 GMT
CMD ["php-fpm"]
# Tue, 10 Oct 2017 09:37:20 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 09:37:26 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 10 Oct 2017 09:37:29 GMT
WORKDIR /var/www/html
# Tue, 10 Oct 2017 09:37:33 GMT
ENV DRUPAL_VERSION=8.4.0
# Tue, 10 Oct 2017 09:37:38 GMT
ENV DRUPAL_MD5=074795a2f5fc0b599a7dcfb9d1fb03f5
# Tue, 10 Oct 2017 09:37:57 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc41d033d2921cba8c3fbd24aa09d8a180381ce21a996f56c5ba1b970a55b798`  
		Last Modified: Tue, 10 Oct 2017 06:45:18 GMT  
		Size: 70.0 MB (69979791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f923c00547c865a7523f58e49ceccbf4f04b88dc10b5cd3ee23729727731c2`  
		Last Modified: Tue, 10 Oct 2017 06:42:59 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf7654e97acb0d480e2471b4e5454f49cf199466880fa506591cb0e3611fdaa7`  
		Last Modified: Tue, 10 Oct 2017 06:46:37 GMT  
		Size: 12.5 MB (12501404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11b07566fe0ecd165ba3f6fbf83c1e1b7e3cbc006c1196ed1bdc6aface16913`  
		Last Modified: Tue, 10 Oct 2017 06:46:33 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ec41f07661898edd9f9ead489a2cc426acddf7ca0a0cf67a347e92e2954ed3c`  
		Last Modified: Tue, 10 Oct 2017 06:46:36 GMT  
		Size: 13.2 MB (13200554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81dcca86d4ac826b27ff07df74769ba13ed6502f4b69fe37423a1b150631c10`  
		Last Modified: Tue, 10 Oct 2017 06:46:32 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65a467c8f17a40bdd1d4c6b1e6dfe2770876cccb4fd16ca65a7bfbca9560f3c`  
		Last Modified: Tue, 10 Oct 2017 06:46:32 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d7dc7d9e6b532d9a37f41f2554c084d2fdc9e0de4714345f15e4b4613814ca`  
		Last Modified: Tue, 10 Oct 2017 06:46:32 GMT  
		Size: 7.7 KB (7681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a10d7c2b4f7ee9929410211833442a97793f2cf34d07c9cda15b4151b14038`  
		Last Modified: Tue, 10 Oct 2017 09:49:12 GMT  
		Size: 2.1 MB (2073615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee0a8657db8aa4f4f7d4a7ccbe5d05f4bc6632ba4693809b0290a7c54b6fbda`  
		Last Modified: Tue, 10 Oct 2017 09:49:11 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a0372feb8fbca0c20e35fecdf530074616e937bdef72147cfdad4ef0b7fa29`  
		Last Modified: Tue, 10 Oct 2017 09:49:18 GMT  
		Size: 13.5 MB (13539180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `drupal:8-fpm` - linux; s390x

```console
$ docker pull drupal@sha256:e52bd6e04a5d9b96d486c7ac3b0297171dc9db53151e449c1bb02d371d1885a8
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.8 MB (158792816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8d5d92766773368e2ade467eaa89d08358b4fb30e22e5428fc34b3212d071da`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:55:09 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Mon, 09 Oct 2017 22:55:37 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:55:38 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 09 Oct 2017 22:55:39 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 09 Oct 2017 23:02:28 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Mon, 09 Oct 2017 23:02:28 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 09 Oct 2017 23:02:28 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 09 Oct 2017 23:02:28 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Mon, 09 Oct 2017 23:02:28 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Mon, 09 Oct 2017 23:02:30 GMT
ENV PHP_VERSION=7.1.10
# Mon, 09 Oct 2017 23:02:31 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.10.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.10.tar.xz.asc/from/this/mirror
# Mon, 09 Oct 2017 23:02:31 GMT
ENV PHP_SHA256=2b8efa771a2ead0bb3ae67b530ca505b5b286adc873cca9ce97a6e1d6815c50b PHP_MD5=
# Mon, 09 Oct 2017 23:02:48 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Mon, 09 Oct 2017 23:02:48 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 09 Oct 2017 23:06:02 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 09 Oct 2017 23:06:03 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Mon, 09 Oct 2017 23:06:03 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 09 Oct 2017 23:06:03 GMT
WORKDIR /var/www/html
# Mon, 09 Oct 2017 23:06:04 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Mon, 09 Oct 2017 23:06:04 GMT
EXPOSE 9000/tcp
# Mon, 09 Oct 2017 23:06:04 GMT
CMD ["php-fpm"]
# Tue, 10 Oct 2017 02:17:32 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 02:17:32 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 10 Oct 2017 02:17:32 GMT
WORKDIR /var/www/html
# Tue, 10 Oct 2017 02:17:33 GMT
ENV DRUPAL_VERSION=8.4.0
# Tue, 10 Oct 2017 02:17:35 GMT
ENV DRUPAL_MD5=074795a2f5fc0b599a7dcfb9d1fb03f5
# Tue, 10 Oct 2017 02:17:40 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fb66856860b5de241911f00d4159df363cf63a303d18ae7437e405aa3162e7`  
		Last Modified: Mon, 09 Oct 2017 23:36:47 GMT  
		Size: 64.0 MB (63980038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b38a4e89ae8f8496f476f2092ceb43def00c3fc728237b0f3ced18375fcc3431`  
		Last Modified: Mon, 09 Oct 2017 23:36:16 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f55889a7d8fbe417d66c472dfbd8a13459fb872e270fe90262012c3df55ca8`  
		Last Modified: Mon, 09 Oct 2017 23:37:35 GMT  
		Size: 12.5 MB (12500439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6308e60c95bbd6ab03b6787f97d3d38a70954aad4374cd3d141fed1e0953db61`  
		Last Modified: Mon, 09 Oct 2017 23:37:38 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:369c01c2bc4098c236a559b5eb32e04bf5bef1281ef66cdb3c6042819733532a`  
		Last Modified: Mon, 09 Oct 2017 23:37:35 GMT  
		Size: 13.8 MB (13837337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d751b38dde8d4dbd52feedf079b7631c69d00bc537b92438784df4d092fd5c61`  
		Last Modified: Mon, 09 Oct 2017 23:37:32 GMT  
		Size: 2.2 KB (2172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea5b1483486e1367df80e990b16bee00f7ba7b6691d45f66cd9e0f9693973da`  
		Last Modified: Mon, 09 Oct 2017 23:37:32 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eef039ea73247da788b529e99998e902440ab6a6b9cbe62e56e81e06a516818`  
		Last Modified: Mon, 09 Oct 2017 23:37:32 GMT  
		Size: 7.7 KB (7684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b633de6e75d55ba2bc8081649a659f3b0d0842f5198e69a9b0e6962b59fb93`  
		Last Modified: Tue, 10 Oct 2017 02:21:25 GMT  
		Size: 2.1 MB (2136142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814e4fcc0a5083d107738e782c93c8d240d1bb6c9a5c17a43dcc6a8bcee621b2`  
		Last Modified: Tue, 10 Oct 2017 02:21:24 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:533e9e0852866bc542a52b931fb8536cd076f92450ee5f02bc8d22be0fee18a0`  
		Last Modified: Tue, 10 Oct 2017 02:21:29 GMT  
		Size: 13.5 MB (13538972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
