<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `memcached`

-	[`memcached:1`](#memcached1)
-	[`memcached:1.5`](#memcached15)
-	[`memcached:1.5.3`](#memcached153)
-	[`memcached:1.5.3-alpine`](#memcached153-alpine)
-	[`memcached:1.5-alpine`](#memcached15-alpine)
-	[`memcached:1-alpine`](#memcached1-alpine)
-	[`memcached:alpine`](#memcachedalpine)
-	[`memcached:latest`](#memcachedlatest)

## `memcached:1`

```console
$ docker pull memcached@sha256:2c4b20fc0b8cf366f7848e7414d306de110a931d624be05850bb0fc0e10dd5c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `memcached:1` - linux; amd64

```console
$ docker pull memcached@sha256:2023e58e6cbda5359e4e4fcb6c994f8c593334f178459918042a6c4848050617
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23469477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0946225ac4741387532f9acaa99228940eafb85feb747580b3078ce60d527f98`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:48 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Sat, 04 Nov 2017 05:26:48 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 16:11:11 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 08 Nov 2017 05:31:26 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 05:31:27 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 05:34:55 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 Nov 2017 05:34:55 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 05:34:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 05:34:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 05:34:56 GMT
USER [memcache]
# Wed, 08 Nov 2017 05:34:57 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 05:34:57 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9828a8691c462b2df051cd65720f2a7aee43b0acd306876f8c056d69991adacb`  
		Last Modified: Sat, 04 Nov 2017 16:14:54 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3974c1a289a44ea8d7392ead92e5577c674b468e35b8d7c45927f8dd0456f72f`  
		Last Modified: Wed, 08 Nov 2017 05:38:53 GMT  
		Size: 975.0 KB (974967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96389c8b7c01c82aafad23eedd09b5e2b3ea287501c7ca8df7af34dd58c57f77`  
		Last Modified: Wed, 08 Nov 2017 05:38:53 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec4d1ccb0997595af75e50ba83c78dcd89188ea2b83fb9ae7242234bf61d0cd8`  
		Last Modified: Wed, 08 Nov 2017 05:38:52 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5`

```console
$ docker pull memcached@sha256:2c4b20fc0b8cf366f7848e7414d306de110a931d624be05850bb0fc0e10dd5c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `memcached:1.5` - linux; amd64

```console
$ docker pull memcached@sha256:2023e58e6cbda5359e4e4fcb6c994f8c593334f178459918042a6c4848050617
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23469477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0946225ac4741387532f9acaa99228940eafb85feb747580b3078ce60d527f98`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:48 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Sat, 04 Nov 2017 05:26:48 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 16:11:11 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 08 Nov 2017 05:31:26 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 05:31:27 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 05:34:55 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 Nov 2017 05:34:55 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 05:34:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 05:34:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 05:34:56 GMT
USER [memcache]
# Wed, 08 Nov 2017 05:34:57 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 05:34:57 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9828a8691c462b2df051cd65720f2a7aee43b0acd306876f8c056d69991adacb`  
		Last Modified: Sat, 04 Nov 2017 16:14:54 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3974c1a289a44ea8d7392ead92e5577c674b468e35b8d7c45927f8dd0456f72f`  
		Last Modified: Wed, 08 Nov 2017 05:38:53 GMT  
		Size: 975.0 KB (974967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96389c8b7c01c82aafad23eedd09b5e2b3ea287501c7ca8df7af34dd58c57f77`  
		Last Modified: Wed, 08 Nov 2017 05:38:53 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec4d1ccb0997595af75e50ba83c78dcd89188ea2b83fb9ae7242234bf61d0cd8`  
		Last Modified: Wed, 08 Nov 2017 05:38:52 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.3`

```console
$ docker pull memcached@sha256:2c4b20fc0b8cf366f7848e7414d306de110a931d624be05850bb0fc0e10dd5c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `memcached:1.5.3` - linux; amd64

```console
$ docker pull memcached@sha256:2023e58e6cbda5359e4e4fcb6c994f8c593334f178459918042a6c4848050617
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23469477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0946225ac4741387532f9acaa99228940eafb85feb747580b3078ce60d527f98`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:48 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Sat, 04 Nov 2017 05:26:48 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 16:11:11 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 08 Nov 2017 05:31:26 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 05:31:27 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 05:34:55 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 Nov 2017 05:34:55 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 05:34:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 05:34:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 05:34:56 GMT
USER [memcache]
# Wed, 08 Nov 2017 05:34:57 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 05:34:57 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9828a8691c462b2df051cd65720f2a7aee43b0acd306876f8c056d69991adacb`  
		Last Modified: Sat, 04 Nov 2017 16:14:54 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3974c1a289a44ea8d7392ead92e5577c674b468e35b8d7c45927f8dd0456f72f`  
		Last Modified: Wed, 08 Nov 2017 05:38:53 GMT  
		Size: 975.0 KB (974967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96389c8b7c01c82aafad23eedd09b5e2b3ea287501c7ca8df7af34dd58c57f77`  
		Last Modified: Wed, 08 Nov 2017 05:38:53 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec4d1ccb0997595af75e50ba83c78dcd89188ea2b83fb9ae7242234bf61d0cd8`  
		Last Modified: Wed, 08 Nov 2017 05:38:52 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.3-alpine`

```console
$ docker pull memcached@sha256:ea8119090570a836f2c8b165ebe21687bdb709bde50c706c4b91f032afe22553
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `memcached:1.5.3-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:500d62588d7c7ec70d5c7f240faf19db60a895fbaf7238824222f891dc4e1571
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3336199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7934b99fd0185dbfa4b386ae46a11739112df4c280c5f836a2ffae248c79e9ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 01:37:44 GMT
RUN adduser -D memcache
# Wed, 08 Nov 2017 05:35:08 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 05:35:08 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 05:38:29 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 08 Nov 2017 05:38:29 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 05:38:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 05:38:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 05:38:30 GMT
USER [memcache]
# Wed, 08 Nov 2017 05:38:30 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 05:38:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18cef3dd486b3b3b30bae73f7596d0a4892089180fb63e0b5bb4d9107ad2a3c`  
		Last Modified: Sat, 04 Nov 2017 01:41:24 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca60f2d156cb0c5a5926bef56f5d9a839e50eaba0bd59ad099544b7bd6885775`  
		Last Modified: Wed, 08 Nov 2017 05:39:24 GMT  
		Size: 1.3 MB (1343116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7232d601ba00570a64456832a07d30422be9bf427bada1f28e9d138d96e96a`  
		Last Modified: Wed, 08 Nov 2017 05:39:24 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c8cfaea557fb2c462c6bce5305e74bf60a696064c741f51834186e2676cd27`  
		Last Modified: Wed, 08 Nov 2017 05:39:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5-alpine`

```console
$ docker pull memcached@sha256:ea8119090570a836f2c8b165ebe21687bdb709bde50c706c4b91f032afe22553
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `memcached:1.5-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:500d62588d7c7ec70d5c7f240faf19db60a895fbaf7238824222f891dc4e1571
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3336199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7934b99fd0185dbfa4b386ae46a11739112df4c280c5f836a2ffae248c79e9ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 01:37:44 GMT
RUN adduser -D memcache
# Wed, 08 Nov 2017 05:35:08 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 05:35:08 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 05:38:29 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 08 Nov 2017 05:38:29 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 05:38:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 05:38:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 05:38:30 GMT
USER [memcache]
# Wed, 08 Nov 2017 05:38:30 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 05:38:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18cef3dd486b3b3b30bae73f7596d0a4892089180fb63e0b5bb4d9107ad2a3c`  
		Last Modified: Sat, 04 Nov 2017 01:41:24 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca60f2d156cb0c5a5926bef56f5d9a839e50eaba0bd59ad099544b7bd6885775`  
		Last Modified: Wed, 08 Nov 2017 05:39:24 GMT  
		Size: 1.3 MB (1343116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7232d601ba00570a64456832a07d30422be9bf427bada1f28e9d138d96e96a`  
		Last Modified: Wed, 08 Nov 2017 05:39:24 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c8cfaea557fb2c462c6bce5305e74bf60a696064c741f51834186e2676cd27`  
		Last Modified: Wed, 08 Nov 2017 05:39:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:ea8119090570a836f2c8b165ebe21687bdb709bde50c706c4b91f032afe22553
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `memcached:1-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:500d62588d7c7ec70d5c7f240faf19db60a895fbaf7238824222f891dc4e1571
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3336199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7934b99fd0185dbfa4b386ae46a11739112df4c280c5f836a2ffae248c79e9ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 01:37:44 GMT
RUN adduser -D memcache
# Wed, 08 Nov 2017 05:35:08 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 05:35:08 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 05:38:29 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 08 Nov 2017 05:38:29 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 05:38:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 05:38:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 05:38:30 GMT
USER [memcache]
# Wed, 08 Nov 2017 05:38:30 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 05:38:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18cef3dd486b3b3b30bae73f7596d0a4892089180fb63e0b5bb4d9107ad2a3c`  
		Last Modified: Sat, 04 Nov 2017 01:41:24 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca60f2d156cb0c5a5926bef56f5d9a839e50eaba0bd59ad099544b7bd6885775`  
		Last Modified: Wed, 08 Nov 2017 05:39:24 GMT  
		Size: 1.3 MB (1343116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7232d601ba00570a64456832a07d30422be9bf427bada1f28e9d138d96e96a`  
		Last Modified: Wed, 08 Nov 2017 05:39:24 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c8cfaea557fb2c462c6bce5305e74bf60a696064c741f51834186e2676cd27`  
		Last Modified: Wed, 08 Nov 2017 05:39:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:ea8119090570a836f2c8b165ebe21687bdb709bde50c706c4b91f032afe22553
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `memcached:alpine` - linux; amd64

```console
$ docker pull memcached@sha256:500d62588d7c7ec70d5c7f240faf19db60a895fbaf7238824222f891dc4e1571
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3336199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7934b99fd0185dbfa4b386ae46a11739112df4c280c5f836a2ffae248c79e9ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 01:37:44 GMT
RUN adduser -D memcache
# Wed, 08 Nov 2017 05:35:08 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 05:35:08 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 05:38:29 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 08 Nov 2017 05:38:29 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 05:38:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 05:38:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 05:38:30 GMT
USER [memcache]
# Wed, 08 Nov 2017 05:38:30 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 05:38:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18cef3dd486b3b3b30bae73f7596d0a4892089180fb63e0b5bb4d9107ad2a3c`  
		Last Modified: Sat, 04 Nov 2017 01:41:24 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca60f2d156cb0c5a5926bef56f5d9a839e50eaba0bd59ad099544b7bd6885775`  
		Last Modified: Wed, 08 Nov 2017 05:39:24 GMT  
		Size: 1.3 MB (1343116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7232d601ba00570a64456832a07d30422be9bf427bada1f28e9d138d96e96a`  
		Last Modified: Wed, 08 Nov 2017 05:39:24 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c8cfaea557fb2c462c6bce5305e74bf60a696064c741f51834186e2676cd27`  
		Last Modified: Wed, 08 Nov 2017 05:39:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:2c4b20fc0b8cf366f7848e7414d306de110a931d624be05850bb0fc0e10dd5c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `memcached:latest` - linux; amd64

```console
$ docker pull memcached@sha256:2023e58e6cbda5359e4e4fcb6c994f8c593334f178459918042a6c4848050617
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23469477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0946225ac4741387532f9acaa99228940eafb85feb747580b3078ce60d527f98`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:48 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Sat, 04 Nov 2017 05:26:48 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 16:11:11 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 08 Nov 2017 05:31:26 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 05:31:27 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 05:34:55 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 Nov 2017 05:34:55 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 05:34:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 05:34:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 05:34:56 GMT
USER [memcache]
# Wed, 08 Nov 2017 05:34:57 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 05:34:57 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9828a8691c462b2df051cd65720f2a7aee43b0acd306876f8c056d69991adacb`  
		Last Modified: Sat, 04 Nov 2017 16:14:54 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3974c1a289a44ea8d7392ead92e5577c674b468e35b8d7c45927f8dd0456f72f`  
		Last Modified: Wed, 08 Nov 2017 05:38:53 GMT  
		Size: 975.0 KB (974967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96389c8b7c01c82aafad23eedd09b5e2b3ea287501c7ca8df7af34dd58c57f77`  
		Last Modified: Wed, 08 Nov 2017 05:38:53 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec4d1ccb0997595af75e50ba83c78dcd89188ea2b83fb9ae7242234bf61d0cd8`  
		Last Modified: Wed, 08 Nov 2017 05:38:52 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
