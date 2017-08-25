<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `memcached`

-	[`memcached:1.5.1`](#memcached151)
-	[`memcached:1.5`](#memcached15)
-	[`memcached:1`](#memcached1)
-	[`memcached:latest`](#memcachedlatest)
-	[`memcached:1.5.1-alpine`](#memcached151-alpine)
-	[`memcached:1.5-alpine`](#memcached15-alpine)
-	[`memcached:1-alpine`](#memcached1-alpine)
-	[`memcached:alpine`](#memcachedalpine)

## `memcached:1.5.1`

```console
$ docker pull memcached@sha256:c8bc64a425a387c4500644952d8fe47f92bad3689fa3f6e9ec69e16309e3357b
```

-	Platforms:
	-	linux; amd64

### `memcached:1.5.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23468008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b057b9de580ce01fdce47c7ca1632ce03b925f9464afc0d91821b066f32204d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:05 GMT
ADD file:fa8dd9a679f473a9082dac89603a1ed7b6ad4cd20e8e996f0ac7b412d379761e in / 
# Mon, 24 Jul 2017 16:53:06 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:21:34 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 25 Aug 2017 20:51:50 GMT
ENV MEMCACHED_VERSION=1.5.1
# Fri, 25 Aug 2017 20:51:50 GMT
ENV MEMCACHED_SHA1=e5b7e4e562eb99fdfa67d71697cc6744d3e9663f
# Fri, 25 Aug 2017 20:55:15 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 25 Aug 2017 20:55:16 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 25 Aug 2017 20:55:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 25 Aug 2017 20:55:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Aug 2017 20:55:17 GMT
USER [memcache]
# Fri, 25 Aug 2017 20:55:17 GMT
EXPOSE 11211/tcp
# Fri, 25 Aug 2017 20:55:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:94ed0c431eb58b1c824715ac158d102bc78b5eb9d690579da5d8bc96b190eb67`  
		Last Modified: Mon, 24 Jul 2017 17:00:05 GMT  
		Size: 22.5 MB (22491744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80862c1451d5be50df36f4ac8bde30684f09b36c7ba47d622d96ce23029605f9`  
		Last Modified: Wed, 26 Jul 2017 06:25:44 GMT  
		Size: 1.7 KB (1720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5fe076b165e7c6572682b9aeea1ed595196003eebeb5e9eb0f15b204e8d1e41`  
		Last Modified: Fri, 25 Aug 2017 20:58:46 GMT  
		Size: 974.1 KB (974134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f2c9f7f57c9a2a1649f4eb7dfec5641557e94f76fe526a027ffe077eb1aab2`  
		Last Modified: Fri, 25 Aug 2017 20:58:45 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db28b8155c2cdeaf870200ce23ddbe5dcfc79c41a811435f5bd14de031583505`  
		Last Modified: Fri, 25 Aug 2017 20:58:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5`

```console
$ docker pull memcached@sha256:c8bc64a425a387c4500644952d8fe47f92bad3689fa3f6e9ec69e16309e3357b
```

-	Platforms:
	-	linux; amd64

### `memcached:1.5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23468008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b057b9de580ce01fdce47c7ca1632ce03b925f9464afc0d91821b066f32204d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:05 GMT
ADD file:fa8dd9a679f473a9082dac89603a1ed7b6ad4cd20e8e996f0ac7b412d379761e in / 
# Mon, 24 Jul 2017 16:53:06 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:21:34 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 25 Aug 2017 20:51:50 GMT
ENV MEMCACHED_VERSION=1.5.1
# Fri, 25 Aug 2017 20:51:50 GMT
ENV MEMCACHED_SHA1=e5b7e4e562eb99fdfa67d71697cc6744d3e9663f
# Fri, 25 Aug 2017 20:55:15 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 25 Aug 2017 20:55:16 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 25 Aug 2017 20:55:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 25 Aug 2017 20:55:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Aug 2017 20:55:17 GMT
USER [memcache]
# Fri, 25 Aug 2017 20:55:17 GMT
EXPOSE 11211/tcp
# Fri, 25 Aug 2017 20:55:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:94ed0c431eb58b1c824715ac158d102bc78b5eb9d690579da5d8bc96b190eb67`  
		Last Modified: Mon, 24 Jul 2017 17:00:05 GMT  
		Size: 22.5 MB (22491744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80862c1451d5be50df36f4ac8bde30684f09b36c7ba47d622d96ce23029605f9`  
		Last Modified: Wed, 26 Jul 2017 06:25:44 GMT  
		Size: 1.7 KB (1720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5fe076b165e7c6572682b9aeea1ed595196003eebeb5e9eb0f15b204e8d1e41`  
		Last Modified: Fri, 25 Aug 2017 20:58:46 GMT  
		Size: 974.1 KB (974134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f2c9f7f57c9a2a1649f4eb7dfec5641557e94f76fe526a027ffe077eb1aab2`  
		Last Modified: Fri, 25 Aug 2017 20:58:45 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db28b8155c2cdeaf870200ce23ddbe5dcfc79c41a811435f5bd14de031583505`  
		Last Modified: Fri, 25 Aug 2017 20:58:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1`

```console
$ docker pull memcached@sha256:c8bc64a425a387c4500644952d8fe47f92bad3689fa3f6e9ec69e16309e3357b
```

-	Platforms:
	-	linux; amd64

### `memcached:1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23468008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b057b9de580ce01fdce47c7ca1632ce03b925f9464afc0d91821b066f32204d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:05 GMT
ADD file:fa8dd9a679f473a9082dac89603a1ed7b6ad4cd20e8e996f0ac7b412d379761e in / 
# Mon, 24 Jul 2017 16:53:06 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:21:34 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 25 Aug 2017 20:51:50 GMT
ENV MEMCACHED_VERSION=1.5.1
# Fri, 25 Aug 2017 20:51:50 GMT
ENV MEMCACHED_SHA1=e5b7e4e562eb99fdfa67d71697cc6744d3e9663f
# Fri, 25 Aug 2017 20:55:15 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 25 Aug 2017 20:55:16 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 25 Aug 2017 20:55:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 25 Aug 2017 20:55:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Aug 2017 20:55:17 GMT
USER [memcache]
# Fri, 25 Aug 2017 20:55:17 GMT
EXPOSE 11211/tcp
# Fri, 25 Aug 2017 20:55:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:94ed0c431eb58b1c824715ac158d102bc78b5eb9d690579da5d8bc96b190eb67`  
		Last Modified: Mon, 24 Jul 2017 17:00:05 GMT  
		Size: 22.5 MB (22491744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80862c1451d5be50df36f4ac8bde30684f09b36c7ba47d622d96ce23029605f9`  
		Last Modified: Wed, 26 Jul 2017 06:25:44 GMT  
		Size: 1.7 KB (1720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5fe076b165e7c6572682b9aeea1ed595196003eebeb5e9eb0f15b204e8d1e41`  
		Last Modified: Fri, 25 Aug 2017 20:58:46 GMT  
		Size: 974.1 KB (974134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f2c9f7f57c9a2a1649f4eb7dfec5641557e94f76fe526a027ffe077eb1aab2`  
		Last Modified: Fri, 25 Aug 2017 20:58:45 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db28b8155c2cdeaf870200ce23ddbe5dcfc79c41a811435f5bd14de031583505`  
		Last Modified: Fri, 25 Aug 2017 20:58:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:c8bc64a425a387c4500644952d8fe47f92bad3689fa3f6e9ec69e16309e3357b
```

-	Platforms:
	-	linux; amd64

### `memcached:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23468008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b057b9de580ce01fdce47c7ca1632ce03b925f9464afc0d91821b066f32204d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:05 GMT
ADD file:fa8dd9a679f473a9082dac89603a1ed7b6ad4cd20e8e996f0ac7b412d379761e in / 
# Mon, 24 Jul 2017 16:53:06 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:21:34 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 25 Aug 2017 20:51:50 GMT
ENV MEMCACHED_VERSION=1.5.1
# Fri, 25 Aug 2017 20:51:50 GMT
ENV MEMCACHED_SHA1=e5b7e4e562eb99fdfa67d71697cc6744d3e9663f
# Fri, 25 Aug 2017 20:55:15 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 25 Aug 2017 20:55:16 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 25 Aug 2017 20:55:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 25 Aug 2017 20:55:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Aug 2017 20:55:17 GMT
USER [memcache]
# Fri, 25 Aug 2017 20:55:17 GMT
EXPOSE 11211/tcp
# Fri, 25 Aug 2017 20:55:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:94ed0c431eb58b1c824715ac158d102bc78b5eb9d690579da5d8bc96b190eb67`  
		Last Modified: Mon, 24 Jul 2017 17:00:05 GMT  
		Size: 22.5 MB (22491744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80862c1451d5be50df36f4ac8bde30684f09b36c7ba47d622d96ce23029605f9`  
		Last Modified: Wed, 26 Jul 2017 06:25:44 GMT  
		Size: 1.7 KB (1720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5fe076b165e7c6572682b9aeea1ed595196003eebeb5e9eb0f15b204e8d1e41`  
		Last Modified: Fri, 25 Aug 2017 20:58:46 GMT  
		Size: 974.1 KB (974134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f2c9f7f57c9a2a1649f4eb7dfec5641557e94f76fe526a027ffe077eb1aab2`  
		Last Modified: Fri, 25 Aug 2017 20:58:45 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db28b8155c2cdeaf870200ce23ddbe5dcfc79c41a811435f5bd14de031583505`  
		Last Modified: Fri, 25 Aug 2017 20:58:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.1-alpine`

```console
$ docker pull memcached@sha256:b127d253bfc3cc935e8b6df13abfd0765daaf0f7fae1a5927b8f8c41a640e0aa
```

-	Platforms:
	-	linux; amd64

### `memcached:1.5.1-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3724711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0525495f0cef0d383fe896720f29145429964c821d3432fcc7f3bdd970406dc1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 18 Jul 2017 23:06:28 GMT
RUN adduser -D memcache
# Fri, 25 Aug 2017 20:55:22 GMT
ENV MEMCACHED_VERSION=1.5.1
# Fri, 25 Aug 2017 20:55:23 GMT
ENV MEMCACHED_SHA1=e5b7e4e562eb99fdfa67d71697cc6744d3e9663f
# Fri, 25 Aug 2017 20:58:35 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 25 Aug 2017 20:58:36 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 25 Aug 2017 20:58:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 25 Aug 2017 20:58:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Aug 2017 20:58:37 GMT
USER [memcache]
# Fri, 25 Aug 2017 20:58:37 GMT
EXPOSE 11211/tcp
# Fri, 25 Aug 2017 20:58:37 GMT
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
	-	`sha256:9fb0a75ca746e5956b437e70b812f8e12f0b67c96ab5766588f0a404201ab757`  
		Last Modified: Fri, 25 Aug 2017 20:59:14 GMT  
		Size: 1.7 MB (1732660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e91ddfe3013db656be2c7b3aa3bcf631f00dee5720f7573059403619ff2a5b`  
		Last Modified: Fri, 25 Aug 2017 20:59:13 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e874995c6525a7555340ae553f855aa965cc847002e215df5b213516499260`  
		Last Modified: Fri, 25 Aug 2017 20:59:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5-alpine`

```console
$ docker pull memcached@sha256:b127d253bfc3cc935e8b6df13abfd0765daaf0f7fae1a5927b8f8c41a640e0aa
```

-	Platforms:
	-	linux; amd64

### `memcached:1.5-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3724711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0525495f0cef0d383fe896720f29145429964c821d3432fcc7f3bdd970406dc1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 18 Jul 2017 23:06:28 GMT
RUN adduser -D memcache
# Fri, 25 Aug 2017 20:55:22 GMT
ENV MEMCACHED_VERSION=1.5.1
# Fri, 25 Aug 2017 20:55:23 GMT
ENV MEMCACHED_SHA1=e5b7e4e562eb99fdfa67d71697cc6744d3e9663f
# Fri, 25 Aug 2017 20:58:35 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 25 Aug 2017 20:58:36 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 25 Aug 2017 20:58:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 25 Aug 2017 20:58:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Aug 2017 20:58:37 GMT
USER [memcache]
# Fri, 25 Aug 2017 20:58:37 GMT
EXPOSE 11211/tcp
# Fri, 25 Aug 2017 20:58:37 GMT
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
	-	`sha256:9fb0a75ca746e5956b437e70b812f8e12f0b67c96ab5766588f0a404201ab757`  
		Last Modified: Fri, 25 Aug 2017 20:59:14 GMT  
		Size: 1.7 MB (1732660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e91ddfe3013db656be2c7b3aa3bcf631f00dee5720f7573059403619ff2a5b`  
		Last Modified: Fri, 25 Aug 2017 20:59:13 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e874995c6525a7555340ae553f855aa965cc847002e215df5b213516499260`  
		Last Modified: Fri, 25 Aug 2017 20:59:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:b127d253bfc3cc935e8b6df13abfd0765daaf0f7fae1a5927b8f8c41a640e0aa
```

-	Platforms:
	-	linux; amd64

### `memcached:1-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3724711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0525495f0cef0d383fe896720f29145429964c821d3432fcc7f3bdd970406dc1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 18 Jul 2017 23:06:28 GMT
RUN adduser -D memcache
# Fri, 25 Aug 2017 20:55:22 GMT
ENV MEMCACHED_VERSION=1.5.1
# Fri, 25 Aug 2017 20:55:23 GMT
ENV MEMCACHED_SHA1=e5b7e4e562eb99fdfa67d71697cc6744d3e9663f
# Fri, 25 Aug 2017 20:58:35 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 25 Aug 2017 20:58:36 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 25 Aug 2017 20:58:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 25 Aug 2017 20:58:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Aug 2017 20:58:37 GMT
USER [memcache]
# Fri, 25 Aug 2017 20:58:37 GMT
EXPOSE 11211/tcp
# Fri, 25 Aug 2017 20:58:37 GMT
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
	-	`sha256:9fb0a75ca746e5956b437e70b812f8e12f0b67c96ab5766588f0a404201ab757`  
		Last Modified: Fri, 25 Aug 2017 20:59:14 GMT  
		Size: 1.7 MB (1732660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e91ddfe3013db656be2c7b3aa3bcf631f00dee5720f7573059403619ff2a5b`  
		Last Modified: Fri, 25 Aug 2017 20:59:13 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e874995c6525a7555340ae553f855aa965cc847002e215df5b213516499260`  
		Last Modified: Fri, 25 Aug 2017 20:59:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:b127d253bfc3cc935e8b6df13abfd0765daaf0f7fae1a5927b8f8c41a640e0aa
```

-	Platforms:
	-	linux; amd64

### `memcached:alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3724711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0525495f0cef0d383fe896720f29145429964c821d3432fcc7f3bdd970406dc1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 18 Jul 2017 23:06:28 GMT
RUN adduser -D memcache
# Fri, 25 Aug 2017 20:55:22 GMT
ENV MEMCACHED_VERSION=1.5.1
# Fri, 25 Aug 2017 20:55:23 GMT
ENV MEMCACHED_SHA1=e5b7e4e562eb99fdfa67d71697cc6744d3e9663f
# Fri, 25 Aug 2017 20:58:35 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 25 Aug 2017 20:58:36 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 25 Aug 2017 20:58:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 25 Aug 2017 20:58:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Aug 2017 20:58:37 GMT
USER [memcache]
# Fri, 25 Aug 2017 20:58:37 GMT
EXPOSE 11211/tcp
# Fri, 25 Aug 2017 20:58:37 GMT
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
	-	`sha256:9fb0a75ca746e5956b437e70b812f8e12f0b67c96ab5766588f0a404201ab757`  
		Last Modified: Fri, 25 Aug 2017 20:59:14 GMT  
		Size: 1.7 MB (1732660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e91ddfe3013db656be2c7b3aa3bcf631f00dee5720f7573059403619ff2a5b`  
		Last Modified: Fri, 25 Aug 2017 20:59:13 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e874995c6525a7555340ae553f855aa965cc847002e215df5b213516499260`  
		Last Modified: Fri, 25 Aug 2017 20:59:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
