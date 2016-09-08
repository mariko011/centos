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
$ docker pull redis@sha256:ef2465d91dc3c57617e66df65471fb07fc999be63427e5e975c7fdfaa86e23fb
```

-	Platforms:
	-	linux; amd64

### `redis:3.0.7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.8 MB (71768564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c983bedc3b468bb59ee87c62580605a3306d4778801cc06e152824e39d510913`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:56:23 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 31 Aug 2016 00:56:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:56:35 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 00:56:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 31 Aug 2016 00:56:41 GMT
ENV REDIS_VERSION=3.0.7
# Wed, 31 Aug 2016 00:56:41 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Wed, 31 Aug 2016 00:56:41 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Wed, 31 Aug 2016 00:57:23 GMT
RUN buildDeps='gcc libc6-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 31 Aug 2016 00:57:24 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 31 Aug 2016 00:57:25 GMT
VOLUME [/data]
# Wed, 31 Aug 2016 00:57:25 GMT
WORKDIR /data
# Wed, 31 Aug 2016 00:57:25 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 31 Aug 2016 00:57:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 31 Aug 2016 00:57:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 Aug 2016 00:57:27 GMT
EXPOSE 6379/tcp
# Wed, 31 Aug 2016 00:57:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78c9991783cd3fdc103f66617f6b3507a395a2e3443ee869b39b6631dbf0e19`  
		Last Modified: Thu, 08 Sep 2016 18:09:39 GMT  
		Size: 2.0 KB (2036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72c3506a8a48fd2ae7c69d0493615c25fc55bf44846f1cf48bcd1e51073be77`  
		Last Modified: Thu, 08 Sep 2016 18:09:44 GMT  
		Size: 16.6 MB (16609154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81ca5ba090504370f80e5aa2e39b348680a585fad89a3a9bc3601131774a687`  
		Last Modified: Thu, 08 Sep 2016 18:09:36 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db3c6bee175a80cd845a2bf605e14cad5b27aca19faaad054cf10e0ff657905`  
		Last Modified: Thu, 08 Sep 2016 18:09:37 GMT  
		Size: 3.0 MB (2981564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee287cdc32161595e361bebe9c7cc0032d1389d719ccc2cba17186810c2f590a`  
		Last Modified: Thu, 08 Sep 2016 18:09:35 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3d3c992c224360c5e993ef6f2e43e753a44d0efce97e4e2fd9ee5bdfbdcb4e`  
		Last Modified: Thu, 08 Sep 2016 18:09:35 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36fda1004ce15fbc388503b55d8c04619e0c84e0c41684dff934f2671d80e897`  
		Last Modified: Thu, 08 Sep 2016 18:09:36 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0`

```console
$ docker pull redis@sha256:ef2465d91dc3c57617e66df65471fb07fc999be63427e5e975c7fdfaa86e23fb
```

-	Platforms:
	-	linux; amd64

### `redis:3.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.8 MB (71768564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c983bedc3b468bb59ee87c62580605a3306d4778801cc06e152824e39d510913`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:56:23 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 31 Aug 2016 00:56:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:56:35 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 00:56:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 31 Aug 2016 00:56:41 GMT
ENV REDIS_VERSION=3.0.7
# Wed, 31 Aug 2016 00:56:41 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Wed, 31 Aug 2016 00:56:41 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Wed, 31 Aug 2016 00:57:23 GMT
RUN buildDeps='gcc libc6-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 31 Aug 2016 00:57:24 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 31 Aug 2016 00:57:25 GMT
VOLUME [/data]
# Wed, 31 Aug 2016 00:57:25 GMT
WORKDIR /data
# Wed, 31 Aug 2016 00:57:25 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 31 Aug 2016 00:57:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 31 Aug 2016 00:57:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 Aug 2016 00:57:27 GMT
EXPOSE 6379/tcp
# Wed, 31 Aug 2016 00:57:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78c9991783cd3fdc103f66617f6b3507a395a2e3443ee869b39b6631dbf0e19`  
		Last Modified: Thu, 08 Sep 2016 18:09:39 GMT  
		Size: 2.0 KB (2036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72c3506a8a48fd2ae7c69d0493615c25fc55bf44846f1cf48bcd1e51073be77`  
		Last Modified: Thu, 08 Sep 2016 18:09:44 GMT  
		Size: 16.6 MB (16609154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81ca5ba090504370f80e5aa2e39b348680a585fad89a3a9bc3601131774a687`  
		Last Modified: Thu, 08 Sep 2016 18:09:36 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db3c6bee175a80cd845a2bf605e14cad5b27aca19faaad054cf10e0ff657905`  
		Last Modified: Thu, 08 Sep 2016 18:09:37 GMT  
		Size: 3.0 MB (2981564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee287cdc32161595e361bebe9c7cc0032d1389d719ccc2cba17186810c2f590a`  
		Last Modified: Thu, 08 Sep 2016 18:09:35 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3d3c992c224360c5e993ef6f2e43e753a44d0efce97e4e2fd9ee5bdfbdcb4e`  
		Last Modified: Thu, 08 Sep 2016 18:09:35 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36fda1004ce15fbc388503b55d8c04619e0c84e0c41684dff934f2671d80e897`  
		Last Modified: Thu, 08 Sep 2016 18:09:36 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0.7-32bit`

```console
$ docker pull redis@sha256:de8c1a770e94fa9848510fd3d0a35343583b1a927b397b200fd850d8959823ad
```

-	Platforms:
	-	linux; amd64

### `redis:3.0.7-32bit` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.7 MB (75680817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58a4191a5406a374574e169c40d48afae6af1afca2defbc9d829d0609f361438`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:56:23 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 31 Aug 2016 00:56:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:56:35 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 00:56:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 31 Aug 2016 00:56:41 GMT
ENV REDIS_VERSION=3.0.7
# Wed, 31 Aug 2016 00:56:41 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Wed, 31 Aug 2016 00:56:41 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Wed, 31 Aug 2016 00:57:33 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:58:21 GMT
RUN buildDeps='gcc gcc-multilib libc6-dev-i386 make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 31 Aug 2016 00:58:21 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 31 Aug 2016 00:58:22 GMT
VOLUME [/data]
# Wed, 31 Aug 2016 00:58:22 GMT
WORKDIR /data
# Wed, 31 Aug 2016 00:58:22 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 31 Aug 2016 00:58:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 31 Aug 2016 00:58:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 Aug 2016 00:58:24 GMT
EXPOSE 6379/tcp
# Wed, 31 Aug 2016 00:58:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78c9991783cd3fdc103f66617f6b3507a395a2e3443ee869b39b6631dbf0e19`  
		Last Modified: Thu, 08 Sep 2016 18:09:39 GMT  
		Size: 2.0 KB (2036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72c3506a8a48fd2ae7c69d0493615c25fc55bf44846f1cf48bcd1e51073be77`  
		Last Modified: Thu, 08 Sep 2016 18:09:44 GMT  
		Size: 16.6 MB (16609154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81ca5ba090504370f80e5aa2e39b348680a585fad89a3a9bc3601131774a687`  
		Last Modified: Thu, 08 Sep 2016 18:09:36 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b12823eef08745af469658ec51f5d01cd9aa2ca433a3cb263a7cb58a8da535c3`  
		Last Modified: Thu, 08 Sep 2016 18:10:13 GMT  
		Size: 4.2 MB (4224263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:721baad1debdfd18cf6d88311556c4e7d421a416542858c374c1cd8b2c0ed069`  
		Last Modified: Thu, 08 Sep 2016 18:10:07 GMT  
		Size: 2.7 MB (2669555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c959d489d8d88ed2b7abd9d1a1174440db187dc264a27f4c78aa5ec014acb5`  
		Last Modified: Thu, 08 Sep 2016 18:10:07 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f3b1bf78fcadf322be259054a34a23a686fdd31972e9fcce1d438808baf8b50`  
		Last Modified: Thu, 08 Sep 2016 18:10:06 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f90f467d6f2e7757d5c0165555347efd3e838760bbfe546c441f49705ab0055e`  
		Last Modified: Thu, 08 Sep 2016 18:10:07 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0-32bit`

```console
$ docker pull redis@sha256:de8c1a770e94fa9848510fd3d0a35343583b1a927b397b200fd850d8959823ad
```

-	Platforms:
	-	linux; amd64

### `redis:3.0-32bit` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.7 MB (75680817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58a4191a5406a374574e169c40d48afae6af1afca2defbc9d829d0609f361438`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:56:23 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 31 Aug 2016 00:56:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:56:35 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 00:56:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 31 Aug 2016 00:56:41 GMT
ENV REDIS_VERSION=3.0.7
# Wed, 31 Aug 2016 00:56:41 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Wed, 31 Aug 2016 00:56:41 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Wed, 31 Aug 2016 00:57:33 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:58:21 GMT
RUN buildDeps='gcc gcc-multilib libc6-dev-i386 make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 31 Aug 2016 00:58:21 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 31 Aug 2016 00:58:22 GMT
VOLUME [/data]
# Wed, 31 Aug 2016 00:58:22 GMT
WORKDIR /data
# Wed, 31 Aug 2016 00:58:22 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 31 Aug 2016 00:58:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 31 Aug 2016 00:58:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 Aug 2016 00:58:24 GMT
EXPOSE 6379/tcp
# Wed, 31 Aug 2016 00:58:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78c9991783cd3fdc103f66617f6b3507a395a2e3443ee869b39b6631dbf0e19`  
		Last Modified: Thu, 08 Sep 2016 18:09:39 GMT  
		Size: 2.0 KB (2036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72c3506a8a48fd2ae7c69d0493615c25fc55bf44846f1cf48bcd1e51073be77`  
		Last Modified: Thu, 08 Sep 2016 18:09:44 GMT  
		Size: 16.6 MB (16609154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81ca5ba090504370f80e5aa2e39b348680a585fad89a3a9bc3601131774a687`  
		Last Modified: Thu, 08 Sep 2016 18:09:36 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b12823eef08745af469658ec51f5d01cd9aa2ca433a3cb263a7cb58a8da535c3`  
		Last Modified: Thu, 08 Sep 2016 18:10:13 GMT  
		Size: 4.2 MB (4224263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:721baad1debdfd18cf6d88311556c4e7d421a416542858c374c1cd8b2c0ed069`  
		Last Modified: Thu, 08 Sep 2016 18:10:07 GMT  
		Size: 2.7 MB (2669555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c959d489d8d88ed2b7abd9d1a1174440db187dc264a27f4c78aa5ec014acb5`  
		Last Modified: Thu, 08 Sep 2016 18:10:07 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f3b1bf78fcadf322be259054a34a23a686fdd31972e9fcce1d438808baf8b50`  
		Last Modified: Thu, 08 Sep 2016 18:10:06 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f90f467d6f2e7757d5c0165555347efd3e838760bbfe546c441f49705ab0055e`  
		Last Modified: Thu, 08 Sep 2016 18:10:07 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0.7-alpine`

```console
$ docker pull redis@sha256:f725e95db430f81d09bcf99e3711c596b361de11a1c9ac6445c946441dde2c5a
```

-	Platforms:
	-	linux; amd64

### `redis:3.0.7-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5536725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9634d310433e37a9f4338769dd11cd7ca67edb31f8a23078601f89555eabfe2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 17:38:59 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 30 Aug 2016 17:39:00 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 30 Aug 2016 17:39:00 GMT
ENV REDIS_VERSION=3.0.7
# Tue, 30 Aug 2016 17:39:01 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Tue, 30 Aug 2016 17:39:01 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Tue, 30 Aug 2016 17:39:36 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apk del .build-deps
# Tue, 30 Aug 2016 17:39:37 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 30 Aug 2016 17:39:37 GMT
VOLUME [/data]
# Tue, 30 Aug 2016 17:39:37 GMT
WORKDIR /data
# Tue, 30 Aug 2016 17:39:37 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 30 Aug 2016 17:39:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Aug 2016 17:39:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 17:39:39 GMT
EXPOSE 6379/tcp
# Tue, 30 Aug 2016 17:39:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999df2dc636584ef54d418dd688270789cd429a850fbcb452370b79c0943558b`  
		Last Modified: Thu, 08 Sep 2016 18:10:37 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32311ecd3c01b9d42c3ef0e0b677d27e7fd5de2955169620dbdd47c0d506095`  
		Last Modified: Thu, 08 Sep 2016 18:10:34 GMT  
		Size: 7.9 KB (7925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bab911ac85ae2f963af6e4e0d9bc8b3b8e153e6a5b7513003afabec02f7b952`  
		Last Modified: Thu, 08 Sep 2016 18:10:35 GMT  
		Size: 3.2 MB (3216639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3d974dc0eb0aef5b738a66ca6b4df09b2499873ffca60e19cc6425c150568e9`  
		Last Modified: Thu, 08 Sep 2016 18:10:35 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580f86f6e5e931e7fac3b1a4b87649ba30c1fd54dcb6c4fd690f4daf03736c7b`  
		Last Modified: Thu, 08 Sep 2016 18:10:34 GMT  
		Size: 389.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1159dcd38d5295a129043e513cc53293fd387572076cb42096e0a14ae528ef9`  
		Last Modified: Thu, 08 Sep 2016 18:10:35 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0-alpine`

```console
$ docker pull redis@sha256:f725e95db430f81d09bcf99e3711c596b361de11a1c9ac6445c946441dde2c5a
```

-	Platforms:
	-	linux; amd64

### `redis:3.0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5536725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9634d310433e37a9f4338769dd11cd7ca67edb31f8a23078601f89555eabfe2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 17:38:59 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 30 Aug 2016 17:39:00 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 30 Aug 2016 17:39:00 GMT
ENV REDIS_VERSION=3.0.7
# Tue, 30 Aug 2016 17:39:01 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Tue, 30 Aug 2016 17:39:01 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Tue, 30 Aug 2016 17:39:36 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apk del .build-deps
# Tue, 30 Aug 2016 17:39:37 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 30 Aug 2016 17:39:37 GMT
VOLUME [/data]
# Tue, 30 Aug 2016 17:39:37 GMT
WORKDIR /data
# Tue, 30 Aug 2016 17:39:37 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 30 Aug 2016 17:39:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Aug 2016 17:39:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 17:39:39 GMT
EXPOSE 6379/tcp
# Tue, 30 Aug 2016 17:39:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999df2dc636584ef54d418dd688270789cd429a850fbcb452370b79c0943558b`  
		Last Modified: Thu, 08 Sep 2016 18:10:37 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32311ecd3c01b9d42c3ef0e0b677d27e7fd5de2955169620dbdd47c0d506095`  
		Last Modified: Thu, 08 Sep 2016 18:10:34 GMT  
		Size: 7.9 KB (7925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bab911ac85ae2f963af6e4e0d9bc8b3b8e153e6a5b7513003afabec02f7b952`  
		Last Modified: Thu, 08 Sep 2016 18:10:35 GMT  
		Size: 3.2 MB (3216639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3d974dc0eb0aef5b738a66ca6b4df09b2499873ffca60e19cc6425c150568e9`  
		Last Modified: Thu, 08 Sep 2016 18:10:35 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580f86f6e5e931e7fac3b1a4b87649ba30c1fd54dcb6c4fd690f4daf03736c7b`  
		Last Modified: Thu, 08 Sep 2016 18:10:34 GMT  
		Size: 389.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1159dcd38d5295a129043e513cc53293fd387572076cb42096e0a14ae528ef9`  
		Last Modified: Thu, 08 Sep 2016 18:10:35 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.3`

```console
$ docker pull redis@sha256:669bce2c53f66d76240b1304b3db7905004638d3c477ab70008904606e6a680d
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.3 MB (74251210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d1cbfaa41da0776bb606103843ade3f26f4c4e3af7825e6f9ed1e8f152ba057`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:56:23 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 31 Aug 2016 00:56:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:56:35 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 00:56:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 31 Aug 2016 00:58:24 GMT
ENV REDIS_VERSION=3.2.3
# Wed, 31 Aug 2016 00:58:25 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Wed, 31 Aug 2016 00:58:25 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Wed, 31 Aug 2016 00:59:13 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 31 Aug 2016 00:59:14 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 31 Aug 2016 00:59:14 GMT
VOLUME [/data]
# Wed, 31 Aug 2016 00:59:14 GMT
WORKDIR /data
# Wed, 31 Aug 2016 00:59:15 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 31 Aug 2016 00:59:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 Aug 2016 00:59:15 GMT
EXPOSE 6379/tcp
# Wed, 31 Aug 2016 00:59:15 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78c9991783cd3fdc103f66617f6b3507a395a2e3443ee869b39b6631dbf0e19`  
		Last Modified: Thu, 08 Sep 2016 18:09:39 GMT  
		Size: 2.0 KB (2036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72c3506a8a48fd2ae7c69d0493615c25fc55bf44846f1cf48bcd1e51073be77`  
		Last Modified: Thu, 08 Sep 2016 18:09:44 GMT  
		Size: 16.6 MB (16609154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81ca5ba090504370f80e5aa2e39b348680a585fad89a3a9bc3601131774a687`  
		Last Modified: Thu, 08 Sep 2016 18:09:36 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e3a1ac2202bc1e4e87fdcce900fc1977f175366f38a51a172be575adeff545f`  
		Last Modified: Thu, 08 Sep 2016 18:11:01 GMT  
		Size: 5.5 MB (5464328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee732c42e18599a9e9c2035ab67b26e5c5b9efaeadfa2e23050e3b2906c1784`  
		Last Modified: Thu, 08 Sep 2016 18:10:59 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f2c0e63896895456c26d2b86a4e4639d5da445df3729258b3c8fe1bc644f78`  
		Last Modified: Thu, 08 Sep 2016 18:10:59 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2`

```console
$ docker pull redis@sha256:669bce2c53f66d76240b1304b3db7905004638d3c477ab70008904606e6a680d
```

-	Platforms:
	-	linux; amd64

### `redis:3.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.3 MB (74251210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d1cbfaa41da0776bb606103843ade3f26f4c4e3af7825e6f9ed1e8f152ba057`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:56:23 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 31 Aug 2016 00:56:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:56:35 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 00:56:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 31 Aug 2016 00:58:24 GMT
ENV REDIS_VERSION=3.2.3
# Wed, 31 Aug 2016 00:58:25 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Wed, 31 Aug 2016 00:58:25 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Wed, 31 Aug 2016 00:59:13 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 31 Aug 2016 00:59:14 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 31 Aug 2016 00:59:14 GMT
VOLUME [/data]
# Wed, 31 Aug 2016 00:59:14 GMT
WORKDIR /data
# Wed, 31 Aug 2016 00:59:15 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 31 Aug 2016 00:59:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 Aug 2016 00:59:15 GMT
EXPOSE 6379/tcp
# Wed, 31 Aug 2016 00:59:15 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78c9991783cd3fdc103f66617f6b3507a395a2e3443ee869b39b6631dbf0e19`  
		Last Modified: Thu, 08 Sep 2016 18:09:39 GMT  
		Size: 2.0 KB (2036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72c3506a8a48fd2ae7c69d0493615c25fc55bf44846f1cf48bcd1e51073be77`  
		Last Modified: Thu, 08 Sep 2016 18:09:44 GMT  
		Size: 16.6 MB (16609154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81ca5ba090504370f80e5aa2e39b348680a585fad89a3a9bc3601131774a687`  
		Last Modified: Thu, 08 Sep 2016 18:09:36 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e3a1ac2202bc1e4e87fdcce900fc1977f175366f38a51a172be575adeff545f`  
		Last Modified: Thu, 08 Sep 2016 18:11:01 GMT  
		Size: 5.5 MB (5464328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee732c42e18599a9e9c2035ab67b26e5c5b9efaeadfa2e23050e3b2906c1784`  
		Last Modified: Thu, 08 Sep 2016 18:10:59 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f2c0e63896895456c26d2b86a4e4639d5da445df3729258b3c8fe1bc644f78`  
		Last Modified: Thu, 08 Sep 2016 18:10:59 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3`

```console
$ docker pull redis@sha256:669bce2c53f66d76240b1304b3db7905004638d3c477ab70008904606e6a680d
```

-	Platforms:
	-	linux; amd64

### `redis:3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.3 MB (74251210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d1cbfaa41da0776bb606103843ade3f26f4c4e3af7825e6f9ed1e8f152ba057`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:56:23 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 31 Aug 2016 00:56:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:56:35 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 00:56:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 31 Aug 2016 00:58:24 GMT
ENV REDIS_VERSION=3.2.3
# Wed, 31 Aug 2016 00:58:25 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Wed, 31 Aug 2016 00:58:25 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Wed, 31 Aug 2016 00:59:13 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 31 Aug 2016 00:59:14 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 31 Aug 2016 00:59:14 GMT
VOLUME [/data]
# Wed, 31 Aug 2016 00:59:14 GMT
WORKDIR /data
# Wed, 31 Aug 2016 00:59:15 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 31 Aug 2016 00:59:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 Aug 2016 00:59:15 GMT
EXPOSE 6379/tcp
# Wed, 31 Aug 2016 00:59:15 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78c9991783cd3fdc103f66617f6b3507a395a2e3443ee869b39b6631dbf0e19`  
		Last Modified: Thu, 08 Sep 2016 18:09:39 GMT  
		Size: 2.0 KB (2036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72c3506a8a48fd2ae7c69d0493615c25fc55bf44846f1cf48bcd1e51073be77`  
		Last Modified: Thu, 08 Sep 2016 18:09:44 GMT  
		Size: 16.6 MB (16609154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81ca5ba090504370f80e5aa2e39b348680a585fad89a3a9bc3601131774a687`  
		Last Modified: Thu, 08 Sep 2016 18:09:36 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e3a1ac2202bc1e4e87fdcce900fc1977f175366f38a51a172be575adeff545f`  
		Last Modified: Thu, 08 Sep 2016 18:11:01 GMT  
		Size: 5.5 MB (5464328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee732c42e18599a9e9c2035ab67b26e5c5b9efaeadfa2e23050e3b2906c1784`  
		Last Modified: Thu, 08 Sep 2016 18:10:59 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f2c0e63896895456c26d2b86a4e4639d5da445df3729258b3c8fe1bc644f78`  
		Last Modified: Thu, 08 Sep 2016 18:10:59 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:latest`

```console
$ docker pull redis@sha256:669bce2c53f66d76240b1304b3db7905004638d3c477ab70008904606e6a680d
```

-	Platforms:
	-	linux; amd64

### `redis:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.3 MB (74251210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d1cbfaa41da0776bb606103843ade3f26f4c4e3af7825e6f9ed1e8f152ba057`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:56:23 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 31 Aug 2016 00:56:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:56:35 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 00:56:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 31 Aug 2016 00:58:24 GMT
ENV REDIS_VERSION=3.2.3
# Wed, 31 Aug 2016 00:58:25 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Wed, 31 Aug 2016 00:58:25 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Wed, 31 Aug 2016 00:59:13 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 31 Aug 2016 00:59:14 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 31 Aug 2016 00:59:14 GMT
VOLUME [/data]
# Wed, 31 Aug 2016 00:59:14 GMT
WORKDIR /data
# Wed, 31 Aug 2016 00:59:15 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 31 Aug 2016 00:59:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 Aug 2016 00:59:15 GMT
EXPOSE 6379/tcp
# Wed, 31 Aug 2016 00:59:15 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78c9991783cd3fdc103f66617f6b3507a395a2e3443ee869b39b6631dbf0e19`  
		Last Modified: Thu, 08 Sep 2016 18:09:39 GMT  
		Size: 2.0 KB (2036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72c3506a8a48fd2ae7c69d0493615c25fc55bf44846f1cf48bcd1e51073be77`  
		Last Modified: Thu, 08 Sep 2016 18:09:44 GMT  
		Size: 16.6 MB (16609154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81ca5ba090504370f80e5aa2e39b348680a585fad89a3a9bc3601131774a687`  
		Last Modified: Thu, 08 Sep 2016 18:09:36 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e3a1ac2202bc1e4e87fdcce900fc1977f175366f38a51a172be575adeff545f`  
		Last Modified: Thu, 08 Sep 2016 18:11:01 GMT  
		Size: 5.5 MB (5464328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee732c42e18599a9e9c2035ab67b26e5c5b9efaeadfa2e23050e3b2906c1784`  
		Last Modified: Thu, 08 Sep 2016 18:10:59 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f2c0e63896895456c26d2b86a4e4639d5da445df3729258b3c8fe1bc644f78`  
		Last Modified: Thu, 08 Sep 2016 18:10:59 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.3-32bit`

```console
$ docker pull redis@sha256:448d10cf24599858020c125241f8e3ecd252793c77b91e2f34dde9e2c673f927
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.3-32bit` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77897356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:556f1c046d92d3ab5500ebee410e4434c2653d037991e41d7cd9bf8833cb3c66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:56:23 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 31 Aug 2016 00:56:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:56:35 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 00:56:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 31 Aug 2016 00:58:24 GMT
ENV REDIS_VERSION=3.2.3
# Wed, 31 Aug 2016 00:58:25 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Wed, 31 Aug 2016 00:58:25 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Wed, 31 Aug 2016 00:59:21 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 01:00:15 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 31 Aug 2016 01:00:16 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 31 Aug 2016 01:00:17 GMT
VOLUME [/data]
# Wed, 31 Aug 2016 01:00:17 GMT
WORKDIR /data
# Wed, 31 Aug 2016 01:00:17 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 31 Aug 2016 01:00:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 Aug 2016 01:00:18 GMT
EXPOSE 6379/tcp
# Wed, 31 Aug 2016 01:00:18 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78c9991783cd3fdc103f66617f6b3507a395a2e3443ee869b39b6631dbf0e19`  
		Last Modified: Thu, 08 Sep 2016 18:09:39 GMT  
		Size: 2.0 KB (2036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72c3506a8a48fd2ae7c69d0493615c25fc55bf44846f1cf48bcd1e51073be77`  
		Last Modified: Thu, 08 Sep 2016 18:09:44 GMT  
		Size: 16.6 MB (16609154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81ca5ba090504370f80e5aa2e39b348680a585fad89a3a9bc3601131774a687`  
		Last Modified: Thu, 08 Sep 2016 18:09:36 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3f7f3dc92385ea606a34928b8179eb16ba425dacae566a5ea05c5b164a5174`  
		Last Modified: Thu, 08 Sep 2016 18:11:37 GMT  
		Size: 4.2 MB (4224292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3fb5afd3dc47d3cdc1bdf66c78f684f687a5654dd628a1e42f54748bb374631`  
		Last Modified: Thu, 08 Sep 2016 18:11:37 GMT  
		Size: 4.9 MB (4886181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde8b8e054f8575d5fcf11a36c59031844772636f5266a22aead831350be3891`  
		Last Modified: Thu, 08 Sep 2016 18:11:37 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7b21eec641490fd911039fefed364eac96659c91b7c8f16527f5d578ed997`  
		Last Modified: Thu, 08 Sep 2016 18:11:36 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-32bit`

```console
$ docker pull redis@sha256:448d10cf24599858020c125241f8e3ecd252793c77b91e2f34dde9e2c673f927
```

-	Platforms:
	-	linux; amd64

### `redis:3.2-32bit` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77897356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:556f1c046d92d3ab5500ebee410e4434c2653d037991e41d7cd9bf8833cb3c66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:56:23 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 31 Aug 2016 00:56:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:56:35 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 00:56:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 31 Aug 2016 00:58:24 GMT
ENV REDIS_VERSION=3.2.3
# Wed, 31 Aug 2016 00:58:25 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Wed, 31 Aug 2016 00:58:25 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Wed, 31 Aug 2016 00:59:21 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 01:00:15 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 31 Aug 2016 01:00:16 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 31 Aug 2016 01:00:17 GMT
VOLUME [/data]
# Wed, 31 Aug 2016 01:00:17 GMT
WORKDIR /data
# Wed, 31 Aug 2016 01:00:17 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 31 Aug 2016 01:00:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 Aug 2016 01:00:18 GMT
EXPOSE 6379/tcp
# Wed, 31 Aug 2016 01:00:18 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78c9991783cd3fdc103f66617f6b3507a395a2e3443ee869b39b6631dbf0e19`  
		Last Modified: Thu, 08 Sep 2016 18:09:39 GMT  
		Size: 2.0 KB (2036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72c3506a8a48fd2ae7c69d0493615c25fc55bf44846f1cf48bcd1e51073be77`  
		Last Modified: Thu, 08 Sep 2016 18:09:44 GMT  
		Size: 16.6 MB (16609154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81ca5ba090504370f80e5aa2e39b348680a585fad89a3a9bc3601131774a687`  
		Last Modified: Thu, 08 Sep 2016 18:09:36 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3f7f3dc92385ea606a34928b8179eb16ba425dacae566a5ea05c5b164a5174`  
		Last Modified: Thu, 08 Sep 2016 18:11:37 GMT  
		Size: 4.2 MB (4224292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3fb5afd3dc47d3cdc1bdf66c78f684f687a5654dd628a1e42f54748bb374631`  
		Last Modified: Thu, 08 Sep 2016 18:11:37 GMT  
		Size: 4.9 MB (4886181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde8b8e054f8575d5fcf11a36c59031844772636f5266a22aead831350be3891`  
		Last Modified: Thu, 08 Sep 2016 18:11:37 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7b21eec641490fd911039fefed364eac96659c91b7c8f16527f5d578ed997`  
		Last Modified: Thu, 08 Sep 2016 18:11:36 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-32bit`

```console
$ docker pull redis@sha256:448d10cf24599858020c125241f8e3ecd252793c77b91e2f34dde9e2c673f927
```

-	Platforms:
	-	linux; amd64

### `redis:3-32bit` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77897356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:556f1c046d92d3ab5500ebee410e4434c2653d037991e41d7cd9bf8833cb3c66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:56:23 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 31 Aug 2016 00:56:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:56:35 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 00:56:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 31 Aug 2016 00:58:24 GMT
ENV REDIS_VERSION=3.2.3
# Wed, 31 Aug 2016 00:58:25 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Wed, 31 Aug 2016 00:58:25 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Wed, 31 Aug 2016 00:59:21 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 01:00:15 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 31 Aug 2016 01:00:16 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 31 Aug 2016 01:00:17 GMT
VOLUME [/data]
# Wed, 31 Aug 2016 01:00:17 GMT
WORKDIR /data
# Wed, 31 Aug 2016 01:00:17 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 31 Aug 2016 01:00:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 Aug 2016 01:00:18 GMT
EXPOSE 6379/tcp
# Wed, 31 Aug 2016 01:00:18 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78c9991783cd3fdc103f66617f6b3507a395a2e3443ee869b39b6631dbf0e19`  
		Last Modified: Thu, 08 Sep 2016 18:09:39 GMT  
		Size: 2.0 KB (2036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72c3506a8a48fd2ae7c69d0493615c25fc55bf44846f1cf48bcd1e51073be77`  
		Last Modified: Thu, 08 Sep 2016 18:09:44 GMT  
		Size: 16.6 MB (16609154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81ca5ba090504370f80e5aa2e39b348680a585fad89a3a9bc3601131774a687`  
		Last Modified: Thu, 08 Sep 2016 18:09:36 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3f7f3dc92385ea606a34928b8179eb16ba425dacae566a5ea05c5b164a5174`  
		Last Modified: Thu, 08 Sep 2016 18:11:37 GMT  
		Size: 4.2 MB (4224292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3fb5afd3dc47d3cdc1bdf66c78f684f687a5654dd628a1e42f54748bb374631`  
		Last Modified: Thu, 08 Sep 2016 18:11:37 GMT  
		Size: 4.9 MB (4886181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde8b8e054f8575d5fcf11a36c59031844772636f5266a22aead831350be3891`  
		Last Modified: Thu, 08 Sep 2016 18:11:37 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7b21eec641490fd911039fefed364eac96659c91b7c8f16527f5d578ed997`  
		Last Modified: Thu, 08 Sep 2016 18:11:36 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:32bit`

```console
$ docker pull redis@sha256:448d10cf24599858020c125241f8e3ecd252793c77b91e2f34dde9e2c673f927
```

-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77897356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:556f1c046d92d3ab5500ebee410e4434c2653d037991e41d7cd9bf8833cb3c66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:56:23 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 31 Aug 2016 00:56:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:56:35 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 00:56:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 31 Aug 2016 00:58:24 GMT
ENV REDIS_VERSION=3.2.3
# Wed, 31 Aug 2016 00:58:25 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Wed, 31 Aug 2016 00:58:25 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Wed, 31 Aug 2016 00:59:21 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 01:00:15 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 31 Aug 2016 01:00:16 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 31 Aug 2016 01:00:17 GMT
VOLUME [/data]
# Wed, 31 Aug 2016 01:00:17 GMT
WORKDIR /data
# Wed, 31 Aug 2016 01:00:17 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 31 Aug 2016 01:00:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 Aug 2016 01:00:18 GMT
EXPOSE 6379/tcp
# Wed, 31 Aug 2016 01:00:18 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78c9991783cd3fdc103f66617f6b3507a395a2e3443ee869b39b6631dbf0e19`  
		Last Modified: Thu, 08 Sep 2016 18:09:39 GMT  
		Size: 2.0 KB (2036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72c3506a8a48fd2ae7c69d0493615c25fc55bf44846f1cf48bcd1e51073be77`  
		Last Modified: Thu, 08 Sep 2016 18:09:44 GMT  
		Size: 16.6 MB (16609154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81ca5ba090504370f80e5aa2e39b348680a585fad89a3a9bc3601131774a687`  
		Last Modified: Thu, 08 Sep 2016 18:09:36 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3f7f3dc92385ea606a34928b8179eb16ba425dacae566a5ea05c5b164a5174`  
		Last Modified: Thu, 08 Sep 2016 18:11:37 GMT  
		Size: 4.2 MB (4224292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3fb5afd3dc47d3cdc1bdf66c78f684f687a5654dd628a1e42f54748bb374631`  
		Last Modified: Thu, 08 Sep 2016 18:11:37 GMT  
		Size: 4.9 MB (4886181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde8b8e054f8575d5fcf11a36c59031844772636f5266a22aead831350be3891`  
		Last Modified: Thu, 08 Sep 2016 18:11:37 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7b21eec641490fd911039fefed364eac96659c91b7c8f16527f5d578ed997`  
		Last Modified: Thu, 08 Sep 2016 18:11:36 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.3-alpine`

```console
$ docker pull redis@sha256:afa4e7f6dc4d4f4294f54835bcfe610201057f5424b36310cba799e625849ebd
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.3-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7985371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60d5af14b41c823f9327ff8a45e2d50254d0d149ef9c792a5f87077e2f8ec06b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 17:38:59 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 30 Aug 2016 17:39:00 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 30 Aug 2016 17:41:40 GMT
ENV REDIS_VERSION=3.2.3
# Tue, 30 Aug 2016 17:41:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Tue, 30 Aug 2016 17:41:40 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Tue, 30 Aug 2016 17:42:21 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Tue, 30 Aug 2016 17:42:22 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 30 Aug 2016 17:42:22 GMT
VOLUME [/data]
# Tue, 30 Aug 2016 17:42:23 GMT
WORKDIR /data
# Tue, 30 Aug 2016 17:42:23 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 30 Aug 2016 17:42:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 17:42:23 GMT
EXPOSE 6379/tcp
# Tue, 30 Aug 2016 17:42:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999df2dc636584ef54d418dd688270789cd429a850fbcb452370b79c0943558b`  
		Last Modified: Thu, 08 Sep 2016 18:10:37 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32311ecd3c01b9d42c3ef0e0b677d27e7fd5de2955169620dbdd47c0d506095`  
		Last Modified: Thu, 08 Sep 2016 18:10:34 GMT  
		Size: 7.9 KB (7925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d9ed82d19a35eb4b3c4dad666174d55e547ab1553085958fdd26b3afac5680`  
		Last Modified: Thu, 08 Sep 2016 18:12:16 GMT  
		Size: 5.7 MB (5665409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6884ec6a256f4fbda122857d0a356268e8178357eedbef46455894afccb9e6f`  
		Last Modified: Thu, 08 Sep 2016 18:12:12 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7555353fd9400340fb1bdd2d40ee867f37cfb04a5e95a42edb4533f7d3ed890`  
		Last Modified: Thu, 08 Sep 2016 18:12:12 GMT  
		Size: 385.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-alpine`

```console
$ docker pull redis@sha256:afa4e7f6dc4d4f4294f54835bcfe610201057f5424b36310cba799e625849ebd
```

-	Platforms:
	-	linux; amd64

### `redis:3.2-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7985371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60d5af14b41c823f9327ff8a45e2d50254d0d149ef9c792a5f87077e2f8ec06b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 17:38:59 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 30 Aug 2016 17:39:00 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 30 Aug 2016 17:41:40 GMT
ENV REDIS_VERSION=3.2.3
# Tue, 30 Aug 2016 17:41:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Tue, 30 Aug 2016 17:41:40 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Tue, 30 Aug 2016 17:42:21 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Tue, 30 Aug 2016 17:42:22 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 30 Aug 2016 17:42:22 GMT
VOLUME [/data]
# Tue, 30 Aug 2016 17:42:23 GMT
WORKDIR /data
# Tue, 30 Aug 2016 17:42:23 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 30 Aug 2016 17:42:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 17:42:23 GMT
EXPOSE 6379/tcp
# Tue, 30 Aug 2016 17:42:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999df2dc636584ef54d418dd688270789cd429a850fbcb452370b79c0943558b`  
		Last Modified: Thu, 08 Sep 2016 18:10:37 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32311ecd3c01b9d42c3ef0e0b677d27e7fd5de2955169620dbdd47c0d506095`  
		Last Modified: Thu, 08 Sep 2016 18:10:34 GMT  
		Size: 7.9 KB (7925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d9ed82d19a35eb4b3c4dad666174d55e547ab1553085958fdd26b3afac5680`  
		Last Modified: Thu, 08 Sep 2016 18:12:16 GMT  
		Size: 5.7 MB (5665409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6884ec6a256f4fbda122857d0a356268e8178357eedbef46455894afccb9e6f`  
		Last Modified: Thu, 08 Sep 2016 18:12:12 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7555353fd9400340fb1bdd2d40ee867f37cfb04a5e95a42edb4533f7d3ed890`  
		Last Modified: Thu, 08 Sep 2016 18:12:12 GMT  
		Size: 385.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-alpine`

```console
$ docker pull redis@sha256:afa4e7f6dc4d4f4294f54835bcfe610201057f5424b36310cba799e625849ebd
```

-	Platforms:
	-	linux; amd64

### `redis:3-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7985371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60d5af14b41c823f9327ff8a45e2d50254d0d149ef9c792a5f87077e2f8ec06b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 17:38:59 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 30 Aug 2016 17:39:00 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 30 Aug 2016 17:41:40 GMT
ENV REDIS_VERSION=3.2.3
# Tue, 30 Aug 2016 17:41:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Tue, 30 Aug 2016 17:41:40 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Tue, 30 Aug 2016 17:42:21 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Tue, 30 Aug 2016 17:42:22 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 30 Aug 2016 17:42:22 GMT
VOLUME [/data]
# Tue, 30 Aug 2016 17:42:23 GMT
WORKDIR /data
# Tue, 30 Aug 2016 17:42:23 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 30 Aug 2016 17:42:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 17:42:23 GMT
EXPOSE 6379/tcp
# Tue, 30 Aug 2016 17:42:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999df2dc636584ef54d418dd688270789cd429a850fbcb452370b79c0943558b`  
		Last Modified: Thu, 08 Sep 2016 18:10:37 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32311ecd3c01b9d42c3ef0e0b677d27e7fd5de2955169620dbdd47c0d506095`  
		Last Modified: Thu, 08 Sep 2016 18:10:34 GMT  
		Size: 7.9 KB (7925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d9ed82d19a35eb4b3c4dad666174d55e547ab1553085958fdd26b3afac5680`  
		Last Modified: Thu, 08 Sep 2016 18:12:16 GMT  
		Size: 5.7 MB (5665409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6884ec6a256f4fbda122857d0a356268e8178357eedbef46455894afccb9e6f`  
		Last Modified: Thu, 08 Sep 2016 18:12:12 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7555353fd9400340fb1bdd2d40ee867f37cfb04a5e95a42edb4533f7d3ed890`  
		Last Modified: Thu, 08 Sep 2016 18:12:12 GMT  
		Size: 385.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine`

```console
$ docker pull redis@sha256:afa4e7f6dc4d4f4294f54835bcfe610201057f5424b36310cba799e625849ebd
```

-	Platforms:
	-	linux; amd64

### `redis:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7985371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60d5af14b41c823f9327ff8a45e2d50254d0d149ef9c792a5f87077e2f8ec06b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 17:38:59 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 30 Aug 2016 17:39:00 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 30 Aug 2016 17:41:40 GMT
ENV REDIS_VERSION=3.2.3
# Tue, 30 Aug 2016 17:41:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Tue, 30 Aug 2016 17:41:40 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Tue, 30 Aug 2016 17:42:21 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Tue, 30 Aug 2016 17:42:22 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 30 Aug 2016 17:42:22 GMT
VOLUME [/data]
# Tue, 30 Aug 2016 17:42:23 GMT
WORKDIR /data
# Tue, 30 Aug 2016 17:42:23 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 30 Aug 2016 17:42:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 17:42:23 GMT
EXPOSE 6379/tcp
# Tue, 30 Aug 2016 17:42:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999df2dc636584ef54d418dd688270789cd429a850fbcb452370b79c0943558b`  
		Last Modified: Thu, 08 Sep 2016 18:10:37 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32311ecd3c01b9d42c3ef0e0b677d27e7fd5de2955169620dbdd47c0d506095`  
		Last Modified: Thu, 08 Sep 2016 18:10:34 GMT  
		Size: 7.9 KB (7925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d9ed82d19a35eb4b3c4dad666174d55e547ab1553085958fdd26b3afac5680`  
		Last Modified: Thu, 08 Sep 2016 18:12:16 GMT  
		Size: 5.7 MB (5665409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6884ec6a256f4fbda122857d0a356268e8178357eedbef46455894afccb9e6f`  
		Last Modified: Thu, 08 Sep 2016 18:12:12 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7555353fd9400340fb1bdd2d40ee867f37cfb04a5e95a42edb4533f7d3ed890`  
		Last Modified: Thu, 08 Sep 2016 18:12:12 GMT  
		Size: 385.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
