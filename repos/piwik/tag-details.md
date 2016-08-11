<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `piwik`

-	[`piwik:2.16.2`](#piwik2162)
-	[`piwik:2.16`](#piwik216)
-	[`piwik:2`](#piwik2)
-	[`piwik:latest`](#piwiklatest)

## `piwik:2.16.2`

```console
$ docker pull piwik@sha256:fd75de72b79a01bdd8d49744493621c4d9f60be8c104ac38c49196b9324f6b2f
```

-	Platforms:
	-	linux; amd64

### `piwik:2.16.2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.1 MB (186108314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:705288123c804765c47f9acc920bff1b1841db47ae9549d93eee476c128b339c`
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
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_VERSION=5.6.24
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:23:19 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:23:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:49 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:29:50 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:50 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:29:51 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 Aug 2016 20:29:52 GMT
EXPOSE 9000/tcp
# Wed, 10 Aug 2016 20:29:52 GMT
CMD ["php-fpm"]
# Thu, 11 Aug 2016 20:00:20 GMT
MAINTAINER pierre@piwik.org
# Thu, 11 Aug 2016 20:01:20 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       ssmtp       zip  && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 20:03:30 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr  && docker-php-ext-install gd mbstring mysql pdo_mysql zip
# Thu, 11 Aug 2016 20:03:40 GMT
RUN pecl install APCu geoip
# Thu, 11 Aug 2016 20:03:41 GMT
ENV PIWIK_VERSION=2.16.2
# Thu, 11 Aug 2016 20:03:51 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz  && chfn -f 'Piwik Admin' www-data
# Thu, 11 Aug 2016 20:03:53 GMT
COPY file:abc0ff564b95b724deccad7ff48d69d7a3d7d34cdee0cce0a887f3ed0e726d21 in /usr/local/etc/php/php.ini
# Thu, 11 Aug 2016 20:03:56 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Thu, 11 Aug 2016 20:03:57 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh
# Thu, 11 Aug 2016 20:03:58 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 20:03:59 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 20:04:00 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:1a0ed20d7752971350ab581861731d7d71a6eb560b93d48382b5cc2aa07fed8b`  
		Last Modified: Wed, 10 Aug 2016 21:38:50 GMT  
		Size: 12.4 MB (12399120 bytes)
	-	`sha256:d17456fd86bcf1eb916ff4c4b4909dd6ad98736369cff4e5ee9c79e02782fc67`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 490.0 B
	-	`sha256:c8bd75b8802c8ce64c4a28486fbfb4bde4247b27f5f8363dd8a8469ac89b1e85`  
		Last Modified: Wed, 10 Aug 2016 21:38:48 GMT  
		Size: 9.3 MB (9333467 bytes)
	-	`sha256:0054f99dc6ca14454002cd76f78264c84cdfd9c57cea265ea0a6f601dab80158`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 1.8 KB (1829 bytes)
	-	`sha256:1c8ec71281514f1d63f59000b5fd9082baa8a6d34e7e591d7cd22928879a5d18`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 129.0 B
	-	`sha256:fa513925a4eb93b436ccdb48c9b0edca88237b4abdebea3245da69a6b37deaf9`  
		Last Modified: Wed, 10 Aug 2016 21:38:46 GMT  
		Size: 7.6 KB (7629 bytes)
	-	`sha256:7077b4689b4aebc24cf7894af1aad3c1fd2020bde0cdb53378d40e80b2ee8d8e`  
		Last Modified: Thu, 11 Aug 2016 20:04:16 GMT  
		Size: 7.1 MB (7144286 bytes)
	-	`sha256:db937cf244d253500a3f05927810bac0f34a58f405e7f031f025f391343a77bb`  
		Last Modified: Thu, 11 Aug 2016 20:04:14 GMT  
		Size: 2.3 MB (2251352 bytes)
	-	`sha256:a1a23e695195034efce6da3bb5b69364880adfc2e016cf80a404b2bc151def80`  
		Last Modified: Thu, 11 Aug 2016 20:04:10 GMT  
		Size: 46.1 KB (46134 bytes)
	-	`sha256:3513aedbacbcf05686493580fe35520882bef9860385c3146c349b0ccd868771`  
		Last Modified: Thu, 11 Aug 2016 20:04:16 GMT  
		Size: 12.9 MB (12858942 bytes)
	-	`sha256:f4fae565c7d36bfc0c545ea963f7a459d0378084738dc4d2aa79354f6113232c`  
		Last Modified: Thu, 11 Aug 2016 20:04:10 GMT  
		Size: 298.0 B
	-	`sha256:27903b56461d4906cf65aa9fefd187f183d11d472ab83d16a1f17539c721bb03`  
		Last Modified: Thu, 11 Aug 2016 20:04:13 GMT  
		Size: 13.1 MB (13117314 bytes)
	-	`sha256:35ded53f8c312d701008c44ec3fde90f5cac02ca2e4c8146462dd29e06b7f6e1`  
		Last Modified: Thu, 11 Aug 2016 20:04:11 GMT  
		Size: 226.0 B

## `piwik:2.16`

```console
$ docker pull piwik@sha256:fd75de72b79a01bdd8d49744493621c4d9f60be8c104ac38c49196b9324f6b2f
```

-	Platforms:
	-	linux; amd64

### `piwik:2.16` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.1 MB (186108314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:705288123c804765c47f9acc920bff1b1841db47ae9549d93eee476c128b339c`
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
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_VERSION=5.6.24
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:23:19 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:23:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:49 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:29:50 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:50 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:29:51 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 Aug 2016 20:29:52 GMT
EXPOSE 9000/tcp
# Wed, 10 Aug 2016 20:29:52 GMT
CMD ["php-fpm"]
# Thu, 11 Aug 2016 20:00:20 GMT
MAINTAINER pierre@piwik.org
# Thu, 11 Aug 2016 20:01:20 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       ssmtp       zip  && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 20:03:30 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr  && docker-php-ext-install gd mbstring mysql pdo_mysql zip
# Thu, 11 Aug 2016 20:03:40 GMT
RUN pecl install APCu geoip
# Thu, 11 Aug 2016 20:03:41 GMT
ENV PIWIK_VERSION=2.16.2
# Thu, 11 Aug 2016 20:03:51 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz  && chfn -f 'Piwik Admin' www-data
# Thu, 11 Aug 2016 20:03:53 GMT
COPY file:abc0ff564b95b724deccad7ff48d69d7a3d7d34cdee0cce0a887f3ed0e726d21 in /usr/local/etc/php/php.ini
# Thu, 11 Aug 2016 20:03:56 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Thu, 11 Aug 2016 20:03:57 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh
# Thu, 11 Aug 2016 20:03:58 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 20:03:59 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 20:04:00 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:1a0ed20d7752971350ab581861731d7d71a6eb560b93d48382b5cc2aa07fed8b`  
		Last Modified: Wed, 10 Aug 2016 21:38:50 GMT  
		Size: 12.4 MB (12399120 bytes)
	-	`sha256:d17456fd86bcf1eb916ff4c4b4909dd6ad98736369cff4e5ee9c79e02782fc67`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 490.0 B
	-	`sha256:c8bd75b8802c8ce64c4a28486fbfb4bde4247b27f5f8363dd8a8469ac89b1e85`  
		Last Modified: Wed, 10 Aug 2016 21:38:48 GMT  
		Size: 9.3 MB (9333467 bytes)
	-	`sha256:0054f99dc6ca14454002cd76f78264c84cdfd9c57cea265ea0a6f601dab80158`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 1.8 KB (1829 bytes)
	-	`sha256:1c8ec71281514f1d63f59000b5fd9082baa8a6d34e7e591d7cd22928879a5d18`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 129.0 B
	-	`sha256:fa513925a4eb93b436ccdb48c9b0edca88237b4abdebea3245da69a6b37deaf9`  
		Last Modified: Wed, 10 Aug 2016 21:38:46 GMT  
		Size: 7.6 KB (7629 bytes)
	-	`sha256:7077b4689b4aebc24cf7894af1aad3c1fd2020bde0cdb53378d40e80b2ee8d8e`  
		Last Modified: Thu, 11 Aug 2016 20:04:16 GMT  
		Size: 7.1 MB (7144286 bytes)
	-	`sha256:db937cf244d253500a3f05927810bac0f34a58f405e7f031f025f391343a77bb`  
		Last Modified: Thu, 11 Aug 2016 20:04:14 GMT  
		Size: 2.3 MB (2251352 bytes)
	-	`sha256:a1a23e695195034efce6da3bb5b69364880adfc2e016cf80a404b2bc151def80`  
		Last Modified: Thu, 11 Aug 2016 20:04:10 GMT  
		Size: 46.1 KB (46134 bytes)
	-	`sha256:3513aedbacbcf05686493580fe35520882bef9860385c3146c349b0ccd868771`  
		Last Modified: Thu, 11 Aug 2016 20:04:16 GMT  
		Size: 12.9 MB (12858942 bytes)
	-	`sha256:f4fae565c7d36bfc0c545ea963f7a459d0378084738dc4d2aa79354f6113232c`  
		Last Modified: Thu, 11 Aug 2016 20:04:10 GMT  
		Size: 298.0 B
	-	`sha256:27903b56461d4906cf65aa9fefd187f183d11d472ab83d16a1f17539c721bb03`  
		Last Modified: Thu, 11 Aug 2016 20:04:13 GMT  
		Size: 13.1 MB (13117314 bytes)
	-	`sha256:35ded53f8c312d701008c44ec3fde90f5cac02ca2e4c8146462dd29e06b7f6e1`  
		Last Modified: Thu, 11 Aug 2016 20:04:11 GMT  
		Size: 226.0 B

## `piwik:2`

```console
$ docker pull piwik@sha256:fd75de72b79a01bdd8d49744493621c4d9f60be8c104ac38c49196b9324f6b2f
```

-	Platforms:
	-	linux; amd64

### `piwik:2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.1 MB (186108314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:705288123c804765c47f9acc920bff1b1841db47ae9549d93eee476c128b339c`
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
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_VERSION=5.6.24
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:23:19 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:23:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:49 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:29:50 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:50 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:29:51 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 Aug 2016 20:29:52 GMT
EXPOSE 9000/tcp
# Wed, 10 Aug 2016 20:29:52 GMT
CMD ["php-fpm"]
# Thu, 11 Aug 2016 20:00:20 GMT
MAINTAINER pierre@piwik.org
# Thu, 11 Aug 2016 20:01:20 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       ssmtp       zip  && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 20:03:30 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr  && docker-php-ext-install gd mbstring mysql pdo_mysql zip
# Thu, 11 Aug 2016 20:03:40 GMT
RUN pecl install APCu geoip
# Thu, 11 Aug 2016 20:03:41 GMT
ENV PIWIK_VERSION=2.16.2
# Thu, 11 Aug 2016 20:03:51 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz  && chfn -f 'Piwik Admin' www-data
# Thu, 11 Aug 2016 20:03:53 GMT
COPY file:abc0ff564b95b724deccad7ff48d69d7a3d7d34cdee0cce0a887f3ed0e726d21 in /usr/local/etc/php/php.ini
# Thu, 11 Aug 2016 20:03:56 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Thu, 11 Aug 2016 20:03:57 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh
# Thu, 11 Aug 2016 20:03:58 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 20:03:59 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 20:04:00 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:1a0ed20d7752971350ab581861731d7d71a6eb560b93d48382b5cc2aa07fed8b`  
		Last Modified: Wed, 10 Aug 2016 21:38:50 GMT  
		Size: 12.4 MB (12399120 bytes)
	-	`sha256:d17456fd86bcf1eb916ff4c4b4909dd6ad98736369cff4e5ee9c79e02782fc67`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 490.0 B
	-	`sha256:c8bd75b8802c8ce64c4a28486fbfb4bde4247b27f5f8363dd8a8469ac89b1e85`  
		Last Modified: Wed, 10 Aug 2016 21:38:48 GMT  
		Size: 9.3 MB (9333467 bytes)
	-	`sha256:0054f99dc6ca14454002cd76f78264c84cdfd9c57cea265ea0a6f601dab80158`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 1.8 KB (1829 bytes)
	-	`sha256:1c8ec71281514f1d63f59000b5fd9082baa8a6d34e7e591d7cd22928879a5d18`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 129.0 B
	-	`sha256:fa513925a4eb93b436ccdb48c9b0edca88237b4abdebea3245da69a6b37deaf9`  
		Last Modified: Wed, 10 Aug 2016 21:38:46 GMT  
		Size: 7.6 KB (7629 bytes)
	-	`sha256:7077b4689b4aebc24cf7894af1aad3c1fd2020bde0cdb53378d40e80b2ee8d8e`  
		Last Modified: Thu, 11 Aug 2016 20:04:16 GMT  
		Size: 7.1 MB (7144286 bytes)
	-	`sha256:db937cf244d253500a3f05927810bac0f34a58f405e7f031f025f391343a77bb`  
		Last Modified: Thu, 11 Aug 2016 20:04:14 GMT  
		Size: 2.3 MB (2251352 bytes)
	-	`sha256:a1a23e695195034efce6da3bb5b69364880adfc2e016cf80a404b2bc151def80`  
		Last Modified: Thu, 11 Aug 2016 20:04:10 GMT  
		Size: 46.1 KB (46134 bytes)
	-	`sha256:3513aedbacbcf05686493580fe35520882bef9860385c3146c349b0ccd868771`  
		Last Modified: Thu, 11 Aug 2016 20:04:16 GMT  
		Size: 12.9 MB (12858942 bytes)
	-	`sha256:f4fae565c7d36bfc0c545ea963f7a459d0378084738dc4d2aa79354f6113232c`  
		Last Modified: Thu, 11 Aug 2016 20:04:10 GMT  
		Size: 298.0 B
	-	`sha256:27903b56461d4906cf65aa9fefd187f183d11d472ab83d16a1f17539c721bb03`  
		Last Modified: Thu, 11 Aug 2016 20:04:13 GMT  
		Size: 13.1 MB (13117314 bytes)
	-	`sha256:35ded53f8c312d701008c44ec3fde90f5cac02ca2e4c8146462dd29e06b7f6e1`  
		Last Modified: Thu, 11 Aug 2016 20:04:11 GMT  
		Size: 226.0 B

## `piwik:latest`

```console
$ docker pull piwik@sha256:fd75de72b79a01bdd8d49744493621c4d9f60be8c104ac38c49196b9324f6b2f
```

-	Platforms:
	-	linux; amd64

### `piwik:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.1 MB (186108314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:705288123c804765c47f9acc920bff1b1841db47ae9549d93eee476c128b339c`
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
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_VERSION=5.6.24
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_FILENAME=php-5.6.24.tar.xz
# Fri, 29 Jul 2016 21:39:52 GMT
ENV PHP_SHA256=ed7c38c6dac539ade62e08118258f4dac0c49beca04d8603bee4e0ea6ca8250b
# Wed, 10 Aug 2016 20:23:19 GMT
RUN set -xe 	&& cd /usr/src 	&& curl -fSL "http://php.net/get/$PHP_FILENAME/from/this/mirror" -o php.tar.xz 	&& echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c - 	&& curl -fSL "http://php.net/get/$PHP_FILENAME.asc/from/this/mirror" -o php.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done 	&& gpg --batch --verify php.tar.xz.asc php.tar.xz 	&& rm -r "$GNUPGHOME"
# Wed, 10 Aug 2016 20:23:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:49 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& docker-php-source extract 	&& cd /usr/src/php 	&& ./configure 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j"$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps
# Wed, 10 Aug 2016 20:29:50 GMT
COPY multi:ed54b4fe7bef284934703fa6e979b7cc0daed0549a07586d0c1ccd4e2b41884a in /usr/local/bin/
# Wed, 10 Aug 2016 20:29:50 GMT
WORKDIR /var/www/html
# Wed, 10 Aug 2016 20:29:51 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 10 Aug 2016 20:29:52 GMT
EXPOSE 9000/tcp
# Wed, 10 Aug 2016 20:29:52 GMT
CMD ["php-fpm"]
# Thu, 11 Aug 2016 20:00:20 GMT
MAINTAINER pierre@piwik.org
# Thu, 11 Aug 2016 20:01:20 GMT
RUN apt-get update && apt-get install -y       libjpeg-dev       libfreetype6-dev       libgeoip-dev       libpng12-dev       ssmtp       zip  && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 20:03:30 GMT
RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr  && docker-php-ext-install gd mbstring mysql pdo_mysql zip
# Thu, 11 Aug 2016 20:03:40 GMT
RUN pecl install APCu geoip
# Thu, 11 Aug 2016 20:03:41 GMT
ENV PIWIK_VERSION=2.16.2
# Thu, 11 Aug 2016 20:03:51 GMT
RUN curl -fsSL -o piwik.tar.gz       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz"  && curl -fsSL -o piwik.tar.gz.asc       "https://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 814E346FA01A20DBB04B6807B5DBD5925590A237  && gpg --batch --verify piwik.tar.gz.asc piwik.tar.gz  && rm -r "$GNUPGHOME" piwik.tar.gz.asc  && tar -xzf piwik.tar.gz -C /usr/src/  && rm piwik.tar.gz  && chfn -f 'Piwik Admin' www-data
# Thu, 11 Aug 2016 20:03:53 GMT
COPY file:abc0ff564b95b724deccad7ff48d69d7a3d7d34cdee0cce0a887f3ed0e726d21 in /usr/local/etc/php/php.ini
# Thu, 11 Aug 2016 20:03:56 GMT
RUN curl -fsSL -o /usr/src/piwik/misc/GeoIPCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz  && gunzip /usr/src/piwik/misc/GeoIPCity.dat.gz
# Thu, 11 Aug 2016 20:03:57 GMT
COPY file:624ec542e8b52694362740314ac6948ac2d59a5d302df84808cc0cfbddea1e59 in /entrypoint.sh
# Thu, 11 Aug 2016 20:03:58 GMT
VOLUME [/var/www/html]
# Thu, 11 Aug 2016 20:03:59 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 11 Aug 2016 20:04:00 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:85537f80f73d06f9701f77e0105386b0a1abd8735f52804efc66782627af9c62`  
		Last Modified: Fri, 29 Jul 2016 22:46:57 GMT  
		Size: 77.6 MB (77581307 bytes)
	-	`sha256:3d821ad560e13c778e616da2a9033ac30d3811185f43635e95c20b22ab380077`  
		Last Modified: Fri, 29 Jul 2016 22:46:34 GMT  
		Size: 180.0 B
	-	`sha256:1a0ed20d7752971350ab581861731d7d71a6eb560b93d48382b5cc2aa07fed8b`  
		Last Modified: Wed, 10 Aug 2016 21:38:50 GMT  
		Size: 12.4 MB (12399120 bytes)
	-	`sha256:d17456fd86bcf1eb916ff4c4b4909dd6ad98736369cff4e5ee9c79e02782fc67`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 490.0 B
	-	`sha256:c8bd75b8802c8ce64c4a28486fbfb4bde4247b27f5f8363dd8a8469ac89b1e85`  
		Last Modified: Wed, 10 Aug 2016 21:38:48 GMT  
		Size: 9.3 MB (9333467 bytes)
	-	`sha256:0054f99dc6ca14454002cd76f78264c84cdfd9c57cea265ea0a6f601dab80158`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 1.8 KB (1829 bytes)
	-	`sha256:1c8ec71281514f1d63f59000b5fd9082baa8a6d34e7e591d7cd22928879a5d18`  
		Last Modified: Wed, 10 Aug 2016 21:38:45 GMT  
		Size: 129.0 B
	-	`sha256:fa513925a4eb93b436ccdb48c9b0edca88237b4abdebea3245da69a6b37deaf9`  
		Last Modified: Wed, 10 Aug 2016 21:38:46 GMT  
		Size: 7.6 KB (7629 bytes)
	-	`sha256:7077b4689b4aebc24cf7894af1aad3c1fd2020bde0cdb53378d40e80b2ee8d8e`  
		Last Modified: Thu, 11 Aug 2016 20:04:16 GMT  
		Size: 7.1 MB (7144286 bytes)
	-	`sha256:db937cf244d253500a3f05927810bac0f34a58f405e7f031f025f391343a77bb`  
		Last Modified: Thu, 11 Aug 2016 20:04:14 GMT  
		Size: 2.3 MB (2251352 bytes)
	-	`sha256:a1a23e695195034efce6da3bb5b69364880adfc2e016cf80a404b2bc151def80`  
		Last Modified: Thu, 11 Aug 2016 20:04:10 GMT  
		Size: 46.1 KB (46134 bytes)
	-	`sha256:3513aedbacbcf05686493580fe35520882bef9860385c3146c349b0ccd868771`  
		Last Modified: Thu, 11 Aug 2016 20:04:16 GMT  
		Size: 12.9 MB (12858942 bytes)
	-	`sha256:f4fae565c7d36bfc0c545ea963f7a459d0378084738dc4d2aa79354f6113232c`  
		Last Modified: Thu, 11 Aug 2016 20:04:10 GMT  
		Size: 298.0 B
	-	`sha256:27903b56461d4906cf65aa9fefd187f183d11d472ab83d16a1f17539c721bb03`  
		Last Modified: Thu, 11 Aug 2016 20:04:13 GMT  
		Size: 13.1 MB (13117314 bytes)
	-	`sha256:35ded53f8c312d701008c44ec3fde90f5cac02ca2e4c8146462dd29e06b7f6e1`  
		Last Modified: Thu, 11 Aug 2016 20:04:11 GMT  
		Size: 226.0 B
