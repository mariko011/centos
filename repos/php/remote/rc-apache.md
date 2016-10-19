## `php:rc-apache`

```console
$ docker pull php@sha256:be7734f60891d4ea30e1b02d06626167b54235c635714778c23bda9b10da6b2a
```

-	Platforms:
	-	linux; amd64

### `php:rc-apache` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165187017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef28027ca8e6171148e4b38120223b26821893837620d6bdb86399041510141a`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 21:19:23 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 23 Sep 2016 21:19:52 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:19:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 23 Sep 2016 21:19:53 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 23 Sep 2016 21:24:54 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 23 Sep 2016 21:24:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 23 Sep 2016 21:24:55 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 23 Sep 2016 21:24:56 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 23 Sep 2016 21:24:57 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 23 Sep 2016 21:24:58 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 23 Sep 2016 21:24:58 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 23 Sep 2016 21:24:59 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 23 Sep 2016 21:58:24 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0
# Fri, 30 Sep 2016 23:54:37 GMT
ENV PHP_VERSION=7.1.0RC3
# Tue, 18 Oct 2016 21:21:54 GMT
ENV PHP_URL=http://downloads.php.net/~davey/php-7.1.0RC3.tar.xz PHP_ASC_URL=http://downloads.php.net/~davey/php-7.1.0RC3.tar.xz.asc
# Tue, 18 Oct 2016 21:21:55 GMT
ENV PHP_SHA256= PHP_MD5=2bfa0ad51de4fce87d0175d655f6bf69
# Tue, 18 Oct 2016 21:22:08 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 18 Oct 2016 21:22:08 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 18 Oct 2016 21:24:42 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 18 Oct 2016 21:24:43 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/ 
# Tue, 18 Oct 2016 21:24:43 GMT
COPY file:3014772111b66da3129ca8caeafdd1dcfa9a3bf518f015ae9acc3c7b9b1b44c9 in /usr/local/bin/ 
# Tue, 18 Oct 2016 21:24:44 GMT
WORKDIR /var/www/html
# Tue, 18 Oct 2016 21:24:44 GMT
EXPOSE 80/tcp
# Tue, 18 Oct 2016 21:24:44 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de059afc6b5da83892f482eea8b08dc72f8fbe69282c72b533116f1dd3689426`  
		Last Modified: Fri, 23 Sep 2016 21:23:50 GMT  
		Size: 77.6 MB (77592141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1ac0143753de213aff9a45bb2b68b28a437ec3f015efa7f35622491d5c06ff`  
		Last Modified: Fri, 23 Sep 2016 21:23:27 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05dcf7da5898c6779d2972c35fd7695512c8d3639d4316f6c5fb5c92cf7a587`  
		Last Modified: Fri, 23 Sep 2016 21:27:38 GMT  
		Size: 2.8 MB (2849086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e38500c090694a52f13ac803f1786e1b6eaf47d8efa2c5129d5db2ef52ebbf1`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9cba9364455184cd78edc0d317497664453686c65153710dfd4e9cce5ead08e`  
		Last Modified: Fri, 23 Sep 2016 21:27:34 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc53f7ef49062cf4ce2d2a03d7d282c1c79cc3de048012605d5e53abe748c83b`  
		Last Modified: Fri, 23 Sep 2016 21:27:36 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6a63a6d9035b4a9307637baf440ceb1cda513c63cee3dbf7f29b406eea9b5b`  
		Last Modified: Fri, 23 Sep 2016 21:27:33 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2d040cac599c3029f2eaef04bc6e0b936bfcbf94c16a93eadf5465610664be`  
		Last Modified: Tue, 18 Oct 2016 22:38:08 GMT  
		Size: 12.9 MB (12886719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d5c6267e970289a38db1c0e9fc4c78af7ea911396d049342a91b54e9ffcb42`  
		Last Modified: Tue, 18 Oct 2016 22:38:06 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744ec8950ca19f636394c7ac65cf36aee05fed2e92d6d78307ca1fd7c0ce15db`  
		Last Modified: Tue, 18 Oct 2016 22:38:13 GMT  
		Size: 20.5 MB (20499242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a701759a001bc0bae9f98ef3e2bf7a815dd88a43faf2643226a2936061e50b4f`  
		Last Modified: Tue, 18 Oct 2016 22:38:05 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151c4d660ac7773528ae46d4c775e803767694beb4d9007fdda4fed049a7cba2`  
		Last Modified: Tue, 18 Oct 2016 22:38:06 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
