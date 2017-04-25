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
$ docker pull memcached@sha256:5a0bd37125def4963f5eb35c13f70ae59011ca5ebba115a73587a123de26c022
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4.36` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.6 MB (31594008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c483d9f542569fd501270a51fe76ad09cbc2fd86c4635925bb2f63f0c63a96a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Apr 2017 19:21:19 GMT
ADD file:a13c726be90f637e04ad902f42b3a6d973309bf0c098eb82dda7e518adbd8833 in / 
# Mon, 24 Apr 2017 19:21:20 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:48:50 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Mon, 24 Apr 2017 23:48:51 GMT
ENV MEMCACHED_VERSION=1.4.36
# Mon, 24 Apr 2017 23:48:51 GMT
ENV MEMCACHED_SHA1=519b417515206b0b95ff9bf14106a891f6a2252e
# Mon, 24 Apr 2017 23:49:29 GMT
RUN set -x 	&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 	&& memcached -V
# Mon, 24 Apr 2017 23:49:30 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 24 Apr 2017 23:49:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 24 Apr 2017 23:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Apr 2017 23:49:33 GMT
USER [memcache]
# Mon, 24 Apr 2017 23:49:33 GMT
EXPOSE 11211/tcp
# Mon, 24 Apr 2017 23:49:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:47e616392c23265a5e531497d94557c2e269cf3ae5616c37fbe1a75bb02b40f4`  
		Last Modified: Mon, 24 Apr 2017 19:33:31 GMT  
		Size: 30.6 MB (30605723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6c7c1270bf365ae14230e1db6d37d43e70772beddeb90e9cc027270ebb86eb`  
		Last Modified: Tue, 25 Apr 2017 18:42:38 GMT  
		Size: 2.1 KB (2057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2840970cfdff8480b0c74dfb785a0ff6ca6388653d081cc9e9de7a11d7db25f9`  
		Last Modified: Tue, 25 Apr 2017 18:42:38 GMT  
		Size: 985.8 KB (985817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49a67db1a85bec1092e1743fffd48ca1c290a1704128d0b80816ef4bc8b81ec`  
		Last Modified: Tue, 25 Apr 2017 18:42:38 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696260545ae07f8dcecb8f25d91bdb70f8e19eafca7dc6153df20ba0b241b87f`  
		Last Modified: Tue, 25 Apr 2017 18:42:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4`

```console
$ docker pull memcached@sha256:5a0bd37125def4963f5eb35c13f70ae59011ca5ebba115a73587a123de26c022
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.6 MB (31594008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c483d9f542569fd501270a51fe76ad09cbc2fd86c4635925bb2f63f0c63a96a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Apr 2017 19:21:19 GMT
ADD file:a13c726be90f637e04ad902f42b3a6d973309bf0c098eb82dda7e518adbd8833 in / 
# Mon, 24 Apr 2017 19:21:20 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:48:50 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Mon, 24 Apr 2017 23:48:51 GMT
ENV MEMCACHED_VERSION=1.4.36
# Mon, 24 Apr 2017 23:48:51 GMT
ENV MEMCACHED_SHA1=519b417515206b0b95ff9bf14106a891f6a2252e
# Mon, 24 Apr 2017 23:49:29 GMT
RUN set -x 	&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 	&& memcached -V
# Mon, 24 Apr 2017 23:49:30 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 24 Apr 2017 23:49:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 24 Apr 2017 23:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Apr 2017 23:49:33 GMT
USER [memcache]
# Mon, 24 Apr 2017 23:49:33 GMT
EXPOSE 11211/tcp
# Mon, 24 Apr 2017 23:49:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:47e616392c23265a5e531497d94557c2e269cf3ae5616c37fbe1a75bb02b40f4`  
		Last Modified: Mon, 24 Apr 2017 19:33:31 GMT  
		Size: 30.6 MB (30605723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6c7c1270bf365ae14230e1db6d37d43e70772beddeb90e9cc027270ebb86eb`  
		Last Modified: Tue, 25 Apr 2017 18:42:38 GMT  
		Size: 2.1 KB (2057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2840970cfdff8480b0c74dfb785a0ff6ca6388653d081cc9e9de7a11d7db25f9`  
		Last Modified: Tue, 25 Apr 2017 18:42:38 GMT  
		Size: 985.8 KB (985817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49a67db1a85bec1092e1743fffd48ca1c290a1704128d0b80816ef4bc8b81ec`  
		Last Modified: Tue, 25 Apr 2017 18:42:38 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696260545ae07f8dcecb8f25d91bdb70f8e19eafca7dc6153df20ba0b241b87f`  
		Last Modified: Tue, 25 Apr 2017 18:42:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1`

```console
$ docker pull memcached@sha256:5a0bd37125def4963f5eb35c13f70ae59011ca5ebba115a73587a123de26c022
```

-	Platforms:
	-	linux; amd64

### `memcached:1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.6 MB (31594008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c483d9f542569fd501270a51fe76ad09cbc2fd86c4635925bb2f63f0c63a96a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Apr 2017 19:21:19 GMT
ADD file:a13c726be90f637e04ad902f42b3a6d973309bf0c098eb82dda7e518adbd8833 in / 
# Mon, 24 Apr 2017 19:21:20 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:48:50 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Mon, 24 Apr 2017 23:48:51 GMT
ENV MEMCACHED_VERSION=1.4.36
# Mon, 24 Apr 2017 23:48:51 GMT
ENV MEMCACHED_SHA1=519b417515206b0b95ff9bf14106a891f6a2252e
# Mon, 24 Apr 2017 23:49:29 GMT
RUN set -x 	&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 	&& memcached -V
# Mon, 24 Apr 2017 23:49:30 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 24 Apr 2017 23:49:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 24 Apr 2017 23:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Apr 2017 23:49:33 GMT
USER [memcache]
# Mon, 24 Apr 2017 23:49:33 GMT
EXPOSE 11211/tcp
# Mon, 24 Apr 2017 23:49:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:47e616392c23265a5e531497d94557c2e269cf3ae5616c37fbe1a75bb02b40f4`  
		Last Modified: Mon, 24 Apr 2017 19:33:31 GMT  
		Size: 30.6 MB (30605723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6c7c1270bf365ae14230e1db6d37d43e70772beddeb90e9cc027270ebb86eb`  
		Last Modified: Tue, 25 Apr 2017 18:42:38 GMT  
		Size: 2.1 KB (2057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2840970cfdff8480b0c74dfb785a0ff6ca6388653d081cc9e9de7a11d7db25f9`  
		Last Modified: Tue, 25 Apr 2017 18:42:38 GMT  
		Size: 985.8 KB (985817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49a67db1a85bec1092e1743fffd48ca1c290a1704128d0b80816ef4bc8b81ec`  
		Last Modified: Tue, 25 Apr 2017 18:42:38 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696260545ae07f8dcecb8f25d91bdb70f8e19eafca7dc6153df20ba0b241b87f`  
		Last Modified: Tue, 25 Apr 2017 18:42:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:5a0bd37125def4963f5eb35c13f70ae59011ca5ebba115a73587a123de26c022
```

-	Platforms:
	-	linux; amd64

### `memcached:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.6 MB (31594008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c483d9f542569fd501270a51fe76ad09cbc2fd86c4635925bb2f63f0c63a96a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Apr 2017 19:21:19 GMT
ADD file:a13c726be90f637e04ad902f42b3a6d973309bf0c098eb82dda7e518adbd8833 in / 
# Mon, 24 Apr 2017 19:21:20 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:48:50 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Mon, 24 Apr 2017 23:48:51 GMT
ENV MEMCACHED_VERSION=1.4.36
# Mon, 24 Apr 2017 23:48:51 GMT
ENV MEMCACHED_SHA1=519b417515206b0b95ff9bf14106a891f6a2252e
# Mon, 24 Apr 2017 23:49:29 GMT
RUN set -x 	&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 	&& memcached -V
# Mon, 24 Apr 2017 23:49:30 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 24 Apr 2017 23:49:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 24 Apr 2017 23:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Apr 2017 23:49:33 GMT
USER [memcache]
# Mon, 24 Apr 2017 23:49:33 GMT
EXPOSE 11211/tcp
# Mon, 24 Apr 2017 23:49:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:47e616392c23265a5e531497d94557c2e269cf3ae5616c37fbe1a75bb02b40f4`  
		Last Modified: Mon, 24 Apr 2017 19:33:31 GMT  
		Size: 30.6 MB (30605723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6c7c1270bf365ae14230e1db6d37d43e70772beddeb90e9cc027270ebb86eb`  
		Last Modified: Tue, 25 Apr 2017 18:42:38 GMT  
		Size: 2.1 KB (2057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2840970cfdff8480b0c74dfb785a0ff6ca6388653d081cc9e9de7a11d7db25f9`  
		Last Modified: Tue, 25 Apr 2017 18:42:38 GMT  
		Size: 985.8 KB (985817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49a67db1a85bec1092e1743fffd48ca1c290a1704128d0b80816ef4bc8b81ec`  
		Last Modified: Tue, 25 Apr 2017 18:42:38 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696260545ae07f8dcecb8f25d91bdb70f8e19eafca7dc6153df20ba0b241b87f`  
		Last Modified: Tue, 25 Apr 2017 18:42:38 GMT  
		Size: 121.0 B  
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
