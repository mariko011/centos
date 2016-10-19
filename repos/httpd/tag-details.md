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
$ docker pull httpd@sha256:e28dea2a8c10e449176ca1bf74da7916d4b706db72ed4904b0357ebe469510cf
```

-	Platforms:
	-	linux; amd64

### `httpd:2.2.31` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.0 MB (68972148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:282bac47bb1c70dc20a2278c21cca676ea6c35ac9c9eb54d1fda338aa0a53184`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:16:40 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 23 Sep 2016 19:16:41 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:16:41 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 23 Sep 2016 19:16:42 GMT
WORKDIR /usr/local/apache2
# Fri, 23 Sep 2016 19:16:54 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:18:43 GMT
ENV HTTPD_VERSION=2.2.31
# Fri, 23 Sep 2016 19:18:43 GMT
ENV HTTPD_SHA1=e3b55387112206307ba76526820a2627472f3787
# Fri, 23 Sep 2016 23:17:28 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.31.tar.bz2
# Fri, 23 Sep 2016 23:17:28 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.31.tar.bz2.asc
# Fri, 23 Sep 2016 23:18:26 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xvf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j"$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 23:18:30 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Fri, 23 Sep 2016 23:18:31 GMT
EXPOSE 80/tcp
# Fri, 23 Sep 2016 23:18:31 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bbf5d58d24c47512e234a5623474acf65ae00d4d1414272a893204f44cc680c`  
		Last Modified: Fri, 23 Sep 2016 19:18:07 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5dc8a4b12c307ac84de90cdd9a7f3915d1be04c9388868ca118831099c67a9`  
		Last Modified: Fri, 23 Sep 2016 19:18:10 GMT  
		Size: 11.7 MB (11739507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:511bbf51c210f1baf9f7d22b4a96f773195fcddf9a79585a063d902a4fc42eff`  
		Last Modified: Fri, 23 Sep 2016 23:22:16 GMT  
		Size: 5.9 MB (5877836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c90ed4f0d580d264b176b8e593b51d4a12b9cfa85a3fecd3424651f7c30679a`  
		Last Modified: Fri, 23 Sep 2016 23:22:14 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.2`

```console
$ docker pull httpd@sha256:e28dea2a8c10e449176ca1bf74da7916d4b706db72ed4904b0357ebe469510cf
```

-	Platforms:
	-	linux; amd64

### `httpd:2.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.0 MB (68972148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:282bac47bb1c70dc20a2278c21cca676ea6c35ac9c9eb54d1fda338aa0a53184`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:16:40 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 23 Sep 2016 19:16:41 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:16:41 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 23 Sep 2016 19:16:42 GMT
WORKDIR /usr/local/apache2
# Fri, 23 Sep 2016 19:16:54 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:18:43 GMT
ENV HTTPD_VERSION=2.2.31
# Fri, 23 Sep 2016 19:18:43 GMT
ENV HTTPD_SHA1=e3b55387112206307ba76526820a2627472f3787
# Fri, 23 Sep 2016 23:17:28 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.31.tar.bz2
# Fri, 23 Sep 2016 23:17:28 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.31.tar.bz2.asc
# Fri, 23 Sep 2016 23:18:26 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xvf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j"$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 23:18:30 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Fri, 23 Sep 2016 23:18:31 GMT
EXPOSE 80/tcp
# Fri, 23 Sep 2016 23:18:31 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bbf5d58d24c47512e234a5623474acf65ae00d4d1414272a893204f44cc680c`  
		Last Modified: Fri, 23 Sep 2016 19:18:07 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5dc8a4b12c307ac84de90cdd9a7f3915d1be04c9388868ca118831099c67a9`  
		Last Modified: Fri, 23 Sep 2016 19:18:10 GMT  
		Size: 11.7 MB (11739507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:511bbf51c210f1baf9f7d22b4a96f773195fcddf9a79585a063d902a4fc42eff`  
		Last Modified: Fri, 23 Sep 2016 23:22:16 GMT  
		Size: 5.9 MB (5877836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c90ed4f0d580d264b176b8e593b51d4a12b9cfa85a3fecd3424651f7c30679a`  
		Last Modified: Fri, 23 Sep 2016 23:22:14 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.2.31-alpine`

```console
$ docker pull httpd@sha256:6a81cc62e4ab55b1933ac0c7efbc01efe34f2d22bb6425b98b927724ea44f5d9
```

-	Platforms:
	-	linux; amd64

### `httpd:2.2.31-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26371883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fee7cf920be97fe136e1290d0a30d5f8a0c5170034ecfb73b2037b18d4854eb`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:21:51 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 18 Oct 2016 23:21:51 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 18 Oct 2016 23:21:52 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 23:21:52 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 18 Oct 2016 23:21:53 GMT
WORKDIR /usr/local/apache2
# Tue, 18 Oct 2016 23:24:28 GMT
ENV HTTPD_VERSION=2.2.31
# Tue, 18 Oct 2016 23:24:34 GMT
ENV HTTPD_SHA1=e3b55387112206307ba76526820a2627472f3787
# Tue, 18 Oct 2016 23:24:34 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.31.tar.bz2
# Tue, 18 Oct 2016 23:24:35 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.31.tar.bz2.asc
# Tue, 18 Oct 2016 23:25:05 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		gcc 		gnupg 		libc-dev 		make 		openssl 		openssl-dev 		pcre-dev 		tar 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xvf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& cd .. 	&& rm -r src 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Tue, 18 Oct 2016 23:25:06 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:25:06 GMT
EXPOSE 80/tcp
# Tue, 18 Oct 2016 23:25:06 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ecf90066392741028a17280e11b7391e768a97f4da5dc0ed20700fb34b2c94`  
		Last Modified: Tue, 18 Oct 2016 23:23:35 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12bf5f8e773b1ba9ea65ce4cdd840ab337b65b302a29d50b9667ec2647f9507`  
		Last Modified: Tue, 18 Oct 2016 23:23:37 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ffdb5a48159aaf3048708a9e8979b043b5951bccbf51e95c820066992aa8fd`  
		Last Modified: Tue, 18 Oct 2016 23:25:26 GMT  
		Size: 24.1 MB (24057230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa45a4eac6bfee2bc8902fd7bce2d2dad88ea9f2703399848cfd994b46ded301`  
		Last Modified: Tue, 18 Oct 2016 23:25:17 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.2-alpine`

```console
$ docker pull httpd@sha256:6a81cc62e4ab55b1933ac0c7efbc01efe34f2d22bb6425b98b927724ea44f5d9
```

-	Platforms:
	-	linux; amd64

### `httpd:2.2-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26371883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fee7cf920be97fe136e1290d0a30d5f8a0c5170034ecfb73b2037b18d4854eb`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:21:51 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 18 Oct 2016 23:21:51 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 18 Oct 2016 23:21:52 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 23:21:52 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 18 Oct 2016 23:21:53 GMT
WORKDIR /usr/local/apache2
# Tue, 18 Oct 2016 23:24:28 GMT
ENV HTTPD_VERSION=2.2.31
# Tue, 18 Oct 2016 23:24:34 GMT
ENV HTTPD_SHA1=e3b55387112206307ba76526820a2627472f3787
# Tue, 18 Oct 2016 23:24:34 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.31.tar.bz2
# Tue, 18 Oct 2016 23:24:35 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.31.tar.bz2.asc
# Tue, 18 Oct 2016 23:25:05 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		gcc 		gnupg 		libc-dev 		make 		openssl 		openssl-dev 		pcre-dev 		tar 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xvf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& cd .. 	&& rm -r src 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Tue, 18 Oct 2016 23:25:06 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:25:06 GMT
EXPOSE 80/tcp
# Tue, 18 Oct 2016 23:25:06 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ecf90066392741028a17280e11b7391e768a97f4da5dc0ed20700fb34b2c94`  
		Last Modified: Tue, 18 Oct 2016 23:23:35 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12bf5f8e773b1ba9ea65ce4cdd840ab337b65b302a29d50b9667ec2647f9507`  
		Last Modified: Tue, 18 Oct 2016 23:23:37 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ffdb5a48159aaf3048708a9e8979b043b5951bccbf51e95c820066992aa8fd`  
		Last Modified: Tue, 18 Oct 2016 23:25:26 GMT  
		Size: 24.1 MB (24057230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa45a4eac6bfee2bc8902fd7bce2d2dad88ea9f2703399848cfd994b46ded301`  
		Last Modified: Tue, 18 Oct 2016 23:25:17 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4.23`

```console
$ docker pull httpd@sha256:aa0711c4fc25264ce59b5f9315b555ba1252ad0fbd0e290634b693df2045a072
```

-	Platforms:
	-	linux; amd64

### `httpd:2.4.23` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71936145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ca4bda0a6b3727a6ffcc43e981cad0f24e2ec79d338f6ba325b4dfd0756fb8f`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:16:40 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 23 Sep 2016 19:16:41 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:16:41 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 23 Sep 2016 19:16:42 GMT
WORKDIR /usr/local/apache2
# Fri, 23 Sep 2016 19:16:54 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:16:55 GMT
ENV HTTPD_VERSION=2.4.23
# Fri, 23 Sep 2016 19:16:55 GMT
ENV HTTPD_SHA1=5101be34ac4a509b245adb70a56690a84fcc4e7f
# Fri, 23 Sep 2016 23:19:03 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.23.tar.bz2
# Fri, 23 Sep 2016 23:19:04 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.23.tar.bz2.asc
# Fri, 23 Sep 2016 23:20:44 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xvf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j"$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 23:20:45 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 23 Sep 2016 23:20:45 GMT
EXPOSE 80/tcp
# Fri, 23 Sep 2016 23:20:45 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bbf5d58d24c47512e234a5623474acf65ae00d4d1414272a893204f44cc680c`  
		Last Modified: Fri, 23 Sep 2016 19:18:07 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5dc8a4b12c307ac84de90cdd9a7f3915d1be04c9388868ca118831099c67a9`  
		Last Modified: Fri, 23 Sep 2016 19:18:10 GMT  
		Size: 11.7 MB (11739507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd6b22eb11afce63cc76f6bc41042d99f10d6024c96b655dafba930b8d25909`  
		Last Modified: Fri, 23 Sep 2016 23:23:14 GMT  
		Size: 8.8 MB (8841833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:960e52ecf8200cbd84e70eb2ad8678f4367e50d14357021872c10fa3fc5935fa`  
		Last Modified: Fri, 23 Sep 2016 23:23:11 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4`

```console
$ docker pull httpd@sha256:aa0711c4fc25264ce59b5f9315b555ba1252ad0fbd0e290634b693df2045a072
```

-	Platforms:
	-	linux; amd64

### `httpd:2.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71936145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ca4bda0a6b3727a6ffcc43e981cad0f24e2ec79d338f6ba325b4dfd0756fb8f`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:16:40 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 23 Sep 2016 19:16:41 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:16:41 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 23 Sep 2016 19:16:42 GMT
WORKDIR /usr/local/apache2
# Fri, 23 Sep 2016 19:16:54 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:16:55 GMT
ENV HTTPD_VERSION=2.4.23
# Fri, 23 Sep 2016 19:16:55 GMT
ENV HTTPD_SHA1=5101be34ac4a509b245adb70a56690a84fcc4e7f
# Fri, 23 Sep 2016 23:19:03 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.23.tar.bz2
# Fri, 23 Sep 2016 23:19:04 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.23.tar.bz2.asc
# Fri, 23 Sep 2016 23:20:44 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xvf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j"$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 23:20:45 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 23 Sep 2016 23:20:45 GMT
EXPOSE 80/tcp
# Fri, 23 Sep 2016 23:20:45 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bbf5d58d24c47512e234a5623474acf65ae00d4d1414272a893204f44cc680c`  
		Last Modified: Fri, 23 Sep 2016 19:18:07 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5dc8a4b12c307ac84de90cdd9a7f3915d1be04c9388868ca118831099c67a9`  
		Last Modified: Fri, 23 Sep 2016 19:18:10 GMT  
		Size: 11.7 MB (11739507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd6b22eb11afce63cc76f6bc41042d99f10d6024c96b655dafba930b8d25909`  
		Last Modified: Fri, 23 Sep 2016 23:23:14 GMT  
		Size: 8.8 MB (8841833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:960e52ecf8200cbd84e70eb2ad8678f4367e50d14357021872c10fa3fc5935fa`  
		Last Modified: Fri, 23 Sep 2016 23:23:11 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2`

```console
$ docker pull httpd@sha256:aa0711c4fc25264ce59b5f9315b555ba1252ad0fbd0e290634b693df2045a072
```

-	Platforms:
	-	linux; amd64

### `httpd:2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71936145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ca4bda0a6b3727a6ffcc43e981cad0f24e2ec79d338f6ba325b4dfd0756fb8f`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:16:40 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 23 Sep 2016 19:16:41 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:16:41 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 23 Sep 2016 19:16:42 GMT
WORKDIR /usr/local/apache2
# Fri, 23 Sep 2016 19:16:54 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:16:55 GMT
ENV HTTPD_VERSION=2.4.23
# Fri, 23 Sep 2016 19:16:55 GMT
ENV HTTPD_SHA1=5101be34ac4a509b245adb70a56690a84fcc4e7f
# Fri, 23 Sep 2016 23:19:03 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.23.tar.bz2
# Fri, 23 Sep 2016 23:19:04 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.23.tar.bz2.asc
# Fri, 23 Sep 2016 23:20:44 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xvf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j"$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 23:20:45 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 23 Sep 2016 23:20:45 GMT
EXPOSE 80/tcp
# Fri, 23 Sep 2016 23:20:45 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bbf5d58d24c47512e234a5623474acf65ae00d4d1414272a893204f44cc680c`  
		Last Modified: Fri, 23 Sep 2016 19:18:07 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5dc8a4b12c307ac84de90cdd9a7f3915d1be04c9388868ca118831099c67a9`  
		Last Modified: Fri, 23 Sep 2016 19:18:10 GMT  
		Size: 11.7 MB (11739507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd6b22eb11afce63cc76f6bc41042d99f10d6024c96b655dafba930b8d25909`  
		Last Modified: Fri, 23 Sep 2016 23:23:14 GMT  
		Size: 8.8 MB (8841833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:960e52ecf8200cbd84e70eb2ad8678f4367e50d14357021872c10fa3fc5935fa`  
		Last Modified: Fri, 23 Sep 2016 23:23:11 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:latest`

```console
$ docker pull httpd@sha256:aa0711c4fc25264ce59b5f9315b555ba1252ad0fbd0e290634b693df2045a072
```

-	Platforms:
	-	linux; amd64

### `httpd:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71936145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ca4bda0a6b3727a6ffcc43e981cad0f24e2ec79d338f6ba325b4dfd0756fb8f`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:16:40 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 23 Sep 2016 19:16:41 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:16:41 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 23 Sep 2016 19:16:42 GMT
WORKDIR /usr/local/apache2
# Fri, 23 Sep 2016 19:16:54 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:16:55 GMT
ENV HTTPD_VERSION=2.4.23
# Fri, 23 Sep 2016 19:16:55 GMT
ENV HTTPD_SHA1=5101be34ac4a509b245adb70a56690a84fcc4e7f
# Fri, 23 Sep 2016 23:19:03 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.23.tar.bz2
# Fri, 23 Sep 2016 23:19:04 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.23.tar.bz2.asc
# Fri, 23 Sep 2016 23:20:44 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xvf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j"$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 23:20:45 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 23 Sep 2016 23:20:45 GMT
EXPOSE 80/tcp
# Fri, 23 Sep 2016 23:20:45 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bbf5d58d24c47512e234a5623474acf65ae00d4d1414272a893204f44cc680c`  
		Last Modified: Fri, 23 Sep 2016 19:18:07 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5dc8a4b12c307ac84de90cdd9a7f3915d1be04c9388868ca118831099c67a9`  
		Last Modified: Fri, 23 Sep 2016 19:18:10 GMT  
		Size: 11.7 MB (11739507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd6b22eb11afce63cc76f6bc41042d99f10d6024c96b655dafba930b8d25909`  
		Last Modified: Fri, 23 Sep 2016 23:23:14 GMT  
		Size: 8.8 MB (8841833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:960e52ecf8200cbd84e70eb2ad8678f4367e50d14357021872c10fa3fc5935fa`  
		Last Modified: Fri, 23 Sep 2016 23:23:11 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4.23-alpine`

```console
$ docker pull httpd@sha256:0cbc6830e1ebcef0cabbbd1d5abaff9eac5602f1d2eaf14c560effdc0fd6305e
```

-	Platforms:
	-	linux; amd64

### `httpd:2.4.23-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.0 MB (30048239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90f065ad819a297892639940a0c98e562e286b6d1274396cbf6b2ffb6fda8ee5`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:21:51 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 18 Oct 2016 23:21:51 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 18 Oct 2016 23:21:52 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 23:21:52 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 18 Oct 2016 23:21:53 GMT
WORKDIR /usr/local/apache2
# Tue, 18 Oct 2016 23:21:53 GMT
ENV HTTPD_VERSION=2.4.23
# Tue, 18 Oct 2016 23:21:53 GMT
ENV HTTPD_SHA1=5101be34ac4a509b245adb70a56690a84fcc4e7f
# Tue, 18 Oct 2016 23:21:54 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.23.tar.bz2
# Tue, 18 Oct 2016 23:21:54 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.23.tar.bz2.asc
# Tue, 18 Oct 2016 23:23:05 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		gcc 		gnupg 		libc-dev 		make 		openssl 		openssl-dev 		pcre-dev 		tar 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xvf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& cd .. 	&& rm -r src 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Tue, 18 Oct 2016 23:23:10 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:23:15 GMT
EXPOSE 80/tcp
# Tue, 18 Oct 2016 23:23:20 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ecf90066392741028a17280e11b7391e768a97f4da5dc0ed20700fb34b2c94`  
		Last Modified: Tue, 18 Oct 2016 23:23:35 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12bf5f8e773b1ba9ea65ce4cdd840ab337b65b302a29d50b9667ec2647f9507`  
		Last Modified: Tue, 18 Oct 2016 23:23:37 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b88a88deba79ba7080c417dcec724ee0197e1fc7dd7852e167353c87f277f8`  
		Last Modified: Tue, 18 Oct 2016 23:23:45 GMT  
		Size: 27.7 MB (27733585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d3143095807857e657861ccbddad83a61f6086e0091897c3223cf6ba5ca70d`  
		Last Modified: Tue, 18 Oct 2016 23:23:37 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4-alpine`

```console
$ docker pull httpd@sha256:0cbc6830e1ebcef0cabbbd1d5abaff9eac5602f1d2eaf14c560effdc0fd6305e
```

-	Platforms:
	-	linux; amd64

### `httpd:2.4-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.0 MB (30048239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90f065ad819a297892639940a0c98e562e286b6d1274396cbf6b2ffb6fda8ee5`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:21:51 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 18 Oct 2016 23:21:51 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 18 Oct 2016 23:21:52 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 23:21:52 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 18 Oct 2016 23:21:53 GMT
WORKDIR /usr/local/apache2
# Tue, 18 Oct 2016 23:21:53 GMT
ENV HTTPD_VERSION=2.4.23
# Tue, 18 Oct 2016 23:21:53 GMT
ENV HTTPD_SHA1=5101be34ac4a509b245adb70a56690a84fcc4e7f
# Tue, 18 Oct 2016 23:21:54 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.23.tar.bz2
# Tue, 18 Oct 2016 23:21:54 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.23.tar.bz2.asc
# Tue, 18 Oct 2016 23:23:05 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		gcc 		gnupg 		libc-dev 		make 		openssl 		openssl-dev 		pcre-dev 		tar 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xvf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& cd .. 	&& rm -r src 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Tue, 18 Oct 2016 23:23:10 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:23:15 GMT
EXPOSE 80/tcp
# Tue, 18 Oct 2016 23:23:20 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ecf90066392741028a17280e11b7391e768a97f4da5dc0ed20700fb34b2c94`  
		Last Modified: Tue, 18 Oct 2016 23:23:35 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12bf5f8e773b1ba9ea65ce4cdd840ab337b65b302a29d50b9667ec2647f9507`  
		Last Modified: Tue, 18 Oct 2016 23:23:37 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b88a88deba79ba7080c417dcec724ee0197e1fc7dd7852e167353c87f277f8`  
		Last Modified: Tue, 18 Oct 2016 23:23:45 GMT  
		Size: 27.7 MB (27733585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d3143095807857e657861ccbddad83a61f6086e0091897c3223cf6ba5ca70d`  
		Last Modified: Tue, 18 Oct 2016 23:23:37 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2-alpine`

```console
$ docker pull httpd@sha256:0cbc6830e1ebcef0cabbbd1d5abaff9eac5602f1d2eaf14c560effdc0fd6305e
```

-	Platforms:
	-	linux; amd64

### `httpd:2-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.0 MB (30048239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90f065ad819a297892639940a0c98e562e286b6d1274396cbf6b2ffb6fda8ee5`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:21:51 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 18 Oct 2016 23:21:51 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 18 Oct 2016 23:21:52 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 23:21:52 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 18 Oct 2016 23:21:53 GMT
WORKDIR /usr/local/apache2
# Tue, 18 Oct 2016 23:21:53 GMT
ENV HTTPD_VERSION=2.4.23
# Tue, 18 Oct 2016 23:21:53 GMT
ENV HTTPD_SHA1=5101be34ac4a509b245adb70a56690a84fcc4e7f
# Tue, 18 Oct 2016 23:21:54 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.23.tar.bz2
# Tue, 18 Oct 2016 23:21:54 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.23.tar.bz2.asc
# Tue, 18 Oct 2016 23:23:05 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		gcc 		gnupg 		libc-dev 		make 		openssl 		openssl-dev 		pcre-dev 		tar 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xvf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& cd .. 	&& rm -r src 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Tue, 18 Oct 2016 23:23:10 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:23:15 GMT
EXPOSE 80/tcp
# Tue, 18 Oct 2016 23:23:20 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ecf90066392741028a17280e11b7391e768a97f4da5dc0ed20700fb34b2c94`  
		Last Modified: Tue, 18 Oct 2016 23:23:35 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12bf5f8e773b1ba9ea65ce4cdd840ab337b65b302a29d50b9667ec2647f9507`  
		Last Modified: Tue, 18 Oct 2016 23:23:37 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b88a88deba79ba7080c417dcec724ee0197e1fc7dd7852e167353c87f277f8`  
		Last Modified: Tue, 18 Oct 2016 23:23:45 GMT  
		Size: 27.7 MB (27733585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d3143095807857e657861ccbddad83a61f6086e0091897c3223cf6ba5ca70d`  
		Last Modified: Tue, 18 Oct 2016 23:23:37 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:alpine`

```console
$ docker pull httpd@sha256:0cbc6830e1ebcef0cabbbd1d5abaff9eac5602f1d2eaf14c560effdc0fd6305e
```

-	Platforms:
	-	linux; amd64

### `httpd:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.0 MB (30048239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90f065ad819a297892639940a0c98e562e286b6d1274396cbf6b2ffb6fda8ee5`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:21:51 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 18 Oct 2016 23:21:51 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 18 Oct 2016 23:21:52 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 23:21:52 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 18 Oct 2016 23:21:53 GMT
WORKDIR /usr/local/apache2
# Tue, 18 Oct 2016 23:21:53 GMT
ENV HTTPD_VERSION=2.4.23
# Tue, 18 Oct 2016 23:21:53 GMT
ENV HTTPD_SHA1=5101be34ac4a509b245adb70a56690a84fcc4e7f
# Tue, 18 Oct 2016 23:21:54 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.23.tar.bz2
# Tue, 18 Oct 2016 23:21:54 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.23.tar.bz2.asc
# Tue, 18 Oct 2016 23:23:05 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		gcc 		gnupg 		libc-dev 		make 		openssl 		openssl-dev 		pcre-dev 		tar 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xvf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& cd .. 	&& rm -r src 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Tue, 18 Oct 2016 23:23:10 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:23:15 GMT
EXPOSE 80/tcp
# Tue, 18 Oct 2016 23:23:20 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ecf90066392741028a17280e11b7391e768a97f4da5dc0ed20700fb34b2c94`  
		Last Modified: Tue, 18 Oct 2016 23:23:35 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12bf5f8e773b1ba9ea65ce4cdd840ab337b65b302a29d50b9667ec2647f9507`  
		Last Modified: Tue, 18 Oct 2016 23:23:37 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b88a88deba79ba7080c417dcec724ee0197e1fc7dd7852e167353c87f277f8`  
		Last Modified: Tue, 18 Oct 2016 23:23:45 GMT  
		Size: 27.7 MB (27733585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d3143095807857e657861ccbddad83a61f6086e0091897c3223cf6ba5ca70d`  
		Last Modified: Tue, 18 Oct 2016 23:23:37 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
