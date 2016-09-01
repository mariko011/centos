<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `piwik`

-	[`piwik:2.16.2`](#piwik2162)
-	[`piwik:2.16`](#piwik216)
-	[`piwik:2`](#piwik2)
-	[`piwik:latest`](#piwiklatest)

## `piwik:2.16.2`

```console
$ docker pull piwik@sha256:9b1fadbadc7b45f112a95ea33ad9bd97979d8aecd61adb7641c3c6c2ec1c5501
```

-	Platforms:
	-	linux; amd64

### `piwik:2.16.2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.1 MB (186129756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94323e53044d4125ccd19f20fb3977c37dc4315522392570c22a116068681de4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:55:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 29 Jul 2016 21:39:51 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Mon, 22 Aug 2016 19:46:08 GMT
ENV PHP_VERSION=5.6.25
# Mon, 22 Aug 2016 19:46:08 GMT
ENV PHP_FILENAME=php-5.6.25.tar.xz
# Mon, 22 Aug 2016 19:46:09 GMT
ENV PHP_SHA256=7535cd6e20040ccec4594cc386c6f15c3f2c88f24163294a31068cf7dfe7f644
# Wed, 24 Aug 2016 18:12:15 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 24 Aug 2016 18:12:15 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 24 Aug 2016 18:18:46 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 24 Aug 2016 18:18:47 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 24 Aug 2016 18:18:48 GMT
WORKDIR /var/www/html
# Wed, 24 Aug 2016 18:18:49 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 24 Aug 2016 18:18:50 GMT
EXPOSE 9000/tcp
# Wed, 24 Aug 2016 18:18:50 GMT
CMD ["php-fpm"]
# Fri, 26 Aug 2016 20:28:08 GMT
MAINTAINER pierre@piwik.org
# Fri, 26 Aug 2016 20:29:16 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       ssmtp       zip  && rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 20:31:52 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr  && docker-php-ext-install gd mbstring mysql pdo_mysql zip
# Fri, 26 Aug 2016 20:32:03 GMT
RUN pecl install APCu geoip
# Fri, 26 Aug 2016 20:32:04 GMT
ENV PIWIK_VERSION=2.16.2
# Fri, 26 Aug 2016 20:32:16 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz  && chfn -f 'Piwik Admin' www-data
# Fri, 26 Aug 2016 20:32:18 GMT
COPY file:abc0ff564b95b724deccad7ff48d69d7a3d7d34cdee0cce0a887f3ed0e726d21 in /usr/local/etc/php/php.ini
# Fri, 26 Aug 2016 20:32:22 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Fri, 26 Aug 2016 20:32:24 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh
# Fri, 26 Aug 2016 20:32:25 GMT
VOLUME [/var/www/html]
# Fri, 26 Aug 2016 20:32:26 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 26 Aug 2016 20:32:27 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc4ed620159eb691683cccf85600e0941a9789d9f45fc16b3af12fd1aeeb451`  
		Last Modified: Wed, 24 Aug 2016 18:45:10 GMT  
		Size: 12.4 MB (12409728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f27c2629726dc788ee7de907aa4be62b2ef50361ea9a48569c2562aa0348d5b`  
		Last Modified: Wed, 24 Aug 2016 18:45:08 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e47db32bd1019fcc7b5b257d51a7d260eca25eb49767b32fbf64df39529b368b`  
		Last Modified: Wed, 24 Aug 2016 18:45:10 GMT  
		Size: 9.3 MB (9342771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920d7d2bcfd6bb360bc00f35549a5afe414eecfe9ce89b27727f33f0f58a3549`  
		Last Modified: Wed, 24 Aug 2016 18:45:05 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfe3bc0eaa59c3aed64adf4922a49432198832907ea8a14f8ad212a1a44aed4`  
		Last Modified: Wed, 24 Aug 2016 18:45:06 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3726d5301c9bbc77a91c818fbe7b5cad07033418480071ff58c8e001b38c0c82`  
		Last Modified: Wed, 24 Aug 2016 18:45:06 GMT  
		Size: 7.6 KB (7631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9790de40ded390d82c3db15556217c8c5418ee2c03c1d52665c6a686314c9817`  
		Last Modified: Fri, 26 Aug 2016 20:32:46 GMT  
		Size: 7.1 MB (7144356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc511b701b2f2fcf75f3fc91ceda78764cd6d9763d1b875fbefc859508e84b2b`  
		Last Modified: Fri, 26 Aug 2016 20:32:44 GMT  
		Size: 2.3 MB (2252355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611de48e84cca97956f66744a5cb5fc51d63ddddb15ff107fea2aa1432e90cf8`  
		Last Modified: Fri, 26 Aug 2016 20:32:41 GMT  
		Size: 46.6 KB (46593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca477151804d695a5cf2f9c59c9ead65475484a747d745393c47995170219544`  
		Last Modified: Fri, 26 Aug 2016 20:32:46 GMT  
		Size: 12.9 MB (12858944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8604b6e4881269810314e780b6b2c49dd097325940937f6e1a963b0505e8e5fb`  
		Last Modified: Fri, 26 Aug 2016 20:32:40 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb8999768e38c99e71c75949b499336cf77303cc8ff31dbd6df834acdb1aa77e`  
		Last Modified: Fri, 26 Aug 2016 20:32:43 GMT  
		Size: 13.1 MB (13117308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edbc511c6e9c80dc84ba36d5ba86723323d48c42e9a7bd13d75f0e633080222c`  
		Last Modified: Fri, 26 Aug 2016 20:32:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:2.16`

```console
$ docker pull piwik@sha256:9b1fadbadc7b45f112a95ea33ad9bd97979d8aecd61adb7641c3c6c2ec1c5501
```

-	Platforms:
	-	linux; amd64

### `piwik:2.16` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.1 MB (186129756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94323e53044d4125ccd19f20fb3977c37dc4315522392570c22a116068681de4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:55:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 29 Jul 2016 21:39:51 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Mon, 22 Aug 2016 19:46:08 GMT
ENV PHP_VERSION=5.6.25
# Mon, 22 Aug 2016 19:46:08 GMT
ENV PHP_FILENAME=php-5.6.25.tar.xz
# Mon, 22 Aug 2016 19:46:09 GMT
ENV PHP_SHA256=7535cd6e20040ccec4594cc386c6f15c3f2c88f24163294a31068cf7dfe7f644
# Wed, 24 Aug 2016 18:12:15 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 24 Aug 2016 18:12:15 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 24 Aug 2016 18:18:46 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 24 Aug 2016 18:18:47 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 24 Aug 2016 18:18:48 GMT
WORKDIR /var/www/html
# Wed, 24 Aug 2016 18:18:49 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 24 Aug 2016 18:18:50 GMT
EXPOSE 9000/tcp
# Wed, 24 Aug 2016 18:18:50 GMT
CMD ["php-fpm"]
# Fri, 26 Aug 2016 20:28:08 GMT
MAINTAINER pierre@piwik.org
# Fri, 26 Aug 2016 20:29:16 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       ssmtp       zip  && rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 20:31:52 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr  && docker-php-ext-install gd mbstring mysql pdo_mysql zip
# Fri, 26 Aug 2016 20:32:03 GMT
RUN pecl install APCu geoip
# Fri, 26 Aug 2016 20:32:04 GMT
ENV PIWIK_VERSION=2.16.2
# Fri, 26 Aug 2016 20:32:16 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz  && chfn -f 'Piwik Admin' www-data
# Fri, 26 Aug 2016 20:32:18 GMT
COPY file:abc0ff564b95b724deccad7ff48d69d7a3d7d34cdee0cce0a887f3ed0e726d21 in /usr/local/etc/php/php.ini
# Fri, 26 Aug 2016 20:32:22 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Fri, 26 Aug 2016 20:32:24 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh
# Fri, 26 Aug 2016 20:32:25 GMT
VOLUME [/var/www/html]
# Fri, 26 Aug 2016 20:32:26 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 26 Aug 2016 20:32:27 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc4ed620159eb691683cccf85600e0941a9789d9f45fc16b3af12fd1aeeb451`  
		Last Modified: Wed, 24 Aug 2016 18:45:10 GMT  
		Size: 12.4 MB (12409728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f27c2629726dc788ee7de907aa4be62b2ef50361ea9a48569c2562aa0348d5b`  
		Last Modified: Wed, 24 Aug 2016 18:45:08 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e47db32bd1019fcc7b5b257d51a7d260eca25eb49767b32fbf64df39529b368b`  
		Last Modified: Wed, 24 Aug 2016 18:45:10 GMT  
		Size: 9.3 MB (9342771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920d7d2bcfd6bb360bc00f35549a5afe414eecfe9ce89b27727f33f0f58a3549`  
		Last Modified: Wed, 24 Aug 2016 18:45:05 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfe3bc0eaa59c3aed64adf4922a49432198832907ea8a14f8ad212a1a44aed4`  
		Last Modified: Wed, 24 Aug 2016 18:45:06 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3726d5301c9bbc77a91c818fbe7b5cad07033418480071ff58c8e001b38c0c82`  
		Last Modified: Wed, 24 Aug 2016 18:45:06 GMT  
		Size: 7.6 KB (7631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9790de40ded390d82c3db15556217c8c5418ee2c03c1d52665c6a686314c9817`  
		Last Modified: Fri, 26 Aug 2016 20:32:46 GMT  
		Size: 7.1 MB (7144356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc511b701b2f2fcf75f3fc91ceda78764cd6d9763d1b875fbefc859508e84b2b`  
		Last Modified: Fri, 26 Aug 2016 20:32:44 GMT  
		Size: 2.3 MB (2252355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611de48e84cca97956f66744a5cb5fc51d63ddddb15ff107fea2aa1432e90cf8`  
		Last Modified: Fri, 26 Aug 2016 20:32:41 GMT  
		Size: 46.6 KB (46593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca477151804d695a5cf2f9c59c9ead65475484a747d745393c47995170219544`  
		Last Modified: Fri, 26 Aug 2016 20:32:46 GMT  
		Size: 12.9 MB (12858944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8604b6e4881269810314e780b6b2c49dd097325940937f6e1a963b0505e8e5fb`  
		Last Modified: Fri, 26 Aug 2016 20:32:40 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb8999768e38c99e71c75949b499336cf77303cc8ff31dbd6df834acdb1aa77e`  
		Last Modified: Fri, 26 Aug 2016 20:32:43 GMT  
		Size: 13.1 MB (13117308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edbc511c6e9c80dc84ba36d5ba86723323d48c42e9a7bd13d75f0e633080222c`  
		Last Modified: Fri, 26 Aug 2016 20:32:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:2`

```console
$ docker pull piwik@sha256:9b1fadbadc7b45f112a95ea33ad9bd97979d8aecd61adb7641c3c6c2ec1c5501
```

-	Platforms:
	-	linux; amd64

### `piwik:2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.1 MB (186129756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94323e53044d4125ccd19f20fb3977c37dc4315522392570c22a116068681de4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:55:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 29 Jul 2016 21:39:51 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Mon, 22 Aug 2016 19:46:08 GMT
ENV PHP_VERSION=5.6.25
# Mon, 22 Aug 2016 19:46:08 GMT
ENV PHP_FILENAME=php-5.6.25.tar.xz
# Mon, 22 Aug 2016 19:46:09 GMT
ENV PHP_SHA256=7535cd6e20040ccec4594cc386c6f15c3f2c88f24163294a31068cf7dfe7f644
# Wed, 24 Aug 2016 18:12:15 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 24 Aug 2016 18:12:15 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 24 Aug 2016 18:18:46 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 24 Aug 2016 18:18:47 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 24 Aug 2016 18:18:48 GMT
WORKDIR /var/www/html
# Wed, 24 Aug 2016 18:18:49 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 24 Aug 2016 18:18:50 GMT
EXPOSE 9000/tcp
# Wed, 24 Aug 2016 18:18:50 GMT
CMD ["php-fpm"]
# Fri, 26 Aug 2016 20:28:08 GMT
MAINTAINER pierre@piwik.org
# Fri, 26 Aug 2016 20:29:16 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       ssmtp       zip  && rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 20:31:52 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr  && docker-php-ext-install gd mbstring mysql pdo_mysql zip
# Fri, 26 Aug 2016 20:32:03 GMT
RUN pecl install APCu geoip
# Fri, 26 Aug 2016 20:32:04 GMT
ENV PIWIK_VERSION=2.16.2
# Fri, 26 Aug 2016 20:32:16 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz  && chfn -f 'Piwik Admin' www-data
# Fri, 26 Aug 2016 20:32:18 GMT
COPY file:abc0ff564b95b724deccad7ff48d69d7a3d7d34cdee0cce0a887f3ed0e726d21 in /usr/local/etc/php/php.ini
# Fri, 26 Aug 2016 20:32:22 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Fri, 26 Aug 2016 20:32:24 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh
# Fri, 26 Aug 2016 20:32:25 GMT
VOLUME [/var/www/html]
# Fri, 26 Aug 2016 20:32:26 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 26 Aug 2016 20:32:27 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc4ed620159eb691683cccf85600e0941a9789d9f45fc16b3af12fd1aeeb451`  
		Last Modified: Wed, 24 Aug 2016 18:45:10 GMT  
		Size: 12.4 MB (12409728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f27c2629726dc788ee7de907aa4be62b2ef50361ea9a48569c2562aa0348d5b`  
		Last Modified: Wed, 24 Aug 2016 18:45:08 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e47db32bd1019fcc7b5b257d51a7d260eca25eb49767b32fbf64df39529b368b`  
		Last Modified: Wed, 24 Aug 2016 18:45:10 GMT  
		Size: 9.3 MB (9342771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920d7d2bcfd6bb360bc00f35549a5afe414eecfe9ce89b27727f33f0f58a3549`  
		Last Modified: Wed, 24 Aug 2016 18:45:05 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfe3bc0eaa59c3aed64adf4922a49432198832907ea8a14f8ad212a1a44aed4`  
		Last Modified: Wed, 24 Aug 2016 18:45:06 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3726d5301c9bbc77a91c818fbe7b5cad07033418480071ff58c8e001b38c0c82`  
		Last Modified: Wed, 24 Aug 2016 18:45:06 GMT  
		Size: 7.6 KB (7631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9790de40ded390d82c3db15556217c8c5418ee2c03c1d52665c6a686314c9817`  
		Last Modified: Fri, 26 Aug 2016 20:32:46 GMT  
		Size: 7.1 MB (7144356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc511b701b2f2fcf75f3fc91ceda78764cd6d9763d1b875fbefc859508e84b2b`  
		Last Modified: Fri, 26 Aug 2016 20:32:44 GMT  
		Size: 2.3 MB (2252355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611de48e84cca97956f66744a5cb5fc51d63ddddb15ff107fea2aa1432e90cf8`  
		Last Modified: Fri, 26 Aug 2016 20:32:41 GMT  
		Size: 46.6 KB (46593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca477151804d695a5cf2f9c59c9ead65475484a747d745393c47995170219544`  
		Last Modified: Fri, 26 Aug 2016 20:32:46 GMT  
		Size: 12.9 MB (12858944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8604b6e4881269810314e780b6b2c49dd097325940937f6e1a963b0505e8e5fb`  
		Last Modified: Fri, 26 Aug 2016 20:32:40 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb8999768e38c99e71c75949b499336cf77303cc8ff31dbd6df834acdb1aa77e`  
		Last Modified: Fri, 26 Aug 2016 20:32:43 GMT  
		Size: 13.1 MB (13117308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edbc511c6e9c80dc84ba36d5ba86723323d48c42e9a7bd13d75f0e633080222c`  
		Last Modified: Fri, 26 Aug 2016 20:32:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `piwik:latest`

```console
$ docker pull piwik@sha256:9b1fadbadc7b45f112a95ea33ad9bd97979d8aecd61adb7641c3c6c2ec1c5501
```

-	Platforms:
	-	linux; amd64

### `piwik:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.1 MB (186129756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94323e53044d4125ccd19f20fb3977c37dc4315522392570c22a116068681de4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 20:34:33 GMT
ENV PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 29 Jul 2016 20:36:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 29 Jul 2016 20:36:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 29 Jul 2016 20:36:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 29 Jul 2016 20:55:36 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Fri, 29 Jul 2016 21:39:51 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Mon, 22 Aug 2016 19:46:08 GMT
ENV PHP_VERSION=5.6.25
# Mon, 22 Aug 2016 19:46:08 GMT
ENV PHP_FILENAME=php-5.6.25.tar.xz
# Mon, 22 Aug 2016 19:46:09 GMT
ENV PHP_SHA256=7535cd6e20040ccec4594cc386c6f15c3f2c88f24163294a31068cf7dfe7f644
# Wed, 24 Aug 2016 18:12:15 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "https://secure.php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 24 Aug 2016 18:12:15 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 24 Aug 2016 18:18:46 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 24 Aug 2016 18:18:47 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 24 Aug 2016 18:18:48 GMT
WORKDIR /var/www/html
# Wed, 24 Aug 2016 18:18:49 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 24 Aug 2016 18:18:50 GMT
EXPOSE 9000/tcp
# Wed, 24 Aug 2016 18:18:50 GMT
CMD ["php-fpm"]
# Fri, 26 Aug 2016 20:28:08 GMT
MAINTAINER pierre@piwik.org
# Fri, 26 Aug 2016 20:29:16 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       ssmtp       zip  && rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 20:31:52 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr  && docker-php-ext-install gd mbstring mysql pdo_mysql zip
# Fri, 26 Aug 2016 20:32:03 GMT
RUN pecl install APCu geoip
# Fri, 26 Aug 2016 20:32:04 GMT
ENV PIWIK_VERSION=2.16.2
# Fri, 26 Aug 2016 20:32:16 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz  && chfn -f 'Piwik Admin' www-data
# Fri, 26 Aug 2016 20:32:18 GMT
COPY file:abc0ff564b95b724deccad7ff48d69d7a3d7d34cdee0cce0a887f3ed0e726d21 in /usr/local/etc/php/php.ini
# Fri, 26 Aug 2016 20:32:22 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Fri, 26 Aug 2016 20:32:24 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh
# Fri, 26 Aug 2016 20:32:25 GMT
VOLUME [/var/www/html]
# Fri, 26 Aug 2016 20:32:26 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 26 Aug 2016 20:32:27 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc4ed620159eb691683cccf85600e0941a9789d9f45fc16b3af12fd1aeeb451`  
		Last Modified: Wed, 24 Aug 2016 18:45:10 GMT  
		Size: 12.4 MB (12409728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f27c2629726dc788ee7de907aa4be62b2ef50361ea9a48569c2562aa0348d5b`  
		Last Modified: Wed, 24 Aug 2016 18:45:08 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e47db32bd1019fcc7b5b257d51a7d260eca25eb49767b32fbf64df39529b368b`  
		Last Modified: Wed, 24 Aug 2016 18:45:10 GMT  
		Size: 9.3 MB (9342771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920d7d2bcfd6bb360bc00f35549a5afe414eecfe9ce89b27727f33f0f58a3549`  
		Last Modified: Wed, 24 Aug 2016 18:45:05 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfe3bc0eaa59c3aed64adf4922a49432198832907ea8a14f8ad212a1a44aed4`  
		Last Modified: Wed, 24 Aug 2016 18:45:06 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3726d5301c9bbc77a91c818fbe7b5cad07033418480071ff58c8e001b38c0c82`  
		Last Modified: Wed, 24 Aug 2016 18:45:06 GMT  
		Size: 7.6 KB (7631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9790de40ded390d82c3db15556217c8c5418ee2c03c1d52665c6a686314c9817`  
		Last Modified: Fri, 26 Aug 2016 20:32:46 GMT  
		Size: 7.1 MB (7144356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc511b701b2f2fcf75f3fc91ceda78764cd6d9763d1b875fbefc859508e84b2b`  
		Last Modified: Fri, 26 Aug 2016 20:32:44 GMT  
		Size: 2.3 MB (2252355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611de48e84cca97956f66744a5cb5fc51d63ddddb15ff107fea2aa1432e90cf8`  
		Last Modified: Fri, 26 Aug 2016 20:32:41 GMT  
		Size: 46.6 KB (46593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca477151804d695a5cf2f9c59c9ead65475484a747d745393c47995170219544`  
		Last Modified: Fri, 26 Aug 2016 20:32:46 GMT  
		Size: 12.9 MB (12858944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8604b6e4881269810314e780b6b2c49dd097325940937f6e1a963b0505e8e5fb`  
		Last Modified: Fri, 26 Aug 2016 20:32:40 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb8999768e38c99e71c75949b499336cf77303cc8ff31dbd6df834acdb1aa77e`  
		Last Modified: Fri, 26 Aug 2016 20:32:43 GMT  
		Size: 13.1 MB (13117308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edbc511c6e9c80dc84ba36d5ba86723323d48c42e9a7bd13d75f0e633080222c`  
		Last Modified: Fri, 26 Aug 2016 20:32:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
