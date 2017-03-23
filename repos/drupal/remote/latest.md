## `drupal:latest`

```console
$ docker pull drupal@sha256:13c1ef6e91ff9d21dd7020eba341f1c14fc7814c0fe1abcc57ae7325ca41cf97
```

-	Platforms:
	-	linux; amd64

### `drupal:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.0 MB (172024076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9366c791423625811926b3df5603bd1ddd963871112ab10eaa6a442e1ec2c25e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 22:55:44 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 21 Mar 2017 22:56:13 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:56:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 21 Mar 2017 22:56:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 21 Mar 2017 22:59:49 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:59:49 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 21 Mar 2017 22:59:49 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 21 Mar 2017 22:59:50 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 21 Mar 2017 22:59:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 21 Mar 2017 22:59:52 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 21 Mar 2017 22:59:53 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 21 Mar 2017 22:59:54 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 21 Mar 2017 22:59:54 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 21 Mar 2017 22:59:55 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 21 Mar 2017 23:27:13 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 21 Mar 2017 23:27:13 GMT
ENV PHP_VERSION=7.0.17
# Tue, 21 Mar 2017 23:27:14 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.17.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.17.tar.xz.asc/from/this/mirror
# Tue, 21 Mar 2017 23:27:14 GMT
ENV PHP_SHA256=471c16fcdd6a5e1a37199e97bcaeea6117626229785185be7532aaa7c6ee04be PHP_MD5=549df69a7a3c79d49fcafe2097579d9e
# Tue, 21 Mar 2017 23:27:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Mar 2017 23:27:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:43 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 21 Mar 2017 23:29:44 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 21 Mar 2017 23:29:45 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:29:45 GMT
WORKDIR /var/www/html
# Tue, 21 Mar 2017 23:29:46 GMT
EXPOSE 80/tcp
# Tue, 21 Mar 2017 23:29:46 GMT
CMD ["apache2-foreground"]
# Wed, 22 Mar 2017 18:07:08 GMT
RUN a2enmod rewrite
# Wed, 22 Mar 2017 18:09:45 GMT
RUN set -ex 	&& buildDeps=' 		libjpeg62-turbo-dev 		libpng12-dev 		libpq-dev 	' 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd 		--with-jpeg-dir=/usr 		--with-png-dir=/usr 	&& docker-php-ext-install -j "$(nproc)" gd mbstring opcache pdo pdo_mysql pdo_pgsql zip 	&& apt-mark manual 		libjpeg62-turbo 		libpq5 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 18:09:46 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 22 Mar 2017 18:09:46 GMT
WORKDIR /var/www/html
# Wed, 22 Mar 2017 18:09:47 GMT
ENV DRUPAL_VERSION=8.2.7
# Wed, 22 Mar 2017 18:09:47 GMT
ENV DRUPAL_MD5=10b1669f750a9996096e76059c157b9a
# Wed, 22 Mar 2017 18:09:54 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fe8fbc743a3c84e20d43e0182ec42fa98d63745f81abae17307558e542e3cf`  
		Last Modified: Wed, 22 Mar 2017 23:53:42 GMT  
		Size: 77.7 MB (77681981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d1a8d304ab1e86f676f962451a74e23764dcc6c68021f0ad77f3ace17f4c5f`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf3547d9b739f2f04846520e0d804358ac8bb09d8fe087b9b22776466591147`  
		Last Modified: Wed, 22 Mar 2017 23:53:17 GMT  
		Size: 2.9 MB (2858770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1004db2760ff505c8cb29d8b6e0c3807eb12a9c4f75dfe899ec12330443ae4c0`  
		Last Modified: Wed, 22 Mar 2017 23:53:16 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e2d66a547e35efdd6f59963e788cec2b96be1c0a95952c5760430c405c6466`  
		Last Modified: Wed, 22 Mar 2017 23:53:15 GMT  
		Size: 433.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfaa62c234a9168aa1e9a43ad031162a50b71dc0ebff0a48c05b33497a93d51`  
		Last Modified: Wed, 22 Mar 2017 23:53:14 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ce8807f4d1a92b890a7878d0f6aadef4fe718b2d1a07b9c98ed585e87dc2e9`  
		Last Modified: Wed, 22 Mar 2017 23:53:13 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707697960803481c5a91fc0d3857c7313aec10cb08fa72369bba1a249a9cd8b1`  
		Last Modified: Thu, 23 Mar 2017 17:33:28 GMT  
		Size: 12.7 MB (12718333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581043ffa58eb96796f52ce3c36fab8fe5d9ea6c2ce68bfbf35bf80719bf98cf`  
		Last Modified: Thu, 23 Mar 2017 17:33:25 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12c4532e141130c5cf01d46f381da53ac7e5cb06870965059adc9ee75bf4127`  
		Last Modified: Thu, 23 Mar 2017 17:33:29 GMT  
		Size: 13.4 MB (13382566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51dcb88cf1804e730a57bcf9d1471003c8555b15f7791a42daadea6fa6c15d1e`  
		Last Modified: Thu, 23 Mar 2017 17:33:22 GMT  
		Size: 2.0 KB (2022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7985a51f51b4851fd99471e4ec1aecf55962f650862bbc4face628efb9bda7`  
		Last Modified: Thu, 23 Mar 2017 17:33:21 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01b833ec89726e1c98b08699a5c9649c68924a327cd9341a493707a49f11bb2`  
		Last Modified: Thu, 23 Mar 2017 17:33:21 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7112e7fb30b634a37637e469462b8892874e30f0ff383346832f55b0b0b60a`  
		Last Modified: Thu, 23 Mar 2017 17:35:46 GMT  
		Size: 1.8 MB (1757724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d14565c7116efb40f07ae5e2fd2f1e23111e53f639a9d8fa170ca9a3530bcf`  
		Last Modified: Thu, 23 Mar 2017 17:35:46 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3028d0b0b1184feb33a422a82657543f56270a3a8e3d2e9dec6b137794b0f9`  
		Last Modified: Thu, 23 Mar 2017 17:35:59 GMT  
		Size: 12.2 MB (12179648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
