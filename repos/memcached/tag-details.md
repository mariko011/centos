<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `memcached`

-	[`memcached:1.4.37`](#memcached1437)
-	[`memcached:1.4`](#memcached14)
-	[`memcached:1`](#memcached1)
-	[`memcached:latest`](#memcachedlatest)
-	[`memcached:1.4.37-alpine`](#memcached1437-alpine)
-	[`memcached:1.4-alpine`](#memcached14-alpine)
-	[`memcached:1-alpine`](#memcached1-alpine)
-	[`memcached:alpine`](#memcachedalpine)

## `memcached:1.4.37`

**does not exist** (yet?)

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

## `memcached:1.4.37-alpine`

**does not exist** (yet?)

## `memcached:1.4-alpine`

```console
$ docker pull memcached@sha256:00b68b00139155817a8b1d69d74865563def06b3af1e6fc79ac541a1b2f6b961
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3262079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e36e3b0dc88c4515a60083ab11e8d8520d68d59e50f5b628b427b6bb2d5405c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 20:41:31 GMT
RUN adduser -D memcache
# Tue, 30 May 2017 20:41:32 GMT
ENV MEMCACHED_VERSION=1.4.36
# Tue, 30 May 2017 20:41:33 GMT
ENV MEMCACHED_SHA1=519b417515206b0b95ff9bf14106a891f6a2252e
# Tue, 30 May 2017 20:41:46 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 	&& memcached -V
# Tue, 30 May 2017 20:41:47 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 30 May 2017 20:41:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 May 2017 20:41:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 20:41:51 GMT
USER [memcache]
# Tue, 30 May 2017 20:41:51 GMT
EXPOSE 11211/tcp
# Tue, 30 May 2017 20:41:52 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338fbb6cf27a58e389a21efe86a1e03a7254a6b4a42d94dfb473437532372d8f`  
		Last Modified: Tue, 30 May 2017 20:42:17 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:714c5ae9370a6cbc0bb6e0c2edb06842444637e1d2a49560b453111fd1b9dbcc`  
		Last Modified: Tue, 30 May 2017 20:42:17 GMT  
		Size: 1.3 MB (1292505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a1e7538d8c83ec02697d27494d6b050dcfec81c116c5eda6fc83958f19ef106`  
		Last Modified: Tue, 30 May 2017 20:42:17 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952bb42ade1c13e4f3afb4e1b1018a15dbba6dde4fdcc4feed3fde726cc46dc5`  
		Last Modified: Tue, 30 May 2017 20:42:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:00b68b00139155817a8b1d69d74865563def06b3af1e6fc79ac541a1b2f6b961
```

-	Platforms:
	-	linux; amd64

### `memcached:1-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3262079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e36e3b0dc88c4515a60083ab11e8d8520d68d59e50f5b628b427b6bb2d5405c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 20:41:31 GMT
RUN adduser -D memcache
# Tue, 30 May 2017 20:41:32 GMT
ENV MEMCACHED_VERSION=1.4.36
# Tue, 30 May 2017 20:41:33 GMT
ENV MEMCACHED_SHA1=519b417515206b0b95ff9bf14106a891f6a2252e
# Tue, 30 May 2017 20:41:46 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 	&& memcached -V
# Tue, 30 May 2017 20:41:47 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 30 May 2017 20:41:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 May 2017 20:41:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 20:41:51 GMT
USER [memcache]
# Tue, 30 May 2017 20:41:51 GMT
EXPOSE 11211/tcp
# Tue, 30 May 2017 20:41:52 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338fbb6cf27a58e389a21efe86a1e03a7254a6b4a42d94dfb473437532372d8f`  
		Last Modified: Tue, 30 May 2017 20:42:17 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:714c5ae9370a6cbc0bb6e0c2edb06842444637e1d2a49560b453111fd1b9dbcc`  
		Last Modified: Tue, 30 May 2017 20:42:17 GMT  
		Size: 1.3 MB (1292505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a1e7538d8c83ec02697d27494d6b050dcfec81c116c5eda6fc83958f19ef106`  
		Last Modified: Tue, 30 May 2017 20:42:17 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952bb42ade1c13e4f3afb4e1b1018a15dbba6dde4fdcc4feed3fde726cc46dc5`  
		Last Modified: Tue, 30 May 2017 20:42:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:00b68b00139155817a8b1d69d74865563def06b3af1e6fc79ac541a1b2f6b961
```

-	Platforms:
	-	linux; amd64

### `memcached:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3262079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e36e3b0dc88c4515a60083ab11e8d8520d68d59e50f5b628b427b6bb2d5405c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 20:41:31 GMT
RUN adduser -D memcache
# Tue, 30 May 2017 20:41:32 GMT
ENV MEMCACHED_VERSION=1.4.36
# Tue, 30 May 2017 20:41:33 GMT
ENV MEMCACHED_SHA1=519b417515206b0b95ff9bf14106a891f6a2252e
# Tue, 30 May 2017 20:41:46 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 	&& memcached -V
# Tue, 30 May 2017 20:41:47 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 30 May 2017 20:41:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 May 2017 20:41:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 20:41:51 GMT
USER [memcache]
# Tue, 30 May 2017 20:41:51 GMT
EXPOSE 11211/tcp
# Tue, 30 May 2017 20:41:52 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338fbb6cf27a58e389a21efe86a1e03a7254a6b4a42d94dfb473437532372d8f`  
		Last Modified: Tue, 30 May 2017 20:42:17 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:714c5ae9370a6cbc0bb6e0c2edb06842444637e1d2a49560b453111fd1b9dbcc`  
		Last Modified: Tue, 30 May 2017 20:42:17 GMT  
		Size: 1.3 MB (1292505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a1e7538d8c83ec02697d27494d6b050dcfec81c116c5eda6fc83958f19ef106`  
		Last Modified: Tue, 30 May 2017 20:42:17 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952bb42ade1c13e4f3afb4e1b1018a15dbba6dde4fdcc4feed3fde726cc46dc5`  
		Last Modified: Tue, 30 May 2017 20:42:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
