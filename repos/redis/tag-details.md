<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

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
$ docker pull redis@sha256:a0a0d17b658bca52351da9a412429e28b3f35aca580ed298b4ddc96736add01c
```

-	Platforms:
	-	linux; amd64

### `redis:3.0.7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.8 MB (71766872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22d1a4cb1939dcbfef9ec1ecb8de01488434dd3aa5a58f3d856b4e8427bc4ab5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Tue, 02 Aug 2016 00:50:33 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 02 Aug 2016 00:51:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 Aug 2016 00:51:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 02 Aug 2016 00:51:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 02 Aug 2016 00:51:48 GMT
ENV REDIS_VERSION=3.0.7
# Tue, 02 Aug 2016 00:51:48 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Tue, 02 Aug 2016 00:51:49 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Tue, 02 Aug 2016 00:53:53 GMT
RUN buildDeps='gcc libc6-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 02 Aug 2016 00:53:55 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 02 Aug 2016 00:53:56 GMT
VOLUME [/data]
# Tue, 02 Aug 2016 00:53:57 GMT
WORKDIR /data
# Tue, 02 Aug 2016 00:53:58 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/
# Tue, 02 Aug 2016 00:54:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 02 Aug 2016 00:54:00 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Tue, 02 Aug 2016 00:54:01 GMT
EXPOSE 6379/tcp
# Tue, 02 Aug 2016 00:54:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9b1293eb21aea4ec3a5eec6425d93063b4acf9226142fe426cda37cbd1db17`  
		Last Modified: Tue, 02 Aug 2016 01:04:22 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f306a5223db9535d6373c5afbc063c8b00cdce4000a0ab60bec6f3fa5abc75ca`  
		Last Modified: Tue, 02 Aug 2016 01:04:27 GMT  
		Size: 16.6 MB (16609200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f7595fe6936868f8503042be938038d3ea2f37128a867c7ac6bdbc648b1dfe`  
		Last Modified: Tue, 02 Aug 2016 01:04:20 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751d7ff466aef80a88e1281482b857303a68748bc6ceaf302e505a5682fa861f`  
		Last Modified: Tue, 02 Aug 2016 01:04:20 GMT  
		Size: 3.0 MB (2981474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40709fa9ad86f3df3560fb29b3e5069f0a94500e281a89142351446d3cf7c144`  
		Last Modified: Tue, 02 Aug 2016 01:04:19 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f68e3ecab4872b7dadf00cd409a226ef2c730dbbf7caa26cd5c7c75d2d9e17`  
		Last Modified: Tue, 02 Aug 2016 01:04:19 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66c3d7f82707ed5d0c64d8b5b798ee1b02b2230c99bf40c53737d340b5290d7`  
		Last Modified: Tue, 02 Aug 2016 01:04:19 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0`

```console
$ docker pull redis@sha256:a0a0d17b658bca52351da9a412429e28b3f35aca580ed298b4ddc96736add01c
```

-	Platforms:
	-	linux; amd64

### `redis:3.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.8 MB (71766872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22d1a4cb1939dcbfef9ec1ecb8de01488434dd3aa5a58f3d856b4e8427bc4ab5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Tue, 02 Aug 2016 00:50:33 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 02 Aug 2016 00:51:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 Aug 2016 00:51:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 02 Aug 2016 00:51:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 02 Aug 2016 00:51:48 GMT
ENV REDIS_VERSION=3.0.7
# Tue, 02 Aug 2016 00:51:48 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Tue, 02 Aug 2016 00:51:49 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Tue, 02 Aug 2016 00:53:53 GMT
RUN buildDeps='gcc libc6-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 02 Aug 2016 00:53:55 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 02 Aug 2016 00:53:56 GMT
VOLUME [/data]
# Tue, 02 Aug 2016 00:53:57 GMT
WORKDIR /data
# Tue, 02 Aug 2016 00:53:58 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/
# Tue, 02 Aug 2016 00:54:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 02 Aug 2016 00:54:00 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Tue, 02 Aug 2016 00:54:01 GMT
EXPOSE 6379/tcp
# Tue, 02 Aug 2016 00:54:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9b1293eb21aea4ec3a5eec6425d93063b4acf9226142fe426cda37cbd1db17`  
		Last Modified: Tue, 02 Aug 2016 01:04:22 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f306a5223db9535d6373c5afbc063c8b00cdce4000a0ab60bec6f3fa5abc75ca`  
		Last Modified: Tue, 02 Aug 2016 01:04:27 GMT  
		Size: 16.6 MB (16609200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f7595fe6936868f8503042be938038d3ea2f37128a867c7ac6bdbc648b1dfe`  
		Last Modified: Tue, 02 Aug 2016 01:04:20 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751d7ff466aef80a88e1281482b857303a68748bc6ceaf302e505a5682fa861f`  
		Last Modified: Tue, 02 Aug 2016 01:04:20 GMT  
		Size: 3.0 MB (2981474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40709fa9ad86f3df3560fb29b3e5069f0a94500e281a89142351446d3cf7c144`  
		Last Modified: Tue, 02 Aug 2016 01:04:19 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f68e3ecab4872b7dadf00cd409a226ef2c730dbbf7caa26cd5c7c75d2d9e17`  
		Last Modified: Tue, 02 Aug 2016 01:04:19 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66c3d7f82707ed5d0c64d8b5b798ee1b02b2230c99bf40c53737d340b5290d7`  
		Last Modified: Tue, 02 Aug 2016 01:04:19 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0.7-32bit`

```console
$ docker pull redis@sha256:27e6265802b36820d39c30444362ebc917845c7653e3500fe9cf6bf4b3b7910f
```

-	Platforms:
	-	linux; amd64

### `redis:3.0.7-32bit` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.7 MB (75679059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df075219a352d4f711bf08e999e40b599c7c972892443076b6b99ea1be43785e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Tue, 02 Aug 2016 00:50:33 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 02 Aug 2016 00:51:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 Aug 2016 00:51:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 02 Aug 2016 00:51:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 02 Aug 2016 00:51:48 GMT
ENV REDIS_VERSION=3.0.7
# Tue, 02 Aug 2016 00:51:48 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Tue, 02 Aug 2016 00:51:49 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Tue, 02 Aug 2016 00:54:58 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 02 Aug 2016 00:57:11 GMT
RUN buildDeps='gcc gcc-multilib libc6-dev-i386 make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 02 Aug 2016 00:57:13 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 02 Aug 2016 00:57:13 GMT
VOLUME [/data]
# Tue, 02 Aug 2016 00:57:14 GMT
WORKDIR /data
# Tue, 02 Aug 2016 00:57:14 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/
# Tue, 02 Aug 2016 00:57:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 02 Aug 2016 00:57:16 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Tue, 02 Aug 2016 00:57:16 GMT
EXPOSE 6379/tcp
# Tue, 02 Aug 2016 00:57:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9b1293eb21aea4ec3a5eec6425d93063b4acf9226142fe426cda37cbd1db17`  
		Last Modified: Tue, 02 Aug 2016 01:04:22 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f306a5223db9535d6373c5afbc063c8b00cdce4000a0ab60bec6f3fa5abc75ca`  
		Last Modified: Tue, 02 Aug 2016 01:04:27 GMT  
		Size: 16.6 MB (16609200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f7595fe6936868f8503042be938038d3ea2f37128a867c7ac6bdbc648b1dfe`  
		Last Modified: Tue, 02 Aug 2016 01:04:20 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf8e59bbb3095c443229c25c0df7e055184e4724d4fff304b5a965a3d889a4c`  
		Last Modified: Tue, 02 Aug 2016 01:04:53 GMT  
		Size: 4.2 MB (4224165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cc6ea6815de2778136fbb9ea95e5bab99f907c6ffead8ad3807808b8c39823b`  
		Last Modified: Tue, 02 Aug 2016 01:04:53 GMT  
		Size: 2.7 MB (2669495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd789ebbfa94ea7c236e8d62b352cbf305e9ec76e58bc5fdef2812156bfb081`  
		Last Modified: Tue, 02 Aug 2016 01:04:52 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f4819d3c057925adf69e1a4a5bdba5bca633ada5594543c4bc0cdc4b4c7174`  
		Last Modified: Tue, 02 Aug 2016 01:04:53 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a9057e9681aac597a36033874234b4096acf7eeaa6d0bffa1b13cd814db3bf`  
		Last Modified: Tue, 02 Aug 2016 01:04:53 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0-32bit`

```console
$ docker pull redis@sha256:27e6265802b36820d39c30444362ebc917845c7653e3500fe9cf6bf4b3b7910f
```

-	Platforms:
	-	linux; amd64

### `redis:3.0-32bit` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.7 MB (75679059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df075219a352d4f711bf08e999e40b599c7c972892443076b6b99ea1be43785e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Tue, 02 Aug 2016 00:50:33 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 02 Aug 2016 00:51:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 Aug 2016 00:51:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 02 Aug 2016 00:51:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 02 Aug 2016 00:51:48 GMT
ENV REDIS_VERSION=3.0.7
# Tue, 02 Aug 2016 00:51:48 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Tue, 02 Aug 2016 00:51:49 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Tue, 02 Aug 2016 00:54:58 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 02 Aug 2016 00:57:11 GMT
RUN buildDeps='gcc gcc-multilib libc6-dev-i386 make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 02 Aug 2016 00:57:13 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 02 Aug 2016 00:57:13 GMT
VOLUME [/data]
# Tue, 02 Aug 2016 00:57:14 GMT
WORKDIR /data
# Tue, 02 Aug 2016 00:57:14 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/
# Tue, 02 Aug 2016 00:57:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 02 Aug 2016 00:57:16 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Tue, 02 Aug 2016 00:57:16 GMT
EXPOSE 6379/tcp
# Tue, 02 Aug 2016 00:57:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9b1293eb21aea4ec3a5eec6425d93063b4acf9226142fe426cda37cbd1db17`  
		Last Modified: Tue, 02 Aug 2016 01:04:22 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f306a5223db9535d6373c5afbc063c8b00cdce4000a0ab60bec6f3fa5abc75ca`  
		Last Modified: Tue, 02 Aug 2016 01:04:27 GMT  
		Size: 16.6 MB (16609200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f7595fe6936868f8503042be938038d3ea2f37128a867c7ac6bdbc648b1dfe`  
		Last Modified: Tue, 02 Aug 2016 01:04:20 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf8e59bbb3095c443229c25c0df7e055184e4724d4fff304b5a965a3d889a4c`  
		Last Modified: Tue, 02 Aug 2016 01:04:53 GMT  
		Size: 4.2 MB (4224165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cc6ea6815de2778136fbb9ea95e5bab99f907c6ffead8ad3807808b8c39823b`  
		Last Modified: Tue, 02 Aug 2016 01:04:53 GMT  
		Size: 2.7 MB (2669495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd789ebbfa94ea7c236e8d62b352cbf305e9ec76e58bc5fdef2812156bfb081`  
		Last Modified: Tue, 02 Aug 2016 01:04:52 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f4819d3c057925adf69e1a4a5bdba5bca633ada5594543c4bc0cdc4b4c7174`  
		Last Modified: Tue, 02 Aug 2016 01:04:53 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a9057e9681aac597a36033874234b4096acf7eeaa6d0bffa1b13cd814db3bf`  
		Last Modified: Tue, 02 Aug 2016 01:04:53 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0.7-alpine`

```console
$ docker pull redis@sha256:215fa745788070c35e9494ee894b9de19b208f46adca076bbed5b1b963e7ec9c
```

-	Platforms:
	-	linux; amd64

### `redis:3.0.7-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5188777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f10be0361c71ec82a32460ecd4d53e7f13d31ce92cfe3a0988a7388f0bae92c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 21:59:03 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 23 Jun 2016 21:59:06 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 23 Jun 2016 21:59:06 GMT
ENV REDIS_VERSION=3.0.7
# Thu, 23 Jun 2016 21:59:09 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Thu, 23 Jun 2016 21:59:10 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Thu, 23 Jun 2016 22:00:04 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apk del .build-deps
# Thu, 23 Jun 2016 22:00:05 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 23 Jun 2016 22:00:06 GMT
VOLUME [/data]
# Thu, 23 Jun 2016 22:00:06 GMT
WORKDIR /data
# Thu, 23 Jun 2016 22:00:07 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/
# Thu, 23 Jun 2016 22:00:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 23 Jun 2016 22:00:11 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Thu, 23 Jun 2016 22:00:11 GMT
EXPOSE 6379/tcp
# Thu, 23 Jun 2016 22:00:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccbb6980b59cefac1cb385fee9337a42e69c0f2af7b0446e8d8bdb3e7660748`  
		Last Modified: Thu, 23 Jun 2016 22:00:20 GMT  
		Size: 31.5 KB (31496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8c804c16443f8c8b05d1a0b9fc07ac6b68e8225368e6382f8c812d306022c8`  
		Last Modified: Thu, 23 Jun 2016 22:00:19 GMT  
		Size: 7.9 KB (7925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c31210b02940ee84c3298fd0ad66b1b308cb97fa8b94f21137e077dad9910c1`  
		Last Modified: Thu, 23 Jun 2016 22:00:19 GMT  
		Size: 2.8 MB (2838469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df9e211e6a793e3d6353a26d3f0e69820d17d694fe2bff1fb4a1441cf8cc3f5`  
		Last Modified: Thu, 23 Jun 2016 22:00:18 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed268e9266902fdee1ecb166f1b8389666c009609dfffc2dc923e807f32ece5`  
		Last Modified: Thu, 23 Jun 2016 22:00:18 GMT  
		Size: 385.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5192b2b8af3215caf06b5e5a48b0e9e71a629e0659b3a7ddaea0511c03a8125f`  
		Last Modified: Thu, 23 Jun 2016 22:00:18 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0-alpine`

```console
$ docker pull redis@sha256:215fa745788070c35e9494ee894b9de19b208f46adca076bbed5b1b963e7ec9c
```

-	Platforms:
	-	linux; amd64

### `redis:3.0-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5188777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f10be0361c71ec82a32460ecd4d53e7f13d31ce92cfe3a0988a7388f0bae92c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 21:59:03 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 23 Jun 2016 21:59:06 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 23 Jun 2016 21:59:06 GMT
ENV REDIS_VERSION=3.0.7
# Thu, 23 Jun 2016 21:59:09 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Thu, 23 Jun 2016 21:59:10 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Thu, 23 Jun 2016 22:00:04 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apk del .build-deps
# Thu, 23 Jun 2016 22:00:05 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 23 Jun 2016 22:00:06 GMT
VOLUME [/data]
# Thu, 23 Jun 2016 22:00:06 GMT
WORKDIR /data
# Thu, 23 Jun 2016 22:00:07 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/
# Thu, 23 Jun 2016 22:00:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 23 Jun 2016 22:00:11 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Thu, 23 Jun 2016 22:00:11 GMT
EXPOSE 6379/tcp
# Thu, 23 Jun 2016 22:00:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccbb6980b59cefac1cb385fee9337a42e69c0f2af7b0446e8d8bdb3e7660748`  
		Last Modified: Thu, 23 Jun 2016 22:00:20 GMT  
		Size: 31.5 KB (31496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8c804c16443f8c8b05d1a0b9fc07ac6b68e8225368e6382f8c812d306022c8`  
		Last Modified: Thu, 23 Jun 2016 22:00:19 GMT  
		Size: 7.9 KB (7925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c31210b02940ee84c3298fd0ad66b1b308cb97fa8b94f21137e077dad9910c1`  
		Last Modified: Thu, 23 Jun 2016 22:00:19 GMT  
		Size: 2.8 MB (2838469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df9e211e6a793e3d6353a26d3f0e69820d17d694fe2bff1fb4a1441cf8cc3f5`  
		Last Modified: Thu, 23 Jun 2016 22:00:18 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed268e9266902fdee1ecb166f1b8389666c009609dfffc2dc923e807f32ece5`  
		Last Modified: Thu, 23 Jun 2016 22:00:18 GMT  
		Size: 385.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5192b2b8af3215caf06b5e5a48b0e9e71a629e0659b3a7ddaea0511c03a8125f`  
		Last Modified: Thu, 23 Jun 2016 22:00:18 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.3`

```console
$ docker pull redis@sha256:82bb381627519709f458e1dd2d4ba36d61244368baf186615ab733f02363e211
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.3` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74249490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50e38ce0458ffbd0edb6b340287a38e44263c80abe20739492c8faa0e3281465`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Tue, 02 Aug 2016 00:50:33 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 02 Aug 2016 00:51:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 Aug 2016 00:51:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 02 Aug 2016 00:51:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 03 Aug 2016 21:56:32 GMT
ENV REDIS_VERSION=3.2.3
# Wed, 03 Aug 2016 21:56:32 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Wed, 03 Aug 2016 21:56:33 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Fri, 26 Aug 2016 23:10:50 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 26 Aug 2016 23:10:52 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 26 Aug 2016 23:10:53 GMT
VOLUME [/data]
# Fri, 26 Aug 2016 23:10:54 GMT
WORKDIR /data
# Fri, 26 Aug 2016 23:10:55 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/
# Fri, 26 Aug 2016 23:10:56 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Fri, 26 Aug 2016 23:10:57 GMT
EXPOSE 6379/tcp
# Fri, 26 Aug 2016 23:10:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9b1293eb21aea4ec3a5eec6425d93063b4acf9226142fe426cda37cbd1db17`  
		Last Modified: Tue, 02 Aug 2016 01:04:22 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f306a5223db9535d6373c5afbc063c8b00cdce4000a0ab60bec6f3fa5abc75ca`  
		Last Modified: Tue, 02 Aug 2016 01:04:27 GMT  
		Size: 16.6 MB (16609200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f7595fe6936868f8503042be938038d3ea2f37128a867c7ac6bdbc648b1dfe`  
		Last Modified: Tue, 02 Aug 2016 01:04:20 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5327c259f944cd2b94b849b82ff61fc6dfd796b24628cd12d52a116134008d`  
		Last Modified: Fri, 26 Aug 2016 23:15:55 GMT  
		Size: 5.5 MB (5464209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72669c48ab1fa3501d0a4fd24182f0f2d2f485e51522bbcf4defab92832f47ef`  
		Last Modified: Fri, 26 Aug 2016 23:15:53 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895c6b98a9751ec9f9d08e0d188c4489bcc8c5505e618ffb4c5bfca349d13722`  
		Last Modified: Fri, 26 Aug 2016 23:15:53 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2`

```console
$ docker pull redis@sha256:82bb381627519709f458e1dd2d4ba36d61244368baf186615ab733f02363e211
```

-	Platforms:
	-	linux; amd64

### `redis:3.2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74249490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50e38ce0458ffbd0edb6b340287a38e44263c80abe20739492c8faa0e3281465`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Tue, 02 Aug 2016 00:50:33 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 02 Aug 2016 00:51:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 Aug 2016 00:51:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 02 Aug 2016 00:51:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 03 Aug 2016 21:56:32 GMT
ENV REDIS_VERSION=3.2.3
# Wed, 03 Aug 2016 21:56:32 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Wed, 03 Aug 2016 21:56:33 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Fri, 26 Aug 2016 23:10:50 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 26 Aug 2016 23:10:52 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 26 Aug 2016 23:10:53 GMT
VOLUME [/data]
# Fri, 26 Aug 2016 23:10:54 GMT
WORKDIR /data
# Fri, 26 Aug 2016 23:10:55 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/
# Fri, 26 Aug 2016 23:10:56 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Fri, 26 Aug 2016 23:10:57 GMT
EXPOSE 6379/tcp
# Fri, 26 Aug 2016 23:10:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9b1293eb21aea4ec3a5eec6425d93063b4acf9226142fe426cda37cbd1db17`  
		Last Modified: Tue, 02 Aug 2016 01:04:22 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f306a5223db9535d6373c5afbc063c8b00cdce4000a0ab60bec6f3fa5abc75ca`  
		Last Modified: Tue, 02 Aug 2016 01:04:27 GMT  
		Size: 16.6 MB (16609200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f7595fe6936868f8503042be938038d3ea2f37128a867c7ac6bdbc648b1dfe`  
		Last Modified: Tue, 02 Aug 2016 01:04:20 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5327c259f944cd2b94b849b82ff61fc6dfd796b24628cd12d52a116134008d`  
		Last Modified: Fri, 26 Aug 2016 23:15:55 GMT  
		Size: 5.5 MB (5464209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72669c48ab1fa3501d0a4fd24182f0f2d2f485e51522bbcf4defab92832f47ef`  
		Last Modified: Fri, 26 Aug 2016 23:15:53 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895c6b98a9751ec9f9d08e0d188c4489bcc8c5505e618ffb4c5bfca349d13722`  
		Last Modified: Fri, 26 Aug 2016 23:15:53 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3`

```console
$ docker pull redis@sha256:82bb381627519709f458e1dd2d4ba36d61244368baf186615ab733f02363e211
```

-	Platforms:
	-	linux; amd64

### `redis:3` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74249490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50e38ce0458ffbd0edb6b340287a38e44263c80abe20739492c8faa0e3281465`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Tue, 02 Aug 2016 00:50:33 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 02 Aug 2016 00:51:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 Aug 2016 00:51:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 02 Aug 2016 00:51:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 03 Aug 2016 21:56:32 GMT
ENV REDIS_VERSION=3.2.3
# Wed, 03 Aug 2016 21:56:32 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Wed, 03 Aug 2016 21:56:33 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Fri, 26 Aug 2016 23:10:50 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 26 Aug 2016 23:10:52 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 26 Aug 2016 23:10:53 GMT
VOLUME [/data]
# Fri, 26 Aug 2016 23:10:54 GMT
WORKDIR /data
# Fri, 26 Aug 2016 23:10:55 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/
# Fri, 26 Aug 2016 23:10:56 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Fri, 26 Aug 2016 23:10:57 GMT
EXPOSE 6379/tcp
# Fri, 26 Aug 2016 23:10:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9b1293eb21aea4ec3a5eec6425d93063b4acf9226142fe426cda37cbd1db17`  
		Last Modified: Tue, 02 Aug 2016 01:04:22 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f306a5223db9535d6373c5afbc063c8b00cdce4000a0ab60bec6f3fa5abc75ca`  
		Last Modified: Tue, 02 Aug 2016 01:04:27 GMT  
		Size: 16.6 MB (16609200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f7595fe6936868f8503042be938038d3ea2f37128a867c7ac6bdbc648b1dfe`  
		Last Modified: Tue, 02 Aug 2016 01:04:20 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5327c259f944cd2b94b849b82ff61fc6dfd796b24628cd12d52a116134008d`  
		Last Modified: Fri, 26 Aug 2016 23:15:55 GMT  
		Size: 5.5 MB (5464209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72669c48ab1fa3501d0a4fd24182f0f2d2f485e51522bbcf4defab92832f47ef`  
		Last Modified: Fri, 26 Aug 2016 23:15:53 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895c6b98a9751ec9f9d08e0d188c4489bcc8c5505e618ffb4c5bfca349d13722`  
		Last Modified: Fri, 26 Aug 2016 23:15:53 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:latest`

```console
$ docker pull redis@sha256:82bb381627519709f458e1dd2d4ba36d61244368baf186615ab733f02363e211
```

-	Platforms:
	-	linux; amd64

### `redis:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74249490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50e38ce0458ffbd0edb6b340287a38e44263c80abe20739492c8faa0e3281465`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Tue, 02 Aug 2016 00:50:33 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 02 Aug 2016 00:51:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 Aug 2016 00:51:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 02 Aug 2016 00:51:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 03 Aug 2016 21:56:32 GMT
ENV REDIS_VERSION=3.2.3
# Wed, 03 Aug 2016 21:56:32 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Wed, 03 Aug 2016 21:56:33 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Fri, 26 Aug 2016 23:10:50 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 26 Aug 2016 23:10:52 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 26 Aug 2016 23:10:53 GMT
VOLUME [/data]
# Fri, 26 Aug 2016 23:10:54 GMT
WORKDIR /data
# Fri, 26 Aug 2016 23:10:55 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/
# Fri, 26 Aug 2016 23:10:56 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Fri, 26 Aug 2016 23:10:57 GMT
EXPOSE 6379/tcp
# Fri, 26 Aug 2016 23:10:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9b1293eb21aea4ec3a5eec6425d93063b4acf9226142fe426cda37cbd1db17`  
		Last Modified: Tue, 02 Aug 2016 01:04:22 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f306a5223db9535d6373c5afbc063c8b00cdce4000a0ab60bec6f3fa5abc75ca`  
		Last Modified: Tue, 02 Aug 2016 01:04:27 GMT  
		Size: 16.6 MB (16609200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f7595fe6936868f8503042be938038d3ea2f37128a867c7ac6bdbc648b1dfe`  
		Last Modified: Tue, 02 Aug 2016 01:04:20 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5327c259f944cd2b94b849b82ff61fc6dfd796b24628cd12d52a116134008d`  
		Last Modified: Fri, 26 Aug 2016 23:15:55 GMT  
		Size: 5.5 MB (5464209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72669c48ab1fa3501d0a4fd24182f0f2d2f485e51522bbcf4defab92832f47ef`  
		Last Modified: Fri, 26 Aug 2016 23:15:53 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895c6b98a9751ec9f9d08e0d188c4489bcc8c5505e618ffb4c5bfca349d13722`  
		Last Modified: Fri, 26 Aug 2016 23:15:53 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.3-32bit`

```console
$ docker pull redis@sha256:ea70c993397e192ee9612481ccb402a296a352ee5a7f623615c1af92457c8d54
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.3-32bit` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77895629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c239de27c5ddd25df35c71c6ab5456723c01aabefeae7209fcceb13878a02469`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Tue, 02 Aug 2016 00:50:33 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 02 Aug 2016 00:51:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 Aug 2016 00:51:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 02 Aug 2016 00:51:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 03 Aug 2016 21:56:32 GMT
ENV REDIS_VERSION=3.2.3
# Wed, 03 Aug 2016 21:56:32 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Wed, 03 Aug 2016 21:56:33 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Wed, 03 Aug 2016 21:59:46 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 23:13:13 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 26 Aug 2016 23:13:15 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 26 Aug 2016 23:13:16 GMT
VOLUME [/data]
# Fri, 26 Aug 2016 23:13:17 GMT
WORKDIR /data
# Fri, 26 Aug 2016 23:13:19 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/
# Fri, 26 Aug 2016 23:13:20 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Fri, 26 Aug 2016 23:13:21 GMT
EXPOSE 6379/tcp
# Fri, 26 Aug 2016 23:13:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9b1293eb21aea4ec3a5eec6425d93063b4acf9226142fe426cda37cbd1db17`  
		Last Modified: Tue, 02 Aug 2016 01:04:22 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f306a5223db9535d6373c5afbc063c8b00cdce4000a0ab60bec6f3fa5abc75ca`  
		Last Modified: Tue, 02 Aug 2016 01:04:27 GMT  
		Size: 16.6 MB (16609200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f7595fe6936868f8503042be938038d3ea2f37128a867c7ac6bdbc648b1dfe`  
		Last Modified: Tue, 02 Aug 2016 01:04:20 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60055e1b803d4e0b606e60f5410b673204b94b8655abba479a0e6a870ca32b13`  
		Last Modified: Wed, 03 Aug 2016 22:05:25 GMT  
		Size: 4.2 MB (4224167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003140aade9c73dbd3544bdcd7f59b6550bf56be6be917618dc17638d7cf7ed5`  
		Last Modified: Fri, 26 Aug 2016 23:16:51 GMT  
		Size: 4.9 MB (4886181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60543defa714b969a1e662ac24a2667e954a9b3c47d3ebef2a1ef50adee0d5d`  
		Last Modified: Fri, 26 Aug 2016 23:16:48 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b5062d7706ad48f026d5f5ef0f23c5046e8e1f426f3771fc431bb1883b6803`  
		Last Modified: Fri, 26 Aug 2016 23:16:49 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-32bit`

```console
$ docker pull redis@sha256:ea70c993397e192ee9612481ccb402a296a352ee5a7f623615c1af92457c8d54
```

-	Platforms:
	-	linux; amd64

### `redis:3.2-32bit` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77895629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c239de27c5ddd25df35c71c6ab5456723c01aabefeae7209fcceb13878a02469`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Tue, 02 Aug 2016 00:50:33 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 02 Aug 2016 00:51:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 Aug 2016 00:51:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 02 Aug 2016 00:51:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 03 Aug 2016 21:56:32 GMT
ENV REDIS_VERSION=3.2.3
# Wed, 03 Aug 2016 21:56:32 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Wed, 03 Aug 2016 21:56:33 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Wed, 03 Aug 2016 21:59:46 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 23:13:13 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 26 Aug 2016 23:13:15 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 26 Aug 2016 23:13:16 GMT
VOLUME [/data]
# Fri, 26 Aug 2016 23:13:17 GMT
WORKDIR /data
# Fri, 26 Aug 2016 23:13:19 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/
# Fri, 26 Aug 2016 23:13:20 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Fri, 26 Aug 2016 23:13:21 GMT
EXPOSE 6379/tcp
# Fri, 26 Aug 2016 23:13:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9b1293eb21aea4ec3a5eec6425d93063b4acf9226142fe426cda37cbd1db17`  
		Last Modified: Tue, 02 Aug 2016 01:04:22 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f306a5223db9535d6373c5afbc063c8b00cdce4000a0ab60bec6f3fa5abc75ca`  
		Last Modified: Tue, 02 Aug 2016 01:04:27 GMT  
		Size: 16.6 MB (16609200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f7595fe6936868f8503042be938038d3ea2f37128a867c7ac6bdbc648b1dfe`  
		Last Modified: Tue, 02 Aug 2016 01:04:20 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60055e1b803d4e0b606e60f5410b673204b94b8655abba479a0e6a870ca32b13`  
		Last Modified: Wed, 03 Aug 2016 22:05:25 GMT  
		Size: 4.2 MB (4224167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003140aade9c73dbd3544bdcd7f59b6550bf56be6be917618dc17638d7cf7ed5`  
		Last Modified: Fri, 26 Aug 2016 23:16:51 GMT  
		Size: 4.9 MB (4886181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60543defa714b969a1e662ac24a2667e954a9b3c47d3ebef2a1ef50adee0d5d`  
		Last Modified: Fri, 26 Aug 2016 23:16:48 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b5062d7706ad48f026d5f5ef0f23c5046e8e1f426f3771fc431bb1883b6803`  
		Last Modified: Fri, 26 Aug 2016 23:16:49 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-32bit`

```console
$ docker pull redis@sha256:ea70c993397e192ee9612481ccb402a296a352ee5a7f623615c1af92457c8d54
```

-	Platforms:
	-	linux; amd64

### `redis:3-32bit` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77895629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c239de27c5ddd25df35c71c6ab5456723c01aabefeae7209fcceb13878a02469`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Tue, 02 Aug 2016 00:50:33 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 02 Aug 2016 00:51:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 Aug 2016 00:51:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 02 Aug 2016 00:51:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 03 Aug 2016 21:56:32 GMT
ENV REDIS_VERSION=3.2.3
# Wed, 03 Aug 2016 21:56:32 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Wed, 03 Aug 2016 21:56:33 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Wed, 03 Aug 2016 21:59:46 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 23:13:13 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 26 Aug 2016 23:13:15 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 26 Aug 2016 23:13:16 GMT
VOLUME [/data]
# Fri, 26 Aug 2016 23:13:17 GMT
WORKDIR /data
# Fri, 26 Aug 2016 23:13:19 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/
# Fri, 26 Aug 2016 23:13:20 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Fri, 26 Aug 2016 23:13:21 GMT
EXPOSE 6379/tcp
# Fri, 26 Aug 2016 23:13:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9b1293eb21aea4ec3a5eec6425d93063b4acf9226142fe426cda37cbd1db17`  
		Last Modified: Tue, 02 Aug 2016 01:04:22 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f306a5223db9535d6373c5afbc063c8b00cdce4000a0ab60bec6f3fa5abc75ca`  
		Last Modified: Tue, 02 Aug 2016 01:04:27 GMT  
		Size: 16.6 MB (16609200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f7595fe6936868f8503042be938038d3ea2f37128a867c7ac6bdbc648b1dfe`  
		Last Modified: Tue, 02 Aug 2016 01:04:20 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60055e1b803d4e0b606e60f5410b673204b94b8655abba479a0e6a870ca32b13`  
		Last Modified: Wed, 03 Aug 2016 22:05:25 GMT  
		Size: 4.2 MB (4224167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003140aade9c73dbd3544bdcd7f59b6550bf56be6be917618dc17638d7cf7ed5`  
		Last Modified: Fri, 26 Aug 2016 23:16:51 GMT  
		Size: 4.9 MB (4886181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60543defa714b969a1e662ac24a2667e954a9b3c47d3ebef2a1ef50adee0d5d`  
		Last Modified: Fri, 26 Aug 2016 23:16:48 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b5062d7706ad48f026d5f5ef0f23c5046e8e1f426f3771fc431bb1883b6803`  
		Last Modified: Fri, 26 Aug 2016 23:16:49 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:32bit`

```console
$ docker pull redis@sha256:ea70c993397e192ee9612481ccb402a296a352ee5a7f623615c1af92457c8d54
```

-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77895629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c239de27c5ddd25df35c71c6ab5456723c01aabefeae7209fcceb13878a02469`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Tue, 02 Aug 2016 00:50:33 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 02 Aug 2016 00:51:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 Aug 2016 00:51:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 02 Aug 2016 00:51:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 03 Aug 2016 21:56:32 GMT
ENV REDIS_VERSION=3.2.3
# Wed, 03 Aug 2016 21:56:32 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Wed, 03 Aug 2016 21:56:33 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Wed, 03 Aug 2016 21:59:46 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 23:13:13 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 26 Aug 2016 23:13:15 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 26 Aug 2016 23:13:16 GMT
VOLUME [/data]
# Fri, 26 Aug 2016 23:13:17 GMT
WORKDIR /data
# Fri, 26 Aug 2016 23:13:19 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/
# Fri, 26 Aug 2016 23:13:20 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Fri, 26 Aug 2016 23:13:21 GMT
EXPOSE 6379/tcp
# Fri, 26 Aug 2016 23:13:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9b1293eb21aea4ec3a5eec6425d93063b4acf9226142fe426cda37cbd1db17`  
		Last Modified: Tue, 02 Aug 2016 01:04:22 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f306a5223db9535d6373c5afbc063c8b00cdce4000a0ab60bec6f3fa5abc75ca`  
		Last Modified: Tue, 02 Aug 2016 01:04:27 GMT  
		Size: 16.6 MB (16609200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f7595fe6936868f8503042be938038d3ea2f37128a867c7ac6bdbc648b1dfe`  
		Last Modified: Tue, 02 Aug 2016 01:04:20 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60055e1b803d4e0b606e60f5410b673204b94b8655abba479a0e6a870ca32b13`  
		Last Modified: Wed, 03 Aug 2016 22:05:25 GMT  
		Size: 4.2 MB (4224167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003140aade9c73dbd3544bdcd7f59b6550bf56be6be917618dc17638d7cf7ed5`  
		Last Modified: Fri, 26 Aug 2016 23:16:51 GMT  
		Size: 4.9 MB (4886181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60543defa714b969a1e662ac24a2667e954a9b3c47d3ebef2a1ef50adee0d5d`  
		Last Modified: Fri, 26 Aug 2016 23:16:48 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b5062d7706ad48f026d5f5ef0f23c5046e8e1f426f3771fc431bb1883b6803`  
		Last Modified: Fri, 26 Aug 2016 23:16:49 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.3-alpine`

```console
$ docker pull redis@sha256:5d27122f989df98e8fdc599eab79b2d9b54ef3e1412ae50dfa00382a62ca46c1
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.3-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8015630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bd8336e208d352965da19f3de559c166f19447fd48f2416d0b6b971a22d6a6f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 21:59:03 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 23 Jun 2016 21:59:06 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 03 Aug 2016 22:02:17 GMT
ENV REDIS_VERSION=3.2.3
# Wed, 03 Aug 2016 22:02:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Wed, 03 Aug 2016 22:02:18 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Fri, 26 Aug 2016 23:14:18 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Fri, 26 Aug 2016 23:14:20 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 26 Aug 2016 23:14:21 GMT
VOLUME [/data]
# Fri, 26 Aug 2016 23:14:22 GMT
WORKDIR /data
# Fri, 26 Aug 2016 23:14:23 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/
# Fri, 26 Aug 2016 23:14:24 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Fri, 26 Aug 2016 23:14:25 GMT
EXPOSE 6379/tcp
# Fri, 26 Aug 2016 23:14:26 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccbb6980b59cefac1cb385fee9337a42e69c0f2af7b0446e8d8bdb3e7660748`  
		Last Modified: Thu, 23 Jun 2016 22:00:20 GMT  
		Size: 31.5 KB (31496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8c804c16443f8c8b05d1a0b9fc07ac6b68e8225368e6382f8c812d306022c8`  
		Last Modified: Thu, 23 Jun 2016 22:00:19 GMT  
		Size: 7.9 KB (7925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf53f3b72037d93b664418109592db79f2f5a2bcccedec08b569544db17f36f`  
		Last Modified: Fri, 26 Aug 2016 23:17:51 GMT  
		Size: 5.7 MB (5665436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7868ab9d355986c007ff03a56d44088730f69328d53f80284fb2b8f15d23c35`  
		Last Modified: Fri, 26 Aug 2016 23:17:48 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afbc0b182da2f251d0ae7fa6421a9c013f977340022c1453401dfda254f7504f`  
		Last Modified: Fri, 26 Aug 2016 23:17:48 GMT  
		Size: 389.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-alpine`

```console
$ docker pull redis@sha256:5d27122f989df98e8fdc599eab79b2d9b54ef3e1412ae50dfa00382a62ca46c1
```

-	Platforms:
	-	linux; amd64

### `redis:3.2-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8015630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bd8336e208d352965da19f3de559c166f19447fd48f2416d0b6b971a22d6a6f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 21:59:03 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 23 Jun 2016 21:59:06 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 03 Aug 2016 22:02:17 GMT
ENV REDIS_VERSION=3.2.3
# Wed, 03 Aug 2016 22:02:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Wed, 03 Aug 2016 22:02:18 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Fri, 26 Aug 2016 23:14:18 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Fri, 26 Aug 2016 23:14:20 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 26 Aug 2016 23:14:21 GMT
VOLUME [/data]
# Fri, 26 Aug 2016 23:14:22 GMT
WORKDIR /data
# Fri, 26 Aug 2016 23:14:23 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/
# Fri, 26 Aug 2016 23:14:24 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Fri, 26 Aug 2016 23:14:25 GMT
EXPOSE 6379/tcp
# Fri, 26 Aug 2016 23:14:26 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccbb6980b59cefac1cb385fee9337a42e69c0f2af7b0446e8d8bdb3e7660748`  
		Last Modified: Thu, 23 Jun 2016 22:00:20 GMT  
		Size: 31.5 KB (31496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8c804c16443f8c8b05d1a0b9fc07ac6b68e8225368e6382f8c812d306022c8`  
		Last Modified: Thu, 23 Jun 2016 22:00:19 GMT  
		Size: 7.9 KB (7925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf53f3b72037d93b664418109592db79f2f5a2bcccedec08b569544db17f36f`  
		Last Modified: Fri, 26 Aug 2016 23:17:51 GMT  
		Size: 5.7 MB (5665436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7868ab9d355986c007ff03a56d44088730f69328d53f80284fb2b8f15d23c35`  
		Last Modified: Fri, 26 Aug 2016 23:17:48 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afbc0b182da2f251d0ae7fa6421a9c013f977340022c1453401dfda254f7504f`  
		Last Modified: Fri, 26 Aug 2016 23:17:48 GMT  
		Size: 389.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-alpine`

```console
$ docker pull redis@sha256:5d27122f989df98e8fdc599eab79b2d9b54ef3e1412ae50dfa00382a62ca46c1
```

-	Platforms:
	-	linux; amd64

### `redis:3-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8015630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bd8336e208d352965da19f3de559c166f19447fd48f2416d0b6b971a22d6a6f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 21:59:03 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 23 Jun 2016 21:59:06 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 03 Aug 2016 22:02:17 GMT
ENV REDIS_VERSION=3.2.3
# Wed, 03 Aug 2016 22:02:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Wed, 03 Aug 2016 22:02:18 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Fri, 26 Aug 2016 23:14:18 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Fri, 26 Aug 2016 23:14:20 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 26 Aug 2016 23:14:21 GMT
VOLUME [/data]
# Fri, 26 Aug 2016 23:14:22 GMT
WORKDIR /data
# Fri, 26 Aug 2016 23:14:23 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/
# Fri, 26 Aug 2016 23:14:24 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Fri, 26 Aug 2016 23:14:25 GMT
EXPOSE 6379/tcp
# Fri, 26 Aug 2016 23:14:26 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccbb6980b59cefac1cb385fee9337a42e69c0f2af7b0446e8d8bdb3e7660748`  
		Last Modified: Thu, 23 Jun 2016 22:00:20 GMT  
		Size: 31.5 KB (31496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8c804c16443f8c8b05d1a0b9fc07ac6b68e8225368e6382f8c812d306022c8`  
		Last Modified: Thu, 23 Jun 2016 22:00:19 GMT  
		Size: 7.9 KB (7925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf53f3b72037d93b664418109592db79f2f5a2bcccedec08b569544db17f36f`  
		Last Modified: Fri, 26 Aug 2016 23:17:51 GMT  
		Size: 5.7 MB (5665436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7868ab9d355986c007ff03a56d44088730f69328d53f80284fb2b8f15d23c35`  
		Last Modified: Fri, 26 Aug 2016 23:17:48 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afbc0b182da2f251d0ae7fa6421a9c013f977340022c1453401dfda254f7504f`  
		Last Modified: Fri, 26 Aug 2016 23:17:48 GMT  
		Size: 389.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine`

```console
$ docker pull redis@sha256:5d27122f989df98e8fdc599eab79b2d9b54ef3e1412ae50dfa00382a62ca46c1
```

-	Platforms:
	-	linux; amd64

### `redis:alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8015630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bd8336e208d352965da19f3de559c166f19447fd48f2416d0b6b971a22d6a6f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 21:59:03 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 23 Jun 2016 21:59:06 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 03 Aug 2016 22:02:17 GMT
ENV REDIS_VERSION=3.2.3
# Wed, 03 Aug 2016 22:02:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Wed, 03 Aug 2016 22:02:18 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Fri, 26 Aug 2016 23:14:18 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Fri, 26 Aug 2016 23:14:20 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 26 Aug 2016 23:14:21 GMT
VOLUME [/data]
# Fri, 26 Aug 2016 23:14:22 GMT
WORKDIR /data
# Fri, 26 Aug 2016 23:14:23 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/
# Fri, 26 Aug 2016 23:14:24 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Fri, 26 Aug 2016 23:14:25 GMT
EXPOSE 6379/tcp
# Fri, 26 Aug 2016 23:14:26 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccbb6980b59cefac1cb385fee9337a42e69c0f2af7b0446e8d8bdb3e7660748`  
		Last Modified: Thu, 23 Jun 2016 22:00:20 GMT  
		Size: 31.5 KB (31496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8c804c16443f8c8b05d1a0b9fc07ac6b68e8225368e6382f8c812d306022c8`  
		Last Modified: Thu, 23 Jun 2016 22:00:19 GMT  
		Size: 7.9 KB (7925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf53f3b72037d93b664418109592db79f2f5a2bcccedec08b569544db17f36f`  
		Last Modified: Fri, 26 Aug 2016 23:17:51 GMT  
		Size: 5.7 MB (5665436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7868ab9d355986c007ff03a56d44088730f69328d53f80284fb2b8f15d23c35`  
		Last Modified: Fri, 26 Aug 2016 23:17:48 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afbc0b182da2f251d0ae7fa6421a9c013f977340022c1453401dfda254f7504f`  
		Last Modified: Fri, 26 Aug 2016 23:17:48 GMT  
		Size: 389.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
