## `php:rc-apache`

```console
$ docker pull php@sha256:bcc899cd600b3a756121fcd92be80926578b3f7f99a334010fca7940e8296026
```

-	Platforms:
	-	linux; amd64

### `php:rc-apache` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.4 MB (134356196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:535d743e0dfdb8d9ad340c10f0f15fc7d5d5586e6abee37dab4f31c2e4ab1a31`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:05 GMT
ADD file:fa8dd9a679f473a9082dac89603a1ed7b6ad4cd20e8e996f0ac7b412d379761e in / 
# Mon, 24 Jul 2017 16:53:06 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:40:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Mon, 24 Jul 2017 18:40:55 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:40:55 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 24 Jul 2017 18:40:57 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 24 Jul 2017 18:49:07 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:49:07 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 24 Jul 2017 18:49:07 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 24 Jul 2017 18:49:08 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Mon, 24 Jul 2017 18:49:09 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Mon, 24 Jul 2017 18:49:09 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Mon, 24 Jul 2017 18:49:10 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Mon, 24 Jul 2017 18:49:10 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Mon, 24 Jul 2017 18:49:10 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Mon, 24 Jul 2017 18:49:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 24 Jul 2017 18:49:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 24 Jul 2017 18:49:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Mon, 24 Jul 2017 18:49:11 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 04 Aug 2017 18:14:06 GMT
ENV PHP_VERSION=7.2.0beta2
# Fri, 04 Aug 2017 18:14:07 GMT
ENV PHP_URL=http://downloads.php.net/~pollita/php-7.2.0beta2.tar.xz PHP_ASC_URL=http://downloads.php.net/~pollita/php-7.2.0beta2.tar.xz.asc
# Fri, 04 Aug 2017 18:14:07 GMT
ENV PHP_SHA256=0e2ac8e68c6fa92e9e14c610d78e162a711ba0e83987ecc9d02a6b898616c92d PHP_MD5=
# Fri, 04 Aug 2017 18:14:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 04 Aug 2017 18:14:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 04 Aug 2017 18:17:17 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 04 Aug 2017 18:18:40 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 04 Aug 2017 18:18:41 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 04 Aug 2017 18:18:41 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 04 Aug 2017 18:18:41 GMT
WORKDIR /var/www/html
# Fri, 04 Aug 2017 18:18:42 GMT
EXPOSE 80/tcp
# Fri, 04 Aug 2017 18:18:42 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:94ed0c431eb58b1c824715ac158d102bc78b5eb9d690579da5d8bc96b190eb67`  
		Last Modified: Mon, 24 Jul 2017 17:00:05 GMT  
		Size: 22.5 MB (22491744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d5410041793a53841210fc93a4c714d8310812f61b57e62b675dd60e828edb2`  
		Last Modified: Thu, 03 Aug 2017 23:13:19 GMT  
		Size: 82.8 MB (82751054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab2a160fa31ce699f9b0d1b20d8ec121c99ed00c03984596101736c9969a3f7`  
		Last Modified: Thu, 03 Aug 2017 23:12:55 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0c2a5cfcc2392ddb9ffa0fdbb5b957cbbed879d58288d60caab398d7165e8c`  
		Last Modified: Thu, 03 Aug 2017 23:14:44 GMT  
		Size: 2.7 MB (2700987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aceb3f272d53a3c5b20c49c81ca33030fe65fb26f359e1f4a684bae3e0f97adf`  
		Last Modified: Thu, 03 Aug 2017 23:14:42 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3de25874007543f0c688bb405e24acaa66655607cf91acd999439992da4d1c9d`  
		Last Modified: Thu, 03 Aug 2017 23:14:41 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4daf0ac9ece4c07898570879d670af6bb083be1f7cfecdb17020ff3d064327b9`  
		Last Modified: Thu, 03 Aug 2017 23:14:41 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f8ffffc3dd7eecf15842119e8478b9fee123eb3443cb3d3932a979465c9c6a`  
		Last Modified: Thu, 03 Aug 2017 23:14:39 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb682550e4b22c6a835b838a5fd2446d003d34a832d9e94aea173e4e968357ab`  
		Last Modified: Fri, 04 Aug 2017 19:18:15 GMT  
		Size: 12.2 MB (12150468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25d20cde1ef7080a14f87aac076289dde527024a92192cde37886f3cdfc8cd7`  
		Last Modified: Fri, 04 Aug 2017 19:18:12 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e322a5e98518d3b1145ae063556ec290982b85132e480300aeb7e3ded28df301`  
		Last Modified: Fri, 04 Aug 2017 19:18:16 GMT  
		Size: 14.3 MB (14255880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe58047bc87356a6495ff4f29885e0a456b28f01b86b74e7ab76b3666e50282b`  
		Last Modified: Fri, 04 Aug 2017 19:18:13 GMT  
		Size: 2.1 KB (2121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48a67091273aad79391f1d93655df89d75b2f39820270d360360480a173bf0c`  
		Last Modified: Fri, 04 Aug 2017 19:18:13 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
