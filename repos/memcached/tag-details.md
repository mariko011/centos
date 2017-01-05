<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `memcached`

-	[`memcached:1.4.33`](#memcached1433)
-	[`memcached:1.4`](#memcached14)
-	[`memcached:1`](#memcached1)
-	[`memcached:latest`](#memcachedlatest)
-	[`memcached:1.4.33-alpine`](#memcached1433-alpine)
-	[`memcached:1.4-alpine`](#memcached14-alpine)
-	[`memcached:1-alpine`](#memcached1-alpine)
-	[`memcached:alpine`](#memcachedalpine)

## `memcached:1.4.33`

```console
$ docker pull memcached@sha256:1803dfbff8f8d084a42a963960aa3c4be26036e726280a347fc5099493a6558d
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4.33` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52236993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af4e963abb12be6fabab5ac75663a36b5316b5babd55b088c6576ab13b407aae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:03:06 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 14 Dec 2016 01:03:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:03:13 GMT
ENV MEMCACHED_VERSION=1.4.33
# Wed, 14 Dec 2016 01:03:13 GMT
ENV MEMCACHED_SHA1=e343530c55946ccbdd78c488355b02eaf90b3b46
# Wed, 14 Dec 2016 01:03:36 GMT
RUN buildDeps=' 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(nproc) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Dec 2016 01:03:36 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Dec 2016 01:03:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Dec 2016 01:03:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 01:03:37 GMT
USER [memcache]
# Wed, 14 Dec 2016 01:03:38 GMT
EXPOSE 11211/tcp
# Wed, 14 Dec 2016 01:03:38 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b78be39d94d164800f0c9a2e4a617b2281dbbfab6c2a68e9550d1b94d5c314`  
		Last Modified: Mon, 19 Dec 2016 23:56:48 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a68c6a8c3a07df4f5a8965bdb4c7a1e31e4c37eaa976e8333f9e1c370bfbafe`  
		Last Modified: Mon, 19 Dec 2016 23:56:47 GMT  
		Size: 237.9 KB (237938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c71d6cde6b2086fb07ae1362adc5e643f5bdd8f2fc5a21406190cff1e667a8`  
		Last Modified: Mon, 19 Dec 2016 23:56:47 GMT  
		Size: 633.5 KB (633484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f69f107281acfb553906a100f817eb64f9ee96069c882b644e711a05ff3f5d`  
		Last Modified: Mon, 19 Dec 2016 23:56:47 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca3f01271abdeb237da1867e05e7a3b838966d96d7cb86872ef3895fafc3f88`  
		Last Modified: Mon, 19 Dec 2016 23:56:47 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4`

```console
$ docker pull memcached@sha256:1803dfbff8f8d084a42a963960aa3c4be26036e726280a347fc5099493a6558d
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52236993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af4e963abb12be6fabab5ac75663a36b5316b5babd55b088c6576ab13b407aae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:03:06 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 14 Dec 2016 01:03:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:03:13 GMT
ENV MEMCACHED_VERSION=1.4.33
# Wed, 14 Dec 2016 01:03:13 GMT
ENV MEMCACHED_SHA1=e343530c55946ccbdd78c488355b02eaf90b3b46
# Wed, 14 Dec 2016 01:03:36 GMT
RUN buildDeps=' 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(nproc) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Dec 2016 01:03:36 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Dec 2016 01:03:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Dec 2016 01:03:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 01:03:37 GMT
USER [memcache]
# Wed, 14 Dec 2016 01:03:38 GMT
EXPOSE 11211/tcp
# Wed, 14 Dec 2016 01:03:38 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b78be39d94d164800f0c9a2e4a617b2281dbbfab6c2a68e9550d1b94d5c314`  
		Last Modified: Mon, 19 Dec 2016 23:56:48 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a68c6a8c3a07df4f5a8965bdb4c7a1e31e4c37eaa976e8333f9e1c370bfbafe`  
		Last Modified: Mon, 19 Dec 2016 23:56:47 GMT  
		Size: 237.9 KB (237938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c71d6cde6b2086fb07ae1362adc5e643f5bdd8f2fc5a21406190cff1e667a8`  
		Last Modified: Mon, 19 Dec 2016 23:56:47 GMT  
		Size: 633.5 KB (633484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f69f107281acfb553906a100f817eb64f9ee96069c882b644e711a05ff3f5d`  
		Last Modified: Mon, 19 Dec 2016 23:56:47 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca3f01271abdeb237da1867e05e7a3b838966d96d7cb86872ef3895fafc3f88`  
		Last Modified: Mon, 19 Dec 2016 23:56:47 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1`

```console
$ docker pull memcached@sha256:1803dfbff8f8d084a42a963960aa3c4be26036e726280a347fc5099493a6558d
```

-	Platforms:
	-	linux; amd64

### `memcached:1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52236993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af4e963abb12be6fabab5ac75663a36b5316b5babd55b088c6576ab13b407aae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:03:06 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 14 Dec 2016 01:03:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:03:13 GMT
ENV MEMCACHED_VERSION=1.4.33
# Wed, 14 Dec 2016 01:03:13 GMT
ENV MEMCACHED_SHA1=e343530c55946ccbdd78c488355b02eaf90b3b46
# Wed, 14 Dec 2016 01:03:36 GMT
RUN buildDeps=' 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(nproc) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Dec 2016 01:03:36 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Dec 2016 01:03:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Dec 2016 01:03:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 01:03:37 GMT
USER [memcache]
# Wed, 14 Dec 2016 01:03:38 GMT
EXPOSE 11211/tcp
# Wed, 14 Dec 2016 01:03:38 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b78be39d94d164800f0c9a2e4a617b2281dbbfab6c2a68e9550d1b94d5c314`  
		Last Modified: Mon, 19 Dec 2016 23:56:48 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a68c6a8c3a07df4f5a8965bdb4c7a1e31e4c37eaa976e8333f9e1c370bfbafe`  
		Last Modified: Mon, 19 Dec 2016 23:56:47 GMT  
		Size: 237.9 KB (237938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c71d6cde6b2086fb07ae1362adc5e643f5bdd8f2fc5a21406190cff1e667a8`  
		Last Modified: Mon, 19 Dec 2016 23:56:47 GMT  
		Size: 633.5 KB (633484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f69f107281acfb553906a100f817eb64f9ee96069c882b644e711a05ff3f5d`  
		Last Modified: Mon, 19 Dec 2016 23:56:47 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca3f01271abdeb237da1867e05e7a3b838966d96d7cb86872ef3895fafc3f88`  
		Last Modified: Mon, 19 Dec 2016 23:56:47 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:1803dfbff8f8d084a42a963960aa3c4be26036e726280a347fc5099493a6558d
```

-	Platforms:
	-	linux; amd64

### `memcached:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52236993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af4e963abb12be6fabab5ac75663a36b5316b5babd55b088c6576ab13b407aae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:03:06 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 14 Dec 2016 01:03:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:03:13 GMT
ENV MEMCACHED_VERSION=1.4.33
# Wed, 14 Dec 2016 01:03:13 GMT
ENV MEMCACHED_SHA1=e343530c55946ccbdd78c488355b02eaf90b3b46
# Wed, 14 Dec 2016 01:03:36 GMT
RUN buildDeps=' 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(nproc) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Dec 2016 01:03:36 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Dec 2016 01:03:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Dec 2016 01:03:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 01:03:37 GMT
USER [memcache]
# Wed, 14 Dec 2016 01:03:38 GMT
EXPOSE 11211/tcp
# Wed, 14 Dec 2016 01:03:38 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b78be39d94d164800f0c9a2e4a617b2281dbbfab6c2a68e9550d1b94d5c314`  
		Last Modified: Mon, 19 Dec 2016 23:56:48 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a68c6a8c3a07df4f5a8965bdb4c7a1e31e4c37eaa976e8333f9e1c370bfbafe`  
		Last Modified: Mon, 19 Dec 2016 23:56:47 GMT  
		Size: 237.9 KB (237938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c71d6cde6b2086fb07ae1362adc5e643f5bdd8f2fc5a21406190cff1e667a8`  
		Last Modified: Mon, 19 Dec 2016 23:56:47 GMT  
		Size: 633.5 KB (633484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f69f107281acfb553906a100f817eb64f9ee96069c882b644e711a05ff3f5d`  
		Last Modified: Mon, 19 Dec 2016 23:56:47 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca3f01271abdeb237da1867e05e7a3b838966d96d7cb86872ef3895fafc3f88`  
		Last Modified: Mon, 19 Dec 2016 23:56:47 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4.33-alpine`

```console
$ docker pull memcached@sha256:6154392ea95e599513d0534fcea8d99453f560dba8745ff0b7920d30146df45a
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4.33-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2371114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf052ab8fccc7d58e5fff4f4adf79af5e8a6865ae4872bb3df388a5c83c26191`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:11:39 GMT
RUN adduser -D memcache
# Wed, 04 Jan 2017 21:11:39 GMT
ENV MEMCACHED_VERSION=1.4.33
# Wed, 04 Jan 2017 21:11:40 GMT
ENV MEMCACHED_SHA1=e343530c55946ccbdd78c488355b02eaf90b3b46
# Wed, 04 Jan 2017 21:11:50 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Wed, 04 Jan 2017 21:11:50 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:11:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 04 Jan 2017 21:11:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:11:52 GMT
USER [memcache]
# Wed, 04 Jan 2017 21:11:52 GMT
EXPOSE 11211/tcp
# Wed, 04 Jan 2017 21:11:52 GMT
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
	-	`sha256:ee8f232a2503dbc27a72261793cfe1ca8e69ed042fb4d456405c4fd76fc0c79c`  
		Last Modified: Thu, 05 Jan 2017 00:08:35 GMT  
		Size: 467.4 KB (467411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c86d935f3070665813c9e0f8c813d86d3e1d742cf62008d0b225212735bebe`  
		Last Modified: Thu, 05 Jan 2017 00:08:35 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc71e892ace4b71da7cb2452b1ea351809c722419d21fb3362d0c1dc6091712`  
		Last Modified: Thu, 05 Jan 2017 00:08:35 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4-alpine`

```console
$ docker pull memcached@sha256:6154392ea95e599513d0534fcea8d99453f560dba8745ff0b7920d30146df45a
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2371114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf052ab8fccc7d58e5fff4f4adf79af5e8a6865ae4872bb3df388a5c83c26191`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:11:39 GMT
RUN adduser -D memcache
# Wed, 04 Jan 2017 21:11:39 GMT
ENV MEMCACHED_VERSION=1.4.33
# Wed, 04 Jan 2017 21:11:40 GMT
ENV MEMCACHED_SHA1=e343530c55946ccbdd78c488355b02eaf90b3b46
# Wed, 04 Jan 2017 21:11:50 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Wed, 04 Jan 2017 21:11:50 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:11:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 04 Jan 2017 21:11:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:11:52 GMT
USER [memcache]
# Wed, 04 Jan 2017 21:11:52 GMT
EXPOSE 11211/tcp
# Wed, 04 Jan 2017 21:11:52 GMT
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
	-	`sha256:ee8f232a2503dbc27a72261793cfe1ca8e69ed042fb4d456405c4fd76fc0c79c`  
		Last Modified: Thu, 05 Jan 2017 00:08:35 GMT  
		Size: 467.4 KB (467411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c86d935f3070665813c9e0f8c813d86d3e1d742cf62008d0b225212735bebe`  
		Last Modified: Thu, 05 Jan 2017 00:08:35 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc71e892ace4b71da7cb2452b1ea351809c722419d21fb3362d0c1dc6091712`  
		Last Modified: Thu, 05 Jan 2017 00:08:35 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:6154392ea95e599513d0534fcea8d99453f560dba8745ff0b7920d30146df45a
```

-	Platforms:
	-	linux; amd64

### `memcached:1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2371114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf052ab8fccc7d58e5fff4f4adf79af5e8a6865ae4872bb3df388a5c83c26191`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:11:39 GMT
RUN adduser -D memcache
# Wed, 04 Jan 2017 21:11:39 GMT
ENV MEMCACHED_VERSION=1.4.33
# Wed, 04 Jan 2017 21:11:40 GMT
ENV MEMCACHED_SHA1=e343530c55946ccbdd78c488355b02eaf90b3b46
# Wed, 04 Jan 2017 21:11:50 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Wed, 04 Jan 2017 21:11:50 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:11:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 04 Jan 2017 21:11:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:11:52 GMT
USER [memcache]
# Wed, 04 Jan 2017 21:11:52 GMT
EXPOSE 11211/tcp
# Wed, 04 Jan 2017 21:11:52 GMT
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
	-	`sha256:ee8f232a2503dbc27a72261793cfe1ca8e69ed042fb4d456405c4fd76fc0c79c`  
		Last Modified: Thu, 05 Jan 2017 00:08:35 GMT  
		Size: 467.4 KB (467411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c86d935f3070665813c9e0f8c813d86d3e1d742cf62008d0b225212735bebe`  
		Last Modified: Thu, 05 Jan 2017 00:08:35 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc71e892ace4b71da7cb2452b1ea351809c722419d21fb3362d0c1dc6091712`  
		Last Modified: Thu, 05 Jan 2017 00:08:35 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:6154392ea95e599513d0534fcea8d99453f560dba8745ff0b7920d30146df45a
```

-	Platforms:
	-	linux; amd64

### `memcached:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2371114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf052ab8fccc7d58e5fff4f4adf79af5e8a6865ae4872bb3df388a5c83c26191`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:11:39 GMT
RUN adduser -D memcache
# Wed, 04 Jan 2017 21:11:39 GMT
ENV MEMCACHED_VERSION=1.4.33
# Wed, 04 Jan 2017 21:11:40 GMT
ENV MEMCACHED_SHA1=e343530c55946ccbdd78c488355b02eaf90b3b46
# Wed, 04 Jan 2017 21:11:50 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Wed, 04 Jan 2017 21:11:50 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:11:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 04 Jan 2017 21:11:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:11:52 GMT
USER [memcache]
# Wed, 04 Jan 2017 21:11:52 GMT
EXPOSE 11211/tcp
# Wed, 04 Jan 2017 21:11:52 GMT
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
	-	`sha256:ee8f232a2503dbc27a72261793cfe1ca8e69ed042fb4d456405c4fd76fc0c79c`  
		Last Modified: Thu, 05 Jan 2017 00:08:35 GMT  
		Size: 467.4 KB (467411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c86d935f3070665813c9e0f8c813d86d3e1d742cf62008d0b225212735bebe`  
		Last Modified: Thu, 05 Jan 2017 00:08:35 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc71e892ace4b71da7cb2452b1ea351809c722419d21fb3362d0c1dc6091712`  
		Last Modified: Thu, 05 Jan 2017 00:08:35 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
