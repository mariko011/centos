<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `httpd`

-	[`httpd:2.2.34`](#httpd2234)
-	[`httpd:2.2`](#httpd22)
-	[`httpd:2.2.34-alpine`](#httpd2234-alpine)
-	[`httpd:2.2-alpine`](#httpd22-alpine)
-	[`httpd:2.4.27`](#httpd2427)
-	[`httpd:2.4`](#httpd24)
-	[`httpd:2`](#httpd2)
-	[`httpd:latest`](#httpdlatest)
-	[`httpd:2.4.25-alpine`](#httpd2425-alpine)
-	[`httpd:2.4-alpine`](#httpd24-alpine)
-	[`httpd:2-alpine`](#httpd2-alpine)
-	[`httpd:alpine`](#httpdalpine)

## `httpd:2.2.34`

```console
$ docker pull httpd@sha256:e75ae8c440053b91bc7d54a161c41b7381ce4f2461d470ddf4c91a6b24612605
```

-	Platforms:
	-	linux; amd64

### `httpd:2.2.34` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.6 MB (66577567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b797655ff3b8d7368d522262379d874e94b4c06374de29b006ded6a8d78a45a5`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 05:47:43 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 26 Jul 2017 05:47:43 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 05:47:43 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 26 Jul 2017 05:47:44 GMT
WORKDIR /usr/local/apache2
# Wed, 26 Jul 2017 05:48:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:48:04 GMT
ENV HTTPD_VERSION=2.2.34
# Wed, 26 Jul 2017 05:48:04 GMT
ENV HTTPD_SHA1=829206394e238af0b800fc78d19c74ee466ecb23
# Wed, 26 Jul 2017 05:48:04 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.34.tar.bz2
# Wed, 26 Jul 2017 05:48:05 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Wed, 26 Jul 2017 05:48:05 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2
# Wed, 26 Jul 2017 05:48:05 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Wed, 26 Jul 2017 05:49:09 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 26 Jul 2017 05:49:10 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Wed, 26 Jul 2017 05:49:10 GMT
EXPOSE 80/tcp
# Wed, 26 Jul 2017 05:49:10 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23766585caa5ab95062a452e0561f3e48be66de69527016f77e30d8fd9e092f6`  
		Last Modified: Wed, 26 Jul 2017 05:51:14 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ae6d0417456845defc277993d3ca66f6c1f17e9235571f39a1c54418035820`  
		Last Modified: Wed, 26 Jul 2017 05:51:17 GMT  
		Size: 11.9 MB (11946764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2742be0c3c550f9f811355f57b64f5c43cfc11d742b282ff56e1fc4ad3bcff`  
		Last Modified: Wed, 26 Jul 2017 05:51:15 GMT  
		Size: 2.0 MB (2024731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150a034577e77885a22f772549cc2d4af7b0cf7cd72dfa8899a700de1aacfc96`  
		Last Modified: Wed, 26 Jul 2017 05:51:14 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.2`

```console
$ docker pull httpd@sha256:e75ae8c440053b91bc7d54a161c41b7381ce4f2461d470ddf4c91a6b24612605
```

-	Platforms:
	-	linux; amd64

### `httpd:2.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.6 MB (66577567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b797655ff3b8d7368d522262379d874e94b4c06374de29b006ded6a8d78a45a5`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 05:47:43 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 26 Jul 2017 05:47:43 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 05:47:43 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 26 Jul 2017 05:47:44 GMT
WORKDIR /usr/local/apache2
# Wed, 26 Jul 2017 05:48:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:48:04 GMT
ENV HTTPD_VERSION=2.2.34
# Wed, 26 Jul 2017 05:48:04 GMT
ENV HTTPD_SHA1=829206394e238af0b800fc78d19c74ee466ecb23
# Wed, 26 Jul 2017 05:48:04 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.34.tar.bz2
# Wed, 26 Jul 2017 05:48:05 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Wed, 26 Jul 2017 05:48:05 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2
# Wed, 26 Jul 2017 05:48:05 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Wed, 26 Jul 2017 05:49:09 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 26 Jul 2017 05:49:10 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Wed, 26 Jul 2017 05:49:10 GMT
EXPOSE 80/tcp
# Wed, 26 Jul 2017 05:49:10 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23766585caa5ab95062a452e0561f3e48be66de69527016f77e30d8fd9e092f6`  
		Last Modified: Wed, 26 Jul 2017 05:51:14 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ae6d0417456845defc277993d3ca66f6c1f17e9235571f39a1c54418035820`  
		Last Modified: Wed, 26 Jul 2017 05:51:17 GMT  
		Size: 11.9 MB (11946764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2742be0c3c550f9f811355f57b64f5c43cfc11d742b282ff56e1fc4ad3bcff`  
		Last Modified: Wed, 26 Jul 2017 05:51:15 GMT  
		Size: 2.0 MB (2024731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150a034577e77885a22f772549cc2d4af7b0cf7cd72dfa8899a700de1aacfc96`  
		Last Modified: Wed, 26 Jul 2017 05:51:14 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.2.34-alpine`

```console
$ docker pull httpd@sha256:6eda59e77687667702aa8164154255ccb26e0cb8acea17a5dbf5f396d4f18e43
```

-	Platforms:
	-	linux; amd64

### `httpd:2.2.34-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 MB (24381476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec9059980b9b9338923b7608f5f6496f73fd0a99f3f061b84efb3b3e8db7a19b`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 21:56:17 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Jun 2017 21:56:18 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 27 Jun 2017 21:56:18 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 21:56:20 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 27 Jun 2017 21:56:21 GMT
WORKDIR /usr/local/apache2
# Tue, 11 Jul 2017 19:18:34 GMT
ENV HTTPD_VERSION=2.2.34
# Tue, 11 Jul 2017 19:18:34 GMT
ENV HTTPD_SHA1=829206394e238af0b800fc78d19c74ee466ecb23
# Tue, 11 Jul 2017 19:18:35 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.34.tar.bz2
# Tue, 11 Jul 2017 19:18:42 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Tue, 11 Jul 2017 19:18:49 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2
# Tue, 11 Jul 2017 19:18:56 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Fri, 21 Jul 2017 21:20:44 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		openssl 		openssl-dev 		pcre-dev 		tar 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Fri, 21 Jul 2017 21:20:44 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 21 Jul 2017 21:20:45 GMT
EXPOSE 80/tcp
# Fri, 21 Jul 2017 21:20:45 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263d55d1a8328ff41b5439d96ff53f27cbf2cec2ea928b4ee104bec4abfd82bc`  
		Last Modified: Thu, 29 Jun 2017 21:05:46 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e06f932f9899063a21d13c4a3554689487495d82ae21022e1016bc22b43ea5a`  
		Last Modified: Thu, 29 Jun 2017 21:05:47 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa351afba0c8d98e16fa16351bfe023652c40f2ec0969c70e2c330b7185860ad`  
		Last Modified: Fri, 21 Jul 2017 21:22:28 GMT  
		Size: 22.0 MB (21994774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86943ad131a10f84a81b71b2c56ed1e916ec2bdb6d15ffba37e0afd66a8bc84c`  
		Last Modified: Fri, 21 Jul 2017 21:22:24 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.2-alpine`

```console
$ docker pull httpd@sha256:6eda59e77687667702aa8164154255ccb26e0cb8acea17a5dbf5f396d4f18e43
```

-	Platforms:
	-	linux; amd64

### `httpd:2.2-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 MB (24381476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec9059980b9b9338923b7608f5f6496f73fd0a99f3f061b84efb3b3e8db7a19b`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 21:56:17 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Jun 2017 21:56:18 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 27 Jun 2017 21:56:18 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 21:56:20 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 27 Jun 2017 21:56:21 GMT
WORKDIR /usr/local/apache2
# Tue, 11 Jul 2017 19:18:34 GMT
ENV HTTPD_VERSION=2.2.34
# Tue, 11 Jul 2017 19:18:34 GMT
ENV HTTPD_SHA1=829206394e238af0b800fc78d19c74ee466ecb23
# Tue, 11 Jul 2017 19:18:35 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.34.tar.bz2
# Tue, 11 Jul 2017 19:18:42 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Tue, 11 Jul 2017 19:18:49 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2
# Tue, 11 Jul 2017 19:18:56 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Fri, 21 Jul 2017 21:20:44 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		openssl 		openssl-dev 		pcre-dev 		tar 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Fri, 21 Jul 2017 21:20:44 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 21 Jul 2017 21:20:45 GMT
EXPOSE 80/tcp
# Fri, 21 Jul 2017 21:20:45 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263d55d1a8328ff41b5439d96ff53f27cbf2cec2ea928b4ee104bec4abfd82bc`  
		Last Modified: Thu, 29 Jun 2017 21:05:46 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e06f932f9899063a21d13c4a3554689487495d82ae21022e1016bc22b43ea5a`  
		Last Modified: Thu, 29 Jun 2017 21:05:47 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa351afba0c8d98e16fa16351bfe023652c40f2ec0969c70e2c330b7185860ad`  
		Last Modified: Fri, 21 Jul 2017 21:22:28 GMT  
		Size: 22.0 MB (21994774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86943ad131a10f84a81b71b2c56ed1e916ec2bdb6d15ffba37e0afd66a8bc84c`  
		Last Modified: Fri, 21 Jul 2017 21:22:24 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4.27`

```console
$ docker pull httpd@sha256:5b35d13089db73df620f4c198f5a4bfa56b8fe45a0364f343df9a26d874fef6c
```

-	Platforms:
	-	linux; amd64

### `httpd:2.4.27` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.9 MB (68887424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e74fcb59d25bdf03adcc8d89bcda8ae9456d2041c557c973072085708814e5c7`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 16:51:28 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 26 Jul 2017 05:49:13 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 26 Jul 2017 05:49:13 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 05:49:14 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 26 Jul 2017 05:49:14 GMT
WORKDIR /usr/local/apache2
# Wed, 26 Jul 2017 05:49:14 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Wed, 26 Jul 2017 05:49:15 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Wed, 26 Jul 2017 05:49:15 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Wed, 26 Jul 2017 05:49:38 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:49:38 GMT
ENV HTTPD_VERSION=2.4.27
# Wed, 26 Jul 2017 05:49:38 GMT
ENV HTTPD_SHA1=699e4e917e8fb5fd7d0ce7e009f8256ed02ec6fc
# Wed, 26 Jul 2017 05:49:38 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.27.tar.bz2
# Wed, 26 Jul 2017 05:49:39 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Wed, 26 Jul 2017 05:49:39 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2
# Wed, 26 Jul 2017 05:49:39 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Wed, 26 Jul 2017 05:51:07 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 26 Jul 2017 05:51:08 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Wed, 26 Jul 2017 05:51:08 GMT
EXPOSE 80/tcp
# Wed, 26 Jul 2017 05:51:08 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d839585b9c7f4b7b265fa2396f6966ea7274dbf33ca9f21129e1b7ad7a625f1`  
		Last Modified: Mon, 24 Jul 2017 16:55:41 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf157792586abc3385471c59d759569a1801d979b476b2cde69ccc49452b3e6c`  
		Last Modified: Wed, 26 Jul 2017 05:51:37 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c620105f0566d5108dc337f100b690e7d824f2b0895abc4296ed39a43009f0b7`  
		Last Modified: Wed, 26 Jul 2017 05:51:38 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830b826a2e138e6bf5ff58efc7d25cf97b859d20f0bfbc7c776def3278048de3`  
		Last Modified: Wed, 26 Jul 2017 05:51:40 GMT  
		Size: 13.4 MB (13365113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2eb5743536660b4ec40ee535a0ef8c9d2f4f784b3f209ebfea8506322b3cee`  
		Last Modified: Wed, 26 Jul 2017 05:51:38 GMT  
		Size: 2.9 MB (2915692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb53f3c0989782a2cac123af563bcb850ae213241fed911a4ea3c0ab5e41dd13`  
		Last Modified: Wed, 26 Jul 2017 05:51:38 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4`

```console
$ docker pull httpd@sha256:5b35d13089db73df620f4c198f5a4bfa56b8fe45a0364f343df9a26d874fef6c
```

-	Platforms:
	-	linux; amd64

### `httpd:2.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.9 MB (68887424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e74fcb59d25bdf03adcc8d89bcda8ae9456d2041c557c973072085708814e5c7`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 16:51:28 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 26 Jul 2017 05:49:13 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 26 Jul 2017 05:49:13 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 05:49:14 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 26 Jul 2017 05:49:14 GMT
WORKDIR /usr/local/apache2
# Wed, 26 Jul 2017 05:49:14 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Wed, 26 Jul 2017 05:49:15 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Wed, 26 Jul 2017 05:49:15 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Wed, 26 Jul 2017 05:49:38 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:49:38 GMT
ENV HTTPD_VERSION=2.4.27
# Wed, 26 Jul 2017 05:49:38 GMT
ENV HTTPD_SHA1=699e4e917e8fb5fd7d0ce7e009f8256ed02ec6fc
# Wed, 26 Jul 2017 05:49:38 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.27.tar.bz2
# Wed, 26 Jul 2017 05:49:39 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Wed, 26 Jul 2017 05:49:39 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2
# Wed, 26 Jul 2017 05:49:39 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Wed, 26 Jul 2017 05:51:07 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 26 Jul 2017 05:51:08 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Wed, 26 Jul 2017 05:51:08 GMT
EXPOSE 80/tcp
# Wed, 26 Jul 2017 05:51:08 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d839585b9c7f4b7b265fa2396f6966ea7274dbf33ca9f21129e1b7ad7a625f1`  
		Last Modified: Mon, 24 Jul 2017 16:55:41 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf157792586abc3385471c59d759569a1801d979b476b2cde69ccc49452b3e6c`  
		Last Modified: Wed, 26 Jul 2017 05:51:37 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c620105f0566d5108dc337f100b690e7d824f2b0895abc4296ed39a43009f0b7`  
		Last Modified: Wed, 26 Jul 2017 05:51:38 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830b826a2e138e6bf5ff58efc7d25cf97b859d20f0bfbc7c776def3278048de3`  
		Last Modified: Wed, 26 Jul 2017 05:51:40 GMT  
		Size: 13.4 MB (13365113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2eb5743536660b4ec40ee535a0ef8c9d2f4f784b3f209ebfea8506322b3cee`  
		Last Modified: Wed, 26 Jul 2017 05:51:38 GMT  
		Size: 2.9 MB (2915692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb53f3c0989782a2cac123af563bcb850ae213241fed911a4ea3c0ab5e41dd13`  
		Last Modified: Wed, 26 Jul 2017 05:51:38 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2`

```console
$ docker pull httpd@sha256:5b35d13089db73df620f4c198f5a4bfa56b8fe45a0364f343df9a26d874fef6c
```

-	Platforms:
	-	linux; amd64

### `httpd:2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.9 MB (68887424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e74fcb59d25bdf03adcc8d89bcda8ae9456d2041c557c973072085708814e5c7`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 16:51:28 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 26 Jul 2017 05:49:13 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 26 Jul 2017 05:49:13 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 05:49:14 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 26 Jul 2017 05:49:14 GMT
WORKDIR /usr/local/apache2
# Wed, 26 Jul 2017 05:49:14 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Wed, 26 Jul 2017 05:49:15 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Wed, 26 Jul 2017 05:49:15 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Wed, 26 Jul 2017 05:49:38 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:49:38 GMT
ENV HTTPD_VERSION=2.4.27
# Wed, 26 Jul 2017 05:49:38 GMT
ENV HTTPD_SHA1=699e4e917e8fb5fd7d0ce7e009f8256ed02ec6fc
# Wed, 26 Jul 2017 05:49:38 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.27.tar.bz2
# Wed, 26 Jul 2017 05:49:39 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Wed, 26 Jul 2017 05:49:39 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2
# Wed, 26 Jul 2017 05:49:39 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Wed, 26 Jul 2017 05:51:07 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 26 Jul 2017 05:51:08 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Wed, 26 Jul 2017 05:51:08 GMT
EXPOSE 80/tcp
# Wed, 26 Jul 2017 05:51:08 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d839585b9c7f4b7b265fa2396f6966ea7274dbf33ca9f21129e1b7ad7a625f1`  
		Last Modified: Mon, 24 Jul 2017 16:55:41 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf157792586abc3385471c59d759569a1801d979b476b2cde69ccc49452b3e6c`  
		Last Modified: Wed, 26 Jul 2017 05:51:37 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c620105f0566d5108dc337f100b690e7d824f2b0895abc4296ed39a43009f0b7`  
		Last Modified: Wed, 26 Jul 2017 05:51:38 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830b826a2e138e6bf5ff58efc7d25cf97b859d20f0bfbc7c776def3278048de3`  
		Last Modified: Wed, 26 Jul 2017 05:51:40 GMT  
		Size: 13.4 MB (13365113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2eb5743536660b4ec40ee535a0ef8c9d2f4f784b3f209ebfea8506322b3cee`  
		Last Modified: Wed, 26 Jul 2017 05:51:38 GMT  
		Size: 2.9 MB (2915692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb53f3c0989782a2cac123af563bcb850ae213241fed911a4ea3c0ab5e41dd13`  
		Last Modified: Wed, 26 Jul 2017 05:51:38 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:latest`

```console
$ docker pull httpd@sha256:5b35d13089db73df620f4c198f5a4bfa56b8fe45a0364f343df9a26d874fef6c
```

-	Platforms:
	-	linux; amd64

### `httpd:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.9 MB (68887424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e74fcb59d25bdf03adcc8d89bcda8ae9456d2041c557c973072085708814e5c7`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 16:51:28 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 26 Jul 2017 05:49:13 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 26 Jul 2017 05:49:13 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 05:49:14 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 26 Jul 2017 05:49:14 GMT
WORKDIR /usr/local/apache2
# Wed, 26 Jul 2017 05:49:14 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Wed, 26 Jul 2017 05:49:15 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Wed, 26 Jul 2017 05:49:15 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Wed, 26 Jul 2017 05:49:38 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:49:38 GMT
ENV HTTPD_VERSION=2.4.27
# Wed, 26 Jul 2017 05:49:38 GMT
ENV HTTPD_SHA1=699e4e917e8fb5fd7d0ce7e009f8256ed02ec6fc
# Wed, 26 Jul 2017 05:49:38 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.27.tar.bz2
# Wed, 26 Jul 2017 05:49:39 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Wed, 26 Jul 2017 05:49:39 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2
# Wed, 26 Jul 2017 05:49:39 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Wed, 26 Jul 2017 05:51:07 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 26 Jul 2017 05:51:08 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Wed, 26 Jul 2017 05:51:08 GMT
EXPOSE 80/tcp
# Wed, 26 Jul 2017 05:51:08 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d839585b9c7f4b7b265fa2396f6966ea7274dbf33ca9f21129e1b7ad7a625f1`  
		Last Modified: Mon, 24 Jul 2017 16:55:41 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf157792586abc3385471c59d759569a1801d979b476b2cde69ccc49452b3e6c`  
		Last Modified: Wed, 26 Jul 2017 05:51:37 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c620105f0566d5108dc337f100b690e7d824f2b0895abc4296ed39a43009f0b7`  
		Last Modified: Wed, 26 Jul 2017 05:51:38 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830b826a2e138e6bf5ff58efc7d25cf97b859d20f0bfbc7c776def3278048de3`  
		Last Modified: Wed, 26 Jul 2017 05:51:40 GMT  
		Size: 13.4 MB (13365113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2eb5743536660b4ec40ee535a0ef8c9d2f4f784b3f209ebfea8506322b3cee`  
		Last Modified: Wed, 26 Jul 2017 05:51:38 GMT  
		Size: 2.9 MB (2915692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb53f3c0989782a2cac123af563bcb850ae213241fed911a4ea3c0ab5e41dd13`  
		Last Modified: Wed, 26 Jul 2017 05:51:38 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4.25-alpine`

```console
$ docker pull httpd@sha256:c58b7b966a99c12b77e3b9024a75332c3bd80229ec2d14bef3d80c5fc98e552a
```

-	Platforms:
	-	linux; amd64

### `httpd:2.4.25-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28269438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ffdc2efbd0b1c4b2e99b9eeabb583fe2105630073bb4343d26ce353e53cb1f8`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 21:42:06 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Jun 2017 21:42:07 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 27 Jun 2017 21:42:07 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 21:42:09 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 27 Jun 2017 21:42:10 GMT
WORKDIR /usr/local/apache2
# Tue, 27 Jun 2017 21:42:11 GMT
ENV HTTPD_VERSION=2.4.25
# Tue, 27 Jun 2017 21:42:12 GMT
ENV HTTPD_SHA1=bd6d138c31c109297da2346c6e7b93b9283993d2
# Tue, 27 Jun 2017 21:42:13 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.25.tar.bz2
# Tue, 27 Jun 2017 21:42:14 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.25.tar.bz2.asc
# Tue, 11 Jul 2017 19:23:16 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.25.tar.bz2
# Tue, 11 Jul 2017 19:23:16 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.25.tar.bz2.asc
# Fri, 21 Jul 2017 21:21:50 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Fri, 21 Jul 2017 21:21:51 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 21 Jul 2017 21:21:51 GMT
EXPOSE 80/tcp
# Fri, 21 Jul 2017 21:21:52 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744e41c53ade1b9e5287688ebff2b8b49ee2b84dffde818268dbd91b0eb0aff5`  
		Last Modified: Thu, 29 Jun 2017 21:07:14 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81940df563cce585e059b00d4c37d0462e5649d45ecd43899db85fe5c50e960`  
		Last Modified: Thu, 29 Jun 2017 21:07:13 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba99561252445e2897a41b77d50dfb472bd600395de7f8e7379097e8023be677`  
		Last Modified: Fri, 21 Jul 2017 21:23:38 GMT  
		Size: 26.3 MB (26277366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d297f8df844951fede1175f308e176a4ade789de74002f43df711fbbeb311d`  
		Last Modified: Fri, 21 Jul 2017 21:23:33 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4-alpine`

```console
$ docker pull httpd@sha256:c58b7b966a99c12b77e3b9024a75332c3bd80229ec2d14bef3d80c5fc98e552a
```

-	Platforms:
	-	linux; amd64

### `httpd:2.4-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28269438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ffdc2efbd0b1c4b2e99b9eeabb583fe2105630073bb4343d26ce353e53cb1f8`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 21:42:06 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Jun 2017 21:42:07 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 27 Jun 2017 21:42:07 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 21:42:09 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 27 Jun 2017 21:42:10 GMT
WORKDIR /usr/local/apache2
# Tue, 27 Jun 2017 21:42:11 GMT
ENV HTTPD_VERSION=2.4.25
# Tue, 27 Jun 2017 21:42:12 GMT
ENV HTTPD_SHA1=bd6d138c31c109297da2346c6e7b93b9283993d2
# Tue, 27 Jun 2017 21:42:13 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.25.tar.bz2
# Tue, 27 Jun 2017 21:42:14 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.25.tar.bz2.asc
# Tue, 11 Jul 2017 19:23:16 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.25.tar.bz2
# Tue, 11 Jul 2017 19:23:16 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.25.tar.bz2.asc
# Fri, 21 Jul 2017 21:21:50 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Fri, 21 Jul 2017 21:21:51 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 21 Jul 2017 21:21:51 GMT
EXPOSE 80/tcp
# Fri, 21 Jul 2017 21:21:52 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744e41c53ade1b9e5287688ebff2b8b49ee2b84dffde818268dbd91b0eb0aff5`  
		Last Modified: Thu, 29 Jun 2017 21:07:14 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81940df563cce585e059b00d4c37d0462e5649d45ecd43899db85fe5c50e960`  
		Last Modified: Thu, 29 Jun 2017 21:07:13 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba99561252445e2897a41b77d50dfb472bd600395de7f8e7379097e8023be677`  
		Last Modified: Fri, 21 Jul 2017 21:23:38 GMT  
		Size: 26.3 MB (26277366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d297f8df844951fede1175f308e176a4ade789de74002f43df711fbbeb311d`  
		Last Modified: Fri, 21 Jul 2017 21:23:33 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2-alpine`

```console
$ docker pull httpd@sha256:c58b7b966a99c12b77e3b9024a75332c3bd80229ec2d14bef3d80c5fc98e552a
```

-	Platforms:
	-	linux; amd64

### `httpd:2-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28269438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ffdc2efbd0b1c4b2e99b9eeabb583fe2105630073bb4343d26ce353e53cb1f8`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 21:42:06 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Jun 2017 21:42:07 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 27 Jun 2017 21:42:07 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 21:42:09 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 27 Jun 2017 21:42:10 GMT
WORKDIR /usr/local/apache2
# Tue, 27 Jun 2017 21:42:11 GMT
ENV HTTPD_VERSION=2.4.25
# Tue, 27 Jun 2017 21:42:12 GMT
ENV HTTPD_SHA1=bd6d138c31c109297da2346c6e7b93b9283993d2
# Tue, 27 Jun 2017 21:42:13 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.25.tar.bz2
# Tue, 27 Jun 2017 21:42:14 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.25.tar.bz2.asc
# Tue, 11 Jul 2017 19:23:16 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.25.tar.bz2
# Tue, 11 Jul 2017 19:23:16 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.25.tar.bz2.asc
# Fri, 21 Jul 2017 21:21:50 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Fri, 21 Jul 2017 21:21:51 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 21 Jul 2017 21:21:51 GMT
EXPOSE 80/tcp
# Fri, 21 Jul 2017 21:21:52 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744e41c53ade1b9e5287688ebff2b8b49ee2b84dffde818268dbd91b0eb0aff5`  
		Last Modified: Thu, 29 Jun 2017 21:07:14 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81940df563cce585e059b00d4c37d0462e5649d45ecd43899db85fe5c50e960`  
		Last Modified: Thu, 29 Jun 2017 21:07:13 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba99561252445e2897a41b77d50dfb472bd600395de7f8e7379097e8023be677`  
		Last Modified: Fri, 21 Jul 2017 21:23:38 GMT  
		Size: 26.3 MB (26277366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d297f8df844951fede1175f308e176a4ade789de74002f43df711fbbeb311d`  
		Last Modified: Fri, 21 Jul 2017 21:23:33 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:alpine`

```console
$ docker pull httpd@sha256:c58b7b966a99c12b77e3b9024a75332c3bd80229ec2d14bef3d80c5fc98e552a
```

-	Platforms:
	-	linux; amd64

### `httpd:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28269438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ffdc2efbd0b1c4b2e99b9eeabb583fe2105630073bb4343d26ce353e53cb1f8`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 21:42:06 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Jun 2017 21:42:07 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 27 Jun 2017 21:42:07 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 21:42:09 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 27 Jun 2017 21:42:10 GMT
WORKDIR /usr/local/apache2
# Tue, 27 Jun 2017 21:42:11 GMT
ENV HTTPD_VERSION=2.4.25
# Tue, 27 Jun 2017 21:42:12 GMT
ENV HTTPD_SHA1=bd6d138c31c109297da2346c6e7b93b9283993d2
# Tue, 27 Jun 2017 21:42:13 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.25.tar.bz2
# Tue, 27 Jun 2017 21:42:14 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.25.tar.bz2.asc
# Tue, 11 Jul 2017 19:23:16 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.25.tar.bz2
# Tue, 11 Jul 2017 19:23:16 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.25.tar.bz2.asc
# Fri, 21 Jul 2017 21:21:50 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Fri, 21 Jul 2017 21:21:51 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 21 Jul 2017 21:21:51 GMT
EXPOSE 80/tcp
# Fri, 21 Jul 2017 21:21:52 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744e41c53ade1b9e5287688ebff2b8b49ee2b84dffde818268dbd91b0eb0aff5`  
		Last Modified: Thu, 29 Jun 2017 21:07:14 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81940df563cce585e059b00d4c37d0462e5649d45ecd43899db85fe5c50e960`  
		Last Modified: Thu, 29 Jun 2017 21:07:13 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba99561252445e2897a41b77d50dfb472bd600395de7f8e7379097e8023be677`  
		Last Modified: Fri, 21 Jul 2017 21:23:38 GMT  
		Size: 26.3 MB (26277366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d297f8df844951fede1175f308e176a4ade789de74002f43df711fbbeb311d`  
		Last Modified: Fri, 21 Jul 2017 21:23:33 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
