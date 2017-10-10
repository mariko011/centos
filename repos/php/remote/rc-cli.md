## `php:rc-cli`

```console
$ docker pull php@sha256:c516b81761d2a939df9e3b6d5c4b84b8969225c9fee0e63c4fd6dbc698b7790a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `php:rc-cli` - linux; amd64

```console
$ docker pull php@sha256:704482398e589b6bfa1bb222c7a18b89702e30cc86adef665e7515611eb6aa9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.6 MB (127629403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42291d0d75139f581aebc2a4f48a7763cdfd36f937a82797f0be9c102694d45f`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:42 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Mon, 09 Oct 2017 21:33:43 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:52:52 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Tue, 10 Oct 2017 00:53:12 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:53:12 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 10 Oct 2017 00:53:13 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 10 Oct 2017 00:53:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 00:53:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 00:53:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 10 Oct 2017 00:53:14 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 10 Oct 2017 00:53:14 GMT
ENV PHP_VERSION=7.2.0RC3
# Tue, 10 Oct 2017 00:53:14 GMT
ENV PHP_URL=https://downloads.php.net/~remi/php-7.2.0RC3.tar.xz PHP_ASC_URL=https://downloads.php.net/~remi/php-7.2.0RC3.tar.xz.asc
# Tue, 10 Oct 2017 00:53:14 GMT
ENV PHP_SHA256=abe0a237f94837854f2cfd9c7dc99fbca2c817ae1d6194a514f29b463db36853 PHP_MD5=
# Tue, 10 Oct 2017 00:53:26 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 10 Oct 2017 00:53:27 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:57:40 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 10 Oct 2017 00:57:42 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:57:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 10 Oct 2017 00:57:44 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a944954d60d4551e0e33e917e0e94012afef3bed8438fddfa7f92e92c2b0d6b`  
		Last Modified: Tue, 10 Oct 2017 02:31:26 GMT  
		Size: 82.7 MB (82741933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bb8fec5464cbe56a5759d46ad003db8fc51bb47163a6bc71aadaf7fcd184cfc`  
		Last Modified: Tue, 10 Oct 2017 02:31:06 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936f8558023f5789e6bf96a3ff8b9814c2fc4df6370b7abb2ab6abca60593455`  
		Last Modified: Tue, 10 Oct 2017 02:31:07 GMT  
		Size: 12.3 MB (12306172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e20ba0f65e4d830ca1fe6427895441aa4e4150cb7b484b388bf9c4fcf58a53`  
		Last Modified: Tue, 10 Oct 2017 02:31:06 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254f79a5a40fcb69de168b064d9658394bd78f7d4a2730c0644da3ccab477e68`  
		Last Modified: Tue, 10 Oct 2017 02:31:11 GMT  
		Size: 10.1 MB (10086092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40d6eff818e89700f76a3d60ef35e7526e1f2f85f97f09de1f0307237608fe7`  
		Last Modified: Tue, 10 Oct 2017 02:31:06 GMT  
		Size: 2.2 KB (2172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-cli` - linux; arm variant v5

```console
$ docker pull php@sha256:ce1f3321d50c88f1ecbf16007de6da6581da223c9f2e7ae569d1eeff2452f7da
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 MB (115331315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d00f7370714999f0d4a9d3cba7eaf44615609be8488740dc88b655a0ba4a90e6`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:48 GMT
ADD file:ff9945b48b1ac236dcec24eb9dfaf52b7c151a3b11c8502391f0866dfb4e3ac3 in / 
# Mon, 09 Oct 2017 21:44:48 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Mon, 09 Oct 2017 22:28:45 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:45 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 09 Oct 2017 22:28:47 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 09 Oct 2017 22:28:47 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 09 Oct 2017 22:28:47 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 09 Oct 2017 22:28:48 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Mon, 09 Oct 2017 22:28:48 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Mon, 09 Oct 2017 22:28:48 GMT
ENV PHP_VERSION=7.2.0RC3
# Mon, 09 Oct 2017 22:28:49 GMT
ENV PHP_URL=https://downloads.php.net/~remi/php-7.2.0RC3.tar.xz PHP_ASC_URL=https://downloads.php.net/~remi/php-7.2.0RC3.tar.xz.asc
# Mon, 09 Oct 2017 22:28:49 GMT
ENV PHP_SHA256=abe0a237f94837854f2cfd9c7dc99fbca2c817ae1d6194a514f29b463db36853 PHP_MD5=
# Mon, 09 Oct 2017 22:29:19 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Mon, 09 Oct 2017 22:29:19 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:32:44 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 09 Oct 2017 22:32:47 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:32:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 09 Oct 2017 22:32:47 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:836d5b6056a9815be79c76480a90299267f60201bd1e3396817003e6c14819cc`  
		Last Modified: Mon, 09 Oct 2017 21:50:56 GMT  
		Size: 21.2 MB (21166251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbe8b295a042e1b61aa3d66b0897b94a8fb80517c69bc00e4c7a60791823700`  
		Last Modified: Mon, 09 Oct 2017 23:38:22 GMT  
		Size: 72.4 MB (72378430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ec2f5bbb26cf593860b92291267394b496b1b5894b121f49f4865df757f8aa4`  
		Last Modified: Mon, 09 Oct 2017 23:37:49 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d59ffa3c994f0422141357b4d6cbc7e55f77e81d99e4b2907eb379255b04f0`  
		Last Modified: Mon, 09 Oct 2017 23:37:51 GMT  
		Size: 12.3 MB (12303959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebc85507551922839c0e789520d55e2f21ecdf9f93a7bd70ad4fe7a8039cbf3`  
		Last Modified: Mon, 09 Oct 2017 23:37:49 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab7189067b0b653804bf79e9ba72d47d9a4ddc48bf354b08ed81bd60fa10c6a4`  
		Last Modified: Mon, 09 Oct 2017 23:37:52 GMT  
		Size: 9.5 MB (9479801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66813cd630abe8d10e6b9ebfd87a4f6c990d593ff9ad45711817317ad2f527f9`  
		Last Modified: Mon, 09 Oct 2017 23:37:49 GMT  
		Size: 2.2 KB (2167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-cli` - linux; arm variant v7

```console
$ docker pull php@sha256:41c99b839d4083272cfb424201ac6c8420da4cf31405a6a6c5eebe4f1c6752f1
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.6 MB (108614632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f93bc3bf054b1150a1a7d524c7e50a21b26d05066576bc05edf74139a390f3a0`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:56:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Mon, 09 Oct 2017 22:57:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:57:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 09 Oct 2017 22:57:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 09 Oct 2017 22:57:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 09 Oct 2017 22:57:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 09 Oct 2017 22:57:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Mon, 09 Oct 2017 22:57:13 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Mon, 09 Oct 2017 22:57:14 GMT
ENV PHP_VERSION=7.2.0RC3
# Mon, 09 Oct 2017 22:57:14 GMT
ENV PHP_URL=https://downloads.php.net/~remi/php-7.2.0RC3.tar.xz PHP_ASC_URL=https://downloads.php.net/~remi/php-7.2.0RC3.tar.xz.asc
# Mon, 09 Oct 2017 22:57:14 GMT
ENV PHP_SHA256=abe0a237f94837854f2cfd9c7dc99fbca2c817ae1d6194a514f29b463db36853 PHP_MD5=
# Mon, 09 Oct 2017 22:57:25 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Mon, 09 Oct 2017 22:57:26 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 09 Oct 2017 23:00:39 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 09 Oct 2017 23:00:41 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Mon, 09 Oct 2017 23:00:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 09 Oct 2017 23:00:42 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:59e81a3fde58ec8d4b8f2f58b98ef2f4d951d37dd9b99b016fd294a8e07d7796`  
		Last Modified: Mon, 09 Oct 2017 21:52:49 GMT  
		Size: 19.3 MB (19277135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132d9293b67fc8e709be0d402995abb487a3612c64a1c2bfaa9be684b81d54bb`  
		Last Modified: Tue, 10 Oct 2017 00:01:49 GMT  
		Size: 68.1 MB (68103486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e8eab7d5deec5d94515df17ebf7261ee8383ed006b2b2cf5c1063127f7f0`  
		Last Modified: Tue, 10 Oct 2017 00:01:27 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8fc160083e7765ae3b5caa53587ec6ee224b1b2024c1738cf3c766f161dd62d`  
		Last Modified: Tue, 10 Oct 2017 00:01:29 GMT  
		Size: 12.3 MB (12303828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6026d647094d59f6291da9b2c2350f07b10a8dc4d717d366193495cc167cd369`  
		Last Modified: Tue, 10 Oct 2017 00:01:27 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4302de8acc31d21efae73bfb09d45855178eeef19b4b98e5dcde4aefdeff85f3`  
		Last Modified: Tue, 10 Oct 2017 00:01:32 GMT  
		Size: 8.9 MB (8927302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:930c500751c3d963ee175f619d3f696c04938e1848d094afbe3358c93926f975`  
		Last Modified: Tue, 10 Oct 2017 00:01:27 GMT  
		Size: 2.2 KB (2170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-cli` - linux; arm64 variant v8

```console
$ docker pull php@sha256:21696abf784199d2037b8a1f3a7f0792f8a0d2a697809e746deeacf600dac7a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114676234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18894a3c691f79de0dd1115a9a7f36161811d13f3b68d07c7c1e2907c01e4bf3`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:27:50 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Tue, 10 Oct 2017 02:29:21 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:29:22 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 10 Oct 2017 02:29:24 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 10 Oct 2017 02:29:25 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 02:29:25 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 02:29:26 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 10 Oct 2017 02:29:27 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 10 Oct 2017 02:29:27 GMT
ENV PHP_VERSION=7.2.0RC3
# Tue, 10 Oct 2017 02:29:28 GMT
ENV PHP_URL=https://downloads.php.net/~remi/php-7.2.0RC3.tar.xz PHP_ASC_URL=https://downloads.php.net/~remi/php-7.2.0RC3.tar.xz.asc
# Tue, 10 Oct 2017 02:29:29 GMT
ENV PHP_SHA256=abe0a237f94837854f2cfd9c7dc99fbca2c817ae1d6194a514f29b463db36853 PHP_MD5=
# Tue, 10 Oct 2017 13:04:17 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 10 Oct 2017 13:04:18 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 10 Oct 2017 13:12:39 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 10 Oct 2017 13:12:40 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Tue, 10 Oct 2017 13:12:40 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 10 Oct 2017 13:12:41 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:e907afd6e25615a4d3eb554d930cef57b87e79ec82413889c2eac38beb4eb8f7`  
		Last Modified: Mon, 09 Oct 2017 22:03:08 GMT  
		Size: 20.3 MB (20337143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50ede7f3056f4acf483babcd7830c989b043c66aafb0831b5e16eda2ee76e566`  
		Last Modified: Tue, 10 Oct 2017 04:40:57 GMT  
		Size: 72.6 MB (72581554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe2f631992c944e0aea207285a5c89ed5d6659eb2de066a51ee3dd5f702e7b`  
		Last Modified: Tue, 10 Oct 2017 04:40:30 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92494cecd5b5eaf1fd1d86ef70f101dff8614d7ce25dba321c5ca43840f31d28`  
		Last Modified: Tue, 10 Oct 2017 13:14:01 GMT  
		Size: 12.3 MB (12304309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e753102dcbe7319e49f4cabe3a5d601101db8e17a5b7d157a7723f09ae2cabbf`  
		Last Modified: Tue, 10 Oct 2017 13:13:59 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f89599c5501feb7d2798f962c0ffde72bd87b6cea7657d75ea05642b9f45d67`  
		Last Modified: Tue, 10 Oct 2017 13:14:02 GMT  
		Size: 9.5 MB (9450371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de134a523eec5a2395835ccc9926e65a29ddb3d8f901466725825705bd61c86c`  
		Last Modified: Tue, 10 Oct 2017 13:13:58 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-cli` - linux; 386

```console
$ docker pull php@sha256:f7c41285bba3e59fbe14c0e834236e2ef81c8c14bfc900964092fd28475cf5ee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.9 MB (132880560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3285e9daccadebc28c2b9f6eb2aa9ed13cc403cf7d9f8d4a317364ab81d4ee6`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:36 GMT
ADD file:6582536277127947668f7bfdc1471a4e36170915b91a4cb841e7e1bfa1de6535 in / 
# Mon, 09 Oct 2017 21:45:36 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:07:00 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Tue, 10 Oct 2017 00:07:52 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:07:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 10 Oct 2017 00:07:54 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 10 Oct 2017 00:07:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 00:07:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 00:07:55 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 10 Oct 2017 00:07:55 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 10 Oct 2017 00:07:55 GMT
ENV PHP_VERSION=7.2.0RC3
# Tue, 10 Oct 2017 00:07:55 GMT
ENV PHP_URL=https://downloads.php.net/~remi/php-7.2.0RC3.tar.xz PHP_ASC_URL=https://downloads.php.net/~remi/php-7.2.0RC3.tar.xz.asc
# Tue, 10 Oct 2017 00:07:56 GMT
ENV PHP_SHA256=abe0a237f94837854f2cfd9c7dc99fbca2c817ae1d6194a514f29b463db36853 PHP_MD5=
# Tue, 10 Oct 2017 00:08:10 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 10 Oct 2017 00:08:11 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:13:25 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 10 Oct 2017 00:14:07 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:14:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 10 Oct 2017 00:14:07 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:b2b52fe46b29fe5d0689f26449c2114e40f0731d4ce3eb8c3941397b74205432`  
		Last Modified: Mon, 09 Oct 2017 21:53:42 GMT  
		Size: 23.1 MB (23128678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:316be019a36827479fce245166920ecfc3a55767a358654efb6d9692ded9c864`  
		Last Modified: Tue, 10 Oct 2017 02:10:05 GMT  
		Size: 87.1 MB (87122348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc6da0d085485b3f9cdb01886ef14963763418a245faaa5be08ee2146a3d567`  
		Last Modified: Tue, 10 Oct 2017 02:09:43 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973e84785656627b9c0937a6e91073a599b235d0b9af1568c8272c205b83ca13`  
		Last Modified: Tue, 10 Oct 2017 02:09:45 GMT  
		Size: 12.3 MB (12305699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42e3c5cc19eb492816f1bb8206a0a6d265cb1e91a57e75a608470dfe658f9d78`  
		Last Modified: Tue, 10 Oct 2017 02:09:43 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e1a701a90e0df05baaa5dd63f82bfb17db63c556be9fbba7dbc77c20e7176c`  
		Last Modified: Tue, 10 Oct 2017 02:09:47 GMT  
		Size: 10.3 MB (10320977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3899ec746eabda5a13ab3c5b17373f4fad0b89faf9247b3eeae3cf623ceb4c0f`  
		Last Modified: Tue, 10 Oct 2017 02:09:44 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-cli` - linux; ppc64le

```console
$ docker pull php@sha256:a5b35bc1810d10286d31d32152df750d76865ccf84c01a7d8e524851eca7dd8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.2 MB (122210278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10090f06126c6cf05071c884d98d029d9c2342d9b860036581c77a17894a1948`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:56 GMT
ADD file:7edf73437495be24244c16841b563be06c15452963f41ac940fb5e105ed96027 in / 
# Mon, 09 Oct 2017 21:45:58 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 04:07:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Tue, 10 Oct 2017 04:15:55 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:15:58 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 10 Oct 2017 04:16:04 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 10 Oct 2017 04:16:06 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 04:16:08 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 10 Oct 2017 04:16:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 10 Oct 2017 04:16:14 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 10 Oct 2017 04:16:21 GMT
ENV PHP_VERSION=7.2.0RC3
# Tue, 10 Oct 2017 04:16:23 GMT
ENV PHP_URL=https://downloads.php.net/~remi/php-7.2.0RC3.tar.xz PHP_ASC_URL=https://downloads.php.net/~remi/php-7.2.0RC3.tar.xz.asc
# Tue, 10 Oct 2017 04:16:26 GMT
ENV PHP_SHA256=abe0a237f94837854f2cfd9c7dc99fbca2c817ae1d6194a514f29b463db36853 PHP_MD5=
# Tue, 10 Oct 2017 04:19:17 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 10 Oct 2017 04:19:22 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 10 Oct 2017 04:25:28 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 10 Oct 2017 04:25:33 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Tue, 10 Oct 2017 04:25:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 10 Oct 2017 04:25:41 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:c4860466fa1e6824151f4fa3a51ef0e9d7d3c3ba860e21d94e69988b65601260`  
		Last Modified: Mon, 09 Oct 2017 21:52:59 GMT  
		Size: 22.7 MB (22746217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfb8097bab01e8440d1743771d8b7c37921101ee460a3e1880c1b9376fd29b6`  
		Last Modified: Tue, 10 Oct 2017 06:41:32 GMT  
		Size: 77.2 MB (77213887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9fa7b786db024551422c50b0cfd7b94960ab00f9d33c81a3893614b0b0e2b1`  
		Last Modified: Tue, 10 Oct 2017 06:41:00 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a83fa805d65db4189c3103587dd65cda76176b1beb10ede0b785133bef9e01e`  
		Last Modified: Tue, 10 Oct 2017 06:41:02 GMT  
		Size: 12.3 MB (12305257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3a9e87ddc3a8ae38dbee914c4d627c48b5e914a2c5ef32f4f22da3a17ca880`  
		Last Modified: Tue, 10 Oct 2017 06:41:00 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75cf36a32dd4926014fa7eeb19a67de35f028fe608a40f933bca864c7b793691`  
		Last Modified: Tue, 10 Oct 2017 06:41:06 GMT  
		Size: 9.9 MB (9942029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192b7bffda8f40d1f2b0b6cc8f13415749b1036ec31c4b6d3c6db28b72cf021f`  
		Last Modified: Tue, 10 Oct 2017 06:41:00 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
