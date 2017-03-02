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
$ docker pull memcached@sha256:5f6efd79264cd5ed52bd86657625ee6314213803928c75a326d2e0c6b69ab028
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4.35` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30419640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83bc4297d84d9699d084370ac61ca93ee5520477ac5aa65989dc84f7f7628c3b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:56 GMT
ADD file:a8e568cac3297f08efca89dbac4ea579717ed203b1601807b67954cb6c466e73 in / 
# Mon, 27 Feb 2017 20:34:57 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 06:00:15 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 28 Feb 2017 06:00:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 06:00:41 GMT
ENV MEMCACHED_VERSION=1.4.35
# Tue, 28 Feb 2017 06:00:42 GMT
ENV MEMCACHED_SHA1=787991c0df75defbb91518c9796f8244852a018a
# Tue, 28 Feb 2017 06:01:57 GMT
RUN set -x 	&& buildDeps=' 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure --build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 28 Feb 2017 06:01:57 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 28 Feb 2017 06:01:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 28 Feb 2017 06:02:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 06:02:24 GMT
USER [memcache]
# Tue, 28 Feb 2017 06:02:25 GMT
EXPOSE 11211/tcp
# Tue, 28 Feb 2017 06:02:38 GMT
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
	-	`sha256:11eea8994563043c90a68e7317b20d934bd90565c29534691319126c06c63a3f`  
		Last Modified: Thu, 02 Mar 2017 01:26:23 GMT  
		Size: 199.1 KB (199092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdd86a4ca6e4e6fd7a9128c8a86204a8a1b71bc0ae2368bedd57946c82ab5cb1`  
		Last Modified: Thu, 02 Mar 2017 01:26:23 GMT  
		Size: 692.8 KB (692757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b4852da6cae43c2b47f2ada138f84395b78a2002db345250de18a9ef6abc3e`  
		Last Modified: Thu, 02 Mar 2017 01:26:24 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:381b018000b3518658cab7a1d5f0418e32079b36c42b5d5714b28d2dad85fc88`  
		Last Modified: Thu, 02 Mar 2017 01:26:23 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4`

```console
$ docker pull memcached@sha256:5f6efd79264cd5ed52bd86657625ee6314213803928c75a326d2e0c6b69ab028
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30419640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83bc4297d84d9699d084370ac61ca93ee5520477ac5aa65989dc84f7f7628c3b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:56 GMT
ADD file:a8e568cac3297f08efca89dbac4ea579717ed203b1601807b67954cb6c466e73 in / 
# Mon, 27 Feb 2017 20:34:57 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 06:00:15 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 28 Feb 2017 06:00:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 06:00:41 GMT
ENV MEMCACHED_VERSION=1.4.35
# Tue, 28 Feb 2017 06:00:42 GMT
ENV MEMCACHED_SHA1=787991c0df75defbb91518c9796f8244852a018a
# Tue, 28 Feb 2017 06:01:57 GMT
RUN set -x 	&& buildDeps=' 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure --build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 28 Feb 2017 06:01:57 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 28 Feb 2017 06:01:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 28 Feb 2017 06:02:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 06:02:24 GMT
USER [memcache]
# Tue, 28 Feb 2017 06:02:25 GMT
EXPOSE 11211/tcp
# Tue, 28 Feb 2017 06:02:38 GMT
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
	-	`sha256:11eea8994563043c90a68e7317b20d934bd90565c29534691319126c06c63a3f`  
		Last Modified: Thu, 02 Mar 2017 01:26:23 GMT  
		Size: 199.1 KB (199092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdd86a4ca6e4e6fd7a9128c8a86204a8a1b71bc0ae2368bedd57946c82ab5cb1`  
		Last Modified: Thu, 02 Mar 2017 01:26:23 GMT  
		Size: 692.8 KB (692757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b4852da6cae43c2b47f2ada138f84395b78a2002db345250de18a9ef6abc3e`  
		Last Modified: Thu, 02 Mar 2017 01:26:24 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:381b018000b3518658cab7a1d5f0418e32079b36c42b5d5714b28d2dad85fc88`  
		Last Modified: Thu, 02 Mar 2017 01:26:23 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1`

```console
$ docker pull memcached@sha256:5f6efd79264cd5ed52bd86657625ee6314213803928c75a326d2e0c6b69ab028
```

-	Platforms:
	-	linux; amd64

### `memcached:1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30419640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83bc4297d84d9699d084370ac61ca93ee5520477ac5aa65989dc84f7f7628c3b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:56 GMT
ADD file:a8e568cac3297f08efca89dbac4ea579717ed203b1601807b67954cb6c466e73 in / 
# Mon, 27 Feb 2017 20:34:57 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 06:00:15 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 28 Feb 2017 06:00:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 06:00:41 GMT
ENV MEMCACHED_VERSION=1.4.35
# Tue, 28 Feb 2017 06:00:42 GMT
ENV MEMCACHED_SHA1=787991c0df75defbb91518c9796f8244852a018a
# Tue, 28 Feb 2017 06:01:57 GMT
RUN set -x 	&& buildDeps=' 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure --build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 28 Feb 2017 06:01:57 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 28 Feb 2017 06:01:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 28 Feb 2017 06:02:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 06:02:24 GMT
USER [memcache]
# Tue, 28 Feb 2017 06:02:25 GMT
EXPOSE 11211/tcp
# Tue, 28 Feb 2017 06:02:38 GMT
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
	-	`sha256:11eea8994563043c90a68e7317b20d934bd90565c29534691319126c06c63a3f`  
		Last Modified: Thu, 02 Mar 2017 01:26:23 GMT  
		Size: 199.1 KB (199092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdd86a4ca6e4e6fd7a9128c8a86204a8a1b71bc0ae2368bedd57946c82ab5cb1`  
		Last Modified: Thu, 02 Mar 2017 01:26:23 GMT  
		Size: 692.8 KB (692757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b4852da6cae43c2b47f2ada138f84395b78a2002db345250de18a9ef6abc3e`  
		Last Modified: Thu, 02 Mar 2017 01:26:24 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:381b018000b3518658cab7a1d5f0418e32079b36c42b5d5714b28d2dad85fc88`  
		Last Modified: Thu, 02 Mar 2017 01:26:23 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:5f6efd79264cd5ed52bd86657625ee6314213803928c75a326d2e0c6b69ab028
```

-	Platforms:
	-	linux; amd64

### `memcached:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30419640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83bc4297d84d9699d084370ac61ca93ee5520477ac5aa65989dc84f7f7628c3b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:56 GMT
ADD file:a8e568cac3297f08efca89dbac4ea579717ed203b1601807b67954cb6c466e73 in / 
# Mon, 27 Feb 2017 20:34:57 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 06:00:15 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 28 Feb 2017 06:00:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 06:00:41 GMT
ENV MEMCACHED_VERSION=1.4.35
# Tue, 28 Feb 2017 06:00:42 GMT
ENV MEMCACHED_SHA1=787991c0df75defbb91518c9796f8244852a018a
# Tue, 28 Feb 2017 06:01:57 GMT
RUN set -x 	&& buildDeps=' 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure --build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 28 Feb 2017 06:01:57 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 28 Feb 2017 06:01:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 28 Feb 2017 06:02:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 06:02:24 GMT
USER [memcache]
# Tue, 28 Feb 2017 06:02:25 GMT
EXPOSE 11211/tcp
# Tue, 28 Feb 2017 06:02:38 GMT
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
	-	`sha256:11eea8994563043c90a68e7317b20d934bd90565c29534691319126c06c63a3f`  
		Last Modified: Thu, 02 Mar 2017 01:26:23 GMT  
		Size: 199.1 KB (199092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdd86a4ca6e4e6fd7a9128c8a86204a8a1b71bc0ae2368bedd57946c82ab5cb1`  
		Last Modified: Thu, 02 Mar 2017 01:26:23 GMT  
		Size: 692.8 KB (692757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b4852da6cae43c2b47f2ada138f84395b78a2002db345250de18a9ef6abc3e`  
		Last Modified: Thu, 02 Mar 2017 01:26:24 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:381b018000b3518658cab7a1d5f0418e32079b36c42b5d5714b28d2dad85fc88`  
		Last Modified: Thu, 02 Mar 2017 01:26:23 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4.35-alpine`

```console
$ docker pull memcached@sha256:806b26142ebaf2198b21669d5875e11a850f7b611ba7c9ffbfe3650b331370ad
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4.35-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2767517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca8c243d99ccad3b99dad20d7560b931284eb9bd2433a17ad1bc0cb66b44636`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:11:39 GMT
RUN adduser -D memcache
# Mon, 27 Feb 2017 17:56:16 GMT
ENV MEMCACHED_VERSION=1.4.35
# Mon, 27 Feb 2017 17:56:17 GMT
ENV MEMCACHED_SHA1=787991c0df75defbb91518c9796f8244852a018a
# Mon, 27 Feb 2017 17:56:28 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure --build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Mon, 27 Feb 2017 17:56:28 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 27 Feb 2017 17:56:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 27 Feb 2017 17:56:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:56:30 GMT
USER [memcache]
# Mon, 27 Feb 2017 17:56:30 GMT
EXPOSE 11211/tcp
# Mon, 27 Feb 2017 17:56:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57076bf87737c2f448e75324ceba121b3b90372ab913f604f928a40da4ebddc7`  
		Last Modified: Thu, 05 Jan 2017 00:08:35 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1cfcfdcd7ba037a15c01b339f112025c01078cc0ed0ec8fca6accf1883372d`  
		Last Modified: Mon, 27 Feb 2017 17:58:00 GMT  
		Size: 863.8 KB (863814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dceb66a4433680bf96409773028790faafbca5454a1a76bab1408f1be90a671`  
		Last Modified: Mon, 27 Feb 2017 17:58:00 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd069cc2830cd64e08ef145ccc96197deb363dda50c0d01c4b2f1e8c6107f3e`  
		Last Modified: Mon, 27 Feb 2017 17:57:59 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4-alpine`

```console
$ docker pull memcached@sha256:806b26142ebaf2198b21669d5875e11a850f7b611ba7c9ffbfe3650b331370ad
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2767517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca8c243d99ccad3b99dad20d7560b931284eb9bd2433a17ad1bc0cb66b44636`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:11:39 GMT
RUN adduser -D memcache
# Mon, 27 Feb 2017 17:56:16 GMT
ENV MEMCACHED_VERSION=1.4.35
# Mon, 27 Feb 2017 17:56:17 GMT
ENV MEMCACHED_SHA1=787991c0df75defbb91518c9796f8244852a018a
# Mon, 27 Feb 2017 17:56:28 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure --build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Mon, 27 Feb 2017 17:56:28 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 27 Feb 2017 17:56:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 27 Feb 2017 17:56:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:56:30 GMT
USER [memcache]
# Mon, 27 Feb 2017 17:56:30 GMT
EXPOSE 11211/tcp
# Mon, 27 Feb 2017 17:56:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57076bf87737c2f448e75324ceba121b3b90372ab913f604f928a40da4ebddc7`  
		Last Modified: Thu, 05 Jan 2017 00:08:35 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1cfcfdcd7ba037a15c01b339f112025c01078cc0ed0ec8fca6accf1883372d`  
		Last Modified: Mon, 27 Feb 2017 17:58:00 GMT  
		Size: 863.8 KB (863814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dceb66a4433680bf96409773028790faafbca5454a1a76bab1408f1be90a671`  
		Last Modified: Mon, 27 Feb 2017 17:58:00 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd069cc2830cd64e08ef145ccc96197deb363dda50c0d01c4b2f1e8c6107f3e`  
		Last Modified: Mon, 27 Feb 2017 17:57:59 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:806b26142ebaf2198b21669d5875e11a850f7b611ba7c9ffbfe3650b331370ad
```

-	Platforms:
	-	linux; amd64

### `memcached:1-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2767517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca8c243d99ccad3b99dad20d7560b931284eb9bd2433a17ad1bc0cb66b44636`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:11:39 GMT
RUN adduser -D memcache
# Mon, 27 Feb 2017 17:56:16 GMT
ENV MEMCACHED_VERSION=1.4.35
# Mon, 27 Feb 2017 17:56:17 GMT
ENV MEMCACHED_SHA1=787991c0df75defbb91518c9796f8244852a018a
# Mon, 27 Feb 2017 17:56:28 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure --build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Mon, 27 Feb 2017 17:56:28 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 27 Feb 2017 17:56:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 27 Feb 2017 17:56:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:56:30 GMT
USER [memcache]
# Mon, 27 Feb 2017 17:56:30 GMT
EXPOSE 11211/tcp
# Mon, 27 Feb 2017 17:56:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57076bf87737c2f448e75324ceba121b3b90372ab913f604f928a40da4ebddc7`  
		Last Modified: Thu, 05 Jan 2017 00:08:35 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1cfcfdcd7ba037a15c01b339f112025c01078cc0ed0ec8fca6accf1883372d`  
		Last Modified: Mon, 27 Feb 2017 17:58:00 GMT  
		Size: 863.8 KB (863814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dceb66a4433680bf96409773028790faafbca5454a1a76bab1408f1be90a671`  
		Last Modified: Mon, 27 Feb 2017 17:58:00 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd069cc2830cd64e08ef145ccc96197deb363dda50c0d01c4b2f1e8c6107f3e`  
		Last Modified: Mon, 27 Feb 2017 17:57:59 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:806b26142ebaf2198b21669d5875e11a850f7b611ba7c9ffbfe3650b331370ad
```

-	Platforms:
	-	linux; amd64

### `memcached:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2767517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca8c243d99ccad3b99dad20d7560b931284eb9bd2433a17ad1bc0cb66b44636`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:11:39 GMT
RUN adduser -D memcache
# Mon, 27 Feb 2017 17:56:16 GMT
ENV MEMCACHED_VERSION=1.4.35
# Mon, 27 Feb 2017 17:56:17 GMT
ENV MEMCACHED_SHA1=787991c0df75defbb91518c9796f8244852a018a
# Mon, 27 Feb 2017 17:56:28 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure --build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Mon, 27 Feb 2017 17:56:28 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 27 Feb 2017 17:56:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 27 Feb 2017 17:56:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:56:30 GMT
USER [memcache]
# Mon, 27 Feb 2017 17:56:30 GMT
EXPOSE 11211/tcp
# Mon, 27 Feb 2017 17:56:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57076bf87737c2f448e75324ceba121b3b90372ab913f604f928a40da4ebddc7`  
		Last Modified: Thu, 05 Jan 2017 00:08:35 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1cfcfdcd7ba037a15c01b339f112025c01078cc0ed0ec8fca6accf1883372d`  
		Last Modified: Mon, 27 Feb 2017 17:58:00 GMT  
		Size: 863.8 KB (863814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dceb66a4433680bf96409773028790faafbca5454a1a76bab1408f1be90a671`  
		Last Modified: Mon, 27 Feb 2017 17:58:00 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd069cc2830cd64e08ef145ccc96197deb363dda50c0d01c4b2f1e8c6107f3e`  
		Last Modified: Mon, 27 Feb 2017 17:57:59 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
