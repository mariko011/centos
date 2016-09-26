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
$ docker pull redis@sha256:bad533c38c91466874f5a793a78d41758797d0fed269528fb87a49b26000a4f0
```

-	Platforms:
	-	linux; amd64

### `redis:3.0.7-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5161186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a186fa3991ecacd3e60e7bf70a79ceac0450666cb8350d77241f52267511a16`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 18:12:55 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 23 Sep 2016 18:12:56 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 23 Sep 2016 18:14:27 GMT
ENV REDIS_VERSION=3.0.7
# Fri, 23 Sep 2016 18:14:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Fri, 23 Sep 2016 18:14:28 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Fri, 23 Sep 2016 18:15:04 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apk del .build-deps
# Fri, 23 Sep 2016 18:15:04 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 23 Sep 2016 18:15:08 GMT
VOLUME [/data]
# Fri, 23 Sep 2016 18:15:08 GMT
WORKDIR /data
# Fri, 23 Sep 2016 18:15:09 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 23 Sep 2016 18:15:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 23 Sep 2016 18:15:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 18:15:10 GMT
EXPOSE 6379/tcp
# Fri, 23 Sep 2016 18:15:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f236a13876f0bbe65b40dc80b1dd1d4f54e6a30a86f19bce6bd0ca733644f6`  
		Last Modified: Fri, 23 Sep 2016 18:13:50 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8988aa911478e821539a5b3a005c0b0c2fa2affe265b2fe02601a42a788d93`  
		Last Modified: Fri, 23 Sep 2016 18:13:52 GMT  
		Size: 7.9 KB (7922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02a45b0812534f5de9d921bbe28324e6e99e996d5b7f96f30c960ed2b4d2bfe`  
		Last Modified: Fri, 23 Sep 2016 18:15:18 GMT  
		Size: 2.8 MB (2838465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:433119aa54e0f04b8534fffa4217cef1b27713075864f2352c50e8cc1b3d89eb`  
		Last Modified: Fri, 23 Sep 2016 18:15:17 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3701e8c7794fa8f3c8dfb7078c9d62ac355ec18ccef6208693aebf5c3fc6b16b`  
		Last Modified: Fri, 23 Sep 2016 18:15:18 GMT  
		Size: 385.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79c9ce7571e4047c1f6029a74f8d20ac16d71c8dc9c50f181e7e8b97672447b1`  
		Last Modified: Fri, 23 Sep 2016 18:15:18 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0-alpine`

```console
$ docker pull redis@sha256:bad533c38c91466874f5a793a78d41758797d0fed269528fb87a49b26000a4f0
```

-	Platforms:
	-	linux; amd64

### `redis:3.0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5161186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a186fa3991ecacd3e60e7bf70a79ceac0450666cb8350d77241f52267511a16`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 18:12:55 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 23 Sep 2016 18:12:56 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 23 Sep 2016 18:14:27 GMT
ENV REDIS_VERSION=3.0.7
# Fri, 23 Sep 2016 18:14:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Fri, 23 Sep 2016 18:14:28 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Fri, 23 Sep 2016 18:15:04 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apk del .build-deps
# Fri, 23 Sep 2016 18:15:04 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 23 Sep 2016 18:15:08 GMT
VOLUME [/data]
# Fri, 23 Sep 2016 18:15:08 GMT
WORKDIR /data
# Fri, 23 Sep 2016 18:15:09 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 23 Sep 2016 18:15:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 23 Sep 2016 18:15:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 18:15:10 GMT
EXPOSE 6379/tcp
# Fri, 23 Sep 2016 18:15:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f236a13876f0bbe65b40dc80b1dd1d4f54e6a30a86f19bce6bd0ca733644f6`  
		Last Modified: Fri, 23 Sep 2016 18:13:50 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8988aa911478e821539a5b3a005c0b0c2fa2affe265b2fe02601a42a788d93`  
		Last Modified: Fri, 23 Sep 2016 18:13:52 GMT  
		Size: 7.9 KB (7922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02a45b0812534f5de9d921bbe28324e6e99e996d5b7f96f30c960ed2b4d2bfe`  
		Last Modified: Fri, 23 Sep 2016 18:15:18 GMT  
		Size: 2.8 MB (2838465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:433119aa54e0f04b8534fffa4217cef1b27713075864f2352c50e8cc1b3d89eb`  
		Last Modified: Fri, 23 Sep 2016 18:15:17 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3701e8c7794fa8f3c8dfb7078c9d62ac355ec18ccef6208693aebf5c3fc6b16b`  
		Last Modified: Fri, 23 Sep 2016 18:15:18 GMT  
		Size: 385.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79c9ce7571e4047c1f6029a74f8d20ac16d71c8dc9c50f181e7e8b97672447b1`  
		Last Modified: Fri, 23 Sep 2016 18:15:18 GMT  
		Size: 118.0 B  
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
$ docker pull redis@sha256:99105b7a83dd67a0b4a86ca5f64335801c62d4f3b685eebd4fb66fdb87c66b7b
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.4-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7609754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1f619d04b7afa1521de691988eceeceaf2c5921281b4d8c3f369bf9146fd0f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 18:12:55 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 23 Sep 2016 18:12:56 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 26 Sep 2016 17:59:03 GMT
ENV REDIS_VERSION=3.2.4
# Mon, 26 Sep 2016 17:59:03 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.4.tar.gz
# Mon, 26 Sep 2016 17:59:03 GMT
ENV REDIS_DOWNLOAD_SHA1=f0fe685cbfdb8c2d8c74613ad8a5a5f33fba40c9
# Mon, 26 Sep 2016 17:59:45 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Mon, 26 Sep 2016 17:59:45 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 26 Sep 2016 17:59:46 GMT
VOLUME [/data]
# Mon, 26 Sep 2016 17:59:46 GMT
WORKDIR /data
# Mon, 26 Sep 2016 17:59:47 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Mon, 26 Sep 2016 17:59:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 17:59:47 GMT
EXPOSE 6379/tcp
# Mon, 26 Sep 2016 17:59:47 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f236a13876f0bbe65b40dc80b1dd1d4f54e6a30a86f19bce6bd0ca733644f6`  
		Last Modified: Fri, 23 Sep 2016 18:13:50 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8988aa911478e821539a5b3a005c0b0c2fa2affe265b2fe02601a42a788d93`  
		Last Modified: Fri, 23 Sep 2016 18:13:52 GMT  
		Size: 7.9 KB (7922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ff15af8577ca5e8c548ecaa13fa096d9bf028078877568428f4aaea36ac573`  
		Last Modified: Mon, 26 Sep 2016 18:02:32 GMT  
		Size: 5.3 MB (5287145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1230b63e56663fafa56aafe08c10cd96ad512d7af2ae6d2cf5e00f6813428d1c`  
		Last Modified: Mon, 26 Sep 2016 18:02:30 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca4ef2df2de6ad2ba45607624b5358a03bf8f46f2d6f01dad6715e14f90923e`  
		Last Modified: Mon, 26 Sep 2016 18:02:30 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-alpine`

```console
$ docker pull redis@sha256:99105b7a83dd67a0b4a86ca5f64335801c62d4f3b685eebd4fb66fdb87c66b7b
```

-	Platforms:
	-	linux; amd64

### `redis:3.2-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7609754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1f619d04b7afa1521de691988eceeceaf2c5921281b4d8c3f369bf9146fd0f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 18:12:55 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 23 Sep 2016 18:12:56 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 26 Sep 2016 17:59:03 GMT
ENV REDIS_VERSION=3.2.4
# Mon, 26 Sep 2016 17:59:03 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.4.tar.gz
# Mon, 26 Sep 2016 17:59:03 GMT
ENV REDIS_DOWNLOAD_SHA1=f0fe685cbfdb8c2d8c74613ad8a5a5f33fba40c9
# Mon, 26 Sep 2016 17:59:45 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Mon, 26 Sep 2016 17:59:45 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 26 Sep 2016 17:59:46 GMT
VOLUME [/data]
# Mon, 26 Sep 2016 17:59:46 GMT
WORKDIR /data
# Mon, 26 Sep 2016 17:59:47 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Mon, 26 Sep 2016 17:59:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 17:59:47 GMT
EXPOSE 6379/tcp
# Mon, 26 Sep 2016 17:59:47 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f236a13876f0bbe65b40dc80b1dd1d4f54e6a30a86f19bce6bd0ca733644f6`  
		Last Modified: Fri, 23 Sep 2016 18:13:50 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8988aa911478e821539a5b3a005c0b0c2fa2affe265b2fe02601a42a788d93`  
		Last Modified: Fri, 23 Sep 2016 18:13:52 GMT  
		Size: 7.9 KB (7922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ff15af8577ca5e8c548ecaa13fa096d9bf028078877568428f4aaea36ac573`  
		Last Modified: Mon, 26 Sep 2016 18:02:32 GMT  
		Size: 5.3 MB (5287145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1230b63e56663fafa56aafe08c10cd96ad512d7af2ae6d2cf5e00f6813428d1c`  
		Last Modified: Mon, 26 Sep 2016 18:02:30 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca4ef2df2de6ad2ba45607624b5358a03bf8f46f2d6f01dad6715e14f90923e`  
		Last Modified: Mon, 26 Sep 2016 18:02:30 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-alpine`

```console
$ docker pull redis@sha256:99105b7a83dd67a0b4a86ca5f64335801c62d4f3b685eebd4fb66fdb87c66b7b
```

-	Platforms:
	-	linux; amd64

### `redis:3-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7609754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1f619d04b7afa1521de691988eceeceaf2c5921281b4d8c3f369bf9146fd0f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 18:12:55 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 23 Sep 2016 18:12:56 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 26 Sep 2016 17:59:03 GMT
ENV REDIS_VERSION=3.2.4
# Mon, 26 Sep 2016 17:59:03 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.4.tar.gz
# Mon, 26 Sep 2016 17:59:03 GMT
ENV REDIS_DOWNLOAD_SHA1=f0fe685cbfdb8c2d8c74613ad8a5a5f33fba40c9
# Mon, 26 Sep 2016 17:59:45 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Mon, 26 Sep 2016 17:59:45 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 26 Sep 2016 17:59:46 GMT
VOLUME [/data]
# Mon, 26 Sep 2016 17:59:46 GMT
WORKDIR /data
# Mon, 26 Sep 2016 17:59:47 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Mon, 26 Sep 2016 17:59:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 17:59:47 GMT
EXPOSE 6379/tcp
# Mon, 26 Sep 2016 17:59:47 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f236a13876f0bbe65b40dc80b1dd1d4f54e6a30a86f19bce6bd0ca733644f6`  
		Last Modified: Fri, 23 Sep 2016 18:13:50 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8988aa911478e821539a5b3a005c0b0c2fa2affe265b2fe02601a42a788d93`  
		Last Modified: Fri, 23 Sep 2016 18:13:52 GMT  
		Size: 7.9 KB (7922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ff15af8577ca5e8c548ecaa13fa096d9bf028078877568428f4aaea36ac573`  
		Last Modified: Mon, 26 Sep 2016 18:02:32 GMT  
		Size: 5.3 MB (5287145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1230b63e56663fafa56aafe08c10cd96ad512d7af2ae6d2cf5e00f6813428d1c`  
		Last Modified: Mon, 26 Sep 2016 18:02:30 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca4ef2df2de6ad2ba45607624b5358a03bf8f46f2d6f01dad6715e14f90923e`  
		Last Modified: Mon, 26 Sep 2016 18:02:30 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine`

```console
$ docker pull redis@sha256:99105b7a83dd67a0b4a86ca5f64335801c62d4f3b685eebd4fb66fdb87c66b7b
```

-	Platforms:
	-	linux; amd64

### `redis:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7609754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1f619d04b7afa1521de691988eceeceaf2c5921281b4d8c3f369bf9146fd0f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 18:12:55 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 23 Sep 2016 18:12:56 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 26 Sep 2016 17:59:03 GMT
ENV REDIS_VERSION=3.2.4
# Mon, 26 Sep 2016 17:59:03 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.4.tar.gz
# Mon, 26 Sep 2016 17:59:03 GMT
ENV REDIS_DOWNLOAD_SHA1=f0fe685cbfdb8c2d8c74613ad8a5a5f33fba40c9
# Mon, 26 Sep 2016 17:59:45 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Mon, 26 Sep 2016 17:59:45 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 26 Sep 2016 17:59:46 GMT
VOLUME [/data]
# Mon, 26 Sep 2016 17:59:46 GMT
WORKDIR /data
# Mon, 26 Sep 2016 17:59:47 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Mon, 26 Sep 2016 17:59:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 17:59:47 GMT
EXPOSE 6379/tcp
# Mon, 26 Sep 2016 17:59:47 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f236a13876f0bbe65b40dc80b1dd1d4f54e6a30a86f19bce6bd0ca733644f6`  
		Last Modified: Fri, 23 Sep 2016 18:13:50 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8988aa911478e821539a5b3a005c0b0c2fa2affe265b2fe02601a42a788d93`  
		Last Modified: Fri, 23 Sep 2016 18:13:52 GMT  
		Size: 7.9 KB (7922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ff15af8577ca5e8c548ecaa13fa096d9bf028078877568428f4aaea36ac573`  
		Last Modified: Mon, 26 Sep 2016 18:02:32 GMT  
		Size: 5.3 MB (5287145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1230b63e56663fafa56aafe08c10cd96ad512d7af2ae6d2cf5e00f6813428d1c`  
		Last Modified: Mon, 26 Sep 2016 18:02:30 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca4ef2df2de6ad2ba45607624b5358a03bf8f46f2d6f01dad6715e14f90923e`  
		Last Modified: Mon, 26 Sep 2016 18:02:30 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
