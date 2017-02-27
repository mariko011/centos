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
$ docker pull memcached@sha256:ccdce91a48ed679524b5ac28593b630f5216a570c1bd8cd1c979a26fb11fdaa8
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4.35` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30417210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a53690889e58ac6a59532264e59408532662fdb7cf55a023536006bb7c1474a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:33 GMT
ADD file:0eebaa293cb06f6246a998163e8a86f1100ab8666781ccac20234d5fe595a7ec in / 
# Mon, 16 Jan 2017 20:35:43 GMT
CMD ["/bin/bash"]
# Thu, 23 Feb 2017 19:34:41 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 23 Feb 2017 19:34:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 17:55:41 GMT
ENV MEMCACHED_VERSION=1.4.35
# Mon, 27 Feb 2017 17:55:41 GMT
ENV MEMCACHED_SHA1=787991c0df75defbb91518c9796f8244852a018a
# Mon, 27 Feb 2017 17:56:12 GMT
RUN set -x 	&& buildDeps=' 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure --build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 27 Feb 2017 17:56:13 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 27 Feb 2017 17:56:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 27 Feb 2017 17:56:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:56:15 GMT
USER [memcache]
# Mon, 27 Feb 2017 17:56:15 GMT
EXPOSE 11211/tcp
# Mon, 27 Feb 2017 17:56:15 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b5161f7f177227044e4f8352bd9400b6b815538e594c2b1125405fa51016ca48`  
		Last Modified: Mon, 16 Jan 2017 20:45:08 GMT  
		Size: 29.5 MB (29523366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6485b2e50a2e0ef05dce1e59f041327327b42366f9572dc26352b610d16e91dd`  
		Last Modified: Thu, 23 Feb 2017 19:35:55 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1285f50ca9cc65b8baf1eaae70ce56dfb12116987ef4001414f11541d2b9523f`  
		Last Modified: Thu, 23 Feb 2017 19:35:55 GMT  
		Size: 198.9 KB (198888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6044b94f22a204c85eb02d6c7b3ef1713372a93aeca2421f50b550b44ac441fe`  
		Last Modified: Mon, 27 Feb 2017 17:56:50 GMT  
		Size: 692.5 KB (692503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afae74027b358ad895140e05f4b0103709da07d516ad5b1135326c892ba36374`  
		Last Modified: Mon, 27 Feb 2017 17:56:50 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2265bc22d03ab9b163c4ad3cc8b20997e64aa293a54a1947d9f693499974e9`  
		Last Modified: Mon, 27 Feb 2017 17:56:50 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4`

```console
$ docker pull memcached@sha256:ccdce91a48ed679524b5ac28593b630f5216a570c1bd8cd1c979a26fb11fdaa8
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30417210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a53690889e58ac6a59532264e59408532662fdb7cf55a023536006bb7c1474a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:33 GMT
ADD file:0eebaa293cb06f6246a998163e8a86f1100ab8666781ccac20234d5fe595a7ec in / 
# Mon, 16 Jan 2017 20:35:43 GMT
CMD ["/bin/bash"]
# Thu, 23 Feb 2017 19:34:41 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 23 Feb 2017 19:34:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 17:55:41 GMT
ENV MEMCACHED_VERSION=1.4.35
# Mon, 27 Feb 2017 17:55:41 GMT
ENV MEMCACHED_SHA1=787991c0df75defbb91518c9796f8244852a018a
# Mon, 27 Feb 2017 17:56:12 GMT
RUN set -x 	&& buildDeps=' 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure --build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 27 Feb 2017 17:56:13 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 27 Feb 2017 17:56:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 27 Feb 2017 17:56:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:56:15 GMT
USER [memcache]
# Mon, 27 Feb 2017 17:56:15 GMT
EXPOSE 11211/tcp
# Mon, 27 Feb 2017 17:56:15 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b5161f7f177227044e4f8352bd9400b6b815538e594c2b1125405fa51016ca48`  
		Last Modified: Mon, 16 Jan 2017 20:45:08 GMT  
		Size: 29.5 MB (29523366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6485b2e50a2e0ef05dce1e59f041327327b42366f9572dc26352b610d16e91dd`  
		Last Modified: Thu, 23 Feb 2017 19:35:55 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1285f50ca9cc65b8baf1eaae70ce56dfb12116987ef4001414f11541d2b9523f`  
		Last Modified: Thu, 23 Feb 2017 19:35:55 GMT  
		Size: 198.9 KB (198888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6044b94f22a204c85eb02d6c7b3ef1713372a93aeca2421f50b550b44ac441fe`  
		Last Modified: Mon, 27 Feb 2017 17:56:50 GMT  
		Size: 692.5 KB (692503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afae74027b358ad895140e05f4b0103709da07d516ad5b1135326c892ba36374`  
		Last Modified: Mon, 27 Feb 2017 17:56:50 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2265bc22d03ab9b163c4ad3cc8b20997e64aa293a54a1947d9f693499974e9`  
		Last Modified: Mon, 27 Feb 2017 17:56:50 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1`

```console
$ docker pull memcached@sha256:ccdce91a48ed679524b5ac28593b630f5216a570c1bd8cd1c979a26fb11fdaa8
```

-	Platforms:
	-	linux; amd64

### `memcached:1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30417210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a53690889e58ac6a59532264e59408532662fdb7cf55a023536006bb7c1474a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:33 GMT
ADD file:0eebaa293cb06f6246a998163e8a86f1100ab8666781ccac20234d5fe595a7ec in / 
# Mon, 16 Jan 2017 20:35:43 GMT
CMD ["/bin/bash"]
# Thu, 23 Feb 2017 19:34:41 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 23 Feb 2017 19:34:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 17:55:41 GMT
ENV MEMCACHED_VERSION=1.4.35
# Mon, 27 Feb 2017 17:55:41 GMT
ENV MEMCACHED_SHA1=787991c0df75defbb91518c9796f8244852a018a
# Mon, 27 Feb 2017 17:56:12 GMT
RUN set -x 	&& buildDeps=' 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure --build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 27 Feb 2017 17:56:13 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 27 Feb 2017 17:56:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 27 Feb 2017 17:56:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:56:15 GMT
USER [memcache]
# Mon, 27 Feb 2017 17:56:15 GMT
EXPOSE 11211/tcp
# Mon, 27 Feb 2017 17:56:15 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b5161f7f177227044e4f8352bd9400b6b815538e594c2b1125405fa51016ca48`  
		Last Modified: Mon, 16 Jan 2017 20:45:08 GMT  
		Size: 29.5 MB (29523366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6485b2e50a2e0ef05dce1e59f041327327b42366f9572dc26352b610d16e91dd`  
		Last Modified: Thu, 23 Feb 2017 19:35:55 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1285f50ca9cc65b8baf1eaae70ce56dfb12116987ef4001414f11541d2b9523f`  
		Last Modified: Thu, 23 Feb 2017 19:35:55 GMT  
		Size: 198.9 KB (198888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6044b94f22a204c85eb02d6c7b3ef1713372a93aeca2421f50b550b44ac441fe`  
		Last Modified: Mon, 27 Feb 2017 17:56:50 GMT  
		Size: 692.5 KB (692503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afae74027b358ad895140e05f4b0103709da07d516ad5b1135326c892ba36374`  
		Last Modified: Mon, 27 Feb 2017 17:56:50 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2265bc22d03ab9b163c4ad3cc8b20997e64aa293a54a1947d9f693499974e9`  
		Last Modified: Mon, 27 Feb 2017 17:56:50 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:ccdce91a48ed679524b5ac28593b630f5216a570c1bd8cd1c979a26fb11fdaa8
```

-	Platforms:
	-	linux; amd64

### `memcached:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30417210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a53690889e58ac6a59532264e59408532662fdb7cf55a023536006bb7c1474a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:33 GMT
ADD file:0eebaa293cb06f6246a998163e8a86f1100ab8666781ccac20234d5fe595a7ec in / 
# Mon, 16 Jan 2017 20:35:43 GMT
CMD ["/bin/bash"]
# Thu, 23 Feb 2017 19:34:41 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 23 Feb 2017 19:34:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 17:55:41 GMT
ENV MEMCACHED_VERSION=1.4.35
# Mon, 27 Feb 2017 17:55:41 GMT
ENV MEMCACHED_SHA1=787991c0df75defbb91518c9796f8244852a018a
# Mon, 27 Feb 2017 17:56:12 GMT
RUN set -x 	&& buildDeps=' 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure --build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 27 Feb 2017 17:56:13 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 27 Feb 2017 17:56:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 27 Feb 2017 17:56:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:56:15 GMT
USER [memcache]
# Mon, 27 Feb 2017 17:56:15 GMT
EXPOSE 11211/tcp
# Mon, 27 Feb 2017 17:56:15 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b5161f7f177227044e4f8352bd9400b6b815538e594c2b1125405fa51016ca48`  
		Last Modified: Mon, 16 Jan 2017 20:45:08 GMT  
		Size: 29.5 MB (29523366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6485b2e50a2e0ef05dce1e59f041327327b42366f9572dc26352b610d16e91dd`  
		Last Modified: Thu, 23 Feb 2017 19:35:55 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1285f50ca9cc65b8baf1eaae70ce56dfb12116987ef4001414f11541d2b9523f`  
		Last Modified: Thu, 23 Feb 2017 19:35:55 GMT  
		Size: 198.9 KB (198888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6044b94f22a204c85eb02d6c7b3ef1713372a93aeca2421f50b550b44ac441fe`  
		Last Modified: Mon, 27 Feb 2017 17:56:50 GMT  
		Size: 692.5 KB (692503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afae74027b358ad895140e05f4b0103709da07d516ad5b1135326c892ba36374`  
		Last Modified: Mon, 27 Feb 2017 17:56:50 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2265bc22d03ab9b163c4ad3cc8b20997e64aa293a54a1947d9f693499974e9`  
		Last Modified: Mon, 27 Feb 2017 17:56:50 GMT  
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
