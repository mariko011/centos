## `joomla:3-apache`

```console
$ docker pull joomla@sha256:8962b3093989dca2131bcbd058cd233a8f78e4e7f56d5eef6481ae4e9ff8073f
```

-	Platforms:
	-	linux; amd64

### `joomla:3-apache` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (167998788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d19e30fb83cad3f57cf06b889b93c829c5645158838f3eb40ef94e8e35cf70cd`
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
# Tue, 25 Apr 2017 03:03:33 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 25 Apr 2017 03:03:34 GMT
ENV PHP_VERSION=5.6.30
# Tue, 25 Apr 2017 03:03:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Tue, 25 Apr 2017 03:03:36 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Tue, 25 Apr 2017 03:03:49 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 25 Apr 2017 03:03:50 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 25 Apr 2017 03:06:58 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Tue, 25 Apr 2017 03:07:10 GMT
COPY multi:2b7e23dbf0e975ef1ec1f186511e2789ab94e8c8734ca9fa8419c893f7357d6c in /usr/local/bin/ 
# Tue, 25 Apr 2017 03:07:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 25 Apr 2017 03:07:11 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 25 Apr 2017 03:07:12 GMT
WORKDIR /var/www/html
# Tue, 25 Apr 2017 03:07:13 GMT
EXPOSE 80/tcp
# Tue, 25 Apr 2017 03:07:13 GMT
CMD ["apache2-foreground"]
# Tue, 25 Apr 2017 10:39:41 GMT
MAINTAINER Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 25 Apr 2017 10:39:42 GMT
RUN a2enmod rewrite
# Tue, 25 Apr 2017 10:40:34 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Tue, 25 Apr 2017 10:40:41 GMT
RUN docker-php-ext-install mysqli
# Tue, 25 Apr 2017 10:40:47 GMT
RUN docker-php-ext-install mcrypt
# Tue, 25 Apr 2017 10:40:48 GMT
VOLUME [/var/www/html]
# Tue, 25 Apr 2017 10:40:48 GMT
ENV JOOMLA_VERSION=3.6.5
# Tue, 25 Apr 2017 10:40:49 GMT
ENV JOOMLA_SHA1=3143994bb5520c249961cbb5bc297c149399f4b7
# Tue, 25 Apr 2017 10:40:56 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Tue, 25 Apr 2017 10:40:57 GMT
COPY file:27ca5c0b8509d6681e80aa6cd05b2e2e68da2f59fb0ee7fa2aa581f55d362b6d in /entrypoint.sh 
# Tue, 25 Apr 2017 10:40:58 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Tue, 25 Apr 2017 10:40:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Apr 2017 10:40:59 GMT
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
	-	`sha256:206854c69eb74ef6ef251a17eab670993e42e7782a24e2e09ec838f4e29fc17d`  
		Last Modified: Tue, 25 Apr 2017 04:23:56 GMT  
		Size: 12.6 MB (12580047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e643dc9b09439ff3960ee95f984ec37f3017db06771ca4e9fcf1fbec07a2ce`  
		Last Modified: Tue, 25 Apr 2017 04:23:55 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9503d4d2386dc728ad0e8f848f933a9b492ad02087d0cbc845c0e0d7628d531`  
		Last Modified: Tue, 25 Apr 2017 04:23:58 GMT  
		Size: 9.5 MB (9537705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31ae3e5fa86a1aebaf5564789b46e2ba3b84be38554f618c75ba9b260e8df16`  
		Last Modified: Tue, 25 Apr 2017 04:23:55 GMT  
		Size: 2.0 KB (2027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fd64f7b16ffe80585f455e91f010dc0d67705a6e372a4bf707a50630627d7f`  
		Last Modified: Tue, 25 Apr 2017 04:23:55 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a770181daa36436f5373988d0d9013eee3b9e88cb1c5dd8f31b089a61b2a20d`  
		Last Modified: Tue, 25 Apr 2017 18:23:43 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11466437bfd269b8716952af38395a6c2b5a7303b002495f6d20b7d2c75febfb`  
		Last Modified: Tue, 25 Apr 2017 18:23:44 GMT  
		Size: 2.8 MB (2778473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da612f4422d6d0c9e93d117eb894c1770082f543496092c3a85fd1c2cdc0669`  
		Last Modified: Tue, 25 Apr 2017 18:23:42 GMT  
		Size: 58.0 KB (57958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7096f66038a7a9094496ccfbe1a177e937e188e893b8b61205a0e05debd19f97`  
		Last Modified: Tue, 25 Apr 2017 18:23:41 GMT  
		Size: 19.7 KB (19665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a10044d8186ebcf0a63165306ea6377a9856b7a1b3f090a3f4cc8e59763e1fda`  
		Last Modified: Tue, 25 Apr 2017 18:23:47 GMT  
		Size: 8.7 MB (8705420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:222ea986305e216fd4b58294c537434559105832437b977d5863a3a280468f8d`  
		Last Modified: Tue, 25 Apr 2017 18:23:41 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe263e85698eb423e7d46040aacfdad2ff2aabe8a894c29935e6f9996b6726d2`  
		Last Modified: Tue, 25 Apr 2017 18:23:40 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
