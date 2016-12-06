<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redis`

-	[`redis:3.0.7`](#redis307)
-	[`redis:3.0`](#redis30)
-	[`redis:3.0.7-32bit`](#redis307-32bit)
-	[`redis:3.0-32bit`](#redis30-32bit)
-	[`redis:3.0.7-alpine`](#redis307-alpine)
-	[`redis:3.0-alpine`](#redis30-alpine)
-	[`redis:3.2.6`](#redis326)
-	[`redis:3.2`](#redis32)
-	[`redis:3`](#redis3)
-	[`redis:latest`](#redislatest)
-	[`redis:3.2.6-32bit`](#redis326-32bit)
-	[`redis:3.2-32bit`](#redis32-32bit)
-	[`redis:3-32bit`](#redis3-32bit)
-	[`redis:32bit`](#redis32bit)
-	[`redis:3.2.6-alpine`](#redis326-alpine)
-	[`redis:3.2-alpine`](#redis32-alpine)
-	[`redis:3-alpine`](#redis3-alpine)
-	[`redis:alpine`](#redisalpine)

## `redis:3.0.7`

```console
$ docker pull redis@sha256:17c49dd2dbb4c8c980d27173fd2ba9fe4aa0ace7557336228d3b2a29af3713e1
```

-	Platforms:
	-	linux; amd64

### `redis:3.0.7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.8 MB (71758997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6338da987ba0fd4269e0685ec8cd65f2ab7e98a885ab15a65ffc113350e8b084`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:00:56 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 09 Nov 2016 01:01:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:01:09 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Nov 2016 01:01:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 09 Nov 2016 01:05:13 GMT
ENV REDIS_VERSION=3.0.7
# Wed, 09 Nov 2016 01:05:14 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Wed, 09 Nov 2016 01:05:14 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Wed, 09 Nov 2016 01:05:58 GMT
RUN buildDeps='gcc libc6-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 09 Nov 2016 01:05:59 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 09 Nov 2016 01:05:59 GMT
VOLUME [/data]
# Wed, 09 Nov 2016 01:05:59 GMT
WORKDIR /data
# Wed, 09 Nov 2016 01:06:00 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 09 Nov 2016 01:06:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 09 Nov 2016 01:06:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Nov 2016 01:06:02 GMT
EXPOSE 6379/tcp
# Wed, 09 Nov 2016 01:06:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769149e3a45cf39c61e1d814263c71759a0c71d2850079ce3ab9ea2512f0dfef`  
		Last Modified: Wed, 09 Nov 2016 01:02:20 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f43b3c0854aeb84067088fba78133a0dd2f6e358c606d800919b7c0b63f46c9`  
		Last Modified: Wed, 09 Nov 2016 01:02:22 GMT  
		Size: 16.6 MB (16609652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e928127ad85d3e1a54033603b6d4d3408df15fa4c41abc0c8caf6c2d26f07c`  
		Last Modified: Wed, 09 Nov 2016 01:02:18 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d5b99cac616818b8ca1e7f649aea8d8558bdbc91a1477991b4026d5446b9ee5`  
		Last Modified: Wed, 09 Nov 2016 01:06:15 GMT  
		Size: 3.0 MB (2981770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6b341e7d0450bd078ece37ad46b94e0c1968a059d4d70e3dbc9405201cfbec`  
		Last Modified: Wed, 09 Nov 2016 01:06:14 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fce0b703d713b32bc22e9001a7a2512631d21fa8686d18ccca42a63c93694b6`  
		Last Modified: Wed, 09 Nov 2016 01:06:14 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:572fb30a08f6ffcf9204e8a21e24f9f414b4738b1fea56fda4d8c12e9da78806`  
		Last Modified: Wed, 09 Nov 2016 01:06:14 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0`

```console
$ docker pull redis@sha256:17c49dd2dbb4c8c980d27173fd2ba9fe4aa0ace7557336228d3b2a29af3713e1
```

-	Platforms:
	-	linux; amd64

### `redis:3.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.8 MB (71758997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6338da987ba0fd4269e0685ec8cd65f2ab7e98a885ab15a65ffc113350e8b084`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:00:56 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 09 Nov 2016 01:01:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:01:09 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Nov 2016 01:01:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 09 Nov 2016 01:05:13 GMT
ENV REDIS_VERSION=3.0.7
# Wed, 09 Nov 2016 01:05:14 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Wed, 09 Nov 2016 01:05:14 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Wed, 09 Nov 2016 01:05:58 GMT
RUN buildDeps='gcc libc6-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 09 Nov 2016 01:05:59 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 09 Nov 2016 01:05:59 GMT
VOLUME [/data]
# Wed, 09 Nov 2016 01:05:59 GMT
WORKDIR /data
# Wed, 09 Nov 2016 01:06:00 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 09 Nov 2016 01:06:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 09 Nov 2016 01:06:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Nov 2016 01:06:02 GMT
EXPOSE 6379/tcp
# Wed, 09 Nov 2016 01:06:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769149e3a45cf39c61e1d814263c71759a0c71d2850079ce3ab9ea2512f0dfef`  
		Last Modified: Wed, 09 Nov 2016 01:02:20 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f43b3c0854aeb84067088fba78133a0dd2f6e358c606d800919b7c0b63f46c9`  
		Last Modified: Wed, 09 Nov 2016 01:02:22 GMT  
		Size: 16.6 MB (16609652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e928127ad85d3e1a54033603b6d4d3408df15fa4c41abc0c8caf6c2d26f07c`  
		Last Modified: Wed, 09 Nov 2016 01:02:18 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d5b99cac616818b8ca1e7f649aea8d8558bdbc91a1477991b4026d5446b9ee5`  
		Last Modified: Wed, 09 Nov 2016 01:06:15 GMT  
		Size: 3.0 MB (2981770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6b341e7d0450bd078ece37ad46b94e0c1968a059d4d70e3dbc9405201cfbec`  
		Last Modified: Wed, 09 Nov 2016 01:06:14 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fce0b703d713b32bc22e9001a7a2512631d21fa8686d18ccca42a63c93694b6`  
		Last Modified: Wed, 09 Nov 2016 01:06:14 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:572fb30a08f6ffcf9204e8a21e24f9f414b4738b1fea56fda4d8c12e9da78806`  
		Last Modified: Wed, 09 Nov 2016 01:06:14 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0.7-32bit`

```console
$ docker pull redis@sha256:82d637710e25dbd4666265e5d0923387f4d93507fa6b9a667fe506a56dfdad66
```

-	Platforms:
	-	linux; amd64

### `redis:3.0.7-32bit` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.7 MB (75671562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e48b8294139853950fb01fcfcb951c07cff3b59da6e8545829ae7750a7b88e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:00:56 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 09 Nov 2016 01:01:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:01:09 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Nov 2016 01:01:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 09 Nov 2016 01:05:13 GMT
ENV REDIS_VERSION=3.0.7
# Wed, 09 Nov 2016 01:05:14 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Wed, 09 Nov 2016 01:05:14 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Wed, 09 Nov 2016 01:06:42 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:07:33 GMT
RUN buildDeps='gcc gcc-multilib libc6-dev-i386 make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 09 Nov 2016 01:07:34 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 09 Nov 2016 01:07:34 GMT
VOLUME [/data]
# Wed, 09 Nov 2016 01:07:35 GMT
WORKDIR /data
# Wed, 09 Nov 2016 01:07:35 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 09 Nov 2016 01:07:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 09 Nov 2016 01:07:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Nov 2016 01:07:37 GMT
EXPOSE 6379/tcp
# Wed, 09 Nov 2016 01:07:38 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769149e3a45cf39c61e1d814263c71759a0c71d2850079ce3ab9ea2512f0dfef`  
		Last Modified: Wed, 09 Nov 2016 01:02:20 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f43b3c0854aeb84067088fba78133a0dd2f6e358c606d800919b7c0b63f46c9`  
		Last Modified: Wed, 09 Nov 2016 01:02:22 GMT  
		Size: 16.6 MB (16609652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e928127ad85d3e1a54033603b6d4d3408df15fa4c41abc0c8caf6c2d26f07c`  
		Last Modified: Wed, 09 Nov 2016 01:02:18 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12948d04ec793565d70ffb3c8bdfd3a1514940048ae430716af8c21cb4f5d785`  
		Last Modified: Wed, 09 Nov 2016 01:07:50 GMT  
		Size: 4.2 MB (4224682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957d051ee5fa0c48bad2da3bc0d31e0fb72c8292c54ef1c3733be727d8ce93cd`  
		Last Modified: Wed, 09 Nov 2016 01:07:50 GMT  
		Size: 2.7 MB (2669652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b190181d3e2f17101a2fddb0ccf57a49713beb1d7d2198f78d6a31358ed76d5`  
		Last Modified: Wed, 09 Nov 2016 01:07:49 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3c34824acf07e6792015e8ec8a133eb44970ad58557675e86c577f46be28481`  
		Last Modified: Wed, 09 Nov 2016 01:07:49 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725d174b822cd4cfa0371ce2011e3d91298844ebcbc05fd031ad618c4a490cfa`  
		Last Modified: Wed, 09 Nov 2016 01:07:50 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0-32bit`

```console
$ docker pull redis@sha256:82d637710e25dbd4666265e5d0923387f4d93507fa6b9a667fe506a56dfdad66
```

-	Platforms:
	-	linux; amd64

### `redis:3.0-32bit` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.7 MB (75671562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e48b8294139853950fb01fcfcb951c07cff3b59da6e8545829ae7750a7b88e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:00:56 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 09 Nov 2016 01:01:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:01:09 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Nov 2016 01:01:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 09 Nov 2016 01:05:13 GMT
ENV REDIS_VERSION=3.0.7
# Wed, 09 Nov 2016 01:05:14 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Wed, 09 Nov 2016 01:05:14 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Wed, 09 Nov 2016 01:06:42 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:07:33 GMT
RUN buildDeps='gcc gcc-multilib libc6-dev-i386 make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 09 Nov 2016 01:07:34 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 09 Nov 2016 01:07:34 GMT
VOLUME [/data]
# Wed, 09 Nov 2016 01:07:35 GMT
WORKDIR /data
# Wed, 09 Nov 2016 01:07:35 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 09 Nov 2016 01:07:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 09 Nov 2016 01:07:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Nov 2016 01:07:37 GMT
EXPOSE 6379/tcp
# Wed, 09 Nov 2016 01:07:38 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769149e3a45cf39c61e1d814263c71759a0c71d2850079ce3ab9ea2512f0dfef`  
		Last Modified: Wed, 09 Nov 2016 01:02:20 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f43b3c0854aeb84067088fba78133a0dd2f6e358c606d800919b7c0b63f46c9`  
		Last Modified: Wed, 09 Nov 2016 01:02:22 GMT  
		Size: 16.6 MB (16609652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e928127ad85d3e1a54033603b6d4d3408df15fa4c41abc0c8caf6c2d26f07c`  
		Last Modified: Wed, 09 Nov 2016 01:02:18 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12948d04ec793565d70ffb3c8bdfd3a1514940048ae430716af8c21cb4f5d785`  
		Last Modified: Wed, 09 Nov 2016 01:07:50 GMT  
		Size: 4.2 MB (4224682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957d051ee5fa0c48bad2da3bc0d31e0fb72c8292c54ef1c3733be727d8ce93cd`  
		Last Modified: Wed, 09 Nov 2016 01:07:50 GMT  
		Size: 2.7 MB (2669652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b190181d3e2f17101a2fddb0ccf57a49713beb1d7d2198f78d6a31358ed76d5`  
		Last Modified: Wed, 09 Nov 2016 01:07:49 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3c34824acf07e6792015e8ec8a133eb44970ad58557675e86c577f46be28481`  
		Last Modified: Wed, 09 Nov 2016 01:07:49 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725d174b822cd4cfa0371ce2011e3d91298844ebcbc05fd031ad618c4a490cfa`  
		Last Modified: Wed, 09 Nov 2016 01:07:50 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0.7-alpine`

```console
$ docker pull redis@sha256:c339dc6386b75123ff8e70c41bdca83fd920aa019b82adc7b8b8dfff91d0bd73
```

-	Platforms:
	-	linux; amd64

### `redis:3.0.7-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5161237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a21aaca7f81f9417d8bf73ffb1748612a5416e3a5816ff491da642f4797fea27`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Wed, 19 Oct 2016 00:07:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 19 Oct 2016 00:07:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 19 Oct 2016 00:09:34 GMT
ENV REDIS_VERSION=3.0.7
# Wed, 19 Oct 2016 00:09:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Wed, 19 Oct 2016 00:09:34 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Wed, 19 Oct 2016 00:10:09 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apk del .build-deps
# Wed, 19 Oct 2016 00:10:11 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 19 Oct 2016 00:10:11 GMT
VOLUME [/data]
# Wed, 19 Oct 2016 00:10:11 GMT
WORKDIR /data
# Wed, 19 Oct 2016 00:10:12 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 19 Oct 2016 00:10:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 19 Oct 2016 00:10:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 00:10:14 GMT
EXPOSE 6379/tcp
# Wed, 19 Oct 2016 00:10:14 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e231f7bdf9dfacf1bf9ecf8f9c82a422efd59e4d918599dd184a380a55c4659`  
		Last Modified: Wed, 19 Oct 2016 00:08:54 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a74fb2950f817fd68a70f4ea9d395ab1266040f47aacfcbc5ae48d55d60cd9f`  
		Last Modified: Wed, 19 Oct 2016 00:08:54 GMT  
		Size: 7.9 KB (7927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f7b63fb77bcbade96368dd95079088ad23ef71565e9a9307111f7ded926985`  
		Last Modified: Wed, 19 Oct 2016 00:10:24 GMT  
		Size: 2.8 MB (2838479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a09ad6175aae683db931d64332cb87bf95199ed5330f17a48e5deec34295b8`  
		Last Modified: Wed, 19 Oct 2016 00:10:23 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abf19ee816ee656813e0cd0fea33630242934bee099bf9138bbda4c94847570`  
		Last Modified: Wed, 19 Oct 2016 00:10:23 GMT  
		Size: 387.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47387cc36831d6d5f29173bf0d7e4d3b250648ddc2bfd99cdd1285959d9ade6c`  
		Last Modified: Wed, 19 Oct 2016 00:10:23 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0-alpine`

```console
$ docker pull redis@sha256:c339dc6386b75123ff8e70c41bdca83fd920aa019b82adc7b8b8dfff91d0bd73
```

-	Platforms:
	-	linux; amd64

### `redis:3.0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5161237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a21aaca7f81f9417d8bf73ffb1748612a5416e3a5816ff491da642f4797fea27`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Wed, 19 Oct 2016 00:07:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 19 Oct 2016 00:07:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 19 Oct 2016 00:09:34 GMT
ENV REDIS_VERSION=3.0.7
# Wed, 19 Oct 2016 00:09:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Wed, 19 Oct 2016 00:09:34 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Wed, 19 Oct 2016 00:10:09 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apk del .build-deps
# Wed, 19 Oct 2016 00:10:11 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 19 Oct 2016 00:10:11 GMT
VOLUME [/data]
# Wed, 19 Oct 2016 00:10:11 GMT
WORKDIR /data
# Wed, 19 Oct 2016 00:10:12 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 19 Oct 2016 00:10:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 19 Oct 2016 00:10:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 00:10:14 GMT
EXPOSE 6379/tcp
# Wed, 19 Oct 2016 00:10:14 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e231f7bdf9dfacf1bf9ecf8f9c82a422efd59e4d918599dd184a380a55c4659`  
		Last Modified: Wed, 19 Oct 2016 00:08:54 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a74fb2950f817fd68a70f4ea9d395ab1266040f47aacfcbc5ae48d55d60cd9f`  
		Last Modified: Wed, 19 Oct 2016 00:08:54 GMT  
		Size: 7.9 KB (7927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f7b63fb77bcbade96368dd95079088ad23ef71565e9a9307111f7ded926985`  
		Last Modified: Wed, 19 Oct 2016 00:10:24 GMT  
		Size: 2.8 MB (2838479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a09ad6175aae683db931d64332cb87bf95199ed5330f17a48e5deec34295b8`  
		Last Modified: Wed, 19 Oct 2016 00:10:23 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abf19ee816ee656813e0cd0fea33630242934bee099bf9138bbda4c94847570`  
		Last Modified: Wed, 19 Oct 2016 00:10:23 GMT  
		Size: 387.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47387cc36831d6d5f29173bf0d7e4d3b250648ddc2bfd99cdd1285959d9ade6c`  
		Last Modified: Wed, 19 Oct 2016 00:10:23 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.6`

```console
$ docker pull redis@sha256:54057dd7e125ca41afe526a877e8bd35ec2cdd33b9217e022ed37bdcf7d09673
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74246270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c2ac2024e4b6d621cea1458923bdbd1806f2c7c50c8a7292e0e6551b8d768e3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:00:56 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 09 Nov 2016 01:01:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:01:09 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Nov 2016 01:01:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 06 Dec 2016 22:53:47 GMT
ENV REDIS_VERSION=3.2.6
# Tue, 06 Dec 2016 22:53:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.6.tar.gz
# Tue, 06 Dec 2016 22:53:48 GMT
ENV REDIS_DOWNLOAD_SHA1=0c7bc5c751bdbc6fabed178db9cdbdd948915d1b
# Tue, 06 Dec 2016 22:54:37 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 06 Dec 2016 22:54:38 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Dec 2016 22:54:38 GMT
VOLUME [/data]
# Tue, 06 Dec 2016 22:54:39 GMT
WORKDIR /data
# Tue, 06 Dec 2016 22:54:39 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 06 Dec 2016 22:54:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 22:54:40 GMT
EXPOSE 6379/tcp
# Tue, 06 Dec 2016 22:54:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769149e3a45cf39c61e1d814263c71759a0c71d2850079ce3ab9ea2512f0dfef`  
		Last Modified: Wed, 09 Nov 2016 01:02:20 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f43b3c0854aeb84067088fba78133a0dd2f6e358c606d800919b7c0b63f46c9`  
		Last Modified: Wed, 09 Nov 2016 01:02:22 GMT  
		Size: 16.6 MB (16609652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e928127ad85d3e1a54033603b6d4d3408df15fa4c41abc0c8caf6c2d26f07c`  
		Last Modified: Wed, 09 Nov 2016 01:02:18 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0764b5f234259b8396d61d84b1df32afaa6c03333ec9340f54d6410582328e81`  
		Last Modified: Tue, 06 Dec 2016 22:58:17 GMT  
		Size: 5.5 MB (5469156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d40b85d2c524660ef8121f8d74d3167de7e2201b8d2b0c534204997df9d42b`  
		Last Modified: Tue, 06 Dec 2016 22:58:14 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea61cb6ec2a93cc67531451cc701843028e6e1403bb49a217eeebabc834a02d`  
		Last Modified: Tue, 06 Dec 2016 22:58:15 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2`

```console
$ docker pull redis@sha256:54057dd7e125ca41afe526a877e8bd35ec2cdd33b9217e022ed37bdcf7d09673
```

-	Platforms:
	-	linux; amd64

### `redis:3.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74246270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c2ac2024e4b6d621cea1458923bdbd1806f2c7c50c8a7292e0e6551b8d768e3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:00:56 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 09 Nov 2016 01:01:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:01:09 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Nov 2016 01:01:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 06 Dec 2016 22:53:47 GMT
ENV REDIS_VERSION=3.2.6
# Tue, 06 Dec 2016 22:53:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.6.tar.gz
# Tue, 06 Dec 2016 22:53:48 GMT
ENV REDIS_DOWNLOAD_SHA1=0c7bc5c751bdbc6fabed178db9cdbdd948915d1b
# Tue, 06 Dec 2016 22:54:37 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 06 Dec 2016 22:54:38 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Dec 2016 22:54:38 GMT
VOLUME [/data]
# Tue, 06 Dec 2016 22:54:39 GMT
WORKDIR /data
# Tue, 06 Dec 2016 22:54:39 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 06 Dec 2016 22:54:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 22:54:40 GMT
EXPOSE 6379/tcp
# Tue, 06 Dec 2016 22:54:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769149e3a45cf39c61e1d814263c71759a0c71d2850079ce3ab9ea2512f0dfef`  
		Last Modified: Wed, 09 Nov 2016 01:02:20 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f43b3c0854aeb84067088fba78133a0dd2f6e358c606d800919b7c0b63f46c9`  
		Last Modified: Wed, 09 Nov 2016 01:02:22 GMT  
		Size: 16.6 MB (16609652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e928127ad85d3e1a54033603b6d4d3408df15fa4c41abc0c8caf6c2d26f07c`  
		Last Modified: Wed, 09 Nov 2016 01:02:18 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0764b5f234259b8396d61d84b1df32afaa6c03333ec9340f54d6410582328e81`  
		Last Modified: Tue, 06 Dec 2016 22:58:17 GMT  
		Size: 5.5 MB (5469156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d40b85d2c524660ef8121f8d74d3167de7e2201b8d2b0c534204997df9d42b`  
		Last Modified: Tue, 06 Dec 2016 22:58:14 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea61cb6ec2a93cc67531451cc701843028e6e1403bb49a217eeebabc834a02d`  
		Last Modified: Tue, 06 Dec 2016 22:58:15 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3`

```console
$ docker pull redis@sha256:54057dd7e125ca41afe526a877e8bd35ec2cdd33b9217e022ed37bdcf7d09673
```

-	Platforms:
	-	linux; amd64

### `redis:3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74246270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c2ac2024e4b6d621cea1458923bdbd1806f2c7c50c8a7292e0e6551b8d768e3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:00:56 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 09 Nov 2016 01:01:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:01:09 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Nov 2016 01:01:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 06 Dec 2016 22:53:47 GMT
ENV REDIS_VERSION=3.2.6
# Tue, 06 Dec 2016 22:53:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.6.tar.gz
# Tue, 06 Dec 2016 22:53:48 GMT
ENV REDIS_DOWNLOAD_SHA1=0c7bc5c751bdbc6fabed178db9cdbdd948915d1b
# Tue, 06 Dec 2016 22:54:37 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 06 Dec 2016 22:54:38 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Dec 2016 22:54:38 GMT
VOLUME [/data]
# Tue, 06 Dec 2016 22:54:39 GMT
WORKDIR /data
# Tue, 06 Dec 2016 22:54:39 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 06 Dec 2016 22:54:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 22:54:40 GMT
EXPOSE 6379/tcp
# Tue, 06 Dec 2016 22:54:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769149e3a45cf39c61e1d814263c71759a0c71d2850079ce3ab9ea2512f0dfef`  
		Last Modified: Wed, 09 Nov 2016 01:02:20 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f43b3c0854aeb84067088fba78133a0dd2f6e358c606d800919b7c0b63f46c9`  
		Last Modified: Wed, 09 Nov 2016 01:02:22 GMT  
		Size: 16.6 MB (16609652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e928127ad85d3e1a54033603b6d4d3408df15fa4c41abc0c8caf6c2d26f07c`  
		Last Modified: Wed, 09 Nov 2016 01:02:18 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0764b5f234259b8396d61d84b1df32afaa6c03333ec9340f54d6410582328e81`  
		Last Modified: Tue, 06 Dec 2016 22:58:17 GMT  
		Size: 5.5 MB (5469156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d40b85d2c524660ef8121f8d74d3167de7e2201b8d2b0c534204997df9d42b`  
		Last Modified: Tue, 06 Dec 2016 22:58:14 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea61cb6ec2a93cc67531451cc701843028e6e1403bb49a217eeebabc834a02d`  
		Last Modified: Tue, 06 Dec 2016 22:58:15 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:latest`

```console
$ docker pull redis@sha256:54057dd7e125ca41afe526a877e8bd35ec2cdd33b9217e022ed37bdcf7d09673
```

-	Platforms:
	-	linux; amd64

### `redis:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74246270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c2ac2024e4b6d621cea1458923bdbd1806f2c7c50c8a7292e0e6551b8d768e3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:00:56 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 09 Nov 2016 01:01:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:01:09 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Nov 2016 01:01:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 06 Dec 2016 22:53:47 GMT
ENV REDIS_VERSION=3.2.6
# Tue, 06 Dec 2016 22:53:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.6.tar.gz
# Tue, 06 Dec 2016 22:53:48 GMT
ENV REDIS_DOWNLOAD_SHA1=0c7bc5c751bdbc6fabed178db9cdbdd948915d1b
# Tue, 06 Dec 2016 22:54:37 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 06 Dec 2016 22:54:38 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Dec 2016 22:54:38 GMT
VOLUME [/data]
# Tue, 06 Dec 2016 22:54:39 GMT
WORKDIR /data
# Tue, 06 Dec 2016 22:54:39 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 06 Dec 2016 22:54:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 22:54:40 GMT
EXPOSE 6379/tcp
# Tue, 06 Dec 2016 22:54:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769149e3a45cf39c61e1d814263c71759a0c71d2850079ce3ab9ea2512f0dfef`  
		Last Modified: Wed, 09 Nov 2016 01:02:20 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f43b3c0854aeb84067088fba78133a0dd2f6e358c606d800919b7c0b63f46c9`  
		Last Modified: Wed, 09 Nov 2016 01:02:22 GMT  
		Size: 16.6 MB (16609652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e928127ad85d3e1a54033603b6d4d3408df15fa4c41abc0c8caf6c2d26f07c`  
		Last Modified: Wed, 09 Nov 2016 01:02:18 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0764b5f234259b8396d61d84b1df32afaa6c03333ec9340f54d6410582328e81`  
		Last Modified: Tue, 06 Dec 2016 22:58:17 GMT  
		Size: 5.5 MB (5469156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d40b85d2c524660ef8121f8d74d3167de7e2201b8d2b0c534204997df9d42b`  
		Last Modified: Tue, 06 Dec 2016 22:58:14 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea61cb6ec2a93cc67531451cc701843028e6e1403bb49a217eeebabc834a02d`  
		Last Modified: Tue, 06 Dec 2016 22:58:15 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.6-32bit`

```console
$ docker pull redis@sha256:2f272b04272edd3ce4e01ff4467c137853ad903501d74c1427b61724b2252eba
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.6-32bit` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77894566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:004fed4ffed34a47084020589aa9b3e1bc4d66e64eaaebef6b86baed6395e10d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:00:56 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 09 Nov 2016 01:01:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:01:09 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Nov 2016 01:01:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 06 Dec 2016 22:53:47 GMT
ENV REDIS_VERSION=3.2.6
# Tue, 06 Dec 2016 22:53:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.6.tar.gz
# Tue, 06 Dec 2016 22:53:48 GMT
ENV REDIS_DOWNLOAD_SHA1=0c7bc5c751bdbc6fabed178db9cdbdd948915d1b
# Tue, 06 Dec 2016 22:54:48 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 06 Dec 2016 22:55:41 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 06 Dec 2016 22:55:42 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Dec 2016 22:55:42 GMT
VOLUME [/data]
# Tue, 06 Dec 2016 22:55:43 GMT
WORKDIR /data
# Tue, 06 Dec 2016 22:55:43 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 06 Dec 2016 22:55:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 22:55:44 GMT
EXPOSE 6379/tcp
# Tue, 06 Dec 2016 22:55:44 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769149e3a45cf39c61e1d814263c71759a0c71d2850079ce3ab9ea2512f0dfef`  
		Last Modified: Wed, 09 Nov 2016 01:02:20 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f43b3c0854aeb84067088fba78133a0dd2f6e358c606d800919b7c0b63f46c9`  
		Last Modified: Wed, 09 Nov 2016 01:02:22 GMT  
		Size: 16.6 MB (16609652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e928127ad85d3e1a54033603b6d4d3408df15fa4c41abc0c8caf6c2d26f07c`  
		Last Modified: Wed, 09 Nov 2016 01:02:18 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976fca04a9482e979a324e00815d850d343f081284e0d3a89f38ea9a84cfac65`  
		Last Modified: Tue, 06 Dec 2016 22:59:21 GMT  
		Size: 4.2 MB (4224686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dfbfda23a7b594347a73e5057133b2a83415d628231304ae7f70258c2b3a0d8`  
		Last Modified: Tue, 06 Dec 2016 22:59:20 GMT  
		Size: 4.9 MB (4892772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2575a89ddaeb7378fb3e824390e9bb33f49606c93592fc5a541d295dfa68ac4d`  
		Last Modified: Tue, 06 Dec 2016 22:59:19 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c4e0f69dc176bd465bebed45caa46fc7ae291f7b9397db600d252e8817a695`  
		Last Modified: Tue, 06 Dec 2016 22:59:19 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-32bit`

```console
$ docker pull redis@sha256:2f272b04272edd3ce4e01ff4467c137853ad903501d74c1427b61724b2252eba
```

-	Platforms:
	-	linux; amd64

### `redis:3.2-32bit` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77894566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:004fed4ffed34a47084020589aa9b3e1bc4d66e64eaaebef6b86baed6395e10d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:00:56 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 09 Nov 2016 01:01:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:01:09 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Nov 2016 01:01:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 06 Dec 2016 22:53:47 GMT
ENV REDIS_VERSION=3.2.6
# Tue, 06 Dec 2016 22:53:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.6.tar.gz
# Tue, 06 Dec 2016 22:53:48 GMT
ENV REDIS_DOWNLOAD_SHA1=0c7bc5c751bdbc6fabed178db9cdbdd948915d1b
# Tue, 06 Dec 2016 22:54:48 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 06 Dec 2016 22:55:41 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 06 Dec 2016 22:55:42 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Dec 2016 22:55:42 GMT
VOLUME [/data]
# Tue, 06 Dec 2016 22:55:43 GMT
WORKDIR /data
# Tue, 06 Dec 2016 22:55:43 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 06 Dec 2016 22:55:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 22:55:44 GMT
EXPOSE 6379/tcp
# Tue, 06 Dec 2016 22:55:44 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769149e3a45cf39c61e1d814263c71759a0c71d2850079ce3ab9ea2512f0dfef`  
		Last Modified: Wed, 09 Nov 2016 01:02:20 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f43b3c0854aeb84067088fba78133a0dd2f6e358c606d800919b7c0b63f46c9`  
		Last Modified: Wed, 09 Nov 2016 01:02:22 GMT  
		Size: 16.6 MB (16609652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e928127ad85d3e1a54033603b6d4d3408df15fa4c41abc0c8caf6c2d26f07c`  
		Last Modified: Wed, 09 Nov 2016 01:02:18 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976fca04a9482e979a324e00815d850d343f081284e0d3a89f38ea9a84cfac65`  
		Last Modified: Tue, 06 Dec 2016 22:59:21 GMT  
		Size: 4.2 MB (4224686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dfbfda23a7b594347a73e5057133b2a83415d628231304ae7f70258c2b3a0d8`  
		Last Modified: Tue, 06 Dec 2016 22:59:20 GMT  
		Size: 4.9 MB (4892772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2575a89ddaeb7378fb3e824390e9bb33f49606c93592fc5a541d295dfa68ac4d`  
		Last Modified: Tue, 06 Dec 2016 22:59:19 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c4e0f69dc176bd465bebed45caa46fc7ae291f7b9397db600d252e8817a695`  
		Last Modified: Tue, 06 Dec 2016 22:59:19 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-32bit`

```console
$ docker pull redis@sha256:2f272b04272edd3ce4e01ff4467c137853ad903501d74c1427b61724b2252eba
```

-	Platforms:
	-	linux; amd64

### `redis:3-32bit` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77894566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:004fed4ffed34a47084020589aa9b3e1bc4d66e64eaaebef6b86baed6395e10d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:00:56 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 09 Nov 2016 01:01:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:01:09 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Nov 2016 01:01:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 06 Dec 2016 22:53:47 GMT
ENV REDIS_VERSION=3.2.6
# Tue, 06 Dec 2016 22:53:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.6.tar.gz
# Tue, 06 Dec 2016 22:53:48 GMT
ENV REDIS_DOWNLOAD_SHA1=0c7bc5c751bdbc6fabed178db9cdbdd948915d1b
# Tue, 06 Dec 2016 22:54:48 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 06 Dec 2016 22:55:41 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 06 Dec 2016 22:55:42 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Dec 2016 22:55:42 GMT
VOLUME [/data]
# Tue, 06 Dec 2016 22:55:43 GMT
WORKDIR /data
# Tue, 06 Dec 2016 22:55:43 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 06 Dec 2016 22:55:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 22:55:44 GMT
EXPOSE 6379/tcp
# Tue, 06 Dec 2016 22:55:44 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769149e3a45cf39c61e1d814263c71759a0c71d2850079ce3ab9ea2512f0dfef`  
		Last Modified: Wed, 09 Nov 2016 01:02:20 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f43b3c0854aeb84067088fba78133a0dd2f6e358c606d800919b7c0b63f46c9`  
		Last Modified: Wed, 09 Nov 2016 01:02:22 GMT  
		Size: 16.6 MB (16609652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e928127ad85d3e1a54033603b6d4d3408df15fa4c41abc0c8caf6c2d26f07c`  
		Last Modified: Wed, 09 Nov 2016 01:02:18 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976fca04a9482e979a324e00815d850d343f081284e0d3a89f38ea9a84cfac65`  
		Last Modified: Tue, 06 Dec 2016 22:59:21 GMT  
		Size: 4.2 MB (4224686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dfbfda23a7b594347a73e5057133b2a83415d628231304ae7f70258c2b3a0d8`  
		Last Modified: Tue, 06 Dec 2016 22:59:20 GMT  
		Size: 4.9 MB (4892772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2575a89ddaeb7378fb3e824390e9bb33f49606c93592fc5a541d295dfa68ac4d`  
		Last Modified: Tue, 06 Dec 2016 22:59:19 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c4e0f69dc176bd465bebed45caa46fc7ae291f7b9397db600d252e8817a695`  
		Last Modified: Tue, 06 Dec 2016 22:59:19 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:32bit`

```console
$ docker pull redis@sha256:2f272b04272edd3ce4e01ff4467c137853ad903501d74c1427b61724b2252eba
```

-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77894566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:004fed4ffed34a47084020589aa9b3e1bc4d66e64eaaebef6b86baed6395e10d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:00:56 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 09 Nov 2016 01:01:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:01:09 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Nov 2016 01:01:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 06 Dec 2016 22:53:47 GMT
ENV REDIS_VERSION=3.2.6
# Tue, 06 Dec 2016 22:53:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.6.tar.gz
# Tue, 06 Dec 2016 22:53:48 GMT
ENV REDIS_DOWNLOAD_SHA1=0c7bc5c751bdbc6fabed178db9cdbdd948915d1b
# Tue, 06 Dec 2016 22:54:48 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 06 Dec 2016 22:55:41 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 06 Dec 2016 22:55:42 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Dec 2016 22:55:42 GMT
VOLUME [/data]
# Tue, 06 Dec 2016 22:55:43 GMT
WORKDIR /data
# Tue, 06 Dec 2016 22:55:43 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 06 Dec 2016 22:55:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 22:55:44 GMT
EXPOSE 6379/tcp
# Tue, 06 Dec 2016 22:55:44 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769149e3a45cf39c61e1d814263c71759a0c71d2850079ce3ab9ea2512f0dfef`  
		Last Modified: Wed, 09 Nov 2016 01:02:20 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f43b3c0854aeb84067088fba78133a0dd2f6e358c606d800919b7c0b63f46c9`  
		Last Modified: Wed, 09 Nov 2016 01:02:22 GMT  
		Size: 16.6 MB (16609652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e928127ad85d3e1a54033603b6d4d3408df15fa4c41abc0c8caf6c2d26f07c`  
		Last Modified: Wed, 09 Nov 2016 01:02:18 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976fca04a9482e979a324e00815d850d343f081284e0d3a89f38ea9a84cfac65`  
		Last Modified: Tue, 06 Dec 2016 22:59:21 GMT  
		Size: 4.2 MB (4224686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dfbfda23a7b594347a73e5057133b2a83415d628231304ae7f70258c2b3a0d8`  
		Last Modified: Tue, 06 Dec 2016 22:59:20 GMT  
		Size: 4.9 MB (4892772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2575a89ddaeb7378fb3e824390e9bb33f49606c93592fc5a541d295dfa68ac4d`  
		Last Modified: Tue, 06 Dec 2016 22:59:19 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c4e0f69dc176bd465bebed45caa46fc7ae291f7b9397db600d252e8817a695`  
		Last Modified: Tue, 06 Dec 2016 22:59:19 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.6-alpine`

```console
$ docker pull redis@sha256:b4c47064c182d77aed359ceab16ebfec9b749a6b18af3988731181252f0f1b44
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.6-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7988013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9947c5a33865d3f74c0485ce5f615499db1855584f1455976d1b41a0a9f56729`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Wed, 19 Oct 2016 00:07:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 19 Oct 2016 00:07:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 06 Dec 2016 22:55:45 GMT
ENV REDIS_VERSION=3.2.6
# Tue, 06 Dec 2016 22:55:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.6.tar.gz
# Tue, 06 Dec 2016 22:55:46 GMT
ENV REDIS_DOWNLOAD_SHA1=0c7bc5c751bdbc6fabed178db9cdbdd948915d1b
# Tue, 06 Dec 2016 22:56:29 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Tue, 06 Dec 2016 22:56:30 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Dec 2016 22:56:30 GMT
VOLUME [/data]
# Tue, 06 Dec 2016 22:56:30 GMT
WORKDIR /data
# Tue, 06 Dec 2016 22:56:31 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 06 Dec 2016 22:56:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 22:56:32 GMT
EXPOSE 6379/tcp
# Tue, 06 Dec 2016 22:56:32 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e231f7bdf9dfacf1bf9ecf8f9c82a422efd59e4d918599dd184a380a55c4659`  
		Last Modified: Wed, 19 Oct 2016 00:08:54 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a74fb2950f817fd68a70f4ea9d395ab1266040f47aacfcbc5ae48d55d60cd9f`  
		Last Modified: Wed, 19 Oct 2016 00:08:54 GMT  
		Size: 7.9 KB (7927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8e4215fba224a7fad90770875b90db63fa5ed6345a0d2d8d6577a99472c2e9`  
		Last Modified: Tue, 06 Dec 2016 23:00:26 GMT  
		Size: 5.7 MB (5665372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6186b0ef323fee3923c47d8afc34cd42dcea475de895f91bff869dd8721e425`  
		Last Modified: Tue, 06 Dec 2016 23:00:23 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b8fb88c84f20fa8cf59713d2a9e9535a0a052512724e386f36691e41b9dc4b`  
		Last Modified: Tue, 06 Dec 2016 23:00:23 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-alpine`

```console
$ docker pull redis@sha256:b4c47064c182d77aed359ceab16ebfec9b749a6b18af3988731181252f0f1b44
```

-	Platforms:
	-	linux; amd64

### `redis:3.2-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7988013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9947c5a33865d3f74c0485ce5f615499db1855584f1455976d1b41a0a9f56729`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Wed, 19 Oct 2016 00:07:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 19 Oct 2016 00:07:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 06 Dec 2016 22:55:45 GMT
ENV REDIS_VERSION=3.2.6
# Tue, 06 Dec 2016 22:55:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.6.tar.gz
# Tue, 06 Dec 2016 22:55:46 GMT
ENV REDIS_DOWNLOAD_SHA1=0c7bc5c751bdbc6fabed178db9cdbdd948915d1b
# Tue, 06 Dec 2016 22:56:29 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Tue, 06 Dec 2016 22:56:30 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Dec 2016 22:56:30 GMT
VOLUME [/data]
# Tue, 06 Dec 2016 22:56:30 GMT
WORKDIR /data
# Tue, 06 Dec 2016 22:56:31 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 06 Dec 2016 22:56:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 22:56:32 GMT
EXPOSE 6379/tcp
# Tue, 06 Dec 2016 22:56:32 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e231f7bdf9dfacf1bf9ecf8f9c82a422efd59e4d918599dd184a380a55c4659`  
		Last Modified: Wed, 19 Oct 2016 00:08:54 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a74fb2950f817fd68a70f4ea9d395ab1266040f47aacfcbc5ae48d55d60cd9f`  
		Last Modified: Wed, 19 Oct 2016 00:08:54 GMT  
		Size: 7.9 KB (7927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8e4215fba224a7fad90770875b90db63fa5ed6345a0d2d8d6577a99472c2e9`  
		Last Modified: Tue, 06 Dec 2016 23:00:26 GMT  
		Size: 5.7 MB (5665372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6186b0ef323fee3923c47d8afc34cd42dcea475de895f91bff869dd8721e425`  
		Last Modified: Tue, 06 Dec 2016 23:00:23 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b8fb88c84f20fa8cf59713d2a9e9535a0a052512724e386f36691e41b9dc4b`  
		Last Modified: Tue, 06 Dec 2016 23:00:23 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-alpine`

```console
$ docker pull redis@sha256:b4c47064c182d77aed359ceab16ebfec9b749a6b18af3988731181252f0f1b44
```

-	Platforms:
	-	linux; amd64

### `redis:3-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7988013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9947c5a33865d3f74c0485ce5f615499db1855584f1455976d1b41a0a9f56729`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Wed, 19 Oct 2016 00:07:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 19 Oct 2016 00:07:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 06 Dec 2016 22:55:45 GMT
ENV REDIS_VERSION=3.2.6
# Tue, 06 Dec 2016 22:55:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.6.tar.gz
# Tue, 06 Dec 2016 22:55:46 GMT
ENV REDIS_DOWNLOAD_SHA1=0c7bc5c751bdbc6fabed178db9cdbdd948915d1b
# Tue, 06 Dec 2016 22:56:29 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Tue, 06 Dec 2016 22:56:30 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Dec 2016 22:56:30 GMT
VOLUME [/data]
# Tue, 06 Dec 2016 22:56:30 GMT
WORKDIR /data
# Tue, 06 Dec 2016 22:56:31 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 06 Dec 2016 22:56:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 22:56:32 GMT
EXPOSE 6379/tcp
# Tue, 06 Dec 2016 22:56:32 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e231f7bdf9dfacf1bf9ecf8f9c82a422efd59e4d918599dd184a380a55c4659`  
		Last Modified: Wed, 19 Oct 2016 00:08:54 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a74fb2950f817fd68a70f4ea9d395ab1266040f47aacfcbc5ae48d55d60cd9f`  
		Last Modified: Wed, 19 Oct 2016 00:08:54 GMT  
		Size: 7.9 KB (7927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8e4215fba224a7fad90770875b90db63fa5ed6345a0d2d8d6577a99472c2e9`  
		Last Modified: Tue, 06 Dec 2016 23:00:26 GMT  
		Size: 5.7 MB (5665372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6186b0ef323fee3923c47d8afc34cd42dcea475de895f91bff869dd8721e425`  
		Last Modified: Tue, 06 Dec 2016 23:00:23 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b8fb88c84f20fa8cf59713d2a9e9535a0a052512724e386f36691e41b9dc4b`  
		Last Modified: Tue, 06 Dec 2016 23:00:23 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine`

```console
$ docker pull redis@sha256:b4c47064c182d77aed359ceab16ebfec9b749a6b18af3988731181252f0f1b44
```

-	Platforms:
	-	linux; amd64

### `redis:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7988013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9947c5a33865d3f74c0485ce5f615499db1855584f1455976d1b41a0a9f56729`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Wed, 19 Oct 2016 00:07:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 19 Oct 2016 00:07:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 06 Dec 2016 22:55:45 GMT
ENV REDIS_VERSION=3.2.6
# Tue, 06 Dec 2016 22:55:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.6.tar.gz
# Tue, 06 Dec 2016 22:55:46 GMT
ENV REDIS_DOWNLOAD_SHA1=0c7bc5c751bdbc6fabed178db9cdbdd948915d1b
# Tue, 06 Dec 2016 22:56:29 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Tue, 06 Dec 2016 22:56:30 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 06 Dec 2016 22:56:30 GMT
VOLUME [/data]
# Tue, 06 Dec 2016 22:56:30 GMT
WORKDIR /data
# Tue, 06 Dec 2016 22:56:31 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 06 Dec 2016 22:56:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 22:56:32 GMT
EXPOSE 6379/tcp
# Tue, 06 Dec 2016 22:56:32 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e231f7bdf9dfacf1bf9ecf8f9c82a422efd59e4d918599dd184a380a55c4659`  
		Last Modified: Wed, 19 Oct 2016 00:08:54 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a74fb2950f817fd68a70f4ea9d395ab1266040f47aacfcbc5ae48d55d60cd9f`  
		Last Modified: Wed, 19 Oct 2016 00:08:54 GMT  
		Size: 7.9 KB (7927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8e4215fba224a7fad90770875b90db63fa5ed6345a0d2d8d6577a99472c2e9`  
		Last Modified: Tue, 06 Dec 2016 23:00:26 GMT  
		Size: 5.7 MB (5665372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6186b0ef323fee3923c47d8afc34cd42dcea475de895f91bff869dd8721e425`  
		Last Modified: Tue, 06 Dec 2016 23:00:23 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b8fb88c84f20fa8cf59713d2a9e9535a0a052512724e386f36691e41b9dc4b`  
		Last Modified: Tue, 06 Dec 2016 23:00:23 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
