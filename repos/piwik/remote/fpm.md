## `piwik:fpm`

```console
$ docker pull piwik@sha256:0e4e98e3934e0503e202ded35933174c9d6b1d96b2c083b9b42184d9284c0a01
```

-	Platforms:
	-	linux; amd64

### `piwik:fpm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.0 MB (192022852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a225569c0366474212db184e47c84d4d79ed7cc678713d674427a90e92cd639`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

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
# Sat, 13 May 2017 00:14:10 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Sat, 13 May 2017 00:14:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:14:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 13 May 2017 00:14:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 13 May 2017 01:21:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 13 May 2017 01:21:58 GMT
ENV PHP_VERSION=5.6.30
# Sat, 13 May 2017 01:21:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror
# Sat, 13 May 2017 01:21:59 GMT
ENV PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805 PHP_MD5=68753955a8964ae49064c6424f81eb3e
# Sat, 13 May 2017 01:22:11 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -r "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 13 May 2017 01:22:12 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 02 Jun 2017 23:41:55 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$gnuArch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 02 Jun 2017 23:41:57 GMT
COPY multi:1401feee8064a06ad514519ec870939c946ecfdf381c82a90cb2035486938ee9 in /usr/local/bin/ 
# Fri, 02 Jun 2017 23:41:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 02 Jun 2017 23:41:59 GMT
WORKDIR /var/www/html
# Fri, 02 Jun 2017 23:42:00 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 02 Jun 2017 23:42:01 GMT
EXPOSE 9000/tcp
# Fri, 02 Jun 2017 23:42:02 GMT
CMD ["php-fpm"]
# Mon, 05 Jun 2017 20:37:08 GMT
MAINTAINER pierre@piwik.org
# Mon, 05 Jun 2017 20:37:22 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Mon, 05 Jun 2017 20:38:09 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Mon, 05 Jun 2017 20:38:16 GMT
RUN pecl install APCu geoip
# Mon, 05 Jun 2017 20:38:16 GMT
ENV PIWIK_VERSION=3.0.4
# Mon, 05 Jun 2017 20:38:24 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Mon, 05 Jun 2017 20:38:25 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Mon, 05 Jun 2017 20:38:28 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Mon, 05 Jun 2017 20:38:29 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Mon, 05 Jun 2017 20:38:30 GMT
VOLUME [/var/www/html]
# Mon, 05 Jun 2017 20:38:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 05 Jun 2017 20:38:32 GMT
CMD ["php-fpm"]
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
	-	`sha256:13a648f6b6ab6845cd7746a4edbc32ac75aa2496bf9d7d86f879cb87c5fd22ff`  
		Last Modified: Sat, 13 May 2017 02:01:54 GMT  
		Size: 12.6 MB (12564600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458d1f0186d7b815dda616474bd8d16bd6d2354c43cd654ae7b3912e7246f940`  
		Last Modified: Sat, 13 May 2017 02:01:52 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac95ba763d8a84c53b7e8c4722895d45fd7fdfbeaaca1cf35fcacbdd82f8e19`  
		Last Modified: Sat, 03 Jun 2017 00:35:27 GMT  
		Size: 8.6 MB (8628353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f8523845f2d86cd38cefb1e8ae885c6957c63d9bce1f334655bfc1304e0b53e`  
		Last Modified: Sat, 03 Jun 2017 00:35:26 GMT  
		Size: 2.1 KB (2119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c77f1ac8be9915e112db9ce8bf3724305e0b0125ad50b6b4b4e67d19d44ecf8`  
		Last Modified: Sat, 03 Jun 2017 00:35:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36a5143dac97dfc03cf5d3110a359e40bb3ac969b826916d6d2f58de10d54fba`  
		Last Modified: Sat, 03 Jun 2017 00:35:24 GMT  
		Size: 7.6 KB (7606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:198b5926a9e3877ffbca18393fc3ec6bc6705d22c6527dde2b17f4dd31f81aba`  
		Last Modified: Mon, 05 Jun 2017 20:42:24 GMT  
		Size: 7.3 MB (7335726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c8eefd94a3c33495ebe2d1aee321e447bf9a79f9821be6f1ff96dbd84ea87ce`  
		Last Modified: Mon, 05 Jun 2017 20:42:21 GMT  
		Size: 1.1 MB (1128778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284e749de378b3bc23e39ad34408fffffff95c14c9f674c06ff23c470c9f454b`  
		Last Modified: Mon, 05 Jun 2017 20:42:21 GMT  
		Size: 46.8 KB (46797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc5b5679bcb2fb30b7843ff6b8d7bcc54ede712c963a1a122778289ad2f29f2`  
		Last Modified: Mon, 05 Jun 2017 20:42:24 GMT  
		Size: 14.2 MB (14240992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f0696f7cb195142ae01b6911e8ffeaadc6095a276df1d306e349e5b3b6fe9dc`  
		Last Modified: Mon, 05 Jun 2017 20:42:21 GMT  
		Size: 274.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b64f38243fc4e16a6b503d2af65fe062b9357873e9b5a3de8fbc097da5676e`  
		Last Modified: Mon, 05 Jun 2017 20:42:23 GMT  
		Size: 13.0 MB (12983926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a6f2658a49281e7f735a42d1597e25d9b1a1264f0c11d520b130e9e0bcffab`  
		Last Modified: Mon, 05 Jun 2017 20:42:21 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
