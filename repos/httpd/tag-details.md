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
$ docker pull httpd@sha256:aa08357a4818acc4bbbc14751e8642df1776ff5eb0199e360d0af0524eb8b883
```

-	Platforms:
	-	linux; amd64

### `httpd:2.2.32` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.8 MB (64809374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3624a4b77da8eb9a0242aea4ee20084775d89b62bb9d6531eca8e2ed73b80a25`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 03:32:01 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 28 Feb 2017 03:32:01 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 03:32:02 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 28 Feb 2017 03:32:02 GMT
WORKDIR /usr/local/apache2
# Tue, 28 Feb 2017 03:32:16 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:32:16 GMT
ENV HTTPD_VERSION=2.2.32
# Tue, 28 Feb 2017 03:32:16 GMT
ENV HTTPD_SHA1=36dc7f2ac97627192dcff0a121408b897f91b121
# Tue, 28 Feb 2017 03:32:17 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.32.tar.bz2
# Tue, 28 Feb 2017 03:32:17 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.32.tar.bz2.asc
# Tue, 28 Feb 2017 03:33:07 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xvf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 28 Feb 2017 03:33:07 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Tue, 28 Feb 2017 03:33:08 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 03:33:08 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79cceebe49a842b0ac4063901737dedc02ab602f5b6698af63c6ecf01e7b3027`  
		Last Modified: Thu, 02 Mar 2017 00:45:02 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937186efaf02be53a816aa9059854431338446c32775cc6d4024bce573ef7e89`  
		Last Modified: Thu, 02 Mar 2017 00:45:10 GMT  
		Size: 11.8 MB (11754807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b418f0aebb78b276c93ff63140ae190689128650716cfd6e9dc3df8f08e7edf`  
		Last Modified: Thu, 02 Mar 2017 00:45:03 GMT  
		Size: 1.7 MB (1690752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8d7339d8c2e1524c725635a0bfae4ec777fd9467eec9b114e0bc424de87ef7`  
		Last Modified: Thu, 02 Mar 2017 00:45:02 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.2`

```console
$ docker pull httpd@sha256:aa08357a4818acc4bbbc14751e8642df1776ff5eb0199e360d0af0524eb8b883
```

-	Platforms:
	-	linux; amd64

### `httpd:2.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.8 MB (64809374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3624a4b77da8eb9a0242aea4ee20084775d89b62bb9d6531eca8e2ed73b80a25`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 03:32:01 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 28 Feb 2017 03:32:01 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 03:32:02 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 28 Feb 2017 03:32:02 GMT
WORKDIR /usr/local/apache2
# Tue, 28 Feb 2017 03:32:16 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:32:16 GMT
ENV HTTPD_VERSION=2.2.32
# Tue, 28 Feb 2017 03:32:16 GMT
ENV HTTPD_SHA1=36dc7f2ac97627192dcff0a121408b897f91b121
# Tue, 28 Feb 2017 03:32:17 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.32.tar.bz2
# Tue, 28 Feb 2017 03:32:17 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.32.tar.bz2.asc
# Tue, 28 Feb 2017 03:33:07 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xvf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 28 Feb 2017 03:33:07 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Tue, 28 Feb 2017 03:33:08 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 03:33:08 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79cceebe49a842b0ac4063901737dedc02ab602f5b6698af63c6ecf01e7b3027`  
		Last Modified: Thu, 02 Mar 2017 00:45:02 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937186efaf02be53a816aa9059854431338446c32775cc6d4024bce573ef7e89`  
		Last Modified: Thu, 02 Mar 2017 00:45:10 GMT  
		Size: 11.8 MB (11754807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b418f0aebb78b276c93ff63140ae190689128650716cfd6e9dc3df8f08e7edf`  
		Last Modified: Thu, 02 Mar 2017 00:45:03 GMT  
		Size: 1.7 MB (1690752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8d7339d8c2e1524c725635a0bfae4ec777fd9467eec9b114e0bc424de87ef7`  
		Last Modified: Thu, 02 Mar 2017 00:45:02 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.2.32-alpine`

```console
$ docker pull httpd@sha256:fe5163bce4ea6acb1bc2f02d15e01b25cc35f721d784cb9c8b21cd5c4b7a72bc
```

-	Platforms:
	-	linux; amd64

### `httpd:2.2.32-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (24034784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce8af49acc500278f9e433046e04e4670d530e0a607a8963b057bffc914bc083`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:10:02 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Dec 2016 19:10:02 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 27 Dec 2016 19:10:03 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Dec 2016 19:10:04 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 27 Dec 2016 19:10:04 GMT
WORKDIR /usr/local/apache2
# Fri, 13 Jan 2017 22:52:46 GMT
ENV HTTPD_VERSION=2.2.32
# Fri, 13 Jan 2017 22:52:47 GMT
ENV HTTPD_SHA1=36dc7f2ac97627192dcff0a121408b897f91b121
# Fri, 13 Jan 2017 22:52:47 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.32.tar.bz2
# Fri, 13 Jan 2017 22:52:48 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.32.tar.bz2.asc
# Fri, 13 Jan 2017 22:53:28 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		gcc 		gnupg 		libc-dev 		make 		openssl 		openssl-dev 		pcre-dev 		tar 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xvf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Fri, 13 Jan 2017 22:53:29 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 13 Jan 2017 22:53:29 GMT
EXPOSE 80/tcp
# Fri, 13 Jan 2017 22:53:30 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39a0c1d464e176c4c71ae493d04b33dc66cb72c69095d8baf2b9518d0d84a8a`  
		Last Modified: Tue, 27 Dec 2016 19:13:37 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f537251c76e6a2ebfbbe7c401e818dd5749c6d0fd7a5e1f532fb26aba7f1b9fd`  
		Last Modified: Tue, 27 Dec 2016 19:13:38 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b2955bf89e1e2c12043414fe5722030e3a71f89066bfb086928e054bfa87e7`  
		Last Modified: Fri, 13 Jan 2017 22:54:27 GMT  
		Size: 21.7 MB (21719998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d1e09dc0af056e38f4c0f300c1525f9f8924430c8e2ade6a638227bee68ae2`  
		Last Modified: Fri, 13 Jan 2017 22:54:20 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.2-alpine`

```console
$ docker pull httpd@sha256:fe5163bce4ea6acb1bc2f02d15e01b25cc35f721d784cb9c8b21cd5c4b7a72bc
```

-	Platforms:
	-	linux; amd64

### `httpd:2.2-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (24034784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce8af49acc500278f9e433046e04e4670d530e0a607a8963b057bffc914bc083`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:10:02 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Dec 2016 19:10:02 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 27 Dec 2016 19:10:03 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Dec 2016 19:10:04 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 27 Dec 2016 19:10:04 GMT
WORKDIR /usr/local/apache2
# Fri, 13 Jan 2017 22:52:46 GMT
ENV HTTPD_VERSION=2.2.32
# Fri, 13 Jan 2017 22:52:47 GMT
ENV HTTPD_SHA1=36dc7f2ac97627192dcff0a121408b897f91b121
# Fri, 13 Jan 2017 22:52:47 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.32.tar.bz2
# Fri, 13 Jan 2017 22:52:48 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.32.tar.bz2.asc
# Fri, 13 Jan 2017 22:53:28 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		gcc 		gnupg 		libc-dev 		make 		openssl 		openssl-dev 		pcre-dev 		tar 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xvf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Fri, 13 Jan 2017 22:53:29 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 13 Jan 2017 22:53:29 GMT
EXPOSE 80/tcp
# Fri, 13 Jan 2017 22:53:30 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39a0c1d464e176c4c71ae493d04b33dc66cb72c69095d8baf2b9518d0d84a8a`  
		Last Modified: Tue, 27 Dec 2016 19:13:37 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f537251c76e6a2ebfbbe7c401e818dd5749c6d0fd7a5e1f532fb26aba7f1b9fd`  
		Last Modified: Tue, 27 Dec 2016 19:13:38 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b2955bf89e1e2c12043414fe5722030e3a71f89066bfb086928e054bfa87e7`  
		Last Modified: Fri, 13 Jan 2017 22:54:27 GMT  
		Size: 21.7 MB (21719998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d1e09dc0af056e38f4c0f300c1525f9f8924430c8e2ade6a638227bee68ae2`  
		Last Modified: Fri, 13 Jan 2017 22:54:20 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4.25`

```console
$ docker pull httpd@sha256:4612fba4347bd87eaeecd5c522d844f26cc4065b45eef9291277497946b7a86c
```

-	Platforms:
	-	linux; amd64

### `httpd:2.4.25` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.1 MB (67057444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f316d5949bb02561a68216997d2d7a3b80d1f621729d50e1f14a4172af6ad464`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 20:34:58 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 28 Feb 2017 03:30:22 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 28 Feb 2017 03:30:22 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 03:30:23 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 28 Feb 2017 03:30:24 GMT
WORKDIR /usr/local/apache2
# Tue, 28 Feb 2017 03:30:24 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Tue, 28 Feb 2017 03:30:24 GMT
ENV OPENSSL_VERSION=1.0.2k-1~bpo8+1
# Tue, 28 Feb 2017 03:30:25 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Tue, 28 Feb 2017 03:30:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:30:43 GMT
ENV HTTPD_VERSION=2.4.25
# Tue, 28 Feb 2017 03:30:44 GMT
ENV HTTPD_SHA1=bd6d138c31c109297da2346c6e7b93b9283993d2
# Tue, 28 Feb 2017 03:30:44 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.25.tar.bz2
# Tue, 28 Feb 2017 03:30:44 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.25.tar.bz2.asc
# Tue, 28 Feb 2017 03:31:59 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		gcc 		libnghttp2-dev=$NGHTTP2_VERSION 		liblua5.2-dev 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 28 Feb 2017 03:31:59 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 28 Feb 2017 03:31:59 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 03:32:00 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ea63cb951e03df877a857b8770d8060854997c63c8430aea0719576fca9cb5`  
		Last Modified: Mon, 27 Feb 2017 20:42:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e523938ce3875c7db3b64d4f90dd7a245e33f4611aa2f4011ad802bbd8de8ecb`  
		Last Modified: Thu, 02 Mar 2017 00:46:06 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35123eac43ece6e53bc7518a2e109a0e8264c41a6ff822c6327a0ccab9fadffb`  
		Last Modified: Thu, 02 Mar 2017 00:46:04 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b018d9be386a93e19a1d2baf8ba3cb45d1cad9bb3658da4a50633fb06df888`  
		Last Modified: Thu, 02 Mar 2017 00:46:10 GMT  
		Size: 13.1 MB (13138872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9836efbe758ab9a815a6b5dc1e9a5966cc31f501484aba52c5434057c57446`  
		Last Modified: Thu, 02 Mar 2017 00:46:06 GMT  
		Size: 2.6 MB (2554206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb10b12e5d35cf97497825940087f8307faf1a227450874e1c5f342ea42d617`  
		Last Modified: Thu, 02 Mar 2017 00:46:04 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4`

```console
$ docker pull httpd@sha256:4612fba4347bd87eaeecd5c522d844f26cc4065b45eef9291277497946b7a86c
```

-	Platforms:
	-	linux; amd64

### `httpd:2.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.1 MB (67057444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f316d5949bb02561a68216997d2d7a3b80d1f621729d50e1f14a4172af6ad464`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 20:34:58 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 28 Feb 2017 03:30:22 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 28 Feb 2017 03:30:22 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 03:30:23 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 28 Feb 2017 03:30:24 GMT
WORKDIR /usr/local/apache2
# Tue, 28 Feb 2017 03:30:24 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Tue, 28 Feb 2017 03:30:24 GMT
ENV OPENSSL_VERSION=1.0.2k-1~bpo8+1
# Tue, 28 Feb 2017 03:30:25 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Tue, 28 Feb 2017 03:30:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:30:43 GMT
ENV HTTPD_VERSION=2.4.25
# Tue, 28 Feb 2017 03:30:44 GMT
ENV HTTPD_SHA1=bd6d138c31c109297da2346c6e7b93b9283993d2
# Tue, 28 Feb 2017 03:30:44 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.25.tar.bz2
# Tue, 28 Feb 2017 03:30:44 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.25.tar.bz2.asc
# Tue, 28 Feb 2017 03:31:59 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		gcc 		libnghttp2-dev=$NGHTTP2_VERSION 		liblua5.2-dev 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 28 Feb 2017 03:31:59 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 28 Feb 2017 03:31:59 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 03:32:00 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ea63cb951e03df877a857b8770d8060854997c63c8430aea0719576fca9cb5`  
		Last Modified: Mon, 27 Feb 2017 20:42:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e523938ce3875c7db3b64d4f90dd7a245e33f4611aa2f4011ad802bbd8de8ecb`  
		Last Modified: Thu, 02 Mar 2017 00:46:06 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35123eac43ece6e53bc7518a2e109a0e8264c41a6ff822c6327a0ccab9fadffb`  
		Last Modified: Thu, 02 Mar 2017 00:46:04 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b018d9be386a93e19a1d2baf8ba3cb45d1cad9bb3658da4a50633fb06df888`  
		Last Modified: Thu, 02 Mar 2017 00:46:10 GMT  
		Size: 13.1 MB (13138872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9836efbe758ab9a815a6b5dc1e9a5966cc31f501484aba52c5434057c57446`  
		Last Modified: Thu, 02 Mar 2017 00:46:06 GMT  
		Size: 2.6 MB (2554206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb10b12e5d35cf97497825940087f8307faf1a227450874e1c5f342ea42d617`  
		Last Modified: Thu, 02 Mar 2017 00:46:04 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2`

```console
$ docker pull httpd@sha256:4612fba4347bd87eaeecd5c522d844f26cc4065b45eef9291277497946b7a86c
```

-	Platforms:
	-	linux; amd64

### `httpd:2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.1 MB (67057444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f316d5949bb02561a68216997d2d7a3b80d1f621729d50e1f14a4172af6ad464`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 20:34:58 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 28 Feb 2017 03:30:22 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 28 Feb 2017 03:30:22 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 03:30:23 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 28 Feb 2017 03:30:24 GMT
WORKDIR /usr/local/apache2
# Tue, 28 Feb 2017 03:30:24 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Tue, 28 Feb 2017 03:30:24 GMT
ENV OPENSSL_VERSION=1.0.2k-1~bpo8+1
# Tue, 28 Feb 2017 03:30:25 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Tue, 28 Feb 2017 03:30:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:30:43 GMT
ENV HTTPD_VERSION=2.4.25
# Tue, 28 Feb 2017 03:30:44 GMT
ENV HTTPD_SHA1=bd6d138c31c109297da2346c6e7b93b9283993d2
# Tue, 28 Feb 2017 03:30:44 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.25.tar.bz2
# Tue, 28 Feb 2017 03:30:44 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.25.tar.bz2.asc
# Tue, 28 Feb 2017 03:31:59 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		gcc 		libnghttp2-dev=$NGHTTP2_VERSION 		liblua5.2-dev 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 28 Feb 2017 03:31:59 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 28 Feb 2017 03:31:59 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 03:32:00 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ea63cb951e03df877a857b8770d8060854997c63c8430aea0719576fca9cb5`  
		Last Modified: Mon, 27 Feb 2017 20:42:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e523938ce3875c7db3b64d4f90dd7a245e33f4611aa2f4011ad802bbd8de8ecb`  
		Last Modified: Thu, 02 Mar 2017 00:46:06 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35123eac43ece6e53bc7518a2e109a0e8264c41a6ff822c6327a0ccab9fadffb`  
		Last Modified: Thu, 02 Mar 2017 00:46:04 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b018d9be386a93e19a1d2baf8ba3cb45d1cad9bb3658da4a50633fb06df888`  
		Last Modified: Thu, 02 Mar 2017 00:46:10 GMT  
		Size: 13.1 MB (13138872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9836efbe758ab9a815a6b5dc1e9a5966cc31f501484aba52c5434057c57446`  
		Last Modified: Thu, 02 Mar 2017 00:46:06 GMT  
		Size: 2.6 MB (2554206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb10b12e5d35cf97497825940087f8307faf1a227450874e1c5f342ea42d617`  
		Last Modified: Thu, 02 Mar 2017 00:46:04 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:latest`

```console
$ docker pull httpd@sha256:4612fba4347bd87eaeecd5c522d844f26cc4065b45eef9291277497946b7a86c
```

-	Platforms:
	-	linux; amd64

### `httpd:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.1 MB (67057444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f316d5949bb02561a68216997d2d7a3b80d1f621729d50e1f14a4172af6ad464`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 20:34:58 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 28 Feb 2017 03:30:22 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 28 Feb 2017 03:30:22 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 03:30:23 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 28 Feb 2017 03:30:24 GMT
WORKDIR /usr/local/apache2
# Tue, 28 Feb 2017 03:30:24 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Tue, 28 Feb 2017 03:30:24 GMT
ENV OPENSSL_VERSION=1.0.2k-1~bpo8+1
# Tue, 28 Feb 2017 03:30:25 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Tue, 28 Feb 2017 03:30:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:30:43 GMT
ENV HTTPD_VERSION=2.4.25
# Tue, 28 Feb 2017 03:30:44 GMT
ENV HTTPD_SHA1=bd6d138c31c109297da2346c6e7b93b9283993d2
# Tue, 28 Feb 2017 03:30:44 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.25.tar.bz2
# Tue, 28 Feb 2017 03:30:44 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.25.tar.bz2.asc
# Tue, 28 Feb 2017 03:31:59 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		gcc 		libnghttp2-dev=$NGHTTP2_VERSION 		liblua5.2-dev 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 28 Feb 2017 03:31:59 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 28 Feb 2017 03:31:59 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 03:32:00 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ea63cb951e03df877a857b8770d8060854997c63c8430aea0719576fca9cb5`  
		Last Modified: Mon, 27 Feb 2017 20:42:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e523938ce3875c7db3b64d4f90dd7a245e33f4611aa2f4011ad802bbd8de8ecb`  
		Last Modified: Thu, 02 Mar 2017 00:46:06 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35123eac43ece6e53bc7518a2e109a0e8264c41a6ff822c6327a0ccab9fadffb`  
		Last Modified: Thu, 02 Mar 2017 00:46:04 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b018d9be386a93e19a1d2baf8ba3cb45d1cad9bb3658da4a50633fb06df888`  
		Last Modified: Thu, 02 Mar 2017 00:46:10 GMT  
		Size: 13.1 MB (13138872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9836efbe758ab9a815a6b5dc1e9a5966cc31f501484aba52c5434057c57446`  
		Last Modified: Thu, 02 Mar 2017 00:46:06 GMT  
		Size: 2.6 MB (2554206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb10b12e5d35cf97497825940087f8307faf1a227450874e1c5f342ea42d617`  
		Last Modified: Thu, 02 Mar 2017 00:46:04 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4.25-alpine`

```console
$ docker pull httpd@sha256:e48ce89aaebe361a260b9beddc4cc63210f9004ba79f96348bd9a44b50f3b283
```

-	Platforms:
	-	linux; amd64

### `httpd:2.4.25-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30118338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fa77c368fa613b6bcbf54758f6cf69ed0119c2b3c6a553048aef59ece3d2ff8`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Thu, 05 Jan 2017 23:55:01 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 05 Jan 2017 23:55:01 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Thu, 05 Jan 2017 23:55:14 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Jan 2017 23:55:15 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Thu, 05 Jan 2017 23:55:15 GMT
WORKDIR /usr/local/apache2
# Thu, 05 Jan 2017 23:55:16 GMT
ENV HTTPD_VERSION=2.4.25
# Thu, 05 Jan 2017 23:55:16 GMT
ENV HTTPD_SHA1=bd6d138c31c109297da2346c6e7b93b9283993d2
# Thu, 05 Jan 2017 23:55:28 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.25.tar.bz2
# Thu, 05 Jan 2017 23:55:28 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.25.tar.bz2.asc
# Thu, 05 Jan 2017 23:56:28 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Thu, 05 Jan 2017 23:56:29 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Thu, 05 Jan 2017 23:56:29 GMT
EXPOSE 80/tcp
# Thu, 05 Jan 2017 23:56:30 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473c004e90c0a1ba72ab731d72fd0da1162552068bdddd3cc5b134236681628a`  
		Last Modified: Thu, 05 Jan 2017 23:59:14 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f70b85c7c5d0100b63da118fd758e516fcfc5eea1d0a7ce684a30a6ff19079f`  
		Last Modified: Thu, 05 Jan 2017 23:59:15 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6099da944ea191365c6c57cdc4dd98e0288001450a2a3e29d068f725227618d`  
		Last Modified: Thu, 05 Jan 2017 23:59:24 GMT  
		Size: 28.2 MB (28214606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:940702a69f3af056520d4b37547aa07f51f590de62dae4a4fa074dc8e8bc2229`  
		Last Modified: Thu, 05 Jan 2017 23:59:14 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4-alpine`

```console
$ docker pull httpd@sha256:e48ce89aaebe361a260b9beddc4cc63210f9004ba79f96348bd9a44b50f3b283
```

-	Platforms:
	-	linux; amd64

### `httpd:2.4-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30118338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fa77c368fa613b6bcbf54758f6cf69ed0119c2b3c6a553048aef59ece3d2ff8`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Thu, 05 Jan 2017 23:55:01 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 05 Jan 2017 23:55:01 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Thu, 05 Jan 2017 23:55:14 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Jan 2017 23:55:15 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Thu, 05 Jan 2017 23:55:15 GMT
WORKDIR /usr/local/apache2
# Thu, 05 Jan 2017 23:55:16 GMT
ENV HTTPD_VERSION=2.4.25
# Thu, 05 Jan 2017 23:55:16 GMT
ENV HTTPD_SHA1=bd6d138c31c109297da2346c6e7b93b9283993d2
# Thu, 05 Jan 2017 23:55:28 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.25.tar.bz2
# Thu, 05 Jan 2017 23:55:28 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.25.tar.bz2.asc
# Thu, 05 Jan 2017 23:56:28 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Thu, 05 Jan 2017 23:56:29 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Thu, 05 Jan 2017 23:56:29 GMT
EXPOSE 80/tcp
# Thu, 05 Jan 2017 23:56:30 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473c004e90c0a1ba72ab731d72fd0da1162552068bdddd3cc5b134236681628a`  
		Last Modified: Thu, 05 Jan 2017 23:59:14 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f70b85c7c5d0100b63da118fd758e516fcfc5eea1d0a7ce684a30a6ff19079f`  
		Last Modified: Thu, 05 Jan 2017 23:59:15 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6099da944ea191365c6c57cdc4dd98e0288001450a2a3e29d068f725227618d`  
		Last Modified: Thu, 05 Jan 2017 23:59:24 GMT  
		Size: 28.2 MB (28214606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:940702a69f3af056520d4b37547aa07f51f590de62dae4a4fa074dc8e8bc2229`  
		Last Modified: Thu, 05 Jan 2017 23:59:14 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2-alpine`

```console
$ docker pull httpd@sha256:e48ce89aaebe361a260b9beddc4cc63210f9004ba79f96348bd9a44b50f3b283
```

-	Platforms:
	-	linux; amd64

### `httpd:2-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30118338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fa77c368fa613b6bcbf54758f6cf69ed0119c2b3c6a553048aef59ece3d2ff8`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Thu, 05 Jan 2017 23:55:01 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 05 Jan 2017 23:55:01 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Thu, 05 Jan 2017 23:55:14 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Jan 2017 23:55:15 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Thu, 05 Jan 2017 23:55:15 GMT
WORKDIR /usr/local/apache2
# Thu, 05 Jan 2017 23:55:16 GMT
ENV HTTPD_VERSION=2.4.25
# Thu, 05 Jan 2017 23:55:16 GMT
ENV HTTPD_SHA1=bd6d138c31c109297da2346c6e7b93b9283993d2
# Thu, 05 Jan 2017 23:55:28 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.25.tar.bz2
# Thu, 05 Jan 2017 23:55:28 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.25.tar.bz2.asc
# Thu, 05 Jan 2017 23:56:28 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Thu, 05 Jan 2017 23:56:29 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Thu, 05 Jan 2017 23:56:29 GMT
EXPOSE 80/tcp
# Thu, 05 Jan 2017 23:56:30 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473c004e90c0a1ba72ab731d72fd0da1162552068bdddd3cc5b134236681628a`  
		Last Modified: Thu, 05 Jan 2017 23:59:14 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f70b85c7c5d0100b63da118fd758e516fcfc5eea1d0a7ce684a30a6ff19079f`  
		Last Modified: Thu, 05 Jan 2017 23:59:15 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6099da944ea191365c6c57cdc4dd98e0288001450a2a3e29d068f725227618d`  
		Last Modified: Thu, 05 Jan 2017 23:59:24 GMT  
		Size: 28.2 MB (28214606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:940702a69f3af056520d4b37547aa07f51f590de62dae4a4fa074dc8e8bc2229`  
		Last Modified: Thu, 05 Jan 2017 23:59:14 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:alpine`

```console
$ docker pull httpd@sha256:e48ce89aaebe361a260b9beddc4cc63210f9004ba79f96348bd9a44b50f3b283
```

-	Platforms:
	-	linux; amd64

### `httpd:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30118338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fa77c368fa613b6bcbf54758f6cf69ed0119c2b3c6a553048aef59ece3d2ff8`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Thu, 05 Jan 2017 23:55:01 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 05 Jan 2017 23:55:01 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Thu, 05 Jan 2017 23:55:14 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Jan 2017 23:55:15 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Thu, 05 Jan 2017 23:55:15 GMT
WORKDIR /usr/local/apache2
# Thu, 05 Jan 2017 23:55:16 GMT
ENV HTTPD_VERSION=2.4.25
# Thu, 05 Jan 2017 23:55:16 GMT
ENV HTTPD_SHA1=bd6d138c31c109297da2346c6e7b93b9283993d2
# Thu, 05 Jan 2017 23:55:28 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.25.tar.bz2
# Thu, 05 Jan 2017 23:55:28 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.25.tar.bz2.asc
# Thu, 05 Jan 2017 23:56:28 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Thu, 05 Jan 2017 23:56:29 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Thu, 05 Jan 2017 23:56:29 GMT
EXPOSE 80/tcp
# Thu, 05 Jan 2017 23:56:30 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473c004e90c0a1ba72ab731d72fd0da1162552068bdddd3cc5b134236681628a`  
		Last Modified: Thu, 05 Jan 2017 23:59:14 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f70b85c7c5d0100b63da118fd758e516fcfc5eea1d0a7ce684a30a6ff19079f`  
		Last Modified: Thu, 05 Jan 2017 23:59:15 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6099da944ea191365c6c57cdc4dd98e0288001450a2a3e29d068f725227618d`  
		Last Modified: Thu, 05 Jan 2017 23:59:24 GMT  
		Size: 28.2 MB (28214606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:940702a69f3af056520d4b37547aa07f51f590de62dae4a4fa074dc8e8bc2229`  
		Last Modified: Thu, 05 Jan 2017 23:59:14 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
