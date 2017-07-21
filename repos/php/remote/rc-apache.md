## `php:rc-apache`

```console
$ docker pull php@sha256:7400e4983c4e8539b2f6e16ec3dff893e82776de5ae01528933c0587b813d062
```

-	Platforms:
	-	linux; amd64

### `php:rc-apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142390444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1de25f751b82bb837a5423c00198552cc2bb87fce2df69b65654abab1ceff663`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:25:26 GMT
ADD file:54d82a3a8fe8d47aaa58650783f2a7198891e89ca95d6e7455f8999651c2fc98 in / 
# Tue, 20 Jun 2017 20:25:27 GMT
CMD ["bash"]
# Thu, 13 Jul 2017 16:42:24 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 13 Jul 2017 16:42:47 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 13 Jul 2017 16:42:48 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 13 Jul 2017 16:42:49 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 13 Jul 2017 16:58:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 13 Jul 2017 16:58:32 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 13 Jul 2017 16:58:33 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 13 Jul 2017 16:58:34 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 13 Jul 2017 16:58:35 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 13 Jul 2017 16:58:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 13 Jul 2017 16:58:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 13 Jul 2017 16:58:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 13 Jul 2017 16:58:53 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 13 Jul 2017 16:58:53 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 13 Jul 2017 16:58:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 13 Jul 2017 16:58:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 13 Jul 2017 16:58:55 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 21 Jul 2017 00:05:44 GMT
ENV PHP_VERSION=7.2.0beta1
# Fri, 21 Jul 2017 00:05:45 GMT
ENV PHP_URL=http://downloads.php.net/~pollita/php-7.2.0beta1.tar.xz PHP_ASC_URL=http://downloads.php.net/~pollita/php-7.2.0beta1.tar.xz.asc
# Fri, 21 Jul 2017 00:05:45 GMT
ENV PHP_SHA256=8d7d839cb20ba48f8c947ef44274ef625630f06c7e6d13f3f64b9d17205324db PHP_MD5=
# Fri, 21 Jul 2017 00:05:59 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg2 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 21 Jul 2017 00:06:00 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 21 Jul 2017 00:08:35 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 21 Jul 2017 00:08:36 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 21 Jul 2017 00:08:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 21 Jul 2017 00:08:37 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 21 Jul 2017 00:08:38 GMT
WORKDIR /var/www/html
# Fri, 21 Jul 2017 00:08:38 GMT
EXPOSE 80/tcp
# Fri, 21 Jul 2017 00:08:39 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:e6e142a992028745fdbaf21d647cd3c61086cd0c1b50a25f07a5d7dbaa446cdd`  
		Last Modified: Tue, 20 Jun 2017 20:56:34 GMT  
		Size: 22.5 MB (22501182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8bdf29dc22569e238160291a4ee2bb260b1ecf7e7dd8e70f7481e815cf02313`  
		Last Modified: Thu, 13 Jul 2017 18:57:11 GMT  
		Size: 82.7 MB (82749838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6350440539d8d9520f642a3873ff8a0e755bfc4b4f67bef70b3fe61fbf0f7fa`  
		Last Modified: Thu, 13 Jul 2017 18:56:50 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d407455a56d43255c71d85707c9006a8f973e0a8f47e52d452806051065e3fa`  
		Last Modified: Thu, 13 Jul 2017 18:59:05 GMT  
		Size: 2.7 MB (2700944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557f8fbe77e365f6f13818281b1bdd049fc16fafacfb2fadd1c52c38c790a7cc`  
		Last Modified: Thu, 13 Jul 2017 18:59:04 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31621cfefab09a4069c0fb276cc92ca63bc05ee39522767aa708f2f259b41488`  
		Last Modified: Thu, 13 Jul 2017 18:59:04 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978b98d4d9b5fc04091b1eb0928a4e393d8c862b91918063cb424b735f3455bb`  
		Last Modified: Thu, 13 Jul 2017 18:59:03 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46255856e39c57c5b49aadc8fb3d69ec64d7014e4ddd97a0f2cf66516d08e723`  
		Last Modified: Thu, 13 Jul 2017 18:59:01 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd2cd9a6a9814a039349ce6ac8e815485095c61cc8e18020a10c07e277ffccb`  
		Last Modified: Fri, 21 Jul 2017 00:29:08 GMT  
		Size: 20.2 MB (20194940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:706549a72b41241c136c4dd27bad57934f6a9ef2351f7875b7cc918a36cf7b69`  
		Last Modified: Fri, 21 Jul 2017 00:29:06 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:601d0d8dcb7d33c9f241da9eff82bd3787dc8ac1c9868341d59534c3d089ccf7`  
		Last Modified: Fri, 21 Jul 2017 00:29:10 GMT  
		Size: 14.2 MB (14237478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20dada816a0a214ad6f199465eb14cb29bdbf5891aebe764989efaeb2fe7bef`  
		Last Modified: Fri, 21 Jul 2017 00:29:06 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8baf5bb91b869cbb94d4a3033ad6269c23cf40d313cf7cdf37830a3b5e6916c1`  
		Last Modified: Fri, 21 Jul 2017 00:29:06 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
