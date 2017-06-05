## `piwik:apache`

```console
$ docker pull piwik@sha256:8237f7a79c4acda3b1a0703ab5b0b75b88f9e457072101810db7465ca4f52283
```

-	Platforms:
	-	linux; amd64

### `piwik:apache` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.4 MB (195394039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0df79e410e3b93d4525214f36a1bab684f20b406c59c7e8b95173c93413d29ef`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Fri, 12 May 2017 23:58:16 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Fri, 12 May 2017 23:58:56 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 12 May 2017 23:58:59 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 12 May 2017 23:59:00 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 13 May 2017 00:10:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 13 May 2017 00:10:40 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 13 May 2017 00:10:40 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 13 May 2017 00:10:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Sat, 13 May 2017 00:10:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 13 May 2017 00:10:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Sat, 13 May 2017 00:10:46 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 13 May 2017 00:10:47 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 13 May 2017 00:10:48 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Sat, 13 May 2017 00:10:49 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:10:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:10:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 13 May 2017 01:19:12 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 13 May 2017 01:19:13 GMT
ENV PHP_VERSION=5.6.30
# Sat, 13 May 2017 01:19:13 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Sat, 13 May 2017 01:19:14 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Sat, 13 May 2017 01:19:25 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 13 May 2017 01:19:26 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 02 Jun 2017 23:34:46 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 02 Jun 2017 23:37:31 GMT
COPY multi:3775aa35856908376b7ea71c79fad1e546e92e4ef56dcfc5821b2cc6e2ed6cdc in /usr/local/bin/ 
# Fri, 02 Jun 2017 23:37:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 02 Jun 2017 23:37:33 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 02 Jun 2017 23:37:33 GMT
WORKDIR /var/www/html
# Fri, 02 Jun 2017 23:37:34 GMT
EXPOSE 80/tcp
# Fri, 02 Jun 2017 23:37:35 GMT
CMD ["apache2-foreground"]
# Mon, 05 Jun 2017 20:35:12 GMT
MAINTAINER pierre@piwik.org
# Mon, 05 Jun 2017 20:35:29 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Mon, 05 Jun 2017 20:36:20 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Mon, 05 Jun 2017 20:36:28 GMT
RUN pecl install APCu geoip
# Mon, 05 Jun 2017 20:36:28 GMT
ENV PIWIK_VERSION=3.0.4
# Mon, 05 Jun 2017 20:36:37 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Mon, 05 Jun 2017 20:36:39 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Mon, 05 Jun 2017 20:36:41 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Mon, 05 Jun 2017 20:36:42 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Mon, 05 Jun 2017 20:36:43 GMT
VOLUME [/var/www/html]
# Mon, 05 Jun 2017 20:36:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 05 Jun 2017 20:36:45 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370377701f89cff89a25897f719848740ad95b97828c7ffdf8444bdafef6436b`  
		Last Modified: Sat, 13 May 2017 01:37:32 GMT  
		Size: 82.5 MB (82498638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455c73a122bc8a30bbb47aacf289778a636517eb5d841408435625ec4394a9c7`  
		Last Modified: Sat, 13 May 2017 01:37:17 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb71bac61c47a0055de7152b653793de87fd4714cc299f481f1c203cb68fc9ea`  
		Last Modified: Sat, 13 May 2017 01:42:16 GMT  
		Size: 2.8 MB (2788864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288a1d91ad4e347bdc4a030b9c7b0890e16ab9c944ede92833fe561242bbb0e7`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e0256ba4b0dcbb46fb72849d19a1dd78acf09f79d4e4cd69851c516940cbb7`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f14fbe7a9dfbfa8ee0219fece98b46a36980c4c426f125b2d7f39d0ebbf1f97b`  
		Last Modified: Sat, 13 May 2017 01:42:12 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f36dd91c0ab80629aba5f3a2285c02127aedaec768787bc0a8a3ad9513b62ff`  
		Last Modified: Sat, 13 May 2017 01:42:10 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97d77fc1fd2ce9dd15bbdcdaa714412f81d19ca96ed298eed2671adf687c3e4b`  
		Last Modified: Sat, 13 May 2017 02:00:40 GMT  
		Size: 12.6 MB (12581792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c0a0fd7605ab726e1bc6631242ea25cc01f76ef45919763a687083d274f953`  
		Last Modified: Sat, 13 May 2017 02:00:39 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc321ec09ab4c5a4ccde6eb4312da4fde0a1a12ba06051bbbde306eef2cd031`  
		Last Modified: Sat, 03 Jun 2017 00:33:48 GMT  
		Size: 9.4 MB (9434808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26fad11c6438205652dcc3f7b35acb84ff71b0e63df952eb4d0a1e2c37d02ef4`  
		Last Modified: Sat, 03 Jun 2017 00:33:44 GMT  
		Size: 2.1 KB (2125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f128f133857155dcf013dcb6d4330dfbd0eacb72c21c53bbe3aadb910656f72`  
		Last Modified: Sat, 03 Jun 2017 00:33:45 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f4eb42efc544557051bf3ce365d6b75021ea5cad15459b7a68a6a2082ae494`  
		Last Modified: Mon, 05 Jun 2017 20:39:03 GMT  
		Size: 7.1 MB (7098946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c0503527ce7c676e75ab91d7862bbc328d40a26f10867d5341ecde8be32369`  
		Last Modified: Mon, 05 Jun 2017 20:38:58 GMT  
		Size: 1.1 MB (1128684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c5d2a72bd61fd02f676ad611295ee383e0259f3ea1bd1fce4b55834dbb18ee`  
		Last Modified: Mon, 05 Jun 2017 20:38:58 GMT  
		Size: 46.8 KB (46795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:443234571021e62269efd2b99eeca87fc5ea778e15f6e43e03e4d693fbfb7ac1`  
		Last Modified: Mon, 05 Jun 2017 20:39:00 GMT  
		Size: 14.2 MB (14241015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff688ee6b5320cc88bf18e56552da739d090b9a09fca48fccdaa3ff2f5ac624`  
		Last Modified: Mon, 05 Jun 2017 20:38:58 GMT  
		Size: 274.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b9939581779eeb48e595cb42054dfcf144d434585ecfc2e494d130dc30bbb2`  
		Last Modified: Mon, 05 Jun 2017 20:39:00 GMT  
		Size: 13.0 MB (12983924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b80a5efa5ffa05b4ffebb070f9b52b95ba61a91a645d1a558de45098943ea40c`  
		Last Modified: Mon, 05 Jun 2017 20:38:57 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
