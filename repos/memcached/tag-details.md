<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `memcached`

-	[`memcached:1.5.0`](#memcached150)
-	[`memcached:1.5`](#memcached15)
-	[`memcached:1`](#memcached1)
-	[`memcached:latest`](#memcachedlatest)
-	[`memcached:1.5.0-alpine`](#memcached150-alpine)
-	[`memcached:1.5-alpine`](#memcached15-alpine)
-	[`memcached:1-alpine`](#memcached1-alpine)
-	[`memcached:alpine`](#memcachedalpine)

## `memcached:1.5.0`

```console
$ docker pull memcached@sha256:02dc0541c59de41919172227013d690a2fcb34fbbb0f71c9d73327daa35503b6
```

-	Platforms:
	-	linux; amd64

### `memcached:1.5.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23477977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3d90b69d0579fe651ed392431f9354cf66941c5c1a8926a912bacbe1bfaf1e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Jun 2017 20:25:26 GMT
ADD file:54d82a3a8fe8d47aaa58650783f2a7198891e89ca95d6e7455f8999651c2fc98 in / 
# Tue, 20 Jun 2017 20:25:27 GMT
CMD ["bash"]
# Tue, 18 Jul 2017 23:02:08 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 21 Jul 2017 21:26:28 GMT
ENV MEMCACHED_VERSION=1.5.0
# Fri, 21 Jul 2017 21:26:28 GMT
ENV MEMCACHED_SHA1=e12af93e63c05ab7e89398e4cfd0bfc7b7bff1c5
# Fri, 21 Jul 2017 21:30:04 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 21 Jul 2017 21:30:04 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 21 Jul 2017 21:30:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Jul 2017 21:30:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jul 2017 21:30:07 GMT
USER [memcache]
# Fri, 21 Jul 2017 21:30:07 GMT
EXPOSE 11211/tcp
# Fri, 21 Jul 2017 21:30:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e6e142a992028745fdbaf21d647cd3c61086cd0c1b50a25f07a5d7dbaa446cdd`  
		Last Modified: Tue, 20 Jun 2017 20:56:34 GMT  
		Size: 22.5 MB (22501182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e564ed3263deeda5dd00e984e9659592337c3a92fa3f848b6e66395492a00a84`  
		Last Modified: Tue, 18 Jul 2017 23:10:22 GMT  
		Size: 1.7 KB (1722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb9d6fe57deb77e9189993be92ab581cb69556e3545b7367cfdfb9a40acf980`  
		Last Modified: Fri, 21 Jul 2017 21:52:58 GMT  
		Size: 974.7 KB (974662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69417ab283aa325aaf9256b2617de8d012aa7f80a8c48598babfe37bee91f7b8`  
		Last Modified: Fri, 21 Jul 2017 21:52:57 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6999ce7a8f645524487918e54a13b98e4be22bdb2194e2f933f1daa445cf1696`  
		Last Modified: Fri, 21 Jul 2017 21:52:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5`

```console
$ docker pull memcached@sha256:02dc0541c59de41919172227013d690a2fcb34fbbb0f71c9d73327daa35503b6
```

-	Platforms:
	-	linux; amd64

### `memcached:1.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23477977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3d90b69d0579fe651ed392431f9354cf66941c5c1a8926a912bacbe1bfaf1e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Jun 2017 20:25:26 GMT
ADD file:54d82a3a8fe8d47aaa58650783f2a7198891e89ca95d6e7455f8999651c2fc98 in / 
# Tue, 20 Jun 2017 20:25:27 GMT
CMD ["bash"]
# Tue, 18 Jul 2017 23:02:08 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 21 Jul 2017 21:26:28 GMT
ENV MEMCACHED_VERSION=1.5.0
# Fri, 21 Jul 2017 21:26:28 GMT
ENV MEMCACHED_SHA1=e12af93e63c05ab7e89398e4cfd0bfc7b7bff1c5
# Fri, 21 Jul 2017 21:30:04 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 21 Jul 2017 21:30:04 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 21 Jul 2017 21:30:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Jul 2017 21:30:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jul 2017 21:30:07 GMT
USER [memcache]
# Fri, 21 Jul 2017 21:30:07 GMT
EXPOSE 11211/tcp
# Fri, 21 Jul 2017 21:30:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e6e142a992028745fdbaf21d647cd3c61086cd0c1b50a25f07a5d7dbaa446cdd`  
		Last Modified: Tue, 20 Jun 2017 20:56:34 GMT  
		Size: 22.5 MB (22501182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e564ed3263deeda5dd00e984e9659592337c3a92fa3f848b6e66395492a00a84`  
		Last Modified: Tue, 18 Jul 2017 23:10:22 GMT  
		Size: 1.7 KB (1722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb9d6fe57deb77e9189993be92ab581cb69556e3545b7367cfdfb9a40acf980`  
		Last Modified: Fri, 21 Jul 2017 21:52:58 GMT  
		Size: 974.7 KB (974662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69417ab283aa325aaf9256b2617de8d012aa7f80a8c48598babfe37bee91f7b8`  
		Last Modified: Fri, 21 Jul 2017 21:52:57 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6999ce7a8f645524487918e54a13b98e4be22bdb2194e2f933f1daa445cf1696`  
		Last Modified: Fri, 21 Jul 2017 21:52:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1`

```console
$ docker pull memcached@sha256:02dc0541c59de41919172227013d690a2fcb34fbbb0f71c9d73327daa35503b6
```

-	Platforms:
	-	linux; amd64

### `memcached:1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23477977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3d90b69d0579fe651ed392431f9354cf66941c5c1a8926a912bacbe1bfaf1e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Jun 2017 20:25:26 GMT
ADD file:54d82a3a8fe8d47aaa58650783f2a7198891e89ca95d6e7455f8999651c2fc98 in / 
# Tue, 20 Jun 2017 20:25:27 GMT
CMD ["bash"]
# Tue, 18 Jul 2017 23:02:08 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 21 Jul 2017 21:26:28 GMT
ENV MEMCACHED_VERSION=1.5.0
# Fri, 21 Jul 2017 21:26:28 GMT
ENV MEMCACHED_SHA1=e12af93e63c05ab7e89398e4cfd0bfc7b7bff1c5
# Fri, 21 Jul 2017 21:30:04 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 21 Jul 2017 21:30:04 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 21 Jul 2017 21:30:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Jul 2017 21:30:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jul 2017 21:30:07 GMT
USER [memcache]
# Fri, 21 Jul 2017 21:30:07 GMT
EXPOSE 11211/tcp
# Fri, 21 Jul 2017 21:30:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e6e142a992028745fdbaf21d647cd3c61086cd0c1b50a25f07a5d7dbaa446cdd`  
		Last Modified: Tue, 20 Jun 2017 20:56:34 GMT  
		Size: 22.5 MB (22501182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e564ed3263deeda5dd00e984e9659592337c3a92fa3f848b6e66395492a00a84`  
		Last Modified: Tue, 18 Jul 2017 23:10:22 GMT  
		Size: 1.7 KB (1722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb9d6fe57deb77e9189993be92ab581cb69556e3545b7367cfdfb9a40acf980`  
		Last Modified: Fri, 21 Jul 2017 21:52:58 GMT  
		Size: 974.7 KB (974662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69417ab283aa325aaf9256b2617de8d012aa7f80a8c48598babfe37bee91f7b8`  
		Last Modified: Fri, 21 Jul 2017 21:52:57 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6999ce7a8f645524487918e54a13b98e4be22bdb2194e2f933f1daa445cf1696`  
		Last Modified: Fri, 21 Jul 2017 21:52:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:02dc0541c59de41919172227013d690a2fcb34fbbb0f71c9d73327daa35503b6
```

-	Platforms:
	-	linux; amd64

### `memcached:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23477977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3d90b69d0579fe651ed392431f9354cf66941c5c1a8926a912bacbe1bfaf1e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Jun 2017 20:25:26 GMT
ADD file:54d82a3a8fe8d47aaa58650783f2a7198891e89ca95d6e7455f8999651c2fc98 in / 
# Tue, 20 Jun 2017 20:25:27 GMT
CMD ["bash"]
# Tue, 18 Jul 2017 23:02:08 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 21 Jul 2017 21:26:28 GMT
ENV MEMCACHED_VERSION=1.5.0
# Fri, 21 Jul 2017 21:26:28 GMT
ENV MEMCACHED_SHA1=e12af93e63c05ab7e89398e4cfd0bfc7b7bff1c5
# Fri, 21 Jul 2017 21:30:04 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 21 Jul 2017 21:30:04 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 21 Jul 2017 21:30:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Jul 2017 21:30:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jul 2017 21:30:07 GMT
USER [memcache]
# Fri, 21 Jul 2017 21:30:07 GMT
EXPOSE 11211/tcp
# Fri, 21 Jul 2017 21:30:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e6e142a992028745fdbaf21d647cd3c61086cd0c1b50a25f07a5d7dbaa446cdd`  
		Last Modified: Tue, 20 Jun 2017 20:56:34 GMT  
		Size: 22.5 MB (22501182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e564ed3263deeda5dd00e984e9659592337c3a92fa3f848b6e66395492a00a84`  
		Last Modified: Tue, 18 Jul 2017 23:10:22 GMT  
		Size: 1.7 KB (1722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb9d6fe57deb77e9189993be92ab581cb69556e3545b7367cfdfb9a40acf980`  
		Last Modified: Fri, 21 Jul 2017 21:52:58 GMT  
		Size: 974.7 KB (974662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69417ab283aa325aaf9256b2617de8d012aa7f80a8c48598babfe37bee91f7b8`  
		Last Modified: Fri, 21 Jul 2017 21:52:57 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6999ce7a8f645524487918e54a13b98e4be22bdb2194e2f933f1daa445cf1696`  
		Last Modified: Fri, 21 Jul 2017 21:52:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.0-alpine`

```console
$ docker pull memcached@sha256:180e34da7dee18fcd5dee0ef3335a2e844481ed232c84df8f970b2abf89b67e6
```

-	Platforms:
	-	linux; amd64

### `memcached:1.5.0-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3724398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0447ce4b7d808bb60b94f85b62611084118636df1c01a7281472297fe343c89d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 18 Jul 2017 23:06:28 GMT
RUN adduser -D memcache
# Fri, 21 Jul 2017 21:30:16 GMT
ENV MEMCACHED_VERSION=1.5.0
# Fri, 21 Jul 2017 21:30:17 GMT
ENV MEMCACHED_SHA1=e12af93e63c05ab7e89398e4cfd0bfc7b7bff1c5
# Fri, 21 Jul 2017 21:52:36 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 21 Jul 2017 21:52:38 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 21 Jul 2017 21:52:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Jul 2017 21:52:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jul 2017 21:52:43 GMT
USER [memcache]
# Fri, 21 Jul 2017 21:52:44 GMT
EXPOSE 11211/tcp
# Fri, 21 Jul 2017 21:52:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc4fb72c09d89c9a60427a94b2851bce7248601825a9201763f80698a31f587`  
		Last Modified: Tue, 18 Jul 2017 23:11:08 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e38f9e0675fd91e0194b69fab9a33ecaf8f383baea348e71e789af9d5103829`  
		Last Modified: Fri, 21 Jul 2017 21:53:48 GMT  
		Size: 1.7 MB (1732346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80cc17f22453eb6f605aff34453eab9c461d5af0a4cceb55985ed6034c69991`  
		Last Modified: Fri, 21 Jul 2017 21:53:48 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0badae89f3cf58b8cb385b69375482733aec892443bc9675bf0d432c7f40f179`  
		Last Modified: Fri, 21 Jul 2017 21:53:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5-alpine`

```console
$ docker pull memcached@sha256:180e34da7dee18fcd5dee0ef3335a2e844481ed232c84df8f970b2abf89b67e6
```

-	Platforms:
	-	linux; amd64

### `memcached:1.5-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3724398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0447ce4b7d808bb60b94f85b62611084118636df1c01a7281472297fe343c89d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 18 Jul 2017 23:06:28 GMT
RUN adduser -D memcache
# Fri, 21 Jul 2017 21:30:16 GMT
ENV MEMCACHED_VERSION=1.5.0
# Fri, 21 Jul 2017 21:30:17 GMT
ENV MEMCACHED_SHA1=e12af93e63c05ab7e89398e4cfd0bfc7b7bff1c5
# Fri, 21 Jul 2017 21:52:36 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 21 Jul 2017 21:52:38 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 21 Jul 2017 21:52:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Jul 2017 21:52:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jul 2017 21:52:43 GMT
USER [memcache]
# Fri, 21 Jul 2017 21:52:44 GMT
EXPOSE 11211/tcp
# Fri, 21 Jul 2017 21:52:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc4fb72c09d89c9a60427a94b2851bce7248601825a9201763f80698a31f587`  
		Last Modified: Tue, 18 Jul 2017 23:11:08 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e38f9e0675fd91e0194b69fab9a33ecaf8f383baea348e71e789af9d5103829`  
		Last Modified: Fri, 21 Jul 2017 21:53:48 GMT  
		Size: 1.7 MB (1732346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80cc17f22453eb6f605aff34453eab9c461d5af0a4cceb55985ed6034c69991`  
		Last Modified: Fri, 21 Jul 2017 21:53:48 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0badae89f3cf58b8cb385b69375482733aec892443bc9675bf0d432c7f40f179`  
		Last Modified: Fri, 21 Jul 2017 21:53:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:180e34da7dee18fcd5dee0ef3335a2e844481ed232c84df8f970b2abf89b67e6
```

-	Platforms:
	-	linux; amd64

### `memcached:1-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3724398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0447ce4b7d808bb60b94f85b62611084118636df1c01a7281472297fe343c89d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 18 Jul 2017 23:06:28 GMT
RUN adduser -D memcache
# Fri, 21 Jul 2017 21:30:16 GMT
ENV MEMCACHED_VERSION=1.5.0
# Fri, 21 Jul 2017 21:30:17 GMT
ENV MEMCACHED_SHA1=e12af93e63c05ab7e89398e4cfd0bfc7b7bff1c5
# Fri, 21 Jul 2017 21:52:36 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 21 Jul 2017 21:52:38 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 21 Jul 2017 21:52:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Jul 2017 21:52:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jul 2017 21:52:43 GMT
USER [memcache]
# Fri, 21 Jul 2017 21:52:44 GMT
EXPOSE 11211/tcp
# Fri, 21 Jul 2017 21:52:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc4fb72c09d89c9a60427a94b2851bce7248601825a9201763f80698a31f587`  
		Last Modified: Tue, 18 Jul 2017 23:11:08 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e38f9e0675fd91e0194b69fab9a33ecaf8f383baea348e71e789af9d5103829`  
		Last Modified: Fri, 21 Jul 2017 21:53:48 GMT  
		Size: 1.7 MB (1732346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80cc17f22453eb6f605aff34453eab9c461d5af0a4cceb55985ed6034c69991`  
		Last Modified: Fri, 21 Jul 2017 21:53:48 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0badae89f3cf58b8cb385b69375482733aec892443bc9675bf0d432c7f40f179`  
		Last Modified: Fri, 21 Jul 2017 21:53:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:180e34da7dee18fcd5dee0ef3335a2e844481ed232c84df8f970b2abf89b67e6
```

-	Platforms:
	-	linux; amd64

### `memcached:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3724398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0447ce4b7d808bb60b94f85b62611084118636df1c01a7281472297fe343c89d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 18 Jul 2017 23:06:28 GMT
RUN adduser -D memcache
# Fri, 21 Jul 2017 21:30:16 GMT
ENV MEMCACHED_VERSION=1.5.0
# Fri, 21 Jul 2017 21:30:17 GMT
ENV MEMCACHED_SHA1=e12af93e63c05ab7e89398e4cfd0bfc7b7bff1c5
# Fri, 21 Jul 2017 21:52:36 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 21 Jul 2017 21:52:38 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 21 Jul 2017 21:52:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Jul 2017 21:52:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jul 2017 21:52:43 GMT
USER [memcache]
# Fri, 21 Jul 2017 21:52:44 GMT
EXPOSE 11211/tcp
# Fri, 21 Jul 2017 21:52:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc4fb72c09d89c9a60427a94b2851bce7248601825a9201763f80698a31f587`  
		Last Modified: Tue, 18 Jul 2017 23:11:08 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e38f9e0675fd91e0194b69fab9a33ecaf8f383baea348e71e789af9d5103829`  
		Last Modified: Fri, 21 Jul 2017 21:53:48 GMT  
		Size: 1.7 MB (1732346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80cc17f22453eb6f605aff34453eab9c461d5af0a4cceb55985ed6034c69991`  
		Last Modified: Fri, 21 Jul 2017 21:53:48 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0badae89f3cf58b8cb385b69375482733aec892443bc9675bf0d432c7f40f179`  
		Last Modified: Fri, 21 Jul 2017 21:53:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
