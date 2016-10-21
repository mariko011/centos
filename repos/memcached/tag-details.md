<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `memcached`

-	[`memcached:1.4.32`](#memcached1432)
-	[`memcached:1.4`](#memcached14)
-	[`memcached:1`](#memcached1)
-	[`memcached:latest`](#memcachedlatest)
-	[`memcached:1.4.32-alpine`](#memcached1432-alpine)
-	[`memcached:1.4-alpine`](#memcached14-alpine)
-	[`memcached:1-alpine`](#memcached1-alpine)
-	[`memcached:alpine`](#memcachedalpine)

## `memcached:1.4.32`

```console
$ docker pull memcached@sha256:c227df5a7c824dd054ede097962b3cb347575aeb97caf3ef6c34e581cd6d31fa
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4.32` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52226007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f410ea4110a366484652455ed5ef7c52dc3a88be8c26c7d6cd07f5093a1a034c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:39:50 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 21 Oct 2016 20:39:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:39:57 GMT
ENV MEMCACHED_VERSION=1.4.32
# Fri, 21 Oct 2016 20:39:57 GMT
ENV MEMCACHED_SHA1=cbec6b533fe037b5ad5c54d111e0d30bc9db4424
# Fri, 21 Oct 2016 20:40:21 GMT
RUN buildDeps=' 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(nproc) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 21 Oct 2016 20:40:22 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 21 Oct 2016 20:40:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Oct 2016 20:40:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Oct 2016 20:40:23 GMT
USER [memcache]
# Fri, 21 Oct 2016 20:40:24 GMT
EXPOSE 11211/tcp
# Fri, 21 Oct 2016 20:40:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b25e9455e95f58fccd1d83a551892751c947971463c861740fb66283a26005`  
		Last Modified: Fri, 21 Oct 2016 20:40:33 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add2ca9ff2c6144b4c19f9dd559987e81669305e5a9a93df3585f203ce296a79`  
		Last Modified: Fri, 21 Oct 2016 20:40:35 GMT  
		Size: 237.6 KB (237574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e984816f0d68d09542381958e59d9be8a738b3da29013b93868111a7a731f7`  
		Last Modified: Fri, 21 Oct 2016 20:40:34 GMT  
		Size: 632.9 KB (632856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1f468397f921596a9397e6922f6a0363373493cbf848167f5450bc0f85f1867`  
		Last Modified: Fri, 21 Oct 2016 20:40:33 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc1e1b5d1150147fba0f087aa381ee44da64b4d19a8ae53cabf45db52594e6a`  
		Last Modified: Fri, 21 Oct 2016 20:40:33 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4`

```console
$ docker pull memcached@sha256:c227df5a7c824dd054ede097962b3cb347575aeb97caf3ef6c34e581cd6d31fa
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52226007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f410ea4110a366484652455ed5ef7c52dc3a88be8c26c7d6cd07f5093a1a034c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:39:50 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 21 Oct 2016 20:39:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:39:57 GMT
ENV MEMCACHED_VERSION=1.4.32
# Fri, 21 Oct 2016 20:39:57 GMT
ENV MEMCACHED_SHA1=cbec6b533fe037b5ad5c54d111e0d30bc9db4424
# Fri, 21 Oct 2016 20:40:21 GMT
RUN buildDeps=' 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(nproc) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 21 Oct 2016 20:40:22 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 21 Oct 2016 20:40:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Oct 2016 20:40:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Oct 2016 20:40:23 GMT
USER [memcache]
# Fri, 21 Oct 2016 20:40:24 GMT
EXPOSE 11211/tcp
# Fri, 21 Oct 2016 20:40:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b25e9455e95f58fccd1d83a551892751c947971463c861740fb66283a26005`  
		Last Modified: Fri, 21 Oct 2016 20:40:33 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add2ca9ff2c6144b4c19f9dd559987e81669305e5a9a93df3585f203ce296a79`  
		Last Modified: Fri, 21 Oct 2016 20:40:35 GMT  
		Size: 237.6 KB (237574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e984816f0d68d09542381958e59d9be8a738b3da29013b93868111a7a731f7`  
		Last Modified: Fri, 21 Oct 2016 20:40:34 GMT  
		Size: 632.9 KB (632856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1f468397f921596a9397e6922f6a0363373493cbf848167f5450bc0f85f1867`  
		Last Modified: Fri, 21 Oct 2016 20:40:33 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc1e1b5d1150147fba0f087aa381ee44da64b4d19a8ae53cabf45db52594e6a`  
		Last Modified: Fri, 21 Oct 2016 20:40:33 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1`

```console
$ docker pull memcached@sha256:c227df5a7c824dd054ede097962b3cb347575aeb97caf3ef6c34e581cd6d31fa
```

-	Platforms:
	-	linux; amd64

### `memcached:1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52226007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f410ea4110a366484652455ed5ef7c52dc3a88be8c26c7d6cd07f5093a1a034c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:39:50 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 21 Oct 2016 20:39:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:39:57 GMT
ENV MEMCACHED_VERSION=1.4.32
# Fri, 21 Oct 2016 20:39:57 GMT
ENV MEMCACHED_SHA1=cbec6b533fe037b5ad5c54d111e0d30bc9db4424
# Fri, 21 Oct 2016 20:40:21 GMT
RUN buildDeps=' 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(nproc) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 21 Oct 2016 20:40:22 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 21 Oct 2016 20:40:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Oct 2016 20:40:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Oct 2016 20:40:23 GMT
USER [memcache]
# Fri, 21 Oct 2016 20:40:24 GMT
EXPOSE 11211/tcp
# Fri, 21 Oct 2016 20:40:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b25e9455e95f58fccd1d83a551892751c947971463c861740fb66283a26005`  
		Last Modified: Fri, 21 Oct 2016 20:40:33 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add2ca9ff2c6144b4c19f9dd559987e81669305e5a9a93df3585f203ce296a79`  
		Last Modified: Fri, 21 Oct 2016 20:40:35 GMT  
		Size: 237.6 KB (237574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e984816f0d68d09542381958e59d9be8a738b3da29013b93868111a7a731f7`  
		Last Modified: Fri, 21 Oct 2016 20:40:34 GMT  
		Size: 632.9 KB (632856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1f468397f921596a9397e6922f6a0363373493cbf848167f5450bc0f85f1867`  
		Last Modified: Fri, 21 Oct 2016 20:40:33 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc1e1b5d1150147fba0f087aa381ee44da64b4d19a8ae53cabf45db52594e6a`  
		Last Modified: Fri, 21 Oct 2016 20:40:33 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:c227df5a7c824dd054ede097962b3cb347575aeb97caf3ef6c34e581cd6d31fa
```

-	Platforms:
	-	linux; amd64

### `memcached:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52226007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f410ea4110a366484652455ed5ef7c52dc3a88be8c26c7d6cd07f5093a1a034c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:39:50 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 21 Oct 2016 20:39:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:39:57 GMT
ENV MEMCACHED_VERSION=1.4.32
# Fri, 21 Oct 2016 20:39:57 GMT
ENV MEMCACHED_SHA1=cbec6b533fe037b5ad5c54d111e0d30bc9db4424
# Fri, 21 Oct 2016 20:40:21 GMT
RUN buildDeps=' 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(nproc) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 21 Oct 2016 20:40:22 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 21 Oct 2016 20:40:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Oct 2016 20:40:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Oct 2016 20:40:23 GMT
USER [memcache]
# Fri, 21 Oct 2016 20:40:24 GMT
EXPOSE 11211/tcp
# Fri, 21 Oct 2016 20:40:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b25e9455e95f58fccd1d83a551892751c947971463c861740fb66283a26005`  
		Last Modified: Fri, 21 Oct 2016 20:40:33 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add2ca9ff2c6144b4c19f9dd559987e81669305e5a9a93df3585f203ce296a79`  
		Last Modified: Fri, 21 Oct 2016 20:40:35 GMT  
		Size: 237.6 KB (237574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e984816f0d68d09542381958e59d9be8a738b3da29013b93868111a7a731f7`  
		Last Modified: Fri, 21 Oct 2016 20:40:34 GMT  
		Size: 632.9 KB (632856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1f468397f921596a9397e6922f6a0363373493cbf848167f5450bc0f85f1867`  
		Last Modified: Fri, 21 Oct 2016 20:40:33 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc1e1b5d1150147fba0f087aa381ee44da64b4d19a8ae53cabf45db52594e6a`  
		Last Modified: Fri, 21 Oct 2016 20:40:33 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4.32-alpine`

```console
$ docker pull memcached@sha256:24f1570aa262b33edf734d11b0f91afa06a15559f24e31d09b841efbbc580dc7
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4.32-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2765181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31547e0bbcbcb77482abe35ad1f66c753c5bcd34e594324ae89b4e082f73332e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:40:04 GMT
RUN adduser -D memcache
# Tue, 18 Oct 2016 23:40:04 GMT
ENV MEMCACHED_VERSION=1.4.32
# Tue, 18 Oct 2016 23:40:05 GMT
ENV MEMCACHED_SHA1=cbec6b533fe037b5ad5c54d111e0d30bc9db4424
# Tue, 18 Oct 2016 23:40:15 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Tue, 18 Oct 2016 23:40:15 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:40:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 18 Oct 2016 23:40:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:40:17 GMT
USER [memcache]
# Tue, 18 Oct 2016 23:40:17 GMT
EXPOSE 11211/tcp
# Tue, 18 Oct 2016 23:40:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d26aef1141b9e4fe2b84250163510b81fd1c927fe18de872ecbe4cba158b8b1`  
		Last Modified: Tue, 18 Oct 2016 23:40:27 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8181a20168d1190291fb306f610b0dd080a9726bb956a6b74cf1479bbdd24f`  
		Last Modified: Tue, 18 Oct 2016 23:40:27 GMT  
		Size: 450.6 KB (450563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d36c175ac02484b2b2ca4531d455333fdc60e60da2147c5f6fc8fa3bb31b0b`  
		Last Modified: Tue, 18 Oct 2016 23:40:26 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178da79e7ef1cdd899ea5aa892237eae946428f913da2391fdd56c0f1f94af4c`  
		Last Modified: Tue, 18 Oct 2016 23:40:27 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4-alpine`

```console
$ docker pull memcached@sha256:24f1570aa262b33edf734d11b0f91afa06a15559f24e31d09b841efbbc580dc7
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2765181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31547e0bbcbcb77482abe35ad1f66c753c5bcd34e594324ae89b4e082f73332e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:40:04 GMT
RUN adduser -D memcache
# Tue, 18 Oct 2016 23:40:04 GMT
ENV MEMCACHED_VERSION=1.4.32
# Tue, 18 Oct 2016 23:40:05 GMT
ENV MEMCACHED_SHA1=cbec6b533fe037b5ad5c54d111e0d30bc9db4424
# Tue, 18 Oct 2016 23:40:15 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Tue, 18 Oct 2016 23:40:15 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:40:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 18 Oct 2016 23:40:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:40:17 GMT
USER [memcache]
# Tue, 18 Oct 2016 23:40:17 GMT
EXPOSE 11211/tcp
# Tue, 18 Oct 2016 23:40:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d26aef1141b9e4fe2b84250163510b81fd1c927fe18de872ecbe4cba158b8b1`  
		Last Modified: Tue, 18 Oct 2016 23:40:27 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8181a20168d1190291fb306f610b0dd080a9726bb956a6b74cf1479bbdd24f`  
		Last Modified: Tue, 18 Oct 2016 23:40:27 GMT  
		Size: 450.6 KB (450563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d36c175ac02484b2b2ca4531d455333fdc60e60da2147c5f6fc8fa3bb31b0b`  
		Last Modified: Tue, 18 Oct 2016 23:40:26 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178da79e7ef1cdd899ea5aa892237eae946428f913da2391fdd56c0f1f94af4c`  
		Last Modified: Tue, 18 Oct 2016 23:40:27 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:24f1570aa262b33edf734d11b0f91afa06a15559f24e31d09b841efbbc580dc7
```

-	Platforms:
	-	linux; amd64

### `memcached:1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2765181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31547e0bbcbcb77482abe35ad1f66c753c5bcd34e594324ae89b4e082f73332e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:40:04 GMT
RUN adduser -D memcache
# Tue, 18 Oct 2016 23:40:04 GMT
ENV MEMCACHED_VERSION=1.4.32
# Tue, 18 Oct 2016 23:40:05 GMT
ENV MEMCACHED_SHA1=cbec6b533fe037b5ad5c54d111e0d30bc9db4424
# Tue, 18 Oct 2016 23:40:15 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Tue, 18 Oct 2016 23:40:15 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:40:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 18 Oct 2016 23:40:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:40:17 GMT
USER [memcache]
# Tue, 18 Oct 2016 23:40:17 GMT
EXPOSE 11211/tcp
# Tue, 18 Oct 2016 23:40:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d26aef1141b9e4fe2b84250163510b81fd1c927fe18de872ecbe4cba158b8b1`  
		Last Modified: Tue, 18 Oct 2016 23:40:27 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8181a20168d1190291fb306f610b0dd080a9726bb956a6b74cf1479bbdd24f`  
		Last Modified: Tue, 18 Oct 2016 23:40:27 GMT  
		Size: 450.6 KB (450563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d36c175ac02484b2b2ca4531d455333fdc60e60da2147c5f6fc8fa3bb31b0b`  
		Last Modified: Tue, 18 Oct 2016 23:40:26 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178da79e7ef1cdd899ea5aa892237eae946428f913da2391fdd56c0f1f94af4c`  
		Last Modified: Tue, 18 Oct 2016 23:40:27 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:24f1570aa262b33edf734d11b0f91afa06a15559f24e31d09b841efbbc580dc7
```

-	Platforms:
	-	linux; amd64

### `memcached:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2765181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31547e0bbcbcb77482abe35ad1f66c753c5bcd34e594324ae89b4e082f73332e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:40:04 GMT
RUN adduser -D memcache
# Tue, 18 Oct 2016 23:40:04 GMT
ENV MEMCACHED_VERSION=1.4.32
# Tue, 18 Oct 2016 23:40:05 GMT
ENV MEMCACHED_SHA1=cbec6b533fe037b5ad5c54d111e0d30bc9db4424
# Tue, 18 Oct 2016 23:40:15 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Tue, 18 Oct 2016 23:40:15 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:40:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 18 Oct 2016 23:40:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:40:17 GMT
USER [memcache]
# Tue, 18 Oct 2016 23:40:17 GMT
EXPOSE 11211/tcp
# Tue, 18 Oct 2016 23:40:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d26aef1141b9e4fe2b84250163510b81fd1c927fe18de872ecbe4cba158b8b1`  
		Last Modified: Tue, 18 Oct 2016 23:40:27 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8181a20168d1190291fb306f610b0dd080a9726bb956a6b74cf1479bbdd24f`  
		Last Modified: Tue, 18 Oct 2016 23:40:27 GMT  
		Size: 450.6 KB (450563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d36c175ac02484b2b2ca4531d455333fdc60e60da2147c5f6fc8fa3bb31b0b`  
		Last Modified: Tue, 18 Oct 2016 23:40:26 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178da79e7ef1cdd899ea5aa892237eae946428f913da2391fdd56c0f1f94af4c`  
		Last Modified: Tue, 18 Oct 2016 23:40:27 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
