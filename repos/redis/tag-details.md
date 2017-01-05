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
$ docker pull redis@sha256:1553176845ef847b1c30e30035d861f6a114b54789990b95d98f9f91b8adf9d9
```

-	Platforms:
	-	linux; amd64

### `redis:3.0.7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.8 MB (71767582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd0d72f99d5e31a54113944a8a89b1659059304c1b5cb5291f1c93690131bcea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:23:59 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 14 Dec 2016 19:24:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:24:11 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 19:24:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 19:26:13 GMT
ENV REDIS_VERSION=3.0.7
# Wed, 14 Dec 2016 19:26:13 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Wed, 14 Dec 2016 19:26:13 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Wed, 14 Dec 2016 19:26:56 GMT
RUN buildDeps='gcc libc6-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Dec 2016 19:26:57 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 14 Dec 2016 19:26:57 GMT
VOLUME [/data]
# Wed, 14 Dec 2016 19:26:58 GMT
WORKDIR /data
# Wed, 14 Dec 2016 19:26:58 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 14 Dec 2016 19:26:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Dec 2016 19:26:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 19:27:00 GMT
EXPOSE 6379/tcp
# Wed, 14 Dec 2016 19:27:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40c2fafe648d3d76bd33ea69c59cc5cc4d7e4506222a720df46d449e6294c26`  
		Last Modified: Wed, 21 Dec 2016 19:31:39 GMT  
		Size: 2.0 KB (2039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce384d4aea4f8135a4295fe213f47646d77482c5a1d5f9e06165290d05e9e2a1`  
		Last Modified: Wed, 21 Dec 2016 19:31:47 GMT  
		Size: 16.6 MB (16611964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e29dd684b8469e34716680ee5e4cc3110c4e957965471bd6d693e6effd08c84`  
		Last Modified: Wed, 21 Dec 2016 19:31:36 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5838f314b36206235e72c9ccfc96822061c3a35c4cfaaf241f94a74359d9811d`  
		Last Modified: Wed, 21 Dec 2016 19:31:38 GMT  
		Size: 3.0 MB (2981911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3258abc5e7d8d4137254fab8521410daa6054803a1e925adbac2ea6b8f98b6db`  
		Last Modified: Wed, 21 Dec 2016 19:31:36 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea0bd8abf6184fef06712970c917e94e2f1db04b55ff936e2d198e2643cbdf2`  
		Last Modified: Wed, 21 Dec 2016 19:31:36 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec400ce3b190d768ca9fb09e3a1791d57bcb83a3d8a6216f6177469a4ef6214`  
		Last Modified: Wed, 21 Dec 2016 19:31:36 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0`

```console
$ docker pull redis@sha256:1553176845ef847b1c30e30035d861f6a114b54789990b95d98f9f91b8adf9d9
```

-	Platforms:
	-	linux; amd64

### `redis:3.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.8 MB (71767582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd0d72f99d5e31a54113944a8a89b1659059304c1b5cb5291f1c93690131bcea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:23:59 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 14 Dec 2016 19:24:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:24:11 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 19:24:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 19:26:13 GMT
ENV REDIS_VERSION=3.0.7
# Wed, 14 Dec 2016 19:26:13 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Wed, 14 Dec 2016 19:26:13 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Wed, 14 Dec 2016 19:26:56 GMT
RUN buildDeps='gcc libc6-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Dec 2016 19:26:57 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 14 Dec 2016 19:26:57 GMT
VOLUME [/data]
# Wed, 14 Dec 2016 19:26:58 GMT
WORKDIR /data
# Wed, 14 Dec 2016 19:26:58 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 14 Dec 2016 19:26:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Dec 2016 19:26:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 19:27:00 GMT
EXPOSE 6379/tcp
# Wed, 14 Dec 2016 19:27:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40c2fafe648d3d76bd33ea69c59cc5cc4d7e4506222a720df46d449e6294c26`  
		Last Modified: Wed, 21 Dec 2016 19:31:39 GMT  
		Size: 2.0 KB (2039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce384d4aea4f8135a4295fe213f47646d77482c5a1d5f9e06165290d05e9e2a1`  
		Last Modified: Wed, 21 Dec 2016 19:31:47 GMT  
		Size: 16.6 MB (16611964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e29dd684b8469e34716680ee5e4cc3110c4e957965471bd6d693e6effd08c84`  
		Last Modified: Wed, 21 Dec 2016 19:31:36 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5838f314b36206235e72c9ccfc96822061c3a35c4cfaaf241f94a74359d9811d`  
		Last Modified: Wed, 21 Dec 2016 19:31:38 GMT  
		Size: 3.0 MB (2981911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3258abc5e7d8d4137254fab8521410daa6054803a1e925adbac2ea6b8f98b6db`  
		Last Modified: Wed, 21 Dec 2016 19:31:36 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea0bd8abf6184fef06712970c917e94e2f1db04b55ff936e2d198e2643cbdf2`  
		Last Modified: Wed, 21 Dec 2016 19:31:36 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec400ce3b190d768ca9fb09e3a1791d57bcb83a3d8a6216f6177469a4ef6214`  
		Last Modified: Wed, 21 Dec 2016 19:31:36 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0.7-32bit`

```console
$ docker pull redis@sha256:9dc86087e36be0863ae984228730ee6200dd22b01345b848b52d2b55581295aa
```

-	Platforms:
	-	linux; amd64

### `redis:3.0.7-32bit` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.7 MB (75680151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc4cba68dd257dadec7389257645fe06d08de61d0fb4bffadd0161564d6e26d1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:23:59 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 14 Dec 2016 19:24:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:24:11 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 19:24:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 19:26:13 GMT
ENV REDIS_VERSION=3.0.7
# Wed, 14 Dec 2016 19:26:13 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Wed, 14 Dec 2016 19:26:13 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Wed, 14 Dec 2016 19:27:06 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:27:57 GMT
RUN buildDeps='gcc gcc-multilib libc6-dev-i386 make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Dec 2016 19:27:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 14 Dec 2016 19:27:58 GMT
VOLUME [/data]
# Wed, 14 Dec 2016 19:27:58 GMT
WORKDIR /data
# Wed, 14 Dec 2016 19:27:59 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 14 Dec 2016 19:28:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Dec 2016 19:28:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 19:28:01 GMT
EXPOSE 6379/tcp
# Wed, 14 Dec 2016 19:28:01 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40c2fafe648d3d76bd33ea69c59cc5cc4d7e4506222a720df46d449e6294c26`  
		Last Modified: Wed, 21 Dec 2016 19:31:39 GMT  
		Size: 2.0 KB (2039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce384d4aea4f8135a4295fe213f47646d77482c5a1d5f9e06165290d05e9e2a1`  
		Last Modified: Wed, 21 Dec 2016 19:31:47 GMT  
		Size: 16.6 MB (16611964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e29dd684b8469e34716680ee5e4cc3110c4e957965471bd6d693e6effd08c84`  
		Last Modified: Wed, 21 Dec 2016 19:31:36 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153f4fe97666bf7333b37144b5c01cb52e3b23adeca33b6c7f0848a56d14588c`  
		Last Modified: Wed, 21 Dec 2016 19:32:34 GMT  
		Size: 4.2 MB (4224766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf33060662d60b840b2d783a9756baa0aa643f46bbd02ef154e5ee7c30330496`  
		Last Modified: Wed, 21 Dec 2016 19:32:32 GMT  
		Size: 2.7 MB (2669716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cca1891e4e27c125c08b791068a7022f6dbb850264a536f85e063ad855d9fd5`  
		Last Modified: Wed, 21 Dec 2016 19:32:31 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fba2f92fc02c7da45c700d2fb0f4040af6c44e44b572751fb86735c45dd952c`  
		Last Modified: Wed, 21 Dec 2016 19:32:31 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e85616fc368b7fbddc6c4e3ec8dfbfe57709144e203535ea1becd36a1afa30`  
		Last Modified: Wed, 21 Dec 2016 19:32:31 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0-32bit`

```console
$ docker pull redis@sha256:9dc86087e36be0863ae984228730ee6200dd22b01345b848b52d2b55581295aa
```

-	Platforms:
	-	linux; amd64

### `redis:3.0-32bit` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.7 MB (75680151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc4cba68dd257dadec7389257645fe06d08de61d0fb4bffadd0161564d6e26d1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:23:59 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 14 Dec 2016 19:24:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:24:11 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 19:24:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 19:26:13 GMT
ENV REDIS_VERSION=3.0.7
# Wed, 14 Dec 2016 19:26:13 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Wed, 14 Dec 2016 19:26:13 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Wed, 14 Dec 2016 19:27:06 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:27:57 GMT
RUN buildDeps='gcc gcc-multilib libc6-dev-i386 make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Dec 2016 19:27:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 14 Dec 2016 19:27:58 GMT
VOLUME [/data]
# Wed, 14 Dec 2016 19:27:58 GMT
WORKDIR /data
# Wed, 14 Dec 2016 19:27:59 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 14 Dec 2016 19:28:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Dec 2016 19:28:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 19:28:01 GMT
EXPOSE 6379/tcp
# Wed, 14 Dec 2016 19:28:01 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40c2fafe648d3d76bd33ea69c59cc5cc4d7e4506222a720df46d449e6294c26`  
		Last Modified: Wed, 21 Dec 2016 19:31:39 GMT  
		Size: 2.0 KB (2039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce384d4aea4f8135a4295fe213f47646d77482c5a1d5f9e06165290d05e9e2a1`  
		Last Modified: Wed, 21 Dec 2016 19:31:47 GMT  
		Size: 16.6 MB (16611964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e29dd684b8469e34716680ee5e4cc3110c4e957965471bd6d693e6effd08c84`  
		Last Modified: Wed, 21 Dec 2016 19:31:36 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153f4fe97666bf7333b37144b5c01cb52e3b23adeca33b6c7f0848a56d14588c`  
		Last Modified: Wed, 21 Dec 2016 19:32:34 GMT  
		Size: 4.2 MB (4224766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf33060662d60b840b2d783a9756baa0aa643f46bbd02ef154e5ee7c30330496`  
		Last Modified: Wed, 21 Dec 2016 19:32:32 GMT  
		Size: 2.7 MB (2669716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cca1891e4e27c125c08b791068a7022f6dbb850264a536f85e063ad855d9fd5`  
		Last Modified: Wed, 21 Dec 2016 19:32:31 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fba2f92fc02c7da45c700d2fb0f4040af6c44e44b572751fb86735c45dd952c`  
		Last Modified: Wed, 21 Dec 2016 19:32:31 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e85616fc368b7fbddc6c4e3ec8dfbfe57709144e203535ea1becd36a1afa30`  
		Last Modified: Wed, 21 Dec 2016 19:32:31 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0.7-alpine`

```console
$ docker pull redis@sha256:eddf2b3bd071e043270dac4ad4c687a3ead94cd08790227eb8d9205b34b96700
```

-	Platforms:
	-	linux; amd64

### `redis:3.0.7-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4819860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10bf10ebf5f9b03560403c56342c63a78f606740df8be78da10de5d3367b25bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:32:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 04 Jan 2017 21:32:54 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 04 Jan 2017 21:32:54 GMT
ENV REDIS_VERSION=3.0.7
# Wed, 04 Jan 2017 21:32:54 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Wed, 04 Jan 2017 21:32:55 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Wed, 04 Jan 2017 21:33:32 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apk del .build-deps
# Wed, 04 Jan 2017 21:33:32 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 04 Jan 2017 21:33:33 GMT
VOLUME [/data]
# Wed, 04 Jan 2017 21:33:33 GMT
WORKDIR /data
# Wed, 04 Jan 2017 21:33:33 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:33:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 04 Jan 2017 21:33:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:33:35 GMT
EXPOSE 6379/tcp
# Wed, 04 Jan 2017 21:33:35 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d0e817ebe24b8370ee8853b4a95ffea8b7bfb4f38f36d5bcea30175e7184ed`  
		Last Modified: Thu, 05 Jan 2017 00:56:22 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2a4f935feb715baf7666a365ec66e8fa0709a25411be7d204948fb6ad181da`  
		Last Modified: Thu, 05 Jan 2017 00:56:20 GMT  
		Size: 7.7 KB (7677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f89f2ff82d4d96b5497a5f28b41baae1667e6ebfc5b5f48b26ceca36dc2a45`  
		Last Modified: Thu, 05 Jan 2017 00:56:22 GMT  
		Size: 2.9 MB (2908271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81aa90cfe775b6969bb203648d4e6c4a099d920bde35e0702ea82046fada9377`  
		Last Modified: Thu, 05 Jan 2017 00:56:20 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef0fdc174b3aa1a5205d83c9a3ed81d8f8b514f6b6ef3463a7ffc7780db1d00f`  
		Last Modified: Thu, 05 Jan 2017 00:56:20 GMT  
		Size: 386.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca94ab497f3f6b9a5e11d147fcbd8e0ae68a80881358cf53ac23b4e4411312e3`  
		Last Modified: Thu, 05 Jan 2017 00:56:21 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0-alpine`

```console
$ docker pull redis@sha256:eddf2b3bd071e043270dac4ad4c687a3ead94cd08790227eb8d9205b34b96700
```

-	Platforms:
	-	linux; amd64

### `redis:3.0-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4819860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10bf10ebf5f9b03560403c56342c63a78f606740df8be78da10de5d3367b25bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:32:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 04 Jan 2017 21:32:54 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 04 Jan 2017 21:32:54 GMT
ENV REDIS_VERSION=3.0.7
# Wed, 04 Jan 2017 21:32:54 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Wed, 04 Jan 2017 21:32:55 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Wed, 04 Jan 2017 21:33:32 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apk del .build-deps
# Wed, 04 Jan 2017 21:33:32 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 04 Jan 2017 21:33:33 GMT
VOLUME [/data]
# Wed, 04 Jan 2017 21:33:33 GMT
WORKDIR /data
# Wed, 04 Jan 2017 21:33:33 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:33:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 04 Jan 2017 21:33:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:33:35 GMT
EXPOSE 6379/tcp
# Wed, 04 Jan 2017 21:33:35 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d0e817ebe24b8370ee8853b4a95ffea8b7bfb4f38f36d5bcea30175e7184ed`  
		Last Modified: Thu, 05 Jan 2017 00:56:22 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2a4f935feb715baf7666a365ec66e8fa0709a25411be7d204948fb6ad181da`  
		Last Modified: Thu, 05 Jan 2017 00:56:20 GMT  
		Size: 7.7 KB (7677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f89f2ff82d4d96b5497a5f28b41baae1667e6ebfc5b5f48b26ceca36dc2a45`  
		Last Modified: Thu, 05 Jan 2017 00:56:22 GMT  
		Size: 2.9 MB (2908271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81aa90cfe775b6969bb203648d4e6c4a099d920bde35e0702ea82046fada9377`  
		Last Modified: Thu, 05 Jan 2017 00:56:20 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef0fdc174b3aa1a5205d83c9a3ed81d8f8b514f6b6ef3463a7ffc7780db1d00f`  
		Last Modified: Thu, 05 Jan 2017 00:56:20 GMT  
		Size: 386.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca94ab497f3f6b9a5e11d147fcbd8e0ae68a80881358cf53ac23b4e4411312e3`  
		Last Modified: Thu, 05 Jan 2017 00:56:21 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.6`

```console
$ docker pull redis@sha256:eed4da4937cb562e9005f3c66eb8c3abc14bb95ad497c03dc89d66bcd172fc7f
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.3 MB (74254785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d59dc9e6d0bf135e969796ba00c9f458e3b65c47d8a7349a3d6e0974ec02e103`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:23:59 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 14 Dec 2016 19:24:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:24:11 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 19:24:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 19:24:17 GMT
ENV REDIS_VERSION=3.2.6
# Wed, 14 Dec 2016 19:24:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.6.tar.gz
# Wed, 14 Dec 2016 19:24:18 GMT
ENV REDIS_DOWNLOAD_SHA1=0c7bc5c751bdbc6fabed178db9cdbdd948915d1b
# Wed, 14 Dec 2016 19:25:05 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Dec 2016 19:25:06 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 14 Dec 2016 19:25:07 GMT
VOLUME [/data]
# Wed, 14 Dec 2016 19:25:07 GMT
WORKDIR /data
# Wed, 14 Dec 2016 19:25:08 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 14 Dec 2016 19:25:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 19:25:08 GMT
EXPOSE 6379/tcp
# Wed, 14 Dec 2016 19:25:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40c2fafe648d3d76bd33ea69c59cc5cc4d7e4506222a720df46d449e6294c26`  
		Last Modified: Wed, 21 Dec 2016 19:31:39 GMT  
		Size: 2.0 KB (2039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce384d4aea4f8135a4295fe213f47646d77482c5a1d5f9e06165290d05e9e2a1`  
		Last Modified: Wed, 21 Dec 2016 19:31:47 GMT  
		Size: 16.6 MB (16611964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e29dd684b8469e34716680ee5e4cc3110c4e957965471bd6d693e6effd08c84`  
		Last Modified: Wed, 21 Dec 2016 19:31:36 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a3c975c33577f18754884adba25574a3c4e71e0e8bf97442066e42aa1910cf`  
		Last Modified: Wed, 21 Dec 2016 19:33:13 GMT  
		Size: 5.5 MB (5469240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a405554540f925252e823892be8dd8626c0a60c207fdc2cee2f42e9d157fb92b`  
		Last Modified: Wed, 21 Dec 2016 19:33:11 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2454731fda2e6a179774f73922a9069ccfc686d2ba6289508eba566a9f3d06`  
		Last Modified: Wed, 21 Dec 2016 19:33:11 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2`

```console
$ docker pull redis@sha256:eed4da4937cb562e9005f3c66eb8c3abc14bb95ad497c03dc89d66bcd172fc7f
```

-	Platforms:
	-	linux; amd64

### `redis:3.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.3 MB (74254785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d59dc9e6d0bf135e969796ba00c9f458e3b65c47d8a7349a3d6e0974ec02e103`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:23:59 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 14 Dec 2016 19:24:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:24:11 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 19:24:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 19:24:17 GMT
ENV REDIS_VERSION=3.2.6
# Wed, 14 Dec 2016 19:24:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.6.tar.gz
# Wed, 14 Dec 2016 19:24:18 GMT
ENV REDIS_DOWNLOAD_SHA1=0c7bc5c751bdbc6fabed178db9cdbdd948915d1b
# Wed, 14 Dec 2016 19:25:05 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Dec 2016 19:25:06 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 14 Dec 2016 19:25:07 GMT
VOLUME [/data]
# Wed, 14 Dec 2016 19:25:07 GMT
WORKDIR /data
# Wed, 14 Dec 2016 19:25:08 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 14 Dec 2016 19:25:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 19:25:08 GMT
EXPOSE 6379/tcp
# Wed, 14 Dec 2016 19:25:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40c2fafe648d3d76bd33ea69c59cc5cc4d7e4506222a720df46d449e6294c26`  
		Last Modified: Wed, 21 Dec 2016 19:31:39 GMT  
		Size: 2.0 KB (2039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce384d4aea4f8135a4295fe213f47646d77482c5a1d5f9e06165290d05e9e2a1`  
		Last Modified: Wed, 21 Dec 2016 19:31:47 GMT  
		Size: 16.6 MB (16611964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e29dd684b8469e34716680ee5e4cc3110c4e957965471bd6d693e6effd08c84`  
		Last Modified: Wed, 21 Dec 2016 19:31:36 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a3c975c33577f18754884adba25574a3c4e71e0e8bf97442066e42aa1910cf`  
		Last Modified: Wed, 21 Dec 2016 19:33:13 GMT  
		Size: 5.5 MB (5469240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a405554540f925252e823892be8dd8626c0a60c207fdc2cee2f42e9d157fb92b`  
		Last Modified: Wed, 21 Dec 2016 19:33:11 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2454731fda2e6a179774f73922a9069ccfc686d2ba6289508eba566a9f3d06`  
		Last Modified: Wed, 21 Dec 2016 19:33:11 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3`

```console
$ docker pull redis@sha256:eed4da4937cb562e9005f3c66eb8c3abc14bb95ad497c03dc89d66bcd172fc7f
```

-	Platforms:
	-	linux; amd64

### `redis:3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.3 MB (74254785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d59dc9e6d0bf135e969796ba00c9f458e3b65c47d8a7349a3d6e0974ec02e103`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:23:59 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 14 Dec 2016 19:24:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:24:11 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 19:24:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 19:24:17 GMT
ENV REDIS_VERSION=3.2.6
# Wed, 14 Dec 2016 19:24:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.6.tar.gz
# Wed, 14 Dec 2016 19:24:18 GMT
ENV REDIS_DOWNLOAD_SHA1=0c7bc5c751bdbc6fabed178db9cdbdd948915d1b
# Wed, 14 Dec 2016 19:25:05 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Dec 2016 19:25:06 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 14 Dec 2016 19:25:07 GMT
VOLUME [/data]
# Wed, 14 Dec 2016 19:25:07 GMT
WORKDIR /data
# Wed, 14 Dec 2016 19:25:08 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 14 Dec 2016 19:25:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 19:25:08 GMT
EXPOSE 6379/tcp
# Wed, 14 Dec 2016 19:25:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40c2fafe648d3d76bd33ea69c59cc5cc4d7e4506222a720df46d449e6294c26`  
		Last Modified: Wed, 21 Dec 2016 19:31:39 GMT  
		Size: 2.0 KB (2039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce384d4aea4f8135a4295fe213f47646d77482c5a1d5f9e06165290d05e9e2a1`  
		Last Modified: Wed, 21 Dec 2016 19:31:47 GMT  
		Size: 16.6 MB (16611964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e29dd684b8469e34716680ee5e4cc3110c4e957965471bd6d693e6effd08c84`  
		Last Modified: Wed, 21 Dec 2016 19:31:36 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a3c975c33577f18754884adba25574a3c4e71e0e8bf97442066e42aa1910cf`  
		Last Modified: Wed, 21 Dec 2016 19:33:13 GMT  
		Size: 5.5 MB (5469240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a405554540f925252e823892be8dd8626c0a60c207fdc2cee2f42e9d157fb92b`  
		Last Modified: Wed, 21 Dec 2016 19:33:11 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2454731fda2e6a179774f73922a9069ccfc686d2ba6289508eba566a9f3d06`  
		Last Modified: Wed, 21 Dec 2016 19:33:11 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:latest`

```console
$ docker pull redis@sha256:eed4da4937cb562e9005f3c66eb8c3abc14bb95ad497c03dc89d66bcd172fc7f
```

-	Platforms:
	-	linux; amd64

### `redis:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.3 MB (74254785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d59dc9e6d0bf135e969796ba00c9f458e3b65c47d8a7349a3d6e0974ec02e103`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:23:59 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 14 Dec 2016 19:24:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:24:11 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 19:24:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 19:24:17 GMT
ENV REDIS_VERSION=3.2.6
# Wed, 14 Dec 2016 19:24:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.6.tar.gz
# Wed, 14 Dec 2016 19:24:18 GMT
ENV REDIS_DOWNLOAD_SHA1=0c7bc5c751bdbc6fabed178db9cdbdd948915d1b
# Wed, 14 Dec 2016 19:25:05 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Dec 2016 19:25:06 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 14 Dec 2016 19:25:07 GMT
VOLUME [/data]
# Wed, 14 Dec 2016 19:25:07 GMT
WORKDIR /data
# Wed, 14 Dec 2016 19:25:08 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 14 Dec 2016 19:25:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 19:25:08 GMT
EXPOSE 6379/tcp
# Wed, 14 Dec 2016 19:25:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40c2fafe648d3d76bd33ea69c59cc5cc4d7e4506222a720df46d449e6294c26`  
		Last Modified: Wed, 21 Dec 2016 19:31:39 GMT  
		Size: 2.0 KB (2039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce384d4aea4f8135a4295fe213f47646d77482c5a1d5f9e06165290d05e9e2a1`  
		Last Modified: Wed, 21 Dec 2016 19:31:47 GMT  
		Size: 16.6 MB (16611964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e29dd684b8469e34716680ee5e4cc3110c4e957965471bd6d693e6effd08c84`  
		Last Modified: Wed, 21 Dec 2016 19:31:36 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a3c975c33577f18754884adba25574a3c4e71e0e8bf97442066e42aa1910cf`  
		Last Modified: Wed, 21 Dec 2016 19:33:13 GMT  
		Size: 5.5 MB (5469240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a405554540f925252e823892be8dd8626c0a60c207fdc2cee2f42e9d157fb92b`  
		Last Modified: Wed, 21 Dec 2016 19:33:11 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2454731fda2e6a179774f73922a9069ccfc686d2ba6289508eba566a9f3d06`  
		Last Modified: Wed, 21 Dec 2016 19:33:11 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.6-32bit`

```console
$ docker pull redis@sha256:849bca306c967dee8233a32b24e36d3290983d0dfcf6cfac126348bfab6bb61b
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.6-32bit` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77903118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f63941db2f432cbe472c69691ad337ec2eb7f90bdb4676ff638445d6c4fae9f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:23:59 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 14 Dec 2016 19:24:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:24:11 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 19:24:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 19:24:17 GMT
ENV REDIS_VERSION=3.2.6
# Wed, 14 Dec 2016 19:24:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.6.tar.gz
# Wed, 14 Dec 2016 19:24:18 GMT
ENV REDIS_DOWNLOAD_SHA1=0c7bc5c751bdbc6fabed178db9cdbdd948915d1b
# Wed, 14 Dec 2016 19:25:15 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:26:09 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Dec 2016 19:26:10 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 14 Dec 2016 19:26:10 GMT
VOLUME [/data]
# Wed, 14 Dec 2016 19:26:11 GMT
WORKDIR /data
# Wed, 14 Dec 2016 19:26:11 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 14 Dec 2016 19:26:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 19:26:12 GMT
EXPOSE 6379/tcp
# Wed, 14 Dec 2016 19:26:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40c2fafe648d3d76bd33ea69c59cc5cc4d7e4506222a720df46d449e6294c26`  
		Last Modified: Wed, 21 Dec 2016 19:31:39 GMT  
		Size: 2.0 KB (2039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce384d4aea4f8135a4295fe213f47646d77482c5a1d5f9e06165290d05e9e2a1`  
		Last Modified: Wed, 21 Dec 2016 19:31:47 GMT  
		Size: 16.6 MB (16611964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e29dd684b8469e34716680ee5e4cc3110c4e957965471bd6d693e6effd08c84`  
		Last Modified: Wed, 21 Dec 2016 19:31:36 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780a031882f22a68ae0b66c91b05c37a77fe63893ac15e3a1f641acae43b985b`  
		Last Modified: Wed, 21 Dec 2016 19:34:24 GMT  
		Size: 4.2 MB (4224755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:639235486865040c754d992f40fc26210d6ddff1a6d2e06d70fd0dc89c8bfb66`  
		Last Modified: Wed, 21 Dec 2016 19:34:23 GMT  
		Size: 4.9 MB (4892809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c4e7cfe3ad23f314f591cd2017567951cd2b341f7f474b0ee88b6d052d1cc9`  
		Last Modified: Wed, 21 Dec 2016 19:34:21 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5228fe06b4669636f1cb4d54cba00be305d70e38fe66015985fd2eeec614757`  
		Last Modified: Wed, 21 Dec 2016 19:34:21 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-32bit`

```console
$ docker pull redis@sha256:849bca306c967dee8233a32b24e36d3290983d0dfcf6cfac126348bfab6bb61b
```

-	Platforms:
	-	linux; amd64

### `redis:3.2-32bit` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77903118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f63941db2f432cbe472c69691ad337ec2eb7f90bdb4676ff638445d6c4fae9f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:23:59 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 14 Dec 2016 19:24:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:24:11 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 19:24:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 19:24:17 GMT
ENV REDIS_VERSION=3.2.6
# Wed, 14 Dec 2016 19:24:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.6.tar.gz
# Wed, 14 Dec 2016 19:24:18 GMT
ENV REDIS_DOWNLOAD_SHA1=0c7bc5c751bdbc6fabed178db9cdbdd948915d1b
# Wed, 14 Dec 2016 19:25:15 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:26:09 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Dec 2016 19:26:10 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 14 Dec 2016 19:26:10 GMT
VOLUME [/data]
# Wed, 14 Dec 2016 19:26:11 GMT
WORKDIR /data
# Wed, 14 Dec 2016 19:26:11 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 14 Dec 2016 19:26:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 19:26:12 GMT
EXPOSE 6379/tcp
# Wed, 14 Dec 2016 19:26:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40c2fafe648d3d76bd33ea69c59cc5cc4d7e4506222a720df46d449e6294c26`  
		Last Modified: Wed, 21 Dec 2016 19:31:39 GMT  
		Size: 2.0 KB (2039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce384d4aea4f8135a4295fe213f47646d77482c5a1d5f9e06165290d05e9e2a1`  
		Last Modified: Wed, 21 Dec 2016 19:31:47 GMT  
		Size: 16.6 MB (16611964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e29dd684b8469e34716680ee5e4cc3110c4e957965471bd6d693e6effd08c84`  
		Last Modified: Wed, 21 Dec 2016 19:31:36 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780a031882f22a68ae0b66c91b05c37a77fe63893ac15e3a1f641acae43b985b`  
		Last Modified: Wed, 21 Dec 2016 19:34:24 GMT  
		Size: 4.2 MB (4224755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:639235486865040c754d992f40fc26210d6ddff1a6d2e06d70fd0dc89c8bfb66`  
		Last Modified: Wed, 21 Dec 2016 19:34:23 GMT  
		Size: 4.9 MB (4892809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c4e7cfe3ad23f314f591cd2017567951cd2b341f7f474b0ee88b6d052d1cc9`  
		Last Modified: Wed, 21 Dec 2016 19:34:21 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5228fe06b4669636f1cb4d54cba00be305d70e38fe66015985fd2eeec614757`  
		Last Modified: Wed, 21 Dec 2016 19:34:21 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-32bit`

```console
$ docker pull redis@sha256:849bca306c967dee8233a32b24e36d3290983d0dfcf6cfac126348bfab6bb61b
```

-	Platforms:
	-	linux; amd64

### `redis:3-32bit` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77903118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f63941db2f432cbe472c69691ad337ec2eb7f90bdb4676ff638445d6c4fae9f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:23:59 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 14 Dec 2016 19:24:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:24:11 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 19:24:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 19:24:17 GMT
ENV REDIS_VERSION=3.2.6
# Wed, 14 Dec 2016 19:24:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.6.tar.gz
# Wed, 14 Dec 2016 19:24:18 GMT
ENV REDIS_DOWNLOAD_SHA1=0c7bc5c751bdbc6fabed178db9cdbdd948915d1b
# Wed, 14 Dec 2016 19:25:15 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:26:09 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Dec 2016 19:26:10 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 14 Dec 2016 19:26:10 GMT
VOLUME [/data]
# Wed, 14 Dec 2016 19:26:11 GMT
WORKDIR /data
# Wed, 14 Dec 2016 19:26:11 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 14 Dec 2016 19:26:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 19:26:12 GMT
EXPOSE 6379/tcp
# Wed, 14 Dec 2016 19:26:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40c2fafe648d3d76bd33ea69c59cc5cc4d7e4506222a720df46d449e6294c26`  
		Last Modified: Wed, 21 Dec 2016 19:31:39 GMT  
		Size: 2.0 KB (2039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce384d4aea4f8135a4295fe213f47646d77482c5a1d5f9e06165290d05e9e2a1`  
		Last Modified: Wed, 21 Dec 2016 19:31:47 GMT  
		Size: 16.6 MB (16611964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e29dd684b8469e34716680ee5e4cc3110c4e957965471bd6d693e6effd08c84`  
		Last Modified: Wed, 21 Dec 2016 19:31:36 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780a031882f22a68ae0b66c91b05c37a77fe63893ac15e3a1f641acae43b985b`  
		Last Modified: Wed, 21 Dec 2016 19:34:24 GMT  
		Size: 4.2 MB (4224755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:639235486865040c754d992f40fc26210d6ddff1a6d2e06d70fd0dc89c8bfb66`  
		Last Modified: Wed, 21 Dec 2016 19:34:23 GMT  
		Size: 4.9 MB (4892809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c4e7cfe3ad23f314f591cd2017567951cd2b341f7f474b0ee88b6d052d1cc9`  
		Last Modified: Wed, 21 Dec 2016 19:34:21 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5228fe06b4669636f1cb4d54cba00be305d70e38fe66015985fd2eeec614757`  
		Last Modified: Wed, 21 Dec 2016 19:34:21 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:32bit`

```console
$ docker pull redis@sha256:849bca306c967dee8233a32b24e36d3290983d0dfcf6cfac126348bfab6bb61b
```

-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77903118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f63941db2f432cbe472c69691ad337ec2eb7f90bdb4676ff638445d6c4fae9f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:23:59 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 14 Dec 2016 19:24:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:24:11 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 19:24:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 19:24:17 GMT
ENV REDIS_VERSION=3.2.6
# Wed, 14 Dec 2016 19:24:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.6.tar.gz
# Wed, 14 Dec 2016 19:24:18 GMT
ENV REDIS_DOWNLOAD_SHA1=0c7bc5c751bdbc6fabed178db9cdbdd948915d1b
# Wed, 14 Dec 2016 19:25:15 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:26:09 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Dec 2016 19:26:10 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 14 Dec 2016 19:26:10 GMT
VOLUME [/data]
# Wed, 14 Dec 2016 19:26:11 GMT
WORKDIR /data
# Wed, 14 Dec 2016 19:26:11 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 14 Dec 2016 19:26:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 19:26:12 GMT
EXPOSE 6379/tcp
# Wed, 14 Dec 2016 19:26:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40c2fafe648d3d76bd33ea69c59cc5cc4d7e4506222a720df46d449e6294c26`  
		Last Modified: Wed, 21 Dec 2016 19:31:39 GMT  
		Size: 2.0 KB (2039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce384d4aea4f8135a4295fe213f47646d77482c5a1d5f9e06165290d05e9e2a1`  
		Last Modified: Wed, 21 Dec 2016 19:31:47 GMT  
		Size: 16.6 MB (16611964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e29dd684b8469e34716680ee5e4cc3110c4e957965471bd6d693e6effd08c84`  
		Last Modified: Wed, 21 Dec 2016 19:31:36 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780a031882f22a68ae0b66c91b05c37a77fe63893ac15e3a1f641acae43b985b`  
		Last Modified: Wed, 21 Dec 2016 19:34:24 GMT  
		Size: 4.2 MB (4224755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:639235486865040c754d992f40fc26210d6ddff1a6d2e06d70fd0dc89c8bfb66`  
		Last Modified: Wed, 21 Dec 2016 19:34:23 GMT  
		Size: 4.9 MB (4892809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c4e7cfe3ad23f314f591cd2017567951cd2b341f7f474b0ee88b6d052d1cc9`  
		Last Modified: Wed, 21 Dec 2016 19:34:21 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5228fe06b4669636f1cb4d54cba00be305d70e38fe66015985fd2eeec614757`  
		Last Modified: Wed, 21 Dec 2016 19:34:21 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.6-alpine`

```console
$ docker pull redis@sha256:a06a61747e4a7b46788e2813b21ea6b06386df8e238e56f51f8793adb48f0a8b
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.6-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7304050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53df695896acdecb39a6914e25f7680011be26504dcb0675ac6e98c49379d171`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:32:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 04 Jan 2017 21:32:54 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 04 Jan 2017 21:33:36 GMT
ENV REDIS_VERSION=3.2.6
# Wed, 04 Jan 2017 21:33:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.6.tar.gz
# Wed, 04 Jan 2017 21:33:37 GMT
ENV REDIS_DOWNLOAD_SHA1=0c7bc5c751bdbc6fabed178db9cdbdd948915d1b
# Wed, 04 Jan 2017 21:34:20 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Wed, 04 Jan 2017 21:34:21 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 04 Jan 2017 21:34:22 GMT
VOLUME [/data]
# Wed, 04 Jan 2017 21:34:22 GMT
WORKDIR /data
# Wed, 04 Jan 2017 21:34:22 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:34:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:34:23 GMT
EXPOSE 6379/tcp
# Wed, 04 Jan 2017 21:34:23 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d0e817ebe24b8370ee8853b4a95ffea8b7bfb4f38f36d5bcea30175e7184ed`  
		Last Modified: Thu, 05 Jan 2017 00:56:22 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2a4f935feb715baf7666a365ec66e8fa0709a25411be7d204948fb6ad181da`  
		Last Modified: Thu, 05 Jan 2017 00:56:20 GMT  
		Size: 7.7 KB (7677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b43e209f780005f6689c300c84dc50f43b6637f936dd2f8f47ee97f50333e66`  
		Last Modified: Thu, 05 Jan 2017 01:00:05 GMT  
		Size: 5.4 MB (5392577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06b9be4b2bc94707150046a704f0ffb6dbb91675f0eccc9e01d7f7bbd8c2fb2`  
		Last Modified: Thu, 05 Jan 2017 01:00:04 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de037257f43410d6f75e177b0e3c2630a1aba814c988e04b4149ac0db1af3d7`  
		Last Modified: Thu, 05 Jan 2017 01:00:03 GMT  
		Size: 388.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-alpine`

```console
$ docker pull redis@sha256:a06a61747e4a7b46788e2813b21ea6b06386df8e238e56f51f8793adb48f0a8b
```

-	Platforms:
	-	linux; amd64

### `redis:3.2-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7304050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53df695896acdecb39a6914e25f7680011be26504dcb0675ac6e98c49379d171`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:32:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 04 Jan 2017 21:32:54 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 04 Jan 2017 21:33:36 GMT
ENV REDIS_VERSION=3.2.6
# Wed, 04 Jan 2017 21:33:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.6.tar.gz
# Wed, 04 Jan 2017 21:33:37 GMT
ENV REDIS_DOWNLOAD_SHA1=0c7bc5c751bdbc6fabed178db9cdbdd948915d1b
# Wed, 04 Jan 2017 21:34:20 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Wed, 04 Jan 2017 21:34:21 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 04 Jan 2017 21:34:22 GMT
VOLUME [/data]
# Wed, 04 Jan 2017 21:34:22 GMT
WORKDIR /data
# Wed, 04 Jan 2017 21:34:22 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:34:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:34:23 GMT
EXPOSE 6379/tcp
# Wed, 04 Jan 2017 21:34:23 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d0e817ebe24b8370ee8853b4a95ffea8b7bfb4f38f36d5bcea30175e7184ed`  
		Last Modified: Thu, 05 Jan 2017 00:56:22 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2a4f935feb715baf7666a365ec66e8fa0709a25411be7d204948fb6ad181da`  
		Last Modified: Thu, 05 Jan 2017 00:56:20 GMT  
		Size: 7.7 KB (7677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b43e209f780005f6689c300c84dc50f43b6637f936dd2f8f47ee97f50333e66`  
		Last Modified: Thu, 05 Jan 2017 01:00:05 GMT  
		Size: 5.4 MB (5392577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06b9be4b2bc94707150046a704f0ffb6dbb91675f0eccc9e01d7f7bbd8c2fb2`  
		Last Modified: Thu, 05 Jan 2017 01:00:04 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de037257f43410d6f75e177b0e3c2630a1aba814c988e04b4149ac0db1af3d7`  
		Last Modified: Thu, 05 Jan 2017 01:00:03 GMT  
		Size: 388.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-alpine`

```console
$ docker pull redis@sha256:a06a61747e4a7b46788e2813b21ea6b06386df8e238e56f51f8793adb48f0a8b
```

-	Platforms:
	-	linux; amd64

### `redis:3-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7304050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53df695896acdecb39a6914e25f7680011be26504dcb0675ac6e98c49379d171`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:32:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 04 Jan 2017 21:32:54 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 04 Jan 2017 21:33:36 GMT
ENV REDIS_VERSION=3.2.6
# Wed, 04 Jan 2017 21:33:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.6.tar.gz
# Wed, 04 Jan 2017 21:33:37 GMT
ENV REDIS_DOWNLOAD_SHA1=0c7bc5c751bdbc6fabed178db9cdbdd948915d1b
# Wed, 04 Jan 2017 21:34:20 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Wed, 04 Jan 2017 21:34:21 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 04 Jan 2017 21:34:22 GMT
VOLUME [/data]
# Wed, 04 Jan 2017 21:34:22 GMT
WORKDIR /data
# Wed, 04 Jan 2017 21:34:22 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:34:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:34:23 GMT
EXPOSE 6379/tcp
# Wed, 04 Jan 2017 21:34:23 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d0e817ebe24b8370ee8853b4a95ffea8b7bfb4f38f36d5bcea30175e7184ed`  
		Last Modified: Thu, 05 Jan 2017 00:56:22 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2a4f935feb715baf7666a365ec66e8fa0709a25411be7d204948fb6ad181da`  
		Last Modified: Thu, 05 Jan 2017 00:56:20 GMT  
		Size: 7.7 KB (7677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b43e209f780005f6689c300c84dc50f43b6637f936dd2f8f47ee97f50333e66`  
		Last Modified: Thu, 05 Jan 2017 01:00:05 GMT  
		Size: 5.4 MB (5392577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06b9be4b2bc94707150046a704f0ffb6dbb91675f0eccc9e01d7f7bbd8c2fb2`  
		Last Modified: Thu, 05 Jan 2017 01:00:04 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de037257f43410d6f75e177b0e3c2630a1aba814c988e04b4149ac0db1af3d7`  
		Last Modified: Thu, 05 Jan 2017 01:00:03 GMT  
		Size: 388.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine`

```console
$ docker pull redis@sha256:a06a61747e4a7b46788e2813b21ea6b06386df8e238e56f51f8793adb48f0a8b
```

-	Platforms:
	-	linux; amd64

### `redis:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7304050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53df695896acdecb39a6914e25f7680011be26504dcb0675ac6e98c49379d171`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:32:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 04 Jan 2017 21:32:54 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 04 Jan 2017 21:33:36 GMT
ENV REDIS_VERSION=3.2.6
# Wed, 04 Jan 2017 21:33:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.6.tar.gz
# Wed, 04 Jan 2017 21:33:37 GMT
ENV REDIS_DOWNLOAD_SHA1=0c7bc5c751bdbc6fabed178db9cdbdd948915d1b
# Wed, 04 Jan 2017 21:34:20 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Wed, 04 Jan 2017 21:34:21 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 04 Jan 2017 21:34:22 GMT
VOLUME [/data]
# Wed, 04 Jan 2017 21:34:22 GMT
WORKDIR /data
# Wed, 04 Jan 2017 21:34:22 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:34:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:34:23 GMT
EXPOSE 6379/tcp
# Wed, 04 Jan 2017 21:34:23 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d0e817ebe24b8370ee8853b4a95ffea8b7bfb4f38f36d5bcea30175e7184ed`  
		Last Modified: Thu, 05 Jan 2017 00:56:22 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2a4f935feb715baf7666a365ec66e8fa0709a25411be7d204948fb6ad181da`  
		Last Modified: Thu, 05 Jan 2017 00:56:20 GMT  
		Size: 7.7 KB (7677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b43e209f780005f6689c300c84dc50f43b6637f936dd2f8f47ee97f50333e66`  
		Last Modified: Thu, 05 Jan 2017 01:00:05 GMT  
		Size: 5.4 MB (5392577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06b9be4b2bc94707150046a704f0ffb6dbb91675f0eccc9e01d7f7bbd8c2fb2`  
		Last Modified: Thu, 05 Jan 2017 01:00:04 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de037257f43410d6f75e177b0e3c2630a1aba814c988e04b4149ac0db1af3d7`  
		Last Modified: Thu, 05 Jan 2017 01:00:03 GMT  
		Size: 388.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
