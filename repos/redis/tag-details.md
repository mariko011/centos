<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redis`

-	[`redis:3.0.7`](#redis307)
-	[`redis:3.0`](#redis30)
-	[`redis:3.0.7-32bit`](#redis307-32bit)
-	[`redis:3.0-32bit`](#redis30-32bit)
-	[`redis:3.0.7-alpine`](#redis307-alpine)
-	[`redis:3.0-alpine`](#redis30-alpine)
-	[`redis:3.2.5`](#redis325)
-	[`redis:3.2`](#redis32)
-	[`redis:3`](#redis3)
-	[`redis:latest`](#redislatest)
-	[`redis:3.2.5-32bit`](#redis325-32bit)
-	[`redis:3.2-32bit`](#redis32-32bit)
-	[`redis:3-32bit`](#redis3-32bit)
-	[`redis:32bit`](#redis32bit)
-	[`redis:3.2.5-alpine`](#redis325-alpine)
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

## `redis:3.2.5`

```console
$ docker pull redis@sha256:c2ce5403bddabd407c0c63f67566fcab6facef90877de58f05587cdf244a28a8
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74246638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f515359c7f871387c7dbb9bcf5c56b971d6b48ec9fec9e68d9369f4673db218`
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
# Wed, 09 Nov 2016 01:01:14 GMT
ENV REDIS_VERSION=3.2.5
# Wed, 09 Nov 2016 01:01:14 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.5.tar.gz
# Wed, 09 Nov 2016 01:01:14 GMT
ENV REDIS_DOWNLOAD_SHA1=6f6333db6111badaa74519d743589ac4635eba7a
# Wed, 09 Nov 2016 01:02:03 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 09 Nov 2016 01:02:04 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 09 Nov 2016 01:02:04 GMT
VOLUME [/data]
# Wed, 09 Nov 2016 01:02:04 GMT
WORKDIR /data
# Wed, 09 Nov 2016 01:02:05 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 09 Nov 2016 01:02:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Nov 2016 01:02:06 GMT
EXPOSE 6379/tcp
# Wed, 09 Nov 2016 01:02:06 GMT
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
	-	`sha256:9ad9c0058d764f90e8c838d8fbc02b7b63aec4a8b5a3232fc88d57ae75973c2f`  
		Last Modified: Wed, 09 Nov 2016 01:02:20 GMT  
		Size: 5.5 MB (5469529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc845722f255fe5080f09d878a664377e466a47864d83f9fdd7dba4ce72eb559`  
		Last Modified: Wed, 09 Nov 2016 01:02:18 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105d1e8cd76affcc6ea7bca457408530a32053f859ecf64daece7e87e61f5526`  
		Last Modified: Wed, 09 Nov 2016 01:02:17 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2`

```console
$ docker pull redis@sha256:c2ce5403bddabd407c0c63f67566fcab6facef90877de58f05587cdf244a28a8
```

-	Platforms:
	-	linux; amd64

