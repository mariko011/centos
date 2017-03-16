<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `memcached`

-	[`memcached:1.4.35`](#memcached1435)
-	[`memcached:1.4`](#memcached14)
-	[`memcached:1`](#memcached1)
-	[`memcached:latest`](#memcachedlatest)
-	[`memcached:1.4.35-alpine`](#memcached1435-alpine)
-	[`memcached:1.4-alpine`](#memcached14-alpine)
-	[`memcached:1-alpine`](#memcached1-alpine)
-	[`memcached:alpine`](#memcachedalpine)

## `memcached:1.4.35`

```console
$ docker pull memcached@sha256:4d7cdaae4341b3b209dca912fc14c4915b2142c6de51eac727e9669f141bbc44
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4.35` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30423234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deb4e908c6ae9a163e297aea5e2096e6d4e7fcacd06dd8a778871985bd0edb2a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:56 GMT
ADD file:a8e568cac3297f08efca89dbac4ea579717ed203b1601807b67954cb6c466e73 in / 
# Mon, 27 Feb 2017 20:34:57 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 06:00:15 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 16 Mar 2017 18:41:42 GMT
ENV MEMCACHED_VERSION=1.4.35
# Thu, 16 Mar 2017 18:41:43 GMT
ENV MEMCACHED_SHA1=787991c0df75defbb91518c9796f8244852a018a
# Thu, 16 Mar 2017 18:42:11 GMT
RUN set -x 	&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 	&& memcached -V
# Thu, 16 Mar 2017 18:42:12 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 16 Mar 2017 18:42:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 16 Mar 2017 18:42:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Mar 2017 18:42:15 GMT
USER [memcache]
# Thu, 16 Mar 2017 18:42:15 GMT
EXPOSE 11211/tcp
# Thu, 16 Mar 2017 18:42:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:99506a317b930653ea3da10d5c2f472c2078c32e908e87ae7d7e9ada6e3ac7da`  
		Last Modified: Mon, 27 Feb 2017 20:41:48 GMT  
		Size: 29.5 MB (29525338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603d86382e144cf6b23e809bde7c48a8ed371dde924b2a9ece4d2579c24d65c8`  
		Last Modified: Thu, 02 Mar 2017 01:26:24 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78765fedc42346a8defb9e1b04b510d91b9a2fea4d2efadba011f1d5ac52484d`  
		Last Modified: Thu, 16 Mar 2017 18:42:55 GMT  
		Size: 895.4 KB (895445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b238328ea6ff5a36605276b0deefc48af707001964f9d8f9cabe6ee8e73e4d`  
		Last Modified: Thu, 16 Mar 2017 18:42:54 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8646f1c656ee7db1568f0c4e6350940f7d90c8be04333782c493c9fcaac421d5`  
		Last Modified: Thu, 16 Mar 2017 18:42:54 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4`

```console
$ docker pull memcached@sha256:4d7cdaae4341b3b209dca912fc14c4915b2142c6de51eac727e9669f141bbc44
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30423234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deb4e908c6ae9a163e297aea5e2096e6d4e7fcacd06dd8a778871985bd0edb2a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:56 GMT
ADD file:a8e568cac3297f08efca89dbac4ea579717ed203b1601807b67954cb6c466e73 in / 
# Mon, 27 Feb 2017 20:34:57 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 06:00:15 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 16 Mar 2017 18:41:42 GMT
ENV MEMCACHED_VERSION=1.4.35
# Thu, 16 Mar 2017 18:41:43 GMT
ENV MEMCACHED_SHA1=787991c0df75defbb91518c9796f8244852a018a
# Thu, 16 Mar 2017 18:42:11 GMT
RUN set -x 	&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 	&& memcached -V
# Thu, 16 Mar 2017 18:42:12 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 16 Mar 2017 18:42:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 16 Mar 2017 18:42:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Mar 2017 18:42:15 GMT
USER [memcache]
# Thu, 16 Mar 2017 18:42:15 GMT
EXPOSE 11211/tcp
# Thu, 16 Mar 2017 18:42:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:99506a317b930653ea3da10d5c2f472c2078c32e908e87ae7d7e9ada6e3ac7da`  
		Last Modified: Mon, 27 Feb 2017 20:41:48 GMT  
		Size: 29.5 MB (29525338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603d86382e144cf6b23e809bde7c48a8ed371dde924b2a9ece4d2579c24d65c8`  
		Last Modified: Thu, 02 Mar 2017 01:26:24 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78765fedc42346a8defb9e1b04b510d91b9a2fea4d2efadba011f1d5ac52484d`  
		Last Modified: Thu, 16 Mar 2017 18:42:55 GMT  
		Size: 895.4 KB (895445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b238328ea6ff5a36605276b0deefc48af707001964f9d8f9cabe6ee8e73e4d`  
		Last Modified: Thu, 16 Mar 2017 18:42:54 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8646f1c656ee7db1568f0c4e6350940f7d90c8be04333782c493c9fcaac421d5`  
		Last Modified: Thu, 16 Mar 2017 18:42:54 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1`

```console
$ docker pull memcached@sha256:4d7cdaae4341b3b209dca912fc14c4915b2142c6de51eac727e9669f141bbc44
```

-	Platforms:
	-	linux; amd64

### `memcached:1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30423234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deb4e908c6ae9a163e297aea5e2096e6d4e7fcacd06dd8a778871985bd0edb2a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:56 GMT
ADD file:a8e568cac3297f08efca89dbac4ea579717ed203b1601807b67954cb6c466e73 in / 
# Mon, 27 Feb 2017 20:34:57 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 06:00:15 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 16 Mar 2017 18:41:42 GMT
ENV MEMCACHED_VERSION=1.4.35
# Thu, 16 Mar 2017 18:41:43 GMT
ENV MEMCACHED_SHA1=787991c0df75defbb91518c9796f8244852a018a
# Thu, 16 Mar 2017 18:42:11 GMT
RUN set -x 	&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 	&& memcached -V
# Thu, 16 Mar 2017 18:42:12 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 16 Mar 2017 18:42:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 16 Mar 2017 18:42:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Mar 2017 18:42:15 GMT
USER [memcache]
# Thu, 16 Mar 2017 18:42:15 GMT
EXPOSE 11211/tcp
# Thu, 16 Mar 2017 18:42:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:99506a317b930653ea3da10d5c2f472c2078c32e908e87ae7d7e9ada6e3ac7da`  
		Last Modified: Mon, 27 Feb 2017 20:41:48 GMT  
		Size: 29.5 MB (29525338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603d86382e144cf6b23e809bde7c48a8ed371dde924b2a9ece4d2579c24d65c8`  
		Last Modified: Thu, 02 Mar 2017 01:26:24 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78765fedc42346a8defb9e1b04b510d91b9a2fea4d2efadba011f1d5ac52484d`  
		Last Modified: Thu, 16 Mar 2017 18:42:55 GMT  
		Size: 895.4 KB (895445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b238328ea6ff5a36605276b0deefc48af707001964f9d8f9cabe6ee8e73e4d`  
		Last Modified: Thu, 16 Mar 2017 18:42:54 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8646f1c656ee7db1568f0c4e6350940f7d90c8be04333782c493c9fcaac421d5`  
		Last Modified: Thu, 16 Mar 2017 18:42:54 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:4d7cdaae4341b3b209dca912fc14c4915b2142c6de51eac727e9669f141bbc44
```

-	Platforms:
	-	linux; amd64

### `memcached:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30423234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deb4e908c6ae9a163e297aea5e2096e6d4e7fcacd06dd8a778871985bd0edb2a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:56 GMT
ADD file:a8e568cac3297f08efca89dbac4ea579717ed203b1601807b67954cb6c466e73 in / 
# Mon, 27 Feb 2017 20:34:57 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 06:00:15 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 16 Mar 2017 18:41:42 GMT
ENV MEMCACHED_VERSION=1.4.35
# Thu, 16 Mar 2017 18:41:43 GMT
ENV MEMCACHED_SHA1=787991c0df75defbb91518c9796f8244852a018a
# Thu, 16 Mar 2017 18:42:11 GMT
RUN set -x 	&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 	&& memcached -V
# Thu, 16 Mar 2017 18:42:12 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 16 Mar 2017 18:42:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 16 Mar 2017 18:42:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Mar 2017 18:42:15 GMT
USER [memcache]
# Thu, 16 Mar 2017 18:42:15 GMT
EXPOSE 11211/tcp
# Thu, 16 Mar 2017 18:42:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:99506a317b930653ea3da10d5c2f472c2078c32e908e87ae7d7e9ada6e3ac7da`  
		Last Modified: Mon, 27 Feb 2017 20:41:48 GMT  
		Size: 29.5 MB (29525338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603d86382e144cf6b23e809bde7c48a8ed371dde924b2a9ece4d2579c24d65c8`  
		Last Modified: Thu, 02 Mar 2017 01:26:24 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78765fedc42346a8defb9e1b04b510d91b9a2fea4d2efadba011f1d5ac52484d`  
		Last Modified: Thu, 16 Mar 2017 18:42:55 GMT  
		Size: 895.4 KB (895445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b238328ea6ff5a36605276b0deefc48af707001964f9d8f9cabe6ee8e73e4d`  
		Last Modified: Thu, 16 Mar 2017 18:42:54 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8646f1c656ee7db1568f0c4e6350940f7d90c8be04333782c493c9fcaac421d5`  
		Last Modified: Thu, 16 Mar 2017 18:42:54 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4.35-alpine`

```console
$ docker pull memcached@sha256:8375ac57c41b927230f020c8072c5b85bd66f9e519bfbb46cfc666675f4a8805
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4.35-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3160401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcc86913f15b81f2b5b77b42cd6932febd0cd26d1bbb7fd97f481e6d344048b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 22:01:54 GMT
RUN adduser -D memcache
# Fri, 03 Mar 2017 22:01:54 GMT
ENV MEMCACHED_VERSION=1.4.35
# Fri, 03 Mar 2017 22:01:55 GMT
ENV MEMCACHED_SHA1=787991c0df75defbb91518c9796f8244852a018a
# Thu, 16 Mar 2017 18:42:29 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 	&& memcached -V
# Thu, 16 Mar 2017 18:42:30 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 16 Mar 2017 18:42:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 16 Mar 2017 18:42:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Mar 2017 18:42:32 GMT
USER [memcache]
# Thu, 16 Mar 2017 18:42:33 GMT
EXPOSE 11211/tcp
# Thu, 16 Mar 2017 18:42:33 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efdf8df4f503c8265247ce8cff0332d7f2994174fa464f3df4004d71d0b1c05`  
		Last Modified: Sat, 04 Mar 2017 05:12:42 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dcfe36d593fbcc4bc5f16ad139d68bb05c63ad04df244980cdd3eaf26161d00`  
		Last Modified: Thu, 16 Mar 2017 18:44:12 GMT  
		Size: 1.3 MB (1253491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8dd66d0cb13df72318dc1337c63b3a28435b4a0242f83e18571dbf91fcb43d7`  
		Last Modified: Thu, 16 Mar 2017 18:44:12 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c2f9221e106db3267335fef5233e84e0e48da422d9b1cee5b3ef3c1af1415d6`  
		Last Modified: Thu, 16 Mar 2017 18:44:11 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4-alpine`

```console
$ docker pull memcached@sha256:8375ac57c41b927230f020c8072c5b85bd66f9e519bfbb46cfc666675f4a8805
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3160401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcc86913f15b81f2b5b77b42cd6932febd0cd26d1bbb7fd97f481e6d344048b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 22:01:54 GMT
RUN adduser -D memcache
# Fri, 03 Mar 2017 22:01:54 GMT
ENV MEMCACHED_VERSION=1.4.35
# Fri, 03 Mar 2017 22:01:55 GMT
ENV MEMCACHED_SHA1=787991c0df75defbb91518c9796f8244852a018a
# Thu, 16 Mar 2017 18:42:29 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 	&& memcached -V
# Thu, 16 Mar 2017 18:42:30 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 16 Mar 2017 18:42:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 16 Mar 2017 18:42:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Mar 2017 18:42:32 GMT
USER [memcache]
# Thu, 16 Mar 2017 18:42:33 GMT
EXPOSE 11211/tcp
# Thu, 16 Mar 2017 18:42:33 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efdf8df4f503c8265247ce8cff0332d7f2994174fa464f3df4004d71d0b1c05`  
		Last Modified: Sat, 04 Mar 2017 05:12:42 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dcfe36d593fbcc4bc5f16ad139d68bb05c63ad04df244980cdd3eaf26161d00`  
		Last Modified: Thu, 16 Mar 2017 18:44:12 GMT  
		Size: 1.3 MB (1253491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8dd66d0cb13df72318dc1337c63b3a28435b4a0242f83e18571dbf91fcb43d7`  
		Last Modified: Thu, 16 Mar 2017 18:44:12 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c2f9221e106db3267335fef5233e84e0e48da422d9b1cee5b3ef3c1af1415d6`  
		Last Modified: Thu, 16 Mar 2017 18:44:11 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:8375ac57c41b927230f020c8072c5b85bd66f9e519bfbb46cfc666675f4a8805
```

-	Platforms:
	-	linux; amd64

### `memcached:1-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3160401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcc86913f15b81f2b5b77b42cd6932febd0cd26d1bbb7fd97f481e6d344048b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 22:01:54 GMT
RUN adduser -D memcache
# Fri, 03 Mar 2017 22:01:54 GMT
ENV MEMCACHED_VERSION=1.4.35
# Fri, 03 Mar 2017 22:01:55 GMT
ENV MEMCACHED_SHA1=787991c0df75defbb91518c9796f8244852a018a
# Thu, 16 Mar 2017 18:42:29 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 	&& memcached -V
# Thu, 16 Mar 2017 18:42:30 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 16 Mar 2017 18:42:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 16 Mar 2017 18:42:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Mar 2017 18:42:32 GMT
USER [memcache]
# Thu, 16 Mar 2017 18:42:33 GMT
EXPOSE 11211/tcp
# Thu, 16 Mar 2017 18:42:33 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efdf8df4f503c8265247ce8cff0332d7f2994174fa464f3df4004d71d0b1c05`  
		Last Modified: Sat, 04 Mar 2017 05:12:42 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dcfe36d593fbcc4bc5f16ad139d68bb05c63ad04df244980cdd3eaf26161d00`  
		Last Modified: Thu, 16 Mar 2017 18:44:12 GMT  
		Size: 1.3 MB (1253491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8dd66d0cb13df72318dc1337c63b3a28435b4a0242f83e18571dbf91fcb43d7`  
		Last Modified: Thu, 16 Mar 2017 18:44:12 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c2f9221e106db3267335fef5233e84e0e48da422d9b1cee5b3ef3c1af1415d6`  
		Last Modified: Thu, 16 Mar 2017 18:44:11 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:8375ac57c41b927230f020c8072c5b85bd66f9e519bfbb46cfc666675f4a8805
```

-	Platforms:
	-	linux; amd64

### `memcached:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3160401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcc86913f15b81f2b5b77b42cd6932febd0cd26d1bbb7fd97f481e6d344048b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 22:01:54 GMT
RUN adduser -D memcache
# Fri, 03 Mar 2017 22:01:54 GMT
ENV MEMCACHED_VERSION=1.4.35
# Fri, 03 Mar 2017 22:01:55 GMT
ENV MEMCACHED_SHA1=787991c0df75defbb91518c9796f8244852a018a
# Thu, 16 Mar 2017 18:42:29 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 	&& memcached -V
# Thu, 16 Mar 2017 18:42:30 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 16 Mar 2017 18:42:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 16 Mar 2017 18:42:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Mar 2017 18:42:32 GMT
USER [memcache]
# Thu, 16 Mar 2017 18:42:33 GMT
EXPOSE 11211/tcp
# Thu, 16 Mar 2017 18:42:33 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efdf8df4f503c8265247ce8cff0332d7f2994174fa464f3df4004d71d0b1c05`  
		Last Modified: Sat, 04 Mar 2017 05:12:42 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dcfe36d593fbcc4bc5f16ad139d68bb05c63ad04df244980cdd3eaf26161d00`  
		Last Modified: Thu, 16 Mar 2017 18:44:12 GMT  
		Size: 1.3 MB (1253491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8dd66d0cb13df72318dc1337c63b3a28435b4a0242f83e18571dbf91fcb43d7`  
		Last Modified: Thu, 16 Mar 2017 18:44:12 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c2f9221e106db3267335fef5233e84e0e48da422d9b1cee5b3ef3c1af1415d6`  
		Last Modified: Thu, 16 Mar 2017 18:44:11 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
