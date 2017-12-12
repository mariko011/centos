## `php:apache`

```console
$ docker pull php@sha256:4262252d578e8cf9d53a40b7e9230cd2cdd9795032e825b9f118c5e4c193285c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `php:apache` - linux; amd64

```console
$ docker pull php@sha256:20b6a6a60951d4244294593bd0d7205bf128a45e20cc6ee6237c9ee81cc715cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.4 MB (134366172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3af11ba07888519045e762aad9f5aa564724b44d0ca4b52afa3f2baca17040c7`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:39:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 12 Dec 2017 05:39:44 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libargon2-0 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 12 Dec 2017 05:39:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 12 Dec 2017 05:39:45 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 12 Dec 2017 05:45:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 05:45:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 12 Dec 2017 05:45:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 12 Dec 2017 05:45:14 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 12 Dec 2017 05:45:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 12 Dec 2017 05:45:21 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 12 Dec 2017 05:45:22 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 12 Dec 2017 05:45:28 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 12 Dec 2017 05:45:28 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 12 Dec 2017 05:45:28 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 05:45:28 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 05:45:28 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 05:45:29 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 12 Dec 2017 05:45:29 GMT
ENV PHP_VERSION=7.2.0
# Tue, 12 Dec 2017 05:45:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.0.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 05:45:29 GMT
ENV PHP_SHA256=87572a6b924670a5d4aac276aaa4a94321936283df391d702c845ffc112db095 PHP_MD5=
# Tue, 12 Dec 2017 05:45:42 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 05:45:43 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 05:48:44 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 12 Dec 2017 05:48:49 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Tue, 12 Dec 2017 05:48:50 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 12 Dec 2017 05:48:50 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 12 Dec 2017 05:48:50 GMT
WORKDIR /var/www/html
# Tue, 12 Dec 2017 05:48:50 GMT
EXPOSE 80/tcp
# Tue, 12 Dec 2017 05:48:50 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2580aa42d1b63554a107884a25eb093e2cac76e26bd5621a86ac41a86c485be4`  
		Last Modified: Tue, 12 Dec 2017 07:10:39 GMT  
		Size: 81.8 MB (81775657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8abb84c6a33d964efa39951812f914a1fd7785e1e6bee95523008f1cd193a2`  
		Last Modified: Tue, 12 Dec 2017 07:10:18 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bff113cc3d6f9a9323bf16501dfad4440535e5bfd4b1ff337cfbdec48636afe`  
		Last Modified: Tue, 12 Dec 2017 07:13:26 GMT  
		Size: 2.9 MB (2920632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd1a4dcbc4ec022188e2500f408dda8fc07f48aae0be5c21133130ba20bac383`  
		Last Modified: Tue, 12 Dec 2017 07:13:24 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab893328ce8496da827e702d238f709984dcc8d0c9f97f95a38ed8715fc92256`  
		Last Modified: Tue, 12 Dec 2017 07:13:22 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13367be12a3fbd894bdaa6b7dd12c9ac18670f1c8e37ce011b6b0a3fc0195508`  
		Last Modified: Tue, 12 Dec 2017 07:13:22 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892f2a2b8c32b218c122525bbd29fa4e342ad3f70c7e73bcaff6a36f18484aee`  
		Last Modified: Tue, 12 Dec 2017 07:13:22 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f17d3f3dc1afe59b6378bddf4c9310580a09f37d6236bc24122eae117dacd02e`  
		Last Modified: Tue, 12 Dec 2017 07:13:21 GMT  
		Size: 12.4 MB (12366218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e71bdb20601e4e6c917754778f35cde9673b041822f2462e8ab49be6333191`  
		Last Modified: Tue, 12 Dec 2017 07:13:20 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ee5f422b46e0dea0ca1f6a28d0fe888b614e47ca09bd90826d8221162a0aba`  
		Last Modified: Tue, 12 Dec 2017 07:13:25 GMT  
		Size: 14.8 MB (14811796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f57ac824c32cddc4adea0ef381f9751f3a010dc153a1830d3dbd8b85194319c1`  
		Last Modified: Tue, 12 Dec 2017 07:13:20 GMT  
		Size: 2.2 KB (2178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f62afcfdde737fe0a7e82f01df990cb53f5bae57bdc91bc0af56dd348b5ee9fb`  
		Last Modified: Tue, 12 Dec 2017 07:13:20 GMT  
		Size: 900.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:apache` - linux; arm variant v5

```console
$ docker pull php@sha256:8088dcd8c2e7acc34835561abc56e57395c411b6b81ee37834d356e7554acd2b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121828597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20e79fe8f4aab2cb1e82916df2d6cb7dd081f72967a21aa76bba38be48741c1d`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:48 GMT
ADD file:ff9945b48b1ac236dcec24eb9dfaf52b7c151a3b11c8502391f0866dfb4e3ac3 in / 
# Mon, 09 Oct 2017 21:44:48 GMT
CMD ["bash"]
# Fri, 01 Dec 2017 14:37:42 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 01 Dec 2017 14:38:26 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libargon2-0 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 01 Dec 2017 14:38:27 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 01 Dec 2017 14:38:28 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 01 Dec 2017 14:42:38 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Dec 2017 14:42:38 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 01 Dec 2017 14:42:38 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 01 Dec 2017 14:42:39 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 01 Dec 2017 14:42:40 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 01 Dec 2017 14:42:41 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 01 Dec 2017 14:42:42 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 01 Dec 2017 14:42:43 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 01 Dec 2017 14:42:43 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 01 Dec 2017 14:42:43 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 14:42:43 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 14:42:44 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 01 Dec 2017 14:42:44 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 01 Dec 2017 14:42:44 GMT
ENV PHP_VERSION=7.2.0
# Fri, 01 Dec 2017 14:42:44 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.0.tar.xz.asc/from/this/mirror
# Fri, 01 Dec 2017 14:42:45 GMT
ENV PHP_SHA256=87572a6b924670a5d4aac276aaa4a94321936283df391d702c845ffc112db095 PHP_MD5=
# Sat, 02 Dec 2017 14:37:59 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 02 Dec 2017 14:37:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 02 Dec 2017 14:40:39 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 02 Dec 2017 14:40:40 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Sat, 02 Dec 2017 14:40:41 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 02 Dec 2017 14:40:41 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 02 Dec 2017 14:40:41 GMT
WORKDIR /var/www/html
# Sat, 02 Dec 2017 14:40:41 GMT
EXPOSE 80/tcp
# Sat, 02 Dec 2017 14:40:42 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:836d5b6056a9815be79c76480a90299267f60201bd1e3396817003e6c14819cc`  
		Last Modified: Mon, 09 Oct 2017 21:50:56 GMT  
		Size: 21.2 MB (21166251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca2597a1c9939fa88a78e0c571fc00a03c921b32f25f4d06880950023488f2c7`  
		Last Modified: Fri, 01 Dec 2017 15:43:24 GMT  
		Size: 71.5 MB (71489973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4856c52e061d319a61fcf8e27305b5e07672627fb114b4b2426762958255c441`  
		Last Modified: Fri, 01 Dec 2017 15:43:01 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f1402401afe48fc1cc13c088125a256a36257aca5a941d640c416253e53ca0`  
		Last Modified: Sat, 02 Dec 2017 14:41:59 GMT  
		Size: 2.8 MB (2799135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4729d4726907f14e78cbb22bdbf34e7bfb3294a04f72041f91b3734f0a84bd2e`  
		Last Modified: Sat, 02 Dec 2017 14:41:58 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d428c0f1328c7be02590958415bdd9b434c13f79015bc8f212d668ef6194a90`  
		Last Modified: Sat, 02 Dec 2017 14:41:56 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06103c1c18842411d4360aff8aff8d0454d98e33f3281c51457788078cef4cc6`  
		Last Modified: Sat, 02 Dec 2017 14:41:56 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ad52e549726a0692872dae06c48f50c39cf7e34ae5e8eaf26d809b08d211ce`  
		Last Modified: Sat, 02 Dec 2017 14:41:56 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a1cd4d2d9f6950628bcbbf91de2aa7c6a8c9c64bd30491db16f07e6db944ae`  
		Last Modified: Sat, 02 Dec 2017 14:41:58 GMT  
		Size: 12.4 MB (12363992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08cb8397d00b3c9a936310f5952f962af4532df36719aba6f04f17bc4ead9a22`  
		Last Modified: Sat, 02 Dec 2017 14:41:55 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68747eee32f695b6479d4914084d5395664d437d9fe8cd4d25a5d036e590cb09`  
		Last Modified: Sat, 02 Dec 2017 14:42:01 GMT  
		Size: 14.0 MB (14002958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0791408b0295dcdeeaf554f82a772a1b2ad851c69bf7d780c4be840af7d7837b`  
		Last Modified: Sat, 02 Dec 2017 14:41:55 GMT  
		Size: 2.2 KB (2182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae0e41ec5d1787d576f9b2313788c9c8a0b3456523bd686f161156939bbe097`  
		Last Modified: Sat, 02 Dec 2017 14:41:55 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:apache` - linux; arm variant v7

```console
$ docker pull php@sha256:e026a00d8dde1b05e4488c7c1e2ddfb03f1fbab39b15c4508a8af43f3a9e8504
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114731595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f751116d5b8365dce9dd2a147d5d388ad7d1ea3d0c7040314f84fdac0ea6850`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Fri, 01 Dec 2017 12:48:48 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 01 Dec 2017 12:49:17 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libargon2-0 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 01 Dec 2017 12:49:18 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 01 Dec 2017 12:49:19 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 01 Dec 2017 12:53:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Dec 2017 12:53:12 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 01 Dec 2017 12:53:12 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 01 Dec 2017 12:53:13 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 01 Dec 2017 12:53:14 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 01 Dec 2017 12:53:15 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 01 Dec 2017 12:53:16 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 01 Dec 2017 12:53:16 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 01 Dec 2017 12:53:16 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 01 Dec 2017 12:53:17 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 12:53:17 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 12:53:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 01 Dec 2017 12:53:18 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 01 Dec 2017 12:53:18 GMT
ENV PHP_VERSION=7.2.0
# Fri, 01 Dec 2017 12:53:18 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.0.tar.xz.asc/from/this/mirror
# Fri, 01 Dec 2017 12:53:18 GMT
ENV PHP_SHA256=87572a6b924670a5d4aac276aaa4a94321936283df391d702c845ffc112db095 PHP_MD5=
# Fri, 01 Dec 2017 12:53:48 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Dec 2017 12:53:48 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Dec 2017 12:56:09 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Dec 2017 12:56:10 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Fri, 01 Dec 2017 12:56:11 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Dec 2017 12:56:11 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 01 Dec 2017 12:56:12 GMT
WORKDIR /var/www/html
# Fri, 01 Dec 2017 12:56:12 GMT
EXPOSE 80/tcp
# Fri, 01 Dec 2017 12:56:12 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:59e81a3fde58ec8d4b8f2f58b98ef2f4d951d37dd9b99b016fd294a8e07d7796`  
		Last Modified: Mon, 09 Oct 2017 21:52:49 GMT  
		Size: 19.3 MB (19277135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e439ba73284b95c25810b52bb8f61283161f1d98574f282aa456c12607a36321`  
		Last Modified: Fri, 01 Dec 2017 13:53:06 GMT  
		Size: 67.3 MB (67309892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767f99f78bca9cb764e6ea40d7f3eda97fe2654373af2483c594254d755fb96d`  
		Last Modified: Fri, 01 Dec 2017 13:52:46 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb34fb62b1fd1176eddf7b95be1a20f48f5e3ad541bef0c02222de7462a0e9a1`  
		Last Modified: Fri, 01 Dec 2017 13:55:47 GMT  
		Size: 2.6 MB (2592814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2125d70c813c6073c878814ea49f373b5bcab31021d2974467ab2d313465f7d7`  
		Last Modified: Fri, 01 Dec 2017 13:55:46 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f81b5c1e72ad1f5bfa6da9903008dcfedba0fd7eaa27a7154dce652b6380913`  
		Last Modified: Fri, 01 Dec 2017 13:55:45 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e798203f86a7726bf6ea939a71d6389fd11492ce124772d5f24b829615796a0`  
		Last Modified: Fri, 01 Dec 2017 13:55:45 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a7898cc31d98ae7148a77b263cb7c5b0cc48f0359098424467c5717cf4e3b3`  
		Last Modified: Fri, 01 Dec 2017 13:55:45 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a01ab5aab00ee292c9d4040cb99d8158196a73a1d26b33cc67525a8ba6497c`  
		Last Modified: Fri, 01 Dec 2017 13:55:44 GMT  
		Size: 12.4 MB (12363864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9492996a16ca092ec9504795d74e5e261ac00f10ebadbe87d7ad6db7df750647`  
		Last Modified: Fri, 01 Dec 2017 13:55:43 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085fc5e1f2555c4075e1ec85c4388bceb9200e19d42c82aed19f0927dcea4023`  
		Last Modified: Fri, 01 Dec 2017 13:55:48 GMT  
		Size: 13.2 MB (13181598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4326f84157d3ba2d91cba55d6a913ee5d3808ef1a72e05a4657c000ed6d5ff2e`  
		Last Modified: Fri, 01 Dec 2017 13:55:43 GMT  
		Size: 2.2 KB (2182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f368484f0ed4aaf785306c6a297121d5c4b98f401e80f1fbf2126f054863d1`  
		Last Modified: Fri, 01 Dec 2017 13:55:43 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:apache` - linux; arm64 variant v8

```console
$ docker pull php@sha256:5e7997b8c12f179c8b4c92e54c4fa90e56c75222d74c9e873a054c31a2ba27d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.0 MB (121041556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8871558321aad0dd2ff338f912dbdb813f22abaf03c95d0f9f3f42f9bb09d61c`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Fri, 01 Dec 2017 02:57:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 01 Dec 2017 02:58:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libargon2-0 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 01 Dec 2017 02:58:52 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 01 Dec 2017 02:58:54 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 01 Dec 2017 03:01:22 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Dec 2017 03:01:23 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 01 Dec 2017 03:01:24 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 01 Dec 2017 03:01:26 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 01 Dec 2017 03:01:28 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 01 Dec 2017 03:01:30 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 01 Dec 2017 03:01:32 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 01 Dec 2017 03:01:33 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 01 Dec 2017 03:01:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 01 Dec 2017 03:01:34 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 03:01:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 03:01:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 01 Dec 2017 03:01:36 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 01 Dec 2017 03:01:37 GMT
ENV PHP_VERSION=7.2.0
# Fri, 01 Dec 2017 03:01:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.0.tar.xz.asc/from/this/mirror
# Fri, 01 Dec 2017 03:01:39 GMT
ENV PHP_SHA256=87572a6b924670a5d4aac276aaa4a94321936283df391d702c845ffc112db095 PHP_MD5=
# Fri, 01 Dec 2017 03:02:10 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Dec 2017 03:02:11 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Dec 2017 03:07:53 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Dec 2017 03:07:55 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Fri, 01 Dec 2017 03:07:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Dec 2017 03:07:56 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 01 Dec 2017 03:07:57 GMT
WORKDIR /var/www/html
# Fri, 01 Dec 2017 03:07:58 GMT
EXPOSE 80/tcp
# Fri, 01 Dec 2017 03:07:59 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:e907afd6e25615a4d3eb554d930cef57b87e79ec82413889c2eac38beb4eb8f7`  
		Last Modified: Mon, 09 Oct 2017 22:03:08 GMT  
		Size: 20.3 MB (20337143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3912d578b2a2749c2f3feb412600b0957f0224536731224e4b5f189948267283`  
		Last Modified: Fri, 01 Dec 2017 05:19:26 GMT  
		Size: 71.8 MB (71759515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f3a6b16780944d2e043d122671360da00e8da1d4c6ebf8dbf896aa5ddfb77cc`  
		Last Modified: Fri, 01 Dec 2017 05:18:59 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689bb70b2593a753416156e0af59efdea3eceda4e433e1fef1d494da0adf96d6`  
		Last Modified: Fri, 01 Dec 2017 05:19:01 GMT  
		Size: 2.7 MB (2711377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef0a25037a2bf09d813608c81ae8a0bd44f5ee3fc1422c3ee587df73d755d5a7`  
		Last Modified: Fri, 01 Dec 2017 05:18:59 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a91ec2d58793b7033012f1daab97f49a72af568be98f2f736b55166bf1fa3f65`  
		Last Modified: Fri, 01 Dec 2017 05:18:58 GMT  
		Size: 448.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011e7a9b8512b5eeb8d5f9a40fcfbac63c81ac543bf61076c299757503a0cbe8`  
		Last Modified: Fri, 01 Dec 2017 05:18:57 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111daaa4072b9898d08593fda1bd70ae799ccc8e5b50b52cdca17926d6065f01`  
		Last Modified: Fri, 01 Dec 2017 05:18:57 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ac8c756588788650ddb91120175088173b0c183b5ff125d28a66e16b937e467`  
		Last Modified: Fri, 01 Dec 2017 05:18:57 GMT  
		Size: 12.4 MB (12364334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be8a32f224f7b28b5757ec257636f818d1f622d23a2c18a368c72ac0fe3785e8`  
		Last Modified: Fri, 01 Dec 2017 05:18:55 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f49db30f80e8a51d2519fb80513c0560edc21f56f5057f6fac1318df442e4a07`  
		Last Modified: Fri, 01 Dec 2017 05:19:01 GMT  
		Size: 13.9 MB (13862991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2e740bd77374096b7375af1f8b30f06494caee8af1ab18604b9a8096b967e7`  
		Last Modified: Fri, 01 Dec 2017 05:18:56 GMT  
		Size: 2.2 KB (2185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d9dcf834011ae8933e242b1ae6ad347fc1b07d15a534dec4a7c1213cdc7584`  
		Last Modified: Fri, 01 Dec 2017 05:18:55 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:apache` - linux; 386

```console
$ docker pull php@sha256:8dcb87d8bf47ab0383eae53d4916be2b005df1a828f504f7c51042dbe8162f51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.0 MB (139958289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0d84a78dd418d037aebe75d327f1bd0291af6cb1a0dae14a797f7e68e9c766b`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:36 GMT
ADD file:6582536277127947668f7bfdc1471a4e36170915b91a4cb841e7e1bfa1de6535 in / 
# Mon, 09 Oct 2017 21:45:36 GMT
CMD ["bash"]
# Fri, 01 Dec 2017 09:42:54 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 01 Dec 2017 09:44:00 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libargon2-0 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 01 Dec 2017 09:44:00 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 01 Dec 2017 09:44:01 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 01 Dec 2017 09:54:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Dec 2017 09:54:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 01 Dec 2017 09:54:59 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 01 Dec 2017 09:55:00 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 01 Dec 2017 09:55:01 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 01 Dec 2017 09:55:02 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 01 Dec 2017 09:55:02 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 01 Dec 2017 09:55:02 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 01 Dec 2017 09:55:03 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 01 Dec 2017 09:55:03 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 09:55:03 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 09:55:03 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 01 Dec 2017 09:55:03 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 01 Dec 2017 09:55:04 GMT
ENV PHP_VERSION=7.2.0
# Fri, 01 Dec 2017 09:55:04 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.0.tar.xz.asc/from/this/mirror
# Fri, 01 Dec 2017 09:55:04 GMT
ENV PHP_SHA256=87572a6b924670a5d4aac276aaa4a94321936283df391d702c845ffc112db095 PHP_MD5=
# Fri, 01 Dec 2017 09:55:16 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Dec 2017 09:55:16 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Dec 2017 09:58:25 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Dec 2017 09:58:25 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Fri, 01 Dec 2017 09:58:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Dec 2017 09:58:26 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 01 Dec 2017 09:58:26 GMT
WORKDIR /var/www/html
# Fri, 01 Dec 2017 09:58:26 GMT
EXPOSE 80/tcp
# Fri, 01 Dec 2017 09:58:26 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:b2b52fe46b29fe5d0689f26449c2114e40f0731d4ce3eb8c3941397b74205432`  
		Last Modified: Mon, 09 Oct 2017 21:53:42 GMT  
		Size: 23.1 MB (23128678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395604cd0385b9972c612c4c738898e67423a5dbe4f8f0268bcd7f2415c771f9`  
		Last Modified: Fri, 01 Dec 2017 12:30:57 GMT  
		Size: 86.2 MB (86160390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea108f3c67a3069ec5f6a617df9cb2c3f326e0772290f960e82c2ebf3acbe1d1`  
		Last Modified: Fri, 01 Dec 2017 12:30:31 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ec4a3ee1ea510cb7e8af1aac0aa17f1f3312be48382324a862e8a329c53e63`  
		Last Modified: Fri, 01 Dec 2017 12:33:39 GMT  
		Size: 3.1 MB (3075508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2873796ac81ff44888c368a2b332f0b1946218852851d5b8540f34135ba75994`  
		Last Modified: Fri, 01 Dec 2017 12:33:37 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54543758531c515817a58e8f4c9c093c8234e7d477cafbdd430b0a3b48fa45bb`  
		Last Modified: Fri, 01 Dec 2017 12:33:36 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3632e6c91ca9cb1dedf9211da6095e359c4072b73d1ac2ebc4ad58c3b14cec`  
		Last Modified: Fri, 01 Dec 2017 12:33:37 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfb99df2e4adf3424616a0bba62f042b7209bfd83ba03db2a40103af1490b5a`  
		Last Modified: Fri, 01 Dec 2017 12:33:37 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8713969910d0996b7f55f8e6400172b3e7f709e0c6d7f48c1ba78cb691375179`  
		Last Modified: Fri, 01 Dec 2017 12:33:38 GMT  
		Size: 12.4 MB (12365653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc992c10cdc884c99eccce99acaae7f9739633001e6d1f7ea51e7390f7c8877`  
		Last Modified: Fri, 01 Dec 2017 12:33:37 GMT  
		Size: 503.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a54b4fae0ae68505db248422cefd64dcb274a07369d83588a996fde7b00087`  
		Last Modified: Fri, 01 Dec 2017 12:33:42 GMT  
		Size: 15.2 MB (15221903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109d64bcd0f4b94779b45aa8a868733f18340d32d63223b5e2ff9656ac52fdbe`  
		Last Modified: Fri, 01 Dec 2017 12:33:38 GMT  
		Size: 2.2 KB (2181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03bef7cd638a425b4826d9e991cbe82756b9840c6d429ffe4ea8ee257585b0d9`  
		Last Modified: Fri, 01 Dec 2017 12:33:36 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:apache` - linux; ppc64le

```console
$ docker pull php@sha256:8d59e40751bdf11fc021bbed18efc5b666af439dd67097773b38eda979ea5127
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.1 MB (129085710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61cd141065bcf83d0a4307358074e13cf89b9a32ccfa8b7c0c3f9e7fbf83f42a`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:41 GMT
ADD file:896602a6d015367badb26a7ac0bcafc9aa04cbba205925631d315874b6d289ab in / 
# Tue, 12 Dec 2017 01:35:42 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 04:25:51 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 12 Dec 2017 04:29:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libargon2-0 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 12 Dec 2017 04:29:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 12 Dec 2017 04:29:36 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 12 Dec 2017 04:38:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 04:38:36 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 12 Dec 2017 04:38:37 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 12 Dec 2017 04:38:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 12 Dec 2017 04:38:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 12 Dec 2017 04:38:50 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 12 Dec 2017 04:38:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 12 Dec 2017 04:38:56 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 12 Dec 2017 04:38:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 12 Dec 2017 04:38:59 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 04:39:00 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 12 Dec 2017 04:39:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 12 Dec 2017 04:39:03 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 12 Dec 2017 04:39:07 GMT
ENV PHP_VERSION=7.2.0
# Tue, 12 Dec 2017 04:39:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.0.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.0.tar.xz.asc/from/this/mirror
# Tue, 12 Dec 2017 04:39:10 GMT
ENV PHP_SHA256=87572a6b924670a5d4aac276aaa4a94321936283df391d702c845ffc112db095 PHP_MD5=
# Tue, 12 Dec 2017 04:40:20 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 12 Dec 2017 04:40:21 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 12 Dec 2017 04:46:16 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 12 Dec 2017 04:46:18 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Tue, 12 Dec 2017 04:46:20 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 12 Dec 2017 04:46:22 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 12 Dec 2017 04:46:24 GMT
WORKDIR /var/www/html
# Tue, 12 Dec 2017 04:46:25 GMT
EXPOSE 80/tcp
# Tue, 12 Dec 2017 04:46:27 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:b8b738bec437a97371af422179183d09cdb031f677b2dba4deaed774655ee9d8`  
		Last Modified: Tue, 12 Dec 2017 01:42:57 GMT  
		Size: 22.7 MB (22739713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e94387b059051e70aa103a00e5e7b9513818bfd61951a89911bf02423ac205`  
		Last Modified: Tue, 12 Dec 2017 06:16:34 GMT  
		Size: 76.3 MB (76302733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab8e1e546d66d742f64a7aaa7c241ed8124367d177cf80d156c8f528099cf79`  
		Last Modified: Tue, 12 Dec 2017 06:15:58 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51c3366014450b73fb1d57ac00b341fa898c3bec36ed5b90c11f97d72cb1b77`  
		Last Modified: Tue, 12 Dec 2017 06:18:17 GMT  
		Size: 3.0 MB (3043446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c7d9e159f54f3323411237d2eb81a0bde8dd1aa020380cd028da1913316625`  
		Last Modified: Tue, 12 Dec 2017 06:18:11 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e356549cec8b6c75535ee328a016b5fb85a496c2abbaa5d2f3d28fb07a84e30f`  
		Last Modified: Tue, 12 Dec 2017 06:18:11 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:377e5a102f4376b41317e50c8babe19edcc8922d3eb5a014e29ebce679b862ad`  
		Last Modified: Tue, 12 Dec 2017 06:18:10 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c07148d978bd79cc3ae02f8eb9738c4b798e58d1bd556931371e3a16933ce2`  
		Last Modified: Tue, 12 Dec 2017 06:18:13 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16e1b48e0eeadc25c553d80e94e835ea2fab73c3a7de8907ead5aa7b4a13259f`  
		Last Modified: Tue, 12 Dec 2017 06:18:06 GMT  
		Size: 12.4 MB (12365239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0dcbb1546b0bc5c29bcf19285f4806e3552a9ddf654b67d6f8740b089f9299f`  
		Last Modified: Tue, 12 Dec 2017 06:18:04 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68e45262ddbdf45c636c4a3261391447a5be638bf6bb9abb1cbfca8b55c5d0d`  
		Last Modified: Tue, 12 Dec 2017 06:18:11 GMT  
		Size: 14.6 MB (14628280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215afaebfac3d452e0a95d2c023b16a89ce866cfbcfcd9024d2c2d02c39a36ed`  
		Last Modified: Tue, 12 Dec 2017 06:18:04 GMT  
		Size: 2.2 KB (2184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1ad801cd8e05be21afd738c625982b0f80d270a6826e99a33de0e629a985f5`  
		Last Modified: Tue, 12 Dec 2017 06:18:04 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
