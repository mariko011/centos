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
$ docker pull redis@sha256:cbd22741646ccc98634b46e67b47167f4c908da283ea015028d54d63afe040c5
```

-	Platforms:
	-	linux; amd64

### `redis:3.0.7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.8 MB (71754713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:165c1bc168b4297cda06cb17a0d4f97103b2a203001aeff81a9c01d909f2981f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:01:12 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 22 Oct 2016 01:01:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:01:23 GMT
ENV GOSU_VERSION=1.7
# Sat, 22 Oct 2016 01:01:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 22 Oct 2016 01:05:08 GMT
ENV REDIS_VERSION=3.0.7
# Sat, 22 Oct 2016 01:05:09 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Sat, 22 Oct 2016 01:05:09 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Sat, 22 Oct 2016 01:05:51 GMT
RUN buildDeps='gcc libc6-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 22 Oct 2016 01:05:52 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 22 Oct 2016 01:05:52 GMT
VOLUME [/data]
# Sat, 22 Oct 2016 01:05:53 GMT
WORKDIR /data
# Sat, 22 Oct 2016 01:05:53 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 22 Oct 2016 01:05:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 22 Oct 2016 01:05:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Oct 2016 01:05:55 GMT
EXPOSE 6379/tcp
# Sat, 22 Oct 2016 01:05:55 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2738f760012a5832e148a275faf9a01f89e4281b231dca4652070c85fb98fd2e`  
		Last Modified: Sat, 22 Oct 2016 01:02:30 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b2771d56b8bca9744f42fe450de4a5ba9e8af2db305e2aecf8ba8e8e3aa0e5`  
		Last Modified: Sat, 22 Oct 2016 01:02:32 GMT  
		Size: 16.6 MB (16609587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d98f21a4432a1e5d7e03963ef8f05d14a25bc9cd7ac260b57e77ada57e7bdf0`  
		Last Modified: Sat, 22 Oct 2016 01:02:29 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06376fd0ad3dde3726380f0d2d81e18eeb1cfbecb4205aeeda8a3a86c9b35ea1`  
		Last Modified: Sat, 22 Oct 2016 01:06:06 GMT  
		Size: 3.0 MB (2981419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f715a1f3cb0d8faf5669333077208297dd1d945254094498a16ca047f8b976b`  
		Last Modified: Sat, 22 Oct 2016 01:06:06 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68799fbd77ecdc52937742622f073f6703e33fb0f954627a567ccf460c7084b9`  
		Last Modified: Sat, 22 Oct 2016 01:06:05 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45e1acfdaf80f2d4096e3b7e7006d4e994155e1a7031fa7775d1dd0a47e888ec`  
		Last Modified: Sat, 22 Oct 2016 01:06:05 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0`

```console
$ docker pull redis@sha256:cbd22741646ccc98634b46e67b47167f4c908da283ea015028d54d63afe040c5
```

-	Platforms:
	-	linux; amd64

### `redis:3.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.8 MB (71754713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:165c1bc168b4297cda06cb17a0d4f97103b2a203001aeff81a9c01d909f2981f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:01:12 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 22 Oct 2016 01:01:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:01:23 GMT
ENV GOSU_VERSION=1.7
# Sat, 22 Oct 2016 01:01:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 22 Oct 2016 01:05:08 GMT
ENV REDIS_VERSION=3.0.7
# Sat, 22 Oct 2016 01:05:09 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Sat, 22 Oct 2016 01:05:09 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Sat, 22 Oct 2016 01:05:51 GMT
RUN buildDeps='gcc libc6-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 22 Oct 2016 01:05:52 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 22 Oct 2016 01:05:52 GMT
VOLUME [/data]
# Sat, 22 Oct 2016 01:05:53 GMT
WORKDIR /data
# Sat, 22 Oct 2016 01:05:53 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 22 Oct 2016 01:05:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 22 Oct 2016 01:05:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Oct 2016 01:05:55 GMT
EXPOSE 6379/tcp
# Sat, 22 Oct 2016 01:05:55 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2738f760012a5832e148a275faf9a01f89e4281b231dca4652070c85fb98fd2e`  
		Last Modified: Sat, 22 Oct 2016 01:02:30 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b2771d56b8bca9744f42fe450de4a5ba9e8af2db305e2aecf8ba8e8e3aa0e5`  
		Last Modified: Sat, 22 Oct 2016 01:02:32 GMT  
		Size: 16.6 MB (16609587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d98f21a4432a1e5d7e03963ef8f05d14a25bc9cd7ac260b57e77ada57e7bdf0`  
		Last Modified: Sat, 22 Oct 2016 01:02:29 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06376fd0ad3dde3726380f0d2d81e18eeb1cfbecb4205aeeda8a3a86c9b35ea1`  
		Last Modified: Sat, 22 Oct 2016 01:06:06 GMT  
		Size: 3.0 MB (2981419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f715a1f3cb0d8faf5669333077208297dd1d945254094498a16ca047f8b976b`  
		Last Modified: Sat, 22 Oct 2016 01:06:06 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68799fbd77ecdc52937742622f073f6703e33fb0f954627a567ccf460c7084b9`  
		Last Modified: Sat, 22 Oct 2016 01:06:05 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45e1acfdaf80f2d4096e3b7e7006d4e994155e1a7031fa7775d1dd0a47e888ec`  
		Last Modified: Sat, 22 Oct 2016 01:06:05 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0.7-32bit`

```console
$ docker pull redis@sha256:134f14131a3b77f34fbbe072b6f4f5c3994c5592136090678f4c8096e9980ca8
```

-	Platforms:
	-	linux; amd64

### `redis:3.0.7-32bit` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.7 MB (75666983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:981d07d014d79e98c80c9f41b9706f616c4f243a4a4b31b66235da19a4cd3e07`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:01:12 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 22 Oct 2016 01:01:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:01:23 GMT
ENV GOSU_VERSION=1.7
# Sat, 22 Oct 2016 01:01:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 22 Oct 2016 01:05:08 GMT
ENV REDIS_VERSION=3.0.7
# Sat, 22 Oct 2016 01:05:09 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Sat, 22 Oct 2016 01:05:09 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Sat, 22 Oct 2016 01:06:33 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:07:25 GMT
RUN buildDeps='gcc gcc-multilib libc6-dev-i386 make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 22 Oct 2016 01:07:26 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 22 Oct 2016 01:07:26 GMT
VOLUME [/data]
# Sat, 22 Oct 2016 01:07:27 GMT
WORKDIR /data
# Sat, 22 Oct 2016 01:07:27 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 22 Oct 2016 01:07:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 22 Oct 2016 01:07:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Oct 2016 01:07:29 GMT
EXPOSE 6379/tcp
# Sat, 22 Oct 2016 01:07:29 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2738f760012a5832e148a275faf9a01f89e4281b231dca4652070c85fb98fd2e`  
		Last Modified: Sat, 22 Oct 2016 01:02:30 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b2771d56b8bca9744f42fe450de4a5ba9e8af2db305e2aecf8ba8e8e3aa0e5`  
		Last Modified: Sat, 22 Oct 2016 01:02:32 GMT  
		Size: 16.6 MB (16609587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d98f21a4432a1e5d7e03963ef8f05d14a25bc9cd7ac260b57e77ada57e7bdf0`  
		Last Modified: Sat, 22 Oct 2016 01:02:29 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814876aac7c15c90f9b6b3a582d96204d771fcda12d0fa1f87eaa1e04c1d91d4`  
		Last Modified: Sat, 22 Oct 2016 01:07:40 GMT  
		Size: 4.2 MB (4224374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073c6ade700aa435243015cf6c7b39a3fdbfa66e1eeaaf00d3620804a1b37208`  
		Last Modified: Sat, 22 Oct 2016 01:07:40 GMT  
		Size: 2.7 MB (2669314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b565a44de3d38cdf37846ba500f9731f35c0670cb3d41871a0630fdcb2d097d1`  
		Last Modified: Sat, 22 Oct 2016 01:07:39 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d17d054850b2c212d7ccd1657d9cb46cb74afe1d2e68dabad395aec6990a36`  
		Last Modified: Sat, 22 Oct 2016 01:07:40 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b2733f860f52e2bc61f3e734265030bcf1f3ca3c826bd1b3f904b1c256556c`  
		Last Modified: Sat, 22 Oct 2016 01:07:39 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0-32bit`

```console
$ docker pull redis@sha256:134f14131a3b77f34fbbe072b6f4f5c3994c5592136090678f4c8096e9980ca8
```

-	Platforms:
	-	linux; amd64

### `redis:3.0-32bit` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.7 MB (75666983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:981d07d014d79e98c80c9f41b9706f616c4f243a4a4b31b66235da19a4cd3e07`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:01:12 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 22 Oct 2016 01:01:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:01:23 GMT
ENV GOSU_VERSION=1.7
# Sat, 22 Oct 2016 01:01:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 22 Oct 2016 01:05:08 GMT
ENV REDIS_VERSION=3.0.7
# Sat, 22 Oct 2016 01:05:09 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Sat, 22 Oct 2016 01:05:09 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Sat, 22 Oct 2016 01:06:33 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:07:25 GMT
RUN buildDeps='gcc gcc-multilib libc6-dev-i386 make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 22 Oct 2016 01:07:26 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 22 Oct 2016 01:07:26 GMT
VOLUME [/data]
# Sat, 22 Oct 2016 01:07:27 GMT
WORKDIR /data
# Sat, 22 Oct 2016 01:07:27 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 22 Oct 2016 01:07:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 22 Oct 2016 01:07:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Oct 2016 01:07:29 GMT
EXPOSE 6379/tcp
# Sat, 22 Oct 2016 01:07:29 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2738f760012a5832e148a275faf9a01f89e4281b231dca4652070c85fb98fd2e`  
		Last Modified: Sat, 22 Oct 2016 01:02:30 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b2771d56b8bca9744f42fe450de4a5ba9e8af2db305e2aecf8ba8e8e3aa0e5`  
		Last Modified: Sat, 22 Oct 2016 01:02:32 GMT  
		Size: 16.6 MB (16609587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d98f21a4432a1e5d7e03963ef8f05d14a25bc9cd7ac260b57e77ada57e7bdf0`  
		Last Modified: Sat, 22 Oct 2016 01:02:29 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814876aac7c15c90f9b6b3a582d96204d771fcda12d0fa1f87eaa1e04c1d91d4`  
		Last Modified: Sat, 22 Oct 2016 01:07:40 GMT  
		Size: 4.2 MB (4224374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073c6ade700aa435243015cf6c7b39a3fdbfa66e1eeaaf00d3620804a1b37208`  
		Last Modified: Sat, 22 Oct 2016 01:07:40 GMT  
		Size: 2.7 MB (2669314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b565a44de3d38cdf37846ba500f9731f35c0670cb3d41871a0630fdcb2d097d1`  
		Last Modified: Sat, 22 Oct 2016 01:07:39 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d17d054850b2c212d7ccd1657d9cb46cb74afe1d2e68dabad395aec6990a36`  
		Last Modified: Sat, 22 Oct 2016 01:07:40 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b2733f860f52e2bc61f3e734265030bcf1f3ca3c826bd1b3f904b1c256556c`  
		Last Modified: Sat, 22 Oct 2016 01:07:39 GMT  
		Size: 118.0 B  
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
$ docker pull redis@sha256:0fe5a7afa2c2154f37c8ab56a9a6c5023cb0405cc0e85b34d8dcc1de6c3f143e
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.5` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74242408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74b99a81add5d77beab8af2507083fb62117362a238c7cfe38b876e4e17f2c7a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:01:12 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 22 Oct 2016 01:01:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:01:23 GMT
ENV GOSU_VERSION=1.7
# Sat, 22 Oct 2016 01:01:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 Nov 2016 00:38:07 GMT
ENV REDIS_VERSION=3.2.5
# Tue, 01 Nov 2016 00:38:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.5.tar.gz
# Tue, 01 Nov 2016 00:38:07 GMT
ENV REDIS_DOWNLOAD_SHA1=6f6333db6111badaa74519d743589ac4635eba7a
# Tue, 01 Nov 2016 00:38:57 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 00:38:58 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 01 Nov 2016 00:38:58 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 00:38:58 GMT
WORKDIR /data
# Tue, 01 Nov 2016 00:38:59 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 01 Nov 2016 00:39:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Nov 2016 00:39:00 GMT
EXPOSE 6379/tcp
# Tue, 01 Nov 2016 00:39:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2738f760012a5832e148a275faf9a01f89e4281b231dca4652070c85fb98fd2e`  
		Last Modified: Sat, 22 Oct 2016 01:02:30 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b2771d56b8bca9744f42fe450de4a5ba9e8af2db305e2aecf8ba8e8e3aa0e5`  
		Last Modified: Sat, 22 Oct 2016 01:02:32 GMT  
		Size: 16.6 MB (16609587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d98f21a4432a1e5d7e03963ef8f05d14a25bc9cd7ac260b57e77ada57e7bdf0`  
		Last Modified: Sat, 22 Oct 2016 01:02:29 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79007f20bee8bcff448cc7280fdb2f18f1cb74e89539b02fb7e04356849d1b66`  
		Last Modified: Tue, 01 Nov 2016 00:42:15 GMT  
		Size: 5.5 MB (5469231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:438fc7d500513211f884c9e481b0d657897b6d159ef396c5bc1271bed56fabaa`  
		Last Modified: Tue, 01 Nov 2016 00:42:14 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8f776b71d795cb7a433ae06cb747c07817a3c0d21cb819a8398fedada2198b`  
		Last Modified: Tue, 01 Nov 2016 00:42:12 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2`

```console
$ docker pull redis@sha256:0fe5a7afa2c2154f37c8ab56a9a6c5023cb0405cc0e85b34d8dcc1de6c3f143e
```

-	Platforms:
	-	linux; amd64

### `redis:3.2` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74242408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74b99a81add5d77beab8af2507083fb62117362a238c7cfe38b876e4e17f2c7a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:01:12 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 22 Oct 2016 01:01:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:01:23 GMT
ENV GOSU_VERSION=1.7
# Sat, 22 Oct 2016 01:01:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 Nov 2016 00:38:07 GMT
ENV REDIS_VERSION=3.2.5
# Tue, 01 Nov 2016 00:38:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.5.tar.gz
# Tue, 01 Nov 2016 00:38:07 GMT
ENV REDIS_DOWNLOAD_SHA1=6f6333db6111badaa74519d743589ac4635eba7a
# Tue, 01 Nov 2016 00:38:57 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 00:38:58 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 01 Nov 2016 00:38:58 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 00:38:58 GMT
WORKDIR /data
# Tue, 01 Nov 2016 00:38:59 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 01 Nov 2016 00:39:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Nov 2016 00:39:00 GMT
EXPOSE 6379/tcp
# Tue, 01 Nov 2016 00:39:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2738f760012a5832e148a275faf9a01f89e4281b231dca4652070c85fb98fd2e`  
		Last Modified: Sat, 22 Oct 2016 01:02:30 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b2771d56b8bca9744f42fe450de4a5ba9e8af2db305e2aecf8ba8e8e3aa0e5`  
		Last Modified: Sat, 22 Oct 2016 01:02:32 GMT  
		Size: 16.6 MB (16609587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d98f21a4432a1e5d7e03963ef8f05d14a25bc9cd7ac260b57e77ada57e7bdf0`  
		Last Modified: Sat, 22 Oct 2016 01:02:29 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79007f20bee8bcff448cc7280fdb2f18f1cb74e89539b02fb7e04356849d1b66`  
		Last Modified: Tue, 01 Nov 2016 00:42:15 GMT  
		Size: 5.5 MB (5469231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:438fc7d500513211f884c9e481b0d657897b6d159ef396c5bc1271bed56fabaa`  
		Last Modified: Tue, 01 Nov 2016 00:42:14 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8f776b71d795cb7a433ae06cb747c07817a3c0d21cb819a8398fedada2198b`  
		Last Modified: Tue, 01 Nov 2016 00:42:12 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3`

```console
$ docker pull redis@sha256:5af2446f774075f2b5bc14738368dc111c357c2a11dd304a90b098e27ff1a50e
```

-	Platforms:
	-	linux; amd64

### `redis:3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74242369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:190ed8a616203879f5df612844123a98531f8b0474c8a1dfed32228091aa457e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:01:12 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 22 Oct 2016 01:01:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:01:23 GMT
ENV GOSU_VERSION=1.7
# Sat, 22 Oct 2016 01:01:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 22 Oct 2016 01:01:28 GMT
ENV REDIS_VERSION=3.2.4
# Sat, 22 Oct 2016 01:01:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.4.tar.gz
# Sat, 22 Oct 2016 01:01:29 GMT
ENV REDIS_DOWNLOAD_SHA1=f0fe685cbfdb8c2d8c74613ad8a5a5f33fba40c9
# Sat, 22 Oct 2016 01:02:15 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Sat, 22 Oct 2016 01:02:16 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 22 Oct 2016 01:02:16 GMT
VOLUME [/data]
# Sat, 22 Oct 2016 01:02:17 GMT
WORKDIR /data
# Sat, 22 Oct 2016 01:02:17 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 22 Oct 2016 01:02:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Oct 2016 01:02:18 GMT
EXPOSE 6379/tcp
# Sat, 22 Oct 2016 01:02:18 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2738f760012a5832e148a275faf9a01f89e4281b231dca4652070c85fb98fd2e`  
		Last Modified: Sat, 22 Oct 2016 01:02:30 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b2771d56b8bca9744f42fe450de4a5ba9e8af2db305e2aecf8ba8e8e3aa0e5`  
		Last Modified: Sat, 22 Oct 2016 01:02:32 GMT  
		Size: 16.6 MB (16609587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d98f21a4432a1e5d7e03963ef8f05d14a25bc9cd7ac260b57e77ada57e7bdf0`  
		Last Modified: Sat, 22 Oct 2016 01:02:29 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eebb159250d608818685dc3051777d6bb5cc8b9450185ca9452a0cdb82e0a40d`  
		Last Modified: Sat, 22 Oct 2016 01:02:30 GMT  
		Size: 5.5 MB (5469193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:723650aaa26fe2788a762164e92225d4a0b48d1dc1aad116ab75ff42bc8f583d`  
		Last Modified: Sat, 22 Oct 2016 01:02:28 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7712c26a3f25bce35dcd944a1dc8fbbd9d913afbd137640bd6e0ea24feef8da`  
		Last Modified: Sat, 22 Oct 2016 01:02:28 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:latest`

```console
$ docker pull redis@sha256:0fe5a7afa2c2154f37c8ab56a9a6c5023cb0405cc0e85b34d8dcc1de6c3f143e
```

-	Platforms:
	-	linux; amd64

### `redis:latest` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74242408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74b99a81add5d77beab8af2507083fb62117362a238c7cfe38b876e4e17f2c7a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:01:12 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 22 Oct 2016 01:01:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:01:23 GMT
ENV GOSU_VERSION=1.7
# Sat, 22 Oct 2016 01:01:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 Nov 2016 00:38:07 GMT
ENV REDIS_VERSION=3.2.5
# Tue, 01 Nov 2016 00:38:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.5.tar.gz
# Tue, 01 Nov 2016 00:38:07 GMT
ENV REDIS_DOWNLOAD_SHA1=6f6333db6111badaa74519d743589ac4635eba7a
# Tue, 01 Nov 2016 00:38:57 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 00:38:58 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 01 Nov 2016 00:38:58 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 00:38:58 GMT
WORKDIR /data
# Tue, 01 Nov 2016 00:38:59 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 01 Nov 2016 00:39:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Nov 2016 00:39:00 GMT
EXPOSE 6379/tcp
# Tue, 01 Nov 2016 00:39:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2738f760012a5832e148a275faf9a01f89e4281b231dca4652070c85fb98fd2e`  
		Last Modified: Sat, 22 Oct 2016 01:02:30 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b2771d56b8bca9744f42fe450de4a5ba9e8af2db305e2aecf8ba8e8e3aa0e5`  
		Last Modified: Sat, 22 Oct 2016 01:02:32 GMT  
		Size: 16.6 MB (16609587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d98f21a4432a1e5d7e03963ef8f05d14a25bc9cd7ac260b57e77ada57e7bdf0`  
		Last Modified: Sat, 22 Oct 2016 01:02:29 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79007f20bee8bcff448cc7280fdb2f18f1cb74e89539b02fb7e04356849d1b66`  
		Last Modified: Tue, 01 Nov 2016 00:42:15 GMT  
		Size: 5.5 MB (5469231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:438fc7d500513211f884c9e481b0d657897b6d159ef396c5bc1271bed56fabaa`  
		Last Modified: Tue, 01 Nov 2016 00:42:14 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8f776b71d795cb7a433ae06cb747c07817a3c0d21cb819a8398fedada2198b`  
		Last Modified: Tue, 01 Nov 2016 00:42:12 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.5-32bit`

```console
$ docker pull redis@sha256:7411d374721505e7711aed73e82c267b0ba1689082134eea3771fe5e7316fbb5
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.5-32bit` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77890857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01cbd374352998428dfce52d91fbdb1f4844a8bbcb696c507f2ec5531de83925`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:01:12 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 22 Oct 2016 01:01:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:01:23 GMT
ENV GOSU_VERSION=1.7
# Sat, 22 Oct 2016 01:01:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 Nov 2016 00:38:07 GMT
ENV REDIS_VERSION=3.2.5
# Tue, 01 Nov 2016 00:38:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.5.tar.gz
# Tue, 01 Nov 2016 00:38:07 GMT
ENV REDIS_DOWNLOAD_SHA1=6f6333db6111badaa74519d743589ac4635eba7a
# Tue, 01 Nov 2016 00:39:07 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 00:39:59 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 00:40:00 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 01 Nov 2016 00:40:01 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 00:40:01 GMT
WORKDIR /data
# Tue, 01 Nov 2016 00:40:02 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 01 Nov 2016 00:40:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Nov 2016 00:40:02 GMT
EXPOSE 6379/tcp
# Tue, 01 Nov 2016 00:40:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2738f760012a5832e148a275faf9a01f89e4281b231dca4652070c85fb98fd2e`  
		Last Modified: Sat, 22 Oct 2016 01:02:30 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b2771d56b8bca9744f42fe450de4a5ba9e8af2db305e2aecf8ba8e8e3aa0e5`  
		Last Modified: Sat, 22 Oct 2016 01:02:32 GMT  
		Size: 16.6 MB (16609587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d98f21a4432a1e5d7e03963ef8f05d14a25bc9cd7ac260b57e77ada57e7bdf0`  
		Last Modified: Sat, 22 Oct 2016 01:02:29 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e94f968812a8d585729067fb767093627eb59bb241035b823ff611f3a6eadb`  
		Last Modified: Tue, 01 Nov 2016 00:43:08 GMT  
		Size: 4.2 MB (4224372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc85060ced31e34df342639392e7f283e3d8039a6bc1292e7e0c88f7b013cb8`  
		Last Modified: Tue, 01 Nov 2016 00:43:08 GMT  
		Size: 4.9 MB (4893309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b4f6974be6876a649f4730d8967a38c3a684e5e01d544765a9bc8df20b3f9c`  
		Last Modified: Tue, 01 Nov 2016 00:43:06 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a26a0383d68df00d23f70a62bbb973937cb976e5f72054f7429a56953629e26`  
		Last Modified: Tue, 01 Nov 2016 00:43:06 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-32bit`

```console
$ docker pull redis@sha256:7411d374721505e7711aed73e82c267b0ba1689082134eea3771fe5e7316fbb5
```

-	Platforms:
	-	linux; amd64

### `redis:3.2-32bit` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77890857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01cbd374352998428dfce52d91fbdb1f4844a8bbcb696c507f2ec5531de83925`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:01:12 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 22 Oct 2016 01:01:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:01:23 GMT
ENV GOSU_VERSION=1.7
# Sat, 22 Oct 2016 01:01:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 Nov 2016 00:38:07 GMT
ENV REDIS_VERSION=3.2.5
# Tue, 01 Nov 2016 00:38:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.5.tar.gz
# Tue, 01 Nov 2016 00:38:07 GMT
ENV REDIS_DOWNLOAD_SHA1=6f6333db6111badaa74519d743589ac4635eba7a
# Tue, 01 Nov 2016 00:39:07 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 00:39:59 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 00:40:00 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 01 Nov 2016 00:40:01 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 00:40:01 GMT
WORKDIR /data
# Tue, 01 Nov 2016 00:40:02 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 01 Nov 2016 00:40:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Nov 2016 00:40:02 GMT
EXPOSE 6379/tcp
# Tue, 01 Nov 2016 00:40:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2738f760012a5832e148a275faf9a01f89e4281b231dca4652070c85fb98fd2e`  
		Last Modified: Sat, 22 Oct 2016 01:02:30 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b2771d56b8bca9744f42fe450de4a5ba9e8af2db305e2aecf8ba8e8e3aa0e5`  
		Last Modified: Sat, 22 Oct 2016 01:02:32 GMT  
		Size: 16.6 MB (16609587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d98f21a4432a1e5d7e03963ef8f05d14a25bc9cd7ac260b57e77ada57e7bdf0`  
		Last Modified: Sat, 22 Oct 2016 01:02:29 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e94f968812a8d585729067fb767093627eb59bb241035b823ff611f3a6eadb`  
		Last Modified: Tue, 01 Nov 2016 00:43:08 GMT  
		Size: 4.2 MB (4224372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc85060ced31e34df342639392e7f283e3d8039a6bc1292e7e0c88f7b013cb8`  
		Last Modified: Tue, 01 Nov 2016 00:43:08 GMT  
		Size: 4.9 MB (4893309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b4f6974be6876a649f4730d8967a38c3a684e5e01d544765a9bc8df20b3f9c`  
		Last Modified: Tue, 01 Nov 2016 00:43:06 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a26a0383d68df00d23f70a62bbb973937cb976e5f72054f7429a56953629e26`  
		Last Modified: Tue, 01 Nov 2016 00:43:06 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-32bit`

```console
$ docker pull redis@sha256:7411d374721505e7711aed73e82c267b0ba1689082134eea3771fe5e7316fbb5
```

-	Platforms:
	-	linux; amd64

### `redis:3-32bit` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77890857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01cbd374352998428dfce52d91fbdb1f4844a8bbcb696c507f2ec5531de83925`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:01:12 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 22 Oct 2016 01:01:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:01:23 GMT
ENV GOSU_VERSION=1.7
# Sat, 22 Oct 2016 01:01:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 Nov 2016 00:38:07 GMT
ENV REDIS_VERSION=3.2.5
# Tue, 01 Nov 2016 00:38:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.5.tar.gz
# Tue, 01 Nov 2016 00:38:07 GMT
ENV REDIS_DOWNLOAD_SHA1=6f6333db6111badaa74519d743589ac4635eba7a
# Tue, 01 Nov 2016 00:39:07 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 00:39:59 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 00:40:00 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 01 Nov 2016 00:40:01 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 00:40:01 GMT
WORKDIR /data
# Tue, 01 Nov 2016 00:40:02 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 01 Nov 2016 00:40:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Nov 2016 00:40:02 GMT
EXPOSE 6379/tcp
# Tue, 01 Nov 2016 00:40:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2738f760012a5832e148a275faf9a01f89e4281b231dca4652070c85fb98fd2e`  
		Last Modified: Sat, 22 Oct 2016 01:02:30 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b2771d56b8bca9744f42fe450de4a5ba9e8af2db305e2aecf8ba8e8e3aa0e5`  
		Last Modified: Sat, 22 Oct 2016 01:02:32 GMT  
		Size: 16.6 MB (16609587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d98f21a4432a1e5d7e03963ef8f05d14a25bc9cd7ac260b57e77ada57e7bdf0`  
		Last Modified: Sat, 22 Oct 2016 01:02:29 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e94f968812a8d585729067fb767093627eb59bb241035b823ff611f3a6eadb`  
		Last Modified: Tue, 01 Nov 2016 00:43:08 GMT  
		Size: 4.2 MB (4224372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc85060ced31e34df342639392e7f283e3d8039a6bc1292e7e0c88f7b013cb8`  
		Last Modified: Tue, 01 Nov 2016 00:43:08 GMT  
		Size: 4.9 MB (4893309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b4f6974be6876a649f4730d8967a38c3a684e5e01d544765a9bc8df20b3f9c`  
		Last Modified: Tue, 01 Nov 2016 00:43:06 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a26a0383d68df00d23f70a62bbb973937cb976e5f72054f7429a56953629e26`  
		Last Modified: Tue, 01 Nov 2016 00:43:06 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:32bit`

```console
$ docker pull redis@sha256:7411d374721505e7711aed73e82c267b0ba1689082134eea3771fe5e7316fbb5
```

-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77890857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01cbd374352998428dfce52d91fbdb1f4844a8bbcb696c507f2ec5531de83925`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:01:12 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 22 Oct 2016 01:01:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:01:23 GMT
ENV GOSU_VERSION=1.7
# Sat, 22 Oct 2016 01:01:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 Nov 2016 00:38:07 GMT
ENV REDIS_VERSION=3.2.5
# Tue, 01 Nov 2016 00:38:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.5.tar.gz
# Tue, 01 Nov 2016 00:38:07 GMT
ENV REDIS_DOWNLOAD_SHA1=6f6333db6111badaa74519d743589ac4635eba7a
# Tue, 01 Nov 2016 00:39:07 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 00:39:59 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 00:40:00 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 01 Nov 2016 00:40:01 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 00:40:01 GMT
WORKDIR /data
# Tue, 01 Nov 2016 00:40:02 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 01 Nov 2016 00:40:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Nov 2016 00:40:02 GMT
EXPOSE 6379/tcp
# Tue, 01 Nov 2016 00:40:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2738f760012a5832e148a275faf9a01f89e4281b231dca4652070c85fb98fd2e`  
		Last Modified: Sat, 22 Oct 2016 01:02:30 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b2771d56b8bca9744f42fe450de4a5ba9e8af2db305e2aecf8ba8e8e3aa0e5`  
		Last Modified: Sat, 22 Oct 2016 01:02:32 GMT  
		Size: 16.6 MB (16609587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d98f21a4432a1e5d7e03963ef8f05d14a25bc9cd7ac260b57e77ada57e7bdf0`  
		Last Modified: Sat, 22 Oct 2016 01:02:29 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e94f968812a8d585729067fb767093627eb59bb241035b823ff611f3a6eadb`  
		Last Modified: Tue, 01 Nov 2016 00:43:08 GMT  
		Size: 4.2 MB (4224372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc85060ced31e34df342639392e7f283e3d8039a6bc1292e7e0c88f7b013cb8`  
		Last Modified: Tue, 01 Nov 2016 00:43:08 GMT  
		Size: 4.9 MB (4893309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b4f6974be6876a649f4730d8967a38c3a684e5e01d544765a9bc8df20b3f9c`  
		Last Modified: Tue, 01 Nov 2016 00:43:06 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a26a0383d68df00d23f70a62bbb973937cb976e5f72054f7429a56953629e26`  
		Last Modified: Tue, 01 Nov 2016 00:43:06 GMT  
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
