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
$ docker pull memcached@sha256:4629c0529e714e895682afb21e682bb5ae4488436bc3eb354ec01f823b32ed7b
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4.32` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52227251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f884c561622f3aff26599df3e671ebbe5be91b28affcd8223def11a3de0213ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 20:03:22 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 23 Sep 2016 20:03:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Oct 2016 17:36:08 GMT
ENV MEMCACHED_VERSION=1.4.32
# Fri, 14 Oct 2016 17:36:08 GMT
ENV MEMCACHED_SHA1=cbec6b533fe037b5ad5c54d111e0d30bc9db4424
# Fri, 14 Oct 2016 17:36:41 GMT
RUN buildDeps=' 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(nproc) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 14 Oct 2016 17:36:42 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:36:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 14 Oct 2016 17:36:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:36:43 GMT
USER [memcache]
# Fri, 14 Oct 2016 17:36:44 GMT
EXPOSE 11211/tcp
# Fri, 14 Oct 2016 17:36:44 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5454a3272872da62e6bde09965cd50c416577f47324958c699a36c733b84ea8e`  
		Last Modified: Fri, 23 Sep 2016 20:04:08 GMT  
		Size: 2.0 KB (2039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a4deb16fc7c45fd59208bfb892b4c642398690fd82fa3719358f60f5b6b13b`  
		Last Modified: Fri, 23 Sep 2016 20:04:08 GMT  
		Size: 237.6 KB (237564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4883a82dc506d0d672e063f51c90f1efe6b05845ad45f9cf867d6f7c9077ff2b`  
		Last Modified: Fri, 14 Oct 2016 17:37:07 GMT  
		Size: 632.9 KB (632878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edffa9b18f4b164f377ea9b05c04a9f0af00d9f79d5e8cb88a107117dbf930d7`  
		Last Modified: Fri, 14 Oct 2016 17:37:07 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518c115564f94752c7b5b75ffbf9c25e6e8820278e85b09f4cf434b42474dfa5`  
		Last Modified: Fri, 14 Oct 2016 17:37:08 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4`

```console
$ docker pull memcached@sha256:4629c0529e714e895682afb21e682bb5ae4488436bc3eb354ec01f823b32ed7b
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52227251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f884c561622f3aff26599df3e671ebbe5be91b28affcd8223def11a3de0213ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 20:03:22 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 23 Sep 2016 20:03:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Oct 2016 17:36:08 GMT
ENV MEMCACHED_VERSION=1.4.32
# Fri, 14 Oct 2016 17:36:08 GMT
ENV MEMCACHED_SHA1=cbec6b533fe037b5ad5c54d111e0d30bc9db4424
# Fri, 14 Oct 2016 17:36:41 GMT
RUN buildDeps=' 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(nproc) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 14 Oct 2016 17:36:42 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:36:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 14 Oct 2016 17:36:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:36:43 GMT
USER [memcache]
# Fri, 14 Oct 2016 17:36:44 GMT
EXPOSE 11211/tcp
# Fri, 14 Oct 2016 17:36:44 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5454a3272872da62e6bde09965cd50c416577f47324958c699a36c733b84ea8e`  
		Last Modified: Fri, 23 Sep 2016 20:04:08 GMT  
		Size: 2.0 KB (2039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a4deb16fc7c45fd59208bfb892b4c642398690fd82fa3719358f60f5b6b13b`  
		Last Modified: Fri, 23 Sep 2016 20:04:08 GMT  
		Size: 237.6 KB (237564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4883a82dc506d0d672e063f51c90f1efe6b05845ad45f9cf867d6f7c9077ff2b`  
		Last Modified: Fri, 14 Oct 2016 17:37:07 GMT  
		Size: 632.9 KB (632878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edffa9b18f4b164f377ea9b05c04a9f0af00d9f79d5e8cb88a107117dbf930d7`  
		Last Modified: Fri, 14 Oct 2016 17:37:07 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518c115564f94752c7b5b75ffbf9c25e6e8820278e85b09f4cf434b42474dfa5`  
		Last Modified: Fri, 14 Oct 2016 17:37:08 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1`

```console
$ docker pull memcached@sha256:4629c0529e714e895682afb21e682bb5ae4488436bc3eb354ec01f823b32ed7b
```

-	Platforms:
	-	linux; amd64

### `memcached:1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52227251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f884c561622f3aff26599df3e671ebbe5be91b28affcd8223def11a3de0213ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 20:03:22 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 23 Sep 2016 20:03:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Oct 2016 17:36:08 GMT
ENV MEMCACHED_VERSION=1.4.32
# Fri, 14 Oct 2016 17:36:08 GMT
ENV MEMCACHED_SHA1=cbec6b533fe037b5ad5c54d111e0d30bc9db4424
# Fri, 14 Oct 2016 17:36:41 GMT
RUN buildDeps=' 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(nproc) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 14 Oct 2016 17:36:42 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:36:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 14 Oct 2016 17:36:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:36:43 GMT
USER [memcache]
# Fri, 14 Oct 2016 17:36:44 GMT
EXPOSE 11211/tcp
# Fri, 14 Oct 2016 17:36:44 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5454a3272872da62e6bde09965cd50c416577f47324958c699a36c733b84ea8e`  
		Last Modified: Fri, 23 Sep 2016 20:04:08 GMT  
		Size: 2.0 KB (2039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a4deb16fc7c45fd59208bfb892b4c642398690fd82fa3719358f60f5b6b13b`  
		Last Modified: Fri, 23 Sep 2016 20:04:08 GMT  
		Size: 237.6 KB (237564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4883a82dc506d0d672e063f51c90f1efe6b05845ad45f9cf867d6f7c9077ff2b`  
		Last Modified: Fri, 14 Oct 2016 17:37:07 GMT  
		Size: 632.9 KB (632878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edffa9b18f4b164f377ea9b05c04a9f0af00d9f79d5e8cb88a107117dbf930d7`  
		Last Modified: Fri, 14 Oct 2016 17:37:07 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518c115564f94752c7b5b75ffbf9c25e6e8820278e85b09f4cf434b42474dfa5`  
		Last Modified: Fri, 14 Oct 2016 17:37:08 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:4629c0529e714e895682afb21e682bb5ae4488436bc3eb354ec01f823b32ed7b
```

-	Platforms:
	-	linux; amd64

### `memcached:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52227251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f884c561622f3aff26599df3e671ebbe5be91b28affcd8223def11a3de0213ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 20:03:22 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 23 Sep 2016 20:03:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Oct 2016 17:36:08 GMT
ENV MEMCACHED_VERSION=1.4.32
# Fri, 14 Oct 2016 17:36:08 GMT
ENV MEMCACHED_SHA1=cbec6b533fe037b5ad5c54d111e0d30bc9db4424
# Fri, 14 Oct 2016 17:36:41 GMT
RUN buildDeps=' 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(nproc) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 14 Oct 2016 17:36:42 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:36:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 14 Oct 2016 17:36:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:36:43 GMT
USER [memcache]
# Fri, 14 Oct 2016 17:36:44 GMT
EXPOSE 11211/tcp
# Fri, 14 Oct 2016 17:36:44 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5454a3272872da62e6bde09965cd50c416577f47324958c699a36c733b84ea8e`  
		Last Modified: Fri, 23 Sep 2016 20:04:08 GMT  
		Size: 2.0 KB (2039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a4deb16fc7c45fd59208bfb892b4c642398690fd82fa3719358f60f5b6b13b`  
		Last Modified: Fri, 23 Sep 2016 20:04:08 GMT  
		Size: 237.6 KB (237564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4883a82dc506d0d672e063f51c90f1efe6b05845ad45f9cf867d6f7c9077ff2b`  
		Last Modified: Fri, 14 Oct 2016 17:37:07 GMT  
		Size: 632.9 KB (632878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edffa9b18f4b164f377ea9b05c04a9f0af00d9f79d5e8cb88a107117dbf930d7`  
		Last Modified: Fri, 14 Oct 2016 17:37:07 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518c115564f94752c7b5b75ffbf9c25e6e8820278e85b09f4cf434b42474dfa5`  
		Last Modified: Fri, 14 Oct 2016 17:37:08 GMT  
		Size: 118.0 B  
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
