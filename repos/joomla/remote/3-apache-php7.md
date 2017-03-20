## `joomla:3-apache-php7`

```console
$ docker pull joomla@sha256:ffabbbde92fcaa0fbbd629782b3645f929b3d0a750d3d58be682527099a6389e
```

-	Platforms:
	-	linux; amd64

### `joomla:3-apache-php7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.4 MB (169351812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a855dfbac2af19a8ba570bfbb23a1ef94e4675d1a16e0b65522469256a8c999`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 17:27:47 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 28 Feb 2017 17:28:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:28:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 28 Feb 2017 17:28:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 28 Feb 2017 17:31:41 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 28 Feb 2017 17:31:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 28 Feb 2017 17:31:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 28 Feb 2017 17:31:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 28 Feb 2017 17:31:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 28 Feb 2017 17:31:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 28 Feb 2017 17:31:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 28 Feb 2017 17:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 28 Feb 2017 17:58:53 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 17 Mar 2017 22:44:02 GMT
ENV PHP_VERSION=7.0.17
# Fri, 17 Mar 2017 22:44:03 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.17.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.17.tar.xz.asc/from/this/mirror
# Fri, 17 Mar 2017 22:44:03 GMT
ENV PHP_SHA256=471c16fcdd6a5e1a37199e97bcaeea6117626229785185be7532aaa7c6ee04be PHP_MD5=549df69a7a3c79d49fcafe2097579d9e
# Fri, 17 Mar 2017 22:44:10 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 17 Mar 2017 22:44:11 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 17 Mar 2017 22:46:24 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 17 Mar 2017 22:46:25 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Fri, 17 Mar 2017 22:46:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 17 Mar 2017 22:46:26 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 17 Mar 2017 22:46:26 GMT
WORKDIR /var/www/html
# Fri, 17 Mar 2017 22:46:27 GMT
EXPOSE 80/tcp
# Fri, 17 Mar 2017 22:46:27 GMT
CMD ["apache2-foreground"]
# Mon, 20 Mar 2017 18:56:34 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Mon, 20 Mar 2017 18:56:35 GMT
RUN a2enmod rewrite
# Mon, 20 Mar 2017 18:57:00 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Mon, 20 Mar 2017 18:57:08 GMT
RUN docker-php-ext-install mysqli
# Mon, 20 Mar 2017 18:57:14 GMT
RUN docker-php-ext-install mcrypt
# Mon, 20 Mar 2017 18:57:15 GMT
VOLUME [/var/www/html]
# Mon, 20 Mar 2017 18:57:16 GMT
ENV JOOMLA_VERSION=3.6.5
# Mon, 20 Mar 2017 18:57:16 GMT
ENV JOOMLA_SHA1=3143994bb5520c249961cbb5bc297c149399f4b7
# Mon, 20 Mar 2017 18:57:24 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Mon, 20 Mar 2017 18:57:25 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Mon, 20 Mar 2017 18:57:26 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Mon, 20 Mar 2017 18:57:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Mar 2017 18:57:27 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16328c296404224e6ea0407465417f60cbc7695e30c96cc8c334fa9760d454db`  
		Last Modified: Wed, 01 Mar 2017 16:51:36 GMT  
		Size: 77.6 MB (77607519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3c97761df63da7ca7ba549d5ad5f3011ae08e34bb95487537b5431229665db`  
		Last Modified: Wed, 01 Mar 2017 16:51:10 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1d4f4f29ebc2f70d7635de80ee7606af4f343b9cb7e9ee0d36933bc55661c6`  
		Last Modified: Wed, 01 Mar 2017 16:55:14 GMT  
		Size: 2.9 MB (2858700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530750fc50197500ff2f8c1bd56307699ecea9290d56b39e195f96e5973cd58f`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e9c6c72db740f6e8cbf4bb354bbcfd29977196b8870b31805a7bbd7b87f7ca`  
		Last Modified: Wed, 01 Mar 2017 16:55:12 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de476ce7ac8744bfa03593c36c7526fa0f9fe955d5984b40a35821f48f68c674`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad13cbbc7d8268b8280f584ba5df97fac9c3988b427c857a7ac5ee34337cbac`  
		Last Modified: Wed, 01 Mar 2017 16:55:11 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6512e65987f66a2d9bec39c2f0435eee7af4234da112a902fa73c3545156dc38`  
		Last Modified: Fri, 17 Mar 2017 23:19:00 GMT  
		Size: 12.7 MB (12718208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2234e2e98c776fca5d6af5bce098141718aeb91f256faacb481c66ee6b73ceb1`  
		Last Modified: Fri, 17 Mar 2017 23:18:58 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2aced822169430d43fc0687b19f047182ca0e1791cc5dd33a5af4a9fa14d39`  
		Last Modified: Fri, 17 Mar 2017 23:19:02 GMT  
		Size: 13.3 MB (13311413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08bc60e12575a6945c8e13b8f95a538395680895b9867c6b0e9487b9e3d187d`  
		Last Modified: Fri, 17 Mar 2017 23:18:58 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bb9e8872716600266eaaf9623606daf5de00817e13cc6b4f1613963e5e2314c`  
		Last Modified: Fri, 17 Mar 2017 23:18:57 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b03b27e230ca8af927f28bf95c5ad2331cfb55cd7f6599a472cebc1b7068286`  
		Last Modified: Mon, 20 Mar 2017 19:01:18 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3109dd63c6cd5984d265461fc660a3388ad05c8d50336da518082d4144d73f11`  
		Last Modified: Mon, 20 Mar 2017 19:01:18 GMT  
		Size: 2.7 MB (2736488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624a801cac419c50251fed90166c50521a2f33916004d3247a11a0d4affa39b0`  
		Last Modified: Mon, 20 Mar 2017 19:01:15 GMT  
		Size: 55.3 KB (55256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb8167ec3736fc3bc1d5ef85efdb74dd79c45be58c4b2b72feef640c17d3258`  
		Last Modified: Mon, 20 Mar 2017 19:01:15 GMT  
		Size: 17.9 KB (17869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf82b137456374f6595e6919fca48fd135fcc0552c78385ff552362ebe5986d`  
		Last Modified: Mon, 20 Mar 2017 19:01:19 GMT  
		Size: 8.7 MB (8674980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5739af944cebef02d3266e19fc4467cb0c17093ae7a4d6d186a0aa8728a29932`  
		Last Modified: Mon, 20 Mar 2017 19:01:15 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22aa7f2a43e29d92d71e4e48861a2b545a71b6e219ea35d39bb6cdf3759a31a`  
		Last Modified: Mon, 20 Mar 2017 19:01:15 GMT  
		Size: 604.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
