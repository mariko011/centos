<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redis`

-	[`redis:3.0.7`](#redis307)
-	[`redis:3.0`](#redis30)
-	[`redis:3.0.7-32bit`](#redis307-32bit)
-	[`redis:3.0-32bit`](#redis30-32bit)
-	[`redis:3.0.7-alpine`](#redis307-alpine)
-	[`redis:3.0-alpine`](#redis30-alpine)
-	[`redis:3.2.4`](#redis324)
-	[`redis:3.2`](#redis32)
-	[`redis:3`](#redis3)
-	[`redis:latest`](#redislatest)
-	[`redis:3.2.4-32bit`](#redis324-32bit)
-	[`redis:3.2-32bit`](#redis32-32bit)
-	[`redis:3-32bit`](#redis3-32bit)
-	[`redis:32bit`](#redis32bit)
-	[`redis:3.2.4-alpine`](#redis324-alpine)
-	[`redis:3.2-alpine`](#redis32-alpine)
-	[`redis:3-alpine`](#redis3-alpine)
-	[`redis:alpine`](#redisalpine)

## `redis:3.0.7`

```console
$ docker pull redis@sha256:2962ac2d8860186858f7d7d0cb7816fcf26d01a1936ebc0b8e6758ffefebfe08
```

-	Platforms:
	-	linux; amd64

### `redis:3.0.7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.8 MB (71755901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bfa0e708de928446d8d942c417d8ec2a190d9fbeeb3046b5d42defdf0ef6277`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:02:00 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 23 Sep 2016 23:02:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:02:13 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 23:02:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Sep 2016 23:05:50 GMT
ENV REDIS_VERSION=3.0.7
# Fri, 23 Sep 2016 23:05:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Fri, 23 Sep 2016 23:05:50 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Fri, 23 Sep 2016 23:06:36 GMT
RUN buildDeps='gcc libc6-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 23:06:37 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 23 Sep 2016 23:06:37 GMT
VOLUME [/data]
# Fri, 23 Sep 2016 23:06:37 GMT
WORKDIR /data
# Fri, 23 Sep 2016 23:06:38 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 23 Sep 2016 23:06:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 23 Sep 2016 23:06:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 23:06:39 GMT
EXPOSE 6379/tcp
# Fri, 23 Sep 2016 23:06:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1103ce5ca9d5420727dcd528b7b21e075685db9372e369a846e22b4cc8a36b`  
		Last Modified: Fri, 23 Sep 2016 23:03:21 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086a40c85e01f8b6ebbf6eae27f8e88da30b52732d02b7bb474b2eea9c6cc20b`  
		Last Modified: Fri, 23 Sep 2016 23:03:22 GMT  
		Size: 16.6 MB (16609531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5e9d112ec42e5782717afe613a212d7e84358d2d721ae81ead9f73b666a05f`  
		Last Modified: Fri, 23 Sep 2016 23:03:19 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a90e4ca9639f98a6b4992707a94e0008dc68c955e5df6f458054d106f7e93f`  
		Last Modified: Fri, 23 Sep 2016 23:06:49 GMT  
		Size: 3.0 MB (2981420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15070cc5a90674f1633a5c555b2ab80a8bddddc5cb247ad078a9e053fa5820a1`  
		Last Modified: Fri, 23 Sep 2016 23:06:47 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fc0c143722c1485dfa2baa7c8c9abf240f58634b8a9c8bea98e1ae0f467947`  
		Last Modified: Fri, 23 Sep 2016 23:06:47 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee42763e0e4fe7f9f92600b62a38a433b5f853ae9450809960c0c4d309a1eee`  
		Last Modified: Fri, 23 Sep 2016 23:06:47 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0`

```console
$ docker pull redis@sha256:2962ac2d8860186858f7d7d0cb7816fcf26d01a1936ebc0b8e6758ffefebfe08
```

-	Platforms:
	-	linux; amd64

### `redis:3.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.8 MB (71755901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bfa0e708de928446d8d942c417d8ec2a190d9fbeeb3046b5d42defdf0ef6277`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:02:00 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 23 Sep 2016 23:02:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:02:13 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 23:02:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Sep 2016 23:05:50 GMT
ENV REDIS_VERSION=3.0.7
# Fri, 23 Sep 2016 23:05:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Fri, 23 Sep 2016 23:05:50 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Fri, 23 Sep 2016 23:06:36 GMT
RUN buildDeps='gcc libc6-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 23:06:37 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 23 Sep 2016 23:06:37 GMT
VOLUME [/data]
# Fri, 23 Sep 2016 23:06:37 GMT
WORKDIR /data
# Fri, 23 Sep 2016 23:06:38 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 23 Sep 2016 23:06:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 23 Sep 2016 23:06:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 23:06:39 GMT
EXPOSE 6379/tcp
# Fri, 23 Sep 2016 23:06:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1103ce5ca9d5420727dcd528b7b21e075685db9372e369a846e22b4cc8a36b`  
		Last Modified: Fri, 23 Sep 2016 23:03:21 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086a40c85e01f8b6ebbf6eae27f8e88da30b52732d02b7bb474b2eea9c6cc20b`  
		Last Modified: Fri, 23 Sep 2016 23:03:22 GMT  
		Size: 16.6 MB (16609531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5e9d112ec42e5782717afe613a212d7e84358d2d721ae81ead9f73b666a05f`  
		Last Modified: Fri, 23 Sep 2016 23:03:19 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a90e4ca9639f98a6b4992707a94e0008dc68c955e5df6f458054d106f7e93f`  
		Last Modified: Fri, 23 Sep 2016 23:06:49 GMT  
		Size: 3.0 MB (2981420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15070cc5a90674f1633a5c555b2ab80a8bddddc5cb247ad078a9e053fa5820a1`  
		Last Modified: Fri, 23 Sep 2016 23:06:47 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fc0c143722c1485dfa2baa7c8c9abf240f58634b8a9c8bea98e1ae0f467947`  
		Last Modified: Fri, 23 Sep 2016 23:06:47 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee42763e0e4fe7f9f92600b62a38a433b5f853ae9450809960c0c4d309a1eee`  
		Last Modified: Fri, 23 Sep 2016 23:06:47 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0.7-32bit`

```console
$ docker pull redis@sha256:3bd454b525cf30e267e13ca0b947c6634a892470fe090e91b3413f090cf9cd58
```

-	Platforms:
	-	linux; amd64

### `redis:3.0.7-32bit` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.7 MB (75668149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22b7e9508362c73809d2f74e6159814607849547b09a9da8b011ad34fc537fc8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:02:00 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 23 Sep 2016 23:02:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:02:13 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 23:02:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Sep 2016 23:05:50 GMT
ENV REDIS_VERSION=3.0.7
# Fri, 23 Sep 2016 23:05:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Fri, 23 Sep 2016 23:05:50 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Fri, 23 Sep 2016 23:07:11 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:08:01 GMT
RUN buildDeps='gcc gcc-multilib libc6-dev-i386 make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 23:08:02 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 23 Sep 2016 23:08:03 GMT
VOLUME [/data]
# Fri, 23 Sep 2016 23:08:03 GMT
WORKDIR /data
# Fri, 23 Sep 2016 23:08:03 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 23 Sep 2016 23:08:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 23 Sep 2016 23:08:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 23:08:05 GMT
EXPOSE 6379/tcp
# Fri, 23 Sep 2016 23:08:05 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1103ce5ca9d5420727dcd528b7b21e075685db9372e369a846e22b4cc8a36b`  
		Last Modified: Fri, 23 Sep 2016 23:03:21 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086a40c85e01f8b6ebbf6eae27f8e88da30b52732d02b7bb474b2eea9c6cc20b`  
		Last Modified: Fri, 23 Sep 2016 23:03:22 GMT  
		Size: 16.6 MB (16609531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5e9d112ec42e5782717afe613a212d7e84358d2d721ae81ead9f73b666a05f`  
		Last Modified: Fri, 23 Sep 2016 23:03:19 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf84dfafdbf0f08da70a3ec303c1b6c901ad1eb0dff077082d8f5aad056c421`  
		Last Modified: Fri, 23 Sep 2016 23:08:14 GMT  
		Size: 4.2 MB (4224365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ff11e49d41f5123d16d41aee18739804fea3240f6529e49cb4d00df17f66f24`  
		Last Modified: Fri, 23 Sep 2016 23:08:15 GMT  
		Size: 2.7 MB (2669302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a88c723d8fcd57752d19651f0b877724adcc4e0360c92b9118d0b53804806395`  
		Last Modified: Fri, 23 Sep 2016 23:08:13 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a441f1ceb70fb20dba9b026b7006668b3ad350588c0595da9524741c5bdf17c`  
		Last Modified: Fri, 23 Sep 2016 23:08:13 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397ff862760de58508e06320157692a5de4ded49cda81fc9eaec61949450d23e`  
		Last Modified: Fri, 23 Sep 2016 23:08:13 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0-32bit`

```console
$ docker pull redis@sha256:3bd454b525cf30e267e13ca0b947c6634a892470fe090e91b3413f090cf9cd58
```

-	Platforms:
	-	linux; amd64

### `redis:3.0-32bit` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.7 MB (75668149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22b7e9508362c73809d2f74e6159814607849547b09a9da8b011ad34fc537fc8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:02:00 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 23 Sep 2016 23:02:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:02:13 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 23:02:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Sep 2016 23:05:50 GMT
ENV REDIS_VERSION=3.0.7
# Fri, 23 Sep 2016 23:05:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Fri, 23 Sep 2016 23:05:50 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Fri, 23 Sep 2016 23:07:11 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:08:01 GMT
RUN buildDeps='gcc gcc-multilib libc6-dev-i386 make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 23:08:02 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 23 Sep 2016 23:08:03 GMT
VOLUME [/data]
# Fri, 23 Sep 2016 23:08:03 GMT
WORKDIR /data
# Fri, 23 Sep 2016 23:08:03 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 23 Sep 2016 23:08:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 23 Sep 2016 23:08:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 23:08:05 GMT
EXPOSE 6379/tcp
# Fri, 23 Sep 2016 23:08:05 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1103ce5ca9d5420727dcd528b7b21e075685db9372e369a846e22b4cc8a36b`  
		Last Modified: Fri, 23 Sep 2016 23:03:21 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086a40c85e01f8b6ebbf6eae27f8e88da30b52732d02b7bb474b2eea9c6cc20b`  
		Last Modified: Fri, 23 Sep 2016 23:03:22 GMT  
		Size: 16.6 MB (16609531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5e9d112ec42e5782717afe613a212d7e84358d2d721ae81ead9f73b666a05f`  
		Last Modified: Fri, 23 Sep 2016 23:03:19 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf84dfafdbf0f08da70a3ec303c1b6c901ad1eb0dff077082d8f5aad056c421`  
		Last Modified: Fri, 23 Sep 2016 23:08:14 GMT  
		Size: 4.2 MB (4224365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ff11e49d41f5123d16d41aee18739804fea3240f6529e49cb4d00df17f66f24`  
		Last Modified: Fri, 23 Sep 2016 23:08:15 GMT  
		Size: 2.7 MB (2669302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a88c723d8fcd57752d19651f0b877724adcc4e0360c92b9118d0b53804806395`  
		Last Modified: Fri, 23 Sep 2016 23:08:13 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a441f1ceb70fb20dba9b026b7006668b3ad350588c0595da9524741c5bdf17c`  
		Last Modified: Fri, 23 Sep 2016 23:08:13 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397ff862760de58508e06320157692a5de4ded49cda81fc9eaec61949450d23e`  
		Last Modified: Fri, 23 Sep 2016 23:08:13 GMT  
		Size: 120.0 B  
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

## `redis:3.2.4`

```console
$ docker pull redis@sha256:38e873a0db859d0aa8ab6bae7bcb03c1bb65d2ad120346a09613084b49185912
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74243527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aa84b1b434e43bbd5a5577e334050e9bc5984aec570c981c7357e6bb6a6df1f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:02:00 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 23 Sep 2016 23:02:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:02:13 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 23:02:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 26 Sep 2016 17:57:04 GMT
ENV REDIS_VERSION=3.2.4
# Mon, 26 Sep 2016 17:57:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.4.tar.gz
# Mon, 26 Sep 2016 17:57:04 GMT
ENV REDIS_DOWNLOAD_SHA1=f0fe685cbfdb8c2d8c74613ad8a5a5f33fba40c9
# Mon, 26 Sep 2016 17:57:56 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 26 Sep 2016 17:57:57 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 26 Sep 2016 17:57:58 GMT
VOLUME [/data]
# Mon, 26 Sep 2016 17:57:58 GMT
WORKDIR /data
# Mon, 26 Sep 2016 17:57:58 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Mon, 26 Sep 2016 17:57:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 17:57:59 GMT
EXPOSE 6379/tcp
# Mon, 26 Sep 2016 17:57:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1103ce5ca9d5420727dcd528b7b21e075685db9372e369a846e22b4cc8a36b`  
		Last Modified: Fri, 23 Sep 2016 23:03:21 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086a40c85e01f8b6ebbf6eae27f8e88da30b52732d02b7bb474b2eea9c6cc20b`  
		Last Modified: Fri, 23 Sep 2016 23:03:22 GMT  
		Size: 16.6 MB (16609531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5e9d112ec42e5782717afe613a212d7e84358d2d721ae81ead9f73b666a05f`  
		Last Modified: Fri, 23 Sep 2016 23:03:19 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadc4b601bb43c90db9744ba1a5064e7225a7d703d977be4b7e68487c6b7f8f3`  
		Last Modified: Mon, 26 Sep 2016 18:00:57 GMT  
		Size: 5.5 MB (5469167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8066982e7a19a2c7f439fb657e18d3f2048c5421ddc9f1a912e9831a71c4a0e`  
		Last Modified: Mon, 26 Sep 2016 18:00:54 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bcdfa1b63bfd5b2bddc87a5d5875009500813a1903424c737685a7a66af40ed`  
		Last Modified: Mon, 26 Sep 2016 18:00:55 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2`

```console
$ docker pull redis@sha256:38e873a0db859d0aa8ab6bae7bcb03c1bb65d2ad120346a09613084b49185912
```

-	Platforms:
	-	linux; amd64

### `redis:3.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74243527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aa84b1b434e43bbd5a5577e334050e9bc5984aec570c981c7357e6bb6a6df1f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:02:00 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 23 Sep 2016 23:02:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:02:13 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 23:02:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 26 Sep 2016 17:57:04 GMT
ENV REDIS_VERSION=3.2.4
# Mon, 26 Sep 2016 17:57:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.4.tar.gz
# Mon, 26 Sep 2016 17:57:04 GMT
ENV REDIS_DOWNLOAD_SHA1=f0fe685cbfdb8c2d8c74613ad8a5a5f33fba40c9
# Mon, 26 Sep 2016 17:57:56 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 26 Sep 2016 17:57:57 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 26 Sep 2016 17:57:58 GMT
VOLUME [/data]
# Mon, 26 Sep 2016 17:57:58 GMT
WORKDIR /data
# Mon, 26 Sep 2016 17:57:58 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Mon, 26 Sep 2016 17:57:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 17:57:59 GMT
EXPOSE 6379/tcp
# Mon, 26 Sep 2016 17:57:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1103ce5ca9d5420727dcd528b7b21e075685db9372e369a846e22b4cc8a36b`  
		Last Modified: Fri, 23 Sep 2016 23:03:21 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086a40c85e01f8b6ebbf6eae27f8e88da30b52732d02b7bb474b2eea9c6cc20b`  
		Last Modified: Fri, 23 Sep 2016 23:03:22 GMT  
		Size: 16.6 MB (16609531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5e9d112ec42e5782717afe613a212d7e84358d2d721ae81ead9f73b666a05f`  
		Last Modified: Fri, 23 Sep 2016 23:03:19 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadc4b601bb43c90db9744ba1a5064e7225a7d703d977be4b7e68487c6b7f8f3`  
		Last Modified: Mon, 26 Sep 2016 18:00:57 GMT  
		Size: 5.5 MB (5469167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8066982e7a19a2c7f439fb657e18d3f2048c5421ddc9f1a912e9831a71c4a0e`  
		Last Modified: Mon, 26 Sep 2016 18:00:54 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bcdfa1b63bfd5b2bddc87a5d5875009500813a1903424c737685a7a66af40ed`  
		Last Modified: Mon, 26 Sep 2016 18:00:55 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3`

```console
$ docker pull redis@sha256:38e873a0db859d0aa8ab6bae7bcb03c1bb65d2ad120346a09613084b49185912
```

-	Platforms:
	-	linux; amd64

### `redis:3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74243527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aa84b1b434e43bbd5a5577e334050e9bc5984aec570c981c7357e6bb6a6df1f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:02:00 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 23 Sep 2016 23:02:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:02:13 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 23:02:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 26 Sep 2016 17:57:04 GMT
ENV REDIS_VERSION=3.2.4
# Mon, 26 Sep 2016 17:57:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.4.tar.gz
# Mon, 26 Sep 2016 17:57:04 GMT
ENV REDIS_DOWNLOAD_SHA1=f0fe685cbfdb8c2d8c74613ad8a5a5f33fba40c9
# Mon, 26 Sep 2016 17:57:56 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 26 Sep 2016 17:57:57 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 26 Sep 2016 17:57:58 GMT
VOLUME [/data]
# Mon, 26 Sep 2016 17:57:58 GMT
WORKDIR /data
# Mon, 26 Sep 2016 17:57:58 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Mon, 26 Sep 2016 17:57:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 17:57:59 GMT
EXPOSE 6379/tcp
# Mon, 26 Sep 2016 17:57:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1103ce5ca9d5420727dcd528b7b21e075685db9372e369a846e22b4cc8a36b`  
		Last Modified: Fri, 23 Sep 2016 23:03:21 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086a40c85e01f8b6ebbf6eae27f8e88da30b52732d02b7bb474b2eea9c6cc20b`  
		Last Modified: Fri, 23 Sep 2016 23:03:22 GMT  
		Size: 16.6 MB (16609531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5e9d112ec42e5782717afe613a212d7e84358d2d721ae81ead9f73b666a05f`  
		Last Modified: Fri, 23 Sep 2016 23:03:19 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadc4b601bb43c90db9744ba1a5064e7225a7d703d977be4b7e68487c6b7f8f3`  
		Last Modified: Mon, 26 Sep 2016 18:00:57 GMT  
		Size: 5.5 MB (5469167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8066982e7a19a2c7f439fb657e18d3f2048c5421ddc9f1a912e9831a71c4a0e`  
		Last Modified: Mon, 26 Sep 2016 18:00:54 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bcdfa1b63bfd5b2bddc87a5d5875009500813a1903424c737685a7a66af40ed`  
		Last Modified: Mon, 26 Sep 2016 18:00:55 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:latest`

```console
$ docker pull redis@sha256:38e873a0db859d0aa8ab6bae7bcb03c1bb65d2ad120346a09613084b49185912
```

-	Platforms:
	-	linux; amd64

### `redis:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74243527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aa84b1b434e43bbd5a5577e334050e9bc5984aec570c981c7357e6bb6a6df1f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:02:00 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 23 Sep 2016 23:02:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:02:13 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 23:02:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 26 Sep 2016 17:57:04 GMT
ENV REDIS_VERSION=3.2.4
# Mon, 26 Sep 2016 17:57:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.4.tar.gz
# Mon, 26 Sep 2016 17:57:04 GMT
ENV REDIS_DOWNLOAD_SHA1=f0fe685cbfdb8c2d8c74613ad8a5a5f33fba40c9
# Mon, 26 Sep 2016 17:57:56 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 26 Sep 2016 17:57:57 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 26 Sep 2016 17:57:58 GMT
VOLUME [/data]
# Mon, 26 Sep 2016 17:57:58 GMT
WORKDIR /data
# Mon, 26 Sep 2016 17:57:58 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Mon, 26 Sep 2016 17:57:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 17:57:59 GMT
EXPOSE 6379/tcp
# Mon, 26 Sep 2016 17:57:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1103ce5ca9d5420727dcd528b7b21e075685db9372e369a846e22b4cc8a36b`  
		Last Modified: Fri, 23 Sep 2016 23:03:21 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086a40c85e01f8b6ebbf6eae27f8e88da30b52732d02b7bb474b2eea9c6cc20b`  
		Last Modified: Fri, 23 Sep 2016 23:03:22 GMT  
		Size: 16.6 MB (16609531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5e9d112ec42e5782717afe613a212d7e84358d2d721ae81ead9f73b666a05f`  
		Last Modified: Fri, 23 Sep 2016 23:03:19 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadc4b601bb43c90db9744ba1a5064e7225a7d703d977be4b7e68487c6b7f8f3`  
		Last Modified: Mon, 26 Sep 2016 18:00:57 GMT  
		Size: 5.5 MB (5469167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8066982e7a19a2c7f439fb657e18d3f2048c5421ddc9f1a912e9831a71c4a0e`  
		Last Modified: Mon, 26 Sep 2016 18:00:54 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bcdfa1b63bfd5b2bddc87a5d5875009500813a1903424c737685a7a66af40ed`  
		Last Modified: Mon, 26 Sep 2016 18:00:55 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.4-32bit`

```console
$ docker pull redis@sha256:205e4a391158147a706b91bffaaba54441f6981bc70d54320167341282419e7b
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.4-32bit` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77892025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d58a9db6e19cf71b3a6385b02f1cb260d740420941bedef41b780d88924f2d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:02:00 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 23 Sep 2016 23:02:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:02:13 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 23:02:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 26 Sep 2016 17:57:04 GMT
ENV REDIS_VERSION=3.2.4
# Mon, 26 Sep 2016 17:57:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.4.tar.gz
# Mon, 26 Sep 2016 17:57:04 GMT
ENV REDIS_DOWNLOAD_SHA1=f0fe685cbfdb8c2d8c74613ad8a5a5f33fba40c9
# Mon, 26 Sep 2016 17:58:06 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 17:58:59 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 26 Sep 2016 17:59:00 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 26 Sep 2016 17:59:00 GMT
VOLUME [/data]
# Mon, 26 Sep 2016 17:59:01 GMT
WORKDIR /data
# Mon, 26 Sep 2016 17:59:01 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Mon, 26 Sep 2016 17:59:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 17:59:02 GMT
EXPOSE 6379/tcp
# Mon, 26 Sep 2016 17:59:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1103ce5ca9d5420727dcd528b7b21e075685db9372e369a846e22b4cc8a36b`  
		Last Modified: Fri, 23 Sep 2016 23:03:21 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086a40c85e01f8b6ebbf6eae27f8e88da30b52732d02b7bb474b2eea9c6cc20b`  
		Last Modified: Fri, 23 Sep 2016 23:03:22 GMT  
		Size: 16.6 MB (16609531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5e9d112ec42e5782717afe613a212d7e84358d2d721ae81ead9f73b666a05f`  
		Last Modified: Fri, 23 Sep 2016 23:03:19 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a1c149e0f287522fbcc5fe3cd88b69be9f8514ccda4b82e5bc1f4c6527a5d76`  
		Last Modified: Mon, 26 Sep 2016 18:01:44 GMT  
		Size: 4.2 MB (4224371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d2051dcb1a83581c11e1ea9b6c64cb4c3ce2aa0f35c973b5ed631e7da51d77`  
		Last Modified: Mon, 26 Sep 2016 18:01:44 GMT  
		Size: 4.9 MB (4893295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab3041f485663d7edb1cf7c176f7d9ae817225c1a2af120983840bb9ce288b3`  
		Last Modified: Mon, 26 Sep 2016 18:01:41 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e457139197cf4239b712059a26497b56556cf2d2345a3677a16a86ae54615c97`  
		Last Modified: Mon, 26 Sep 2016 18:01:42 GMT  
		Size: 393.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-32bit`

```console
$ docker pull redis@sha256:205e4a391158147a706b91bffaaba54441f6981bc70d54320167341282419e7b
```

-	Platforms:
	-	linux; amd64

### `redis:3.2-32bit` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77892025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d58a9db6e19cf71b3a6385b02f1cb260d740420941bedef41b780d88924f2d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:02:00 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 23 Sep 2016 23:02:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:02:13 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 23:02:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 26 Sep 2016 17:57:04 GMT
ENV REDIS_VERSION=3.2.4
# Mon, 26 Sep 2016 17:57:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.4.tar.gz
# Mon, 26 Sep 2016 17:57:04 GMT
ENV REDIS_DOWNLOAD_SHA1=f0fe685cbfdb8c2d8c74613ad8a5a5f33fba40c9
# Mon, 26 Sep 2016 17:58:06 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 17:58:59 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 26 Sep 2016 17:59:00 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 26 Sep 2016 17:59:00 GMT
VOLUME [/data]
# Mon, 26 Sep 2016 17:59:01 GMT
WORKDIR /data
# Mon, 26 Sep 2016 17:59:01 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Mon, 26 Sep 2016 17:59:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 17:59:02 GMT
EXPOSE 6379/tcp
# Mon, 26 Sep 2016 17:59:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1103ce5ca9d5420727dcd528b7b21e075685db9372e369a846e22b4cc8a36b`  
		Last Modified: Fri, 23 Sep 2016 23:03:21 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086a40c85e01f8b6ebbf6eae27f8e88da30b52732d02b7bb474b2eea9c6cc20b`  
		Last Modified: Fri, 23 Sep 2016 23:03:22 GMT  
		Size: 16.6 MB (16609531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5e9d112ec42e5782717afe613a212d7e84358d2d721ae81ead9f73b666a05f`  
		Last Modified: Fri, 23 Sep 2016 23:03:19 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a1c149e0f287522fbcc5fe3cd88b69be9f8514ccda4b82e5bc1f4c6527a5d76`  
		Last Modified: Mon, 26 Sep 2016 18:01:44 GMT  
		Size: 4.2 MB (4224371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d2051dcb1a83581c11e1ea9b6c64cb4c3ce2aa0f35c973b5ed631e7da51d77`  
		Last Modified: Mon, 26 Sep 2016 18:01:44 GMT  
		Size: 4.9 MB (4893295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab3041f485663d7edb1cf7c176f7d9ae817225c1a2af120983840bb9ce288b3`  
		Last Modified: Mon, 26 Sep 2016 18:01:41 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e457139197cf4239b712059a26497b56556cf2d2345a3677a16a86ae54615c97`  
		Last Modified: Mon, 26 Sep 2016 18:01:42 GMT  
		Size: 393.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-32bit`

```console
$ docker pull redis@sha256:205e4a391158147a706b91bffaaba54441f6981bc70d54320167341282419e7b
```

-	Platforms:
	-	linux; amd64

### `redis:3-32bit` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77892025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d58a9db6e19cf71b3a6385b02f1cb260d740420941bedef41b780d88924f2d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:02:00 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 23 Sep 2016 23:02:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:02:13 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 23:02:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 26 Sep 2016 17:57:04 GMT
ENV REDIS_VERSION=3.2.4
# Mon, 26 Sep 2016 17:57:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.4.tar.gz
# Mon, 26 Sep 2016 17:57:04 GMT
ENV REDIS_DOWNLOAD_SHA1=f0fe685cbfdb8c2d8c74613ad8a5a5f33fba40c9
# Mon, 26 Sep 2016 17:58:06 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 17:58:59 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 26 Sep 2016 17:59:00 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 26 Sep 2016 17:59:00 GMT
VOLUME [/data]
# Mon, 26 Sep 2016 17:59:01 GMT
WORKDIR /data
# Mon, 26 Sep 2016 17:59:01 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Mon, 26 Sep 2016 17:59:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 17:59:02 GMT
EXPOSE 6379/tcp
# Mon, 26 Sep 2016 17:59:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1103ce5ca9d5420727dcd528b7b21e075685db9372e369a846e22b4cc8a36b`  
		Last Modified: Fri, 23 Sep 2016 23:03:21 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086a40c85e01f8b6ebbf6eae27f8e88da30b52732d02b7bb474b2eea9c6cc20b`  
		Last Modified: Fri, 23 Sep 2016 23:03:22 GMT  
		Size: 16.6 MB (16609531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5e9d112ec42e5782717afe613a212d7e84358d2d721ae81ead9f73b666a05f`  
		Last Modified: Fri, 23 Sep 2016 23:03:19 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a1c149e0f287522fbcc5fe3cd88b69be9f8514ccda4b82e5bc1f4c6527a5d76`  
		Last Modified: Mon, 26 Sep 2016 18:01:44 GMT  
		Size: 4.2 MB (4224371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d2051dcb1a83581c11e1ea9b6c64cb4c3ce2aa0f35c973b5ed631e7da51d77`  
		Last Modified: Mon, 26 Sep 2016 18:01:44 GMT  
		Size: 4.9 MB (4893295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab3041f485663d7edb1cf7c176f7d9ae817225c1a2af120983840bb9ce288b3`  
		Last Modified: Mon, 26 Sep 2016 18:01:41 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e457139197cf4239b712059a26497b56556cf2d2345a3677a16a86ae54615c97`  
		Last Modified: Mon, 26 Sep 2016 18:01:42 GMT  
		Size: 393.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:32bit`

```console
$ docker pull redis@sha256:205e4a391158147a706b91bffaaba54441f6981bc70d54320167341282419e7b
```

-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77892025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d58a9db6e19cf71b3a6385b02f1cb260d740420941bedef41b780d88924f2d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:02:00 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 23 Sep 2016 23:02:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:02:13 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 23:02:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 26 Sep 2016 17:57:04 GMT
ENV REDIS_VERSION=3.2.4
# Mon, 26 Sep 2016 17:57:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.4.tar.gz
# Mon, 26 Sep 2016 17:57:04 GMT
ENV REDIS_DOWNLOAD_SHA1=f0fe685cbfdb8c2d8c74613ad8a5a5f33fba40c9
# Mon, 26 Sep 2016 17:58:06 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 17:58:59 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 26 Sep 2016 17:59:00 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 26 Sep 2016 17:59:00 GMT
VOLUME [/data]
# Mon, 26 Sep 2016 17:59:01 GMT
WORKDIR /data
# Mon, 26 Sep 2016 17:59:01 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Mon, 26 Sep 2016 17:59:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 17:59:02 GMT
EXPOSE 6379/tcp
# Mon, 26 Sep 2016 17:59:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1103ce5ca9d5420727dcd528b7b21e075685db9372e369a846e22b4cc8a36b`  
		Last Modified: Fri, 23 Sep 2016 23:03:21 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086a40c85e01f8b6ebbf6eae27f8e88da30b52732d02b7bb474b2eea9c6cc20b`  
		Last Modified: Fri, 23 Sep 2016 23:03:22 GMT  
		Size: 16.6 MB (16609531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5e9d112ec42e5782717afe613a212d7e84358d2d721ae81ead9f73b666a05f`  
		Last Modified: Fri, 23 Sep 2016 23:03:19 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a1c149e0f287522fbcc5fe3cd88b69be9f8514ccda4b82e5bc1f4c6527a5d76`  
		Last Modified: Mon, 26 Sep 2016 18:01:44 GMT  
		Size: 4.2 MB (4224371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d2051dcb1a83581c11e1ea9b6c64cb4c3ce2aa0f35c973b5ed631e7da51d77`  
		Last Modified: Mon, 26 Sep 2016 18:01:44 GMT  
		Size: 4.9 MB (4893295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab3041f485663d7edb1cf7c176f7d9ae817225c1a2af120983840bb9ce288b3`  
		Last Modified: Mon, 26 Sep 2016 18:01:41 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e457139197cf4239b712059a26497b56556cf2d2345a3677a16a86ae54615c97`  
		Last Modified: Mon, 26 Sep 2016 18:01:42 GMT  
		Size: 393.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.4-alpine`

```console
$ docker pull redis@sha256:e0ac33284bc6e8b392f24ac927996f4798b35ed81353486983b3830e2096a37f
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.4-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7609792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:906fffc0e2f40c2e4b449278bbe916b03b3361ac4c2fcabd0f0f1c52bc31a214`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Wed, 19 Oct 2016 00:07:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 19 Oct 2016 00:07:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 19 Oct 2016 00:07:59 GMT
ENV REDIS_VERSION=3.2.4
# Wed, 19 Oct 2016 00:07:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.4.tar.gz
# Wed, 19 Oct 2016 00:08:00 GMT
ENV REDIS_DOWNLOAD_SHA1=f0fe685cbfdb8c2d8c74613ad8a5a5f33fba40c9
# Wed, 19 Oct 2016 00:08:41 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Wed, 19 Oct 2016 00:08:42 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 19 Oct 2016 00:08:43 GMT
VOLUME [/data]
# Wed, 19 Oct 2016 00:08:43 GMT
WORKDIR /data
# Wed, 19 Oct 2016 00:08:44 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 19 Oct 2016 00:08:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 00:08:44 GMT
EXPOSE 6379/tcp
# Wed, 19 Oct 2016 00:08:45 GMT
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
	-	`sha256:858b417a6f6acdd10304119e0aa16fad3d4803c63160503ea57168d302ae9289`  
		Last Modified: Wed, 19 Oct 2016 00:08:56 GMT  
		Size: 5.3 MB (5287154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740c682f8fa05a03e6e7f6b456f87cfc2056aa7ba7c542120a0222f44f8269e9`  
		Last Modified: Wed, 19 Oct 2016 00:08:54 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c0bfe3d9a8931fba0ddb95b02ef98682f232dea59476405122abfe4966064d`  
		Last Modified: Wed, 19 Oct 2016 00:08:54 GMT  
		Size: 387.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-alpine`

```console
$ docker pull redis@sha256:e0ac33284bc6e8b392f24ac927996f4798b35ed81353486983b3830e2096a37f
```

-	Platforms:
	-	linux; amd64

### `redis:3.2-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7609792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:906fffc0e2f40c2e4b449278bbe916b03b3361ac4c2fcabd0f0f1c52bc31a214`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Wed, 19 Oct 2016 00:07:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 19 Oct 2016 00:07:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 19 Oct 2016 00:07:59 GMT
ENV REDIS_VERSION=3.2.4
# Wed, 19 Oct 2016 00:07:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.4.tar.gz
# Wed, 19 Oct 2016 00:08:00 GMT
ENV REDIS_DOWNLOAD_SHA1=f0fe685cbfdb8c2d8c74613ad8a5a5f33fba40c9
# Wed, 19 Oct 2016 00:08:41 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Wed, 19 Oct 2016 00:08:42 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 19 Oct 2016 00:08:43 GMT
VOLUME [/data]
# Wed, 19 Oct 2016 00:08:43 GMT
WORKDIR /data
# Wed, 19 Oct 2016 00:08:44 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 19 Oct 2016 00:08:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 00:08:44 GMT
EXPOSE 6379/tcp
# Wed, 19 Oct 2016 00:08:45 GMT
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
	-	`sha256:858b417a6f6acdd10304119e0aa16fad3d4803c63160503ea57168d302ae9289`  
		Last Modified: Wed, 19 Oct 2016 00:08:56 GMT  
		Size: 5.3 MB (5287154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740c682f8fa05a03e6e7f6b456f87cfc2056aa7ba7c542120a0222f44f8269e9`  
		Last Modified: Wed, 19 Oct 2016 00:08:54 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c0bfe3d9a8931fba0ddb95b02ef98682f232dea59476405122abfe4966064d`  
		Last Modified: Wed, 19 Oct 2016 00:08:54 GMT  
		Size: 387.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-alpine`

```console
$ docker pull redis@sha256:e0ac33284bc6e8b392f24ac927996f4798b35ed81353486983b3830e2096a37f
```

-	Platforms:
	-	linux; amd64

### `redis:3-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7609792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:906fffc0e2f40c2e4b449278bbe916b03b3361ac4c2fcabd0f0f1c52bc31a214`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Wed, 19 Oct 2016 00:07:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 19 Oct 2016 00:07:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 19 Oct 2016 00:07:59 GMT
ENV REDIS_VERSION=3.2.4
# Wed, 19 Oct 2016 00:07:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.4.tar.gz
# Wed, 19 Oct 2016 00:08:00 GMT
ENV REDIS_DOWNLOAD_SHA1=f0fe685cbfdb8c2d8c74613ad8a5a5f33fba40c9
# Wed, 19 Oct 2016 00:08:41 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Wed, 19 Oct 2016 00:08:42 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 19 Oct 2016 00:08:43 GMT
VOLUME [/data]
# Wed, 19 Oct 2016 00:08:43 GMT
WORKDIR /data
# Wed, 19 Oct 2016 00:08:44 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 19 Oct 2016 00:08:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 00:08:44 GMT
EXPOSE 6379/tcp
# Wed, 19 Oct 2016 00:08:45 GMT
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
	-	`sha256:858b417a6f6acdd10304119e0aa16fad3d4803c63160503ea57168d302ae9289`  
		Last Modified: Wed, 19 Oct 2016 00:08:56 GMT  
		Size: 5.3 MB (5287154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740c682f8fa05a03e6e7f6b456f87cfc2056aa7ba7c542120a0222f44f8269e9`  
		Last Modified: Wed, 19 Oct 2016 00:08:54 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c0bfe3d9a8931fba0ddb95b02ef98682f232dea59476405122abfe4966064d`  
		Last Modified: Wed, 19 Oct 2016 00:08:54 GMT  
		Size: 387.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine`

```console
$ docker pull redis@sha256:e0ac33284bc6e8b392f24ac927996f4798b35ed81353486983b3830e2096a37f
```

-	Platforms:
	-	linux; amd64

### `redis:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7609792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:906fffc0e2f40c2e4b449278bbe916b03b3361ac4c2fcabd0f0f1c52bc31a214`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Wed, 19 Oct 2016 00:07:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 19 Oct 2016 00:07:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 19 Oct 2016 00:07:59 GMT
ENV REDIS_VERSION=3.2.4
# Wed, 19 Oct 2016 00:07:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.4.tar.gz
# Wed, 19 Oct 2016 00:08:00 GMT
ENV REDIS_DOWNLOAD_SHA1=f0fe685cbfdb8c2d8c74613ad8a5a5f33fba40c9
# Wed, 19 Oct 2016 00:08:41 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Wed, 19 Oct 2016 00:08:42 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 19 Oct 2016 00:08:43 GMT
VOLUME [/data]
# Wed, 19 Oct 2016 00:08:43 GMT
WORKDIR /data
# Wed, 19 Oct 2016 00:08:44 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 19 Oct 2016 00:08:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 00:08:44 GMT
EXPOSE 6379/tcp
# Wed, 19 Oct 2016 00:08:45 GMT
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
	-	`sha256:858b417a6f6acdd10304119e0aa16fad3d4803c63160503ea57168d302ae9289`  
		Last Modified: Wed, 19 Oct 2016 00:08:56 GMT  
		Size: 5.3 MB (5287154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740c682f8fa05a03e6e7f6b456f87cfc2056aa7ba7c542120a0222f44f8269e9`  
		Last Modified: Wed, 19 Oct 2016 00:08:54 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c0bfe3d9a8931fba0ddb95b02ef98682f232dea59476405122abfe4966064d`  
		Last Modified: Wed, 19 Oct 2016 00:08:54 GMT  
		Size: 387.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