### `redis:3.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74246638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f515359c7f871387c7dbb9bcf5c56b971d6b48ec9fec9e68d9369f4673db218`
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
# Wed, 09 Nov 2016 01:01:14 GMT
ENV REDIS_VERSION=3.2.5
# Wed, 09 Nov 2016 01:01:14 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.5.tar.gz
# Wed, 09 Nov 2016 01:01:14 GMT
ENV REDIS_DOWNLOAD_SHA1=6f6333db6111badaa74519d743589ac4635eba7a
# Wed, 09 Nov 2016 01:02:03 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 09 Nov 2016 01:02:04 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 09 Nov 2016 01:02:04 GMT
VOLUME [/data]
# Wed, 09 Nov 2016 01:02:04 GMT
WORKDIR /data
# Wed, 09 Nov 2016 01:02:05 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 09 Nov 2016 01:02:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Nov 2016 01:02:06 GMT
EXPOSE 6379/tcp
# Wed, 09 Nov 2016 01:02:06 GMT
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
	-	`sha256:9ad9c0058d764f90e8c838d8fbc02b7b63aec4a8b5a3232fc88d57ae75973c2f`  
		Last Modified: Wed, 09 Nov 2016 01:02:20 GMT  
		Size: 5.5 MB (5469529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc845722f255fe5080f09d878a664377e466a47864d83f9fdd7dba4ce72eb559`  
		Last Modified: Wed, 09 Nov 2016 01:02:18 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105d1e8cd76affcc6ea7bca457408530a32053f859ecf64daece7e87e61f5526`  
		Last Modified: Wed, 09 Nov 2016 01:02:17 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3`

```console
$ docker pull redis@sha256:c2ce5403bddabd407c0c63f67566fcab6facef90877de58f05587cdf244a28a8
```

-	Platforms:
	-	linux; amd64

### `redis:3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74246638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f515359c7f871387c7dbb9bcf5c56b971d6b48ec9fec9e68d9369f4673db218`
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
# Wed, 09 Nov 2016 01:01:14 GMT
ENV REDIS_VERSION=3.2.5
# Wed, 09 Nov 2016 01:01:14 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.5.tar.gz
# Wed, 09 Nov 2016 01:01:14 GMT
ENV REDIS_DOWNLOAD_SHA1=6f6333db6111badaa74519d743589ac4635eba7a
# Wed, 09 Nov 2016 01:02:03 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 09 Nov 2016 01:02:04 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 09 Nov 2016 01:02:04 GMT
VOLUME [/data]
# Wed, 09 Nov 2016 01:02:04 GMT
WORKDIR /data
# Wed, 09 Nov 2016 01:02:05 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 09 Nov 2016 01:02:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Nov 2016 01:02:06 GMT
EXPOSE 6379/tcp
# Wed, 09 Nov 2016 01:02:06 GMT
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
	-	`sha256:9ad9c0058d764f90e8c838d8fbc02b7b63aec4a8b5a3232fc88d57ae75973c2f`  
		Last Modified: Wed, 09 Nov 2016 01:02:20 GMT  
		Size: 5.5 MB (5469529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc845722f255fe5080f09d878a664377e466a47864d83f9fdd7dba4ce72eb559`  
		Last Modified: Wed, 09 Nov 2016 01:02:18 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105d1e8cd76affcc6ea7bca457408530a32053f859ecf64daece7e87e61f5526`  
		Last Modified: Wed, 09 Nov 2016 01:02:17 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:latest`

```console
$ docker pull redis@sha256:c2ce5403bddabd407c0c63f67566fcab6facef90877de58f05587cdf244a28a8
```

-	Platforms:
	-	linux; amd64

### `redis:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74246638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f515359c7f871387c7dbb9bcf5c56b971d6b48ec9fec9e68d9369f4673db218`
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
# Wed, 09 Nov 2016 01:01:14 GMT
ENV REDIS_VERSION=3.2.5
# Wed, 09 Nov 2016 01:01:14 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.5.tar.gz
# Wed, 09 Nov 2016 01:01:14 GMT
ENV REDIS_DOWNLOAD_SHA1=6f6333db6111badaa74519d743589ac4635eba7a
# Wed, 09 Nov 2016 01:02:03 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 09 Nov 2016 01:02:04 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 09 Nov 2016 01:02:04 GMT
VOLUME [/data]
# Wed, 09 Nov 2016 01:02:04 GMT
WORKDIR /data
# Wed, 09 Nov 2016 01:02:05 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 09 Nov 2016 01:02:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Nov 2016 01:02:06 GMT
EXPOSE 6379/tcp
# Wed, 09 Nov 2016 01:02:06 GMT
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
	-	`sha256:9ad9c0058d764f90e8c838d8fbc02b7b63aec4a8b5a3232fc88d57ae75973c2f`  
		Last Modified: Wed, 09 Nov 2016 01:02:20 GMT  
		Size: 5.5 MB (5469529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc845722f255fe5080f09d878a664377e466a47864d83f9fdd7dba4ce72eb559`  
		Last Modified: Wed, 09 Nov 2016 01:02:18 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105d1e8cd76affcc6ea7bca457408530a32053f859ecf64daece7e87e61f5526`  
		Last Modified: Wed, 09 Nov 2016 01:02:17 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.5-32bit`

```console
$ docker pull redis@sha256:944b998067bc435837421f69b554d38cc2e380b324c41b69d2a3ab1180c4dcb8
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.5-32bit` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77895451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a858c9b45e26bfd0a500a35b5ce32086cebd03811e870c75be84828857695c17`
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
# Wed, 09 Nov 2016 01:01:14 GMT
ENV REDIS_VERSION=3.2.5
# Wed, 09 Nov 2016 01:01:14 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.5.tar.gz
# Wed, 09 Nov 2016 01:01:14 GMT
ENV REDIS_DOWNLOAD_SHA1=6f6333db6111badaa74519d743589ac4635eba7a
# Wed, 09 Nov 2016 01:03:13 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:04:10 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 09 Nov 2016 01:04:11 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 09 Nov 2016 01:04:11 GMT
VOLUME [/data]
# Wed, 09 Nov 2016 01:04:11 GMT
WORKDIR /data
# Wed, 09 Nov 2016 01:04:12 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 09 Nov 2016 01:04:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Nov 2016 01:04:13 GMT
EXPOSE 6379/tcp
# Wed, 09 Nov 2016 01:04:13 GMT
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
	-	`sha256:8122e57942548d426a56275a2a9f1050ad53dd445326a39aa83dacdf6098f637`  
		Last Modified: Wed, 09 Nov 2016 01:04:26 GMT  
		Size: 4.2 MB (4224695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3cab49f269e5ba4ba10a9269d73e966ed3ed5328e92b06d36b8d6e14167d75`  
		Last Modified: Wed, 09 Nov 2016 01:04:27 GMT  
		Size: 4.9 MB (4893645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54ba26dfc2c8cce06d68bf02d58ced2570b98b33d6608828aca703acea660c84`  
		Last Modified: Wed, 09 Nov 2016 01:04:24 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3102e09b9fac69ec774878474bee62ffe757b68c27a5e043ccbf8c8753334b0c`  
		Last Modified: Wed, 09 Nov 2016 01:04:24 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-32bit`

```console
$ docker pull redis@sha256:944b998067bc435837421f69b554d38cc2e380b324c41b69d2a3ab1180c4dcb8
```

-	Platforms:
	-	linux; amd64

### `redis:3.2-32bit` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77895451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a858c9b45e26bfd0a500a35b5ce32086cebd03811e870c75be84828857695c17`
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
# Wed, 09 Nov 2016 01:01:14 GMT
ENV REDIS_VERSION=3.2.5
# Wed, 09 Nov 2016 01:01:14 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.5.tar.gz
# Wed, 09 Nov 2016 01:01:14 GMT
ENV REDIS_DOWNLOAD_SHA1=6f6333db6111badaa74519d743589ac4635eba7a
# Wed, 09 Nov 2016 01:03:13 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:04:10 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 09 Nov 2016 01:04:11 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 09 Nov 2016 01:04:11 GMT
VOLUME [/data]
# Wed, 09 Nov 2016 01:04:11 GMT
WORKDIR /data
# Wed, 09 Nov 2016 01:04:12 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 09 Nov 2016 01:04:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Nov 2016 01:04:13 GMT
EXPOSE 6379/tcp
# Wed, 09 Nov 2016 01:04:13 GMT
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
	-	`sha256:8122e57942548d426a56275a2a9f1050ad53dd445326a39aa83dacdf6098f637`  
		Last Modified: Wed, 09 Nov 2016 01:04:26 GMT  
		Size: 4.2 MB (4224695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3cab49f269e5ba4ba10a9269d73e966ed3ed5328e92b06d36b8d6e14167d75`  
		Last Modified: Wed, 09 Nov 2016 01:04:27 GMT  
		Size: 4.9 MB (4893645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54ba26dfc2c8cce06d68bf02d58ced2570b98b33d6608828aca703acea660c84`  
		Last Modified: Wed, 09 Nov 2016 01:04:24 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3102e09b9fac69ec774878474bee62ffe757b68c27a5e043ccbf8c8753334b0c`  
		Last Modified: Wed, 09 Nov 2016 01:04:24 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-32bit`

```console
$ docker pull redis@sha256:944b998067bc435837421f69b554d38cc2e380b324c41b69d2a3ab1180c4dcb8
```

-	Platforms:
	-	linux; amd64

### `redis:3-32bit` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77895451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a858c9b45e26bfd0a500a35b5ce32086cebd03811e870c75be84828857695c17`
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
# Wed, 09 Nov 2016 01:01:14 GMT
ENV REDIS_VERSION=3.2.5
# Wed, 09 Nov 2016 01:01:14 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.5.tar.gz
# Wed, 09 Nov 2016 01:01:14 GMT
ENV REDIS_DOWNLOAD_SHA1=6f6333db6111badaa74519d743589ac4635eba7a
# Wed, 09 Nov 2016 01:03:13 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:04:10 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 09 Nov 2016 01:04:11 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 09 Nov 2016 01:04:11 GMT
VOLUME [/data]
# Wed, 09 Nov 2016 01:04:11 GMT
WORKDIR /data
# Wed, 09 Nov 2016 01:04:12 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 09 Nov 2016 01:04:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Nov 2016 01:04:13 GMT
EXPOSE 6379/tcp
# Wed, 09 Nov 2016 01:04:13 GMT
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
	-	`sha256:8122e57942548d426a56275a2a9f1050ad53dd445326a39aa83dacdf6098f637`  
		Last Modified: Wed, 09 Nov 2016 01:04:26 GMT  
		Size: 4.2 MB (4224695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3cab49f269e5ba4ba10a9269d73e966ed3ed5328e92b06d36b8d6e14167d75`  
		Last Modified: Wed, 09 Nov 2016 01:04:27 GMT  
		Size: 4.9 MB (4893645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54ba26dfc2c8cce06d68bf02d58ced2570b98b33d6608828aca703acea660c84`  
		Last Modified: Wed, 09 Nov 2016 01:04:24 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3102e09b9fac69ec774878474bee62ffe757b68c27a5e043ccbf8c8753334b0c`  
		Last Modified: Wed, 09 Nov 2016 01:04:24 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:32bit`

```console
$ docker pull redis@sha256:944b998067bc435837421f69b554d38cc2e380b324c41b69d2a3ab1180c4dcb8
```

-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77895451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a858c9b45e26bfd0a500a35b5ce32086cebd03811e870c75be84828857695c17`
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
# Wed, 09 Nov 2016 01:01:14 GMT
ENV REDIS_VERSION=3.2.5
# Wed, 09 Nov 2016 01:01:14 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.5.tar.gz
# Wed, 09 Nov 2016 01:01:14 GMT
ENV REDIS_DOWNLOAD_SHA1=6f6333db6111badaa74519d743589ac4635eba7a
# Wed, 09 Nov 2016 01:03:13 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:04:10 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 09 Nov 2016 01:04:11 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 09 Nov 2016 01:04:11 GMT
VOLUME [/data]
# Wed, 09 Nov 2016 01:04:11 GMT
WORKDIR /data
# Wed, 09 Nov 2016 01:04:12 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 09 Nov 2016 01:04:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Nov 2016 01:04:13 GMT
EXPOSE 6379/tcp
# Wed, 09 Nov 2016 01:04:13 GMT
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
	-	`sha256:8122e57942548d426a56275a2a9f1050ad53dd445326a39aa83dacdf6098f637`  
		Last Modified: Wed, 09 Nov 2016 01:04:26 GMT  
		Size: 4.2 MB (4224695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3cab49f269e5ba4ba10a9269d73e966ed3ed5328e92b06d36b8d6e14167d75`  
		Last Modified: Wed, 09 Nov 2016 01:04:27 GMT  
		Size: 4.9 MB (4893645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54ba26dfc2c8cce06d68bf02d58ced2570b98b33d6608828aca703acea660c84`  
		Last Modified: Wed, 09 Nov 2016 01:04:24 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3102e09b9fac69ec774878474bee62ffe757b68c27a5e043ccbf8c8753334b0c`  
		Last Modified: Wed, 09 Nov 2016 01:04:24 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.5-alpine`

```console
$ docker pull redis@sha256:f1ed3708f538b537eb9c2a7dd50dc90a706f7debd7e1196c9264edeea521a86d
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.5-alpine` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7988646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:501ad78535f015d88872e13fa87a828425117e3d28075d0c117932b05bf189b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Wed, 19 Oct 2016 00:07:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 19 Oct 2016 00:07:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 01 Nov 2016 00:40:04 GMT
ENV REDIS_VERSION=3.2.5
# Tue, 01 Nov 2016 00:40:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.5.tar.gz
# Tue, 01 Nov 2016 00:40:04 GMT
ENV REDIS_DOWNLOAD_SHA1=6f6333db6111badaa74519d743589ac4635eba7a
# Tue, 01 Nov 2016 00:40:47 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Tue, 01 Nov 2016 00:40:48 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 01 Nov 2016 00:40:48 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 00:40:48 GMT
WORKDIR /data
# Tue, 01 Nov 2016 00:40:49 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 01 Nov 2016 00:40:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Nov 2016 00:40:50 GMT
EXPOSE 6379/tcp
# Tue, 01 Nov 2016 00:40:50 GMT
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
	-	`sha256:8671a4e366191148799cfaf7e200917aa125108161d65510f479a857ee078dbb`  
		Last Modified: Tue, 01 Nov 2016 00:44:02 GMT  
		Size: 5.7 MB (5666008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f67b852963781b59b67bc764cedcb1335fd2de22100de9d8fa8fea66cf1250`  
		Last Modified: Tue, 01 Nov 2016 00:44:00 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adbb1313427c384eb6dffd8d3d32bb65e6cee9c6621567c8f75892c24b4720df`  
		Last Modified: Tue, 01 Nov 2016 00:44:01 GMT  
		Size: 386.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-alpine`

```console
$ docker pull redis@sha256:f1ed3708f538b537eb9c2a7dd50dc90a706f7debd7e1196c9264edeea521a86d
```

-	Platforms:
	-	linux; amd64

### `redis:3.2-alpine` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7988646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:501ad78535f015d88872e13fa87a828425117e3d28075d0c117932b05bf189b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Wed, 19 Oct 2016 00:07:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 19 Oct 2016 00:07:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 01 Nov 2016 00:40:04 GMT
ENV REDIS_VERSION=3.2.5
# Tue, 01 Nov 2016 00:40:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.5.tar.gz
# Tue, 01 Nov 2016 00:40:04 GMT
ENV REDIS_DOWNLOAD_SHA1=6f6333db6111badaa74519d743589ac4635eba7a
# Tue, 01 Nov 2016 00:40:47 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Tue, 01 Nov 2016 00:40:48 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 01 Nov 2016 00:40:48 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 00:40:48 GMT
WORKDIR /data
# Tue, 01 Nov 2016 00:40:49 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 01 Nov 2016 00:40:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Nov 2016 00:40:50 GMT
EXPOSE 6379/tcp
# Tue, 01 Nov 2016 00:40:50 GMT
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
	-	`sha256:8671a4e366191148799cfaf7e200917aa125108161d65510f479a857ee078dbb`  
		Last Modified: Tue, 01 Nov 2016 00:44:02 GMT  
		Size: 5.7 MB (5666008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f67b852963781b59b67bc764cedcb1335fd2de22100de9d8fa8fea66cf1250`  
		Last Modified: Tue, 01 Nov 2016 00:44:00 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adbb1313427c384eb6dffd8d3d32bb65e6cee9c6621567c8f75892c24b4720df`  
		Last Modified: Tue, 01 Nov 2016 00:44:01 GMT  
		Size: 386.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-alpine`

```console
$ docker pull redis@sha256:f1ed3708f538b537eb9c2a7dd50dc90a706f7debd7e1196c9264edeea521a86d
```

-	Platforms:
	-	linux; amd64

### `redis:3-alpine` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7988646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:501ad78535f015d88872e13fa87a828425117e3d28075d0c117932b05bf189b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Wed, 19 Oct 2016 00:07:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 19 Oct 2016 00:07:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 01 Nov 2016 00:40:04 GMT
ENV REDIS_VERSION=3.2.5
# Tue, 01 Nov 2016 00:40:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.5.tar.gz
# Tue, 01 Nov 2016 00:40:04 GMT
ENV REDIS_DOWNLOAD_SHA1=6f6333db6111badaa74519d743589ac4635eba7a
# Tue, 01 Nov 2016 00:40:47 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Tue, 01 Nov 2016 00:40:48 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 01 Nov 2016 00:40:48 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 00:40:48 GMT
WORKDIR /data
# Tue, 01 Nov 2016 00:40:49 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 01 Nov 2016 00:40:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Nov 2016 00:40:50 GMT
EXPOSE 6379/tcp
# Tue, 01 Nov 2016 00:40:50 GMT
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
	-	`sha256:8671a4e366191148799cfaf7e200917aa125108161d65510f479a857ee078dbb`  
		Last Modified: Tue, 01 Nov 2016 00:44:02 GMT  
		Size: 5.7 MB (5666008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f67b852963781b59b67bc764cedcb1335fd2de22100de9d8fa8fea66cf1250`  
		Last Modified: Tue, 01 Nov 2016 00:44:00 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adbb1313427c384eb6dffd8d3d32bb65e6cee9c6621567c8f75892c24b4720df`  
		Last Modified: Tue, 01 Nov 2016 00:44:01 GMT  
		Size: 386.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine`

```console
$ docker pull redis@sha256:f1ed3708f538b537eb9c2a7dd50dc90a706f7debd7e1196c9264edeea521a86d
```

-	Platforms:
	-	linux; amd64

### `redis:alpine` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7988646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:501ad78535f015d88872e13fa87a828425117e3d28075d0c117932b05bf189b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Wed, 19 Oct 2016 00:07:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 19 Oct 2016 00:07:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 01 Nov 2016 00:40:04 GMT
ENV REDIS_VERSION=3.2.5
# Tue, 01 Nov 2016 00:40:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.5.tar.gz
# Tue, 01 Nov 2016 00:40:04 GMT
ENV REDIS_DOWNLOAD_SHA1=6f6333db6111badaa74519d743589ac4635eba7a
# Tue, 01 Nov 2016 00:40:47 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Tue, 01 Nov 2016 00:40:48 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 01 Nov 2016 00:40:48 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 00:40:48 GMT
WORKDIR /data
# Tue, 01 Nov 2016 00:40:49 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 01 Nov 2016 00:40:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Nov 2016 00:40:50 GMT
EXPOSE 6379/tcp
# Tue, 01 Nov 2016 00:40:50 GMT
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
	-	`sha256:8671a4e366191148799cfaf7e200917aa125108161d65510f479a857ee078dbb`  
		Last Modified: Tue, 01 Nov 2016 00:44:02 GMT  
		Size: 5.7 MB (5666008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f67b852963781b59b67bc764cedcb1335fd2de22100de9d8fa8fea66cf1250`  
		Last Modified: Tue, 01 Nov 2016 00:44:00 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adbb1313427c384eb6dffd8d3d32bb65e6cee9c6621567c8f75892c24b4720df`  
		Last Modified: Tue, 01 Nov 2016 00:44:01 GMT  
		Size: 386.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
