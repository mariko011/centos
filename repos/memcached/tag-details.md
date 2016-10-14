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
$ docker pull memcached@sha256:9b9e23c471f642647670e7ad2ed02739344d21a594aee92ffe70863c4fd65644
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4.32-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2765147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68fdd289dcd9d135f28dcd10ef513902a0c36ff2378f66393d7962772e369fbe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:09:30 GMT
RUN adduser -D memcache
# Fri, 14 Oct 2016 17:36:45 GMT
ENV MEMCACHED_VERSION=1.4.32
# Fri, 14 Oct 2016 17:36:45 GMT
ENV MEMCACHED_SHA1=cbec6b533fe037b5ad5c54d111e0d30bc9db4424
# Fri, 14 Oct 2016 17:36:55 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Fri, 14 Oct 2016 17:36:56 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:36:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 14 Oct 2016 17:36:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:36:57 GMT
USER [memcache]
# Fri, 14 Oct 2016 17:36:57 GMT
EXPOSE 11211/tcp
# Fri, 14 Oct 2016 17:36:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5dc19c20c5d371cac706b9c526fa24dcfc1ba5608c675b6fe65576369909307`  
		Last Modified: Fri, 23 Sep 2016 17:09:50 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5173fa9d34983f32772b773d063de50c9a799241dcd8f20d06f7ab9a86a520`  
		Last Modified: Fri, 14 Oct 2016 17:37:55 GMT  
		Size: 450.6 KB (450559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01529b8d78606f87032f940c5e4aaec95353f2ab65f91b60b4f9a6fe012a7a92`  
		Last Modified: Fri, 14 Oct 2016 17:37:55 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd8e333c8073e555423a2748a62e2e05925396cd99b88d412254bad597a30bc`  
		Last Modified: Fri, 14 Oct 2016 17:37:54 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4-alpine`

```console
$ docker pull memcached@sha256:9b9e23c471f642647670e7ad2ed02739344d21a594aee92ffe70863c4fd65644
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2765147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68fdd289dcd9d135f28dcd10ef513902a0c36ff2378f66393d7962772e369fbe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:09:30 GMT
RUN adduser -D memcache
# Fri, 14 Oct 2016 17:36:45 GMT
ENV MEMCACHED_VERSION=1.4.32
# Fri, 14 Oct 2016 17:36:45 GMT
ENV MEMCACHED_SHA1=cbec6b533fe037b5ad5c54d111e0d30bc9db4424
# Fri, 14 Oct 2016 17:36:55 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Fri, 14 Oct 2016 17:36:56 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:36:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 14 Oct 2016 17:36:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:36:57 GMT
USER [memcache]
# Fri, 14 Oct 2016 17:36:57 GMT
EXPOSE 11211/tcp
# Fri, 14 Oct 2016 17:36:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5dc19c20c5d371cac706b9c526fa24dcfc1ba5608c675b6fe65576369909307`  
		Last Modified: Fri, 23 Sep 2016 17:09:50 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5173fa9d34983f32772b773d063de50c9a799241dcd8f20d06f7ab9a86a520`  
		Last Modified: Fri, 14 Oct 2016 17:37:55 GMT  
		Size: 450.6 KB (450559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01529b8d78606f87032f940c5e4aaec95353f2ab65f91b60b4f9a6fe012a7a92`  
		Last Modified: Fri, 14 Oct 2016 17:37:55 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd8e333c8073e555423a2748a62e2e05925396cd99b88d412254bad597a30bc`  
		Last Modified: Fri, 14 Oct 2016 17:37:54 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:9b9e23c471f642647670e7ad2ed02739344d21a594aee92ffe70863c4fd65644
```

-	Platforms:
	-	linux; amd64

### `memcached:1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2765147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68fdd289dcd9d135f28dcd10ef513902a0c36ff2378f66393d7962772e369fbe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:09:30 GMT
RUN adduser -D memcache
# Fri, 14 Oct 2016 17:36:45 GMT
ENV MEMCACHED_VERSION=1.4.32
# Fri, 14 Oct 2016 17:36:45 GMT
ENV MEMCACHED_SHA1=cbec6b533fe037b5ad5c54d111e0d30bc9db4424
# Fri, 14 Oct 2016 17:36:55 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Fri, 14 Oct 2016 17:36:56 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:36:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 14 Oct 2016 17:36:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:36:57 GMT
USER [memcache]
# Fri, 14 Oct 2016 17:36:57 GMT
EXPOSE 11211/tcp
# Fri, 14 Oct 2016 17:36:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5dc19c20c5d371cac706b9c526fa24dcfc1ba5608c675b6fe65576369909307`  
		Last Modified: Fri, 23 Sep 2016 17:09:50 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5173fa9d34983f32772b773d063de50c9a799241dcd8f20d06f7ab9a86a520`  
		Last Modified: Fri, 14 Oct 2016 17:37:55 GMT  
		Size: 450.6 KB (450559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01529b8d78606f87032f940c5e4aaec95353f2ab65f91b60b4f9a6fe012a7a92`  
		Last Modified: Fri, 14 Oct 2016 17:37:55 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd8e333c8073e555423a2748a62e2e05925396cd99b88d412254bad597a30bc`  
		Last Modified: Fri, 14 Oct 2016 17:37:54 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:9b9e23c471f642647670e7ad2ed02739344d21a594aee92ffe70863c4fd65644
```

-	Platforms:
	-	linux; amd64

### `memcached:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2765147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68fdd289dcd9d135f28dcd10ef513902a0c36ff2378f66393d7962772e369fbe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:09:30 GMT
RUN adduser -D memcache
# Fri, 14 Oct 2016 17:36:45 GMT
ENV MEMCACHED_VERSION=1.4.32
# Fri, 14 Oct 2016 17:36:45 GMT
ENV MEMCACHED_SHA1=cbec6b533fe037b5ad5c54d111e0d30bc9db4424
# Fri, 14 Oct 2016 17:36:55 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Fri, 14 Oct 2016 17:36:56 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:36:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 14 Oct 2016 17:36:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:36:57 GMT
USER [memcache]
# Fri, 14 Oct 2016 17:36:57 GMT
EXPOSE 11211/tcp
# Fri, 14 Oct 2016 17:36:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5dc19c20c5d371cac706b9c526fa24dcfc1ba5608c675b6fe65576369909307`  
		Last Modified: Fri, 23 Sep 2016 17:09:50 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5173fa9d34983f32772b773d063de50c9a799241dcd8f20d06f7ab9a86a520`  
		Last Modified: Fri, 14 Oct 2016 17:37:55 GMT  
		Size: 450.6 KB (450559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01529b8d78606f87032f940c5e4aaec95353f2ab65f91b60b4f9a6fe012a7a92`  
		Last Modified: Fri, 14 Oct 2016 17:37:55 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd8e333c8073e555423a2748a62e2e05925396cd99b88d412254bad597a30bc`  
		Last Modified: Fri, 14 Oct 2016 17:37:54 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
