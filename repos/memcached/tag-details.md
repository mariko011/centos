<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

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
$ docker pull memcached@sha256:58f4d4aa5d9164516d8a51ba45577ba2df2a939a03e43b17cd2cb8b6d10e2e02
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4.31` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52238942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb1778ef7d3af580113eabf7a457f12ede14ce4640e49ed3564f8d41e3306d0b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 19:48:54 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 29 Jul 2016 19:49:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Mon, 22 Aug 2016 19:15:46 GMT
ENV MEMCACHED_VERSION=1.4.31
# Mon, 22 Aug 2016 19:15:47 GMT
ENV MEMCACHED_SHA1=3ea34f5bc5c5aacb76cfc07f4ee5847f33526cb6
# Mon, 22 Aug 2016 19:17:36 GMT
RUN buildDeps=' 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(nproc) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 22 Aug 2016 19:17:38 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/
# Mon, 22 Aug 2016 19:17:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 22 Aug 2016 19:17:41 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 22 Aug 2016 19:17:42 GMT
USER [memcache]
# Mon, 22 Aug 2016 19:17:43 GMT
EXPOSE 11211/tcp
# Mon, 22 Aug 2016 19:17:44 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef673e51c1fec3edd62ffd7ea49df87aeaa7f781ed02c0d4ef888ba8b438e38`  
		Last Modified: Fri, 29 Jul 2016 19:51:41 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfcd2189a7da17f5f513960091edaaf5fcea1ae5b6ba42cff17a909e62fdba7`  
		Last Modified: Fri, 29 Jul 2016 19:51:41 GMT  
		Size: 237.8 KB (237765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d0f07db7ebd95e31e3db03d9ec9b4f39d641b0afafeb1afbe54c2cf705d3bd`  
		Last Modified: Mon, 22 Aug 2016 19:18:28 GMT  
		Size: 633.1 KB (633120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fced47673b60e4570799f808cdc3b4856fa50c067354e4f1e4c7236536256c14`  
		Last Modified: Mon, 22 Aug 2016 19:18:27 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d3555f9ff2954a219d00b70998654db49c036e98d00fbd372657fc52c6cd83`  
		Last Modified: Mon, 22 Aug 2016 19:18:27 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4`

```console
$ docker pull memcached@sha256:58f4d4aa5d9164516d8a51ba45577ba2df2a939a03e43b17cd2cb8b6d10e2e02
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52238942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb1778ef7d3af580113eabf7a457f12ede14ce4640e49ed3564f8d41e3306d0b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 19:48:54 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 29 Jul 2016 19:49:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Mon, 22 Aug 2016 19:15:46 GMT
ENV MEMCACHED_VERSION=1.4.31
# Mon, 22 Aug 2016 19:15:47 GMT
ENV MEMCACHED_SHA1=3ea34f5bc5c5aacb76cfc07f4ee5847f33526cb6
# Mon, 22 Aug 2016 19:17:36 GMT
RUN buildDeps=' 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(nproc) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 22 Aug 2016 19:17:38 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/
# Mon, 22 Aug 2016 19:17:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 22 Aug 2016 19:17:41 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 22 Aug 2016 19:17:42 GMT
USER [memcache]
# Mon, 22 Aug 2016 19:17:43 GMT
EXPOSE 11211/tcp
# Mon, 22 Aug 2016 19:17:44 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef673e51c1fec3edd62ffd7ea49df87aeaa7f781ed02c0d4ef888ba8b438e38`  
		Last Modified: Fri, 29 Jul 2016 19:51:41 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfcd2189a7da17f5f513960091edaaf5fcea1ae5b6ba42cff17a909e62fdba7`  
		Last Modified: Fri, 29 Jul 2016 19:51:41 GMT  
		Size: 237.8 KB (237765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d0f07db7ebd95e31e3db03d9ec9b4f39d641b0afafeb1afbe54c2cf705d3bd`  
		Last Modified: Mon, 22 Aug 2016 19:18:28 GMT  
		Size: 633.1 KB (633120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fced47673b60e4570799f808cdc3b4856fa50c067354e4f1e4c7236536256c14`  
		Last Modified: Mon, 22 Aug 2016 19:18:27 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d3555f9ff2954a219d00b70998654db49c036e98d00fbd372657fc52c6cd83`  
		Last Modified: Mon, 22 Aug 2016 19:18:27 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1`

```console
$ docker pull memcached@sha256:58f4d4aa5d9164516d8a51ba45577ba2df2a939a03e43b17cd2cb8b6d10e2e02
```

-	Platforms:
	-	linux; amd64

### `memcached:1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52238942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb1778ef7d3af580113eabf7a457f12ede14ce4640e49ed3564f8d41e3306d0b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 19:48:54 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 29 Jul 2016 19:49:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Mon, 22 Aug 2016 19:15:46 GMT
ENV MEMCACHED_VERSION=1.4.31
# Mon, 22 Aug 2016 19:15:47 GMT
ENV MEMCACHED_SHA1=3ea34f5bc5c5aacb76cfc07f4ee5847f33526cb6
# Mon, 22 Aug 2016 19:17:36 GMT
RUN buildDeps=' 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(nproc) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 22 Aug 2016 19:17:38 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/
# Mon, 22 Aug 2016 19:17:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 22 Aug 2016 19:17:41 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 22 Aug 2016 19:17:42 GMT
USER [memcache]
# Mon, 22 Aug 2016 19:17:43 GMT
EXPOSE 11211/tcp
# Mon, 22 Aug 2016 19:17:44 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef673e51c1fec3edd62ffd7ea49df87aeaa7f781ed02c0d4ef888ba8b438e38`  
		Last Modified: Fri, 29 Jul 2016 19:51:41 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfcd2189a7da17f5f513960091edaaf5fcea1ae5b6ba42cff17a909e62fdba7`  
		Last Modified: Fri, 29 Jul 2016 19:51:41 GMT  
		Size: 237.8 KB (237765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d0f07db7ebd95e31e3db03d9ec9b4f39d641b0afafeb1afbe54c2cf705d3bd`  
		Last Modified: Mon, 22 Aug 2016 19:18:28 GMT  
		Size: 633.1 KB (633120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fced47673b60e4570799f808cdc3b4856fa50c067354e4f1e4c7236536256c14`  
		Last Modified: Mon, 22 Aug 2016 19:18:27 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d3555f9ff2954a219d00b70998654db49c036e98d00fbd372657fc52c6cd83`  
		Last Modified: Mon, 22 Aug 2016 19:18:27 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:58f4d4aa5d9164516d8a51ba45577ba2df2a939a03e43b17cd2cb8b6d10e2e02
```

-	Platforms:
	-	linux; amd64

### `memcached:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52238942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb1778ef7d3af580113eabf7a457f12ede14ce4640e49ed3564f8d41e3306d0b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 19:48:54 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 29 Jul 2016 19:49:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Mon, 22 Aug 2016 19:15:46 GMT
ENV MEMCACHED_VERSION=1.4.31
# Mon, 22 Aug 2016 19:15:47 GMT
ENV MEMCACHED_SHA1=3ea34f5bc5c5aacb76cfc07f4ee5847f33526cb6
# Mon, 22 Aug 2016 19:17:36 GMT
RUN buildDeps=' 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(nproc) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 22 Aug 2016 19:17:38 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/
# Mon, 22 Aug 2016 19:17:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 22 Aug 2016 19:17:41 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 22 Aug 2016 19:17:42 GMT
USER [memcache]
# Mon, 22 Aug 2016 19:17:43 GMT
EXPOSE 11211/tcp
# Mon, 22 Aug 2016 19:17:44 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef673e51c1fec3edd62ffd7ea49df87aeaa7f781ed02c0d4ef888ba8b438e38`  
		Last Modified: Fri, 29 Jul 2016 19:51:41 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfcd2189a7da17f5f513960091edaaf5fcea1ae5b6ba42cff17a909e62fdba7`  
		Last Modified: Fri, 29 Jul 2016 19:51:41 GMT  
		Size: 237.8 KB (237765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d0f07db7ebd95e31e3db03d9ec9b4f39d641b0afafeb1afbe54c2cf705d3bd`  
		Last Modified: Mon, 22 Aug 2016 19:18:28 GMT  
		Size: 633.1 KB (633120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fced47673b60e4570799f808cdc3b4856fa50c067354e4f1e4c7236536256c14`  
		Last Modified: Mon, 22 Aug 2016 19:18:27 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d3555f9ff2954a219d00b70998654db49c036e98d00fbd372657fc52c6cd83`  
		Last Modified: Mon, 22 Aug 2016 19:18:27 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4.31-alpine`

```console
$ docker pull memcached@sha256:035425e554c97baea6344518df9315bfe4124634d2280a18914a180dc9414207
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4.31-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3162372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa6bdd4b792bd0976e6ed4e20f95ef5ec30f9221bbfccef5e9450458862c282b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 07 Jul 2016 19:18:26 GMT
RUN adduser -D memcache
# Mon, 22 Aug 2016 19:17:46 GMT
ENV MEMCACHED_VERSION=1.4.31
# Mon, 22 Aug 2016 19:17:47 GMT
ENV MEMCACHED_SHA1=3ea34f5bc5c5aacb76cfc07f4ee5847f33526cb6
# Mon, 22 Aug 2016 19:18:05 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Mon, 22 Aug 2016 19:18:07 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/
# Mon, 22 Aug 2016 19:18:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 22 Aug 2016 19:18:11 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 22 Aug 2016 19:18:12 GMT
USER [memcache]
# Mon, 22 Aug 2016 19:18:13 GMT
EXPOSE 11211/tcp
# Mon, 22 Aug 2016 19:18:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5d1f23dbdd03b895190ee23a9ac414626c2aaed6625529b04a90dbb6fb5c78f`  
		Last Modified: Thu, 07 Jul 2016 19:19:34 GMT  
		Size: 22.2 KB (22151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f672ca8347dc7466b8b23ac82c0858ac906b4047aa619aa087b14bbca3c83ae`  
		Last Modified: Mon, 22 Aug 2016 19:19:27 GMT  
		Size: 829.5 KB (829536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eaed93954779f814eddbed37105369ce704568b7e19ccb9cf9fcfaec4c2ceb8`  
		Last Modified: Mon, 22 Aug 2016 19:19:25 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080897716bcf3047f21a5b64910bf893f3947d35cac58fc2ac66821bf9a73389`  
		Last Modified: Mon, 22 Aug 2016 19:19:25 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4-alpine`

```console
$ docker pull memcached@sha256:035425e554c97baea6344518df9315bfe4124634d2280a18914a180dc9414207
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3162372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa6bdd4b792bd0976e6ed4e20f95ef5ec30f9221bbfccef5e9450458862c282b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 07 Jul 2016 19:18:26 GMT
RUN adduser -D memcache
# Mon, 22 Aug 2016 19:17:46 GMT
ENV MEMCACHED_VERSION=1.4.31
# Mon, 22 Aug 2016 19:17:47 GMT
ENV MEMCACHED_SHA1=3ea34f5bc5c5aacb76cfc07f4ee5847f33526cb6
# Mon, 22 Aug 2016 19:18:05 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Mon, 22 Aug 2016 19:18:07 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/
# Mon, 22 Aug 2016 19:18:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 22 Aug 2016 19:18:11 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 22 Aug 2016 19:18:12 GMT
USER [memcache]
# Mon, 22 Aug 2016 19:18:13 GMT
EXPOSE 11211/tcp
# Mon, 22 Aug 2016 19:18:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5d1f23dbdd03b895190ee23a9ac414626c2aaed6625529b04a90dbb6fb5c78f`  
		Last Modified: Thu, 07 Jul 2016 19:19:34 GMT  
		Size: 22.2 KB (22151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f672ca8347dc7466b8b23ac82c0858ac906b4047aa619aa087b14bbca3c83ae`  
		Last Modified: Mon, 22 Aug 2016 19:19:27 GMT  
		Size: 829.5 KB (829536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eaed93954779f814eddbed37105369ce704568b7e19ccb9cf9fcfaec4c2ceb8`  
		Last Modified: Mon, 22 Aug 2016 19:19:25 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080897716bcf3047f21a5b64910bf893f3947d35cac58fc2ac66821bf9a73389`  
		Last Modified: Mon, 22 Aug 2016 19:19:25 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:035425e554c97baea6344518df9315bfe4124634d2280a18914a180dc9414207
```

-	Platforms:
	-	linux; amd64

### `memcached:1-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3162372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa6bdd4b792bd0976e6ed4e20f95ef5ec30f9221bbfccef5e9450458862c282b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 07 Jul 2016 19:18:26 GMT
RUN adduser -D memcache
# Mon, 22 Aug 2016 19:17:46 GMT
ENV MEMCACHED_VERSION=1.4.31
# Mon, 22 Aug 2016 19:17:47 GMT
ENV MEMCACHED_SHA1=3ea34f5bc5c5aacb76cfc07f4ee5847f33526cb6
# Mon, 22 Aug 2016 19:18:05 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Mon, 22 Aug 2016 19:18:07 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/
# Mon, 22 Aug 2016 19:18:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 22 Aug 2016 19:18:11 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 22 Aug 2016 19:18:12 GMT
USER [memcache]
# Mon, 22 Aug 2016 19:18:13 GMT
EXPOSE 11211/tcp
# Mon, 22 Aug 2016 19:18:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5d1f23dbdd03b895190ee23a9ac414626c2aaed6625529b04a90dbb6fb5c78f`  
		Last Modified: Thu, 07 Jul 2016 19:19:34 GMT  
		Size: 22.2 KB (22151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f672ca8347dc7466b8b23ac82c0858ac906b4047aa619aa087b14bbca3c83ae`  
		Last Modified: Mon, 22 Aug 2016 19:19:27 GMT  
		Size: 829.5 KB (829536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eaed93954779f814eddbed37105369ce704568b7e19ccb9cf9fcfaec4c2ceb8`  
		Last Modified: Mon, 22 Aug 2016 19:19:25 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080897716bcf3047f21a5b64910bf893f3947d35cac58fc2ac66821bf9a73389`  
		Last Modified: Mon, 22 Aug 2016 19:19:25 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:035425e554c97baea6344518df9315bfe4124634d2280a18914a180dc9414207
```

-	Platforms:
	-	linux; amd64

### `memcached:alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3162372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa6bdd4b792bd0976e6ed4e20f95ef5ec30f9221bbfccef5e9450458862c282b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 07 Jul 2016 19:18:26 GMT
RUN adduser -D memcache
# Mon, 22 Aug 2016 19:17:46 GMT
ENV MEMCACHED_VERSION=1.4.31
# Mon, 22 Aug 2016 19:17:47 GMT
ENV MEMCACHED_SHA1=3ea34f5bc5c5aacb76cfc07f4ee5847f33526cb6
# Mon, 22 Aug 2016 19:18:05 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Mon, 22 Aug 2016 19:18:07 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/
# Mon, 22 Aug 2016 19:18:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 22 Aug 2016 19:18:11 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 22 Aug 2016 19:18:12 GMT
USER [memcache]
# Mon, 22 Aug 2016 19:18:13 GMT
EXPOSE 11211/tcp
# Mon, 22 Aug 2016 19:18:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5d1f23dbdd03b895190ee23a9ac414626c2aaed6625529b04a90dbb6fb5c78f`  
		Last Modified: Thu, 07 Jul 2016 19:19:34 GMT  
		Size: 22.2 KB (22151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f672ca8347dc7466b8b23ac82c0858ac906b4047aa619aa087b14bbca3c83ae`  
		Last Modified: Mon, 22 Aug 2016 19:19:27 GMT  
		Size: 829.5 KB (829536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eaed93954779f814eddbed37105369ce704568b7e19ccb9cf9fcfaec4c2ceb8`  
		Last Modified: Mon, 22 Aug 2016 19:19:25 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080897716bcf3047f21a5b64910bf893f3947d35cac58fc2ac66821bf9a73389`  
		Last Modified: Mon, 22 Aug 2016 19:19:25 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
