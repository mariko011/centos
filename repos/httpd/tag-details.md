<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `httpd`

-	[`httpd:2.2.32`](#httpd2232)
-	[`httpd:2.2`](#httpd22)
-	[`httpd:2.2.32-alpine`](#httpd2232-alpine)
-	[`httpd:2.2-alpine`](#httpd22-alpine)
-	[`httpd:2.4.25`](#httpd2425)
-	[`httpd:2.4`](#httpd24)
-	[`httpd:2`](#httpd2)
-	[`httpd:latest`](#httpdlatest)
-	[`httpd:2.4.25-alpine`](#httpd2425-alpine)
-	[`httpd:2.4-alpine`](#httpd24-alpine)
-	[`httpd:2-alpine`](#httpd2-alpine)
-	[`httpd:alpine`](#httpdalpine)

## `httpd:2.2.32`

```console
$ docker pull httpd@sha256:1552fbdca0ab537366b4ff714421bdc502f2b8ae791c3a13ae930e8eaeab1505
```

-	Platforms:
	-	linux; amd64

### `httpd:2.2.32` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.6 MB (66563998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3828b22dc60dcf843105a62a543d8bf647658fdffe556884e6fbd2ad72da6d6`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:14:27 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 09 May 2017 17:14:28 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 09 May 2017 17:14:29 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 09 May 2017 17:14:30 GMT
WORKDIR /usr/local/apache2
# Tue, 09 May 2017 17:14:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Tue, 09 May 2017 17:14:43 GMT
ENV HTTPD_VERSION=2.2.32
# Tue, 09 May 2017 17:14:44 GMT
ENV HTTPD_SHA1=36dc7f2ac97627192dcff0a121408b897f91b121
# Tue, 09 May 2017 17:14:44 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.32.tar.bz2
# Tue, 09 May 2017 17:14:45 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.32.tar.bz2.asc
# Fri, 12 May 2017 04:56:10 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 12 May 2017 04:56:12 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Fri, 12 May 2017 04:56:13 GMT
EXPOSE 80/tcp
# Fri, 12 May 2017 04:56:14 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2717d493f54b7dc71ab8895cf38f1db40bbaac88ea964b9e3d604df2c6b41eb5`  
		Last Modified: Fri, 12 May 2017 05:00:59 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adc0f850f61daebf0f1216f7a2b28d301b5b5bfb6ea4ab4432b8c1010ef99013`  
		Last Modified: Fri, 12 May 2017 05:01:05 GMT  
		Size: 12.0 MB (11950925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b38a59242c79d3e3dab388bab8e1944db9c2a4aaea2ed0b0540b4c16bde04c3`  
		Last Modified: Fri, 12 May 2017 05:01:00 GMT  
		Size: 2.0 MB (2028618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e516655231255241fd559cab660663c31af46fe10165d511d5b855814fa25c24`  
		Last Modified: Fri, 12 May 2017 05:01:00 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.2`

```console
$ docker pull httpd@sha256:1552fbdca0ab537366b4ff714421bdc502f2b8ae791c3a13ae930e8eaeab1505
```

-	Platforms:
	-	linux; amd64

### `httpd:2.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.6 MB (66563998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3828b22dc60dcf843105a62a543d8bf647658fdffe556884e6fbd2ad72da6d6`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:14:27 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 09 May 2017 17:14:28 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 09 May 2017 17:14:29 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 09 May 2017 17:14:30 GMT
WORKDIR /usr/local/apache2
# Tue, 09 May 2017 17:14:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Tue, 09 May 2017 17:14:43 GMT
ENV HTTPD_VERSION=2.2.32
# Tue, 09 May 2017 17:14:44 GMT
ENV HTTPD_SHA1=36dc7f2ac97627192dcff0a121408b897f91b121
# Tue, 09 May 2017 17:14:44 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.32.tar.bz2
# Tue, 09 May 2017 17:14:45 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.32.tar.bz2.asc
# Fri, 12 May 2017 04:56:10 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 12 May 2017 04:56:12 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Fri, 12 May 2017 04:56:13 GMT
EXPOSE 80/tcp
# Fri, 12 May 2017 04:56:14 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2717d493f54b7dc71ab8895cf38f1db40bbaac88ea964b9e3d604df2c6b41eb5`  
		Last Modified: Fri, 12 May 2017 05:00:59 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adc0f850f61daebf0f1216f7a2b28d301b5b5bfb6ea4ab4432b8c1010ef99013`  
		Last Modified: Fri, 12 May 2017 05:01:05 GMT  
		Size: 12.0 MB (11950925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b38a59242c79d3e3dab388bab8e1944db9c2a4aaea2ed0b0540b4c16bde04c3`  
		Last Modified: Fri, 12 May 2017 05:01:00 GMT  
		Size: 2.0 MB (2028618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e516655231255241fd559cab660663c31af46fe10165d511d5b855814fa25c24`  
		Last Modified: Fri, 12 May 2017 05:01:00 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.2.32-alpine`

```console
$ docker pull httpd@sha256:f29739425251d3a9c93592a924dc7a0828cd22bccda78096ef270d271d2107a0
```

-	Platforms:
	-	linux; amd64

### `httpd:2.2.32-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 MB (24358662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3970e6c8a7d7ca30fab78292e2480179bc19ebf33472eef9ead67637abd17b10`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:40:35 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 May 2017 21:40:36 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 10 May 2017 21:40:36 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 21:40:38 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 10 May 2017 21:40:39 GMT
WORKDIR /usr/local/apache2
# Wed, 10 May 2017 21:40:39 GMT
ENV HTTPD_VERSION=2.2.32
# Wed, 10 May 2017 21:40:40 GMT
ENV HTTPD_SHA1=36dc7f2ac97627192dcff0a121408b897f91b121
# Wed, 10 May 2017 21:40:41 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.32.tar.bz2
# Wed, 10 May 2017 21:40:42 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.32.tar.bz2.asc
# Fri, 12 May 2017 04:57:19 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		openssl 		openssl-dev 		pcre-dev 		tar 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Fri, 12 May 2017 04:57:20 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 12 May 2017 04:57:21 GMT
EXPOSE 80/tcp
# Fri, 12 May 2017 04:57:22 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e01062d8da48d38b5d5471aca9628a35b174f4cd9b0e6d92dfc41112919c16`  
		Last Modified: Fri, 12 May 2017 05:01:54 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4cf9cf433964299a5fb2f536a99bacd8f178d4557bc507baeb1c42840d9cb2`  
		Last Modified: Fri, 12 May 2017 05:01:54 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1370eea65e0d81eda5c932b832208e230b2bd4ef599c6e52b206ca22c16b49e8`  
		Last Modified: Fri, 12 May 2017 05:01:59 GMT  
		Size: 22.0 MB (21973930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115342e96197f7ceb26496f8df7a88d638b7eb63b01ecbff64c322a47d2e8ff8`  
		Last Modified: Fri, 12 May 2017 05:01:54 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.2-alpine`

```console
$ docker pull httpd@sha256:f29739425251d3a9c93592a924dc7a0828cd22bccda78096ef270d271d2107a0
```

-	Platforms:
	-	linux; amd64

### `httpd:2.2-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 MB (24358662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3970e6c8a7d7ca30fab78292e2480179bc19ebf33472eef9ead67637abd17b10`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:40:35 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 May 2017 21:40:36 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 10 May 2017 21:40:36 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 21:40:38 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 10 May 2017 21:40:39 GMT
WORKDIR /usr/local/apache2
# Wed, 10 May 2017 21:40:39 GMT
ENV HTTPD_VERSION=2.2.32
# Wed, 10 May 2017 21:40:40 GMT
ENV HTTPD_SHA1=36dc7f2ac97627192dcff0a121408b897f91b121
# Wed, 10 May 2017 21:40:41 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.32.tar.bz2
# Wed, 10 May 2017 21:40:42 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.32.tar.bz2.asc
# Fri, 12 May 2017 04:57:19 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		openssl 		openssl-dev 		pcre-dev 		tar 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Fri, 12 May 2017 04:57:20 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 12 May 2017 04:57:21 GMT
EXPOSE 80/tcp
# Fri, 12 May 2017 04:57:22 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e01062d8da48d38b5d5471aca9628a35b174f4cd9b0e6d92dfc41112919c16`  
		Last Modified: Fri, 12 May 2017 05:01:54 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4cf9cf433964299a5fb2f536a99bacd8f178d4557bc507baeb1c42840d9cb2`  
		Last Modified: Fri, 12 May 2017 05:01:54 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1370eea65e0d81eda5c932b832208e230b2bd4ef599c6e52b206ca22c16b49e8`  
		Last Modified: Fri, 12 May 2017 05:01:59 GMT  
		Size: 22.0 MB (21973930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115342e96197f7ceb26496f8df7a88d638b7eb63b01ecbff64c322a47d2e8ff8`  
		Last Modified: Fri, 12 May 2017 05:01:54 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4.25`

```console
$ docker pull httpd@sha256:72b55a7c15a4ee3d56ff19f83b57b82287714f91070b1f556a54e90da5eee3fa
```

-	Platforms:
	-	linux; amd64

### `httpd:2.4.25` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.9 MB (68854155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0645af13ada5b812105ad50c2fbbee0a3a853a80624c5b73dd7667b6e2a41c0`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:29:37 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 09 May 2017 17:12:22 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 09 May 2017 17:12:23 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 09 May 2017 17:12:24 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 09 May 2017 17:12:25 GMT
WORKDIR /usr/local/apache2
# Tue, 09 May 2017 17:12:26 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Tue, 09 May 2017 17:12:27 GMT
ENV OPENSSL_VERSION=1.0.2k-1~bpo8+1
# Tue, 09 May 2017 17:12:28 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Tue, 09 May 2017 17:12:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Tue, 09 May 2017 17:12:48 GMT
ENV HTTPD_VERSION=2.4.25
# Tue, 09 May 2017 17:12:49 GMT
ENV HTTPD_SHA1=bd6d138c31c109297da2346c6e7b93b9283993d2
# Tue, 09 May 2017 17:12:50 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.25.tar.bz2
# Tue, 09 May 2017 17:12:50 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.25.tar.bz2.asc
# Fri, 12 May 2017 04:59:09 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 12 May 2017 04:59:10 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 12 May 2017 04:59:11 GMT
EXPOSE 80/tcp
# Fri, 12 May 2017 04:59:12 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0782edf7745aa2722586fd3e27620d5831cac3e4a6162d154aeb735618f1c412`  
		Last Modified: Mon, 08 May 2017 23:46:22 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3a72c4d9d029434807c451faae492f862c20fc613a7db90e3482193d3e935d4`  
		Last Modified: Fri, 12 May 2017 05:02:46 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6ec65d8a55b3e6ba0c042ebf44fc537e714d1c3928f9937dfa7aa8fd622ff2`  
		Last Modified: Fri, 12 May 2017 05:02:46 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b7920e1c0df3ccb19808c28c6a5d36a9504b8b0f95947a863d5605542ea7a99`  
		Last Modified: Fri, 12 May 2017 05:02:54 GMT  
		Size: 13.4 MB (13365189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b99e4053015936c0e95272571cb7e6088e8faf7ae20067496f4a9875abf5f1a`  
		Last Modified: Fri, 12 May 2017 05:02:47 GMT  
		Size: 2.9 MB (2903963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e720548ad189dcc0a135e3969a542c691360ad9dd51a1bd9b3fa3dfce590437b`  
		Last Modified: Fri, 12 May 2017 05:02:47 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4`

```console
$ docker pull httpd@sha256:72b55a7c15a4ee3d56ff19f83b57b82287714f91070b1f556a54e90da5eee3fa
```

-	Platforms:
	-	linux; amd64

### `httpd:2.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.9 MB (68854155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0645af13ada5b812105ad50c2fbbee0a3a853a80624c5b73dd7667b6e2a41c0`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:29:37 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 09 May 2017 17:12:22 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 09 May 2017 17:12:23 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 09 May 2017 17:12:24 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 09 May 2017 17:12:25 GMT
WORKDIR /usr/local/apache2
# Tue, 09 May 2017 17:12:26 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Tue, 09 May 2017 17:12:27 GMT
ENV OPENSSL_VERSION=1.0.2k-1~bpo8+1
# Tue, 09 May 2017 17:12:28 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Tue, 09 May 2017 17:12:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Tue, 09 May 2017 17:12:48 GMT
ENV HTTPD_VERSION=2.4.25
# Tue, 09 May 2017 17:12:49 GMT
ENV HTTPD_SHA1=bd6d138c31c109297da2346c6e7b93b9283993d2
# Tue, 09 May 2017 17:12:50 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.25.tar.bz2
# Tue, 09 May 2017 17:12:50 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.25.tar.bz2.asc
# Fri, 12 May 2017 04:59:09 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 12 May 2017 04:59:10 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 12 May 2017 04:59:11 GMT
EXPOSE 80/tcp
# Fri, 12 May 2017 04:59:12 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0782edf7745aa2722586fd3e27620d5831cac3e4a6162d154aeb735618f1c412`  
		Last Modified: Mon, 08 May 2017 23:46:22 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3a72c4d9d029434807c451faae492f862c20fc613a7db90e3482193d3e935d4`  
		Last Modified: Fri, 12 May 2017 05:02:46 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6ec65d8a55b3e6ba0c042ebf44fc537e714d1c3928f9937dfa7aa8fd622ff2`  
		Last Modified: Fri, 12 May 2017 05:02:46 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b7920e1c0df3ccb19808c28c6a5d36a9504b8b0f95947a863d5605542ea7a99`  
		Last Modified: Fri, 12 May 2017 05:02:54 GMT  
		Size: 13.4 MB (13365189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b99e4053015936c0e95272571cb7e6088e8faf7ae20067496f4a9875abf5f1a`  
		Last Modified: Fri, 12 May 2017 05:02:47 GMT  
		Size: 2.9 MB (2903963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e720548ad189dcc0a135e3969a542c691360ad9dd51a1bd9b3fa3dfce590437b`  
		Last Modified: Fri, 12 May 2017 05:02:47 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2`

```console
$ docker pull httpd@sha256:72b55a7c15a4ee3d56ff19f83b57b82287714f91070b1f556a54e90da5eee3fa
```

-	Platforms:
	-	linux; amd64

### `httpd:2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.9 MB (68854155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0645af13ada5b812105ad50c2fbbee0a3a853a80624c5b73dd7667b6e2a41c0`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:29:37 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 09 May 2017 17:12:22 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 09 May 2017 17:12:23 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 09 May 2017 17:12:24 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 09 May 2017 17:12:25 GMT
WORKDIR /usr/local/apache2
# Tue, 09 May 2017 17:12:26 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Tue, 09 May 2017 17:12:27 GMT
ENV OPENSSL_VERSION=1.0.2k-1~bpo8+1
# Tue, 09 May 2017 17:12:28 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Tue, 09 May 2017 17:12:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Tue, 09 May 2017 17:12:48 GMT
ENV HTTPD_VERSION=2.4.25
# Tue, 09 May 2017 17:12:49 GMT
ENV HTTPD_SHA1=bd6d138c31c109297da2346c6e7b93b9283993d2
# Tue, 09 May 2017 17:12:50 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.25.tar.bz2
# Tue, 09 May 2017 17:12:50 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.25.tar.bz2.asc
# Fri, 12 May 2017 04:59:09 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 12 May 2017 04:59:10 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 12 May 2017 04:59:11 GMT
EXPOSE 80/tcp
# Fri, 12 May 2017 04:59:12 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0782edf7745aa2722586fd3e27620d5831cac3e4a6162d154aeb735618f1c412`  
		Last Modified: Mon, 08 May 2017 23:46:22 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3a72c4d9d029434807c451faae492f862c20fc613a7db90e3482193d3e935d4`  
		Last Modified: Fri, 12 May 2017 05:02:46 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6ec65d8a55b3e6ba0c042ebf44fc537e714d1c3928f9937dfa7aa8fd622ff2`  
		Last Modified: Fri, 12 May 2017 05:02:46 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b7920e1c0df3ccb19808c28c6a5d36a9504b8b0f95947a863d5605542ea7a99`  
		Last Modified: Fri, 12 May 2017 05:02:54 GMT  
		Size: 13.4 MB (13365189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b99e4053015936c0e95272571cb7e6088e8faf7ae20067496f4a9875abf5f1a`  
		Last Modified: Fri, 12 May 2017 05:02:47 GMT  
		Size: 2.9 MB (2903963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e720548ad189dcc0a135e3969a542c691360ad9dd51a1bd9b3fa3dfce590437b`  
		Last Modified: Fri, 12 May 2017 05:02:47 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:latest`

```console
$ docker pull httpd@sha256:72b55a7c15a4ee3d56ff19f83b57b82287714f91070b1f556a54e90da5eee3fa
```

-	Platforms:
	-	linux; amd64

### `httpd:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.9 MB (68854155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0645af13ada5b812105ad50c2fbbee0a3a853a80624c5b73dd7667b6e2a41c0`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:29:37 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 09 May 2017 17:12:22 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 09 May 2017 17:12:23 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 09 May 2017 17:12:24 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 09 May 2017 17:12:25 GMT
WORKDIR /usr/local/apache2
# Tue, 09 May 2017 17:12:26 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Tue, 09 May 2017 17:12:27 GMT
ENV OPENSSL_VERSION=1.0.2k-1~bpo8+1
# Tue, 09 May 2017 17:12:28 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Tue, 09 May 2017 17:12:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Tue, 09 May 2017 17:12:48 GMT
ENV HTTPD_VERSION=2.4.25
# Tue, 09 May 2017 17:12:49 GMT
ENV HTTPD_SHA1=bd6d138c31c109297da2346c6e7b93b9283993d2
# Tue, 09 May 2017 17:12:50 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.25.tar.bz2
# Tue, 09 May 2017 17:12:50 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.25.tar.bz2.asc
# Fri, 12 May 2017 04:59:09 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 12 May 2017 04:59:10 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 12 May 2017 04:59:11 GMT
EXPOSE 80/tcp
# Fri, 12 May 2017 04:59:12 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0782edf7745aa2722586fd3e27620d5831cac3e4a6162d154aeb735618f1c412`  
		Last Modified: Mon, 08 May 2017 23:46:22 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3a72c4d9d029434807c451faae492f862c20fc613a7db90e3482193d3e935d4`  
		Last Modified: Fri, 12 May 2017 05:02:46 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6ec65d8a55b3e6ba0c042ebf44fc537e714d1c3928f9937dfa7aa8fd622ff2`  
		Last Modified: Fri, 12 May 2017 05:02:46 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b7920e1c0df3ccb19808c28c6a5d36a9504b8b0f95947a863d5605542ea7a99`  
		Last Modified: Fri, 12 May 2017 05:02:54 GMT  
		Size: 13.4 MB (13365189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b99e4053015936c0e95272571cb7e6088e8faf7ae20067496f4a9875abf5f1a`  
		Last Modified: Fri, 12 May 2017 05:02:47 GMT  
		Size: 2.9 MB (2903963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e720548ad189dcc0a135e3969a542c691360ad9dd51a1bd9b3fa3dfce590437b`  
		Last Modified: Fri, 12 May 2017 05:02:47 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4.25-alpine`

```console
$ docker pull httpd@sha256:b0387a0c7595253da3ed437aa001aa9fba3c347e1bce3b222ddf5d540f59ba0d
```

-	Platforms:
	-	linux; amd64

### `httpd:2.4.25-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30470880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3ef8c72123c175e3d91c666123b131dbd195b7c28df1c54ee81d1c85d62bc09`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:39:10 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 May 2017 21:39:11 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 10 May 2017 21:39:12 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 21:39:13 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 10 May 2017 21:39:14 GMT
WORKDIR /usr/local/apache2
# Wed, 10 May 2017 21:39:15 GMT
ENV HTTPD_VERSION=2.4.25
# Wed, 10 May 2017 21:39:16 GMT
ENV HTTPD_SHA1=bd6d138c31c109297da2346c6e7b93b9283993d2
# Wed, 10 May 2017 21:39:17 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.25.tar.bz2
# Wed, 10 May 2017 21:39:17 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.25.tar.bz2.asc
# Fri, 12 May 2017 05:00:32 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Fri, 12 May 2017 05:00:33 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 12 May 2017 05:00:34 GMT
EXPOSE 80/tcp
# Fri, 12 May 2017 05:00:35 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df235d64828cf886f5c1a6a9f55075fc79c5ae72dffaa09bd3310bcb1cc03089`  
		Last Modified: Fri, 12 May 2017 05:04:32 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1363746bf0f9745fcf6363be1515901db7de2b56b90184ad847814a3b963fdac`  
		Last Modified: Fri, 12 May 2017 05:04:31 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5713c5acc1bed3b6c97eb1fa5d09c01cd7729a220ac19c6a2511289ca3129736`  
		Last Modified: Fri, 12 May 2017 05:04:37 GMT  
		Size: 28.5 MB (28501303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:302319fc1706b3930d3acc8577462ae4e90043343d112191d5a82e23dac14308`  
		Last Modified: Fri, 12 May 2017 05:04:31 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4-alpine`

```console
$ docker pull httpd@sha256:b0387a0c7595253da3ed437aa001aa9fba3c347e1bce3b222ddf5d540f59ba0d
```

-	Platforms:
	-	linux; amd64

### `httpd:2.4-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30470880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3ef8c72123c175e3d91c666123b131dbd195b7c28df1c54ee81d1c85d62bc09`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:39:10 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 May 2017 21:39:11 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 10 May 2017 21:39:12 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 21:39:13 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 10 May 2017 21:39:14 GMT
WORKDIR /usr/local/apache2
# Wed, 10 May 2017 21:39:15 GMT
ENV HTTPD_VERSION=2.4.25
# Wed, 10 May 2017 21:39:16 GMT
ENV HTTPD_SHA1=bd6d138c31c109297da2346c6e7b93b9283993d2
# Wed, 10 May 2017 21:39:17 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.25.tar.bz2
# Wed, 10 May 2017 21:39:17 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.25.tar.bz2.asc
# Fri, 12 May 2017 05:00:32 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Fri, 12 May 2017 05:00:33 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 12 May 2017 05:00:34 GMT
EXPOSE 80/tcp
# Fri, 12 May 2017 05:00:35 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df235d64828cf886f5c1a6a9f55075fc79c5ae72dffaa09bd3310bcb1cc03089`  
		Last Modified: Fri, 12 May 2017 05:04:32 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1363746bf0f9745fcf6363be1515901db7de2b56b90184ad847814a3b963fdac`  
		Last Modified: Fri, 12 May 2017 05:04:31 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5713c5acc1bed3b6c97eb1fa5d09c01cd7729a220ac19c6a2511289ca3129736`  
		Last Modified: Fri, 12 May 2017 05:04:37 GMT  
		Size: 28.5 MB (28501303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:302319fc1706b3930d3acc8577462ae4e90043343d112191d5a82e23dac14308`  
		Last Modified: Fri, 12 May 2017 05:04:31 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2-alpine`

```console
$ docker pull httpd@sha256:b0387a0c7595253da3ed437aa001aa9fba3c347e1bce3b222ddf5d540f59ba0d
```

-	Platforms:
	-	linux; amd64

### `httpd:2-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30470880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3ef8c72123c175e3d91c666123b131dbd195b7c28df1c54ee81d1c85d62bc09`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:39:10 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 May 2017 21:39:11 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 10 May 2017 21:39:12 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 21:39:13 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 10 May 2017 21:39:14 GMT
WORKDIR /usr/local/apache2
# Wed, 10 May 2017 21:39:15 GMT
ENV HTTPD_VERSION=2.4.25
# Wed, 10 May 2017 21:39:16 GMT
ENV HTTPD_SHA1=bd6d138c31c109297da2346c6e7b93b9283993d2
# Wed, 10 May 2017 21:39:17 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.25.tar.bz2
# Wed, 10 May 2017 21:39:17 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.25.tar.bz2.asc
# Fri, 12 May 2017 05:00:32 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Fri, 12 May 2017 05:00:33 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 12 May 2017 05:00:34 GMT
EXPOSE 80/tcp
# Fri, 12 May 2017 05:00:35 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df235d64828cf886f5c1a6a9f55075fc79c5ae72dffaa09bd3310bcb1cc03089`  
		Last Modified: Fri, 12 May 2017 05:04:32 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1363746bf0f9745fcf6363be1515901db7de2b56b90184ad847814a3b963fdac`  
		Last Modified: Fri, 12 May 2017 05:04:31 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5713c5acc1bed3b6c97eb1fa5d09c01cd7729a220ac19c6a2511289ca3129736`  
		Last Modified: Fri, 12 May 2017 05:04:37 GMT  
		Size: 28.5 MB (28501303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:302319fc1706b3930d3acc8577462ae4e90043343d112191d5a82e23dac14308`  
		Last Modified: Fri, 12 May 2017 05:04:31 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:alpine`

```console
$ docker pull httpd@sha256:b0387a0c7595253da3ed437aa001aa9fba3c347e1bce3b222ddf5d540f59ba0d
```

-	Platforms:
	-	linux; amd64

### `httpd:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30470880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3ef8c72123c175e3d91c666123b131dbd195b7c28df1c54ee81d1c85d62bc09`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:39:10 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 May 2017 21:39:11 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 10 May 2017 21:39:12 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 21:39:13 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 10 May 2017 21:39:14 GMT
WORKDIR /usr/local/apache2
# Wed, 10 May 2017 21:39:15 GMT
ENV HTTPD_VERSION=2.4.25
# Wed, 10 May 2017 21:39:16 GMT
ENV HTTPD_SHA1=bd6d138c31c109297da2346c6e7b93b9283993d2
# Wed, 10 May 2017 21:39:17 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.25.tar.bz2
# Wed, 10 May 2017 21:39:17 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.25.tar.bz2.asc
# Fri, 12 May 2017 05:00:32 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Fri, 12 May 2017 05:00:33 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 12 May 2017 05:00:34 GMT
EXPOSE 80/tcp
# Fri, 12 May 2017 05:00:35 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df235d64828cf886f5c1a6a9f55075fc79c5ae72dffaa09bd3310bcb1cc03089`  
		Last Modified: Fri, 12 May 2017 05:04:32 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1363746bf0f9745fcf6363be1515901db7de2b56b90184ad847814a3b963fdac`  
		Last Modified: Fri, 12 May 2017 05:04:31 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5713c5acc1bed3b6c97eb1fa5d09c01cd7729a220ac19c6a2511289ca3129736`  
		Last Modified: Fri, 12 May 2017 05:04:37 GMT  
		Size: 28.5 MB (28501303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:302319fc1706b3930d3acc8577462ae4e90043343d112191d5a82e23dac14308`  
		Last Modified: Fri, 12 May 2017 05:04:31 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
