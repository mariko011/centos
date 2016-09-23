<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redis`

-	[`redis:3.0.7`](#redis307)
-	[`redis:3.0`](#redis30)
-	[`redis:3.0.7-32bit`](#redis307-32bit)
-	[`redis:3.0-32bit`](#redis30-32bit)
-	[`redis:3.0.7-alpine`](#redis307-alpine)
-	[`redis:3.0-alpine`](#redis30-alpine)
-	[`redis:3.2.3`](#redis323)
-	[`redis:3.2`](#redis32)
-	[`redis:3`](#redis3)
-	[`redis:latest`](#redislatest)
-	[`redis:3.2.3-32bit`](#redis323-32bit)
-	[`redis:3.2-32bit`](#redis32-32bit)
-	[`redis:3-32bit`](#redis3-32bit)
-	[`redis:32bit`](#redis32bit)
-	[`redis:3.2.3-alpine`](#redis323-alpine)
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
$ docker pull redis@sha256:290def64a17e90107928d90ae0ebd5c42736546a4012b7cc1038b7cf784e269d
```

-	Platforms:
	-	linux; amd64

### `redis:3.0.7-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5159341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2c36d72ff5b1a452aa50a5b87f6c9d56148932694fe8c31876f4c5f945ce839`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 02:29:29 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 20 Sep 2016 02:29:31 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 20 Sep 2016 02:29:32 GMT
ENV REDIS_VERSION=3.0.7
# Tue, 20 Sep 2016 02:29:32 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Tue, 20 Sep 2016 02:29:33 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Tue, 20 Sep 2016 02:30:32 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apk del .build-deps
# Tue, 20 Sep 2016 02:30:33 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 20 Sep 2016 02:30:34 GMT
VOLUME [/data]
# Tue, 20 Sep 2016 02:30:34 GMT
WORKDIR /data
# Tue, 20 Sep 2016 02:30:35 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 20 Sep 2016 02:30:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 20 Sep 2016 02:30:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Sep 2016 02:30:37 GMT
EXPOSE 6379/tcp
# Tue, 20 Sep 2016 02:30:37 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:445daf4519a89a6ddd7ef7d3aec1431892313dd31c38f0a917352bc7c4a4c45d`  
		Last Modified: Tue, 20 Sep 2016 02:30:48 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2019b3ca50366082af115e85cbf4e6ed7ee761151e188ec76f6a0d45d93c567b`  
		Last Modified: Tue, 20 Sep 2016 02:30:44 GMT  
		Size: 7.9 KB (7928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f49163113b2f78096c7cb1a267de8ab530c38fe8da14ff931aa6d0c57169507`  
		Last Modified: Tue, 20 Sep 2016 02:30:46 GMT  
		Size: 2.8 MB (2838483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a281b8e6abdeb854c74a933a64e9a345936b594b4f629ea1e88417e99bfed285`  
		Last Modified: Tue, 20 Sep 2016 02:30:44 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355e41158182f85a3bae77689c0442478f5c57ee7fcf4830fea30161d1196da0`  
		Last Modified: Tue, 20 Sep 2016 02:30:46 GMT  
		Size: 389.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d92ba4084976f7b9d6593d9a27397ef5db07926c07660aef1bc9c8759b385fe`  
		Last Modified: Tue, 20 Sep 2016 02:30:46 GMT  
		Size: 120.0 B  
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

## `redis:3.2.3`

```console
$ docker pull redis@sha256:c4365ec6f875de4b7ec1dd245e58b5d6c3bcea84759323f804fbfeb3cc741680
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74238342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d017c068a149424ff525c2da57fc9805d8a5b8cde93a99bc22751f1483775d3b`
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
# Fri, 23 Sep 2016 23:02:20 GMT
ENV REDIS_VERSION=3.2.3
# Fri, 23 Sep 2016 23:02:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Fri, 23 Sep 2016 23:02:20 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Fri, 23 Sep 2016 23:03:08 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 23:03:09 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 23 Sep 2016 23:03:09 GMT
VOLUME [/data]
# Fri, 23 Sep 2016 23:03:10 GMT
WORKDIR /data
# Fri, 23 Sep 2016 23:03:10 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 23 Sep 2016 23:03:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 23:03:11 GMT
EXPOSE 6379/tcp
# Fri, 23 Sep 2016 23:03:11 GMT
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
	-	`sha256:d4073c13c76dd1d7c3bf4b80cf39579ced2aa886527d9997fae535e07e604585`  
		Last Modified: Fri, 23 Sep 2016 23:03:21 GMT  
		Size: 5.5 MB (5463982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5967d288e1ee712b31e646543b2a1e11c24ee5e2d38060e1d646c03c5a65f1c`  
		Last Modified: Fri, 23 Sep 2016 23:03:18 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e3d55f4ce529bd6d241af448d6565b789d606784f162dac98acfb365ec238c`  
		Last Modified: Fri, 23 Sep 2016 23:03:18 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2`

```console
$ docker pull redis@sha256:c4365ec6f875de4b7ec1dd245e58b5d6c3bcea84759323f804fbfeb3cc741680
```

-	Platforms:
	-	linux; amd64

### `redis:3.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74238342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d017c068a149424ff525c2da57fc9805d8a5b8cde93a99bc22751f1483775d3b`
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
# Fri, 23 Sep 2016 23:02:20 GMT
ENV REDIS_VERSION=3.2.3
# Fri, 23 Sep 2016 23:02:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Fri, 23 Sep 2016 23:02:20 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Fri, 23 Sep 2016 23:03:08 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 23:03:09 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 23 Sep 2016 23:03:09 GMT
VOLUME [/data]
# Fri, 23 Sep 2016 23:03:10 GMT
WORKDIR /data
# Fri, 23 Sep 2016 23:03:10 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 23 Sep 2016 23:03:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 23:03:11 GMT
EXPOSE 6379/tcp
# Fri, 23 Sep 2016 23:03:11 GMT
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
	-	`sha256:d4073c13c76dd1d7c3bf4b80cf39579ced2aa886527d9997fae535e07e604585`  
		Last Modified: Fri, 23 Sep 2016 23:03:21 GMT  
		Size: 5.5 MB (5463982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5967d288e1ee712b31e646543b2a1e11c24ee5e2d38060e1d646c03c5a65f1c`  
		Last Modified: Fri, 23 Sep 2016 23:03:18 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e3d55f4ce529bd6d241af448d6565b789d606784f162dac98acfb365ec238c`  
		Last Modified: Fri, 23 Sep 2016 23:03:18 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3`

```console
$ docker pull redis@sha256:c4365ec6f875de4b7ec1dd245e58b5d6c3bcea84759323f804fbfeb3cc741680
```

-	Platforms:
	-	linux; amd64

### `redis:3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74238342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d017c068a149424ff525c2da57fc9805d8a5b8cde93a99bc22751f1483775d3b`
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
# Fri, 23 Sep 2016 23:02:20 GMT
ENV REDIS_VERSION=3.2.3
# Fri, 23 Sep 2016 23:02:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Fri, 23 Sep 2016 23:02:20 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Fri, 23 Sep 2016 23:03:08 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 23:03:09 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 23 Sep 2016 23:03:09 GMT
VOLUME [/data]
# Fri, 23 Sep 2016 23:03:10 GMT
WORKDIR /data
# Fri, 23 Sep 2016 23:03:10 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 23 Sep 2016 23:03:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 23:03:11 GMT
EXPOSE 6379/tcp
# Fri, 23 Sep 2016 23:03:11 GMT
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
	-	`sha256:d4073c13c76dd1d7c3bf4b80cf39579ced2aa886527d9997fae535e07e604585`  
		Last Modified: Fri, 23 Sep 2016 23:03:21 GMT  
		Size: 5.5 MB (5463982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5967d288e1ee712b31e646543b2a1e11c24ee5e2d38060e1d646c03c5a65f1c`  
		Last Modified: Fri, 23 Sep 2016 23:03:18 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e3d55f4ce529bd6d241af448d6565b789d606784f162dac98acfb365ec238c`  
		Last Modified: Fri, 23 Sep 2016 23:03:18 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:latest`

```console
$ docker pull redis@sha256:c4365ec6f875de4b7ec1dd245e58b5d6c3bcea84759323f804fbfeb3cc741680
```

-	Platforms:
	-	linux; amd64

### `redis:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74238342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d017c068a149424ff525c2da57fc9805d8a5b8cde93a99bc22751f1483775d3b`
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
# Fri, 23 Sep 2016 23:02:20 GMT
ENV REDIS_VERSION=3.2.3
# Fri, 23 Sep 2016 23:02:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Fri, 23 Sep 2016 23:02:20 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Fri, 23 Sep 2016 23:03:08 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 23:03:09 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 23 Sep 2016 23:03:09 GMT
VOLUME [/data]
# Fri, 23 Sep 2016 23:03:10 GMT
WORKDIR /data
# Fri, 23 Sep 2016 23:03:10 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 23 Sep 2016 23:03:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 23:03:11 GMT
EXPOSE 6379/tcp
# Fri, 23 Sep 2016 23:03:11 GMT
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
	-	`sha256:d4073c13c76dd1d7c3bf4b80cf39579ced2aa886527d9997fae535e07e604585`  
		Last Modified: Fri, 23 Sep 2016 23:03:21 GMT  
		Size: 5.5 MB (5463982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5967d288e1ee712b31e646543b2a1e11c24ee5e2d38060e1d646c03c5a65f1c`  
		Last Modified: Fri, 23 Sep 2016 23:03:18 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e3d55f4ce529bd6d241af448d6565b789d606784f162dac98acfb365ec238c`  
		Last Modified: Fri, 23 Sep 2016 23:03:18 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.3-32bit`

```console
$ docker pull redis@sha256:f2a69b92673b2475d92959fd71889e1ac0a3fdc6e757b0e80c4d4b5b7ccf15e1
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.3-32bit` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77884672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70987f0cede0a396998b87ffa755027225ddd70165e27130c51e9d9ac2946446`
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
# Fri, 23 Sep 2016 23:02:20 GMT
ENV REDIS_VERSION=3.2.3
# Fri, 23 Sep 2016 23:02:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Fri, 23 Sep 2016 23:02:20 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Fri, 23 Sep 2016 23:04:04 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:05:00 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 23:05:01 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 23 Sep 2016 23:05:01 GMT
VOLUME [/data]
# Fri, 23 Sep 2016 23:05:01 GMT
WORKDIR /data
# Fri, 23 Sep 2016 23:05:02 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 23 Sep 2016 23:05:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 23:05:03 GMT
EXPOSE 6379/tcp
# Fri, 23 Sep 2016 23:05:03 GMT
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
	-	`sha256:a8290f398b60e8662df70d44aa9199ab6f6eb7e3236be47e0c585584bc2394e4`  
		Last Modified: Fri, 23 Sep 2016 23:05:11 GMT  
		Size: 4.2 MB (4224365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d06b4c2405c8a0b61eb900491ba99bf68892d8c7e222deb75c87f90f3a254d`  
		Last Modified: Fri, 23 Sep 2016 23:05:13 GMT  
		Size: 4.9 MB (4885947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f51444c42397c96a6bc50a1cb025caa37c8ff3b73969cb1f204cce84651465`  
		Last Modified: Fri, 23 Sep 2016 23:05:11 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af369ee606a7740089033997e8c2f45dc599c422cfec00941b473811376393a2`  
		Last Modified: Fri, 23 Sep 2016 23:05:11 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-32bit`

```console
$ docker pull redis@sha256:f2a69b92673b2475d92959fd71889e1ac0a3fdc6e757b0e80c4d4b5b7ccf15e1
```

-	Platforms:
	-	linux; amd64

### `redis:3.2-32bit` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77884672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70987f0cede0a396998b87ffa755027225ddd70165e27130c51e9d9ac2946446`
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
# Fri, 23 Sep 2016 23:02:20 GMT
ENV REDIS_VERSION=3.2.3
# Fri, 23 Sep 2016 23:02:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Fri, 23 Sep 2016 23:02:20 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Fri, 23 Sep 2016 23:04:04 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:05:00 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 23:05:01 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 23 Sep 2016 23:05:01 GMT
VOLUME [/data]
# Fri, 23 Sep 2016 23:05:01 GMT
WORKDIR /data
# Fri, 23 Sep 2016 23:05:02 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 23 Sep 2016 23:05:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 23:05:03 GMT
EXPOSE 6379/tcp
# Fri, 23 Sep 2016 23:05:03 GMT
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
	-	`sha256:a8290f398b60e8662df70d44aa9199ab6f6eb7e3236be47e0c585584bc2394e4`  
		Last Modified: Fri, 23 Sep 2016 23:05:11 GMT  
		Size: 4.2 MB (4224365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d06b4c2405c8a0b61eb900491ba99bf68892d8c7e222deb75c87f90f3a254d`  
		Last Modified: Fri, 23 Sep 2016 23:05:13 GMT  
		Size: 4.9 MB (4885947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f51444c42397c96a6bc50a1cb025caa37c8ff3b73969cb1f204cce84651465`  
		Last Modified: Fri, 23 Sep 2016 23:05:11 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af369ee606a7740089033997e8c2f45dc599c422cfec00941b473811376393a2`  
		Last Modified: Fri, 23 Sep 2016 23:05:11 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-32bit`

```console
$ docker pull redis@sha256:f2a69b92673b2475d92959fd71889e1ac0a3fdc6e757b0e80c4d4b5b7ccf15e1
```

-	Platforms:
	-	linux; amd64

### `redis:3-32bit` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77884672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70987f0cede0a396998b87ffa755027225ddd70165e27130c51e9d9ac2946446`
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
# Fri, 23 Sep 2016 23:02:20 GMT
ENV REDIS_VERSION=3.2.3
# Fri, 23 Sep 2016 23:02:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Fri, 23 Sep 2016 23:02:20 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Fri, 23 Sep 2016 23:04:04 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:05:00 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 23:05:01 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 23 Sep 2016 23:05:01 GMT
VOLUME [/data]
# Fri, 23 Sep 2016 23:05:01 GMT
WORKDIR /data
# Fri, 23 Sep 2016 23:05:02 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 23 Sep 2016 23:05:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 23:05:03 GMT
EXPOSE 6379/tcp
# Fri, 23 Sep 2016 23:05:03 GMT
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
	-	`sha256:a8290f398b60e8662df70d44aa9199ab6f6eb7e3236be47e0c585584bc2394e4`  
		Last Modified: Fri, 23 Sep 2016 23:05:11 GMT  
		Size: 4.2 MB (4224365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d06b4c2405c8a0b61eb900491ba99bf68892d8c7e222deb75c87f90f3a254d`  
		Last Modified: Fri, 23 Sep 2016 23:05:13 GMT  
		Size: 4.9 MB (4885947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f51444c42397c96a6bc50a1cb025caa37c8ff3b73969cb1f204cce84651465`  
		Last Modified: Fri, 23 Sep 2016 23:05:11 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af369ee606a7740089033997e8c2f45dc599c422cfec00941b473811376393a2`  
		Last Modified: Fri, 23 Sep 2016 23:05:11 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:32bit`

```console
$ docker pull redis@sha256:f2a69b92673b2475d92959fd71889e1ac0a3fdc6e757b0e80c4d4b5b7ccf15e1
```

-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77884672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70987f0cede0a396998b87ffa755027225ddd70165e27130c51e9d9ac2946446`
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
# Fri, 23 Sep 2016 23:02:20 GMT
ENV REDIS_VERSION=3.2.3
# Fri, 23 Sep 2016 23:02:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Fri, 23 Sep 2016 23:02:20 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Fri, 23 Sep 2016 23:04:04 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:05:00 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 23:05:01 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 23 Sep 2016 23:05:01 GMT
VOLUME [/data]
# Fri, 23 Sep 2016 23:05:01 GMT
WORKDIR /data
# Fri, 23 Sep 2016 23:05:02 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 23 Sep 2016 23:05:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 23:05:03 GMT
EXPOSE 6379/tcp
# Fri, 23 Sep 2016 23:05:03 GMT
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
	-	`sha256:a8290f398b60e8662df70d44aa9199ab6f6eb7e3236be47e0c585584bc2394e4`  
		Last Modified: Fri, 23 Sep 2016 23:05:11 GMT  
		Size: 4.2 MB (4224365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d06b4c2405c8a0b61eb900491ba99bf68892d8c7e222deb75c87f90f3a254d`  
		Last Modified: Fri, 23 Sep 2016 23:05:13 GMT  
		Size: 4.9 MB (4885947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f51444c42397c96a6bc50a1cb025caa37c8ff3b73969cb1f204cce84651465`  
		Last Modified: Fri, 23 Sep 2016 23:05:11 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af369ee606a7740089033997e8c2f45dc599c422cfec00941b473811376393a2`  
		Last Modified: Fri, 23 Sep 2016 23:05:11 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.3-alpine`

```console
$ docker pull redis@sha256:49e794b32c129d1ab1ee9f99c0e602f57ea1329aebe641843e0743c8ee336a7e
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.3-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7609389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39fcd4ff976764f012da0f35ac61b3ebd678461ef91b9d2013a2b558c5be3fd7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 18:12:55 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 23 Sep 2016 18:12:56 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 23 Sep 2016 18:12:57 GMT
ENV REDIS_VERSION=3.2.3
# Fri, 23 Sep 2016 18:12:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Fri, 23 Sep 2016 18:12:57 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Fri, 23 Sep 2016 18:13:40 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Fri, 23 Sep 2016 18:13:41 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 23 Sep 2016 18:13:41 GMT
VOLUME [/data]
# Fri, 23 Sep 2016 18:13:41 GMT
WORKDIR /data
# Fri, 23 Sep 2016 18:13:42 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 23 Sep 2016 18:13:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 18:13:43 GMT
EXPOSE 6379/tcp
# Fri, 23 Sep 2016 18:13:43 GMT
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
	-	`sha256:ecb7fbb359e22eb2ccd9701d8dee0543e1441e76e118bd83e3cc15ec2d476843`  
		Last Modified: Fri, 23 Sep 2016 18:13:53 GMT  
		Size: 5.3 MB (5286785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cede6c7646561964a7ce4ec4cf0b6b281eff506458d94323d27df7b026db5a6d`  
		Last Modified: Fri, 23 Sep 2016 18:13:50 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ea4755d45cc4b1fc497865a8f0be9b8a12c6a6d6b7aa04349e7f5ada9ea66f`  
		Last Modified: Fri, 23 Sep 2016 18:13:52 GMT  
		Size: 387.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-alpine`

```console
$ docker pull redis@sha256:49e794b32c129d1ab1ee9f99c0e602f57ea1329aebe641843e0743c8ee336a7e
```

-	Platforms:
	-	linux; amd64

### `redis:3.2-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7609389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39fcd4ff976764f012da0f35ac61b3ebd678461ef91b9d2013a2b558c5be3fd7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 18:12:55 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 23 Sep 2016 18:12:56 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 23 Sep 2016 18:12:57 GMT
ENV REDIS_VERSION=3.2.3
# Fri, 23 Sep 2016 18:12:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Fri, 23 Sep 2016 18:12:57 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Fri, 23 Sep 2016 18:13:40 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Fri, 23 Sep 2016 18:13:41 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 23 Sep 2016 18:13:41 GMT
VOLUME [/data]
# Fri, 23 Sep 2016 18:13:41 GMT
WORKDIR /data
# Fri, 23 Sep 2016 18:13:42 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 23 Sep 2016 18:13:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 18:13:43 GMT
EXPOSE 6379/tcp
# Fri, 23 Sep 2016 18:13:43 GMT
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
	-	`sha256:ecb7fbb359e22eb2ccd9701d8dee0543e1441e76e118bd83e3cc15ec2d476843`  
		Last Modified: Fri, 23 Sep 2016 18:13:53 GMT  
		Size: 5.3 MB (5286785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cede6c7646561964a7ce4ec4cf0b6b281eff506458d94323d27df7b026db5a6d`  
		Last Modified: Fri, 23 Sep 2016 18:13:50 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ea4755d45cc4b1fc497865a8f0be9b8a12c6a6d6b7aa04349e7f5ada9ea66f`  
		Last Modified: Fri, 23 Sep 2016 18:13:52 GMT  
		Size: 387.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-alpine`

```console
$ docker pull redis@sha256:49e794b32c129d1ab1ee9f99c0e602f57ea1329aebe641843e0743c8ee336a7e
```

-	Platforms:
	-	linux; amd64

### `redis:3-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7609389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39fcd4ff976764f012da0f35ac61b3ebd678461ef91b9d2013a2b558c5be3fd7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 18:12:55 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 23 Sep 2016 18:12:56 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 23 Sep 2016 18:12:57 GMT
ENV REDIS_VERSION=3.2.3
# Fri, 23 Sep 2016 18:12:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Fri, 23 Sep 2016 18:12:57 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Fri, 23 Sep 2016 18:13:40 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Fri, 23 Sep 2016 18:13:41 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 23 Sep 2016 18:13:41 GMT
VOLUME [/data]
# Fri, 23 Sep 2016 18:13:41 GMT
WORKDIR /data
# Fri, 23 Sep 2016 18:13:42 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 23 Sep 2016 18:13:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 18:13:43 GMT
EXPOSE 6379/tcp
# Fri, 23 Sep 2016 18:13:43 GMT
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
	-	`sha256:ecb7fbb359e22eb2ccd9701d8dee0543e1441e76e118bd83e3cc15ec2d476843`  
		Last Modified: Fri, 23 Sep 2016 18:13:53 GMT  
		Size: 5.3 MB (5286785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cede6c7646561964a7ce4ec4cf0b6b281eff506458d94323d27df7b026db5a6d`  
		Last Modified: Fri, 23 Sep 2016 18:13:50 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ea4755d45cc4b1fc497865a8f0be9b8a12c6a6d6b7aa04349e7f5ada9ea66f`  
		Last Modified: Fri, 23 Sep 2016 18:13:52 GMT  
		Size: 387.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine`

```console
$ docker pull redis@sha256:49e794b32c129d1ab1ee9f99c0e602f57ea1329aebe641843e0743c8ee336a7e
```

-	Platforms:
	-	linux; amd64

### `redis:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7609389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39fcd4ff976764f012da0f35ac61b3ebd678461ef91b9d2013a2b558c5be3fd7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 18:12:55 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 23 Sep 2016 18:12:56 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 23 Sep 2016 18:12:57 GMT
ENV REDIS_VERSION=3.2.3
# Fri, 23 Sep 2016 18:12:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Fri, 23 Sep 2016 18:12:57 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Fri, 23 Sep 2016 18:13:40 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Fri, 23 Sep 2016 18:13:41 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 23 Sep 2016 18:13:41 GMT
VOLUME [/data]
# Fri, 23 Sep 2016 18:13:41 GMT
WORKDIR /data
# Fri, 23 Sep 2016 18:13:42 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 23 Sep 2016 18:13:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 18:13:43 GMT
EXPOSE 6379/tcp
# Fri, 23 Sep 2016 18:13:43 GMT
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
	-	`sha256:ecb7fbb359e22eb2ccd9701d8dee0543e1441e76e118bd83e3cc15ec2d476843`  
		Last Modified: Fri, 23 Sep 2016 18:13:53 GMT  
		Size: 5.3 MB (5286785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cede6c7646561964a7ce4ec4cf0b6b281eff506458d94323d27df7b026db5a6d`  
		Last Modified: Fri, 23 Sep 2016 18:13:50 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ea4755d45cc4b1fc497865a8f0be9b8a12c6a6d6b7aa04349e7f5ada9ea66f`  
		Last Modified: Fri, 23 Sep 2016 18:13:52 GMT  
		Size: 387.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
