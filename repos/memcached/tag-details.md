<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `memcached`

-	[`memcached:1.4.36`](#memcached1436)
-	[`memcached:1.4`](#memcached14)
-	[`memcached:1`](#memcached1)
-	[`memcached:latest`](#memcachedlatest)
-	[`memcached:1.4.36-alpine`](#memcached1436-alpine)
-	[`memcached:1.4-alpine`](#memcached14-alpine)
-	[`memcached:1-alpine`](#memcached1-alpine)
-	[`memcached:alpine`](#memcachedalpine)

## `memcached:1.4.36`

```console
$ docker pull memcached@sha256:9fd922f16fe8e2ada2b117ff3fc8e8e8dfcbf359e8d67de1d2d9f85f179035ff
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4.36` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30423450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b89c50fe94007195d5805e009074ffdc187e39be2811bc382dedf5a05e1c080`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:56 GMT
ADD file:a8e568cac3297f08efca89dbac4ea579717ed203b1601807b67954cb6c466e73 in / 
# Mon, 27 Feb 2017 20:34:57 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 06:00:15 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 21 Mar 2017 16:50:14 GMT
ENV MEMCACHED_VERSION=1.4.36
# Tue, 21 Mar 2017 16:50:14 GMT
ENV MEMCACHED_SHA1=519b417515206b0b95ff9bf14106a891f6a2252e
# Tue, 21 Mar 2017 16:50:59 GMT
RUN set -x 	&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 	&& memcached -V
# Tue, 21 Mar 2017 16:51:00 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:51:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 21 Mar 2017 16:51:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:51:02 GMT
USER [memcache]
# Tue, 21 Mar 2017 16:51:03 GMT
EXPOSE 11211/tcp
# Tue, 21 Mar 2017 16:51:03 GMT
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
	-	`sha256:586e81902b98941077d443be1302482ad3702053e56df0bc076b5c6d9a3ff116`  
		Last Modified: Tue, 21 Mar 2017 16:52:10 GMT  
		Size: 895.7 KB (895659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fa35a6a66e2dd6e82c19a9616fc28670fa09189738160dc0befe0862acde20`  
		Last Modified: Tue, 21 Mar 2017 16:52:09 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4bbb9000e8adddebac4b7dc8cf3f94bd2f00893b7d4c8f1da734370ca82155`  
		Last Modified: Tue, 21 Mar 2017 16:52:09 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4`

```console
$ docker pull memcached@sha256:9fd922f16fe8e2ada2b117ff3fc8e8e8dfcbf359e8d67de1d2d9f85f179035ff
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30423450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b89c50fe94007195d5805e009074ffdc187e39be2811bc382dedf5a05e1c080`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:56 GMT
ADD file:a8e568cac3297f08efca89dbac4ea579717ed203b1601807b67954cb6c466e73 in / 
# Mon, 27 Feb 2017 20:34:57 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 06:00:15 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 21 Mar 2017 16:50:14 GMT
ENV MEMCACHED_VERSION=1.4.36
# Tue, 21 Mar 2017 16:50:14 GMT
ENV MEMCACHED_SHA1=519b417515206b0b95ff9bf14106a891f6a2252e
# Tue, 21 Mar 2017 16:50:59 GMT
RUN set -x 	&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 	&& memcached -V
# Tue, 21 Mar 2017 16:51:00 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:51:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 21 Mar 2017 16:51:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:51:02 GMT
USER [memcache]
# Tue, 21 Mar 2017 16:51:03 GMT
EXPOSE 11211/tcp
# Tue, 21 Mar 2017 16:51:03 GMT
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
	-	`sha256:586e81902b98941077d443be1302482ad3702053e56df0bc076b5c6d9a3ff116`  
		Last Modified: Tue, 21 Mar 2017 16:52:10 GMT  
		Size: 895.7 KB (895659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fa35a6a66e2dd6e82c19a9616fc28670fa09189738160dc0befe0862acde20`  
		Last Modified: Tue, 21 Mar 2017 16:52:09 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4bbb9000e8adddebac4b7dc8cf3f94bd2f00893b7d4c8f1da734370ca82155`  
		Last Modified: Tue, 21 Mar 2017 16:52:09 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1`

```console
$ docker pull memcached@sha256:9fd922f16fe8e2ada2b117ff3fc8e8e8dfcbf359e8d67de1d2d9f85f179035ff
```

-	Platforms:
	-	linux; amd64

### `memcached:1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30423450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b89c50fe94007195d5805e009074ffdc187e39be2811bc382dedf5a05e1c080`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:56 GMT
ADD file:a8e568cac3297f08efca89dbac4ea579717ed203b1601807b67954cb6c466e73 in / 
# Mon, 27 Feb 2017 20:34:57 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 06:00:15 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 21 Mar 2017 16:50:14 GMT
ENV MEMCACHED_VERSION=1.4.36
# Tue, 21 Mar 2017 16:50:14 GMT
ENV MEMCACHED_SHA1=519b417515206b0b95ff9bf14106a891f6a2252e
# Tue, 21 Mar 2017 16:50:59 GMT
RUN set -x 	&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 	&& memcached -V
# Tue, 21 Mar 2017 16:51:00 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:51:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 21 Mar 2017 16:51:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:51:02 GMT
USER [memcache]
# Tue, 21 Mar 2017 16:51:03 GMT
EXPOSE 11211/tcp
# Tue, 21 Mar 2017 16:51:03 GMT
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
	-	`sha256:586e81902b98941077d443be1302482ad3702053e56df0bc076b5c6d9a3ff116`  
		Last Modified: Tue, 21 Mar 2017 16:52:10 GMT  
		Size: 895.7 KB (895659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fa35a6a66e2dd6e82c19a9616fc28670fa09189738160dc0befe0862acde20`  
		Last Modified: Tue, 21 Mar 2017 16:52:09 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4bbb9000e8adddebac4b7dc8cf3f94bd2f00893b7d4c8f1da734370ca82155`  
		Last Modified: Tue, 21 Mar 2017 16:52:09 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:9fd922f16fe8e2ada2b117ff3fc8e8e8dfcbf359e8d67de1d2d9f85f179035ff
```

-	Platforms:
	-	linux; amd64

### `memcached:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30423450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b89c50fe94007195d5805e009074ffdc187e39be2811bc382dedf5a05e1c080`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:56 GMT
ADD file:a8e568cac3297f08efca89dbac4ea579717ed203b1601807b67954cb6c466e73 in / 
# Mon, 27 Feb 2017 20:34:57 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 06:00:15 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 21 Mar 2017 16:50:14 GMT
ENV MEMCACHED_VERSION=1.4.36
# Tue, 21 Mar 2017 16:50:14 GMT
ENV MEMCACHED_SHA1=519b417515206b0b95ff9bf14106a891f6a2252e
# Tue, 21 Mar 2017 16:50:59 GMT
RUN set -x 	&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 	&& memcached -V
# Tue, 21 Mar 2017 16:51:00 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:51:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 21 Mar 2017 16:51:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:51:02 GMT
USER [memcache]
# Tue, 21 Mar 2017 16:51:03 GMT
EXPOSE 11211/tcp
# Tue, 21 Mar 2017 16:51:03 GMT
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
	-	`sha256:586e81902b98941077d443be1302482ad3702053e56df0bc076b5c6d9a3ff116`  
		Last Modified: Tue, 21 Mar 2017 16:52:10 GMT  
		Size: 895.7 KB (895659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fa35a6a66e2dd6e82c19a9616fc28670fa09189738160dc0befe0862acde20`  
		Last Modified: Tue, 21 Mar 2017 16:52:09 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4bbb9000e8adddebac4b7dc8cf3f94bd2f00893b7d4c8f1da734370ca82155`  
		Last Modified: Tue, 21 Mar 2017 16:52:09 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4.36-alpine`

```console
$ docker pull memcached@sha256:068d832ca7c51b6748e3306875766d25922ef01c416be554d759ed04cbfe1add
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4.36-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3160899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9acbc61bd2648ea0d69f6656a549fad2ac6d8cc87728d10d9e4d01d446659ba1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 22:01:54 GMT
RUN adduser -D memcache
# Tue, 21 Mar 2017 16:51:04 GMT
ENV MEMCACHED_VERSION=1.4.36
# Tue, 21 Mar 2017 16:51:05 GMT
ENV MEMCACHED_SHA1=519b417515206b0b95ff9bf14106a891f6a2252e
# Tue, 21 Mar 2017 16:51:40 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 	&& memcached -V
# Tue, 21 Mar 2017 16:51:41 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:51:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 21 Mar 2017 16:51:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:51:43 GMT
USER [memcache]
# Tue, 21 Mar 2017 16:51:43 GMT
EXPOSE 11211/tcp
# Tue, 21 Mar 2017 16:51:44 GMT
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
	-	`sha256:dd4adf8e7fd72cfaf221d3a916305d57213bca9165bda2c7e106b93b67bc09a0`  
		Last Modified: Tue, 21 Mar 2017 16:53:48 GMT  
		Size: 1.3 MB (1253987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b51729e0f8e3e2704e447a33643366846a090c7392ee66442d186d6928271a`  
		Last Modified: Tue, 21 Mar 2017 16:53:48 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd01eaa380eae8afbb5967b242dd93c928dd1b24c5a4e4c931a66feb8ff22e2`  
		Last Modified: Tue, 21 Mar 2017 16:53:48 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4-alpine`

```console
$ docker pull memcached@sha256:068d832ca7c51b6748e3306875766d25922ef01c416be554d759ed04cbfe1add
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3160899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9acbc61bd2648ea0d69f6656a549fad2ac6d8cc87728d10d9e4d01d446659ba1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 22:01:54 GMT
RUN adduser -D memcache
# Tue, 21 Mar 2017 16:51:04 GMT
ENV MEMCACHED_VERSION=1.4.36
# Tue, 21 Mar 2017 16:51:05 GMT
ENV MEMCACHED_SHA1=519b417515206b0b95ff9bf14106a891f6a2252e
# Tue, 21 Mar 2017 16:51:40 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 	&& memcached -V
# Tue, 21 Mar 2017 16:51:41 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:51:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 21 Mar 2017 16:51:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:51:43 GMT
USER [memcache]
# Tue, 21 Mar 2017 16:51:43 GMT
EXPOSE 11211/tcp
# Tue, 21 Mar 2017 16:51:44 GMT
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
	-	`sha256:dd4adf8e7fd72cfaf221d3a916305d57213bca9165bda2c7e106b93b67bc09a0`  
		Last Modified: Tue, 21 Mar 2017 16:53:48 GMT  
		Size: 1.3 MB (1253987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b51729e0f8e3e2704e447a33643366846a090c7392ee66442d186d6928271a`  
		Last Modified: Tue, 21 Mar 2017 16:53:48 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd01eaa380eae8afbb5967b242dd93c928dd1b24c5a4e4c931a66feb8ff22e2`  
		Last Modified: Tue, 21 Mar 2017 16:53:48 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:068d832ca7c51b6748e3306875766d25922ef01c416be554d759ed04cbfe1add
```

-	Platforms:
	-	linux; amd64

### `memcached:1-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3160899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9acbc61bd2648ea0d69f6656a549fad2ac6d8cc87728d10d9e4d01d446659ba1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 22:01:54 GMT
RUN adduser -D memcache
# Tue, 21 Mar 2017 16:51:04 GMT
ENV MEMCACHED_VERSION=1.4.36
# Tue, 21 Mar 2017 16:51:05 GMT
ENV MEMCACHED_SHA1=519b417515206b0b95ff9bf14106a891f6a2252e
# Tue, 21 Mar 2017 16:51:40 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 	&& memcached -V
# Tue, 21 Mar 2017 16:51:41 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:51:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 21 Mar 2017 16:51:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:51:43 GMT
USER [memcache]
# Tue, 21 Mar 2017 16:51:43 GMT
EXPOSE 11211/tcp
# Tue, 21 Mar 2017 16:51:44 GMT
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
	-	`sha256:dd4adf8e7fd72cfaf221d3a916305d57213bca9165bda2c7e106b93b67bc09a0`  
		Last Modified: Tue, 21 Mar 2017 16:53:48 GMT  
		Size: 1.3 MB (1253987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b51729e0f8e3e2704e447a33643366846a090c7392ee66442d186d6928271a`  
		Last Modified: Tue, 21 Mar 2017 16:53:48 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd01eaa380eae8afbb5967b242dd93c928dd1b24c5a4e4c931a66feb8ff22e2`  
		Last Modified: Tue, 21 Mar 2017 16:53:48 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:068d832ca7c51b6748e3306875766d25922ef01c416be554d759ed04cbfe1add
```

-	Platforms:
	-	linux; amd64

### `memcached:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3160899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9acbc61bd2648ea0d69f6656a549fad2ac6d8cc87728d10d9e4d01d446659ba1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 22:01:54 GMT
RUN adduser -D memcache
# Tue, 21 Mar 2017 16:51:04 GMT
ENV MEMCACHED_VERSION=1.4.36
# Tue, 21 Mar 2017 16:51:05 GMT
ENV MEMCACHED_SHA1=519b417515206b0b95ff9bf14106a891f6a2252e
# Tue, 21 Mar 2017 16:51:40 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 	&& memcached -V
# Tue, 21 Mar 2017 16:51:41 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:51:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 21 Mar 2017 16:51:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:51:43 GMT
USER [memcache]
# Tue, 21 Mar 2017 16:51:43 GMT
EXPOSE 11211/tcp
# Tue, 21 Mar 2017 16:51:44 GMT
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
	-	`sha256:dd4adf8e7fd72cfaf221d3a916305d57213bca9165bda2c7e106b93b67bc09a0`  
		Last Modified: Tue, 21 Mar 2017 16:53:48 GMT  
		Size: 1.3 MB (1253987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b51729e0f8e3e2704e447a33643366846a090c7392ee66442d186d6928271a`  
		Last Modified: Tue, 21 Mar 2017 16:53:48 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd01eaa380eae8afbb5967b242dd93c928dd1b24c5a4e4c931a66feb8ff22e2`  
		Last Modified: Tue, 21 Mar 2017 16:53:48 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
