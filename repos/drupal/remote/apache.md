## `drupal:apache`

```console
$ docker pull drupal@sha256:e1b2c9a3c5891835544c9bce2b4c6b1e90dcd9ec0c249a15762a6f12eca01232
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

### `drupal:apache` - linux; amd64

```console
$ docker pull drupal@sha256:4b86f5aeee2917f40cf62b8ea0df8e9ad64539f15c1b5dc37c4c7896b93c62de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.7 MB (179736124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e01f2a77c50ebd0c0b9407f686913bc2c02fde10a319276a8a402b5975393fdc`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 19 Dec 2017 20:02:28 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 19 Dec 2017 20:02:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 04 Jan 2018 02:17:45 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 04 Jan 2018 02:17:45 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 04 Jan 2018 02:17:46 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 04 Jan 2018 02:28:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 04 Jan 2018 02:28:50 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 04 Jan 2018 02:28:50 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 04 Jan 2018 02:28:51 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 04 Jan 2018 02:28:52 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 04 Jan 2018 02:28:52 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 04 Jan 2018 02:28:53 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 04 Jan 2018 02:28:53 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 04 Jan 2018 02:28:54 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 04 Jan 2018 02:28:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 04 Jan 2018 02:28:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 04 Jan 2018 02:28:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 04 Jan 2018 02:28:54 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Thu, 04 Jan 2018 02:28:55 GMT
ENV PHP_VERSION=7.1.12
# Thu, 04 Jan 2018 02:28:55 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.12.tar.xz.asc/from/this/mirror
# Thu, 04 Jan 2018 02:28:55 GMT
ENV PHP_SHA256=a0118850774571b1f2d4e30b4fe7a4b958ca66f07d07d65ebdc789c54ba6eeb3 PHP_MD5=
# Thu, 04 Jan 2018 02:29:10 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 04 Jan 2018 02:29:10 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 04 Jan 2018 02:31:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 04 Jan 2018 02:39:02 GMT
COPY multi:cb6c9a453a971f0ed6bdf30b12bc250bbe068005b3c3b084f5048cbf9787fb8d in /usr/local/bin/ 
# Thu, 04 Jan 2018 02:39:02 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 04 Jan 2018 02:39:02 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 04 Jan 2018 02:39:03 GMT
WORKDIR /var/www/html
# Thu, 04 Jan 2018 02:39:03 GMT
EXPOSE 80/tcp
# Thu, 04 Jan 2018 02:39:03 GMT
CMD ["apache2-foreground"]
# Thu, 04 Jan 2018 09:04:48 GMT
RUN a2enmod rewrite
# Thu, 04 Jan 2018 09:06:08 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 04 Jan 2018 09:06:09 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 04 Jan 2018 09:06:09 GMT
WORKDIR /var/www/html
# Thu, 04 Jan 2018 09:06:09 GMT
ENV DRUPAL_VERSION=8.4.3
# Thu, 04 Jan 2018 09:06:09 GMT
ENV DRUPAL_MD5=55a53cb43284b3d710a2742d458fc1da
# Thu, 04 Jan 2018 09:06:15 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185616061386b6fbf50284203b0bfdefaca12fc92bbb65d2f65c3d51dd942ad9`  
		Last Modified: Tue, 19 Dec 2017 21:56:59 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc132db2e0d4529b0f1ecce1b0208d1415551c378edbbf72912b2da05b161b1`  
		Last Modified: Thu, 04 Jan 2018 04:57:51 GMT  
		Size: 80.2 MB (80245843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c1c323341aeccc9c187d1704349390ffbf8437718af11841e34591ff13d47f`  
		Last Modified: Thu, 04 Jan 2018 04:57:30 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3701349211b0562574e27d711206dcd615b3797f6d77c9aa875134377b7761`  
		Last Modified: Thu, 04 Jan 2018 04:59:28 GMT  
		Size: 4.5 MB (4466468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faab1d6ad70f31babae6f7c2270dd249254e70d4c08a50256538f302ff572a81`  
		Last Modified: Thu, 04 Jan 2018 04:59:26 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae8d88d75e023a84174030212c8214aa6901e2fc3ed5ec0a28410f0d16433ba`  
		Last Modified: Thu, 04 Jan 2018 04:59:24 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fbd4c732645aa40ffe7bc27c7cd11c0788e303712f489bab7103dbedd6c8791`  
		Last Modified: Thu, 04 Jan 2018 04:59:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e59bdd1208f7a5114bfa402c99e628de65f3e48c7497bfa31e1747b10414ff`  
		Last Modified: Thu, 04 Jan 2018 04:59:24 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f95f65ba01c2537ad9d26204b2365d2253520eeda56a17c673f055283873939`  
		Last Modified: Thu, 04 Jan 2018 04:59:23 GMT  
		Size: 12.5 MB (12547739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174d8854dffa07149f08150906a08b25323981377c12e54c6dd16e09172dbb66`  
		Last Modified: Thu, 04 Jan 2018 04:59:22 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a55e9b2f1bfdbbe832bbc5ee54cb0eeda584be1e5393822bd03a47d632163bd0`  
		Last Modified: Thu, 04 Jan 2018 04:59:26 GMT  
		Size: 14.2 MB (14201688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e7ece4e3b4ec15bff6c8611a19e929e94bffcecc785b9207b627e3280d8741`  
		Last Modified: Thu, 04 Jan 2018 04:59:22 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d129fbd18ce87287f86c68e54d90e3ad3f0170022ebd77edc049aab253b65d1d`  
		Last Modified: Thu, 04 Jan 2018 04:59:22 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095e79dcba7f7ce58ba1ca9c36be4281b6934b24d31084f4a0ac795fc39a414d`  
		Last Modified: Thu, 04 Jan 2018 10:19:44 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d36ee05d0efe6cde5c78a49c97f50d66cb202ce208ab7adf7fc952c31d214be8`  
		Last Modified: Thu, 04 Jan 2018 10:19:45 GMT  
		Size: 2.1 MB (2106061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e7356e409acbef52d43d4a0d24a431dc6aaddc59ba0162701e3f29ca07d204f`  
		Last Modified: Thu, 04 Jan 2018 10:19:44 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84265456054e71f50d8e7a891ab9c2d0670914b706cff0ff8fd4a3117a819ccd`  
		Last Modified: Thu, 04 Jan 2018 10:20:01 GMT  
		Size: 13.6 MB (13561565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `drupal:apache` - linux; arm variant v5

```console
$ docker pull drupal@sha256:3cc5774709a37833cb2803eff264de0970eff1a07a58a6312cd63fbb3ba21c39
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158152916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efbc236c95e612dd348a044b8ba2b6f3f15a4638359e8315545d39d5562ea0c3`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 20:57:00 GMT
ADD file:2c2c6b8bfbbc9860c0ddd8a2ba3d769171576fc13d5d99fb50a852f6b03618d1 in / 
# Tue, 12 Dec 2017 20:57:00 GMT
CMD ["bash"]
# Wed, 20 Dec 2017 14:53:33 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 20 Dec 2017 14:53:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 20 Dec 2017 14:54:43 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 20 Dec 2017 14:54:43 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 20 Dec 2017 14:54:44 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 20 Dec 2017 14:59:32 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 20 Dec 2017 14:59:32 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 20 Dec 2017 14:59:32 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 20 Dec 2017 14:59:33 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 20 Dec 2017 14:59:34 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 20 Dec 2017 14:59:35 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 20 Dec 2017 14:59:36 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 20 Dec 2017 14:59:36 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 20 Dec 2017 14:59:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 20 Dec 2017 14:59:36 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 20 Dec 2017 14:59:36 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 20 Dec 2017 14:59:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 20 Dec 2017 14:59:37 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 20 Dec 2017 14:59:37 GMT
ENV PHP_VERSION=7.1.12
# Wed, 20 Dec 2017 14:59:37 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.12.tar.xz.asc/from/this/mirror
# Wed, 20 Dec 2017 14:59:37 GMT
ENV PHP_SHA256=a0118850774571b1f2d4e30b4fe7a4b958ca66f07d07d65ebdc789c54ba6eeb3 PHP_MD5=
# Wed, 20 Dec 2017 15:00:18 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 20 Dec 2017 15:00:18 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 20 Dec 2017 15:03:17 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 20 Dec 2017 15:03:18 GMT
COPY multi:6c3bbfbce55efcbe7075883db5f0dba98b25830060e57a35ce066c0dc58c7f0b in /usr/local/bin/ 
# Wed, 20 Dec 2017 15:03:18 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 20 Dec 2017 15:03:18 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 20 Dec 2017 15:03:19 GMT
WORKDIR /var/www/html
# Wed, 20 Dec 2017 15:03:19 GMT
EXPOSE 80/tcp
# Wed, 20 Dec 2017 15:03:19 GMT
CMD ["apache2-foreground"]
# Wed, 20 Dec 2017 16:06:59 GMT
RUN a2enmod rewrite
# Wed, 20 Dec 2017 16:08:53 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Dec 2017 16:08:54 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 20 Dec 2017 16:08:54 GMT
WORKDIR /var/www/html
# Wed, 20 Dec 2017 16:08:55 GMT
ENV DRUPAL_VERSION=8.4.3
# Wed, 20 Dec 2017 16:08:55 GMT
ENV DRUPAL_MD5=55a53cb43284b3d710a2742d458fc1da
# Wed, 20 Dec 2017 16:09:04 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:fbe67b6ec6f136174afee77eff07fd99e5764d9db2b13d0dc1189bf8203d289b`  
		Last Modified: Tue, 12 Dec 2017 21:06:47 GMT  
		Size: 50.9 MB (50882486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:940132a1efc5f029fd2e21473210940db3f7676ffdc20d10f0b84261dff9527a`  
		Last Modified: Wed, 20 Dec 2017 15:47:04 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57134c7bdb5dbc0e3200b811a384ab5c49322d05c86d04a02302d59c18c670ba`  
		Last Modified: Wed, 20 Dec 2017 15:47:22 GMT  
		Size: 62.9 MB (62945947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f685b787c17b000ae9517d904e7be35470174730049f76c0126d2a16aade647`  
		Last Modified: Wed, 20 Dec 2017 15:47:03 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91adaf07f6788a5272770053798fd5ed5d51692fbd180d69673dc3fbd006b0aa`  
		Last Modified: Wed, 20 Dec 2017 15:47:50 GMT  
		Size: 2.8 MB (2823473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfbaab59f83cd41641ab6b5f1a0858e8eac859fe0542e1730cd201db51b7b126`  
		Last Modified: Wed, 20 Dec 2017 15:47:48 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d59756555826fe11ebb9b4c82c09c0e13c2f9de5e092019f77b43db35f933bfe`  
		Last Modified: Wed, 20 Dec 2017 15:47:48 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca2b8b9cb186a73b65d54ba962e9e738291be73385a55248a6fbe908d2e2be50`  
		Last Modified: Wed, 20 Dec 2017 15:47:48 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3f913296d163fa41a4e9d62a096656acf6a84c51c197efc1c3cbc75269fece4`  
		Last Modified: Wed, 20 Dec 2017 15:47:48 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab8c54b6eafb2b0f041c8aa275bd50925203c277574967f8fde5e97c57d2b1db`  
		Last Modified: Wed, 20 Dec 2017 15:47:48 GMT  
		Size: 12.5 MB (12547160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af86b4c53543b13d071223ece5f1d2ece93221a3711fc9457ad2a67796db956`  
		Last Modified: Wed, 20 Dec 2017 15:47:46 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e427e3cd1cc626705e8378eaf1399bfb99825cc2ae16a43ba51b6865dfac090c`  
		Last Modified: Wed, 20 Dec 2017 15:47:51 GMT  
		Size: 13.4 MB (13369850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a480793dc9bafe80aafa7aaa07353623917b81cf974e4fbfbb8c1e2a98a06e97`  
		Last Modified: Wed, 20 Dec 2017 15:47:46 GMT  
		Size: 2.2 KB (2189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88ec54980c35aff72d7d2e99ad03ba0049606eed6ecdec7d04a49eb9982b831`  
		Last Modified: Wed, 20 Dec 2017 15:47:47 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2691e8b5dd342d55982eff0366bc496acb7cc1846802091580e445d693ad55f5`  
		Last Modified: Wed, 20 Dec 2017 16:15:46 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb6e1de5d2056d12f60a577dea9bce82c651aa79a69815b80abc03a9fb368f36`  
		Last Modified: Wed, 20 Dec 2017 16:15:47 GMT  
		Size: 2.0 MB (2015187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed37d8c7b47b10033c43e47f3643fc4fc31f9e6ec9d873d99b8134062351d60`  
		Last Modified: Wed, 20 Dec 2017 16:15:47 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d5ddf547f06d78d539ae3f2b652ca7a112c88fcd41c82d29f81f34136a1ee92`  
		Last Modified: Wed, 20 Dec 2017 16:15:54 GMT  
		Size: 13.6 MB (13561625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `drupal:apache` - linux; arm variant v7

```console
$ docker pull drupal@sha256:9169f5f2cdcfcf49b5651c676463e8efee07465415dd342ac8d5c426ded8e111
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.3 MB (155301354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5699a7b94337c36473f21033b1158680084775ae9d57b7088e6d5d44257b1364`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:05 GMT
ADD file:aeb57f3a84dc1b93e1d38a80409a407df553344149d5070ed79b656865c90c54 in / 
# Tue, 12 Dec 2017 13:27:06 GMT
CMD ["bash"]
# Wed, 20 Dec 2017 13:02:52 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 20 Dec 2017 13:02:52 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 20 Dec 2017 13:03:44 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 20 Dec 2017 13:03:45 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 20 Dec 2017 13:03:46 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 20 Dec 2017 13:08:14 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 20 Dec 2017 13:08:14 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 20 Dec 2017 13:08:15 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 20 Dec 2017 13:08:15 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 20 Dec 2017 13:08:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 20 Dec 2017 13:08:17 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 20 Dec 2017 13:08:18 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 20 Dec 2017 13:08:18 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 20 Dec 2017 13:08:19 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 20 Dec 2017 13:08:19 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 20 Dec 2017 13:08:19 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 20 Dec 2017 13:08:19 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 20 Dec 2017 13:08:19 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Wed, 20 Dec 2017 13:08:20 GMT
ENV PHP_VERSION=7.1.12
# Wed, 20 Dec 2017 13:08:20 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.12.tar.xz.asc/from/this/mirror
# Wed, 20 Dec 2017 13:08:20 GMT
ENV PHP_SHA256=a0118850774571b1f2d4e30b4fe7a4b958ca66f07d07d65ebdc789c54ba6eeb3 PHP_MD5=
# Wed, 20 Dec 2017 13:08:58 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 20 Dec 2017 13:08:58 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 20 Dec 2017 13:11:38 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 20 Dec 2017 13:11:39 GMT
COPY multi:6c3bbfbce55efcbe7075883db5f0dba98b25830060e57a35ce066c0dc58c7f0b in /usr/local/bin/ 
# Wed, 20 Dec 2017 13:11:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 20 Dec 2017 13:11:40 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 20 Dec 2017 13:11:40 GMT
WORKDIR /var/www/html
# Wed, 20 Dec 2017 13:11:40 GMT
EXPOSE 80/tcp
# Wed, 20 Dec 2017 13:11:40 GMT
CMD ["apache2-foreground"]
# Wed, 20 Dec 2017 14:31:03 GMT
RUN a2enmod rewrite
# Wed, 20 Dec 2017 14:32:41 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 20 Dec 2017 14:32:43 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 20 Dec 2017 14:32:43 GMT
WORKDIR /var/www/html
# Wed, 20 Dec 2017 14:32:46 GMT
ENV DRUPAL_VERSION=8.4.3
# Wed, 20 Dec 2017 14:32:48 GMT
ENV DRUPAL_MD5=55a53cb43284b3d710a2742d458fc1da
# Wed, 20 Dec 2017 14:32:59 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:95e140a16c792899abc97cadee0138064dd21346fe51aa332ca4cbbd5563383c`  
		Last Modified: Tue, 12 Dec 2017 13:38:47 GMT  
		Size: 48.7 MB (48691755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6b8e9a5cea34996ae971f312ad63b45e810b0446880a52e081ced2cbfa88b9`  
		Last Modified: Wed, 20 Dec 2017 13:52:32 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9415ce977e1a1470eec8e791c8d016c3117a74ee619f12c45c8777b0299cb320`  
		Last Modified: Wed, 20 Dec 2017 13:52:50 GMT  
		Size: 63.2 MB (63225230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfbbfb6115657b91001e1408aefb1edd29d694f89af9da1efdd69b2f0b3a4743`  
		Last Modified: Wed, 20 Dec 2017 13:52:32 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c9c3365ec24a28562eb9e39bed14d46db6ad69e74a5bf37ce324639b1107f9`  
		Last Modified: Wed, 20 Dec 2017 13:53:19 GMT  
		Size: 2.7 MB (2678645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bb2e56e243fab2f27d97b3c6bdb41c6bb32aaa931a8d4cb8fabfd554c30bd29`  
		Last Modified: Wed, 20 Dec 2017 13:53:18 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c98bd8188e81687645a85907dd5d87e4cf09adc5c4802de0024031a4b566fed`  
		Last Modified: Wed, 20 Dec 2017 13:53:17 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9395dd7d03bc8bb761e85e676a6a23b2a935ebae884bf6e7b4add27f23057528`  
		Last Modified: Wed, 20 Dec 2017 13:53:17 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b813caccaff7d77936b1bf27750a36057f2f1757d72da54b0d3f4686d1f9e9fc`  
		Last Modified: Wed, 20 Dec 2017 13:53:17 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd14bb2f074bd55daf06090895396f85f068bfb1d6c4bd7462b4091d607140c`  
		Last Modified: Wed, 20 Dec 2017 13:53:18 GMT  
		Size: 12.5 MB (12547123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216bb180e409bb67d6afce72960971a337107c25e19c402c1833ef08bdef0e08`  
		Last Modified: Wed, 20 Dec 2017 13:53:16 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57bdd11ba234e0b76f1bbcaa97a575b83d6223669fc96060e6eef50618dadf0b`  
		Last Modified: Wed, 20 Dec 2017 13:53:20 GMT  
		Size: 12.7 MB (12654793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2146ca02864875377f18b486049c6572946cf5fef1a7bd126920e53560b63d34`  
		Last Modified: Wed, 20 Dec 2017 13:53:16 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f166bc8f95bdda57e575f0c9171a24584344485647019cb9b33b0700b9a72707`  
		Last Modified: Wed, 20 Dec 2017 13:53:16 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1898f2f1d150e28cbf6f542a0dbbd4b71dce385b8b9e711d4dc53fbc8d50b833`  
		Last Modified: Wed, 20 Dec 2017 14:39:27 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d7f9076abaa4e5b54465bb7e06d528114bc8c56e1c071cb021f468c255a33d5`  
		Last Modified: Wed, 20 Dec 2017 14:39:28 GMT  
		Size: 1.9 MB (1934985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5fd66df8e95e77b7945eec4fcc78ae9e19f238ce465c46d4e86ac7e90d5bb4`  
		Last Modified: Wed, 20 Dec 2017 14:39:27 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7707951878c12f63888534cc672f9edda2bc80ce88bac827fff3969254b0c839`  
		Last Modified: Wed, 20 Dec 2017 14:39:36 GMT  
		Size: 13.6 MB (13561628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `drupal:apache` - linux; arm64 variant v8

```console
$ docker pull drupal@sha256:68aa958c47556280cbab37597b7392e1a7b189512e2ef86fe397b08ee7cc8537
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.0 MB (157984730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:615f7e9b219ef895a9ecc0839750928b6ee4264f3dcf5b97e569b698c020342c`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Wed, 20 Dec 2017 03:34:00 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 20 Dec 2017 03:34:01 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 04 Jan 2018 03:35:42 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 04 Jan 2018 03:35:43 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 04 Jan 2018 03:35:44 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 04 Jan 2018 03:44:20 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 04 Jan 2018 03:44:21 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 04 Jan 2018 03:44:21 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 04 Jan 2018 03:44:23 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 04 Jan 2018 03:44:25 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 04 Jan 2018 03:44:26 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 04 Jan 2018 03:44:31 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 04 Jan 2018 03:44:31 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 04 Jan 2018 03:44:32 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 04 Jan 2018 03:44:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 04 Jan 2018 03:44:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 04 Jan 2018 03:44:34 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 04 Jan 2018 03:44:35 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Thu, 04 Jan 2018 03:44:36 GMT
ENV PHP_VERSION=7.1.12
# Thu, 04 Jan 2018 03:44:36 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.12.tar.xz.asc/from/this/mirror
# Thu, 04 Jan 2018 03:44:37 GMT
ENV PHP_SHA256=a0118850774571b1f2d4e30b4fe7a4b958ca66f07d07d65ebdc789c54ba6eeb3 PHP_MD5=
# Thu, 04 Jan 2018 03:45:10 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 04 Jan 2018 03:45:11 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 04 Jan 2018 03:50:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 04 Jan 2018 03:50:24 GMT
COPY multi:cb6c9a453a971f0ed6bdf30b12bc250bbe068005b3c3b084f5048cbf9787fb8d in /usr/local/bin/ 
# Thu, 04 Jan 2018 03:50:24 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 04 Jan 2018 03:50:25 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 04 Jan 2018 03:50:26 GMT
WORKDIR /var/www/html
# Thu, 04 Jan 2018 03:50:27 GMT
EXPOSE 80/tcp
# Thu, 04 Jan 2018 03:50:27 GMT
CMD ["apache2-foreground"]
# Thu, 04 Jan 2018 06:26:14 GMT
RUN a2enmod rewrite
# Thu, 04 Jan 2018 06:28:57 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 04 Jan 2018 06:28:58 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 04 Jan 2018 06:28:59 GMT
WORKDIR /var/www/html
# Thu, 04 Jan 2018 06:29:06 GMT
ENV DRUPAL_VERSION=8.4.3
# Thu, 04 Jan 2018 06:29:06 GMT
ENV DRUPAL_MD5=55a53cb43284b3d710a2742d458fc1da
# Thu, 04 Jan 2018 06:29:18 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c8ee9610c809e6d2cfa5b61b3a45f6eb4705cf6c0eceabe5e8d63f713dfa2b3`  
		Last Modified: Wed, 20 Dec 2017 05:12:16 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e012cccb8aaf979c4f41c3c82588ed8c2a189ff2596f0baf0720141fd77ed39b`  
		Last Modified: Thu, 04 Jan 2018 05:18:21 GMT  
		Size: 62.5 MB (62543804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8046c037fcf61f0fb100a40e965687d3961e99d8974c11b059f64d34b4d504de`  
		Last Modified: Thu, 04 Jan 2018 05:17:57 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e1b629fa9abd1e98d4898cf59a6b052f3840c66040295b295021db1f5644f6`  
		Last Modified: Thu, 04 Jan 2018 05:19:29 GMT  
		Size: 4.1 MB (4124290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9cc9e9e484dfb7f8198f79f8c13d04ccb998e44ea3454f35711ec1097a4596f`  
		Last Modified: Thu, 04 Jan 2018 05:19:30 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dedd5c448cdf9038fff6f55fcc5ed17f2d0c3f6470dc14e182ce74a288b7cce`  
		Last Modified: Thu, 04 Jan 2018 05:19:27 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35045dcc734b45bf8b12aa8e3e24b383b0c64c9b557d34e0ddc54e58fabf2b03`  
		Last Modified: Thu, 04 Jan 2018 05:19:27 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e4b70b5d14425c120198b6fce12d03f6a70357909b5ddbc83a4799a6016f8a`  
		Last Modified: Thu, 04 Jan 2018 05:19:26 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b0136a44f7ae811d86a441f8f2b597a9158d2f616a6e2b9206603c39b92118f`  
		Last Modified: Thu, 04 Jan 2018 05:19:27 GMT  
		Size: 12.5 MB (12545805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4663049a461fb639509f29e9f09de4fb72f10d0219157fcc9146ba27009abfce`  
		Last Modified: Thu, 04 Jan 2018 05:19:24 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4395101d93c95a0fabab09a2d4072c26274a6ecba944cc99489a002d1e9f8e1e`  
		Last Modified: Thu, 04 Jan 2018 05:19:29 GMT  
		Size: 13.3 MB (13288253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1912719e45481bb9241f38ef06c704ae7a96d16644b8abb0d1dfb6089805f543`  
		Last Modified: Thu, 04 Jan 2018 05:19:24 GMT  
		Size: 2.2 KB (2192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff2e2010eda60ff29ebbea1e90cb1d7f518c5be164bac079f496b01b6d498bc`  
		Last Modified: Thu, 04 Jan 2018 05:19:25 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f441b6fd228427ee35cd5fb1ea2f9ca8fbd948739eb8e3f96ab5c7cf6836baa9`  
		Last Modified: Thu, 04 Jan 2018 06:38:33 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c331e06136ff96ea5b7862462d3e28337e9e5cee3eef40e30e55bab3d348e99`  
		Last Modified: Thu, 04 Jan 2018 06:38:33 GMT  
		Size: 2.0 MB (1987274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc25c986bd61ef9fe671b0bb8348db9cf145795fcc88a9f458b873c9b4df684d`  
		Last Modified: Thu, 04 Jan 2018 06:38:32 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc82cbf70ed6dc275cce586f6b8fcdd7d8be2959953768b37b8ccb42dc51876e`  
		Last Modified: Thu, 04 Jan 2018 06:38:41 GMT  
		Size: 13.6 MB (13561563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `drupal:apache` - linux; 386

```console
$ docker pull drupal@sha256:cc9087aab942fbf97b481251ea11a1477144d60c3f11c167f514c7f507c0e0db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.9 MB (181934791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc1df361877b14da639c9278e7030fcb8fc915b2456be0685854eaf48df62010`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Wed, 20 Dec 2017 09:54:02 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 20 Dec 2017 09:54:03 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 21 Dec 2017 10:43:47 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 21 Dec 2017 10:43:48 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 21 Dec 2017 10:43:48 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 21 Dec 2017 10:56:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 10:56:35 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 21 Dec 2017 10:56:36 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 21 Dec 2017 10:56:37 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 21 Dec 2017 10:56:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 21 Dec 2017 10:56:47 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 21 Dec 2017 10:56:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 21 Dec 2017 10:56:56 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 21 Dec 2017 10:57:06 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 21 Dec 2017 10:57:06 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 21 Dec 2017 10:57:07 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 21 Dec 2017 10:57:07 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 21 Dec 2017 10:57:07 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Thu, 21 Dec 2017 10:57:16 GMT
ENV PHP_VERSION=7.1.12
# Thu, 21 Dec 2017 10:57:16 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.12.tar.xz.asc/from/this/mirror
# Thu, 21 Dec 2017 10:57:17 GMT
ENV PHP_SHA256=a0118850774571b1f2d4e30b4fe7a4b958ca66f07d07d65ebdc789c54ba6eeb3 PHP_MD5=
# Thu, 21 Dec 2017 10:57:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 21 Dec 2017 10:57:55 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 21 Dec 2017 11:01:20 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Dec 2017 11:01:20 GMT
COPY multi:6c3bbfbce55efcbe7075883db5f0dba98b25830060e57a35ce066c0dc58c7f0b in /usr/local/bin/ 
# Thu, 21 Dec 2017 11:01:21 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Dec 2017 11:01:21 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 21 Dec 2017 11:01:21 GMT
WORKDIR /var/www/html
# Thu, 21 Dec 2017 11:01:22 GMT
EXPOSE 80/tcp
# Thu, 21 Dec 2017 11:01:22 GMT
CMD ["apache2-foreground"]
# Thu, 21 Dec 2017 15:52:44 GMT
RUN a2enmod rewrite
# Thu, 21 Dec 2017 15:54:46 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 21 Dec 2017 15:54:47 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 21 Dec 2017 15:54:47 GMT
WORKDIR /var/www/html
# Thu, 21 Dec 2017 15:54:47 GMT
ENV DRUPAL_VERSION=8.4.3
# Thu, 21 Dec 2017 15:54:47 GMT
ENV DRUPAL_MD5=55a53cb43284b3d710a2742d458fc1da
# Thu, 21 Dec 2017 15:54:54 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e78f833def8147f02d3b46ee9fa9bd4b7dc76472e6f78b04a44c617456a787`  
		Last Modified: Thu, 21 Dec 2017 13:06:53 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4492fe6baf12c1cb53325627eaecfad1d72eaa6eabae4d45daf393ff5463e8ee`  
		Last Modified: Thu, 21 Dec 2017 13:07:15 GMT  
		Size: 83.3 MB (83274659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f36bcbab0b68548acbc5635e3887aa5bc6eeeb8664ec759c12417f581cd52a5`  
		Last Modified: Thu, 21 Dec 2017 13:06:53 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03b2ee548003eac1d47df39e15cfb24651f344deb85c159e66222c7f5ba4e36`  
		Last Modified: Thu, 21 Dec 2017 13:08:52 GMT  
		Size: 3.1 MB (3118040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1daa02e1743f3d20bd5796398ff7fd90955d797c7a32668f665676ef741f215b`  
		Last Modified: Thu, 21 Dec 2017 13:08:50 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2f104b47b954969e72405ff2236646e18b650b7d772f32b86649b8a6982bfe`  
		Last Modified: Thu, 21 Dec 2017 13:08:50 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd92c3a23771e713bf5fde6d3c3ad27f5d12fedd48146d6a99e9c5ef78fd2df`  
		Last Modified: Thu, 21 Dec 2017 13:08:50 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da86f922de96215d450fda99360f66ae3b294ae0b8ebed7c982cff172b5d08e`  
		Last Modified: Thu, 21 Dec 2017 13:08:50 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb0c6d14df02853b11d4e4851875458f05df78b69dd84bf04d00b14ec160c70`  
		Last Modified: Thu, 21 Dec 2017 13:08:52 GMT  
		Size: 12.5 MB (12548124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a3baa2c6a41e6f54be4c0d2d925da799f8f02584c9e4a4e965559c68bf5a98`  
		Last Modified: Thu, 21 Dec 2017 13:08:50 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9759ea6afb0c92a48dcd0b788ea06e238c91246ec0b57e627cc06e189f629d`  
		Last Modified: Thu, 21 Dec 2017 13:08:55 GMT  
		Size: 14.5 MB (14479263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a0569fe05135709b9cabc89dfd33570dcfeedab1fabeb80efc78b554ef5f115`  
		Last Modified: Thu, 21 Dec 2017 13:08:50 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d827c58d0cb367cf0fe38c51a769f3de4a8db149614913d7572c249d81b3984`  
		Last Modified: Thu, 21 Dec 2017 13:08:50 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:584e41bca5d1616d75a9df5a175fc1406a8e8bc964c7a947b2c5e5d251558990`  
		Last Modified: Thu, 21 Dec 2017 16:47:11 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d2ce137a5de30b37e83ad9c3ca46056b2aaec7b56ddbe974694f34a3861f761`  
		Last Modified: Thu, 21 Dec 2017 16:47:14 GMT  
		Size: 2.2 MB (2168701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a234ee04df48d2b7b748c2b39b275b1f341ef633d628a37a5dc98c9a846508cc`  
		Last Modified: Thu, 21 Dec 2017 16:47:12 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da807816c628ac9b28debab96434f9a39f919460b7c903aabc12afc2ed4b776b`  
		Last Modified: Thu, 21 Dec 2017 16:47:27 GMT  
		Size: 13.6 MB (13561565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `drupal:apache` - linux; ppc64le

```console
$ docker pull drupal@sha256:f7675b103e7b322f65eca5a48285a0859505c076cf81d9a124d15af3c55cb7f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.3 MB (166324753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd9299f60d8496e7fbbd4601fbfe659f4ce1ae07d099cb4487e27ab66ecff236`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Wed, 20 Dec 2017 10:17:49 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 20 Dec 2017 10:17:50 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 04 Jan 2018 10:24:24 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 04 Jan 2018 10:24:25 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 04 Jan 2018 10:24:30 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 04 Jan 2018 10:31:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 04 Jan 2018 10:31:01 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 04 Jan 2018 10:31:05 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 04 Jan 2018 10:31:15 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 04 Jan 2018 10:31:23 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 04 Jan 2018 10:31:31 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 04 Jan 2018 10:31:40 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 04 Jan 2018 10:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 04 Jan 2018 10:31:47 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 04 Jan 2018 10:31:49 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 04 Jan 2018 10:31:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 04 Jan 2018 10:31:52 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 04 Jan 2018 10:31:55 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Thu, 04 Jan 2018 10:31:58 GMT
ENV PHP_VERSION=7.1.12
# Thu, 04 Jan 2018 10:32:03 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.12.tar.xz.asc/from/this/mirror
# Thu, 04 Jan 2018 10:32:04 GMT
ENV PHP_SHA256=a0118850774571b1f2d4e30b4fe7a4b958ca66f07d07d65ebdc789c54ba6eeb3 PHP_MD5=
# Thu, 04 Jan 2018 10:32:41 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 04 Jan 2018 10:32:42 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 04 Jan 2018 10:36:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 04 Jan 2018 10:36:33 GMT
COPY multi:cb6c9a453a971f0ed6bdf30b12bc250bbe068005b3c3b084f5048cbf9787fb8d in /usr/local/bin/ 
# Thu, 04 Jan 2018 10:36:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 04 Jan 2018 10:36:35 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 04 Jan 2018 10:36:36 GMT
WORKDIR /var/www/html
# Thu, 04 Jan 2018 10:36:37 GMT
EXPOSE 80/tcp
# Thu, 04 Jan 2018 10:36:38 GMT
CMD ["apache2-foreground"]
# Thu, 04 Jan 2018 11:56:56 GMT
RUN a2enmod rewrite
# Thu, 04 Jan 2018 11:59:51 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 04 Jan 2018 11:59:55 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 04 Jan 2018 11:59:56 GMT
WORKDIR /var/www/html
# Thu, 04 Jan 2018 11:59:58 GMT
ENV DRUPAL_VERSION=8.4.3
# Thu, 04 Jan 2018 11:59:59 GMT
ENV DRUPAL_MD5=55a53cb43284b3d710a2742d458fc1da
# Thu, 04 Jan 2018 12:00:13 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8bfe49b2829dba0fc576421805ceaeed1e1067c0f07d3052f0a36ade1e7a3e8`  
		Last Modified: Wed, 20 Dec 2017 11:27:45 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4b841e0c81a4deae0ce70ceb87edca011c7f94cef5a28df34a4bc79d781b27`  
		Last Modified: Thu, 04 Jan 2018 11:33:42 GMT  
		Size: 67.9 MB (67864808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e94de055a6a25f5d96e3d6ceeb45cd49cda1dcb52f2ba2300553431f08c6061`  
		Last Modified: Thu, 04 Jan 2018 11:33:23 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37e6db937d3933c2a7d525cbe30a04a17b02765c35950c8cc4abd671be7181dd`  
		Last Modified: Thu, 04 Jan 2018 11:34:34 GMT  
		Size: 4.3 MB (4332457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee6aab5708d2b433b3e69843a56180bb5f5cbb4bec5cd28d8f63e7e69772b11`  
		Last Modified: Thu, 04 Jan 2018 11:34:33 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64bfc0caf35aeb16ea3e1d52cb85a04122a065eb7c4eb8fa9260b4a92902b509`  
		Last Modified: Thu, 04 Jan 2018 11:34:31 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352cbb6f7eb91abb49ff5578d52b0b60291230910551c31ef073dda2d2acd2cc`  
		Last Modified: Thu, 04 Jan 2018 11:34:31 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61f99636d6db5b9c95ee8178d63237bffbc79c46de009c7dce3d276bf0c888cb`  
		Last Modified: Thu, 04 Jan 2018 11:34:31 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7afc79dc0bc98d4384c24da35c0f5f0e5c6f96935ab73c37f1a385486b8c1d6`  
		Last Modified: Thu, 04 Jan 2018 11:34:30 GMT  
		Size: 12.5 MB (12546251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df3baaaf467c434f9838374f751d0b1d9aed62bdf88baff93ad6dfb184ed2c3`  
		Last Modified: Thu, 04 Jan 2018 11:34:28 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e228152589825f997b3fef1ff0ea2092b146b149ac9bff453759557327fab5`  
		Last Modified: Thu, 04 Jan 2018 11:34:32 GMT  
		Size: 14.1 MB (14110950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd80df49f4c070f4240cf9177be52c1d0dbe4153c9ab19b0c70c2e672f68744`  
		Last Modified: Thu, 04 Jan 2018 11:34:29 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97c7aa828cf6b09dc2848cb60b7737c986cde98f585a7390c19eb7c81ee5d20`  
		Last Modified: Thu, 04 Jan 2018 11:34:28 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cf2017c4999904399d4b4545dc08e9ab86ea73ec953e892c5679f28db4ba799`  
		Last Modified: Thu, 04 Jan 2018 12:10:48 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0f7da1c7b9dec504c96593da11ad71edf34c372608ceef380dc8e4e6afc052`  
		Last Modified: Thu, 04 Jan 2018 12:10:49 GMT  
		Size: 2.1 MB (2092454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033ae461d389508555a1a0e787c8dcf435d0c87836b6f5435d7c2b8b1623bb21`  
		Last Modified: Thu, 04 Jan 2018 12:10:47 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc7ad8da5c2a02ecf0c4e14e829cda464b4a6dbeeae0ac127b83994cb5249a30`  
		Last Modified: Thu, 04 Jan 2018 12:11:01 GMT  
		Size: 13.6 MB (13561628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `drupal:apache` - linux; s390x

```console
$ docker pull drupal@sha256:2b44e43cfc481ef4eacc8c4c65309940e2126c04f0b62000de3bc2633867bb3e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.3 MB (162343488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19dd2cc675c9bb32d9873c2bf40ea36f8275c87b4dca82e2783020a1bfb13d05`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Wed, 29 Nov 2017 00:05:09 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 29 Nov 2017 00:05:38 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 29 Nov 2017 00:05:38 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 29 Nov 2017 00:05:39 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 01 Dec 2017 18:25:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Dec 2017 18:25:45 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 01 Dec 2017 18:25:45 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 01 Dec 2017 18:25:46 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 01 Dec 2017 18:25:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 01 Dec 2017 18:25:47 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 01 Dec 2017 18:25:47 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 01 Dec 2017 18:25:48 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 01 Dec 2017 18:25:48 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 01 Dec 2017 18:25:48 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 18:25:48 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 18:25:48 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 01 Dec 2017 18:25:48 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E
# Fri, 01 Dec 2017 18:25:49 GMT
ENV PHP_VERSION=7.1.12
# Fri, 01 Dec 2017 18:25:49 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.12.tar.xz.asc/from/this/mirror
# Fri, 01 Dec 2017 18:25:49 GMT
ENV PHP_SHA256=a0118850774571b1f2d4e30b4fe7a4b958ca66f07d07d65ebdc789c54ba6eeb3 PHP_MD5=
# Fri, 01 Dec 2017 18:26:03 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Dec 2017 18:26:03 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Dec 2017 18:28:03 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Dec 2017 18:28:03 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Fri, 01 Dec 2017 18:28:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Dec 2017 18:28:04 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 01 Dec 2017 18:28:04 GMT
WORKDIR /var/www/html
# Fri, 01 Dec 2017 18:28:04 GMT
EXPOSE 80/tcp
# Fri, 01 Dec 2017 18:28:04 GMT
CMD ["apache2-foreground"]
# Fri, 01 Dec 2017 19:30:09 GMT
RUN a2enmod rewrite
# Fri, 01 Dec 2017 19:32:17 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Dec 2017 19:32:18 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 01 Dec 2017 19:32:18 GMT
WORKDIR /var/www/html
# Sat, 09 Dec 2017 15:53:41 GMT
ENV DRUPAL_VERSION=8.4.3
# Sat, 09 Dec 2017 15:53:42 GMT
ENV DRUPAL_MD5=55a53cb43284b3d710a2742d458fc1da
# Sat, 09 Dec 2017 15:53:46 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42ca397ddc393770caaf87845ba868a919821518653dabeb8994b7f80d23681`  
		Last Modified: Fri, 01 Dec 2017 19:00:38 GMT  
		Size: 63.4 MB (63421543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feeb4e4f47c8cf604dacfbecf29d16580206ff508c9c83dccfe6d8568be2f09e`  
		Last Modified: Fri, 01 Dec 2017 19:00:24 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d679ddfa883268562154f3bc5435ec328cdd922b84a5831035ecfbca64b7327`  
		Last Modified: Fri, 01 Dec 2017 19:01:33 GMT  
		Size: 3.0 MB (3022067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0faf8bf2b189cd9c08338e08407776d590d820a41ac78e0add6ad46317dbb0bf`  
		Last Modified: Fri, 01 Dec 2017 19:01:33 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6023a9746d1b0aead54107f755984b956d9a05dfb7f4c3393897b3321b45727`  
		Last Modified: Fri, 01 Dec 2017 19:01:32 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb16566d196d3483c1fa83ef2d8e199ed1eaae1f6bb058be6a246b895e784b7`  
		Last Modified: Fri, 01 Dec 2017 19:01:32 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c34bbe5c6a97a8700e37d040cd143bf3723aa838a231c5ea3e7919093d28b2e9`  
		Last Modified: Fri, 01 Dec 2017 19:01:31 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be3bf9b1bb68afae9abd0eea4e3f19be8ba7b2e5870e18d86b269667e3b502c7`  
		Last Modified: Fri, 01 Dec 2017 19:01:31 GMT  
		Size: 12.5 MB (12546578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e0b6c12eb29d830021277ddff056431fb65f07473376db230f762b684ebe02`  
		Last Modified: Fri, 01 Dec 2017 19:01:31 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d060909c78fd2a9a85319c6f7cda76d9979f3d72b0b60ebd4c412eda4379262`  
		Last Modified: Fri, 01 Dec 2017 19:01:35 GMT  
		Size: 14.8 MB (14840297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33c5598cbe213de9652a3b2fd5980fcc42cea19c4c878f0ec2530c32a94a2ef`  
		Last Modified: Fri, 01 Dec 2017 19:01:31 GMT  
		Size: 2.2 KB (2184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8daca072f1f595fd3d324262bb9aefe55ff9d61fa5ad155658344c56e9b07b20`  
		Last Modified: Fri, 01 Dec 2017 19:01:30 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed14910e3cd6daeb90f524b42e27b1056a9e384bc91ea232f56d818e92e87de`  
		Last Modified: Fri, 01 Dec 2017 19:39:59 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948167ad46558cf512429c460921dbec7fb229c45fa3ad935c2ff05ce401689a`  
		Last Modified: Fri, 01 Dec 2017 19:39:59 GMT  
		Size: 2.2 MB (2155748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff9189d6c0c729050ec51cb731cde492f5fe10e9dfe19f238ef0b586cb8595f7`  
		Last Modified: Fri, 01 Dec 2017 19:39:58 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f6aee6d0c2c00a433a5a1ae1b40b0cc5a90731d453f8d90bdb3c8bbead7894`  
		Last Modified: Sat, 09 Dec 2017 15:54:32 GMT  
		Size: 13.6 MB (13561564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
