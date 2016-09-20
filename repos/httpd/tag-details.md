<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `httpd`

-	[`httpd:2.2.31`](#httpd2231)
-	[`httpd:2.2`](#httpd22)
-	[`httpd:2.2.31-alpine`](#httpd2231-alpine)
-	[`httpd:2.2-alpine`](#httpd22-alpine)
-	[`httpd:2.4.23`](#httpd2423)
-	[`httpd:2.4`](#httpd24)
-	[`httpd:2`](#httpd2)
-	[`httpd:latest`](#httpdlatest)
-	[`httpd:2.4.23-alpine`](#httpd2423-alpine)
-	[`httpd:2.4-alpine`](#httpd24-alpine)
-	[`httpd:2-alpine`](#httpd2-alpine)
-	[`httpd:alpine`](#httpdalpine)

## `httpd:2.2.31`

```console
$ docker pull httpd@sha256:6cdca5ac6e31e510af55bc3e8f9b5221d5932a8b9af04fae1833ac6721f01203
```

-	Platforms:
	-	linux; amd64

### `httpd:2.2.31` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.7 MB (67691797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:563e7de6300a8ef2422bc5e4e88e510eaf64ae5ea41bf797ec4547065329d77b`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:45:20 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 30 Aug 2016 21:45:21 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:45:21 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 30 Aug 2016 21:45:22 GMT
WORKDIR /usr/local/apache2
# Tue, 30 Aug 2016 21:45:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:45:35 GMT
ENV HTTPD_VERSION=2.2.31
# Tue, 30 Aug 2016 21:45:35 GMT
ENV HTTPD_SHA1=e3b55387112206307ba76526820a2627472f3787
# Tue, 30 Aug 2016 21:45:35 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dist/httpd/httpd-2.2.31.tar.bz2
# Tue, 30 Aug 2016 21:46:25 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_BZ2_URL.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xvf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j"$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 30 Aug 2016 21:46:25 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Tue, 30 Aug 2016 21:46:26 GMT
EXPOSE 80/tcp
# Tue, 30 Aug 2016 21:46:26 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95e1f92326d796b5be45cd75926d967275f321835d71ad6dfcfe02c28866fdb`  
		Last Modified: Thu, 08 Sep 2016 17:42:44 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e8046a7a4e9a34101363bfe75596866e48e20d1c8709daa00c4d1ba8fe4b24`  
		Last Modified: Thu, 08 Sep 2016 17:42:50 GMT  
		Size: 11.7 MB (11731568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d202cee20c6ac7769c43a926c60b3413f9d96256052117e85edf2d67ab143070`  
		Last Modified: Thu, 08 Sep 2016 17:42:46 GMT  
		Size: 4.6 MB (4592520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35c3bfe12391b97fc6f3700181662cdce7f6f7dab178d8a28851ccb7d0e06d1`  
		Last Modified: Thu, 08 Sep 2016 17:42:43 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.2`

```console
$ docker pull httpd@sha256:6cdca5ac6e31e510af55bc3e8f9b5221d5932a8b9af04fae1833ac6721f01203
```

-	Platforms:
	-	linux; amd64

### `httpd:2.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.7 MB (67691797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:563e7de6300a8ef2422bc5e4e88e510eaf64ae5ea41bf797ec4547065329d77b`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:45:20 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 30 Aug 2016 21:45:21 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:45:21 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 30 Aug 2016 21:45:22 GMT
WORKDIR /usr/local/apache2
# Tue, 30 Aug 2016 21:45:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:45:35 GMT
ENV HTTPD_VERSION=2.2.31
# Tue, 30 Aug 2016 21:45:35 GMT
ENV HTTPD_SHA1=e3b55387112206307ba76526820a2627472f3787
# Tue, 30 Aug 2016 21:45:35 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dist/httpd/httpd-2.2.31.tar.bz2
# Tue, 30 Aug 2016 21:46:25 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_BZ2_URL.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xvf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j"$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 30 Aug 2016 21:46:25 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Tue, 30 Aug 2016 21:46:26 GMT
EXPOSE 80/tcp
# Tue, 30 Aug 2016 21:46:26 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95e1f92326d796b5be45cd75926d967275f321835d71ad6dfcfe02c28866fdb`  
		Last Modified: Thu, 08 Sep 2016 17:42:44 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e8046a7a4e9a34101363bfe75596866e48e20d1c8709daa00c4d1ba8fe4b24`  
		Last Modified: Thu, 08 Sep 2016 17:42:50 GMT  
		Size: 11.7 MB (11731568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d202cee20c6ac7769c43a926c60b3413f9d96256052117e85edf2d67ab143070`  
		Last Modified: Thu, 08 Sep 2016 17:42:46 GMT  
		Size: 4.6 MB (4592520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35c3bfe12391b97fc6f3700181662cdce7f6f7dab178d8a28851ccb7d0e06d1`  
		Last Modified: Thu, 08 Sep 2016 17:42:43 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.2.31-alpine`

```console
$ docker pull httpd@sha256:24237baab919820dbe58ce16be0d0efe60e62d8ab99795fab8b1bd7531c63417
```

-	Platforms:
	-	linux; amd64

### `httpd:2.2.31-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26361625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e829aaba1300a7b1abd904be64f838bd37079d068d24299006fcb4bc3a6ac1e`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:08:27 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 20 Sep 2016 00:08:27 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 20 Sep 2016 00:08:27 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 00:08:29 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 20 Sep 2016 00:08:29 GMT
WORKDIR /usr/local/apache2
# Tue, 20 Sep 2016 00:08:29 GMT
ENV HTTPD_VERSION=2.2.31
# Tue, 20 Sep 2016 00:08:30 GMT
ENV HTTPD_SHA1=e3b55387112206307ba76526820a2627472f3787
# Tue, 20 Sep 2016 00:08:30 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dist/httpd/httpd-2.2.31.tar.bz2
# Tue, 20 Sep 2016 00:09:20 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		gcc 		gnupg 		libc-dev 		make 		openssl 		openssl-dev 		pcre-dev 		tar 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_BZ2_URL.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xvf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& cd .. 	&& rm -r src 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Tue, 20 Sep 2016 00:09:21 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:09:21 GMT
EXPOSE 80/tcp
# Tue, 20 Sep 2016 00:09:22 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29d08ff4265a40a4c66146c6edc6f6f529b50bcf15621681a24ff7b785a3fc5`  
		Last Modified: Tue, 20 Sep 2016 00:09:31 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22741b6fe1b12a5ad4cca261b25df75647adcebb58fb4d3f5a2f06a079565087`  
		Last Modified: Tue, 20 Sep 2016 00:09:32 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a42a97ff952c03e84511bc17cea8b61ea5152510b8aa9c18458c137fac4c9d`  
		Last Modified: Tue, 20 Sep 2016 00:09:44 GMT  
		Size: 24.0 MB (24048884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8bec1852d838f362079884e4a5c0325ef7ef7ec09587d7e5d52ba0b30846be5`  
		Last Modified: Tue, 20 Sep 2016 00:09:31 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.2-alpine`

```console
$ docker pull httpd@sha256:24237baab919820dbe58ce16be0d0efe60e62d8ab99795fab8b1bd7531c63417
```

-	Platforms:
	-	linux; amd64

### `httpd:2.2-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26361625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e829aaba1300a7b1abd904be64f838bd37079d068d24299006fcb4bc3a6ac1e`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:08:27 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 20 Sep 2016 00:08:27 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 20 Sep 2016 00:08:27 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 00:08:29 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 20 Sep 2016 00:08:29 GMT
WORKDIR /usr/local/apache2
# Tue, 20 Sep 2016 00:08:29 GMT
ENV HTTPD_VERSION=2.2.31
# Tue, 20 Sep 2016 00:08:30 GMT
ENV HTTPD_SHA1=e3b55387112206307ba76526820a2627472f3787
# Tue, 20 Sep 2016 00:08:30 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dist/httpd/httpd-2.2.31.tar.bz2
# Tue, 20 Sep 2016 00:09:20 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		gcc 		gnupg 		libc-dev 		make 		openssl 		openssl-dev 		pcre-dev 		tar 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_BZ2_URL.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xvf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& cd .. 	&& rm -r src 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Tue, 20 Sep 2016 00:09:21 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:09:21 GMT
EXPOSE 80/tcp
# Tue, 20 Sep 2016 00:09:22 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29d08ff4265a40a4c66146c6edc6f6f529b50bcf15621681a24ff7b785a3fc5`  
		Last Modified: Tue, 20 Sep 2016 00:09:31 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22741b6fe1b12a5ad4cca261b25df75647adcebb58fb4d3f5a2f06a079565087`  
		Last Modified: Tue, 20 Sep 2016 00:09:32 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a42a97ff952c03e84511bc17cea8b61ea5152510b8aa9c18458c137fac4c9d`  
		Last Modified: Tue, 20 Sep 2016 00:09:44 GMT  
		Size: 24.0 MB (24048884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8bec1852d838f362079884e4a5c0325ef7ef7ec09587d7e5d52ba0b30846be5`  
		Last Modified: Tue, 20 Sep 2016 00:09:31 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4.23`

```console
$ docker pull httpd@sha256:3ad4d7c4f1815bd1c16788a57f81b41335a68a915afdf16e59603f5e50a0d3a4
```

-	Platforms:
	-	linux; amd64

### `httpd:2.4.23` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.7 MB (70656814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe3336dd034d5055820464e13461e50a40278496d27cf346ed6d170fc7fe6317`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:45:20 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 30 Aug 2016 21:45:21 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:45:21 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 30 Aug 2016 21:45:22 GMT
WORKDIR /usr/local/apache2
# Tue, 30 Aug 2016 21:45:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:46:26 GMT
ENV HTTPD_VERSION=2.4.23
# Tue, 30 Aug 2016 21:46:27 GMT
ENV HTTPD_SHA1=5101be34ac4a509b245adb70a56690a84fcc4e7f
# Tue, 30 Aug 2016 21:46:27 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dist/httpd/httpd-2.4.23.tar.bz2
# Tue, 30 Aug 2016 21:47:27 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_BZ2_URL.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xvf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j"$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 30 Aug 2016 21:47:27 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 30 Aug 2016 21:47:28 GMT
EXPOSE 80/tcp
# Tue, 30 Aug 2016 21:47:28 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95e1f92326d796b5be45cd75926d967275f321835d71ad6dfcfe02c28866fdb`  
		Last Modified: Thu, 08 Sep 2016 17:42:44 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e8046a7a4e9a34101363bfe75596866e48e20d1c8709daa00c4d1ba8fe4b24`  
		Last Modified: Thu, 08 Sep 2016 17:42:50 GMT  
		Size: 11.7 MB (11731568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a0d292c371ea231efac204ef938f04f6e290650a250bea19bc5f4d2e6f5d1f`  
		Last Modified: Thu, 08 Sep 2016 17:43:48 GMT  
		Size: 7.6 MB (7557538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f7586acab34ec4cd399db5029b2a3224189b27dd483cae8476f10c073303c21`  
		Last Modified: Thu, 08 Sep 2016 17:43:43 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4`

```console
$ docker pull httpd@sha256:3ad4d7c4f1815bd1c16788a57f81b41335a68a915afdf16e59603f5e50a0d3a4
```

-	Platforms:
	-	linux; amd64

### `httpd:2.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.7 MB (70656814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe3336dd034d5055820464e13461e50a40278496d27cf346ed6d170fc7fe6317`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:45:20 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 30 Aug 2016 21:45:21 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:45:21 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 30 Aug 2016 21:45:22 GMT
WORKDIR /usr/local/apache2
# Tue, 30 Aug 2016 21:45:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:46:26 GMT
ENV HTTPD_VERSION=2.4.23
# Tue, 30 Aug 2016 21:46:27 GMT
ENV HTTPD_SHA1=5101be34ac4a509b245adb70a56690a84fcc4e7f
# Tue, 30 Aug 2016 21:46:27 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dist/httpd/httpd-2.4.23.tar.bz2
# Tue, 30 Aug 2016 21:47:27 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_BZ2_URL.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xvf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j"$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 30 Aug 2016 21:47:27 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 30 Aug 2016 21:47:28 GMT
EXPOSE 80/tcp
# Tue, 30 Aug 2016 21:47:28 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95e1f92326d796b5be45cd75926d967275f321835d71ad6dfcfe02c28866fdb`  
		Last Modified: Thu, 08 Sep 2016 17:42:44 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e8046a7a4e9a34101363bfe75596866e48e20d1c8709daa00c4d1ba8fe4b24`  
		Last Modified: Thu, 08 Sep 2016 17:42:50 GMT  
		Size: 11.7 MB (11731568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a0d292c371ea231efac204ef938f04f6e290650a250bea19bc5f4d2e6f5d1f`  
		Last Modified: Thu, 08 Sep 2016 17:43:48 GMT  
		Size: 7.6 MB (7557538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f7586acab34ec4cd399db5029b2a3224189b27dd483cae8476f10c073303c21`  
		Last Modified: Thu, 08 Sep 2016 17:43:43 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2`

```console
$ docker pull httpd@sha256:3ad4d7c4f1815bd1c16788a57f81b41335a68a915afdf16e59603f5e50a0d3a4
```

-	Platforms:
	-	linux; amd64

### `httpd:2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.7 MB (70656814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe3336dd034d5055820464e13461e50a40278496d27cf346ed6d170fc7fe6317`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:45:20 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 30 Aug 2016 21:45:21 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:45:21 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 30 Aug 2016 21:45:22 GMT
WORKDIR /usr/local/apache2
# Tue, 30 Aug 2016 21:45:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:46:26 GMT
ENV HTTPD_VERSION=2.4.23
# Tue, 30 Aug 2016 21:46:27 GMT
ENV HTTPD_SHA1=5101be34ac4a509b245adb70a56690a84fcc4e7f
# Tue, 30 Aug 2016 21:46:27 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dist/httpd/httpd-2.4.23.tar.bz2
# Tue, 30 Aug 2016 21:47:27 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_BZ2_URL.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xvf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j"$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 30 Aug 2016 21:47:27 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 30 Aug 2016 21:47:28 GMT
EXPOSE 80/tcp
# Tue, 30 Aug 2016 21:47:28 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95e1f92326d796b5be45cd75926d967275f321835d71ad6dfcfe02c28866fdb`  
		Last Modified: Thu, 08 Sep 2016 17:42:44 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e8046a7a4e9a34101363bfe75596866e48e20d1c8709daa00c4d1ba8fe4b24`  
		Last Modified: Thu, 08 Sep 2016 17:42:50 GMT  
		Size: 11.7 MB (11731568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a0d292c371ea231efac204ef938f04f6e290650a250bea19bc5f4d2e6f5d1f`  
		Last Modified: Thu, 08 Sep 2016 17:43:48 GMT  
		Size: 7.6 MB (7557538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f7586acab34ec4cd399db5029b2a3224189b27dd483cae8476f10c073303c21`  
		Last Modified: Thu, 08 Sep 2016 17:43:43 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:latest`

```console
$ docker pull httpd@sha256:3ad4d7c4f1815bd1c16788a57f81b41335a68a915afdf16e59603f5e50a0d3a4
```

-	Platforms:
	-	linux; amd64

### `httpd:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.7 MB (70656814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe3336dd034d5055820464e13461e50a40278496d27cf346ed6d170fc7fe6317`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:45:20 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 30 Aug 2016 21:45:21 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:45:21 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 30 Aug 2016 21:45:22 GMT
WORKDIR /usr/local/apache2
# Tue, 30 Aug 2016 21:45:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:46:26 GMT
ENV HTTPD_VERSION=2.4.23
# Tue, 30 Aug 2016 21:46:27 GMT
ENV HTTPD_SHA1=5101be34ac4a509b245adb70a56690a84fcc4e7f
# Tue, 30 Aug 2016 21:46:27 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dist/httpd/httpd-2.4.23.tar.bz2
# Tue, 30 Aug 2016 21:47:27 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_BZ2_URL.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xvf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j"$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 30 Aug 2016 21:47:27 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 30 Aug 2016 21:47:28 GMT
EXPOSE 80/tcp
# Tue, 30 Aug 2016 21:47:28 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95e1f92326d796b5be45cd75926d967275f321835d71ad6dfcfe02c28866fdb`  
		Last Modified: Thu, 08 Sep 2016 17:42:44 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e8046a7a4e9a34101363bfe75596866e48e20d1c8709daa00c4d1ba8fe4b24`  
		Last Modified: Thu, 08 Sep 2016 17:42:50 GMT  
		Size: 11.7 MB (11731568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a0d292c371ea231efac204ef938f04f6e290650a250bea19bc5f4d2e6f5d1f`  
		Last Modified: Thu, 08 Sep 2016 17:43:48 GMT  
		Size: 7.6 MB (7557538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f7586acab34ec4cd399db5029b2a3224189b27dd483cae8476f10c073303c21`  
		Last Modified: Thu, 08 Sep 2016 17:43:43 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4.23-alpine`

```console
$ docker pull httpd@sha256:66ee7410e34072f7c917b1a181ca1837e8ffe74803ee297a81d0b46f09c84668
```

-	Platforms:
	-	linux; amd64

### `httpd:2.4.23-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.0 MB (30047076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13a3260e54690292ecf0680b4b909d9d4872da4f514ba20867c5b823c2f208b8`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:08:27 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 20 Sep 2016 00:08:27 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 20 Sep 2016 00:08:27 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 00:08:29 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 20 Sep 2016 00:08:29 GMT
WORKDIR /usr/local/apache2
# Tue, 20 Sep 2016 00:10:02 GMT
ENV HTTPD_VERSION=2.4.23
# Tue, 20 Sep 2016 00:10:02 GMT
ENV HTTPD_SHA1=5101be34ac4a509b245adb70a56690a84fcc4e7f
# Tue, 20 Sep 2016 00:10:03 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dist/httpd/httpd-2.4.23.tar.bz2
# Tue, 20 Sep 2016 00:12:05 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		gcc 		gnupg 		libc-dev 		make 		openssl 		openssl-dev 		pcre-dev 		tar 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_BZ2_URL.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xvf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& cd .. 	&& rm -r src 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Tue, 20 Sep 2016 00:12:06 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:12:06 GMT
EXPOSE 80/tcp
# Tue, 20 Sep 2016 00:12:06 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29d08ff4265a40a4c66146c6edc6f6f529b50bcf15621681a24ff7b785a3fc5`  
		Last Modified: Tue, 20 Sep 2016 00:09:31 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22741b6fe1b12a5ad4cca261b25df75647adcebb58fb4d3f5a2f06a079565087`  
		Last Modified: Tue, 20 Sep 2016 00:09:32 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb020b28a1747c8f78e6d1e938b3ba85183fbec606f52e1dc0297ad464f878e`  
		Last Modified: Tue, 20 Sep 2016 00:12:28 GMT  
		Size: 27.7 MB (27734334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83224d1d5c81c6ca7caaf6f02eb389f1ffb6df649319e83b42aaf7ac7a3a38ab`  
		Last Modified: Tue, 20 Sep 2016 00:12:15 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4-alpine`

```console
$ docker pull httpd@sha256:66ee7410e34072f7c917b1a181ca1837e8ffe74803ee297a81d0b46f09c84668
```

-	Platforms:
	-	linux; amd64

### `httpd:2.4-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.0 MB (30047076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13a3260e54690292ecf0680b4b909d9d4872da4f514ba20867c5b823c2f208b8`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:08:27 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 20 Sep 2016 00:08:27 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 20 Sep 2016 00:08:27 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 00:08:29 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 20 Sep 2016 00:08:29 GMT
WORKDIR /usr/local/apache2
# Tue, 20 Sep 2016 00:10:02 GMT
ENV HTTPD_VERSION=2.4.23
# Tue, 20 Sep 2016 00:10:02 GMT
ENV HTTPD_SHA1=5101be34ac4a509b245adb70a56690a84fcc4e7f
# Tue, 20 Sep 2016 00:10:03 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dist/httpd/httpd-2.4.23.tar.bz2
# Tue, 20 Sep 2016 00:12:05 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		gcc 		gnupg 		libc-dev 		make 		openssl 		openssl-dev 		pcre-dev 		tar 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_BZ2_URL.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xvf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& cd .. 	&& rm -r src 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Tue, 20 Sep 2016 00:12:06 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:12:06 GMT
EXPOSE 80/tcp
# Tue, 20 Sep 2016 00:12:06 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29d08ff4265a40a4c66146c6edc6f6f529b50bcf15621681a24ff7b785a3fc5`  
		Last Modified: Tue, 20 Sep 2016 00:09:31 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22741b6fe1b12a5ad4cca261b25df75647adcebb58fb4d3f5a2f06a079565087`  
		Last Modified: Tue, 20 Sep 2016 00:09:32 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb020b28a1747c8f78e6d1e938b3ba85183fbec606f52e1dc0297ad464f878e`  
		Last Modified: Tue, 20 Sep 2016 00:12:28 GMT  
		Size: 27.7 MB (27734334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83224d1d5c81c6ca7caaf6f02eb389f1ffb6df649319e83b42aaf7ac7a3a38ab`  
		Last Modified: Tue, 20 Sep 2016 00:12:15 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2-alpine`

```console
$ docker pull httpd@sha256:66ee7410e34072f7c917b1a181ca1837e8ffe74803ee297a81d0b46f09c84668
```

-	Platforms:
	-	linux; amd64

### `httpd:2-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.0 MB (30047076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13a3260e54690292ecf0680b4b909d9d4872da4f514ba20867c5b823c2f208b8`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:08:27 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 20 Sep 2016 00:08:27 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 20 Sep 2016 00:08:27 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 00:08:29 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 20 Sep 2016 00:08:29 GMT
WORKDIR /usr/local/apache2
# Tue, 20 Sep 2016 00:10:02 GMT
ENV HTTPD_VERSION=2.4.23
# Tue, 20 Sep 2016 00:10:02 GMT
ENV HTTPD_SHA1=5101be34ac4a509b245adb70a56690a84fcc4e7f
# Tue, 20 Sep 2016 00:10:03 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dist/httpd/httpd-2.4.23.tar.bz2
# Tue, 20 Sep 2016 00:12:05 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		gcc 		gnupg 		libc-dev 		make 		openssl 		openssl-dev 		pcre-dev 		tar 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_BZ2_URL.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xvf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& cd .. 	&& rm -r src 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Tue, 20 Sep 2016 00:12:06 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:12:06 GMT
EXPOSE 80/tcp
# Tue, 20 Sep 2016 00:12:06 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29d08ff4265a40a4c66146c6edc6f6f529b50bcf15621681a24ff7b785a3fc5`  
		Last Modified: Tue, 20 Sep 2016 00:09:31 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22741b6fe1b12a5ad4cca261b25df75647adcebb58fb4d3f5a2f06a079565087`  
		Last Modified: Tue, 20 Sep 2016 00:09:32 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb020b28a1747c8f78e6d1e938b3ba85183fbec606f52e1dc0297ad464f878e`  
		Last Modified: Tue, 20 Sep 2016 00:12:28 GMT  
		Size: 27.7 MB (27734334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83224d1d5c81c6ca7caaf6f02eb389f1ffb6df649319e83b42aaf7ac7a3a38ab`  
		Last Modified: Tue, 20 Sep 2016 00:12:15 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:alpine`

```console
$ docker pull httpd@sha256:66ee7410e34072f7c917b1a181ca1837e8ffe74803ee297a81d0b46f09c84668
```

-	Platforms:
	-	linux; amd64

### `httpd:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.0 MB (30047076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13a3260e54690292ecf0680b4b909d9d4872da4f514ba20867c5b823c2f208b8`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:08:27 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 20 Sep 2016 00:08:27 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 20 Sep 2016 00:08:27 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 00:08:29 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 20 Sep 2016 00:08:29 GMT
WORKDIR /usr/local/apache2
# Tue, 20 Sep 2016 00:10:02 GMT
ENV HTTPD_VERSION=2.4.23
# Tue, 20 Sep 2016 00:10:02 GMT
ENV HTTPD_SHA1=5101be34ac4a509b245adb70a56690a84fcc4e7f
# Tue, 20 Sep 2016 00:10:03 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dist/httpd/httpd-2.4.23.tar.bz2
# Tue, 20 Sep 2016 00:12:05 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		gcc 		gnupg 		libc-dev 		make 		openssl 		openssl-dev 		pcre-dev 		tar 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_BZ2_URL.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xvf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& cd .. 	&& rm -r src 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Tue, 20 Sep 2016 00:12:06 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 20 Sep 2016 00:12:06 GMT
EXPOSE 80/tcp
# Tue, 20 Sep 2016 00:12:06 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29d08ff4265a40a4c66146c6edc6f6f529b50bcf15621681a24ff7b785a3fc5`  
		Last Modified: Tue, 20 Sep 2016 00:09:31 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22741b6fe1b12a5ad4cca261b25df75647adcebb58fb4d3f5a2f06a079565087`  
		Last Modified: Tue, 20 Sep 2016 00:09:32 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb020b28a1747c8f78e6d1e938b3ba85183fbec606f52e1dc0297ad464f878e`  
		Last Modified: Tue, 20 Sep 2016 00:12:28 GMT  
		Size: 27.7 MB (27734334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83224d1d5c81c6ca7caaf6f02eb389f1ffb6df649319e83b42aaf7ac7a3a38ab`  
		Last Modified: Tue, 20 Sep 2016 00:12:15 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
