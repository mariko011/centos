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

**does not exist** (yet?)

## `memcached:1.4`

```console
$ docker pull memcached@sha256:b532c2acb00289f6de2b4d31bfd1fc80c53bd78e520e7c1dc081cb8d08d25565
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52228349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:914befab115937662022d3954d9e13b5ad28077b7bd3da9650abb883d9579ab0`
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
# Tue, 16 Aug 2016 00:20:17 GMT
ENV MEMCACHED_VERSION=1.4.30
# Tue, 16 Aug 2016 00:20:18 GMT
ENV MEMCACHED_SHA1=bb8644a4110932e331d1539f0435bc6a0e558827
# Tue, 16 Aug 2016 00:21:56 GMT
RUN buildDeps=' 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(nproc) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Aug 2016 00:21:57 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/
# Tue, 16 Aug 2016 00:21:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 16 Aug 2016 00:22:00 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Tue, 16 Aug 2016 00:22:01 GMT
USER [memcache]
# Tue, 16 Aug 2016 00:22:02 GMT
EXPOSE 11211/tcp
# Tue, 16 Aug 2016 00:22:03 GMT
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
	-	`sha256:70c11f0c8c06f5381ed0664a0f34885c26076641dcb87ffc8b094413aff78d67`  
		Last Modified: Tue, 16 Aug 2016 00:22:41 GMT  
		Size: 622.5 KB (622529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f29dbaa666cd1d6e5d8a2ef5260ff875d8f39cec946eaf0ea4ebe4bc56d81681`  
		Last Modified: Tue, 16 Aug 2016 00:22:41 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ef4e5fcd63d7d6f65279f0b809defd3b6626c524ebe6ca1a8ae842a3814f0f`  
		Last Modified: Tue, 16 Aug 2016 00:22:41 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1`

```console
$ docker pull memcached@sha256:b532c2acb00289f6de2b4d31bfd1fc80c53bd78e520e7c1dc081cb8d08d25565
```

-	Platforms:
	-	linux; amd64

### `memcached:1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52228349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:914befab115937662022d3954d9e13b5ad28077b7bd3da9650abb883d9579ab0`
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
# Tue, 16 Aug 2016 00:20:17 GMT
ENV MEMCACHED_VERSION=1.4.30
# Tue, 16 Aug 2016 00:20:18 GMT
ENV MEMCACHED_SHA1=bb8644a4110932e331d1539f0435bc6a0e558827
# Tue, 16 Aug 2016 00:21:56 GMT
RUN buildDeps=' 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(nproc) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Aug 2016 00:21:57 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/
# Tue, 16 Aug 2016 00:21:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 16 Aug 2016 00:22:00 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Tue, 16 Aug 2016 00:22:01 GMT
USER [memcache]
# Tue, 16 Aug 2016 00:22:02 GMT
EXPOSE 11211/tcp
# Tue, 16 Aug 2016 00:22:03 GMT
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
	-	`sha256:70c11f0c8c06f5381ed0664a0f34885c26076641dcb87ffc8b094413aff78d67`  
		Last Modified: Tue, 16 Aug 2016 00:22:41 GMT  
		Size: 622.5 KB (622529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f29dbaa666cd1d6e5d8a2ef5260ff875d8f39cec946eaf0ea4ebe4bc56d81681`  
		Last Modified: Tue, 16 Aug 2016 00:22:41 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ef4e5fcd63d7d6f65279f0b809defd3b6626c524ebe6ca1a8ae842a3814f0f`  
		Last Modified: Tue, 16 Aug 2016 00:22:41 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:b532c2acb00289f6de2b4d31bfd1fc80c53bd78e520e7c1dc081cb8d08d25565
```

-	Platforms:
	-	linux; amd64

### `memcached:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52228349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:914befab115937662022d3954d9e13b5ad28077b7bd3da9650abb883d9579ab0`
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
# Tue, 16 Aug 2016 00:20:17 GMT
ENV MEMCACHED_VERSION=1.4.30
# Tue, 16 Aug 2016 00:20:18 GMT
ENV MEMCACHED_SHA1=bb8644a4110932e331d1539f0435bc6a0e558827
# Tue, 16 Aug 2016 00:21:56 GMT
RUN buildDeps=' 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(nproc) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Aug 2016 00:21:57 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/
# Tue, 16 Aug 2016 00:21:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 16 Aug 2016 00:22:00 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Tue, 16 Aug 2016 00:22:01 GMT
USER [memcache]
# Tue, 16 Aug 2016 00:22:02 GMT
EXPOSE 11211/tcp
# Tue, 16 Aug 2016 00:22:03 GMT
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
	-	`sha256:70c11f0c8c06f5381ed0664a0f34885c26076641dcb87ffc8b094413aff78d67`  
		Last Modified: Tue, 16 Aug 2016 00:22:41 GMT  
		Size: 622.5 KB (622529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f29dbaa666cd1d6e5d8a2ef5260ff875d8f39cec946eaf0ea4ebe4bc56d81681`  
		Last Modified: Tue, 16 Aug 2016 00:22:41 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ef4e5fcd63d7d6f65279f0b809defd3b6626c524ebe6ca1a8ae842a3814f0f`  
		Last Modified: Tue, 16 Aug 2016 00:22:41 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4.31-alpine`

**does not exist** (yet?)

## `memcached:1.4-alpine`

```console
$ docker pull memcached@sha256:bbea5de9883ee1df1ff5ace066f69a61effa29b5d90164c0a6f539727404771f
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3155820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0eaa2395ed48b5e05ade6eb14c8f1cab58afbd29d9b82df0b9fad6e9b9e1ecab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 07 Jul 2016 19:18:26 GMT
RUN adduser -D memcache
# Tue, 16 Aug 2016 00:22:04 GMT
ENV MEMCACHED_VERSION=1.4.30
# Tue, 16 Aug 2016 00:22:05 GMT
ENV MEMCACHED_SHA1=bb8644a4110932e331d1539f0435bc6a0e558827
# Tue, 16 Aug 2016 00:22:22 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Tue, 16 Aug 2016 00:22:23 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/
# Tue, 16 Aug 2016 00:22:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 16 Aug 2016 00:22:27 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Tue, 16 Aug 2016 00:22:27 GMT
USER [memcache]
# Tue, 16 Aug 2016 00:22:28 GMT
EXPOSE 11211/tcp
# Tue, 16 Aug 2016 00:22:29 GMT
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
	-	`sha256:35e3fadf7ddcad83e6f8f288e1860e1fa29319fb14be4593fd8bd0bdc55e6f4f`  
		Last Modified: Tue, 16 Aug 2016 00:23:34 GMT  
		Size: 823.0 KB (822984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344f71bbdce9c58e318b5d928c840ca1e94416ba060cb49b8a160506a1089f7f`  
		Last Modified: Tue, 16 Aug 2016 00:23:32 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:388d79234f71442e9bb7e332e9c0ff773e927c3e928740081d712c3d24b4441f`  
		Last Modified: Tue, 16 Aug 2016 00:23:31 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:bbea5de9883ee1df1ff5ace066f69a61effa29b5d90164c0a6f539727404771f
```

-	Platforms:
	-	linux; amd64

### `memcached:1-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3155820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0eaa2395ed48b5e05ade6eb14c8f1cab58afbd29d9b82df0b9fad6e9b9e1ecab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 07 Jul 2016 19:18:26 GMT
RUN adduser -D memcache
# Tue, 16 Aug 2016 00:22:04 GMT
ENV MEMCACHED_VERSION=1.4.30
# Tue, 16 Aug 2016 00:22:05 GMT
ENV MEMCACHED_SHA1=bb8644a4110932e331d1539f0435bc6a0e558827
# Tue, 16 Aug 2016 00:22:22 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Tue, 16 Aug 2016 00:22:23 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/
# Tue, 16 Aug 2016 00:22:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 16 Aug 2016 00:22:27 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Tue, 16 Aug 2016 00:22:27 GMT
USER [memcache]
# Tue, 16 Aug 2016 00:22:28 GMT
EXPOSE 11211/tcp
# Tue, 16 Aug 2016 00:22:29 GMT
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
	-	`sha256:35e3fadf7ddcad83e6f8f288e1860e1fa29319fb14be4593fd8bd0bdc55e6f4f`  
		Last Modified: Tue, 16 Aug 2016 00:23:34 GMT  
		Size: 823.0 KB (822984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344f71bbdce9c58e318b5d928c840ca1e94416ba060cb49b8a160506a1089f7f`  
		Last Modified: Tue, 16 Aug 2016 00:23:32 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:388d79234f71442e9bb7e332e9c0ff773e927c3e928740081d712c3d24b4441f`  
		Last Modified: Tue, 16 Aug 2016 00:23:31 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:bbea5de9883ee1df1ff5ace066f69a61effa29b5d90164c0a6f539727404771f
```

-	Platforms:
	-	linux; amd64

### `memcached:alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3155820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0eaa2395ed48b5e05ade6eb14c8f1cab58afbd29d9b82df0b9fad6e9b9e1ecab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 07 Jul 2016 19:18:26 GMT
RUN adduser -D memcache
# Tue, 16 Aug 2016 00:22:04 GMT
ENV MEMCACHED_VERSION=1.4.30
# Tue, 16 Aug 2016 00:22:05 GMT
ENV MEMCACHED_SHA1=bb8644a4110932e331d1539f0435bc6a0e558827
# Tue, 16 Aug 2016 00:22:22 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Tue, 16 Aug 2016 00:22:23 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/
# Tue, 16 Aug 2016 00:22:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 16 Aug 2016 00:22:27 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Tue, 16 Aug 2016 00:22:27 GMT
USER [memcache]
# Tue, 16 Aug 2016 00:22:28 GMT
EXPOSE 11211/tcp
# Tue, 16 Aug 2016 00:22:29 GMT
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
	-	`sha256:35e3fadf7ddcad83e6f8f288e1860e1fa29319fb14be4593fd8bd0bdc55e6f4f`  
		Last Modified: Tue, 16 Aug 2016 00:23:34 GMT  
		Size: 823.0 KB (822984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344f71bbdce9c58e318b5d928c840ca1e94416ba060cb49b8a160506a1089f7f`  
		Last Modified: Tue, 16 Aug 2016 00:23:32 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:388d79234f71442e9bb7e332e9c0ff773e927c3e928740081d712c3d24b4441f`  
		Last Modified: Tue, 16 Aug 2016 00:23:31 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
