<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `memcached`

-	[`memcached:1.4.31`](#memcached1431)
-	[`memcached:1.4`](#memcached14)
-	[`memcached:1`](#memcached1)
-	[`memcached:latest`](#memcachedlatest)
-	[`memcached:1.4.31-alpine`](#memcached1431-alpine)
-	[`memcached:1.4-alpine`](#memcached14-alpine)
-	[`memcached:1-alpine`](#memcached1-alpine)
-	[`memcached:alpine`](#memcachedalpine)

## `memcached:1.4.31`

```console
$ docker pull memcached@sha256:af87a8685eb8ccb1eece267aa493aed99c57424c0065f0b0ad452a199ac72a0f
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4.31` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52240945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:228303902e2e554706db14b23e9dca696069b739fa90c1725055b5826f4d5c7c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 23:25:48 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 30 Aug 2016 23:25:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:25:54 GMT
ENV MEMCACHED_VERSION=1.4.31
# Tue, 30 Aug 2016 23:25:55 GMT
ENV MEMCACHED_SHA1=3ea34f5bc5c5aacb76cfc07f4ee5847f33526cb6
# Tue, 30 Aug 2016 23:26:40 GMT
RUN buildDeps=' 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(nproc) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 30 Aug 2016 23:26:41 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 30 Aug 2016 23:26:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Aug 2016 23:26:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:26:42 GMT
USER [memcache]
# Tue, 30 Aug 2016 23:26:42 GMT
EXPOSE 11211/tcp
# Tue, 30 Aug 2016 23:26:43 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759f5a5bd3fec4e3c748ea542d826cb06595c2ded936ffd9509a3c0d402a21bf`  
		Last Modified: Thu, 08 Sep 2016 17:43:40 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1b98fb6540a665f408497d6a9fe224064b8e116656710afa044b68eaf9051d`  
		Last Modified: Thu, 08 Sep 2016 17:43:42 GMT  
		Size: 237.9 KB (237920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:072af82adcb433827ce13d21f81985533881c3f6857a2a7af364c37040bad05c`  
		Last Modified: Thu, 08 Sep 2016 17:43:41 GMT  
		Size: 633.3 KB (633311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb1199a60df6bd9c695939c3a5d0ee6d3747382fce8ccab0a3efff406b427fc`  
		Last Modified: Thu, 08 Sep 2016 17:43:41 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbfd7995ff45a7d6d839d2953416f702a79253b07e1cab59c35b7a2efea9b042`  
		Last Modified: Thu, 08 Sep 2016 17:43:40 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4`

```console
$ docker pull memcached@sha256:af87a8685eb8ccb1eece267aa493aed99c57424c0065f0b0ad452a199ac72a0f
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52240945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:228303902e2e554706db14b23e9dca696069b739fa90c1725055b5826f4d5c7c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 23:25:48 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 30 Aug 2016 23:25:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:25:54 GMT
ENV MEMCACHED_VERSION=1.4.31
# Tue, 30 Aug 2016 23:25:55 GMT
ENV MEMCACHED_SHA1=3ea34f5bc5c5aacb76cfc07f4ee5847f33526cb6
# Tue, 30 Aug 2016 23:26:40 GMT
RUN buildDeps=' 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(nproc) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 30 Aug 2016 23:26:41 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 30 Aug 2016 23:26:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Aug 2016 23:26:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:26:42 GMT
USER [memcache]
# Tue, 30 Aug 2016 23:26:42 GMT
EXPOSE 11211/tcp
# Tue, 30 Aug 2016 23:26:43 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759f5a5bd3fec4e3c748ea542d826cb06595c2ded936ffd9509a3c0d402a21bf`  
		Last Modified: Thu, 08 Sep 2016 17:43:40 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1b98fb6540a665f408497d6a9fe224064b8e116656710afa044b68eaf9051d`  
		Last Modified: Thu, 08 Sep 2016 17:43:42 GMT  
		Size: 237.9 KB (237920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:072af82adcb433827ce13d21f81985533881c3f6857a2a7af364c37040bad05c`  
		Last Modified: Thu, 08 Sep 2016 17:43:41 GMT  
		Size: 633.3 KB (633311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb1199a60df6bd9c695939c3a5d0ee6d3747382fce8ccab0a3efff406b427fc`  
		Last Modified: Thu, 08 Sep 2016 17:43:41 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbfd7995ff45a7d6d839d2953416f702a79253b07e1cab59c35b7a2efea9b042`  
		Last Modified: Thu, 08 Sep 2016 17:43:40 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1`

```console
$ docker pull memcached@sha256:af87a8685eb8ccb1eece267aa493aed99c57424c0065f0b0ad452a199ac72a0f
```

-	Platforms:
	-	linux; amd64

### `memcached:1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52240945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:228303902e2e554706db14b23e9dca696069b739fa90c1725055b5826f4d5c7c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 23:25:48 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 30 Aug 2016 23:25:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:25:54 GMT
ENV MEMCACHED_VERSION=1.4.31
# Tue, 30 Aug 2016 23:25:55 GMT
ENV MEMCACHED_SHA1=3ea34f5bc5c5aacb76cfc07f4ee5847f33526cb6
# Tue, 30 Aug 2016 23:26:40 GMT
RUN buildDeps=' 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(nproc) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 30 Aug 2016 23:26:41 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 30 Aug 2016 23:26:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Aug 2016 23:26:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:26:42 GMT
USER [memcache]
# Tue, 30 Aug 2016 23:26:42 GMT
EXPOSE 11211/tcp
# Tue, 30 Aug 2016 23:26:43 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759f5a5bd3fec4e3c748ea542d826cb06595c2ded936ffd9509a3c0d402a21bf`  
		Last Modified: Thu, 08 Sep 2016 17:43:40 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1b98fb6540a665f408497d6a9fe224064b8e116656710afa044b68eaf9051d`  
		Last Modified: Thu, 08 Sep 2016 17:43:42 GMT  
		Size: 237.9 KB (237920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:072af82adcb433827ce13d21f81985533881c3f6857a2a7af364c37040bad05c`  
		Last Modified: Thu, 08 Sep 2016 17:43:41 GMT  
		Size: 633.3 KB (633311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb1199a60df6bd9c695939c3a5d0ee6d3747382fce8ccab0a3efff406b427fc`  
		Last Modified: Thu, 08 Sep 2016 17:43:41 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbfd7995ff45a7d6d839d2953416f702a79253b07e1cab59c35b7a2efea9b042`  
		Last Modified: Thu, 08 Sep 2016 17:43:40 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:af87a8685eb8ccb1eece267aa493aed99c57424c0065f0b0ad452a199ac72a0f
```

-	Platforms:
	-	linux; amd64

### `memcached:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52240945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:228303902e2e554706db14b23e9dca696069b739fa90c1725055b5826f4d5c7c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 23:25:48 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 30 Aug 2016 23:25:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:25:54 GMT
ENV MEMCACHED_VERSION=1.4.31
# Tue, 30 Aug 2016 23:25:55 GMT
ENV MEMCACHED_SHA1=3ea34f5bc5c5aacb76cfc07f4ee5847f33526cb6
# Tue, 30 Aug 2016 23:26:40 GMT
RUN buildDeps=' 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(nproc) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 30 Aug 2016 23:26:41 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 30 Aug 2016 23:26:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Aug 2016 23:26:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:26:42 GMT
USER [memcache]
# Tue, 30 Aug 2016 23:26:42 GMT
EXPOSE 11211/tcp
# Tue, 30 Aug 2016 23:26:43 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759f5a5bd3fec4e3c748ea542d826cb06595c2ded936ffd9509a3c0d402a21bf`  
		Last Modified: Thu, 08 Sep 2016 17:43:40 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1b98fb6540a665f408497d6a9fe224064b8e116656710afa044b68eaf9051d`  
		Last Modified: Thu, 08 Sep 2016 17:43:42 GMT  
		Size: 237.9 KB (237920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:072af82adcb433827ce13d21f81985533881c3f6857a2a7af364c37040bad05c`  
		Last Modified: Thu, 08 Sep 2016 17:43:41 GMT  
		Size: 633.3 KB (633311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb1199a60df6bd9c695939c3a5d0ee6d3747382fce8ccab0a3efff406b427fc`  
		Last Modified: Thu, 08 Sep 2016 17:43:41 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbfd7995ff45a7d6d839d2953416f702a79253b07e1cab59c35b7a2efea9b042`  
		Last Modified: Thu, 08 Sep 2016 17:43:40 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4.31-alpine`

```console
$ docker pull memcached@sha256:afddeaeb99c1aa9a3b3d051091bbfbc08cf971289ed7cc378a7b75a557bf08d4
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4.31-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3141467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ee2f5d7a042617ff334bed6625e5a95fc2c59ccff750f652bf82c14b34eab24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 00:42:35 GMT
RUN adduser -D memcache
# Tue, 30 Aug 2016 00:42:35 GMT
ENV MEMCACHED_VERSION=1.4.31
# Tue, 30 Aug 2016 00:42:35 GMT
ENV MEMCACHED_SHA1=3ea34f5bc5c5aacb76cfc07f4ee5847f33526cb6
# Tue, 30 Aug 2016 00:42:46 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Tue, 30 Aug 2016 00:42:46 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 30 Aug 2016 00:42:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Aug 2016 00:42:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 00:42:48 GMT
USER [memcache]
# Tue, 30 Aug 2016 00:42:48 GMT
EXPOSE 11211/tcp
# Tue, 30 Aug 2016 00:42:48 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2485f86c740710ca79e839f25e2af6c0d4bccdc7dee93e57cde95933ff796f5`  
		Last Modified: Thu, 08 Sep 2016 17:44:21 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559642d9cfdc45880a8984d0411eb6ea34cf4f31a7b295d09369f450996354b9`  
		Last Modified: Thu, 08 Sep 2016 17:44:21 GMT  
		Size: 829.5 KB (829520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237fe17da252350169d326dcb86291ef30d3ec7cdebe3dd81257de70fbccc65a`  
		Last Modified: Thu, 08 Sep 2016 17:44:19 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01dcdf2ef97034c562255ec5764751f390228de6c9e511c0e6f5a50d8ec9e2ac`  
		Last Modified: Thu, 08 Sep 2016 17:44:18 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4-alpine`

```console
$ docker pull memcached@sha256:afddeaeb99c1aa9a3b3d051091bbfbc08cf971289ed7cc378a7b75a557bf08d4
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3141467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ee2f5d7a042617ff334bed6625e5a95fc2c59ccff750f652bf82c14b34eab24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 00:42:35 GMT
RUN adduser -D memcache
# Tue, 30 Aug 2016 00:42:35 GMT
ENV MEMCACHED_VERSION=1.4.31
# Tue, 30 Aug 2016 00:42:35 GMT
ENV MEMCACHED_SHA1=3ea34f5bc5c5aacb76cfc07f4ee5847f33526cb6
# Tue, 30 Aug 2016 00:42:46 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Tue, 30 Aug 2016 00:42:46 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 30 Aug 2016 00:42:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Aug 2016 00:42:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 00:42:48 GMT
USER [memcache]
# Tue, 30 Aug 2016 00:42:48 GMT
EXPOSE 11211/tcp
# Tue, 30 Aug 2016 00:42:48 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2485f86c740710ca79e839f25e2af6c0d4bccdc7dee93e57cde95933ff796f5`  
		Last Modified: Thu, 08 Sep 2016 17:44:21 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559642d9cfdc45880a8984d0411eb6ea34cf4f31a7b295d09369f450996354b9`  
		Last Modified: Thu, 08 Sep 2016 17:44:21 GMT  
		Size: 829.5 KB (829520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237fe17da252350169d326dcb86291ef30d3ec7cdebe3dd81257de70fbccc65a`  
		Last Modified: Thu, 08 Sep 2016 17:44:19 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01dcdf2ef97034c562255ec5764751f390228de6c9e511c0e6f5a50d8ec9e2ac`  
		Last Modified: Thu, 08 Sep 2016 17:44:18 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:afddeaeb99c1aa9a3b3d051091bbfbc08cf971289ed7cc378a7b75a557bf08d4
```

-	Platforms:
	-	linux; amd64

### `memcached:1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3141467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ee2f5d7a042617ff334bed6625e5a95fc2c59ccff750f652bf82c14b34eab24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 00:42:35 GMT
RUN adduser -D memcache
# Tue, 30 Aug 2016 00:42:35 GMT
ENV MEMCACHED_VERSION=1.4.31
# Tue, 30 Aug 2016 00:42:35 GMT
ENV MEMCACHED_SHA1=3ea34f5bc5c5aacb76cfc07f4ee5847f33526cb6
# Tue, 30 Aug 2016 00:42:46 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Tue, 30 Aug 2016 00:42:46 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 30 Aug 2016 00:42:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Aug 2016 00:42:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 00:42:48 GMT
USER [memcache]
# Tue, 30 Aug 2016 00:42:48 GMT
EXPOSE 11211/tcp
# Tue, 30 Aug 2016 00:42:48 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2485f86c740710ca79e839f25e2af6c0d4bccdc7dee93e57cde95933ff796f5`  
		Last Modified: Thu, 08 Sep 2016 17:44:21 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559642d9cfdc45880a8984d0411eb6ea34cf4f31a7b295d09369f450996354b9`  
		Last Modified: Thu, 08 Sep 2016 17:44:21 GMT  
		Size: 829.5 KB (829520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237fe17da252350169d326dcb86291ef30d3ec7cdebe3dd81257de70fbccc65a`  
		Last Modified: Thu, 08 Sep 2016 17:44:19 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01dcdf2ef97034c562255ec5764751f390228de6c9e511c0e6f5a50d8ec9e2ac`  
		Last Modified: Thu, 08 Sep 2016 17:44:18 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:afddeaeb99c1aa9a3b3d051091bbfbc08cf971289ed7cc378a7b75a557bf08d4
```

-	Platforms:
	-	linux; amd64

### `memcached:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3141467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ee2f5d7a042617ff334bed6625e5a95fc2c59ccff750f652bf82c14b34eab24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 00:42:35 GMT
RUN adduser -D memcache
# Tue, 30 Aug 2016 00:42:35 GMT
ENV MEMCACHED_VERSION=1.4.31
# Tue, 30 Aug 2016 00:42:35 GMT
ENV MEMCACHED_SHA1=3ea34f5bc5c5aacb76cfc07f4ee5847f33526cb6
# Tue, 30 Aug 2016 00:42:46 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Tue, 30 Aug 2016 00:42:46 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 30 Aug 2016 00:42:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Aug 2016 00:42:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 00:42:48 GMT
USER [memcache]
# Tue, 30 Aug 2016 00:42:48 GMT
EXPOSE 11211/tcp
# Tue, 30 Aug 2016 00:42:48 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2485f86c740710ca79e839f25e2af6c0d4bccdc7dee93e57cde95933ff796f5`  
		Last Modified: Thu, 08 Sep 2016 17:44:21 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559642d9cfdc45880a8984d0411eb6ea34cf4f31a7b295d09369f450996354b9`  
		Last Modified: Thu, 08 Sep 2016 17:44:21 GMT  
		Size: 829.5 KB (829520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237fe17da252350169d326dcb86291ef30d3ec7cdebe3dd81257de70fbccc65a`  
		Last Modified: Thu, 08 Sep 2016 17:44:19 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01dcdf2ef97034c562255ec5764751f390228de6c9e511c0e6f5a50d8ec9e2ac`  
		Last Modified: Thu, 08 Sep 2016 17:44:18 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
