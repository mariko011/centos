## `piwik:fpm`

```console
$ docker pull piwik@sha256:9ce09ae1f9a75a22ce744938b9d6ad504da283a8154a5983a1697422bbe91f54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `piwik:fpm` - linux; amd64

```console
$ docker pull piwik@sha256:7fc46409b8bf40538295c26824dd9eb1ba615660323c47b66e72217d9ade26fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.5 MB (191530654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4c41ed030c622904f84396e30dc85f114898a20d2fe5746ff156bede676869d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Fri, 01 Dec 2017 01:42:41 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 01 Dec 2017 01:43:15 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 01 Dec 2017 01:43:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 01 Dec 2017 01:43:16 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 01 Dec 2017 01:52:05 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 01 Dec 2017 01:52:05 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 01:52:05 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Dec 2017 01:52:05 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 01 Dec 2017 02:57:53 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 01 Dec 2017 02:57:53 GMT
ENV PHP_VERSION=5.6.32
# Fri, 01 Dec 2017 02:57:53 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.32.tar.xz.asc/from/this/mirror
# Fri, 01 Dec 2017 02:57:54 GMT
ENV PHP_SHA256=8c2b4f721c7475fb9eabda2495209e91ea933082e6f34299d11cba88cd76e64b PHP_MD5=
# Fri, 01 Dec 2017 02:58:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 01 Dec 2017 02:58:09 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 01 Dec 2017 03:01:24 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 01 Dec 2017 03:01:25 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Fri, 01 Dec 2017 03:01:25 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 01 Dec 2017 03:01:25 GMT
WORKDIR /var/www/html
# Fri, 01 Dec 2017 03:01:26 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 01 Dec 2017 03:01:26 GMT
EXPOSE 9000/tcp
# Fri, 01 Dec 2017 03:01:26 GMT
CMD ["php-fpm"]
# Fri, 01 Dec 2017 05:11:09 GMT
MAINTAINER pierre@piwik.org
# Fri, 01 Dec 2017 05:11:21 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       libldap2-dev       zip  && rm -rf /var/lib/apt/lists/*
# Fri, 01 Dec 2017 05:12:15 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/  	&& docker-php-ext-install -j$(nproc) gd mbstring mysql pdo_mysql zip ldap opcache
# Fri, 01 Dec 2017 05:12:22 GMT
RUN pecl install APCu geoip
# Thu, 07 Dec 2017 02:05:10 GMT
ENV PIWIK_VERSION=3.2.1
# Thu, 07 Dec 2017 02:05:18 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz
# Thu, 07 Dec 2017 02:05:18 GMT
COPY file:c38913b1c220a089fa0b50e33e71a81a441978dfb47dd6b00cf105d42f87f82b in /usr/local/etc/php/php.ini 
# Thu, 07 Dec 2017 02:05:19 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Thu, 07 Dec 2017 02:05:20 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh 
# Thu, 07 Dec 2017 02:05:20 GMT
VOLUME [/var/www/html]
# Thu, 07 Dec 2017 02:05:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Dec 2017 02:05:20 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c266283065ed384496a48d17b330b2fe844c74558ded1397d54b3ad1ecf61699`  
		Last Modified: Fri, 01 Dec 2017 03:22:49 GMT  
		Size: 81.9 MB (81852025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec99b99d75b15e7271800232999805dbbd2b22b461813e170fd6c625a494eabc`  
		Last Modified: Fri, 01 Dec 2017 03:22:30 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77973e00bd26f84e3e56be6eb4342b75050306516041b72df88017e2e6343a6`  
		Last Modified: Fri, 01 Dec 2017 03:35:35 GMT  
		Size: 12.8 MB (12800883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35b25339e59ebe11deaef8d78fb03d50e2db5235111fc9f9798bf0d67089c24`  
		Last Modified: Fri, 01 Dec 2017 03:35:30 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdb5c9341ea86019e2eed2d741c67d6981d00fd66af76c76d6c147baf919e46`  
		Last Modified: Fri, 01 Dec 2017 03:35:33 GMT  
		Size: 9.2 MB (9209173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a925989bbad1d76a5ea549a69c18e362cc4eaa347561c4a65a565ae4a720ed`  
		Last Modified: Fri, 01 Dec 2017 03:35:30 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03beafbe59c970d3085067c9475ae9c8f43eadaa2a6f08120aa8003e7919beca`  
		Last Modified: Fri, 01 Dec 2017 03:35:30 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d1c20edfd802dcb362199edc35ad86c61901fb83770f71ed9f3fa61aba97e92`  
		Last Modified: Fri, 01 Dec 2017 03:35:30 GMT  
		Size: 7.6 KB (7618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b821509f308975d02601f971c4966767a7e238c29bc22e2b92dedac63a1471d7`  
		Last Modified: Fri, 01 Dec 2017 05:14:27 GMT  
		Size: 7.3 MB (7300468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f17c60617aee705e7b5b752524bf2cbad02c76325e7dfcc0f23b788846c5b956`  
		Last Modified: Fri, 01 Dec 2017 05:14:27 GMT  
		Size: 1.1 MB (1128887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7619794e31126f16f4f8ceaa16b70452cd8579ad0e93a75dcd63a68b6fdec8d`  
		Last Modified: Fri, 01 Dec 2017 05:14:23 GMT  
		Size: 46.7 KB (46658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38368641128f1200753ffaed174fdb9dfeae6983f071660d02e66782dc5e2909`  
		Last Modified: Thu, 07 Dec 2017 02:07:08 GMT  
		Size: 14.5 MB (14538984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39bd9872918cb2be4af8608206e608f193bea4c6eccfc774fc7f2e4242cfdef4`  
		Last Modified: Thu, 07 Dec 2017 02:07:00 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44537b4001120f46a4edbe94403ce5f888e8d9b3784cd7d4aa001754e357d1c0`  
		Last Modified: Thu, 07 Dec 2017 02:07:02 GMT  
		Size: 12.0 MB (12047335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ffff079225e8eb0438b93c72d05d27e8ea6f1815fc2f41689d80c77792bc3d7`  
		Last Modified: Thu, 07 Dec 2017 02:07:00 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
