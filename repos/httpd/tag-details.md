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

**does not exist** (yet?)

## `httpd:2.2`

```console
$ docker pull httpd@sha256:f3f1dfb2b45b6a4fb90f4644a505262f631a18f83c3acf7d426621b592a1411f
```

-	Platforms:
	-	linux; amd64

### `httpd:2.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.8 MB (64787268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8a7fb36e3abfc42f15f2a2a9293f1768a5b568fd7ac51546f0055e399c29aef`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:46:46 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 13 Dec 2016 23:46:46 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Dec 2016 23:46:47 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 13 Dec 2016 23:46:47 GMT
WORKDIR /usr/local/apache2
# Tue, 13 Dec 2016 23:48:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:48:31 GMT
ENV HTTPD_VERSION=2.2.31
# Tue, 13 Dec 2016 23:48:32 GMT
ENV HTTPD_SHA1=e3b55387112206307ba76526820a2627472f3787
# Tue, 13 Dec 2016 23:48:32 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.31.tar.bz2
# Tue, 13 Dec 2016 23:48:33 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.31.tar.bz2.asc
# Tue, 13 Dec 2016 23:49:25 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xvf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 13 Dec 2016 23:49:25 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Tue, 13 Dec 2016 23:49:26 GMT
EXPOSE 80/tcp
# Tue, 13 Dec 2016 23:49:26 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ab16045130b299e0151965f52f0a6eb32df9fec13d1a4f1c249e459547be6e`  
		Last Modified: Mon, 19 Dec 2016 22:41:11 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8e1407a02105d5b7d73ba0c2b302c8c6239077ca6ffc995f8f4bddf6e117dc3`  
		Last Modified: Mon, 19 Dec 2016 22:41:17 GMT  
		Size: 11.7 MB (11740353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315798392cd396a05e94d991a6c45152fe9fd1f8edd07dc0d54ef95b3142401f`  
		Last Modified: Mon, 19 Dec 2016 22:41:12 GMT  
		Size: 1.7 MB (1683348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c843c77de92779908514c172df625fa102f507d62a172ba913b9864dd5ba2b55`  
		Last Modified: Mon, 19 Dec 2016 22:41:12 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.2.32-alpine`

**does not exist** (yet?)

## `httpd:2.2-alpine`

```console
$ docker pull httpd@sha256:0d0bd21c1ac80e75732ad89a0db4640886431ecd443b3f94e7b441fee40ce927
```

-	Platforms:
	-	linux; amd64

### `httpd:2.2-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (24033656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53ecdc16a2ecff5b3917ef84af6c889cb3f1c0a6066378cb92e3e81e85f9f481`
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
# Tue, 27 Dec 2016 19:11:28 GMT
ENV HTTPD_VERSION=2.2.31
# Tue, 27 Dec 2016 19:11:28 GMT
ENV HTTPD_SHA1=e3b55387112206307ba76526820a2627472f3787
# Tue, 27 Dec 2016 19:11:29 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.31.tar.bz2
# Tue, 27 Dec 2016 19:11:29 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.31.tar.bz2.asc
# Tue, 27 Dec 2016 19:12:17 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		gcc 		gnupg 		libc-dev 		make 		openssl 		openssl-dev 		pcre-dev 		tar 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xvf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j "$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Tue, 27 Dec 2016 19:12:21 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 27 Dec 2016 19:12:21 GMT
EXPOSE 80/tcp
# Tue, 27 Dec 2016 19:12:22 GMT
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
	-	`sha256:002dd557efc6d411c3e8c8b7ec1a8936f2fc307480efbe8f1c507467ec98feb5`  
		Last Modified: Tue, 27 Dec 2016 19:13:47 GMT  
		Size: 21.7 MB (21718866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7e370729eab4cc640f40c56f9934684627896a11de49f1db5b3587525f4925`  
		Last Modified: Tue, 27 Dec 2016 19:13:38 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4.25`

```console
$ docker pull httpd@sha256:0d817a924bed1a216f12a0f4947b5f8a2f173bd5a9cebfe1382d024287154c99
```

-	Platforms:
	-	linux; amd64

### `httpd:2.4.25` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.8 MB (66772724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c4363ef5f1221bd275f00b8b8a97344a5829a06f16b98354a665a6c611e7cf1`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:46:46 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 13 Dec 2016 23:46:46 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Dec 2016 23:46:47 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 13 Dec 2016 23:46:47 GMT
WORKDIR /usr/local/apache2
# Tue, 13 Dec 2016 23:46:48 GMT
ENV NGHTTP2_VERSION=1.17.0-1
# Tue, 13 Dec 2016 23:46:49 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Tue, 13 Dec 2016 23:47:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Thu, 22 Dec 2016 20:18:40 GMT
ENV HTTPD_VERSION=2.4.25
# Thu, 22 Dec 2016 20:18:41 GMT
ENV HTTPD_SHA1=bd6d138c31c109297da2346c6e7b93b9283993d2
# Thu, 22 Dec 2016 20:18:42 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.25.tar.bz2
# Thu, 22 Dec 2016 20:18:42 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.25.tar.bz2.asc
# Thu, 22 Dec 2016 20:21:33 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		gcc 		libnghttp2-dev=$NGHTTP2_VERSION 		liblua5.2-dev 		libpcre++-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 22 Dec 2016 20:21:34 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Thu, 22 Dec 2016 20:21:35 GMT
EXPOSE 80/tcp
# Thu, 22 Dec 2016 20:21:35 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ab16045130b299e0151965f52f0a6eb32df9fec13d1a4f1c249e459547be6e`  
		Last Modified: Mon, 19 Dec 2016 22:41:11 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:298301d4f044a4dd43672a4ea47a51a8f7ad0db5511f8edef2d71171b1062d70`  
		Last Modified: Mon, 19 Dec 2016 22:42:09 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb487922f95a3b2b4253ccc2d68a6af3dfac51b0a42ef7a7c29cffd2a309667`  
		Last Modified: Mon, 19 Dec 2016 22:42:17 GMT  
		Size: 12.9 MB (12856756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32a220ee5999873a95bb73a503a19f6b6d583731bf3f6c0d4bea220e117bc9d`  
		Last Modified: Thu, 22 Dec 2016 20:26:08 GMT  
		Size: 2.6 MB (2552069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a413d53eb3b0ca4c2cecd7818673e9f0cb2598aaec88fe7aba095dae91e43858`  
		Last Modified: Thu, 22 Dec 2016 20:26:07 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4`

```console
$ docker pull httpd@sha256:0d817a924bed1a216f12a0f4947b5f8a2f173bd5a9cebfe1382d024287154c99
```

-	Platforms:
	-	linux; amd64

### `httpd:2.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.8 MB (66772724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c4363ef5f1221bd275f00b8b8a97344a5829a06f16b98354a665a6c611e7cf1`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:46:46 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 13 Dec 2016 23:46:46 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Dec 2016 23:46:47 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 13 Dec 2016 23:46:47 GMT
WORKDIR /usr/local/apache2
# Tue, 13 Dec 2016 23:46:48 GMT
ENV NGHTTP2_VERSION=1.17.0-1
# Tue, 13 Dec 2016 23:46:49 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Tue, 13 Dec 2016 23:47:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Thu, 22 Dec 2016 20:18:40 GMT
ENV HTTPD_VERSION=2.4.25
# Thu, 22 Dec 2016 20:18:41 GMT
ENV HTTPD_SHA1=bd6d138c31c109297da2346c6e7b93b9283993d2
# Thu, 22 Dec 2016 20:18:42 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.25.tar.bz2
# Thu, 22 Dec 2016 20:18:42 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.25.tar.bz2.asc
# Thu, 22 Dec 2016 20:21:33 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		gcc 		libnghttp2-dev=$NGHTTP2_VERSION 		liblua5.2-dev 		libpcre++-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 22 Dec 2016 20:21:34 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Thu, 22 Dec 2016 20:21:35 GMT
EXPOSE 80/tcp
# Thu, 22 Dec 2016 20:21:35 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ab16045130b299e0151965f52f0a6eb32df9fec13d1a4f1c249e459547be6e`  
		Last Modified: Mon, 19 Dec 2016 22:41:11 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:298301d4f044a4dd43672a4ea47a51a8f7ad0db5511f8edef2d71171b1062d70`  
		Last Modified: Mon, 19 Dec 2016 22:42:09 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb487922f95a3b2b4253ccc2d68a6af3dfac51b0a42ef7a7c29cffd2a309667`  
		Last Modified: Mon, 19 Dec 2016 22:42:17 GMT  
		Size: 12.9 MB (12856756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32a220ee5999873a95bb73a503a19f6b6d583731bf3f6c0d4bea220e117bc9d`  
		Last Modified: Thu, 22 Dec 2016 20:26:08 GMT  
		Size: 2.6 MB (2552069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a413d53eb3b0ca4c2cecd7818673e9f0cb2598aaec88fe7aba095dae91e43858`  
		Last Modified: Thu, 22 Dec 2016 20:26:07 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2`

```console
$ docker pull httpd@sha256:0d817a924bed1a216f12a0f4947b5f8a2f173bd5a9cebfe1382d024287154c99
```

-	Platforms:
	-	linux; amd64

### `httpd:2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.8 MB (66772724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c4363ef5f1221bd275f00b8b8a97344a5829a06f16b98354a665a6c611e7cf1`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:46:46 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 13 Dec 2016 23:46:46 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Dec 2016 23:46:47 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 13 Dec 2016 23:46:47 GMT
WORKDIR /usr/local/apache2
# Tue, 13 Dec 2016 23:46:48 GMT
ENV NGHTTP2_VERSION=1.17.0-1
# Tue, 13 Dec 2016 23:46:49 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Tue, 13 Dec 2016 23:47:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Thu, 22 Dec 2016 20:18:40 GMT
ENV HTTPD_VERSION=2.4.25
# Thu, 22 Dec 2016 20:18:41 GMT
ENV HTTPD_SHA1=bd6d138c31c109297da2346c6e7b93b9283993d2
# Thu, 22 Dec 2016 20:18:42 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.25.tar.bz2
# Thu, 22 Dec 2016 20:18:42 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.25.tar.bz2.asc
# Thu, 22 Dec 2016 20:21:33 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		gcc 		libnghttp2-dev=$NGHTTP2_VERSION 		liblua5.2-dev 		libpcre++-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 22 Dec 2016 20:21:34 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Thu, 22 Dec 2016 20:21:35 GMT
EXPOSE 80/tcp
# Thu, 22 Dec 2016 20:21:35 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ab16045130b299e0151965f52f0a6eb32df9fec13d1a4f1c249e459547be6e`  
		Last Modified: Mon, 19 Dec 2016 22:41:11 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:298301d4f044a4dd43672a4ea47a51a8f7ad0db5511f8edef2d71171b1062d70`  
		Last Modified: Mon, 19 Dec 2016 22:42:09 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb487922f95a3b2b4253ccc2d68a6af3dfac51b0a42ef7a7c29cffd2a309667`  
		Last Modified: Mon, 19 Dec 2016 22:42:17 GMT  
		Size: 12.9 MB (12856756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32a220ee5999873a95bb73a503a19f6b6d583731bf3f6c0d4bea220e117bc9d`  
		Last Modified: Thu, 22 Dec 2016 20:26:08 GMT  
		Size: 2.6 MB (2552069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a413d53eb3b0ca4c2cecd7818673e9f0cb2598aaec88fe7aba095dae91e43858`  
		Last Modified: Thu, 22 Dec 2016 20:26:07 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:latest`

```console
$ docker pull httpd@sha256:0d817a924bed1a216f12a0f4947b5f8a2f173bd5a9cebfe1382d024287154c99
```

-	Platforms:
	-	linux; amd64

### `httpd:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.8 MB (66772724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c4363ef5f1221bd275f00b8b8a97344a5829a06f16b98354a665a6c611e7cf1`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:46:46 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 13 Dec 2016 23:46:46 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Dec 2016 23:46:47 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 13 Dec 2016 23:46:47 GMT
WORKDIR /usr/local/apache2
# Tue, 13 Dec 2016 23:46:48 GMT
ENV NGHTTP2_VERSION=1.17.0-1
# Tue, 13 Dec 2016 23:46:49 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Tue, 13 Dec 2016 23:47:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Thu, 22 Dec 2016 20:18:40 GMT
ENV HTTPD_VERSION=2.4.25
# Thu, 22 Dec 2016 20:18:41 GMT
ENV HTTPD_SHA1=bd6d138c31c109297da2346c6e7b93b9283993d2
# Thu, 22 Dec 2016 20:18:42 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.25.tar.bz2
# Thu, 22 Dec 2016 20:18:42 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.25.tar.bz2.asc
# Thu, 22 Dec 2016 20:21:33 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		gcc 		libnghttp2-dev=$NGHTTP2_VERSION 		liblua5.2-dev 		libpcre++-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 22 Dec 2016 20:21:34 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Thu, 22 Dec 2016 20:21:35 GMT
EXPOSE 80/tcp
# Thu, 22 Dec 2016 20:21:35 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ab16045130b299e0151965f52f0a6eb32df9fec13d1a4f1c249e459547be6e`  
		Last Modified: Mon, 19 Dec 2016 22:41:11 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:298301d4f044a4dd43672a4ea47a51a8f7ad0db5511f8edef2d71171b1062d70`  
		Last Modified: Mon, 19 Dec 2016 22:42:09 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb487922f95a3b2b4253ccc2d68a6af3dfac51b0a42ef7a7c29cffd2a309667`  
		Last Modified: Mon, 19 Dec 2016 22:42:17 GMT  
		Size: 12.9 MB (12856756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32a220ee5999873a95bb73a503a19f6b6d583731bf3f6c0d4bea220e117bc9d`  
		Last Modified: Thu, 22 Dec 2016 20:26:08 GMT  
		Size: 2.6 MB (2552069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a413d53eb3b0ca4c2cecd7818673e9f0cb2598aaec88fe7aba095dae91e43858`  
		Last Modified: Thu, 22 Dec 2016 20:26:07 GMT  
		Size: 291.0 B  
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
