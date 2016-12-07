## `drupal:latest`

```console
$ docker pull drupal@sha256:0bdf3c47d2096466269690a33982d08ef79cf6aa787f8d98cd57dd92accd8827
```

-	Platforms:
	-	linux; amd64

### `drupal:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.4 MB (176355934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b03a29b7f22cd48119d98046f505218f471849b1011e010eca57a7e82fc22c31`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 23:16:24 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 08 Nov 2016 23:16:53 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:16:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 08 Nov 2016 23:16:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 08 Nov 2016 23:22:45 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 08 Nov 2016 23:22:45 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 08 Nov 2016 23:22:46 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 08 Nov 2016 23:22:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 08 Nov 2016 23:22:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 08 Nov 2016 23:22:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 08 Nov 2016 23:22:50 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:49 GMT
ENV CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 06 Dec 2016 21:26:50 GMT
ENV LDFLAGS=-Wl,-O1 -Wl,--hash-style=both
# Tue, 06 Dec 2016 21:52:24 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763
# Tue, 06 Dec 2016 21:52:24 GMT
ENV PHP_VERSION=7.0.13
# Tue, 06 Dec 2016 21:52:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.13.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.13.tar.xz.asc/from/this/mirror
# Tue, 06 Dec 2016 21:52:25 GMT
ENV PHP_SHA256=357ba7f93975d7d836abed0852dc3ed96a988af539e87750613294cbee82f1bf PHP_MD5=eb117bf1d1efc99c522f132b265a3402
# Tue, 06 Dec 2016 21:52:34 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 06 Dec 2016 21:52:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Dec 2016 21:54:49 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 07 Dec 2016 19:12:04 GMT
COPY multi:02856938f72d54124bed9d5b55ba70223cef4d18c06d2738da5fb9713b27e77b in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:04 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Wed, 07 Dec 2016 19:12:05 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 19:12:05 GMT
EXPOSE 80/tcp
# Wed, 07 Dec 2016 19:12:06 GMT
CMD ["apache2-foreground"]
# Wed, 07 Dec 2016 21:19:39 GMT
RUN a2enmod rewrite
# Wed, 07 Dec 2016 21:23:33 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev 	&& rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip
# Wed, 07 Dec 2016 21:23:34 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 07 Dec 2016 21:23:34 GMT
WORKDIR /var/www/html
# Wed, 07 Dec 2016 21:23:34 GMT
ENV DRUPAL_VERSION=8.2.3
# Wed, 07 Dec 2016 21:23:35 GMT
ENV DRUPAL_MD5=683ddc33077bb1f7cc795607d114144e
# Wed, 07 Dec 2016 21:23:42 GMT
RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz 	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - 	&& tar -xz --strip-components=1 -f drupal.tar.gz 	&& rm drupal.tar.gz 	&& chown -R www-data:www-data sites modules themes
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e95c6053af006e565f05aa87acc36a1e1dbdf1a7ac29c0de4739bfc0e40ef`  
		Last Modified: Tue, 08 Nov 2016 23:21:22 GMT  
		Size: 77.6 MB (77591280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6243d5c57a349bb65b8641277fdb52b01726cbeadf307cf33a0293e6a2a17f6c`  
		Last Modified: Tue, 08 Nov 2016 23:21:00 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f6d38a33bac61f5c37fce97cc80fc61ee6ffe8d8a7da5d30cc2733aaebb7e`  
		Last Modified: Tue, 08 Nov 2016 23:25:38 GMT  
		Size: 2.8 MB (2849357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ea5361568cb6486c878f80ba5844797b34da7b824fdb4eb5ecbaa05416e503`  
		Last Modified: Tue, 08 Nov 2016 23:25:37 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81f18e7771919bad862147cb2c038a59fab10d523862f0ae5ff9417137dfd58`  
		Last Modified: Tue, 08 Nov 2016 23:25:36 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dbc878ca0c93ba275fdb0cbc79169d4b1b86735d24b8577ea529daa953b333`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195935e4100b1050f83184b119a90f6ca23b3b03954773ea7de354a629652673`  
		Last Modified: Tue, 08 Nov 2016 23:25:35 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24b0dafb36572ce47ab88e0c6d532fa2c3eec66ba3bd2cc88ea01d5e29720df`  
		Last Modified: Tue, 06 Dec 2016 22:43:54 GMT  
		Size: 12.7 MB (12659541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab31d294c829820a1620eaa1a453d7b5d981a050f3f40d51113d5a25d7091104`  
		Last Modified: Tue, 06 Dec 2016 22:43:52 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453ccaf3c389ed7b44f712471ddac1c70ef5f2fc7323d6bf6c520db2a04bf56a`  
		Last Modified: Tue, 06 Dec 2016 22:43:56 GMT  
		Size: 12.8 MB (12781692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7631d7c23a7245f11e4ba71f65403f8470c85ac6824ce02b5149037ed4b71f7f`  
		Last Modified: Wed, 07 Dec 2016 19:23:03 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86d692f4cc3392f13fc26f91eb0f66c54296d03c5ecba7f97426effbccb3458`  
		Last Modified: Wed, 07 Dec 2016 19:23:03 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78bef1dde5c37439f166b780afa71556034060bc7d40fc7cc981175bf944533c`  
		Last Modified: Wed, 07 Dec 2016 21:25:29 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae473d6d5dcbcb7887ea7104f3ff1e4034758530b3928a49871f990eebe8ed65`  
		Last Modified: Wed, 07 Dec 2016 21:27:16 GMT  
		Size: 7.0 MB (7005364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b69eb0f239a92fed8052b24fa1118741f59dd99d9fb7caab35ac5d579f9e1b3`  
		Last Modified: Wed, 07 Dec 2016 21:27:14 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f14c137813e29fa7b0399d8d79fdcc60829bfe31dd5cc8638f2e98a4a977e7f1`  
		Last Modified: Wed, 07 Dec 2016 21:27:20 GMT  
		Size: 12.1 MB (12105631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
