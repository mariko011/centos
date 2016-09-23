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
$ docker pull memcached@sha256:9282e7ebe76a5567a1bb89653f42f69b2129ca90f03196628aa872222540618e
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4.31-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2765034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0d4b9d95193c35f7ec0a65ea536491f9e770ad8de382613ed133db655b16a45`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:09:30 GMT
RUN adduser -D memcache
# Fri, 23 Sep 2016 17:09:30 GMT
ENV MEMCACHED_VERSION=1.4.31
# Fri, 23 Sep 2016 17:09:31 GMT
ENV MEMCACHED_SHA1=3ea34f5bc5c5aacb76cfc07f4ee5847f33526cb6
# Fri, 23 Sep 2016 17:09:40 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Fri, 23 Sep 2016 17:09:41 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 23 Sep 2016 17:09:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 23 Sep 2016 17:09:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 17:09:43 GMT
USER [memcache]
# Fri, 23 Sep 2016 17:09:43 GMT
EXPOSE 11211/tcp
# Fri, 23 Sep 2016 17:09:43 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5dc19c20c5d371cac706b9c526fa24dcfc1ba5608c675b6fe65576369909307`  
		Last Modified: Fri, 23 Sep 2016 17:09:50 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3597d618e938ea29691dda5b4c0e8951fde995e41374483137f23405bd631003`  
		Last Modified: Fri, 23 Sep 2016 17:09:51 GMT  
		Size: 450.4 KB (450444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66908bc406707ba51f70a1538dbac9bb7982bdcc8598466b09f7f5a91ca0c130`  
		Last Modified: Fri, 23 Sep 2016 17:09:50 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4494be60f9016410d844f8857d15194df4dd1434e41a5a2f073a2d31c7be0eb`  
		Last Modified: Fri, 23 Sep 2016 17:09:50 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4-alpine`

```console
$ docker pull memcached@sha256:9282e7ebe76a5567a1bb89653f42f69b2129ca90f03196628aa872222540618e
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2765034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0d4b9d95193c35f7ec0a65ea536491f9e770ad8de382613ed133db655b16a45`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:09:30 GMT
RUN adduser -D memcache
# Fri, 23 Sep 2016 17:09:30 GMT
ENV MEMCACHED_VERSION=1.4.31
# Fri, 23 Sep 2016 17:09:31 GMT
ENV MEMCACHED_SHA1=3ea34f5bc5c5aacb76cfc07f4ee5847f33526cb6
# Fri, 23 Sep 2016 17:09:40 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Fri, 23 Sep 2016 17:09:41 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 23 Sep 2016 17:09:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 23 Sep 2016 17:09:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 17:09:43 GMT
USER [memcache]
# Fri, 23 Sep 2016 17:09:43 GMT
EXPOSE 11211/tcp
# Fri, 23 Sep 2016 17:09:43 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5dc19c20c5d371cac706b9c526fa24dcfc1ba5608c675b6fe65576369909307`  
		Last Modified: Fri, 23 Sep 2016 17:09:50 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3597d618e938ea29691dda5b4c0e8951fde995e41374483137f23405bd631003`  
		Last Modified: Fri, 23 Sep 2016 17:09:51 GMT  
		Size: 450.4 KB (450444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66908bc406707ba51f70a1538dbac9bb7982bdcc8598466b09f7f5a91ca0c130`  
		Last Modified: Fri, 23 Sep 2016 17:09:50 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4494be60f9016410d844f8857d15194df4dd1434e41a5a2f073a2d31c7be0eb`  
		Last Modified: Fri, 23 Sep 2016 17:09:50 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:9282e7ebe76a5567a1bb89653f42f69b2129ca90f03196628aa872222540618e
```

-	Platforms:
	-	linux; amd64

### `memcached:1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2765034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0d4b9d95193c35f7ec0a65ea536491f9e770ad8de382613ed133db655b16a45`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:09:30 GMT
RUN adduser -D memcache
# Fri, 23 Sep 2016 17:09:30 GMT
ENV MEMCACHED_VERSION=1.4.31
# Fri, 23 Sep 2016 17:09:31 GMT
ENV MEMCACHED_SHA1=3ea34f5bc5c5aacb76cfc07f4ee5847f33526cb6
# Fri, 23 Sep 2016 17:09:40 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Fri, 23 Sep 2016 17:09:41 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 23 Sep 2016 17:09:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 23 Sep 2016 17:09:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 17:09:43 GMT
USER [memcache]
# Fri, 23 Sep 2016 17:09:43 GMT
EXPOSE 11211/tcp
# Fri, 23 Sep 2016 17:09:43 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5dc19c20c5d371cac706b9c526fa24dcfc1ba5608c675b6fe65576369909307`  
		Last Modified: Fri, 23 Sep 2016 17:09:50 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3597d618e938ea29691dda5b4c0e8951fde995e41374483137f23405bd631003`  
		Last Modified: Fri, 23 Sep 2016 17:09:51 GMT  
		Size: 450.4 KB (450444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66908bc406707ba51f70a1538dbac9bb7982bdcc8598466b09f7f5a91ca0c130`  
		Last Modified: Fri, 23 Sep 2016 17:09:50 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4494be60f9016410d844f8857d15194df4dd1434e41a5a2f073a2d31c7be0eb`  
		Last Modified: Fri, 23 Sep 2016 17:09:50 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:9282e7ebe76a5567a1bb89653f42f69b2129ca90f03196628aa872222540618e
```

-	Platforms:
	-	linux; amd64

### `memcached:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2765034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0d4b9d95193c35f7ec0a65ea536491f9e770ad8de382613ed133db655b16a45`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:09:30 GMT
RUN adduser -D memcache
# Fri, 23 Sep 2016 17:09:30 GMT
ENV MEMCACHED_VERSION=1.4.31
# Fri, 23 Sep 2016 17:09:31 GMT
ENV MEMCACHED_SHA1=3ea34f5bc5c5aacb76cfc07f4ee5847f33526cb6
# Fri, 23 Sep 2016 17:09:40 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Fri, 23 Sep 2016 17:09:41 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 23 Sep 2016 17:09:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 23 Sep 2016 17:09:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 17:09:43 GMT
USER [memcache]
# Fri, 23 Sep 2016 17:09:43 GMT
EXPOSE 11211/tcp
# Fri, 23 Sep 2016 17:09:43 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5dc19c20c5d371cac706b9c526fa24dcfc1ba5608c675b6fe65576369909307`  
		Last Modified: Fri, 23 Sep 2016 17:09:50 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3597d618e938ea29691dda5b4c0e8951fde995e41374483137f23405bd631003`  
		Last Modified: Fri, 23 Sep 2016 17:09:51 GMT  
		Size: 450.4 KB (450444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66908bc406707ba51f70a1538dbac9bb7982bdcc8598466b09f7f5a91ca0c130`  
		Last Modified: Fri, 23 Sep 2016 17:09:50 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4494be60f9016410d844f8857d15194df4dd1434e41a5a2f073a2d31c7be0eb`  
		Last Modified: Fri, 23 Sep 2016 17:09:50 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
