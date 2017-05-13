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
$ docker pull memcached@sha256:a2dfef5700944ec8bb2d2c0d6f5b2819324b1b91647dc09847ce81e7a91e3fe4
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4.36` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.6 MB (31624541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c32c12d91011dd4366e90e6a8f3ebd02b866176df80b9d9732d3295f378307b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 08 May 2017 23:28:58 GMT
ADD file:7dc8fe041ca97fe00af650b41599e0b8d68188f7586ec0009b2cbe7d66896ba8 in / 
# Mon, 08 May 2017 23:28:59 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:31:00 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 09 May 2017 17:31:01 GMT
ENV MEMCACHED_VERSION=1.4.36
# Tue, 09 May 2017 17:31:01 GMT
ENV MEMCACHED_SHA1=519b417515206b0b95ff9bf14106a891f6a2252e
# Tue, 09 May 2017 17:31:42 GMT
RUN set -x 	&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 	&& memcached -V
# Tue, 09 May 2017 17:31:43 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 09 May 2017 17:31:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 09 May 2017 17:31:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 May 2017 17:31:46 GMT
USER [memcache]
# Tue, 09 May 2017 17:31:47 GMT
EXPOSE 11211/tcp
# Tue, 09 May 2017 17:31:47 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:56c7afbcb0f1f3976c78e9c511ded74db33dfc196fe4b4b56914d7b1917c5aa2`  
		Last Modified: Mon, 08 May 2017 23:45:51 GMT  
		Size: 30.6 MB (30636650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49acdc7c75c948479508d0b032ea2944b47726b9e136d038a6dada972ff6d6f0`  
		Last Modified: Sat, 13 May 2017 07:05:48 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152590a2a70490241ace978dac31a7399213f2a2019c13fb33da091fcc42fa64`  
		Last Modified: Sat, 13 May 2017 07:05:49 GMT  
		Size: 985.4 KB (985421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc7b816537893792ddaf5de947eee84fc95f0f8a6da9b83e929121698314b57`  
		Last Modified: Sat, 13 May 2017 07:05:48 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb74c11bcdd30387cf8021ed130f0880e29be026f05bf0e17a1e113f44b21d8`  
		Last Modified: Sat, 13 May 2017 07:05:49 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4`

```console
$ docker pull memcached@sha256:a2dfef5700944ec8bb2d2c0d6f5b2819324b1b91647dc09847ce81e7a91e3fe4
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.6 MB (31624541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c32c12d91011dd4366e90e6a8f3ebd02b866176df80b9d9732d3295f378307b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 08 May 2017 23:28:58 GMT
ADD file:7dc8fe041ca97fe00af650b41599e0b8d68188f7586ec0009b2cbe7d66896ba8 in / 
# Mon, 08 May 2017 23:28:59 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:31:00 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 09 May 2017 17:31:01 GMT
ENV MEMCACHED_VERSION=1.4.36
# Tue, 09 May 2017 17:31:01 GMT
ENV MEMCACHED_SHA1=519b417515206b0b95ff9bf14106a891f6a2252e
# Tue, 09 May 2017 17:31:42 GMT
RUN set -x 	&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 	&& memcached -V
# Tue, 09 May 2017 17:31:43 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 09 May 2017 17:31:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 09 May 2017 17:31:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 May 2017 17:31:46 GMT
USER [memcache]
# Tue, 09 May 2017 17:31:47 GMT
EXPOSE 11211/tcp
# Tue, 09 May 2017 17:31:47 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:56c7afbcb0f1f3976c78e9c511ded74db33dfc196fe4b4b56914d7b1917c5aa2`  
		Last Modified: Mon, 08 May 2017 23:45:51 GMT  
		Size: 30.6 MB (30636650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49acdc7c75c948479508d0b032ea2944b47726b9e136d038a6dada972ff6d6f0`  
		Last Modified: Sat, 13 May 2017 07:05:48 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152590a2a70490241ace978dac31a7399213f2a2019c13fb33da091fcc42fa64`  
		Last Modified: Sat, 13 May 2017 07:05:49 GMT  
		Size: 985.4 KB (985421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc7b816537893792ddaf5de947eee84fc95f0f8a6da9b83e929121698314b57`  
		Last Modified: Sat, 13 May 2017 07:05:48 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb74c11bcdd30387cf8021ed130f0880e29be026f05bf0e17a1e113f44b21d8`  
		Last Modified: Sat, 13 May 2017 07:05:49 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1`

```console
$ docker pull memcached@sha256:a2dfef5700944ec8bb2d2c0d6f5b2819324b1b91647dc09847ce81e7a91e3fe4
```

-	Platforms:
	-	linux; amd64

### `memcached:1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.6 MB (31624541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c32c12d91011dd4366e90e6a8f3ebd02b866176df80b9d9732d3295f378307b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 08 May 2017 23:28:58 GMT
ADD file:7dc8fe041ca97fe00af650b41599e0b8d68188f7586ec0009b2cbe7d66896ba8 in / 
# Mon, 08 May 2017 23:28:59 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:31:00 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 09 May 2017 17:31:01 GMT
ENV MEMCACHED_VERSION=1.4.36
# Tue, 09 May 2017 17:31:01 GMT
ENV MEMCACHED_SHA1=519b417515206b0b95ff9bf14106a891f6a2252e
# Tue, 09 May 2017 17:31:42 GMT
RUN set -x 	&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 	&& memcached -V
# Tue, 09 May 2017 17:31:43 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 09 May 2017 17:31:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 09 May 2017 17:31:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 May 2017 17:31:46 GMT
USER [memcache]
# Tue, 09 May 2017 17:31:47 GMT
EXPOSE 11211/tcp
# Tue, 09 May 2017 17:31:47 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:56c7afbcb0f1f3976c78e9c511ded74db33dfc196fe4b4b56914d7b1917c5aa2`  
		Last Modified: Mon, 08 May 2017 23:45:51 GMT  
		Size: 30.6 MB (30636650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49acdc7c75c948479508d0b032ea2944b47726b9e136d038a6dada972ff6d6f0`  
		Last Modified: Sat, 13 May 2017 07:05:48 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152590a2a70490241ace978dac31a7399213f2a2019c13fb33da091fcc42fa64`  
		Last Modified: Sat, 13 May 2017 07:05:49 GMT  
		Size: 985.4 KB (985421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc7b816537893792ddaf5de947eee84fc95f0f8a6da9b83e929121698314b57`  
		Last Modified: Sat, 13 May 2017 07:05:48 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb74c11bcdd30387cf8021ed130f0880e29be026f05bf0e17a1e113f44b21d8`  
		Last Modified: Sat, 13 May 2017 07:05:49 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:a2dfef5700944ec8bb2d2c0d6f5b2819324b1b91647dc09847ce81e7a91e3fe4
```

-	Platforms:
	-	linux; amd64

### `memcached:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.6 MB (31624541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c32c12d91011dd4366e90e6a8f3ebd02b866176df80b9d9732d3295f378307b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 08 May 2017 23:28:58 GMT
ADD file:7dc8fe041ca97fe00af650b41599e0b8d68188f7586ec0009b2cbe7d66896ba8 in / 
# Mon, 08 May 2017 23:28:59 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:31:00 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 09 May 2017 17:31:01 GMT
ENV MEMCACHED_VERSION=1.4.36
# Tue, 09 May 2017 17:31:01 GMT
ENV MEMCACHED_SHA1=519b417515206b0b95ff9bf14106a891f6a2252e
# Tue, 09 May 2017 17:31:42 GMT
RUN set -x 	&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 	&& memcached -V
# Tue, 09 May 2017 17:31:43 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 09 May 2017 17:31:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 09 May 2017 17:31:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 May 2017 17:31:46 GMT
USER [memcache]
# Tue, 09 May 2017 17:31:47 GMT
EXPOSE 11211/tcp
# Tue, 09 May 2017 17:31:47 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:56c7afbcb0f1f3976c78e9c511ded74db33dfc196fe4b4b56914d7b1917c5aa2`  
		Last Modified: Mon, 08 May 2017 23:45:51 GMT  
		Size: 30.6 MB (30636650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49acdc7c75c948479508d0b032ea2944b47726b9e136d038a6dada972ff6d6f0`  
		Last Modified: Sat, 13 May 2017 07:05:48 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152590a2a70490241ace978dac31a7399213f2a2019c13fb33da091fcc42fa64`  
		Last Modified: Sat, 13 May 2017 07:05:49 GMT  
		Size: 985.4 KB (985421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc7b816537893792ddaf5de947eee84fc95f0f8a6da9b83e929121698314b57`  
		Last Modified: Sat, 13 May 2017 07:05:48 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb74c11bcdd30387cf8021ed130f0880e29be026f05bf0e17a1e113f44b21d8`  
		Last Modified: Sat, 13 May 2017 07:05:49 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4.36-alpine`

```console
$ docker pull memcached@sha256:e75549ca17e15f48d79a924d65119bf9e1ad1b4210f9b5239406dc52c9e8e707
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4.36-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3262095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e445de41745c96d08dfe432d5fa2d282599dbed2a7f56abd91e7b8e0580f69b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:48:49 GMT
RUN adduser -D memcache
# Wed, 10 May 2017 21:48:50 GMT
ENV MEMCACHED_VERSION=1.4.36
# Wed, 10 May 2017 21:48:51 GMT
ENV MEMCACHED_SHA1=519b417515206b0b95ff9bf14106a891f6a2252e
# Wed, 10 May 2017 21:49:03 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 	&& memcached -V
# Wed, 10 May 2017 21:49:04 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 10 May 2017 21:49:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 10 May 2017 21:49:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 21:49:08 GMT
USER [memcache]
# Wed, 10 May 2017 21:49:08 GMT
EXPOSE 11211/tcp
# Wed, 10 May 2017 21:49:09 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:551465844192e85e37c544a1059ec67a65b34702eacfd94c70d00b8ed087f729`  
		Last Modified: Sat, 13 May 2017 07:07:19 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c9a5c28c1f2ac3b4d814e289e6d9726977c854783537859228cc83fc24875d`  
		Last Modified: Sat, 13 May 2017 07:07:19 GMT  
		Size: 1.3 MB (1292543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07c4c1f1b06d7b8196cdbd0c91da08451333feee702fda42f2bcdf646518081e`  
		Last Modified: Sat, 13 May 2017 07:07:19 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef8c77c2e0cf1fd5e8b84ab69ba4f19c1015f78e63be90c9cf3096387ba50738`  
		Last Modified: Sat, 13 May 2017 07:07:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4-alpine`

```console
$ docker pull memcached@sha256:e75549ca17e15f48d79a924d65119bf9e1ad1b4210f9b5239406dc52c9e8e707
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3262095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e445de41745c96d08dfe432d5fa2d282599dbed2a7f56abd91e7b8e0580f69b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:48:49 GMT
RUN adduser -D memcache
# Wed, 10 May 2017 21:48:50 GMT
ENV MEMCACHED_VERSION=1.4.36
# Wed, 10 May 2017 21:48:51 GMT
ENV MEMCACHED_SHA1=519b417515206b0b95ff9bf14106a891f6a2252e
# Wed, 10 May 2017 21:49:03 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 	&& memcached -V
# Wed, 10 May 2017 21:49:04 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 10 May 2017 21:49:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 10 May 2017 21:49:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 21:49:08 GMT
USER [memcache]
# Wed, 10 May 2017 21:49:08 GMT
EXPOSE 11211/tcp
# Wed, 10 May 2017 21:49:09 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:551465844192e85e37c544a1059ec67a65b34702eacfd94c70d00b8ed087f729`  
		Last Modified: Sat, 13 May 2017 07:07:19 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c9a5c28c1f2ac3b4d814e289e6d9726977c854783537859228cc83fc24875d`  
		Last Modified: Sat, 13 May 2017 07:07:19 GMT  
		Size: 1.3 MB (1292543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07c4c1f1b06d7b8196cdbd0c91da08451333feee702fda42f2bcdf646518081e`  
		Last Modified: Sat, 13 May 2017 07:07:19 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef8c77c2e0cf1fd5e8b84ab69ba4f19c1015f78e63be90c9cf3096387ba50738`  
		Last Modified: Sat, 13 May 2017 07:07:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:e75549ca17e15f48d79a924d65119bf9e1ad1b4210f9b5239406dc52c9e8e707
```

-	Platforms:
	-	linux; amd64

### `memcached:1-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3262095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e445de41745c96d08dfe432d5fa2d282599dbed2a7f56abd91e7b8e0580f69b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:48:49 GMT
RUN adduser -D memcache
# Wed, 10 May 2017 21:48:50 GMT
ENV MEMCACHED_VERSION=1.4.36
# Wed, 10 May 2017 21:48:51 GMT
ENV MEMCACHED_SHA1=519b417515206b0b95ff9bf14106a891f6a2252e
# Wed, 10 May 2017 21:49:03 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 	&& memcached -V
# Wed, 10 May 2017 21:49:04 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 10 May 2017 21:49:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 10 May 2017 21:49:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 21:49:08 GMT
USER [memcache]
# Wed, 10 May 2017 21:49:08 GMT
EXPOSE 11211/tcp
# Wed, 10 May 2017 21:49:09 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:551465844192e85e37c544a1059ec67a65b34702eacfd94c70d00b8ed087f729`  
		Last Modified: Sat, 13 May 2017 07:07:19 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c9a5c28c1f2ac3b4d814e289e6d9726977c854783537859228cc83fc24875d`  
		Last Modified: Sat, 13 May 2017 07:07:19 GMT  
		Size: 1.3 MB (1292543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07c4c1f1b06d7b8196cdbd0c91da08451333feee702fda42f2bcdf646518081e`  
		Last Modified: Sat, 13 May 2017 07:07:19 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef8c77c2e0cf1fd5e8b84ab69ba4f19c1015f78e63be90c9cf3096387ba50738`  
		Last Modified: Sat, 13 May 2017 07:07:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:e75549ca17e15f48d79a924d65119bf9e1ad1b4210f9b5239406dc52c9e8e707
```

-	Platforms:
	-	linux; amd64

### `memcached:alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3262095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e445de41745c96d08dfe432d5fa2d282599dbed2a7f56abd91e7b8e0580f69b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:48:49 GMT
RUN adduser -D memcache
# Wed, 10 May 2017 21:48:50 GMT
ENV MEMCACHED_VERSION=1.4.36
# Wed, 10 May 2017 21:48:51 GMT
ENV MEMCACHED_SHA1=519b417515206b0b95ff9bf14106a891f6a2252e
# Wed, 10 May 2017 21:49:03 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 	&& memcached -V
# Wed, 10 May 2017 21:49:04 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 10 May 2017 21:49:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 10 May 2017 21:49:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 21:49:08 GMT
USER [memcache]
# Wed, 10 May 2017 21:49:08 GMT
EXPOSE 11211/tcp
# Wed, 10 May 2017 21:49:09 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:551465844192e85e37c544a1059ec67a65b34702eacfd94c70d00b8ed087f729`  
		Last Modified: Sat, 13 May 2017 07:07:19 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c9a5c28c1f2ac3b4d814e289e6d9726977c854783537859228cc83fc24875d`  
		Last Modified: Sat, 13 May 2017 07:07:19 GMT  
		Size: 1.3 MB (1292543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07c4c1f1b06d7b8196cdbd0c91da08451333feee702fda42f2bcdf646518081e`  
		Last Modified: Sat, 13 May 2017 07:07:19 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef8c77c2e0cf1fd5e8b84ab69ba4f19c1015f78e63be90c9cf3096387ba50738`  
		Last Modified: Sat, 13 May 2017 07:07:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
