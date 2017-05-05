## `joomla:3-apache-php7`

```console
$ docker pull joomla@sha256:3369a9eb487852d64d32644bc029fc0c24315fc64f60e748a9e17b5d552b472f
```

-	Platforms:
	-	linux; amd64

### `joomla:3-apache-php7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.7 MB (172693420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94341cc76bffadf40218e744bcd63de782ab9eb921d0f768ef8f9309cfc2461f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 02:53:21 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Apr 2017 02:53:59 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 25 Apr 2017 02:54:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Apr 2017 02:54:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 25 Apr 2017 03:02:14 GMT
RUN apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 03:02:23 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 25 Apr 2017 03:02:24 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 25 Apr 2017 03:02:25 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 25 Apr 2017 03:02:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 25 Apr 2017 03:02:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 25 Apr 2017 03:02:50 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 25 Apr 2017 03:03:08 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 25 Apr 2017 03:03:09 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 25 Apr 2017 03:03:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:03:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 25 Apr 2017 03:03:32 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 25 Apr 2017 03:43:09 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 25 Apr 2017 03:43:10 GMT
ENV PHP_VERSION=7.0.18
# Tue, 25 Apr 2017 03:43:11 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.18.tar.xz.asc/from/this/mirror
# Tue, 25 Apr 2017 03:43:11 GMT
ENV PHP_SHA256=679cffcdf2495dee5ab89bda595e678a1096136678b3a1d08f1f57ba347c234d PHP_MD5=a578c55644d233635d2caa96c3a6f9c7
# Tue, 25 Apr 2017 03:43:34 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 25 Apr 2017 03:43:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 25 Apr 2017 03:48:20 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Fri, 05 May 2017 20:40:48 GMT
COPY multi:2322553de3ca67507508fc2dce30f88e38a62b59394dc81c4180177a850ae993 in /usr/local/bin/ 
# Fri, 05 May 2017 20:40:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 05 May 2017 20:40:49 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 05 May 2017 20:40:50 GMT
WORKDIR /var/www/html
# Fri, 05 May 2017 20:40:51 GMT
EXPOSE 80/tcp
# Fri, 05 May 2017 20:40:51 GMT
CMD ["apache2-foreground"]
# Fri, 05 May 2017 22:30:30 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Fri, 05 May 2017 22:30:32 GMT
RUN a2enmod rewrite
# Fri, 05 May 2017 22:30:56 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Fri, 05 May 2017 22:31:05 GMT
RUN docker-php-ext-install mysqli
# Fri, 05 May 2017 22:31:11 GMT
RUN docker-php-ext-install mcrypt
# Fri, 05 May 2017 22:31:29 GMT
RUN docker-php-ext-install zip
# Fri, 05 May 2017 22:31:30 GMT
VOLUME [/var/www/html]
# Fri, 05 May 2017 22:31:31 GMT
ENV JOOMLA_VERSION=3.7.0
# Fri, 05 May 2017 22:31:32 GMT
ENV JOOMLA_SHA1=4ad7d7c88aae9d1f86c04dae1a497b6f300f15d2
# Fri, 05 May 2017 22:31:39 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 05 May 2017 22:31:40 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Fri, 05 May 2017 22:31:41 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Fri, 05 May 2017 22:31:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 05 May 2017 22:31:42 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b8a88a0af049efa3c92b1c96a947f501ec7c751a568b0d3881b3c757a184a3`  
		Last Modified: Tue, 25 Apr 2017 04:02:19 GMT  
		Size: 78.8 MB (78849205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78c922dd678a8a2c701087b1ac1381c50cb83d0bf5fc1c55c86f1ce22c7c49f`  
		Last Modified: Tue, 25 Apr 2017 04:01:55 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6680e61553d3560bbea1e9216874edb5343ee5de4ac18c563d6c172b99ad8a29`  
		Last Modified: Tue, 25 Apr 2017 04:06:37 GMT  
		Size: 2.9 MB (2912027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1ddb74fbec50907d2cdf9dc95054800b07cf13b96c21d8179c57c0e9bd1f3c`  
		Last Modified: Tue, 25 Apr 2017 04:06:35 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048af0e095264aca62e46b93162f4b66446bc1757207ab9eef0daf7db10b02bc`  
		Last Modified: Tue, 25 Apr 2017 04:06:37 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11ab675603929db5ec0fc46e5515d12e15fb78cc56c54fe03fe0f54536aafb3`  
		Last Modified: Tue, 25 Apr 2017 04:06:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b684f7dda232126ac8d2bacfb38b9d65cbf2eec0c4f0e832dfe88f1e9f2d38c`  
		Last Modified: Tue, 25 Apr 2017 04:06:32 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437114e6ad078a60192567f76c658612d61c47565b433c0a4b71a75bdbd98e79`  
		Last Modified: Tue, 25 Apr 2017 04:16:14 GMT  
		Size: 12.7 MB (12723585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716c40fa7804eb5cae82b761ac207f1de4d8e26ab6b7826666b32c4502a848db`  
		Last Modified: Tue, 25 Apr 2017 04:16:12 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9830e8e32b8aa4daf76275a0b5c6f4fd9f2ed6b362f3e414de715f7f0dc961af`  
		Last Modified: Tue, 25 Apr 2017 04:16:15 GMT  
		Size: 13.7 MB (13723132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2297c91f5866573e07ce5b4d2e139d0b99a55cbb359a9992430df69e8c2b4a9d`  
		Last Modified: Fri, 05 May 2017 20:58:27 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a936b327b0e2098467baf267c21223887a16ce4dce80fb5f3c3ecc57cef5d10d`  
		Last Modified: Fri, 05 May 2017 20:58:27 GMT  
		Size: 892.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7469774d47afc6bea53621cbc722bbf51129a5c7b957aa2bb4494b1daae70bd`  
		Last Modified: Fri, 05 May 2017 22:37:52 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f8ae12c3d47ea9e8ae1b0c2ce54dfb888ada72c435bd99da37edfa8c23b42b`  
		Last Modified: Fri, 05 May 2017 22:37:52 GMT  
		Size: 2.8 MB (2773232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99b86523d73b98bd811f4b0d8fc3a0536d85a96555092a539a85172f4afbc36`  
		Last Modified: Fri, 05 May 2017 22:37:52 GMT  
		Size: 56.3 KB (56268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0fb4e53afc17e6b1e181b1fea242476fda8c4c23efe043d59bb1e4ddaab5d80`  
		Last Modified: Fri, 05 May 2017 22:37:52 GMT  
		Size: 18.2 KB (18248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5418d1a29a033fbc4a715ffc6837520fc098e066ad50404c06969fa5a2c944d`  
		Last Modified: Fri, 05 May 2017 22:37:51 GMT  
		Size: 72.7 KB (72715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e28c4ddbac28b7ba82a4f6e2da873a3835cad679fd1227d05716d3c64db2ed6`  
		Last Modified: Fri, 05 May 2017 22:37:53 GMT  
		Size: 9.0 MB (9006702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c7a730a18bfd73d9b3f03588545ca0c59c769f92f1aee47a5f39eeda6537a05`  
		Last Modified: Fri, 05 May 2017 22:37:51 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84759aac5cdff09f0d2811a6c78c768cc48d7a6202a04ba8daa197bdd16865e4`  
		Last Modified: Fri, 05 May 2017 22:37:51 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
