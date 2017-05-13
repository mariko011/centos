<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redis`

-	[`redis:3.0.7`](#redis307)
-	[`redis:3.0`](#redis30)
-	[`redis:3.0.7-32bit`](#redis307-32bit)
-	[`redis:3.0-32bit`](#redis30-32bit)
-	[`redis:3.0.7-alpine`](#redis307-alpine)
-	[`redis:3.0-alpine`](#redis30-alpine)
-	[`redis:3.0.504-windowsservercore`](#redis30504-windowsservercore)
-	[`redis:3.0-windowsservercore`](#redis30-windowsservercore)
-	[`redis:3.0.504-nanoserver`](#redis30504-nanoserver)
-	[`redis:3.0-nanoserver`](#redis30-nanoserver)
-	[`redis:3.2.8`](#redis328)
-	[`redis:3.2`](#redis32)
-	[`redis:3`](#redis3)
-	[`redis:latest`](#redislatest)
-	[`redis:3.2.8-32bit`](#redis328-32bit)
-	[`redis:3.2-32bit`](#redis32-32bit)
-	[`redis:3-32bit`](#redis3-32bit)
-	[`redis:32bit`](#redis32bit)
-	[`redis:3.2.8-alpine`](#redis328-alpine)
-	[`redis:3.2-alpine`](#redis32-alpine)
-	[`redis:3-alpine`](#redis3-alpine)
-	[`redis:alpine`](#redisalpine)
-	[`redis:3.2.100-windowsservercore`](#redis32100-windowsservercore)
-	[`redis:3.2-windowsservercore`](#redis32-windowsservercore)
-	[`redis:3-windowsservercore`](#redis3-windowsservercore)
-	[`redis:windowsservercore`](#rediswindowsservercore)
-	[`redis:3.2.100-nanoserver`](#redis32100-nanoserver)
-	[`redis:3.2-nanoserver`](#redis32-nanoserver)
-	[`redis:3-nanoserver`](#redis3-nanoserver)
-	[`redis:nanoserver`](#redisnanoserver)

## `redis:3.0.7`

```console
$ docker pull redis@sha256:951b48deb6d370e51ce0fcf9af6750860d45d45ce63722eafcddac6df4f991fb
```

-	Platforms:
	-	linux; amd64

### `redis:3.0.7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.7 MB (73729838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daa68d477b8834b065a5cce73f8a6d820b28e08acdd382dd5a6049c019999098`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:42:16 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 10 May 2017 15:42:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:42:32 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 May 2017 15:42:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 May 2017 15:45:34 GMT
ENV REDIS_VERSION=3.0.7
# Wed, 10 May 2017 15:45:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Wed, 10 May 2017 15:45:35 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Wed, 10 May 2017 15:46:19 GMT
RUN buildDeps='gcc libc6-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 10 May 2017 15:46:21 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 May 2017 15:46:21 GMT
VOLUME [/data]
# Wed, 10 May 2017 15:46:22 GMT
WORKDIR /data
# Wed, 10 May 2017 15:46:23 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 10 May 2017 15:46:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 10 May 2017 15:46:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 15:46:26 GMT
EXPOSE 6379/tcp
# Wed, 10 May 2017 15:46:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b690bc4eaa6434456ceaccf9b3e42229bd2691869ba439e515b28fe1a66c009`  
		Last Modified: Sat, 13 May 2017 18:16:18 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdd94354d2a873333a205a02dbb853dd763c73600e0cf64f60b4bd7ab694875`  
		Last Modified: Sat, 13 May 2017 18:16:20 GMT  
		Size: 17.3 MB (17300175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c1f30d820f0457df186531dc4478967d075ba449bd3168a3e82137a47daf03`  
		Last Modified: Sat, 13 May 2017 18:16:16 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3333cc0e503899cb9d75e28ede635e229f7788de850461eeb7dfc961cd57ffb1`  
		Last Modified: Sat, 13 May 2017 18:16:16 GMT  
		Size: 3.0 MB (3024159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f027c4f43ebd048788dcfd61706db740e13e3420254a20bc9930ac8d9fdf9b2`  
		Last Modified: Sat, 13 May 2017 18:16:16 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b04cc215f3a204619381ff4fcfcfa29b55b223f74b490147249e2e61f1264f`  
		Last Modified: Sat, 13 May 2017 18:16:16 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852e2cabeeb1c2511643eca92320eea90b61b570309361a5a8606ae99adc2f52`  
		Last Modified: Sat, 13 May 2017 18:16:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0`

```console
$ docker pull redis@sha256:951b48deb6d370e51ce0fcf9af6750860d45d45ce63722eafcddac6df4f991fb
```

-	Platforms:
	-	linux; amd64

### `redis:3.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.7 MB (73729838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daa68d477b8834b065a5cce73f8a6d820b28e08acdd382dd5a6049c019999098`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:42:16 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 10 May 2017 15:42:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:42:32 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 May 2017 15:42:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 May 2017 15:45:34 GMT
ENV REDIS_VERSION=3.0.7
# Wed, 10 May 2017 15:45:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Wed, 10 May 2017 15:45:35 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Wed, 10 May 2017 15:46:19 GMT
RUN buildDeps='gcc libc6-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 10 May 2017 15:46:21 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 May 2017 15:46:21 GMT
VOLUME [/data]
# Wed, 10 May 2017 15:46:22 GMT
WORKDIR /data
# Wed, 10 May 2017 15:46:23 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 10 May 2017 15:46:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 10 May 2017 15:46:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 15:46:26 GMT
EXPOSE 6379/tcp
# Wed, 10 May 2017 15:46:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b690bc4eaa6434456ceaccf9b3e42229bd2691869ba439e515b28fe1a66c009`  
		Last Modified: Sat, 13 May 2017 18:16:18 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdd94354d2a873333a205a02dbb853dd763c73600e0cf64f60b4bd7ab694875`  
		Last Modified: Sat, 13 May 2017 18:16:20 GMT  
		Size: 17.3 MB (17300175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c1f30d820f0457df186531dc4478967d075ba449bd3168a3e82137a47daf03`  
		Last Modified: Sat, 13 May 2017 18:16:16 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3333cc0e503899cb9d75e28ede635e229f7788de850461eeb7dfc961cd57ffb1`  
		Last Modified: Sat, 13 May 2017 18:16:16 GMT  
		Size: 3.0 MB (3024159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f027c4f43ebd048788dcfd61706db740e13e3420254a20bc9930ac8d9fdf9b2`  
		Last Modified: Sat, 13 May 2017 18:16:16 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b04cc215f3a204619381ff4fcfcfa29b55b223f74b490147249e2e61f1264f`  
		Last Modified: Sat, 13 May 2017 18:16:16 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852e2cabeeb1c2511643eca92320eea90b61b570309361a5a8606ae99adc2f52`  
		Last Modified: Sat, 13 May 2017 18:16:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0.7-32bit`

```console
$ docker pull redis@sha256:e271ef8d40e7d8d6b3f51b7a096b701e0a12502d26eb24aa3dd4bcfd70b23fee
```

-	Platforms:
	-	linux; amd64

### `redis:3.0.7-32bit` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.8 MB (77810031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0a219da36e97fb4a61ff865547da8da12e985b740c47524928d460d0961ee6c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:42:16 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 10 May 2017 15:42:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:42:32 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 May 2017 15:42:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 May 2017 15:45:34 GMT
ENV REDIS_VERSION=3.0.7
# Wed, 10 May 2017 15:45:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Wed, 10 May 2017 15:45:35 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Wed, 10 May 2017 15:46:55 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:47:43 GMT
RUN buildDeps='gcc gcc-multilib libc6-dev-i386 make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 10 May 2017 15:47:45 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 May 2017 15:47:45 GMT
VOLUME [/data]
# Wed, 10 May 2017 15:47:46 GMT
WORKDIR /data
# Wed, 10 May 2017 15:47:47 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 10 May 2017 15:47:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 10 May 2017 15:47:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 15:47:50 GMT
EXPOSE 6379/tcp
# Wed, 10 May 2017 15:47:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b690bc4eaa6434456ceaccf9b3e42229bd2691869ba439e515b28fe1a66c009`  
		Last Modified: Sat, 13 May 2017 18:16:18 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdd94354d2a873333a205a02dbb853dd763c73600e0cf64f60b4bd7ab694875`  
		Last Modified: Sat, 13 May 2017 18:16:20 GMT  
		Size: 17.3 MB (17300175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c1f30d820f0457df186531dc4478967d075ba449bd3168a3e82137a47daf03`  
		Last Modified: Sat, 13 May 2017 18:16:16 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fbc8cbc43e804e46ed5a494f82e15e96724902f3bb2154593adb0cf1643458`  
		Last Modified: Sat, 13 May 2017 18:17:09 GMT  
		Size: 4.4 MB (4360701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db356f9026e567d7c3b93881b5bc034189982413a7f972756164c0ec100fe51e`  
		Last Modified: Sat, 13 May 2017 18:17:09 GMT  
		Size: 2.7 MB (2743652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31df47456ad938a33a8a380a355b34fd3a37a33b0717f873e38fa6cb4731a1e7`  
		Last Modified: Sat, 13 May 2017 18:17:08 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe0a9b995e086ed2020ce9a822d32835b9cbb22e7f61b588a74d8f25231341a`  
		Last Modified: Sat, 13 May 2017 18:17:09 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33894d01ccd493c726e635cba8e0c16dd471c34fae2d753dbdccc8fc5964ad34`  
		Last Modified: Sat, 13 May 2017 18:17:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0-32bit`

```console
$ docker pull redis@sha256:e271ef8d40e7d8d6b3f51b7a096b701e0a12502d26eb24aa3dd4bcfd70b23fee
```

-	Platforms:
	-	linux; amd64

### `redis:3.0-32bit` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.8 MB (77810031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0a219da36e97fb4a61ff865547da8da12e985b740c47524928d460d0961ee6c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:42:16 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 10 May 2017 15:42:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:42:32 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 May 2017 15:42:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 May 2017 15:45:34 GMT
ENV REDIS_VERSION=3.0.7
# Wed, 10 May 2017 15:45:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Wed, 10 May 2017 15:45:35 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Wed, 10 May 2017 15:46:55 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:47:43 GMT
RUN buildDeps='gcc gcc-multilib libc6-dev-i386 make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 10 May 2017 15:47:45 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 May 2017 15:47:45 GMT
VOLUME [/data]
# Wed, 10 May 2017 15:47:46 GMT
WORKDIR /data
# Wed, 10 May 2017 15:47:47 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 10 May 2017 15:47:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 10 May 2017 15:47:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 15:47:50 GMT
EXPOSE 6379/tcp
# Wed, 10 May 2017 15:47:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b690bc4eaa6434456ceaccf9b3e42229bd2691869ba439e515b28fe1a66c009`  
		Last Modified: Sat, 13 May 2017 18:16:18 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdd94354d2a873333a205a02dbb853dd763c73600e0cf64f60b4bd7ab694875`  
		Last Modified: Sat, 13 May 2017 18:16:20 GMT  
		Size: 17.3 MB (17300175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c1f30d820f0457df186531dc4478967d075ba449bd3168a3e82137a47daf03`  
		Last Modified: Sat, 13 May 2017 18:16:16 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fbc8cbc43e804e46ed5a494f82e15e96724902f3bb2154593adb0cf1643458`  
		Last Modified: Sat, 13 May 2017 18:17:09 GMT  
		Size: 4.4 MB (4360701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db356f9026e567d7c3b93881b5bc034189982413a7f972756164c0ec100fe51e`  
		Last Modified: Sat, 13 May 2017 18:17:09 GMT  
		Size: 2.7 MB (2743652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31df47456ad938a33a8a380a355b34fd3a37a33b0717f873e38fa6cb4731a1e7`  
		Last Modified: Sat, 13 May 2017 18:17:08 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe0a9b995e086ed2020ce9a822d32835b9cbb22e7f61b588a74d8f25231341a`  
		Last Modified: Sat, 13 May 2017 18:17:09 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33894d01ccd493c726e635cba8e0c16dd471c34fae2d753dbdccc8fc5964ad34`  
		Last Modified: Sat, 13 May 2017 18:17:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0.7-alpine`

```console
$ docker pull redis@sha256:fd4962bd03dbf3b244931e96de872cbcb3ab7b664e4f9f0d04a1274ebdcedd3b
```

-	Platforms:
	-	linux; amd64

### `redis:3.0.7-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4929997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c31ed84e1700d9bc205b55eb87502566cf6d609320cbe1a0ca823bc29a5b0c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:57:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 May 2017 22:57:54 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 May 2017 22:59:06 GMT
ENV REDIS_VERSION=3.0.7
# Wed, 10 May 2017 22:59:06 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Wed, 10 May 2017 22:59:07 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Wed, 10 May 2017 22:59:44 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apk del .build-deps
# Wed, 10 May 2017 22:59:46 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 May 2017 22:59:47 GMT
VOLUME [/data]
# Wed, 10 May 2017 22:59:47 GMT
WORKDIR /data
# Wed, 10 May 2017 22:59:48 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 10 May 2017 22:59:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 10 May 2017 22:59:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 22:59:52 GMT
EXPOSE 6379/tcp
# Wed, 10 May 2017 22:59:52 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eda5cfd7e0ab09fe67d2ceb73ae410d20e44ed5be84628c2367f36f039e1948`  
		Last Modified: Sat, 13 May 2017 18:17:58 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8acb752a319b92851eff05f9a1e7f4c4954054f1594b84370606206a3f4a90cc`  
		Last Modified: Sat, 13 May 2017 18:18:00 GMT  
		Size: 7.8 KB (7765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a36066be4b69cb22ed7dadbb59751d9f2b708b16223b787cd7d77d40457531c`  
		Last Modified: Sat, 13 May 2017 18:17:58 GMT  
		Size: 3.0 MB (2952465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42020d707d8a1c69bffa1df6a1650171ce78a2449d82906123f26b1ec2e2ea9a`  
		Last Modified: Sat, 13 May 2017 18:17:58 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25d32e52f14c31a8cd2659ffcd4df6dcbe7b5d75ae3055249cb7d24e5674212`  
		Last Modified: Sat, 13 May 2017 18:17:58 GMT  
		Size: 389.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e50e569117c6903baa66cd0a9362de2bdf91beb2fa1e3b4cf2f4f76bea04ccea`  
		Last Modified: Sat, 13 May 2017 18:17:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0-alpine`

```console
$ docker pull redis@sha256:fd4962bd03dbf3b244931e96de872cbcb3ab7b664e4f9f0d04a1274ebdcedd3b
```

-	Platforms:
	-	linux; amd64

### `redis:3.0-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4929997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c31ed84e1700d9bc205b55eb87502566cf6d609320cbe1a0ca823bc29a5b0c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:57:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 May 2017 22:57:54 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 May 2017 22:59:06 GMT
ENV REDIS_VERSION=3.0.7
# Wed, 10 May 2017 22:59:06 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Wed, 10 May 2017 22:59:07 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Wed, 10 May 2017 22:59:44 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apk del .build-deps
# Wed, 10 May 2017 22:59:46 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 May 2017 22:59:47 GMT
VOLUME [/data]
# Wed, 10 May 2017 22:59:47 GMT
WORKDIR /data
# Wed, 10 May 2017 22:59:48 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 10 May 2017 22:59:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 10 May 2017 22:59:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 22:59:52 GMT
EXPOSE 6379/tcp
# Wed, 10 May 2017 22:59:52 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eda5cfd7e0ab09fe67d2ceb73ae410d20e44ed5be84628c2367f36f039e1948`  
		Last Modified: Sat, 13 May 2017 18:17:58 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8acb752a319b92851eff05f9a1e7f4c4954054f1594b84370606206a3f4a90cc`  
		Last Modified: Sat, 13 May 2017 18:18:00 GMT  
		Size: 7.8 KB (7765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a36066be4b69cb22ed7dadbb59751d9f2b708b16223b787cd7d77d40457531c`  
		Last Modified: Sat, 13 May 2017 18:17:58 GMT  
		Size: 3.0 MB (2952465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42020d707d8a1c69bffa1df6a1650171ce78a2449d82906123f26b1ec2e2ea9a`  
		Last Modified: Sat, 13 May 2017 18:17:58 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25d32e52f14c31a8cd2659ffcd4df6dcbe7b5d75ae3055249cb7d24e5674212`  
		Last Modified: Sat, 13 May 2017 18:17:58 GMT  
		Size: 389.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e50e569117c6903baa66cd0a9362de2bdf91beb2fa1e3b4cf2f4f76bea04ccea`  
		Last Modified: Sat, 13 May 2017 18:17:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0.504-windowsservercore`

```console
$ docker pull redis@sha256:665e2b80dbbf7e54ea5c26c2839d3c0a9cdbdfc4b84c6fa18dfec56ed147d2b3
```

-	Platforms:
	-	windows; amd64

### `redis:3.0.504-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 GB (5002746656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31003113b44ac73dd6049498ccd9fdd95d74de9040ff6e6932aa579908ef248b`
-	Default Command: `["redis-server.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Wed, 18 Jan 2017 00:22:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 18 Jan 2017 22:49:45 GMT
RUN $newPath = ('C:\Redis;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 18 Jan 2017 22:49:52 GMT
ENV REDIS_VERSION=3.0.504
# Wed, 18 Jan 2017 22:49:55 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/MSOpenTech/redis/releases/download/win-3.0.504/Redis-x64-3.0.504.zip
# Wed, 18 Jan 2017 22:50:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:REDIS_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:REDIS_DOWNLOAD_URL -OutFile 'redis.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive redis.zip -DestinationPath C:\Redis; 		Write-Host 'Verifying install ("redis-server --version") ...'; 	redis-server --version; 		Write-Host 'Removing ...'; 	Remove-Item redis.zip -Force
# Wed, 18 Jan 2017 22:50:59 GMT
VOLUME [C:\data]
# Wed, 18 Jan 2017 22:51:04 GMT
WORKDIR C:\data
# Wed, 18 Jan 2017 22:51:10 GMT
EXPOSE 6379/tcp
# Wed, 18 Jan 2017 22:51:19 GMT
CMD ["redis-server.exe"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3430754e4d171ead00cf6766797a28abf3caf236f6c92c5c346ea2ad3955a129`  
		Size: 913.1 MB (913145061 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2090e83c9aacacb2da7d0836cf297e9927a3137c208e2f631e39e181e31ceb90`  
		Last Modified: Wed, 18 Jan 2017 22:56:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da44b0086252f4702e3a56302c8f8b41465bed5f455838bf271fced6fc93a0c`  
		Last Modified: Wed, 18 Jan 2017 22:56:57 GMT  
		Size: 9.1 MB (9118824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05debd25f02d505fcd5a68db4988714dc0cd9754892cf3aedb4ebdcf2ff71638`  
		Last Modified: Wed, 18 Jan 2017 22:56:55 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d705e50e17a22b40631136aee6fab031337263e3cf3264c2ce4f6a188ce4d250`  
		Last Modified: Wed, 18 Jan 2017 22:56:54 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074305b37ed17d8d277c347854d8b02a82b0fcc18399fe609c53409ae5d14f97`  
		Last Modified: Wed, 18 Jan 2017 22:56:54 GMT  
		Size: 10.5 MB (10488303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40de2940e744d0afa24d6af318d3acea7c2089c69065dee2e1c79c32f44699f9`  
		Last Modified: Wed, 18 Jan 2017 22:56:50 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa3c7fbb50da26797dc9abe65cda02e4296e9a105f1b79c35e4f319e2f97ea6`  
		Last Modified: Wed, 18 Jan 2017 22:56:50 GMT  
		Size: 1.2 KB (1235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9810fd3c4e4e81239d58573f71fb3dfffab17b20a0ca86a84e5e026a82da74`  
		Last Modified: Wed, 18 Jan 2017 22:56:50 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01b2ae1e81bf8e47caabe58ac881e7addaa9c8fd0e7d482854ade96b95977d`  
		Last Modified: Wed, 18 Jan 2017 22:56:50 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0-windowsservercore`

```console
$ docker pull redis@sha256:665e2b80dbbf7e54ea5c26c2839d3c0a9cdbdfc4b84c6fa18dfec56ed147d2b3
```

-	Platforms:
	-	windows; amd64

### `redis:3.0-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 GB (5002746656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31003113b44ac73dd6049498ccd9fdd95d74de9040ff6e6932aa579908ef248b`
-	Default Command: `["redis-server.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Wed, 18 Jan 2017 00:22:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 18 Jan 2017 22:49:45 GMT
RUN $newPath = ('C:\Redis;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 18 Jan 2017 22:49:52 GMT
ENV REDIS_VERSION=3.0.504
# Wed, 18 Jan 2017 22:49:55 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/MSOpenTech/redis/releases/download/win-3.0.504/Redis-x64-3.0.504.zip
# Wed, 18 Jan 2017 22:50:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:REDIS_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:REDIS_DOWNLOAD_URL -OutFile 'redis.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive redis.zip -DestinationPath C:\Redis; 		Write-Host 'Verifying install ("redis-server --version") ...'; 	redis-server --version; 		Write-Host 'Removing ...'; 	Remove-Item redis.zip -Force
# Wed, 18 Jan 2017 22:50:59 GMT
VOLUME [C:\data]
# Wed, 18 Jan 2017 22:51:04 GMT
WORKDIR C:\data
# Wed, 18 Jan 2017 22:51:10 GMT
EXPOSE 6379/tcp
# Wed, 18 Jan 2017 22:51:19 GMT
CMD ["redis-server.exe"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3430754e4d171ead00cf6766797a28abf3caf236f6c92c5c346ea2ad3955a129`  
		Size: 913.1 MB (913145061 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2090e83c9aacacb2da7d0836cf297e9927a3137c208e2f631e39e181e31ceb90`  
		Last Modified: Wed, 18 Jan 2017 22:56:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da44b0086252f4702e3a56302c8f8b41465bed5f455838bf271fced6fc93a0c`  
		Last Modified: Wed, 18 Jan 2017 22:56:57 GMT  
		Size: 9.1 MB (9118824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05debd25f02d505fcd5a68db4988714dc0cd9754892cf3aedb4ebdcf2ff71638`  
		Last Modified: Wed, 18 Jan 2017 22:56:55 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d705e50e17a22b40631136aee6fab031337263e3cf3264c2ce4f6a188ce4d250`  
		Last Modified: Wed, 18 Jan 2017 22:56:54 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074305b37ed17d8d277c347854d8b02a82b0fcc18399fe609c53409ae5d14f97`  
		Last Modified: Wed, 18 Jan 2017 22:56:54 GMT  
		Size: 10.5 MB (10488303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40de2940e744d0afa24d6af318d3acea7c2089c69065dee2e1c79c32f44699f9`  
		Last Modified: Wed, 18 Jan 2017 22:56:50 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa3c7fbb50da26797dc9abe65cda02e4296e9a105f1b79c35e4f319e2f97ea6`  
		Last Modified: Wed, 18 Jan 2017 22:56:50 GMT  
		Size: 1.2 KB (1235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9810fd3c4e4e81239d58573f71fb3dfffab17b20a0ca86a84e5e026a82da74`  
		Last Modified: Wed, 18 Jan 2017 22:56:50 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01b2ae1e81bf8e47caabe58ac881e7addaa9c8fd0e7d482854ade96b95977d`  
		Last Modified: Wed, 18 Jan 2017 22:56:50 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0.504-nanoserver`

```console
$ docker pull redis@sha256:9b3a1d41752327ad7a8e6038b706d46f0c291ca59b7eb99c9ce3aece167736ba
```

-	Platforms:
	-	windows; amd64

### `redis:3.0.504-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.9 MB (340944053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64716473eb329e6f572d5eecfda9de417b5787ae036f6f8c66d00af53f9ac955`
-	Default Command: `["redis-server.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 18 Jan 2017 22:52:13 GMT
RUN $newPath = ('C:\Redis;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 18 Jan 2017 22:52:16 GMT
ENV REDIS_VERSION=3.0.504
# Wed, 18 Jan 2017 22:52:22 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/MSOpenTech/redis/releases/download/win-3.0.504/Redis-x64-3.0.504.zip
# Wed, 18 Jan 2017 22:53:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:REDIS_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:REDIS_DOWNLOAD_URL -OutFile 'redis.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive redis.zip -DestinationPath C:\Redis; 		Write-Host 'Verifying install ("redis-server --version") ...'; 	redis-server --version; 		Write-Host 'Removing ...'; 	Remove-Item redis.zip -Force
# Wed, 18 Jan 2017 22:53:05 GMT
VOLUME [C:\data]
# Wed, 18 Jan 2017 22:53:12 GMT
WORKDIR C:\data
# Wed, 18 Jan 2017 22:53:15 GMT
EXPOSE 6379/tcp
# Wed, 18 Jan 2017 22:53:18 GMT
CMD ["redis-server.exe"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3ac17e2e6106d09a44642a437c318092eddd284afea0b4e707e89f6cec7a18ef`  
		Size: 80.6 MB (80617684 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e75762e22d922ed4bb69ae4e673c912389d9d70fd91eaa33cd0732f0a8e28a4e`  
		Last Modified: Fri, 13 Jan 2017 18:00:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de31e43b05dd874f8ca7edfb3aac6545866c500853b7e509ba14e9ae38ad2097`  
		Last Modified: Wed, 18 Jan 2017 22:57:11 GMT  
		Size: 872.2 KB (872241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc42d6aa048346ecb0ffbbe7d7de7113cf044664ace34bf3b8808bfba9c2d1e0`  
		Last Modified: Wed, 18 Jan 2017 22:57:10 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4f5f2aea20ab72b0318db79b248da0413e78b81892b8b00570fd35740c1608`  
		Last Modified: Wed, 18 Jan 2017 22:57:10 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c544bd7a66689165d89e0e9586e7b4bb8623372f57a2b236913e5e651e7aad`  
		Last Modified: Wed, 18 Jan 2017 22:57:09 GMT  
		Size: 6.8 MB (6756400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd44c0ae3b6b24a1e4cabfb6da514db05da87d277f3e416bbd0ab8ee93a31c7`  
		Last Modified: Wed, 18 Jan 2017 22:57:07 GMT  
		Size: 969.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848cd6a30bd1810e53e8fe0ed08f060890d141b591bb70bc916b25064ab00ac7`  
		Last Modified: Wed, 18 Jan 2017 22:57:07 GMT  
		Size: 969.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2516602aeba60687d4da473e7a48cbe63a4091325d8bfeb74379d5fe67a0f8ea`  
		Last Modified: Wed, 18 Jan 2017 22:57:08 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0273255796b68e51b9b7d82ea2fb7f215981da61f73f51f74988ab9e982cf1`  
		Last Modified: Wed, 18 Jan 2017 22:57:07 GMT  
		Size: 966.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0-nanoserver`

```console
$ docker pull redis@sha256:9b3a1d41752327ad7a8e6038b706d46f0c291ca59b7eb99c9ce3aece167736ba
```

-	Platforms:
	-	windows; amd64

### `redis:3.0-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.9 MB (340944053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64716473eb329e6f572d5eecfda9de417b5787ae036f6f8c66d00af53f9ac955`
-	Default Command: `["redis-server.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 18 Jan 2017 22:52:13 GMT
RUN $newPath = ('C:\Redis;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 18 Jan 2017 22:52:16 GMT
ENV REDIS_VERSION=3.0.504
# Wed, 18 Jan 2017 22:52:22 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/MSOpenTech/redis/releases/download/win-3.0.504/Redis-x64-3.0.504.zip
# Wed, 18 Jan 2017 22:53:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:REDIS_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:REDIS_DOWNLOAD_URL -OutFile 'redis.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive redis.zip -DestinationPath C:\Redis; 		Write-Host 'Verifying install ("redis-server --version") ...'; 	redis-server --version; 		Write-Host 'Removing ...'; 	Remove-Item redis.zip -Force
# Wed, 18 Jan 2017 22:53:05 GMT
VOLUME [C:\data]
# Wed, 18 Jan 2017 22:53:12 GMT
WORKDIR C:\data
# Wed, 18 Jan 2017 22:53:15 GMT
EXPOSE 6379/tcp
# Wed, 18 Jan 2017 22:53:18 GMT
CMD ["redis-server.exe"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3ac17e2e6106d09a44642a437c318092eddd284afea0b4e707e89f6cec7a18ef`  
		Size: 80.6 MB (80617684 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e75762e22d922ed4bb69ae4e673c912389d9d70fd91eaa33cd0732f0a8e28a4e`  
		Last Modified: Fri, 13 Jan 2017 18:00:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de31e43b05dd874f8ca7edfb3aac6545866c500853b7e509ba14e9ae38ad2097`  
		Last Modified: Wed, 18 Jan 2017 22:57:11 GMT  
		Size: 872.2 KB (872241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc42d6aa048346ecb0ffbbe7d7de7113cf044664ace34bf3b8808bfba9c2d1e0`  
		Last Modified: Wed, 18 Jan 2017 22:57:10 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4f5f2aea20ab72b0318db79b248da0413e78b81892b8b00570fd35740c1608`  
		Last Modified: Wed, 18 Jan 2017 22:57:10 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c544bd7a66689165d89e0e9586e7b4bb8623372f57a2b236913e5e651e7aad`  
		Last Modified: Wed, 18 Jan 2017 22:57:09 GMT  
		Size: 6.8 MB (6756400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd44c0ae3b6b24a1e4cabfb6da514db05da87d277f3e416bbd0ab8ee93a31c7`  
		Last Modified: Wed, 18 Jan 2017 22:57:07 GMT  
		Size: 969.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848cd6a30bd1810e53e8fe0ed08f060890d141b591bb70bc916b25064ab00ac7`  
		Last Modified: Wed, 18 Jan 2017 22:57:07 GMT  
		Size: 969.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2516602aeba60687d4da473e7a48cbe63a4091325d8bfeb74379d5fe67a0f8ea`  
		Last Modified: Wed, 18 Jan 2017 22:57:08 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0273255796b68e51b9b7d82ea2fb7f215981da61f73f51f74988ab9e982cf1`  
		Last Modified: Wed, 18 Jan 2017 22:57:07 GMT  
		Size: 966.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.8`

```console
$ docker pull redis@sha256:8eb0cd22644dc1218680db876411f45baac493ac9a0bfd391d6efdef0767ea6b
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.8` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.3 MB (76260776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0db2a690b89edb3b0d2eda8b2a58dc74d9dcf3c9fb93e788f39ffb8d4342f77a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:42:16 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 10 May 2017 15:42:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:42:32 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 May 2017 15:42:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 May 2017 15:42:37 GMT
ENV REDIS_VERSION=3.2.8
# Wed, 10 May 2017 15:42:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Wed, 10 May 2017 15:42:39 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Wed, 10 May 2017 15:43:32 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 10 May 2017 15:43:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 May 2017 15:43:34 GMT
VOLUME [/data]
# Wed, 10 May 2017 15:43:35 GMT
WORKDIR /data
# Wed, 10 May 2017 15:43:36 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 10 May 2017 15:43:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 15:43:37 GMT
EXPOSE 6379/tcp
# Wed, 10 May 2017 15:43:38 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b690bc4eaa6434456ceaccf9b3e42229bd2691869ba439e515b28fe1a66c009`  
		Last Modified: Sat, 13 May 2017 18:16:18 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdd94354d2a873333a205a02dbb853dd763c73600e0cf64f60b4bd7ab694875`  
		Last Modified: Sat, 13 May 2017 18:16:20 GMT  
		Size: 17.3 MB (17300175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c1f30d820f0457df186531dc4478967d075ba449bd3168a3e82137a47daf03`  
		Last Modified: Sat, 13 May 2017 18:16:16 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e7da08f0bcf63d01ad02d7ebcf1dd5850dd866609787ae2452c7579308d3ef`  
		Last Modified: Sat, 13 May 2017 18:18:49 GMT  
		Size: 5.6 MB (5555218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f871cc375c9170b670b42f44aeb39b2332d8391fc5bc5b3e8bedb4996ca456f`  
		Last Modified: Sat, 13 May 2017 18:18:48 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e72f4b1d38f9aeffde677425e93fa0ca0c339475c189782f8a56fb50933ae5c`  
		Last Modified: Sat, 13 May 2017 18:18:49 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2`

```console
$ docker pull redis@sha256:8eb0cd22644dc1218680db876411f45baac493ac9a0bfd391d6efdef0767ea6b
```

-	Platforms:
	-	linux; amd64

### `redis:3.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.3 MB (76260776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0db2a690b89edb3b0d2eda8b2a58dc74d9dcf3c9fb93e788f39ffb8d4342f77a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:42:16 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 10 May 2017 15:42:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:42:32 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 May 2017 15:42:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 May 2017 15:42:37 GMT
ENV REDIS_VERSION=3.2.8
# Wed, 10 May 2017 15:42:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Wed, 10 May 2017 15:42:39 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Wed, 10 May 2017 15:43:32 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 10 May 2017 15:43:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 May 2017 15:43:34 GMT
VOLUME [/data]
# Wed, 10 May 2017 15:43:35 GMT
WORKDIR /data
# Wed, 10 May 2017 15:43:36 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 10 May 2017 15:43:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 15:43:37 GMT
EXPOSE 6379/tcp
# Wed, 10 May 2017 15:43:38 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b690bc4eaa6434456ceaccf9b3e42229bd2691869ba439e515b28fe1a66c009`  
		Last Modified: Sat, 13 May 2017 18:16:18 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdd94354d2a873333a205a02dbb853dd763c73600e0cf64f60b4bd7ab694875`  
		Last Modified: Sat, 13 May 2017 18:16:20 GMT  
		Size: 17.3 MB (17300175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c1f30d820f0457df186531dc4478967d075ba449bd3168a3e82137a47daf03`  
		Last Modified: Sat, 13 May 2017 18:16:16 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e7da08f0bcf63d01ad02d7ebcf1dd5850dd866609787ae2452c7579308d3ef`  
		Last Modified: Sat, 13 May 2017 18:18:49 GMT  
		Size: 5.6 MB (5555218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f871cc375c9170b670b42f44aeb39b2332d8391fc5bc5b3e8bedb4996ca456f`  
		Last Modified: Sat, 13 May 2017 18:18:48 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e72f4b1d38f9aeffde677425e93fa0ca0c339475c189782f8a56fb50933ae5c`  
		Last Modified: Sat, 13 May 2017 18:18:49 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3`

```console
$ docker pull redis@sha256:8eb0cd22644dc1218680db876411f45baac493ac9a0bfd391d6efdef0767ea6b
```

-	Platforms:
	-	linux; amd64

### `redis:3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.3 MB (76260776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0db2a690b89edb3b0d2eda8b2a58dc74d9dcf3c9fb93e788f39ffb8d4342f77a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:42:16 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 10 May 2017 15:42:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:42:32 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 May 2017 15:42:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 May 2017 15:42:37 GMT
ENV REDIS_VERSION=3.2.8
# Wed, 10 May 2017 15:42:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Wed, 10 May 2017 15:42:39 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Wed, 10 May 2017 15:43:32 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 10 May 2017 15:43:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 May 2017 15:43:34 GMT
VOLUME [/data]
# Wed, 10 May 2017 15:43:35 GMT
WORKDIR /data
# Wed, 10 May 2017 15:43:36 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 10 May 2017 15:43:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 15:43:37 GMT
EXPOSE 6379/tcp
# Wed, 10 May 2017 15:43:38 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b690bc4eaa6434456ceaccf9b3e42229bd2691869ba439e515b28fe1a66c009`  
		Last Modified: Sat, 13 May 2017 18:16:18 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdd94354d2a873333a205a02dbb853dd763c73600e0cf64f60b4bd7ab694875`  
		Last Modified: Sat, 13 May 2017 18:16:20 GMT  
		Size: 17.3 MB (17300175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c1f30d820f0457df186531dc4478967d075ba449bd3168a3e82137a47daf03`  
		Last Modified: Sat, 13 May 2017 18:16:16 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e7da08f0bcf63d01ad02d7ebcf1dd5850dd866609787ae2452c7579308d3ef`  
		Last Modified: Sat, 13 May 2017 18:18:49 GMT  
		Size: 5.6 MB (5555218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f871cc375c9170b670b42f44aeb39b2332d8391fc5bc5b3e8bedb4996ca456f`  
		Last Modified: Sat, 13 May 2017 18:18:48 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e72f4b1d38f9aeffde677425e93fa0ca0c339475c189782f8a56fb50933ae5c`  
		Last Modified: Sat, 13 May 2017 18:18:49 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:latest`

```console
$ docker pull redis@sha256:8eb0cd22644dc1218680db876411f45baac493ac9a0bfd391d6efdef0767ea6b
```

-	Platforms:
	-	linux; amd64

### `redis:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.3 MB (76260776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0db2a690b89edb3b0d2eda8b2a58dc74d9dcf3c9fb93e788f39ffb8d4342f77a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:42:16 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 10 May 2017 15:42:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:42:32 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 May 2017 15:42:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 May 2017 15:42:37 GMT
ENV REDIS_VERSION=3.2.8
# Wed, 10 May 2017 15:42:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Wed, 10 May 2017 15:42:39 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Wed, 10 May 2017 15:43:32 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 10 May 2017 15:43:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 May 2017 15:43:34 GMT
VOLUME [/data]
# Wed, 10 May 2017 15:43:35 GMT
WORKDIR /data
# Wed, 10 May 2017 15:43:36 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 10 May 2017 15:43:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 15:43:37 GMT
EXPOSE 6379/tcp
# Wed, 10 May 2017 15:43:38 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b690bc4eaa6434456ceaccf9b3e42229bd2691869ba439e515b28fe1a66c009`  
		Last Modified: Sat, 13 May 2017 18:16:18 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdd94354d2a873333a205a02dbb853dd763c73600e0cf64f60b4bd7ab694875`  
		Last Modified: Sat, 13 May 2017 18:16:20 GMT  
		Size: 17.3 MB (17300175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c1f30d820f0457df186531dc4478967d075ba449bd3168a3e82137a47daf03`  
		Last Modified: Sat, 13 May 2017 18:16:16 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e7da08f0bcf63d01ad02d7ebcf1dd5850dd866609787ae2452c7579308d3ef`  
		Last Modified: Sat, 13 May 2017 18:18:49 GMT  
		Size: 5.6 MB (5555218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f871cc375c9170b670b42f44aeb39b2332d8391fc5bc5b3e8bedb4996ca456f`  
		Last Modified: Sat, 13 May 2017 18:18:48 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e72f4b1d38f9aeffde677425e93fa0ca0c339475c189782f8a56fb50933ae5c`  
		Last Modified: Sat, 13 May 2017 18:18:49 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.8-32bit`

```console
$ docker pull redis@sha256:1dcc972894dc12c0653c20ae2ea87e7bcb86bf3bdb03412b4b4569a6510b7dfe
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.8-32bit` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80101483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35b043ea0b61dec497847e74fd41aa0ef01b5a0bdea038aaabf5f0568b635971`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:42:16 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 10 May 2017 15:42:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:42:32 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 May 2017 15:42:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 May 2017 15:42:37 GMT
ENV REDIS_VERSION=3.2.8
# Wed, 10 May 2017 15:42:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Wed, 10 May 2017 15:42:39 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Wed, 10 May 2017 15:44:06 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:45:08 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 10 May 2017 15:45:09 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 May 2017 15:45:10 GMT
VOLUME [/data]
# Wed, 10 May 2017 15:45:11 GMT
WORKDIR /data
# Wed, 10 May 2017 15:45:12 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 10 May 2017 15:45:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 15:45:13 GMT
EXPOSE 6379/tcp
# Wed, 10 May 2017 15:45:14 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b690bc4eaa6434456ceaccf9b3e42229bd2691869ba439e515b28fe1a66c009`  
		Last Modified: Sat, 13 May 2017 18:16:18 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdd94354d2a873333a205a02dbb853dd763c73600e0cf64f60b4bd7ab694875`  
		Last Modified: Sat, 13 May 2017 18:16:20 GMT  
		Size: 17.3 MB (17300175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c1f30d820f0457df186531dc4478967d075ba449bd3168a3e82137a47daf03`  
		Last Modified: Sat, 13 May 2017 18:16:16 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1bd9c47ecda5c88726a076abf6d92bbeb387ba8636765712044011a356f447`  
		Last Modified: Sat, 13 May 2017 18:20:22 GMT  
		Size: 4.4 MB (4360711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a577268cb752d878578ca2d03a9a95d9c09d63482f96bf4961941c98c57d8e86`  
		Last Modified: Sat, 13 May 2017 18:20:22 GMT  
		Size: 5.0 MB (5035212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eee120ee4cdc0134778718724baae80dfdb85588c37591f3900a145d160a5eb`  
		Last Modified: Sat, 13 May 2017 18:20:22 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3727a9835b8aa9e3ae18b6b6b44267528ef9687213ccd55b123cb097e50d7215`  
		Last Modified: Sat, 13 May 2017 18:20:21 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-32bit`

```console
$ docker pull redis@sha256:1dcc972894dc12c0653c20ae2ea87e7bcb86bf3bdb03412b4b4569a6510b7dfe
```

-	Platforms:
	-	linux; amd64

### `redis:3.2-32bit` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80101483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35b043ea0b61dec497847e74fd41aa0ef01b5a0bdea038aaabf5f0568b635971`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:42:16 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 10 May 2017 15:42:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:42:32 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 May 2017 15:42:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 May 2017 15:42:37 GMT
ENV REDIS_VERSION=3.2.8
# Wed, 10 May 2017 15:42:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Wed, 10 May 2017 15:42:39 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Wed, 10 May 2017 15:44:06 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:45:08 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 10 May 2017 15:45:09 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 May 2017 15:45:10 GMT
VOLUME [/data]
# Wed, 10 May 2017 15:45:11 GMT
WORKDIR /data
# Wed, 10 May 2017 15:45:12 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 10 May 2017 15:45:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 15:45:13 GMT
EXPOSE 6379/tcp
# Wed, 10 May 2017 15:45:14 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b690bc4eaa6434456ceaccf9b3e42229bd2691869ba439e515b28fe1a66c009`  
		Last Modified: Sat, 13 May 2017 18:16:18 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdd94354d2a873333a205a02dbb853dd763c73600e0cf64f60b4bd7ab694875`  
		Last Modified: Sat, 13 May 2017 18:16:20 GMT  
		Size: 17.3 MB (17300175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c1f30d820f0457df186531dc4478967d075ba449bd3168a3e82137a47daf03`  
		Last Modified: Sat, 13 May 2017 18:16:16 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1bd9c47ecda5c88726a076abf6d92bbeb387ba8636765712044011a356f447`  
		Last Modified: Sat, 13 May 2017 18:20:22 GMT  
		Size: 4.4 MB (4360711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a577268cb752d878578ca2d03a9a95d9c09d63482f96bf4961941c98c57d8e86`  
		Last Modified: Sat, 13 May 2017 18:20:22 GMT  
		Size: 5.0 MB (5035212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eee120ee4cdc0134778718724baae80dfdb85588c37591f3900a145d160a5eb`  
		Last Modified: Sat, 13 May 2017 18:20:22 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3727a9835b8aa9e3ae18b6b6b44267528ef9687213ccd55b123cb097e50d7215`  
		Last Modified: Sat, 13 May 2017 18:20:21 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-32bit`

```console
$ docker pull redis@sha256:1dcc972894dc12c0653c20ae2ea87e7bcb86bf3bdb03412b4b4569a6510b7dfe
```

-	Platforms:
	-	linux; amd64

### `redis:3-32bit` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80101483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35b043ea0b61dec497847e74fd41aa0ef01b5a0bdea038aaabf5f0568b635971`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:42:16 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 10 May 2017 15:42:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:42:32 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 May 2017 15:42:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 May 2017 15:42:37 GMT
ENV REDIS_VERSION=3.2.8
# Wed, 10 May 2017 15:42:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Wed, 10 May 2017 15:42:39 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Wed, 10 May 2017 15:44:06 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:45:08 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 10 May 2017 15:45:09 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 May 2017 15:45:10 GMT
VOLUME [/data]
# Wed, 10 May 2017 15:45:11 GMT
WORKDIR /data
# Wed, 10 May 2017 15:45:12 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 10 May 2017 15:45:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 15:45:13 GMT
EXPOSE 6379/tcp
# Wed, 10 May 2017 15:45:14 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b690bc4eaa6434456ceaccf9b3e42229bd2691869ba439e515b28fe1a66c009`  
		Last Modified: Sat, 13 May 2017 18:16:18 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdd94354d2a873333a205a02dbb853dd763c73600e0cf64f60b4bd7ab694875`  
		Last Modified: Sat, 13 May 2017 18:16:20 GMT  
		Size: 17.3 MB (17300175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c1f30d820f0457df186531dc4478967d075ba449bd3168a3e82137a47daf03`  
		Last Modified: Sat, 13 May 2017 18:16:16 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1bd9c47ecda5c88726a076abf6d92bbeb387ba8636765712044011a356f447`  
		Last Modified: Sat, 13 May 2017 18:20:22 GMT  
		Size: 4.4 MB (4360711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a577268cb752d878578ca2d03a9a95d9c09d63482f96bf4961941c98c57d8e86`  
		Last Modified: Sat, 13 May 2017 18:20:22 GMT  
		Size: 5.0 MB (5035212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eee120ee4cdc0134778718724baae80dfdb85588c37591f3900a145d160a5eb`  
		Last Modified: Sat, 13 May 2017 18:20:22 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3727a9835b8aa9e3ae18b6b6b44267528ef9687213ccd55b123cb097e50d7215`  
		Last Modified: Sat, 13 May 2017 18:20:21 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:32bit`

```console
$ docker pull redis@sha256:1dcc972894dc12c0653c20ae2ea87e7bcb86bf3bdb03412b4b4569a6510b7dfe
```

-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80101483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35b043ea0b61dec497847e74fd41aa0ef01b5a0bdea038aaabf5f0568b635971`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:42:16 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 10 May 2017 15:42:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:42:32 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 May 2017 15:42:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 May 2017 15:42:37 GMT
ENV REDIS_VERSION=3.2.8
# Wed, 10 May 2017 15:42:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Wed, 10 May 2017 15:42:39 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Wed, 10 May 2017 15:44:06 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:45:08 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 10 May 2017 15:45:09 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 May 2017 15:45:10 GMT
VOLUME [/data]
# Wed, 10 May 2017 15:45:11 GMT
WORKDIR /data
# Wed, 10 May 2017 15:45:12 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 10 May 2017 15:45:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 15:45:13 GMT
EXPOSE 6379/tcp
# Wed, 10 May 2017 15:45:14 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b690bc4eaa6434456ceaccf9b3e42229bd2691869ba439e515b28fe1a66c009`  
		Last Modified: Sat, 13 May 2017 18:16:18 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdd94354d2a873333a205a02dbb853dd763c73600e0cf64f60b4bd7ab694875`  
		Last Modified: Sat, 13 May 2017 18:16:20 GMT  
		Size: 17.3 MB (17300175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c1f30d820f0457df186531dc4478967d075ba449bd3168a3e82137a47daf03`  
		Last Modified: Sat, 13 May 2017 18:16:16 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1bd9c47ecda5c88726a076abf6d92bbeb387ba8636765712044011a356f447`  
		Last Modified: Sat, 13 May 2017 18:20:22 GMT  
		Size: 4.4 MB (4360711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a577268cb752d878578ca2d03a9a95d9c09d63482f96bf4961941c98c57d8e86`  
		Last Modified: Sat, 13 May 2017 18:20:22 GMT  
		Size: 5.0 MB (5035212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eee120ee4cdc0134778718724baae80dfdb85588c37591f3900a145d160a5eb`  
		Last Modified: Sat, 13 May 2017 18:20:22 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3727a9835b8aa9e3ae18b6b6b44267528ef9687213ccd55b123cb097e50d7215`  
		Last Modified: Sat, 13 May 2017 18:20:21 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.8-alpine`

```console
$ docker pull redis@sha256:262d8bd214e74cebb3a0573e0f3a042aa3ddade36cf39a4891dd1b05b636bc55
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.8-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7465592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:692d3331d29e403ad0deb2b1a9a5e145a38bd129a785793308c308653b02aaf7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:57:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 May 2017 22:57:54 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 May 2017 22:57:55 GMT
ENV REDIS_VERSION=3.2.8
# Wed, 10 May 2017 22:57:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Wed, 10 May 2017 22:57:56 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Wed, 10 May 2017 22:58:40 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Wed, 10 May 2017 22:58:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 May 2017 22:58:42 GMT
VOLUME [/data]
# Wed, 10 May 2017 22:58:43 GMT
WORKDIR /data
# Wed, 10 May 2017 22:58:44 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 10 May 2017 22:58:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 22:58:45 GMT
EXPOSE 6379/tcp
# Wed, 10 May 2017 22:58:46 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eda5cfd7e0ab09fe67d2ceb73ae410d20e44ed5be84628c2367f36f039e1948`  
		Last Modified: Sat, 13 May 2017 18:17:58 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8acb752a319b92851eff05f9a1e7f4c4954054f1594b84370606206a3f4a90cc`  
		Last Modified: Sat, 13 May 2017 18:18:00 GMT  
		Size: 7.8 KB (7765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955021cea7910b47a95dbf85b0cb6c89975c0ba1537f23633308aa5b772c9ccb`  
		Last Modified: Sat, 13 May 2017 18:21:55 GMT  
		Size: 5.5 MB (5488182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d301d906247ca3bddc5971e3f4e39b4d9bf419848c736a78fb400d82829b78b8`  
		Last Modified: Sat, 13 May 2017 18:21:54 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff438d9e11c60145c0fc52ea424148a5c01f07c044f3cfba4aa7ba020f716cdf`  
		Last Modified: Sat, 13 May 2017 18:21:54 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-alpine`

```console
$ docker pull redis@sha256:262d8bd214e74cebb3a0573e0f3a042aa3ddade36cf39a4891dd1b05b636bc55
```

-	Platforms:
	-	linux; amd64

### `redis:3.2-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7465592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:692d3331d29e403ad0deb2b1a9a5e145a38bd129a785793308c308653b02aaf7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:57:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 May 2017 22:57:54 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 May 2017 22:57:55 GMT
ENV REDIS_VERSION=3.2.8
# Wed, 10 May 2017 22:57:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Wed, 10 May 2017 22:57:56 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Wed, 10 May 2017 22:58:40 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Wed, 10 May 2017 22:58:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 May 2017 22:58:42 GMT
VOLUME [/data]
# Wed, 10 May 2017 22:58:43 GMT
WORKDIR /data
# Wed, 10 May 2017 22:58:44 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 10 May 2017 22:58:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 22:58:45 GMT
EXPOSE 6379/tcp
# Wed, 10 May 2017 22:58:46 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eda5cfd7e0ab09fe67d2ceb73ae410d20e44ed5be84628c2367f36f039e1948`  
		Last Modified: Sat, 13 May 2017 18:17:58 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8acb752a319b92851eff05f9a1e7f4c4954054f1594b84370606206a3f4a90cc`  
		Last Modified: Sat, 13 May 2017 18:18:00 GMT  
		Size: 7.8 KB (7765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955021cea7910b47a95dbf85b0cb6c89975c0ba1537f23633308aa5b772c9ccb`  
		Last Modified: Sat, 13 May 2017 18:21:55 GMT  
		Size: 5.5 MB (5488182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d301d906247ca3bddc5971e3f4e39b4d9bf419848c736a78fb400d82829b78b8`  
		Last Modified: Sat, 13 May 2017 18:21:54 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff438d9e11c60145c0fc52ea424148a5c01f07c044f3cfba4aa7ba020f716cdf`  
		Last Modified: Sat, 13 May 2017 18:21:54 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-alpine`

```console
$ docker pull redis@sha256:262d8bd214e74cebb3a0573e0f3a042aa3ddade36cf39a4891dd1b05b636bc55
```

-	Platforms:
	-	linux; amd64

### `redis:3-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7465592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:692d3331d29e403ad0deb2b1a9a5e145a38bd129a785793308c308653b02aaf7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:57:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 May 2017 22:57:54 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 May 2017 22:57:55 GMT
ENV REDIS_VERSION=3.2.8
# Wed, 10 May 2017 22:57:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Wed, 10 May 2017 22:57:56 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Wed, 10 May 2017 22:58:40 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Wed, 10 May 2017 22:58:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 May 2017 22:58:42 GMT
VOLUME [/data]
# Wed, 10 May 2017 22:58:43 GMT
WORKDIR /data
# Wed, 10 May 2017 22:58:44 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 10 May 2017 22:58:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 22:58:45 GMT
EXPOSE 6379/tcp
# Wed, 10 May 2017 22:58:46 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eda5cfd7e0ab09fe67d2ceb73ae410d20e44ed5be84628c2367f36f039e1948`  
		Last Modified: Sat, 13 May 2017 18:17:58 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8acb752a319b92851eff05f9a1e7f4c4954054f1594b84370606206a3f4a90cc`  
		Last Modified: Sat, 13 May 2017 18:18:00 GMT  
		Size: 7.8 KB (7765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955021cea7910b47a95dbf85b0cb6c89975c0ba1537f23633308aa5b772c9ccb`  
		Last Modified: Sat, 13 May 2017 18:21:55 GMT  
		Size: 5.5 MB (5488182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d301d906247ca3bddc5971e3f4e39b4d9bf419848c736a78fb400d82829b78b8`  
		Last Modified: Sat, 13 May 2017 18:21:54 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff438d9e11c60145c0fc52ea424148a5c01f07c044f3cfba4aa7ba020f716cdf`  
		Last Modified: Sat, 13 May 2017 18:21:54 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine`

```console
$ docker pull redis@sha256:262d8bd214e74cebb3a0573e0f3a042aa3ddade36cf39a4891dd1b05b636bc55
```

-	Platforms:
	-	linux; amd64

### `redis:alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7465592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:692d3331d29e403ad0deb2b1a9a5e145a38bd129a785793308c308653b02aaf7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:57:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 May 2017 22:57:54 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 May 2017 22:57:55 GMT
ENV REDIS_VERSION=3.2.8
# Wed, 10 May 2017 22:57:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Wed, 10 May 2017 22:57:56 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Wed, 10 May 2017 22:58:40 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Wed, 10 May 2017 22:58:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 May 2017 22:58:42 GMT
VOLUME [/data]
# Wed, 10 May 2017 22:58:43 GMT
WORKDIR /data
# Wed, 10 May 2017 22:58:44 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 10 May 2017 22:58:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 22:58:45 GMT
EXPOSE 6379/tcp
# Wed, 10 May 2017 22:58:46 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eda5cfd7e0ab09fe67d2ceb73ae410d20e44ed5be84628c2367f36f039e1948`  
		Last Modified: Sat, 13 May 2017 18:17:58 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8acb752a319b92851eff05f9a1e7f4c4954054f1594b84370606206a3f4a90cc`  
		Last Modified: Sat, 13 May 2017 18:18:00 GMT  
		Size: 7.8 KB (7765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955021cea7910b47a95dbf85b0cb6c89975c0ba1537f23633308aa5b772c9ccb`  
		Last Modified: Sat, 13 May 2017 18:21:55 GMT  
		Size: 5.5 MB (5488182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d301d906247ca3bddc5971e3f4e39b4d9bf419848c736a78fb400d82829b78b8`  
		Last Modified: Sat, 13 May 2017 18:21:54 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff438d9e11c60145c0fc52ea424148a5c01f07c044f3cfba4aa7ba020f716cdf`  
		Last Modified: Sat, 13 May 2017 18:21:54 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.100-windowsservercore`

```console
$ docker pull redis@sha256:60e2f0698630df1df2091372a143f39ebe1fa39a6b1f89fd7d0f566700046ac7
```

-	Platforms:
	-	windows; amd64

### `redis:3.2.100-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 GB (5011103673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e19f818176bbd1aeb3f95daea3bd4513cf35e00801199b4f8c03fff6db79c07`
-	Default Command: `["redis-server.exe","C:\\Redis\\redis.docker.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Wed, 18 Jan 2017 00:22:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 18 Jan 2017 22:49:45 GMT
RUN $newPath = ('C:\Redis;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 18 Jan 2017 22:53:25 GMT
ENV REDIS_VERSION=3.2.100
# Wed, 18 Jan 2017 22:53:33 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/MSOpenTech/redis/releases/download/win-3.2.100/Redis-x64-3.2.100.zip
# Wed, 18 Jan 2017 22:54:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:REDIS_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:REDIS_DOWNLOAD_URL -OutFile 'redis.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive redis.zip -DestinationPath C:\Redis; 		Write-Host 'Verifying install ("redis-server --version") ...'; 	redis-server --version; 		Write-Host 'Removing ...'; 	Remove-Item redis.zip -Force
# Wed, 18 Jan 2017 22:55:24 GMT
RUN (Get-Content C:\Redis\redis.windows.conf) 	-Replace '^(bind)\s+.*$', '$1 0.0.0.0' 	-Replace '^(protected-mode)\s+.*$', '$1 no' 	| Set-Content C:\Redis\redis.docker.conf
# Wed, 18 Jan 2017 22:55:29 GMT
VOLUME [C:\data]
# Wed, 18 Jan 2017 22:55:32 GMT
WORKDIR C:\data
# Wed, 18 Jan 2017 22:55:37 GMT
EXPOSE 6379/tcp
# Wed, 18 Jan 2017 22:55:41 GMT
CMD ["redis-server.exe" "C:\\Redis\\redis.docker.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3430754e4d171ead00cf6766797a28abf3caf236f6c92c5c346ea2ad3955a129`  
		Size: 913.1 MB (913145061 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2090e83c9aacacb2da7d0836cf297e9927a3137c208e2f631e39e181e31ceb90`  
		Last Modified: Wed, 18 Jan 2017 22:56:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da44b0086252f4702e3a56302c8f8b41465bed5f455838bf271fced6fc93a0c`  
		Last Modified: Wed, 18 Jan 2017 22:56:57 GMT  
		Size: 9.1 MB (9118824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384b378de0002282c7b070dee79c606a44d9fbb8fa7e9dfd07e41a72d18f935f`  
		Last Modified: Wed, 18 Jan 2017 22:57:26 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90e71dc0a25426b16deb2e33f62fc9f58105e7bfbcf8c3160c9c21ae39b0cf86`  
		Last Modified: Wed, 18 Jan 2017 22:57:25 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc4ffe232243d863a27a6fe85e1bd3f3fab3a6161921dc38f472031fcb4c7303`  
		Last Modified: Wed, 18 Jan 2017 22:57:30 GMT  
		Size: 14.3 MB (14310413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0188853bfa921906bf823bcffe4249ebad6294e84d7bcc806e251e36ca259ad5`  
		Last Modified: Wed, 18 Jan 2017 22:57:22 GMT  
		Size: 4.5 MB (4534905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec86ffa3d1d0c5fa801f6fd03736ab2d6b4d546db71bb6e634d4ce5006e1c5c7`  
		Last Modified: Wed, 18 Jan 2017 22:57:20 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07eda4f36764030981f1274d0cf9d991012ebc5b336c479b6db4d3c61a4f7ed6`  
		Last Modified: Wed, 18 Jan 2017 22:57:20 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb1b5f4cf90fb05950e298d1aa9d1dc2874e497fef0f5329c5ce55251d7cf7d9`  
		Last Modified: Wed, 18 Jan 2017 22:57:20 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc54094d7877932bd12d15a50fa999e0d90132b29b9734831226c0002e4c909a`  
		Last Modified: Wed, 18 Jan 2017 22:57:20 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-windowsservercore`

```console
$ docker pull redis@sha256:60e2f0698630df1df2091372a143f39ebe1fa39a6b1f89fd7d0f566700046ac7
```

-	Platforms:
	-	windows; amd64

### `redis:3.2-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 GB (5011103673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e19f818176bbd1aeb3f95daea3bd4513cf35e00801199b4f8c03fff6db79c07`
-	Default Command: `["redis-server.exe","C:\\Redis\\redis.docker.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Wed, 18 Jan 2017 00:22:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 18 Jan 2017 22:49:45 GMT
RUN $newPath = ('C:\Redis;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 18 Jan 2017 22:53:25 GMT
ENV REDIS_VERSION=3.2.100
# Wed, 18 Jan 2017 22:53:33 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/MSOpenTech/redis/releases/download/win-3.2.100/Redis-x64-3.2.100.zip
# Wed, 18 Jan 2017 22:54:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:REDIS_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:REDIS_DOWNLOAD_URL -OutFile 'redis.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive redis.zip -DestinationPath C:\Redis; 		Write-Host 'Verifying install ("redis-server --version") ...'; 	redis-server --version; 		Write-Host 'Removing ...'; 	Remove-Item redis.zip -Force
# Wed, 18 Jan 2017 22:55:24 GMT
RUN (Get-Content C:\Redis\redis.windows.conf) 	-Replace '^(bind)\s+.*$', '$1 0.0.0.0' 	-Replace '^(protected-mode)\s+.*$', '$1 no' 	| Set-Content C:\Redis\redis.docker.conf
# Wed, 18 Jan 2017 22:55:29 GMT
VOLUME [C:\data]
# Wed, 18 Jan 2017 22:55:32 GMT
WORKDIR C:\data
# Wed, 18 Jan 2017 22:55:37 GMT
EXPOSE 6379/tcp
# Wed, 18 Jan 2017 22:55:41 GMT
CMD ["redis-server.exe" "C:\\Redis\\redis.docker.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3430754e4d171ead00cf6766797a28abf3caf236f6c92c5c346ea2ad3955a129`  
		Size: 913.1 MB (913145061 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2090e83c9aacacb2da7d0836cf297e9927a3137c208e2f631e39e181e31ceb90`  
		Last Modified: Wed, 18 Jan 2017 22:56:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da44b0086252f4702e3a56302c8f8b41465bed5f455838bf271fced6fc93a0c`  
		Last Modified: Wed, 18 Jan 2017 22:56:57 GMT  
		Size: 9.1 MB (9118824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384b378de0002282c7b070dee79c606a44d9fbb8fa7e9dfd07e41a72d18f935f`  
		Last Modified: Wed, 18 Jan 2017 22:57:26 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90e71dc0a25426b16deb2e33f62fc9f58105e7bfbcf8c3160c9c21ae39b0cf86`  
		Last Modified: Wed, 18 Jan 2017 22:57:25 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc4ffe232243d863a27a6fe85e1bd3f3fab3a6161921dc38f472031fcb4c7303`  
		Last Modified: Wed, 18 Jan 2017 22:57:30 GMT  
		Size: 14.3 MB (14310413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0188853bfa921906bf823bcffe4249ebad6294e84d7bcc806e251e36ca259ad5`  
		Last Modified: Wed, 18 Jan 2017 22:57:22 GMT  
		Size: 4.5 MB (4534905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec86ffa3d1d0c5fa801f6fd03736ab2d6b4d546db71bb6e634d4ce5006e1c5c7`  
		Last Modified: Wed, 18 Jan 2017 22:57:20 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07eda4f36764030981f1274d0cf9d991012ebc5b336c479b6db4d3c61a4f7ed6`  
		Last Modified: Wed, 18 Jan 2017 22:57:20 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb1b5f4cf90fb05950e298d1aa9d1dc2874e497fef0f5329c5ce55251d7cf7d9`  
		Last Modified: Wed, 18 Jan 2017 22:57:20 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc54094d7877932bd12d15a50fa999e0d90132b29b9734831226c0002e4c909a`  
		Last Modified: Wed, 18 Jan 2017 22:57:20 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-windowsservercore`

```console
$ docker pull redis@sha256:60e2f0698630df1df2091372a143f39ebe1fa39a6b1f89fd7d0f566700046ac7
```

-	Platforms:
	-	windows; amd64

### `redis:3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 GB (5011103673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e19f818176bbd1aeb3f95daea3bd4513cf35e00801199b4f8c03fff6db79c07`
-	Default Command: `["redis-server.exe","C:\\Redis\\redis.docker.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Wed, 18 Jan 2017 00:22:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 18 Jan 2017 22:49:45 GMT
RUN $newPath = ('C:\Redis;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 18 Jan 2017 22:53:25 GMT
ENV REDIS_VERSION=3.2.100
# Wed, 18 Jan 2017 22:53:33 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/MSOpenTech/redis/releases/download/win-3.2.100/Redis-x64-3.2.100.zip
# Wed, 18 Jan 2017 22:54:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:REDIS_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:REDIS_DOWNLOAD_URL -OutFile 'redis.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive redis.zip -DestinationPath C:\Redis; 		Write-Host 'Verifying install ("redis-server --version") ...'; 	redis-server --version; 		Write-Host 'Removing ...'; 	Remove-Item redis.zip -Force
# Wed, 18 Jan 2017 22:55:24 GMT
RUN (Get-Content C:\Redis\redis.windows.conf) 	-Replace '^(bind)\s+.*$', '$1 0.0.0.0' 	-Replace '^(protected-mode)\s+.*$', '$1 no' 	| Set-Content C:\Redis\redis.docker.conf
# Wed, 18 Jan 2017 22:55:29 GMT
VOLUME [C:\data]
# Wed, 18 Jan 2017 22:55:32 GMT
WORKDIR C:\data
# Wed, 18 Jan 2017 22:55:37 GMT
EXPOSE 6379/tcp
# Wed, 18 Jan 2017 22:55:41 GMT
CMD ["redis-server.exe" "C:\\Redis\\redis.docker.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3430754e4d171ead00cf6766797a28abf3caf236f6c92c5c346ea2ad3955a129`  
		Size: 913.1 MB (913145061 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2090e83c9aacacb2da7d0836cf297e9927a3137c208e2f631e39e181e31ceb90`  
		Last Modified: Wed, 18 Jan 2017 22:56:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da44b0086252f4702e3a56302c8f8b41465bed5f455838bf271fced6fc93a0c`  
		Last Modified: Wed, 18 Jan 2017 22:56:57 GMT  
		Size: 9.1 MB (9118824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384b378de0002282c7b070dee79c606a44d9fbb8fa7e9dfd07e41a72d18f935f`  
		Last Modified: Wed, 18 Jan 2017 22:57:26 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90e71dc0a25426b16deb2e33f62fc9f58105e7bfbcf8c3160c9c21ae39b0cf86`  
		Last Modified: Wed, 18 Jan 2017 22:57:25 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc4ffe232243d863a27a6fe85e1bd3f3fab3a6161921dc38f472031fcb4c7303`  
		Last Modified: Wed, 18 Jan 2017 22:57:30 GMT  
		Size: 14.3 MB (14310413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0188853bfa921906bf823bcffe4249ebad6294e84d7bcc806e251e36ca259ad5`  
		Last Modified: Wed, 18 Jan 2017 22:57:22 GMT  
		Size: 4.5 MB (4534905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec86ffa3d1d0c5fa801f6fd03736ab2d6b4d546db71bb6e634d4ce5006e1c5c7`  
		Last Modified: Wed, 18 Jan 2017 22:57:20 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07eda4f36764030981f1274d0cf9d991012ebc5b336c479b6db4d3c61a4f7ed6`  
		Last Modified: Wed, 18 Jan 2017 22:57:20 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb1b5f4cf90fb05950e298d1aa9d1dc2874e497fef0f5329c5ce55251d7cf7d9`  
		Last Modified: Wed, 18 Jan 2017 22:57:20 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc54094d7877932bd12d15a50fa999e0d90132b29b9734831226c0002e4c909a`  
		Last Modified: Wed, 18 Jan 2017 22:57:20 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:windowsservercore`

```console
$ docker pull redis@sha256:60e2f0698630df1df2091372a143f39ebe1fa39a6b1f89fd7d0f566700046ac7
```

-	Platforms:
	-	windows; amd64

### `redis:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 GB (5011103673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e19f818176bbd1aeb3f95daea3bd4513cf35e00801199b4f8c03fff6db79c07`
-	Default Command: `["redis-server.exe","C:\\Redis\\redis.docker.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Wed, 18 Jan 2017 00:22:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 18 Jan 2017 22:49:45 GMT
RUN $newPath = ('C:\Redis;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 18 Jan 2017 22:53:25 GMT
ENV REDIS_VERSION=3.2.100
# Wed, 18 Jan 2017 22:53:33 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/MSOpenTech/redis/releases/download/win-3.2.100/Redis-x64-3.2.100.zip
# Wed, 18 Jan 2017 22:54:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:REDIS_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:REDIS_DOWNLOAD_URL -OutFile 'redis.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive redis.zip -DestinationPath C:\Redis; 		Write-Host 'Verifying install ("redis-server --version") ...'; 	redis-server --version; 		Write-Host 'Removing ...'; 	Remove-Item redis.zip -Force
# Wed, 18 Jan 2017 22:55:24 GMT
RUN (Get-Content C:\Redis\redis.windows.conf) 	-Replace '^(bind)\s+.*$', '$1 0.0.0.0' 	-Replace '^(protected-mode)\s+.*$', '$1 no' 	| Set-Content C:\Redis\redis.docker.conf
# Wed, 18 Jan 2017 22:55:29 GMT
VOLUME [C:\data]
# Wed, 18 Jan 2017 22:55:32 GMT
WORKDIR C:\data
# Wed, 18 Jan 2017 22:55:37 GMT
EXPOSE 6379/tcp
# Wed, 18 Jan 2017 22:55:41 GMT
CMD ["redis-server.exe" "C:\\Redis\\redis.docker.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3430754e4d171ead00cf6766797a28abf3caf236f6c92c5c346ea2ad3955a129`  
		Size: 913.1 MB (913145061 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2090e83c9aacacb2da7d0836cf297e9927a3137c208e2f631e39e181e31ceb90`  
		Last Modified: Wed, 18 Jan 2017 22:56:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da44b0086252f4702e3a56302c8f8b41465bed5f455838bf271fced6fc93a0c`  
		Last Modified: Wed, 18 Jan 2017 22:56:57 GMT  
		Size: 9.1 MB (9118824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384b378de0002282c7b070dee79c606a44d9fbb8fa7e9dfd07e41a72d18f935f`  
		Last Modified: Wed, 18 Jan 2017 22:57:26 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90e71dc0a25426b16deb2e33f62fc9f58105e7bfbcf8c3160c9c21ae39b0cf86`  
		Last Modified: Wed, 18 Jan 2017 22:57:25 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc4ffe232243d863a27a6fe85e1bd3f3fab3a6161921dc38f472031fcb4c7303`  
		Last Modified: Wed, 18 Jan 2017 22:57:30 GMT  
		Size: 14.3 MB (14310413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0188853bfa921906bf823bcffe4249ebad6294e84d7bcc806e251e36ca259ad5`  
		Last Modified: Wed, 18 Jan 2017 22:57:22 GMT  
		Size: 4.5 MB (4534905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec86ffa3d1d0c5fa801f6fd03736ab2d6b4d546db71bb6e634d4ce5006e1c5c7`  
		Last Modified: Wed, 18 Jan 2017 22:57:20 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07eda4f36764030981f1274d0cf9d991012ebc5b336c479b6db4d3c61a4f7ed6`  
		Last Modified: Wed, 18 Jan 2017 22:57:20 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb1b5f4cf90fb05950e298d1aa9d1dc2874e497fef0f5329c5ce55251d7cf7d9`  
		Last Modified: Wed, 18 Jan 2017 22:57:20 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc54094d7877932bd12d15a50fa999e0d90132b29b9734831226c0002e4c909a`  
		Last Modified: Wed, 18 Jan 2017 22:57:20 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.100-nanoserver`

```console
$ docker pull redis@sha256:0504a89bfa3ed423a4537e20579434e08058043537822c8578c98ac71ef971bf
```

-	Platforms:
	-	windows; amd64

### `redis:3.2.100-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.1 MB (341087300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:106a932a5a0e1b1844607261579c8c86b36ec749801667c75ce01c3f6f8d9d20`
-	Default Command: `["redis-server.exe","C:\\Redis\\redis.docker.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 18 Jan 2017 22:52:13 GMT
RUN $newPath = ('C:\Redis;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 18 Jan 2017 22:55:44 GMT
ENV REDIS_VERSION=3.2.100
# Wed, 18 Jan 2017 22:55:46 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/MSOpenTech/redis/releases/download/win-3.2.100/Redis-x64-3.2.100.zip
# Wed, 18 Jan 2017 22:56:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:REDIS_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:REDIS_DOWNLOAD_URL -OutFile 'redis.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive redis.zip -DestinationPath C:\Redis; 		Write-Host 'Verifying install ("redis-server --version") ...'; 	redis-server --version; 		Write-Host 'Removing ...'; 	Remove-Item redis.zip -Force
# Wed, 18 Jan 2017 22:56:25 GMT
RUN (Get-Content C:\Redis\redis.windows.conf) 	-Replace '^(bind)\s+.*$', '$1 0.0.0.0' 	-Replace '^(protected-mode)\s+.*$', '$1 no' 	| Set-Content C:\Redis\redis.docker.conf
# Wed, 18 Jan 2017 22:56:27 GMT
VOLUME [C:\data]
# Wed, 18 Jan 2017 22:56:30 GMT
WORKDIR C:\data
# Wed, 18 Jan 2017 22:56:32 GMT
EXPOSE 6379/tcp
# Wed, 18 Jan 2017 22:56:37 GMT
CMD ["redis-server.exe" "C:\\Redis\\redis.docker.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3ac17e2e6106d09a44642a437c318092eddd284afea0b4e707e89f6cec7a18ef`  
		Size: 80.6 MB (80617684 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e75762e22d922ed4bb69ae4e673c912389d9d70fd91eaa33cd0732f0a8e28a4e`  
		Last Modified: Fri, 13 Jan 2017 18:00:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de31e43b05dd874f8ca7edfb3aac6545866c500853b7e509ba14e9ae38ad2097`  
		Last Modified: Wed, 18 Jan 2017 22:57:11 GMT  
		Size: 872.2 KB (872241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72304c71b91dd5750a5ee9c76380796d7587a7d5608045ab531f7e9d02a44af9`  
		Last Modified: Wed, 18 Jan 2017 22:57:50 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e40118728bb9a486a422adbd3c08f4a6c99e42edff5811101172555dcfa0da`  
		Last Modified: Wed, 18 Jan 2017 22:57:50 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60cf65c021c8b3c522be96e91e91074e57d7777b1d624e88ae265759a2abe39`  
		Last Modified: Wed, 18 Jan 2017 22:57:53 GMT  
		Size: 6.1 MB (6097510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246384c0dbd7566af07c7d33998ec09438cd9029e8332605e06b37e8fdaa876f`  
		Last Modified: Wed, 18 Jan 2017 22:57:48 GMT  
		Size: 802.2 KB (802163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae3741b92c1d47abe9a132f443036ca118cf13362af4131a1fb37792df5b016`  
		Last Modified: Wed, 18 Jan 2017 22:57:48 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8794db4ffca9168374e650806acb6ee47018b2d553df142cc3ad6540a6c9a51a`  
		Last Modified: Wed, 18 Jan 2017 22:57:47 GMT  
		Size: 962.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4641bd817ce69e3fde2b4f0f6b6a8e97a7da04be80cd4867daff6365d4a15d40`  
		Last Modified: Wed, 18 Jan 2017 22:57:47 GMT  
		Size: 961.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c893421dc79a258d86db45ec19879d16ec43ffc2b462ffcfa5069878dc644ee0`  
		Last Modified: Wed, 18 Jan 2017 22:57:47 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-nanoserver`

```console
$ docker pull redis@sha256:0504a89bfa3ed423a4537e20579434e08058043537822c8578c98ac71ef971bf
```

-	Platforms:
	-	windows; amd64

### `redis:3.2-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.1 MB (341087300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:106a932a5a0e1b1844607261579c8c86b36ec749801667c75ce01c3f6f8d9d20`
-	Default Command: `["redis-server.exe","C:\\Redis\\redis.docker.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 18 Jan 2017 22:52:13 GMT
RUN $newPath = ('C:\Redis;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 18 Jan 2017 22:55:44 GMT
ENV REDIS_VERSION=3.2.100
# Wed, 18 Jan 2017 22:55:46 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/MSOpenTech/redis/releases/download/win-3.2.100/Redis-x64-3.2.100.zip
# Wed, 18 Jan 2017 22:56:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:REDIS_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:REDIS_DOWNLOAD_URL -OutFile 'redis.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive redis.zip -DestinationPath C:\Redis; 		Write-Host 'Verifying install ("redis-server --version") ...'; 	redis-server --version; 		Write-Host 'Removing ...'; 	Remove-Item redis.zip -Force
# Wed, 18 Jan 2017 22:56:25 GMT
RUN (Get-Content C:\Redis\redis.windows.conf) 	-Replace '^(bind)\s+.*$', '$1 0.0.0.0' 	-Replace '^(protected-mode)\s+.*$', '$1 no' 	| Set-Content C:\Redis\redis.docker.conf
# Wed, 18 Jan 2017 22:56:27 GMT
VOLUME [C:\data]
# Wed, 18 Jan 2017 22:56:30 GMT
WORKDIR C:\data
# Wed, 18 Jan 2017 22:56:32 GMT
EXPOSE 6379/tcp
# Wed, 18 Jan 2017 22:56:37 GMT
CMD ["redis-server.exe" "C:\\Redis\\redis.docker.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3ac17e2e6106d09a44642a437c318092eddd284afea0b4e707e89f6cec7a18ef`  
		Size: 80.6 MB (80617684 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e75762e22d922ed4bb69ae4e673c912389d9d70fd91eaa33cd0732f0a8e28a4e`  
		Last Modified: Fri, 13 Jan 2017 18:00:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de31e43b05dd874f8ca7edfb3aac6545866c500853b7e509ba14e9ae38ad2097`  
		Last Modified: Wed, 18 Jan 2017 22:57:11 GMT  
		Size: 872.2 KB (872241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72304c71b91dd5750a5ee9c76380796d7587a7d5608045ab531f7e9d02a44af9`  
		Last Modified: Wed, 18 Jan 2017 22:57:50 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e40118728bb9a486a422adbd3c08f4a6c99e42edff5811101172555dcfa0da`  
		Last Modified: Wed, 18 Jan 2017 22:57:50 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60cf65c021c8b3c522be96e91e91074e57d7777b1d624e88ae265759a2abe39`  
		Last Modified: Wed, 18 Jan 2017 22:57:53 GMT  
		Size: 6.1 MB (6097510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246384c0dbd7566af07c7d33998ec09438cd9029e8332605e06b37e8fdaa876f`  
		Last Modified: Wed, 18 Jan 2017 22:57:48 GMT  
		Size: 802.2 KB (802163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae3741b92c1d47abe9a132f443036ca118cf13362af4131a1fb37792df5b016`  
		Last Modified: Wed, 18 Jan 2017 22:57:48 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8794db4ffca9168374e650806acb6ee47018b2d553df142cc3ad6540a6c9a51a`  
		Last Modified: Wed, 18 Jan 2017 22:57:47 GMT  
		Size: 962.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4641bd817ce69e3fde2b4f0f6b6a8e97a7da04be80cd4867daff6365d4a15d40`  
		Last Modified: Wed, 18 Jan 2017 22:57:47 GMT  
		Size: 961.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c893421dc79a258d86db45ec19879d16ec43ffc2b462ffcfa5069878dc644ee0`  
		Last Modified: Wed, 18 Jan 2017 22:57:47 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-nanoserver`

```console
$ docker pull redis@sha256:0504a89bfa3ed423a4537e20579434e08058043537822c8578c98ac71ef971bf
```

-	Platforms:
	-	windows; amd64

### `redis:3-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.1 MB (341087300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:106a932a5a0e1b1844607261579c8c86b36ec749801667c75ce01c3f6f8d9d20`
-	Default Command: `["redis-server.exe","C:\\Redis\\redis.docker.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 18 Jan 2017 22:52:13 GMT
RUN $newPath = ('C:\Redis;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 18 Jan 2017 22:55:44 GMT
ENV REDIS_VERSION=3.2.100
# Wed, 18 Jan 2017 22:55:46 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/MSOpenTech/redis/releases/download/win-3.2.100/Redis-x64-3.2.100.zip
# Wed, 18 Jan 2017 22:56:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:REDIS_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:REDIS_DOWNLOAD_URL -OutFile 'redis.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive redis.zip -DestinationPath C:\Redis; 		Write-Host 'Verifying install ("redis-server --version") ...'; 	redis-server --version; 		Write-Host 'Removing ...'; 	Remove-Item redis.zip -Force
# Wed, 18 Jan 2017 22:56:25 GMT
RUN (Get-Content C:\Redis\redis.windows.conf) 	-Replace '^(bind)\s+.*$', '$1 0.0.0.0' 	-Replace '^(protected-mode)\s+.*$', '$1 no' 	| Set-Content C:\Redis\redis.docker.conf
# Wed, 18 Jan 2017 22:56:27 GMT
VOLUME [C:\data]
# Wed, 18 Jan 2017 22:56:30 GMT
WORKDIR C:\data
# Wed, 18 Jan 2017 22:56:32 GMT
EXPOSE 6379/tcp
# Wed, 18 Jan 2017 22:56:37 GMT
CMD ["redis-server.exe" "C:\\Redis\\redis.docker.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3ac17e2e6106d09a44642a437c318092eddd284afea0b4e707e89f6cec7a18ef`  
		Size: 80.6 MB (80617684 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e75762e22d922ed4bb69ae4e673c912389d9d70fd91eaa33cd0732f0a8e28a4e`  
		Last Modified: Fri, 13 Jan 2017 18:00:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de31e43b05dd874f8ca7edfb3aac6545866c500853b7e509ba14e9ae38ad2097`  
		Last Modified: Wed, 18 Jan 2017 22:57:11 GMT  
		Size: 872.2 KB (872241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72304c71b91dd5750a5ee9c76380796d7587a7d5608045ab531f7e9d02a44af9`  
		Last Modified: Wed, 18 Jan 2017 22:57:50 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e40118728bb9a486a422adbd3c08f4a6c99e42edff5811101172555dcfa0da`  
		Last Modified: Wed, 18 Jan 2017 22:57:50 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60cf65c021c8b3c522be96e91e91074e57d7777b1d624e88ae265759a2abe39`  
		Last Modified: Wed, 18 Jan 2017 22:57:53 GMT  
		Size: 6.1 MB (6097510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246384c0dbd7566af07c7d33998ec09438cd9029e8332605e06b37e8fdaa876f`  
		Last Modified: Wed, 18 Jan 2017 22:57:48 GMT  
		Size: 802.2 KB (802163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae3741b92c1d47abe9a132f443036ca118cf13362af4131a1fb37792df5b016`  
		Last Modified: Wed, 18 Jan 2017 22:57:48 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8794db4ffca9168374e650806acb6ee47018b2d553df142cc3ad6540a6c9a51a`  
		Last Modified: Wed, 18 Jan 2017 22:57:47 GMT  
		Size: 962.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4641bd817ce69e3fde2b4f0f6b6a8e97a7da04be80cd4867daff6365d4a15d40`  
		Last Modified: Wed, 18 Jan 2017 22:57:47 GMT  
		Size: 961.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c893421dc79a258d86db45ec19879d16ec43ffc2b462ffcfa5069878dc644ee0`  
		Last Modified: Wed, 18 Jan 2017 22:57:47 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:nanoserver`

```console
$ docker pull redis@sha256:0504a89bfa3ed423a4537e20579434e08058043537822c8578c98ac71ef971bf
```

-	Platforms:
	-	windows; amd64

### `redis:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.1 MB (341087300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:106a932a5a0e1b1844607261579c8c86b36ec749801667c75ce01c3f6f8d9d20`
-	Default Command: `["redis-server.exe","C:\\Redis\\redis.docker.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 18 Jan 2017 22:52:13 GMT
RUN $newPath = ('C:\Redis;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 18 Jan 2017 22:55:44 GMT
ENV REDIS_VERSION=3.2.100
# Wed, 18 Jan 2017 22:55:46 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/MSOpenTech/redis/releases/download/win-3.2.100/Redis-x64-3.2.100.zip
# Wed, 18 Jan 2017 22:56:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:REDIS_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:REDIS_DOWNLOAD_URL -OutFile 'redis.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive redis.zip -DestinationPath C:\Redis; 		Write-Host 'Verifying install ("redis-server --version") ...'; 	redis-server --version; 		Write-Host 'Removing ...'; 	Remove-Item redis.zip -Force
# Wed, 18 Jan 2017 22:56:25 GMT
RUN (Get-Content C:\Redis\redis.windows.conf) 	-Replace '^(bind)\s+.*$', '$1 0.0.0.0' 	-Replace '^(protected-mode)\s+.*$', '$1 no' 	| Set-Content C:\Redis\redis.docker.conf
# Wed, 18 Jan 2017 22:56:27 GMT
VOLUME [C:\data]
# Wed, 18 Jan 2017 22:56:30 GMT
WORKDIR C:\data
# Wed, 18 Jan 2017 22:56:32 GMT
EXPOSE 6379/tcp
# Wed, 18 Jan 2017 22:56:37 GMT
CMD ["redis-server.exe" "C:\\Redis\\redis.docker.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3ac17e2e6106d09a44642a437c318092eddd284afea0b4e707e89f6cec7a18ef`  
		Size: 80.6 MB (80617684 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e75762e22d922ed4bb69ae4e673c912389d9d70fd91eaa33cd0732f0a8e28a4e`  
		Last Modified: Fri, 13 Jan 2017 18:00:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de31e43b05dd874f8ca7edfb3aac6545866c500853b7e509ba14e9ae38ad2097`  
		Last Modified: Wed, 18 Jan 2017 22:57:11 GMT  
		Size: 872.2 KB (872241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72304c71b91dd5750a5ee9c76380796d7587a7d5608045ab531f7e9d02a44af9`  
		Last Modified: Wed, 18 Jan 2017 22:57:50 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e40118728bb9a486a422adbd3c08f4a6c99e42edff5811101172555dcfa0da`  
		Last Modified: Wed, 18 Jan 2017 22:57:50 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60cf65c021c8b3c522be96e91e91074e57d7777b1d624e88ae265759a2abe39`  
		Last Modified: Wed, 18 Jan 2017 22:57:53 GMT  
		Size: 6.1 MB (6097510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246384c0dbd7566af07c7d33998ec09438cd9029e8332605e06b37e8fdaa876f`  
		Last Modified: Wed, 18 Jan 2017 22:57:48 GMT  
		Size: 802.2 KB (802163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae3741b92c1d47abe9a132f443036ca118cf13362af4131a1fb37792df5b016`  
		Last Modified: Wed, 18 Jan 2017 22:57:48 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8794db4ffca9168374e650806acb6ee47018b2d553df142cc3ad6540a6c9a51a`  
		Last Modified: Wed, 18 Jan 2017 22:57:47 GMT  
		Size: 962.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4641bd817ce69e3fde2b4f0f6b6a8e97a7da04be80cd4867daff6365d4a15d40`  
		Last Modified: Wed, 18 Jan 2017 22:57:47 GMT  
		Size: 961.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c893421dc79a258d86db45ec19879d16ec43ffc2b462ffcfa5069878dc644ee0`  
		Last Modified: Wed, 18 Jan 2017 22:57:47 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
