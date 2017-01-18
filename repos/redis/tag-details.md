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
$ docker pull redis@sha256:a1ccc6ff4e17e7e9ec0ba25dc9d99ca979171f4ef25d842baa835960b82322ae
```

-	Platforms:
	-	linux; amd64

### `redis:3.0.7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.8 MB (71771080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e50ce77dc4a7c715d78db93bf0edccabeb59279b575ae67d763915d803f2f343`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:05:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 17 Jan 2017 20:05:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:05:32 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 20:05:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 17 Jan 2017 20:07:34 GMT
ENV REDIS_VERSION=3.0.7
# Tue, 17 Jan 2017 20:07:35 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Tue, 17 Jan 2017 20:07:35 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Tue, 17 Jan 2017 20:08:18 GMT
RUN buildDeps='gcc libc6-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jan 2017 20:08:19 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jan 2017 20:08:19 GMT
VOLUME [/data]
# Tue, 17 Jan 2017 20:08:19 GMT
WORKDIR /data
# Tue, 17 Jan 2017 20:08:20 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jan 2017 20:08:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jan 2017 20:08:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 20:08:21 GMT
EXPOSE 6379/tcp
# Tue, 17 Jan 2017 20:08:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996f41e871db11ed71fa871e4a71e6fb918289a9c3f2500f122d901ac8566fc7`  
		Last Modified: Wed, 18 Jan 2017 07:13:42 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40484248761f567a45443550fce54c4da469739890218490c717800e2dae94e`  
		Last Modified: Wed, 18 Jan 2017 07:13:46 GMT  
		Size: 16.6 MB (16617736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97af2bf2ee7313c7f635afe41a352863eef2135274d6df5e528466cb02c4455`  
		Last Modified: Wed, 18 Jan 2017 07:13:39 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63553a7d60a5a8163f70c40176b4e92023d0962c0ac10849c2dcc657313b40b9`  
		Last Modified: Wed, 18 Jan 2017 07:13:40 GMT  
		Size: 3.0 MB (2981553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f16f5fddbf08e0fedae46406db40083b96d7be6518c47b4454cb08c8d6c524`  
		Last Modified: Wed, 18 Jan 2017 07:13:39 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afcfb39795c7660598255ef0c9e57978844333d48ac63f06a9c93ca10852d97e`  
		Last Modified: Wed, 18 Jan 2017 07:13:39 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8173a3181306778dbda91cc85515c1e485d0f573bbe5b2c8755d7bcc4dfcf229`  
		Last Modified: Wed, 18 Jan 2017 07:13:39 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0`

```console
$ docker pull redis@sha256:a1ccc6ff4e17e7e9ec0ba25dc9d99ca979171f4ef25d842baa835960b82322ae
```

-	Platforms:
	-	linux; amd64

### `redis:3.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.8 MB (71771080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e50ce77dc4a7c715d78db93bf0edccabeb59279b575ae67d763915d803f2f343`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:05:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 17 Jan 2017 20:05:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:05:32 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 20:05:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 17 Jan 2017 20:07:34 GMT
ENV REDIS_VERSION=3.0.7
# Tue, 17 Jan 2017 20:07:35 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Tue, 17 Jan 2017 20:07:35 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Tue, 17 Jan 2017 20:08:18 GMT
RUN buildDeps='gcc libc6-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jan 2017 20:08:19 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jan 2017 20:08:19 GMT
VOLUME [/data]
# Tue, 17 Jan 2017 20:08:19 GMT
WORKDIR /data
# Tue, 17 Jan 2017 20:08:20 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jan 2017 20:08:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jan 2017 20:08:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 20:08:21 GMT
EXPOSE 6379/tcp
# Tue, 17 Jan 2017 20:08:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996f41e871db11ed71fa871e4a71e6fb918289a9c3f2500f122d901ac8566fc7`  
		Last Modified: Wed, 18 Jan 2017 07:13:42 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40484248761f567a45443550fce54c4da469739890218490c717800e2dae94e`  
		Last Modified: Wed, 18 Jan 2017 07:13:46 GMT  
		Size: 16.6 MB (16617736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97af2bf2ee7313c7f635afe41a352863eef2135274d6df5e528466cb02c4455`  
		Last Modified: Wed, 18 Jan 2017 07:13:39 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63553a7d60a5a8163f70c40176b4e92023d0962c0ac10849c2dcc657313b40b9`  
		Last Modified: Wed, 18 Jan 2017 07:13:40 GMT  
		Size: 3.0 MB (2981553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f16f5fddbf08e0fedae46406db40083b96d7be6518c47b4454cb08c8d6c524`  
		Last Modified: Wed, 18 Jan 2017 07:13:39 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afcfb39795c7660598255ef0c9e57978844333d48ac63f06a9c93ca10852d97e`  
		Last Modified: Wed, 18 Jan 2017 07:13:39 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8173a3181306778dbda91cc85515c1e485d0f573bbe5b2c8755d7bcc4dfcf229`  
		Last Modified: Wed, 18 Jan 2017 07:13:39 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0.7-32bit`

```console
$ docker pull redis@sha256:592a1459682d14eda5769ebcac8a53262d5060ef615c26da5e003fb19d4a297d
```

-	Platforms:
	-	linux; amd64

### `redis:3.0.7-32bit` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.7 MB (75683063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea5c3e5de4f8eddeafac1e7843e228aadebf817beecc369a337855985292d1d3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:05:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 17 Jan 2017 20:05:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:05:32 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 20:05:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 17 Jan 2017 20:07:34 GMT
ENV REDIS_VERSION=3.0.7
# Tue, 17 Jan 2017 20:07:35 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Tue, 17 Jan 2017 20:07:35 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Tue, 17 Jan 2017 20:08:32 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:09:22 GMT
RUN buildDeps='gcc gcc-multilib libc6-dev-i386 make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jan 2017 20:09:23 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jan 2017 20:09:23 GMT
VOLUME [/data]
# Tue, 17 Jan 2017 20:09:24 GMT
WORKDIR /data
# Tue, 17 Jan 2017 20:09:24 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jan 2017 20:09:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jan 2017 20:09:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 20:09:26 GMT
EXPOSE 6379/tcp
# Tue, 17 Jan 2017 20:09:26 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996f41e871db11ed71fa871e4a71e6fb918289a9c3f2500f122d901ac8566fc7`  
		Last Modified: Wed, 18 Jan 2017 07:13:42 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40484248761f567a45443550fce54c4da469739890218490c717800e2dae94e`  
		Last Modified: Wed, 18 Jan 2017 07:13:46 GMT  
		Size: 16.6 MB (16617736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97af2bf2ee7313c7f635afe41a352863eef2135274d6df5e528466cb02c4455`  
		Last Modified: Wed, 18 Jan 2017 07:13:39 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ecdc6d0a91ed40caa15838e23c37d0e6178a4fea5600e4827c7be2ee6f37d5`  
		Last Modified: Wed, 18 Jan 2017 07:14:22 GMT  
		Size: 4.2 MB (4224147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:369c759a00301c621bba98962f72730860ccf177e4b59e37318712b0caca56d9`  
		Last Modified: Wed, 18 Jan 2017 07:14:22 GMT  
		Size: 2.7 MB (2669389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8077fdee4c8c04b308b9e844f1e434fd4d7d901dc24edecb56da948770c2553d`  
		Last Modified: Wed, 18 Jan 2017 07:14:21 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72932502a671a4186eade6d8908fed61adc03df01d8d568acf748268bb05bec6`  
		Last Modified: Wed, 18 Jan 2017 07:14:21 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3151a63dea9d7365996f5ea26d3c6e6e860a1a1ef77201b1c7136a40912eaecc`  
		Last Modified: Wed, 18 Jan 2017 07:14:21 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0-32bit`

```console
$ docker pull redis@sha256:592a1459682d14eda5769ebcac8a53262d5060ef615c26da5e003fb19d4a297d
```

-	Platforms:
	-	linux; amd64

### `redis:3.0-32bit` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.7 MB (75683063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea5c3e5de4f8eddeafac1e7843e228aadebf817beecc369a337855985292d1d3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:05:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 17 Jan 2017 20:05:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:05:32 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 20:05:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 17 Jan 2017 20:07:34 GMT
ENV REDIS_VERSION=3.0.7
# Tue, 17 Jan 2017 20:07:35 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Tue, 17 Jan 2017 20:07:35 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Tue, 17 Jan 2017 20:08:32 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:09:22 GMT
RUN buildDeps='gcc gcc-multilib libc6-dev-i386 make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jan 2017 20:09:23 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jan 2017 20:09:23 GMT
VOLUME [/data]
# Tue, 17 Jan 2017 20:09:24 GMT
WORKDIR /data
# Tue, 17 Jan 2017 20:09:24 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jan 2017 20:09:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jan 2017 20:09:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 20:09:26 GMT
EXPOSE 6379/tcp
# Tue, 17 Jan 2017 20:09:26 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996f41e871db11ed71fa871e4a71e6fb918289a9c3f2500f122d901ac8566fc7`  
		Last Modified: Wed, 18 Jan 2017 07:13:42 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40484248761f567a45443550fce54c4da469739890218490c717800e2dae94e`  
		Last Modified: Wed, 18 Jan 2017 07:13:46 GMT  
		Size: 16.6 MB (16617736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97af2bf2ee7313c7f635afe41a352863eef2135274d6df5e528466cb02c4455`  
		Last Modified: Wed, 18 Jan 2017 07:13:39 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ecdc6d0a91ed40caa15838e23c37d0e6178a4fea5600e4827c7be2ee6f37d5`  
		Last Modified: Wed, 18 Jan 2017 07:14:22 GMT  
		Size: 4.2 MB (4224147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:369c759a00301c621bba98962f72730860ccf177e4b59e37318712b0caca56d9`  
		Last Modified: Wed, 18 Jan 2017 07:14:22 GMT  
		Size: 2.7 MB (2669389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8077fdee4c8c04b308b9e844f1e434fd4d7d901dc24edecb56da948770c2553d`  
		Last Modified: Wed, 18 Jan 2017 07:14:21 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72932502a671a4186eade6d8908fed61adc03df01d8d568acf748268bb05bec6`  
		Last Modified: Wed, 18 Jan 2017 07:14:21 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3151a63dea9d7365996f5ea26d3c6e6e860a1a1ef77201b1c7136a40912eaecc`  
		Last Modified: Wed, 18 Jan 2017 07:14:21 GMT  
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
$ docker pull redis@sha256:a027a470aa2b9b41cc2539847a97b8a14794ebd0a4c7c5d64e390df6bde56c73
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.3 MB (74258315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45c3ea2cecac5fef8c3838cc4b58666657df8541e14437964c8b88f355f372c8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:05:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 17 Jan 2017 20:05:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:05:32 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 20:05:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 17 Jan 2017 20:05:37 GMT
ENV REDIS_VERSION=3.2.6
# Tue, 17 Jan 2017 20:05:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.6.tar.gz
# Tue, 17 Jan 2017 20:05:38 GMT
ENV REDIS_DOWNLOAD_SHA1=0c7bc5c751bdbc6fabed178db9cdbdd948915d1b
# Tue, 17 Jan 2017 20:06:26 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jan 2017 20:06:27 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jan 2017 20:06:27 GMT
VOLUME [/data]
# Tue, 17 Jan 2017 20:06:27 GMT
WORKDIR /data
# Tue, 17 Jan 2017 20:06:28 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jan 2017 20:06:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 20:06:28 GMT
EXPOSE 6379/tcp
# Tue, 17 Jan 2017 20:06:29 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996f41e871db11ed71fa871e4a71e6fb918289a9c3f2500f122d901ac8566fc7`  
		Last Modified: Wed, 18 Jan 2017 07:13:42 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40484248761f567a45443550fce54c4da469739890218490c717800e2dae94e`  
		Last Modified: Wed, 18 Jan 2017 07:13:46 GMT  
		Size: 16.6 MB (16617736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97af2bf2ee7313c7f635afe41a352863eef2135274d6df5e528466cb02c4455`  
		Last Modified: Wed, 18 Jan 2017 07:13:39 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010c454d55e53059beaba4044116ea4636f8dd8181e975d893931c7e7204fffa`  
		Last Modified: Wed, 18 Jan 2017 07:14:58 GMT  
		Size: 5.5 MB (5468907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142d4cb3dc08464d344852858db7aa6a7f5533dfecfbb5f58863ba7f99133777`  
		Last Modified: Wed, 18 Jan 2017 07:14:56 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6666ac0e527e997107ac2bd0adedf7043f475e33363263422e915adba55e278e`  
		Last Modified: Wed, 18 Jan 2017 07:14:56 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2`

```console
$ docker pull redis@sha256:a027a470aa2b9b41cc2539847a97b8a14794ebd0a4c7c5d64e390df6bde56c73
```

-	Platforms:
	-	linux; amd64

### `redis:3.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.3 MB (74258315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45c3ea2cecac5fef8c3838cc4b58666657df8541e14437964c8b88f355f372c8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:05:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 17 Jan 2017 20:05:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:05:32 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 20:05:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 17 Jan 2017 20:05:37 GMT
ENV REDIS_VERSION=3.2.6
# Tue, 17 Jan 2017 20:05:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.6.tar.gz
# Tue, 17 Jan 2017 20:05:38 GMT
ENV REDIS_DOWNLOAD_SHA1=0c7bc5c751bdbc6fabed178db9cdbdd948915d1b
# Tue, 17 Jan 2017 20:06:26 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jan 2017 20:06:27 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jan 2017 20:06:27 GMT
VOLUME [/data]
# Tue, 17 Jan 2017 20:06:27 GMT
WORKDIR /data
# Tue, 17 Jan 2017 20:06:28 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jan 2017 20:06:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 20:06:28 GMT
EXPOSE 6379/tcp
# Tue, 17 Jan 2017 20:06:29 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996f41e871db11ed71fa871e4a71e6fb918289a9c3f2500f122d901ac8566fc7`  
		Last Modified: Wed, 18 Jan 2017 07:13:42 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40484248761f567a45443550fce54c4da469739890218490c717800e2dae94e`  
		Last Modified: Wed, 18 Jan 2017 07:13:46 GMT  
		Size: 16.6 MB (16617736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97af2bf2ee7313c7f635afe41a352863eef2135274d6df5e528466cb02c4455`  
		Last Modified: Wed, 18 Jan 2017 07:13:39 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010c454d55e53059beaba4044116ea4636f8dd8181e975d893931c7e7204fffa`  
		Last Modified: Wed, 18 Jan 2017 07:14:58 GMT  
		Size: 5.5 MB (5468907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142d4cb3dc08464d344852858db7aa6a7f5533dfecfbb5f58863ba7f99133777`  
		Last Modified: Wed, 18 Jan 2017 07:14:56 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6666ac0e527e997107ac2bd0adedf7043f475e33363263422e915adba55e278e`  
		Last Modified: Wed, 18 Jan 2017 07:14:56 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3`

```console
$ docker pull redis@sha256:a027a470aa2b9b41cc2539847a97b8a14794ebd0a4c7c5d64e390df6bde56c73
```

-	Platforms:
	-	linux; amd64

### `redis:3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.3 MB (74258315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45c3ea2cecac5fef8c3838cc4b58666657df8541e14437964c8b88f355f372c8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:05:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 17 Jan 2017 20:05:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:05:32 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 20:05:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 17 Jan 2017 20:05:37 GMT
ENV REDIS_VERSION=3.2.6
# Tue, 17 Jan 2017 20:05:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.6.tar.gz
# Tue, 17 Jan 2017 20:05:38 GMT
ENV REDIS_DOWNLOAD_SHA1=0c7bc5c751bdbc6fabed178db9cdbdd948915d1b
# Tue, 17 Jan 2017 20:06:26 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jan 2017 20:06:27 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jan 2017 20:06:27 GMT
VOLUME [/data]
# Tue, 17 Jan 2017 20:06:27 GMT
WORKDIR /data
# Tue, 17 Jan 2017 20:06:28 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jan 2017 20:06:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 20:06:28 GMT
EXPOSE 6379/tcp
# Tue, 17 Jan 2017 20:06:29 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996f41e871db11ed71fa871e4a71e6fb918289a9c3f2500f122d901ac8566fc7`  
		Last Modified: Wed, 18 Jan 2017 07:13:42 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40484248761f567a45443550fce54c4da469739890218490c717800e2dae94e`  
		Last Modified: Wed, 18 Jan 2017 07:13:46 GMT  
		Size: 16.6 MB (16617736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97af2bf2ee7313c7f635afe41a352863eef2135274d6df5e528466cb02c4455`  
		Last Modified: Wed, 18 Jan 2017 07:13:39 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010c454d55e53059beaba4044116ea4636f8dd8181e975d893931c7e7204fffa`  
		Last Modified: Wed, 18 Jan 2017 07:14:58 GMT  
		Size: 5.5 MB (5468907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142d4cb3dc08464d344852858db7aa6a7f5533dfecfbb5f58863ba7f99133777`  
		Last Modified: Wed, 18 Jan 2017 07:14:56 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6666ac0e527e997107ac2bd0adedf7043f475e33363263422e915adba55e278e`  
		Last Modified: Wed, 18 Jan 2017 07:14:56 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:latest`

```console
$ docker pull redis@sha256:a027a470aa2b9b41cc2539847a97b8a14794ebd0a4c7c5d64e390df6bde56c73
```

-	Platforms:
	-	linux; amd64

### `redis:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.3 MB (74258315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45c3ea2cecac5fef8c3838cc4b58666657df8541e14437964c8b88f355f372c8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:05:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 17 Jan 2017 20:05:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:05:32 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 20:05:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 17 Jan 2017 20:05:37 GMT
ENV REDIS_VERSION=3.2.6
# Tue, 17 Jan 2017 20:05:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.6.tar.gz
# Tue, 17 Jan 2017 20:05:38 GMT
ENV REDIS_DOWNLOAD_SHA1=0c7bc5c751bdbc6fabed178db9cdbdd948915d1b
# Tue, 17 Jan 2017 20:06:26 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jan 2017 20:06:27 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jan 2017 20:06:27 GMT
VOLUME [/data]
# Tue, 17 Jan 2017 20:06:27 GMT
WORKDIR /data
# Tue, 17 Jan 2017 20:06:28 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jan 2017 20:06:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 20:06:28 GMT
EXPOSE 6379/tcp
# Tue, 17 Jan 2017 20:06:29 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996f41e871db11ed71fa871e4a71e6fb918289a9c3f2500f122d901ac8566fc7`  
		Last Modified: Wed, 18 Jan 2017 07:13:42 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40484248761f567a45443550fce54c4da469739890218490c717800e2dae94e`  
		Last Modified: Wed, 18 Jan 2017 07:13:46 GMT  
		Size: 16.6 MB (16617736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97af2bf2ee7313c7f635afe41a352863eef2135274d6df5e528466cb02c4455`  
		Last Modified: Wed, 18 Jan 2017 07:13:39 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010c454d55e53059beaba4044116ea4636f8dd8181e975d893931c7e7204fffa`  
		Last Modified: Wed, 18 Jan 2017 07:14:58 GMT  
		Size: 5.5 MB (5468907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142d4cb3dc08464d344852858db7aa6a7f5533dfecfbb5f58863ba7f99133777`  
		Last Modified: Wed, 18 Jan 2017 07:14:56 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6666ac0e527e997107ac2bd0adedf7043f475e33363263422e915adba55e278e`  
		Last Modified: Wed, 18 Jan 2017 07:14:56 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.6-32bit`

```console
$ docker pull redis@sha256:96dbc298af394d8b1a1eda570c01be9e2cab64e4feef632cae104e0ae44b483b
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.6-32bit` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77906097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b93219bcf4fd1465d07111eef36bb92a3db04fe935e4631f6a8e4ef7c43e6bb7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:05:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 17 Jan 2017 20:05:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:05:32 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 20:05:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 17 Jan 2017 20:05:37 GMT
ENV REDIS_VERSION=3.2.6
# Tue, 17 Jan 2017 20:05:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.6.tar.gz
# Tue, 17 Jan 2017 20:05:38 GMT
ENV REDIS_DOWNLOAD_SHA1=0c7bc5c751bdbc6fabed178db9cdbdd948915d1b
# Tue, 17 Jan 2017 20:06:35 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:07:31 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jan 2017 20:07:32 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jan 2017 20:07:32 GMT
VOLUME [/data]
# Tue, 17 Jan 2017 20:07:32 GMT
WORKDIR /data
# Tue, 17 Jan 2017 20:07:33 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jan 2017 20:07:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 20:07:33 GMT
EXPOSE 6379/tcp
# Tue, 17 Jan 2017 20:07:34 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996f41e871db11ed71fa871e4a71e6fb918289a9c3f2500f122d901ac8566fc7`  
		Last Modified: Wed, 18 Jan 2017 07:13:42 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40484248761f567a45443550fce54c4da469739890218490c717800e2dae94e`  
		Last Modified: Wed, 18 Jan 2017 07:13:46 GMT  
		Size: 16.6 MB (16617736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97af2bf2ee7313c7f635afe41a352863eef2135274d6df5e528466cb02c4455`  
		Last Modified: Wed, 18 Jan 2017 07:13:39 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c6a46c002eda0a9eb36b97a5a06a12d9f420eb8096ed04793555631ece8831d`  
		Last Modified: Wed, 18 Jan 2017 07:16:06 GMT  
		Size: 4.2 MB (4224152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac0bb15b3ca183e23b5ff568bf19644036a0e3900c4158303cc627d86906fc82`  
		Last Modified: Wed, 18 Jan 2017 07:16:06 GMT  
		Size: 4.9 MB (4892539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a471fd4f05f5ce204daca9210cdea411b1b0a97607856df5ac483ed5804cc6c2`  
		Last Modified: Wed, 18 Jan 2017 07:16:04 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af73e8e3db6932a23a37368b00ddbb3127220948ec60c50439e711819c66c77`  
		Last Modified: Wed, 18 Jan 2017 07:16:07 GMT  
		Size: 393.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-32bit`

```console
$ docker pull redis@sha256:96dbc298af394d8b1a1eda570c01be9e2cab64e4feef632cae104e0ae44b483b
```

-	Platforms:
	-	linux; amd64

### `redis:3.2-32bit` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77906097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b93219bcf4fd1465d07111eef36bb92a3db04fe935e4631f6a8e4ef7c43e6bb7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:05:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 17 Jan 2017 20:05:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:05:32 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 20:05:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 17 Jan 2017 20:05:37 GMT
ENV REDIS_VERSION=3.2.6
# Tue, 17 Jan 2017 20:05:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.6.tar.gz
# Tue, 17 Jan 2017 20:05:38 GMT
ENV REDIS_DOWNLOAD_SHA1=0c7bc5c751bdbc6fabed178db9cdbdd948915d1b
# Tue, 17 Jan 2017 20:06:35 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:07:31 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jan 2017 20:07:32 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jan 2017 20:07:32 GMT
VOLUME [/data]
# Tue, 17 Jan 2017 20:07:32 GMT
WORKDIR /data
# Tue, 17 Jan 2017 20:07:33 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jan 2017 20:07:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 20:07:33 GMT
EXPOSE 6379/tcp
# Tue, 17 Jan 2017 20:07:34 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996f41e871db11ed71fa871e4a71e6fb918289a9c3f2500f122d901ac8566fc7`  
		Last Modified: Wed, 18 Jan 2017 07:13:42 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40484248761f567a45443550fce54c4da469739890218490c717800e2dae94e`  
		Last Modified: Wed, 18 Jan 2017 07:13:46 GMT  
		Size: 16.6 MB (16617736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97af2bf2ee7313c7f635afe41a352863eef2135274d6df5e528466cb02c4455`  
		Last Modified: Wed, 18 Jan 2017 07:13:39 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c6a46c002eda0a9eb36b97a5a06a12d9f420eb8096ed04793555631ece8831d`  
		Last Modified: Wed, 18 Jan 2017 07:16:06 GMT  
		Size: 4.2 MB (4224152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac0bb15b3ca183e23b5ff568bf19644036a0e3900c4158303cc627d86906fc82`  
		Last Modified: Wed, 18 Jan 2017 07:16:06 GMT  
		Size: 4.9 MB (4892539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a471fd4f05f5ce204daca9210cdea411b1b0a97607856df5ac483ed5804cc6c2`  
		Last Modified: Wed, 18 Jan 2017 07:16:04 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af73e8e3db6932a23a37368b00ddbb3127220948ec60c50439e711819c66c77`  
		Last Modified: Wed, 18 Jan 2017 07:16:07 GMT  
		Size: 393.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-32bit`

```console
$ docker pull redis@sha256:96dbc298af394d8b1a1eda570c01be9e2cab64e4feef632cae104e0ae44b483b
```

-	Platforms:
	-	linux; amd64

### `redis:3-32bit` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77906097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b93219bcf4fd1465d07111eef36bb92a3db04fe935e4631f6a8e4ef7c43e6bb7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:05:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 17 Jan 2017 20:05:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:05:32 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 20:05:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 17 Jan 2017 20:05:37 GMT
ENV REDIS_VERSION=3.2.6
# Tue, 17 Jan 2017 20:05:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.6.tar.gz
# Tue, 17 Jan 2017 20:05:38 GMT
ENV REDIS_DOWNLOAD_SHA1=0c7bc5c751bdbc6fabed178db9cdbdd948915d1b
# Tue, 17 Jan 2017 20:06:35 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:07:31 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jan 2017 20:07:32 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jan 2017 20:07:32 GMT
VOLUME [/data]
# Tue, 17 Jan 2017 20:07:32 GMT
WORKDIR /data
# Tue, 17 Jan 2017 20:07:33 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jan 2017 20:07:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 20:07:33 GMT
EXPOSE 6379/tcp
# Tue, 17 Jan 2017 20:07:34 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996f41e871db11ed71fa871e4a71e6fb918289a9c3f2500f122d901ac8566fc7`  
		Last Modified: Wed, 18 Jan 2017 07:13:42 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40484248761f567a45443550fce54c4da469739890218490c717800e2dae94e`  
		Last Modified: Wed, 18 Jan 2017 07:13:46 GMT  
		Size: 16.6 MB (16617736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97af2bf2ee7313c7f635afe41a352863eef2135274d6df5e528466cb02c4455`  
		Last Modified: Wed, 18 Jan 2017 07:13:39 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c6a46c002eda0a9eb36b97a5a06a12d9f420eb8096ed04793555631ece8831d`  
		Last Modified: Wed, 18 Jan 2017 07:16:06 GMT  
		Size: 4.2 MB (4224152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac0bb15b3ca183e23b5ff568bf19644036a0e3900c4158303cc627d86906fc82`  
		Last Modified: Wed, 18 Jan 2017 07:16:06 GMT  
		Size: 4.9 MB (4892539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a471fd4f05f5ce204daca9210cdea411b1b0a97607856df5ac483ed5804cc6c2`  
		Last Modified: Wed, 18 Jan 2017 07:16:04 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af73e8e3db6932a23a37368b00ddbb3127220948ec60c50439e711819c66c77`  
		Last Modified: Wed, 18 Jan 2017 07:16:07 GMT  
		Size: 393.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:32bit`

```console
$ docker pull redis@sha256:96dbc298af394d8b1a1eda570c01be9e2cab64e4feef632cae104e0ae44b483b
```

-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77906097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b93219bcf4fd1465d07111eef36bb92a3db04fe935e4631f6a8e4ef7c43e6bb7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:05:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 17 Jan 2017 20:05:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:05:32 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 20:05:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 17 Jan 2017 20:05:37 GMT
ENV REDIS_VERSION=3.2.6
# Tue, 17 Jan 2017 20:05:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.6.tar.gz
# Tue, 17 Jan 2017 20:05:38 GMT
ENV REDIS_DOWNLOAD_SHA1=0c7bc5c751bdbc6fabed178db9cdbdd948915d1b
# Tue, 17 Jan 2017 20:06:35 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:07:31 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jan 2017 20:07:32 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jan 2017 20:07:32 GMT
VOLUME [/data]
# Tue, 17 Jan 2017 20:07:32 GMT
WORKDIR /data
# Tue, 17 Jan 2017 20:07:33 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 17 Jan 2017 20:07:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 20:07:33 GMT
EXPOSE 6379/tcp
# Tue, 17 Jan 2017 20:07:34 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996f41e871db11ed71fa871e4a71e6fb918289a9c3f2500f122d901ac8566fc7`  
		Last Modified: Wed, 18 Jan 2017 07:13:42 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40484248761f567a45443550fce54c4da469739890218490c717800e2dae94e`  
		Last Modified: Wed, 18 Jan 2017 07:13:46 GMT  
		Size: 16.6 MB (16617736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97af2bf2ee7313c7f635afe41a352863eef2135274d6df5e528466cb02c4455`  
		Last Modified: Wed, 18 Jan 2017 07:13:39 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c6a46c002eda0a9eb36b97a5a06a12d9f420eb8096ed04793555631ece8831d`  
		Last Modified: Wed, 18 Jan 2017 07:16:06 GMT  
		Size: 4.2 MB (4224152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac0bb15b3ca183e23b5ff568bf19644036a0e3900c4158303cc627d86906fc82`  
		Last Modified: Wed, 18 Jan 2017 07:16:06 GMT  
		Size: 4.9 MB (4892539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a471fd4f05f5ce204daca9210cdea411b1b0a97607856df5ac483ed5804cc6c2`  
		Last Modified: Wed, 18 Jan 2017 07:16:04 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af73e8e3db6932a23a37368b00ddbb3127220948ec60c50439e711819c66c77`  
		Last Modified: Wed, 18 Jan 2017 07:16:07 GMT  
		Size: 393.0 B  
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
