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
