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
$ docker pull redis@sha256:4d84b30ee1f4346c173921fe9f2c5ab36a1ec5ea71c7645c7066773c018dce63
```

-	Platforms:
	-	linux; amd64

### `redis:3.0.7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.8 MB (71773720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b43d815b28bcb562b5806a3ef44cb1dcec21d00ade5b95229130eda9c1ee944c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 22:50:01 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 28 Feb 2017 22:50:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:50:12 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 22:50:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 28 Feb 2017 22:52:12 GMT
ENV REDIS_VERSION=3.0.7
# Tue, 28 Feb 2017 22:52:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Tue, 28 Feb 2017 22:52:12 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Tue, 28 Feb 2017 22:52:52 GMT
RUN buildDeps='gcc libc6-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 28 Feb 2017 22:52:53 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 28 Feb 2017 22:52:53 GMT
VOLUME [/data]
# Tue, 28 Feb 2017 22:52:53 GMT
WORKDIR /data
# Tue, 28 Feb 2017 22:52:54 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 28 Feb 2017 22:52:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 28 Feb 2017 22:52:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 22:52:55 GMT
EXPOSE 6379/tcp
# Tue, 28 Feb 2017 22:52:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338a7133395941c85087522582af182d2f6477dbf54ba769cb24ec4fd91d728f`  
		Last Modified: Thu, 02 Mar 2017 03:37:45 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f12ff60ff1132d1e59845e26c41968406b4176c1a85a50506c954696b21570`  
		Last Modified: Thu, 02 Mar 2017 03:37:49 GMT  
		Size: 16.6 MB (16618041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7726832aec75f0a742266c7190c4d2217492722dfd603406208eaa902648d8`  
		Last Modified: Thu, 02 Mar 2017 03:37:42 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:923884519539d1747e14d72243a29223b0c625bbaee6331486edbd8a76b18d46`  
		Last Modified: Thu, 02 Mar 2017 03:37:43 GMT  
		Size: 3.0 MB (2981726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e50fcc37b2b8291424d105bdbe12b91830deb15abc89ffdafaaa4c78c70449a`  
		Last Modified: Thu, 02 Mar 2017 03:37:42 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1882e513e5bc847d340de189340f90a6f29246e02c7b1d872112424a55470b6c`  
		Last Modified: Thu, 02 Mar 2017 03:37:44 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f269f26d4fa889a07ea4524527e79011db1ae097317b52682ee2a9b9d8214d`  
		Last Modified: Thu, 02 Mar 2017 03:37:42 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0`

```console
$ docker pull redis@sha256:4d84b30ee1f4346c173921fe9f2c5ab36a1ec5ea71c7645c7066773c018dce63
```

-	Platforms:
	-	linux; amd64

### `redis:3.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.8 MB (71773720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b43d815b28bcb562b5806a3ef44cb1dcec21d00ade5b95229130eda9c1ee944c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 22:50:01 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 28 Feb 2017 22:50:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:50:12 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 22:50:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 28 Feb 2017 22:52:12 GMT
ENV REDIS_VERSION=3.0.7
# Tue, 28 Feb 2017 22:52:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Tue, 28 Feb 2017 22:52:12 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Tue, 28 Feb 2017 22:52:52 GMT
RUN buildDeps='gcc libc6-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 28 Feb 2017 22:52:53 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 28 Feb 2017 22:52:53 GMT
VOLUME [/data]
# Tue, 28 Feb 2017 22:52:53 GMT
WORKDIR /data
# Tue, 28 Feb 2017 22:52:54 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 28 Feb 2017 22:52:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 28 Feb 2017 22:52:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 22:52:55 GMT
EXPOSE 6379/tcp
# Tue, 28 Feb 2017 22:52:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338a7133395941c85087522582af182d2f6477dbf54ba769cb24ec4fd91d728f`  
		Last Modified: Thu, 02 Mar 2017 03:37:45 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f12ff60ff1132d1e59845e26c41968406b4176c1a85a50506c954696b21570`  
		Last Modified: Thu, 02 Mar 2017 03:37:49 GMT  
		Size: 16.6 MB (16618041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7726832aec75f0a742266c7190c4d2217492722dfd603406208eaa902648d8`  
		Last Modified: Thu, 02 Mar 2017 03:37:42 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:923884519539d1747e14d72243a29223b0c625bbaee6331486edbd8a76b18d46`  
		Last Modified: Thu, 02 Mar 2017 03:37:43 GMT  
		Size: 3.0 MB (2981726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e50fcc37b2b8291424d105bdbe12b91830deb15abc89ffdafaaa4c78c70449a`  
		Last Modified: Thu, 02 Mar 2017 03:37:42 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1882e513e5bc847d340de189340f90a6f29246e02c7b1d872112424a55470b6c`  
		Last Modified: Thu, 02 Mar 2017 03:37:44 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f269f26d4fa889a07ea4524527e79011db1ae097317b52682ee2a9b9d8214d`  
		Last Modified: Thu, 02 Mar 2017 03:37:42 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0.7-32bit`

```console
$ docker pull redis@sha256:0ed7442adad6fbe6730578a52ffdce0b46a4905eaa5a79eee41553d72a04ac70
```

-	Platforms:
	-	linux; amd64

### `redis:3.0.7-32bit` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.7 MB (75685849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97aba52796c76d955fc6eb4b9a16f6c1ee3085cd1bcdbed40dfc6fb1eccbf713`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 22:50:01 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 28 Feb 2017 22:50:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:50:12 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 22:50:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 28 Feb 2017 22:52:12 GMT
ENV REDIS_VERSION=3.0.7
# Tue, 28 Feb 2017 22:52:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Tue, 28 Feb 2017 22:52:12 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Tue, 28 Feb 2017 22:53:01 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:53:51 GMT
RUN buildDeps='gcc gcc-multilib libc6-dev-i386 make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 28 Feb 2017 22:53:52 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 28 Feb 2017 22:53:52 GMT
VOLUME [/data]
# Tue, 28 Feb 2017 22:53:53 GMT
WORKDIR /data
# Tue, 28 Feb 2017 22:53:53 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 28 Feb 2017 22:53:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 28 Feb 2017 22:53:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 22:53:55 GMT
EXPOSE 6379/tcp
# Tue, 28 Feb 2017 22:53:55 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338a7133395941c85087522582af182d2f6477dbf54ba769cb24ec4fd91d728f`  
		Last Modified: Thu, 02 Mar 2017 03:37:45 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f12ff60ff1132d1e59845e26c41968406b4176c1a85a50506c954696b21570`  
		Last Modified: Thu, 02 Mar 2017 03:37:49 GMT  
		Size: 16.6 MB (16618041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7726832aec75f0a742266c7190c4d2217492722dfd603406208eaa902648d8`  
		Last Modified: Thu, 02 Mar 2017 03:37:42 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb89ff0296dfa52600388fee5f14b1ab11b645950eff6747fc20cf60d2e25c96`  
		Last Modified: Thu, 02 Mar 2017 03:38:30 GMT  
		Size: 4.2 MB (4224308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3545eda1fdf6b14162d10879ec6f403cd2ab943844a347d0b413c7dbb7d401d3`  
		Last Modified: Thu, 02 Mar 2017 03:38:31 GMT  
		Size: 2.7 MB (2669544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653ee31b3f93c96e851cb91855fd8144afc0de7fb66f4de90148e69b261949a2`  
		Last Modified: Thu, 02 Mar 2017 03:38:29 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767c1a8d9c2acfb87805162fc3fb4bac948837293234e9c5b77a64aef81fae82`  
		Last Modified: Thu, 02 Mar 2017 03:38:29 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6164c5474922531de00a8017021c1519050ed52eb927434056d49ac10e128a`  
		Last Modified: Thu, 02 Mar 2017 03:38:29 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0-32bit`

```console
$ docker pull redis@sha256:0ed7442adad6fbe6730578a52ffdce0b46a4905eaa5a79eee41553d72a04ac70
```

-	Platforms:
	-	linux; amd64

### `redis:3.0-32bit` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.7 MB (75685849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97aba52796c76d955fc6eb4b9a16f6c1ee3085cd1bcdbed40dfc6fb1eccbf713`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 22:50:01 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 28 Feb 2017 22:50:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:50:12 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 22:50:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 28 Feb 2017 22:52:12 GMT
ENV REDIS_VERSION=3.0.7
# Tue, 28 Feb 2017 22:52:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Tue, 28 Feb 2017 22:52:12 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Tue, 28 Feb 2017 22:53:01 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:53:51 GMT
RUN buildDeps='gcc gcc-multilib libc6-dev-i386 make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 28 Feb 2017 22:53:52 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 28 Feb 2017 22:53:52 GMT
VOLUME [/data]
# Tue, 28 Feb 2017 22:53:53 GMT
WORKDIR /data
# Tue, 28 Feb 2017 22:53:53 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 28 Feb 2017 22:53:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 28 Feb 2017 22:53:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 22:53:55 GMT
EXPOSE 6379/tcp
# Tue, 28 Feb 2017 22:53:55 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338a7133395941c85087522582af182d2f6477dbf54ba769cb24ec4fd91d728f`  
		Last Modified: Thu, 02 Mar 2017 03:37:45 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f12ff60ff1132d1e59845e26c41968406b4176c1a85a50506c954696b21570`  
		Last Modified: Thu, 02 Mar 2017 03:37:49 GMT  
		Size: 16.6 MB (16618041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7726832aec75f0a742266c7190c4d2217492722dfd603406208eaa902648d8`  
		Last Modified: Thu, 02 Mar 2017 03:37:42 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb89ff0296dfa52600388fee5f14b1ab11b645950eff6747fc20cf60d2e25c96`  
		Last Modified: Thu, 02 Mar 2017 03:38:30 GMT  
		Size: 4.2 MB (4224308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3545eda1fdf6b14162d10879ec6f403cd2ab943844a347d0b413c7dbb7d401d3`  
		Last Modified: Thu, 02 Mar 2017 03:38:31 GMT  
		Size: 2.7 MB (2669544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653ee31b3f93c96e851cb91855fd8144afc0de7fb66f4de90148e69b261949a2`  
		Last Modified: Thu, 02 Mar 2017 03:38:29 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767c1a8d9c2acfb87805162fc3fb4bac948837293234e9c5b77a64aef81fae82`  
		Last Modified: Thu, 02 Mar 2017 03:38:29 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6164c5474922531de00a8017021c1519050ed52eb927434056d49ac10e128a`  
		Last Modified: Thu, 02 Mar 2017 03:38:29 GMT  
		Size: 120.0 B  
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
$ docker pull redis@sha256:4c8fb09e8d634ab823b1c125e64f0e1ceaf216025aa38283ea1b42997f1e8059
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.3 MB (74262529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4a35914679d05d25e2fccfd310fde1aa59ffbbf1b0b9d36f7b03db5ca0311b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 22:50:01 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 28 Feb 2017 22:50:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:50:12 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 22:50:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 28 Feb 2017 22:50:16 GMT
ENV REDIS_VERSION=3.2.8
# Tue, 28 Feb 2017 22:50:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Tue, 28 Feb 2017 22:50:17 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Tue, 28 Feb 2017 22:51:05 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 28 Feb 2017 22:51:05 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 28 Feb 2017 22:51:06 GMT
VOLUME [/data]
# Tue, 28 Feb 2017 22:51:06 GMT
WORKDIR /data
# Tue, 28 Feb 2017 22:51:07 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 28 Feb 2017 22:51:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 22:51:07 GMT
EXPOSE 6379/tcp
# Tue, 28 Feb 2017 22:51:08 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338a7133395941c85087522582af182d2f6477dbf54ba769cb24ec4fd91d728f`  
		Last Modified: Thu, 02 Mar 2017 03:37:45 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f12ff60ff1132d1e59845e26c41968406b4176c1a85a50506c954696b21570`  
		Last Modified: Thu, 02 Mar 2017 03:37:49 GMT  
		Size: 16.6 MB (16618041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7726832aec75f0a742266c7190c4d2217492722dfd603406208eaa902648d8`  
		Last Modified: Thu, 02 Mar 2017 03:37:42 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a7e34366a6f558336c364693df538c38307484b729a36fede76432789f084f`  
		Last Modified: Thu, 02 Mar 2017 03:39:13 GMT  
		Size: 5.5 MB (5470649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622732cddc347afc9360b4b04b46c6f758191a1dc73d007f95548658847ee67e`  
		Last Modified: Thu, 02 Mar 2017 03:39:10 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b281f2bcae3b25c701d53a219924fffe79bdb74385340b73a539ed4020999c4`  
		Last Modified: Thu, 02 Mar 2017 03:39:10 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2`

```console
$ docker pull redis@sha256:4c8fb09e8d634ab823b1c125e64f0e1ceaf216025aa38283ea1b42997f1e8059
```

-	Platforms:
	-	linux; amd64

### `redis:3.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.3 MB (74262529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4a35914679d05d25e2fccfd310fde1aa59ffbbf1b0b9d36f7b03db5ca0311b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 22:50:01 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 28 Feb 2017 22:50:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:50:12 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 22:50:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 28 Feb 2017 22:50:16 GMT
ENV REDIS_VERSION=3.2.8
# Tue, 28 Feb 2017 22:50:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Tue, 28 Feb 2017 22:50:17 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Tue, 28 Feb 2017 22:51:05 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 28 Feb 2017 22:51:05 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 28 Feb 2017 22:51:06 GMT
VOLUME [/data]
# Tue, 28 Feb 2017 22:51:06 GMT
WORKDIR /data
# Tue, 28 Feb 2017 22:51:07 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 28 Feb 2017 22:51:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 22:51:07 GMT
EXPOSE 6379/tcp
# Tue, 28 Feb 2017 22:51:08 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338a7133395941c85087522582af182d2f6477dbf54ba769cb24ec4fd91d728f`  
		Last Modified: Thu, 02 Mar 2017 03:37:45 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f12ff60ff1132d1e59845e26c41968406b4176c1a85a50506c954696b21570`  
		Last Modified: Thu, 02 Mar 2017 03:37:49 GMT  
		Size: 16.6 MB (16618041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7726832aec75f0a742266c7190c4d2217492722dfd603406208eaa902648d8`  
		Last Modified: Thu, 02 Mar 2017 03:37:42 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a7e34366a6f558336c364693df538c38307484b729a36fede76432789f084f`  
		Last Modified: Thu, 02 Mar 2017 03:39:13 GMT  
		Size: 5.5 MB (5470649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622732cddc347afc9360b4b04b46c6f758191a1dc73d007f95548658847ee67e`  
		Last Modified: Thu, 02 Mar 2017 03:39:10 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b281f2bcae3b25c701d53a219924fffe79bdb74385340b73a539ed4020999c4`  
		Last Modified: Thu, 02 Mar 2017 03:39:10 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3`

```console
$ docker pull redis@sha256:fea8c36dc8bce366c52551f20bb40bacc248161b1391aa052ae9c7f00b647fd0
```

-	Platforms:
	-	linux; amd64

### `redis:3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.3 MB (74259937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a8a9ee54eb755a427e00484a64fa4edbe9c2abe59ca468a4e452b343a2b57c2`
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
# Wed, 15 Feb 2017 20:39:16 GMT
ENV REDIS_VERSION=3.2.8
# Wed, 15 Feb 2017 20:39:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Wed, 15 Feb 2017 20:39:16 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Wed, 15 Feb 2017 20:40:10 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 15 Feb 2017 20:40:11 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 15 Feb 2017 20:40:11 GMT
VOLUME [/data]
# Wed, 15 Feb 2017 20:40:12 GMT
WORKDIR /data
# Wed, 15 Feb 2017 20:40:12 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 15 Feb 2017 20:40:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Feb 2017 20:40:14 GMT
EXPOSE 6379/tcp
# Wed, 15 Feb 2017 20:40:14 GMT
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
	-	`sha256:66c86daad3a0fac937c66ee45c6803a7fde3cfa995bfadc3bda1e5afc29df456`  
		Last Modified: Wed, 15 Feb 2017 20:44:01 GMT  
		Size: 5.5 MB (5470526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ae7e4199c484428967d8fd2972d9ce70c4fb2e93648aa171cefdc8315a36061`  
		Last Modified: Wed, 15 Feb 2017 20:43:58 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42541ed46f6a0c93d1a994b3785e3079e129aac1d9aba8a948785a0c6cef9b8e`  
		Last Modified: Wed, 15 Feb 2017 20:43:58 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:latest`

```console
$ docker pull redis@sha256:fea8c36dc8bce366c52551f20bb40bacc248161b1391aa052ae9c7f00b647fd0
```

-	Platforms:
	-	linux; amd64

### `redis:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.3 MB (74259937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a8a9ee54eb755a427e00484a64fa4edbe9c2abe59ca468a4e452b343a2b57c2`
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
# Wed, 15 Feb 2017 20:39:16 GMT
ENV REDIS_VERSION=3.2.8
# Wed, 15 Feb 2017 20:39:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Wed, 15 Feb 2017 20:39:16 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Wed, 15 Feb 2017 20:40:10 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 15 Feb 2017 20:40:11 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 15 Feb 2017 20:40:11 GMT
VOLUME [/data]
# Wed, 15 Feb 2017 20:40:12 GMT
WORKDIR /data
# Wed, 15 Feb 2017 20:40:12 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 15 Feb 2017 20:40:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Feb 2017 20:40:14 GMT
EXPOSE 6379/tcp
# Wed, 15 Feb 2017 20:40:14 GMT
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
	-	`sha256:66c86daad3a0fac937c66ee45c6803a7fde3cfa995bfadc3bda1e5afc29df456`  
		Last Modified: Wed, 15 Feb 2017 20:44:01 GMT  
		Size: 5.5 MB (5470526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ae7e4199c484428967d8fd2972d9ce70c4fb2e93648aa171cefdc8315a36061`  
		Last Modified: Wed, 15 Feb 2017 20:43:58 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42541ed46f6a0c93d1a994b3785e3079e129aac1d9aba8a948785a0c6cef9b8e`  
		Last Modified: Wed, 15 Feb 2017 20:43:58 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.8-32bit`

```console
$ docker pull redis@sha256:15476ea8edabd7259ae375787731aec6dd98ae78985e5e469941996992dc66a0
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.8-32bit` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77906327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:464f755ab3209bbcefe1a8374e971d398ff08ae9ab1a1d796fc118bea83881bf`
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
# Wed, 15 Feb 2017 20:39:16 GMT
ENV REDIS_VERSION=3.2.8
# Wed, 15 Feb 2017 20:39:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Wed, 15 Feb 2017 20:39:16 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Wed, 15 Feb 2017 20:40:19 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 15 Feb 2017 20:41:09 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 15 Feb 2017 20:41:11 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 15 Feb 2017 20:41:11 GMT
VOLUME [/data]
# Wed, 15 Feb 2017 20:41:12 GMT
WORKDIR /data
# Wed, 15 Feb 2017 20:41:12 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 15 Feb 2017 20:41:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Feb 2017 20:41:13 GMT
EXPOSE 6379/tcp
# Wed, 15 Feb 2017 20:41:14 GMT
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
	-	`sha256:05dbeb2c78e772b285cefc6721357f1794e100c86d69303e509ba880999daa81`  
		Last Modified: Wed, 15 Feb 2017 20:45:10 GMT  
		Size: 4.2 MB (4224187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c48a34a8b35505aaac59eb60346e70c9a3df3cd31f64f4116bf8e5a9269c1d9`  
		Last Modified: Wed, 15 Feb 2017 20:45:10 GMT  
		Size: 4.9 MB (4892728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae65e6d6e6f431cb43c7fc0cff3cfa21daed6a4d28f4bfac220ee39b0aee384`  
		Last Modified: Wed, 15 Feb 2017 20:45:08 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07507556f860f43c391d323bdb03e56aae25d33a4515a9a3d7688377bcb6f4c`  
		Last Modified: Wed, 15 Feb 2017 20:45:09 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-32bit`

```console
$ docker pull redis@sha256:15476ea8edabd7259ae375787731aec6dd98ae78985e5e469941996992dc66a0
```

-	Platforms:
	-	linux; amd64

### `redis:3.2-32bit` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77906327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:464f755ab3209bbcefe1a8374e971d398ff08ae9ab1a1d796fc118bea83881bf`
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
# Wed, 15 Feb 2017 20:39:16 GMT
ENV REDIS_VERSION=3.2.8
# Wed, 15 Feb 2017 20:39:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Wed, 15 Feb 2017 20:39:16 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Wed, 15 Feb 2017 20:40:19 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 15 Feb 2017 20:41:09 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 15 Feb 2017 20:41:11 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 15 Feb 2017 20:41:11 GMT
VOLUME [/data]
# Wed, 15 Feb 2017 20:41:12 GMT
WORKDIR /data
# Wed, 15 Feb 2017 20:41:12 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 15 Feb 2017 20:41:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Feb 2017 20:41:13 GMT
EXPOSE 6379/tcp
# Wed, 15 Feb 2017 20:41:14 GMT
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
	-	`sha256:05dbeb2c78e772b285cefc6721357f1794e100c86d69303e509ba880999daa81`  
		Last Modified: Wed, 15 Feb 2017 20:45:10 GMT  
		Size: 4.2 MB (4224187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c48a34a8b35505aaac59eb60346e70c9a3df3cd31f64f4116bf8e5a9269c1d9`  
		Last Modified: Wed, 15 Feb 2017 20:45:10 GMT  
		Size: 4.9 MB (4892728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae65e6d6e6f431cb43c7fc0cff3cfa21daed6a4d28f4bfac220ee39b0aee384`  
		Last Modified: Wed, 15 Feb 2017 20:45:08 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07507556f860f43c391d323bdb03e56aae25d33a4515a9a3d7688377bcb6f4c`  
		Last Modified: Wed, 15 Feb 2017 20:45:09 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-32bit`

```console
$ docker pull redis@sha256:15476ea8edabd7259ae375787731aec6dd98ae78985e5e469941996992dc66a0
```

-	Platforms:
	-	linux; amd64

### `redis:3-32bit` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77906327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:464f755ab3209bbcefe1a8374e971d398ff08ae9ab1a1d796fc118bea83881bf`
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
# Wed, 15 Feb 2017 20:39:16 GMT
ENV REDIS_VERSION=3.2.8
# Wed, 15 Feb 2017 20:39:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Wed, 15 Feb 2017 20:39:16 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Wed, 15 Feb 2017 20:40:19 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 15 Feb 2017 20:41:09 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 15 Feb 2017 20:41:11 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 15 Feb 2017 20:41:11 GMT
VOLUME [/data]
# Wed, 15 Feb 2017 20:41:12 GMT
WORKDIR /data
# Wed, 15 Feb 2017 20:41:12 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 15 Feb 2017 20:41:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Feb 2017 20:41:13 GMT
EXPOSE 6379/tcp
# Wed, 15 Feb 2017 20:41:14 GMT
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
	-	`sha256:05dbeb2c78e772b285cefc6721357f1794e100c86d69303e509ba880999daa81`  
		Last Modified: Wed, 15 Feb 2017 20:45:10 GMT  
		Size: 4.2 MB (4224187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c48a34a8b35505aaac59eb60346e70c9a3df3cd31f64f4116bf8e5a9269c1d9`  
		Last Modified: Wed, 15 Feb 2017 20:45:10 GMT  
		Size: 4.9 MB (4892728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae65e6d6e6f431cb43c7fc0cff3cfa21daed6a4d28f4bfac220ee39b0aee384`  
		Last Modified: Wed, 15 Feb 2017 20:45:08 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07507556f860f43c391d323bdb03e56aae25d33a4515a9a3d7688377bcb6f4c`  
		Last Modified: Wed, 15 Feb 2017 20:45:09 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:32bit`

```console
$ docker pull redis@sha256:15476ea8edabd7259ae375787731aec6dd98ae78985e5e469941996992dc66a0
```

-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77906327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:464f755ab3209bbcefe1a8374e971d398ff08ae9ab1a1d796fc118bea83881bf`
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
# Wed, 15 Feb 2017 20:39:16 GMT
ENV REDIS_VERSION=3.2.8
# Wed, 15 Feb 2017 20:39:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Wed, 15 Feb 2017 20:39:16 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Wed, 15 Feb 2017 20:40:19 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 15 Feb 2017 20:41:09 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 15 Feb 2017 20:41:11 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 15 Feb 2017 20:41:11 GMT
VOLUME [/data]
# Wed, 15 Feb 2017 20:41:12 GMT
WORKDIR /data
# Wed, 15 Feb 2017 20:41:12 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 15 Feb 2017 20:41:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Feb 2017 20:41:13 GMT
EXPOSE 6379/tcp
# Wed, 15 Feb 2017 20:41:14 GMT
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
	-	`sha256:05dbeb2c78e772b285cefc6721357f1794e100c86d69303e509ba880999daa81`  
		Last Modified: Wed, 15 Feb 2017 20:45:10 GMT  
		Size: 4.2 MB (4224187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c48a34a8b35505aaac59eb60346e70c9a3df3cd31f64f4116bf8e5a9269c1d9`  
		Last Modified: Wed, 15 Feb 2017 20:45:10 GMT  
		Size: 4.9 MB (4892728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae65e6d6e6f431cb43c7fc0cff3cfa21daed6a4d28f4bfac220ee39b0aee384`  
		Last Modified: Wed, 15 Feb 2017 20:45:08 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07507556f860f43c391d323bdb03e56aae25d33a4515a9a3d7688377bcb6f4c`  
		Last Modified: Wed, 15 Feb 2017 20:45:09 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.8-alpine`

```console
$ docker pull redis@sha256:ebba7176d5fbbb69477cf39382b97cc6177af0b2c9678f9240b11e85209df531
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.8-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7692065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d39481626b2853c3853e1c63bdf016d27b58ee739f79d5a87e3adefd3c0c1ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:32:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 04 Jan 2017 21:32:54 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 15 Feb 2017 20:41:15 GMT
ENV REDIS_VERSION=3.2.8
# Wed, 15 Feb 2017 20:41:15 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Wed, 15 Feb 2017 20:41:16 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Wed, 15 Feb 2017 20:41:59 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Wed, 15 Feb 2017 20:42:00 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 15 Feb 2017 20:42:01 GMT
VOLUME [/data]
# Wed, 15 Feb 2017 20:42:01 GMT
WORKDIR /data
# Wed, 15 Feb 2017 20:42:02 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 15 Feb 2017 20:42:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Feb 2017 20:42:03 GMT
EXPOSE 6379/tcp
# Wed, 15 Feb 2017 20:42:04 GMT
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
	-	`sha256:622eb636e54d88a1a1bd9695750f339f8ce4991d83ffd8da47381902d6369705`  
		Last Modified: Wed, 15 Feb 2017 20:46:20 GMT  
		Size: 5.8 MB (5780595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d816b2b1c216ffbf6b95cdc8a4f1f3c0a58a4446f191570558de8faa53b0e4d`  
		Last Modified: Wed, 15 Feb 2017 20:46:17 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7b307dbd47be082835d81fa7d5911d20cf20ae222a56e5e7fe32679e89c0e`  
		Last Modified: Wed, 15 Feb 2017 20:46:19 GMT  
		Size: 385.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-alpine`

```console
$ docker pull redis@sha256:ebba7176d5fbbb69477cf39382b97cc6177af0b2c9678f9240b11e85209df531
```

-	Platforms:
	-	linux; amd64

### `redis:3.2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7692065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d39481626b2853c3853e1c63bdf016d27b58ee739f79d5a87e3adefd3c0c1ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:32:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 04 Jan 2017 21:32:54 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 15 Feb 2017 20:41:15 GMT
ENV REDIS_VERSION=3.2.8
# Wed, 15 Feb 2017 20:41:15 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Wed, 15 Feb 2017 20:41:16 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Wed, 15 Feb 2017 20:41:59 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Wed, 15 Feb 2017 20:42:00 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 15 Feb 2017 20:42:01 GMT
VOLUME [/data]
# Wed, 15 Feb 2017 20:42:01 GMT
WORKDIR /data
# Wed, 15 Feb 2017 20:42:02 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 15 Feb 2017 20:42:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Feb 2017 20:42:03 GMT
EXPOSE 6379/tcp
# Wed, 15 Feb 2017 20:42:04 GMT
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
	-	`sha256:622eb636e54d88a1a1bd9695750f339f8ce4991d83ffd8da47381902d6369705`  
		Last Modified: Wed, 15 Feb 2017 20:46:20 GMT  
		Size: 5.8 MB (5780595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d816b2b1c216ffbf6b95cdc8a4f1f3c0a58a4446f191570558de8faa53b0e4d`  
		Last Modified: Wed, 15 Feb 2017 20:46:17 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7b307dbd47be082835d81fa7d5911d20cf20ae222a56e5e7fe32679e89c0e`  
		Last Modified: Wed, 15 Feb 2017 20:46:19 GMT  
		Size: 385.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-alpine`

```console
$ docker pull redis@sha256:ebba7176d5fbbb69477cf39382b97cc6177af0b2c9678f9240b11e85209df531
```

-	Platforms:
	-	linux; amd64

### `redis:3-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7692065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d39481626b2853c3853e1c63bdf016d27b58ee739f79d5a87e3adefd3c0c1ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:32:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 04 Jan 2017 21:32:54 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 15 Feb 2017 20:41:15 GMT
ENV REDIS_VERSION=3.2.8
# Wed, 15 Feb 2017 20:41:15 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Wed, 15 Feb 2017 20:41:16 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Wed, 15 Feb 2017 20:41:59 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Wed, 15 Feb 2017 20:42:00 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 15 Feb 2017 20:42:01 GMT
VOLUME [/data]
# Wed, 15 Feb 2017 20:42:01 GMT
WORKDIR /data
# Wed, 15 Feb 2017 20:42:02 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 15 Feb 2017 20:42:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Feb 2017 20:42:03 GMT
EXPOSE 6379/tcp
# Wed, 15 Feb 2017 20:42:04 GMT
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
	-	`sha256:622eb636e54d88a1a1bd9695750f339f8ce4991d83ffd8da47381902d6369705`  
		Last Modified: Wed, 15 Feb 2017 20:46:20 GMT  
		Size: 5.8 MB (5780595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d816b2b1c216ffbf6b95cdc8a4f1f3c0a58a4446f191570558de8faa53b0e4d`  
		Last Modified: Wed, 15 Feb 2017 20:46:17 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7b307dbd47be082835d81fa7d5911d20cf20ae222a56e5e7fe32679e89c0e`  
		Last Modified: Wed, 15 Feb 2017 20:46:19 GMT  
		Size: 385.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine`

```console
$ docker pull redis@sha256:ebba7176d5fbbb69477cf39382b97cc6177af0b2c9678f9240b11e85209df531
```

-	Platforms:
	-	linux; amd64

### `redis:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7692065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d39481626b2853c3853e1c63bdf016d27b58ee739f79d5a87e3adefd3c0c1ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:32:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 04 Jan 2017 21:32:54 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 15 Feb 2017 20:41:15 GMT
ENV REDIS_VERSION=3.2.8
# Wed, 15 Feb 2017 20:41:15 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Wed, 15 Feb 2017 20:41:16 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Wed, 15 Feb 2017 20:41:59 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Wed, 15 Feb 2017 20:42:00 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 15 Feb 2017 20:42:01 GMT
VOLUME [/data]
# Wed, 15 Feb 2017 20:42:01 GMT
WORKDIR /data
# Wed, 15 Feb 2017 20:42:02 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 15 Feb 2017 20:42:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Feb 2017 20:42:03 GMT
EXPOSE 6379/tcp
# Wed, 15 Feb 2017 20:42:04 GMT
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
	-	`sha256:622eb636e54d88a1a1bd9695750f339f8ce4991d83ffd8da47381902d6369705`  
		Last Modified: Wed, 15 Feb 2017 20:46:20 GMT  
		Size: 5.8 MB (5780595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d816b2b1c216ffbf6b95cdc8a4f1f3c0a58a4446f191570558de8faa53b0e4d`  
		Last Modified: Wed, 15 Feb 2017 20:46:17 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7b307dbd47be082835d81fa7d5911d20cf20ae222a56e5e7fe32679e89c0e`  
		Last Modified: Wed, 15 Feb 2017 20:46:19 GMT  
		Size: 385.0 B  
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
