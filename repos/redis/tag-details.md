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
-	[`redis:3.2.9`](#redis329)
-	[`redis:3.2`](#redis32)
-	[`redis:3`](#redis3)
-	[`redis:latest`](#redislatest)
-	[`redis:3.2.9-32bit`](#redis329-32bit)
-	[`redis:3.2-32bit`](#redis32-32bit)
-	[`redis:3-32bit`](#redis3-32bit)
-	[`redis:32bit`](#redis32bit)
-	[`redis:3.2.9-alpine`](#redis329-alpine)
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
$ docker pull redis@sha256:d307de6891ff2a7f2d630e307346d007a49332a36b6d55d8be89ad070800b9c9
```

-	Platforms:
	-	linux; amd64

### `redis:3.0.7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34091338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:615db7a4355b0a0193c3e09241e61db12428fd1970df6b7b2b20c6872e378423`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Fri, 09 Jun 2017 06:41:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 09 Jun 2017 06:41:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 09 Jun 2017 06:42:05 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 06:42:09 GMT
ENV REDIS_VERSION=3.0.7
# Fri, 09 Jun 2017 06:42:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Fri, 09 Jun 2017 06:42:12 GMT
ENV REDIS_DOWNLOAD_SHA=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Fri, 09 Jun 2017 06:42:51 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 09 Jun 2017 06:42:52 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 09 Jun 2017 06:42:53 GMT
VOLUME [/data]
# Fri, 09 Jun 2017 06:42:55 GMT
WORKDIR /data
# Fri, 09 Jun 2017 06:42:56 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 09 Jun 2017 06:42:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 09 Jun 2017 06:42:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Jun 2017 06:42:59 GMT
EXPOSE 6379/tcp
# Fri, 09 Jun 2017 06:43:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:23e3d0773492d1b2fdc72507c0c8409a08ea9d94b45442954f5ff66a3975aaa4`  
		Last Modified: Wed, 07 Jun 2017 18:01:23 GMT  
		Size: 30.1 MB (30098598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8f870e2eab30884ed97dcd3d980d5e7774b33f6c63cbc48bc2c42735a073db`  
		Last Modified: Fri, 09 Jun 2017 07:11:01 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb63685a3dbf15c5c422d2ac8c42d678a76ff06be47c446286aa7a29f3aa905`  
		Last Modified: Fri, 09 Jun 2017 07:11:02 GMT  
		Size: 981.5 KB (981549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fcca56b3c0b18c1b48c063c2e964f7a5291d42c2b4f43a8371e5ba1c1b3251b`  
		Last Modified: Fri, 09 Jun 2017 07:11:03 GMT  
		Size: 3.0 MB (3008515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:381e72ed1b4a097f3fe695b1b5e878e526aec1de1e308561b210472f44413412`  
		Last Modified: Fri, 09 Jun 2017 07:11:01 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b494c8be5fdf51ce935e9f41d2952816a07851cfeacf4f183d6a0adbb801f4`  
		Last Modified: Fri, 09 Jun 2017 07:11:01 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49b02da0101bdf817df927f9a2728a12c8c3563282c4720038325f6b54243c9b`  
		Last Modified: Fri, 09 Jun 2017 07:11:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0`

```console
$ docker pull redis@sha256:d307de6891ff2a7f2d630e307346d007a49332a36b6d55d8be89ad070800b9c9
```

-	Platforms:
	-	linux; amd64

### `redis:3.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34091338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:615db7a4355b0a0193c3e09241e61db12428fd1970df6b7b2b20c6872e378423`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Fri, 09 Jun 2017 06:41:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 09 Jun 2017 06:41:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 09 Jun 2017 06:42:05 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 06:42:09 GMT
ENV REDIS_VERSION=3.0.7
# Fri, 09 Jun 2017 06:42:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Fri, 09 Jun 2017 06:42:12 GMT
ENV REDIS_DOWNLOAD_SHA=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Fri, 09 Jun 2017 06:42:51 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 09 Jun 2017 06:42:52 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 09 Jun 2017 06:42:53 GMT
VOLUME [/data]
# Fri, 09 Jun 2017 06:42:55 GMT
WORKDIR /data
# Fri, 09 Jun 2017 06:42:56 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 09 Jun 2017 06:42:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 09 Jun 2017 06:42:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Jun 2017 06:42:59 GMT
EXPOSE 6379/tcp
# Fri, 09 Jun 2017 06:43:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:23e3d0773492d1b2fdc72507c0c8409a08ea9d94b45442954f5ff66a3975aaa4`  
		Last Modified: Wed, 07 Jun 2017 18:01:23 GMT  
		Size: 30.1 MB (30098598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8f870e2eab30884ed97dcd3d980d5e7774b33f6c63cbc48bc2c42735a073db`  
		Last Modified: Fri, 09 Jun 2017 07:11:01 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb63685a3dbf15c5c422d2ac8c42d678a76ff06be47c446286aa7a29f3aa905`  
		Last Modified: Fri, 09 Jun 2017 07:11:02 GMT  
		Size: 981.5 KB (981549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fcca56b3c0b18c1b48c063c2e964f7a5291d42c2b4f43a8371e5ba1c1b3251b`  
		Last Modified: Fri, 09 Jun 2017 07:11:03 GMT  
		Size: 3.0 MB (3008515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:381e72ed1b4a097f3fe695b1b5e878e526aec1de1e308561b210472f44413412`  
		Last Modified: Fri, 09 Jun 2017 07:11:01 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b494c8be5fdf51ce935e9f41d2952816a07851cfeacf4f183d6a0adbb801f4`  
		Last Modified: Fri, 09 Jun 2017 07:11:01 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49b02da0101bdf817df927f9a2728a12c8c3563282c4720038325f6b54243c9b`  
		Last Modified: Fri, 09 Jun 2017 07:11:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0.7-32bit`

```console
$ docker pull redis@sha256:bf554569ae6297105a99528f93015c04c4f670c1e4d16debab869a48fe46b8f3
```

-	Platforms:
	-	linux; amd64

### `redis:3.0.7-32bit` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37983008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:490e48fdde7a40cf7eb6ed241d73bb827b30d3211d550d9e70a63ed9c5d9e02c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Fri, 09 Jun 2017 06:41:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 09 Jun 2017 06:41:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 09 Jun 2017 06:42:05 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 06:42:09 GMT
ENV REDIS_VERSION=3.0.7
# Fri, 09 Jun 2017 06:42:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Fri, 09 Jun 2017 06:42:12 GMT
ENV REDIS_DOWNLOAD_SHA=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Fri, 09 Jun 2017 06:43:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 06:44:33 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 09 Jun 2017 06:56:14 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 09 Jun 2017 06:56:15 GMT
VOLUME [/data]
# Fri, 09 Jun 2017 06:56:16 GMT
WORKDIR /data
# Fri, 09 Jun 2017 06:56:17 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 09 Jun 2017 06:56:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 09 Jun 2017 06:56:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Jun 2017 06:56:20 GMT
EXPOSE 6379/tcp
# Fri, 09 Jun 2017 06:56:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:23e3d0773492d1b2fdc72507c0c8409a08ea9d94b45442954f5ff66a3975aaa4`  
		Last Modified: Wed, 07 Jun 2017 18:01:23 GMT  
		Size: 30.1 MB (30098598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8f870e2eab30884ed97dcd3d980d5e7774b33f6c63cbc48bc2c42735a073db`  
		Last Modified: Fri, 09 Jun 2017 07:11:01 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb63685a3dbf15c5c422d2ac8c42d678a76ff06be47c446286aa7a29f3aa905`  
		Last Modified: Fri, 09 Jun 2017 07:11:02 GMT  
		Size: 981.5 KB (981549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aa4cde3e038e2059ff37aefc3c7f55dfa17db694d92d443bb29eba57214d1aa`  
		Last Modified: Fri, 09 Jun 2017 07:12:19 GMT  
		Size: 4.2 MB (4173026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfc557f7fc5f76877725384a8e14cd2c7207c196fba6d3a5d2ef67de8a81979`  
		Last Modified: Fri, 09 Jun 2017 07:12:18 GMT  
		Size: 2.7 MB (2727159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c40c5a081d189e28251a92e3feb47c1599bfa4e901c965f97f8d5fe27735acc9`  
		Last Modified: Fri, 09 Jun 2017 07:12:17 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb32e9cdda0d93aede8d52bc28d2ecc17c12a6afc1dfbe33f6fea679a145c62`  
		Last Modified: Fri, 09 Jun 2017 07:12:17 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2d1fa9e3ec0084f081d2205c68895e45c65bebb4b83b1fefc5201415a6f7c3`  
		Last Modified: Fri, 09 Jun 2017 07:12:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0-32bit`

```console
$ docker pull redis@sha256:bf554569ae6297105a99528f93015c04c4f670c1e4d16debab869a48fe46b8f3
```

-	Platforms:
	-	linux; amd64

### `redis:3.0-32bit` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37983008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:490e48fdde7a40cf7eb6ed241d73bb827b30d3211d550d9e70a63ed9c5d9e02c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Fri, 09 Jun 2017 06:41:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 09 Jun 2017 06:41:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 09 Jun 2017 06:42:05 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 06:42:09 GMT
ENV REDIS_VERSION=3.0.7
# Fri, 09 Jun 2017 06:42:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Fri, 09 Jun 2017 06:42:12 GMT
ENV REDIS_DOWNLOAD_SHA=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Fri, 09 Jun 2017 06:43:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 06:44:33 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 09 Jun 2017 06:56:14 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 09 Jun 2017 06:56:15 GMT
VOLUME [/data]
# Fri, 09 Jun 2017 06:56:16 GMT
WORKDIR /data
# Fri, 09 Jun 2017 06:56:17 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 09 Jun 2017 06:56:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 09 Jun 2017 06:56:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Jun 2017 06:56:20 GMT
EXPOSE 6379/tcp
# Fri, 09 Jun 2017 06:56:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:23e3d0773492d1b2fdc72507c0c8409a08ea9d94b45442954f5ff66a3975aaa4`  
		Last Modified: Wed, 07 Jun 2017 18:01:23 GMT  
		Size: 30.1 MB (30098598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8f870e2eab30884ed97dcd3d980d5e7774b33f6c63cbc48bc2c42735a073db`  
		Last Modified: Fri, 09 Jun 2017 07:11:01 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb63685a3dbf15c5c422d2ac8c42d678a76ff06be47c446286aa7a29f3aa905`  
		Last Modified: Fri, 09 Jun 2017 07:11:02 GMT  
		Size: 981.5 KB (981549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aa4cde3e038e2059ff37aefc3c7f55dfa17db694d92d443bb29eba57214d1aa`  
		Last Modified: Fri, 09 Jun 2017 07:12:19 GMT  
		Size: 4.2 MB (4173026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfc557f7fc5f76877725384a8e14cd2c7207c196fba6d3a5d2ef67de8a81979`  
		Last Modified: Fri, 09 Jun 2017 07:12:18 GMT  
		Size: 2.7 MB (2727159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c40c5a081d189e28251a92e3feb47c1599bfa4e901c965f97f8d5fe27735acc9`  
		Last Modified: Fri, 09 Jun 2017 07:12:17 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb32e9cdda0d93aede8d52bc28d2ecc17c12a6afc1dfbe33f6fea679a145c62`  
		Last Modified: Fri, 09 Jun 2017 07:12:17 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2d1fa9e3ec0084f081d2205c68895e45c65bebb4b83b1fefc5201415a6f7c3`  
		Last Modified: Fri, 09 Jun 2017 07:12:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0.7-alpine`

```console
$ docker pull redis@sha256:840703d16e8f144933bf4fbf276b66e58406cc736af365c65bc851c969e3907b
```

-	Platforms:
	-	linux; amd64

### `redis:3.0.7-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4953639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d63d4c6b2a12341116a22616b20ed30c871dba261246dd311587f5e362218f29`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Tue, 20 Jun 2017 00:39:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 20 Jun 2017 00:39:48 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 20 Jun 2017 00:40:07 GMT
ENV REDIS_VERSION=3.0.7
# Tue, 20 Jun 2017 00:40:08 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Tue, 20 Jun 2017 00:40:09 GMT
ENV REDIS_DOWNLOAD_SHA=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Tue, 20 Jun 2017 00:40:39 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Tue, 20 Jun 2017 00:40:42 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 20 Jun 2017 00:40:43 GMT
VOLUME [/data]
# Tue, 20 Jun 2017 00:40:44 GMT
WORKDIR /data
# Tue, 20 Jun 2017 00:41:08 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 20 Jun 2017 00:41:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 20 Jun 2017 00:41:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 00:41:34 GMT
EXPOSE 6379/tcp
# Tue, 20 Jun 2017 00:41:35 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4371af8a8c8e0b5ec128bf3b908c5f9d7343e9f449295d19a37004b68801cc0f`  
		Last Modified: Tue, 20 Jun 2017 18:58:04 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ed756029dba4ddc103640974c1edb2da81268f791538a8af9d645893c7903b`  
		Last Modified: Tue, 20 Jun 2017 18:58:03 GMT  
		Size: 8.2 KB (8160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0536d5398c929b10f0643d19fde844f05452c1232a8735ea4d7ea39699cff3e3`  
		Last Modified: Tue, 20 Jun 2017 18:58:05 GMT  
		Size: 3.0 MB (2953452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee673c43a1d4fe4a6e827e271dc4d2771457a94d8195454d853ba3b84fa6e0f`  
		Last Modified: Tue, 20 Jun 2017 18:58:04 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:388f29a755a8d2274bd22911a363eea020497e19f102fe63c7098014c4aec831`  
		Last Modified: Tue, 20 Jun 2017 18:58:04 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4459f975036d3e2d35f098a8e0475b2d0c79b61292ee0856bfabd09d8f86b26`  
		Last Modified: Tue, 20 Jun 2017 18:58:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0-alpine`

```console
$ docker pull redis@sha256:840703d16e8f144933bf4fbf276b66e58406cc736af365c65bc851c969e3907b
```

-	Platforms:
	-	linux; amd64

### `redis:3.0-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4953639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d63d4c6b2a12341116a22616b20ed30c871dba261246dd311587f5e362218f29`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Tue, 20 Jun 2017 00:39:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 20 Jun 2017 00:39:48 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 20 Jun 2017 00:40:07 GMT
ENV REDIS_VERSION=3.0.7
# Tue, 20 Jun 2017 00:40:08 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Tue, 20 Jun 2017 00:40:09 GMT
ENV REDIS_DOWNLOAD_SHA=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Tue, 20 Jun 2017 00:40:39 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Tue, 20 Jun 2017 00:40:42 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 20 Jun 2017 00:40:43 GMT
VOLUME [/data]
# Tue, 20 Jun 2017 00:40:44 GMT
WORKDIR /data
# Tue, 20 Jun 2017 00:41:08 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 20 Jun 2017 00:41:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 20 Jun 2017 00:41:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 00:41:34 GMT
EXPOSE 6379/tcp
# Tue, 20 Jun 2017 00:41:35 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4371af8a8c8e0b5ec128bf3b908c5f9d7343e9f449295d19a37004b68801cc0f`  
		Last Modified: Tue, 20 Jun 2017 18:58:04 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ed756029dba4ddc103640974c1edb2da81268f791538a8af9d645893c7903b`  
		Last Modified: Tue, 20 Jun 2017 18:58:03 GMT  
		Size: 8.2 KB (8160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0536d5398c929b10f0643d19fde844f05452c1232a8735ea4d7ea39699cff3e3`  
		Last Modified: Tue, 20 Jun 2017 18:58:05 GMT  
		Size: 3.0 MB (2953452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee673c43a1d4fe4a6e827e271dc4d2771457a94d8195454d853ba3b84fa6e0f`  
		Last Modified: Tue, 20 Jun 2017 18:58:04 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:388f29a755a8d2274bd22911a363eea020497e19f102fe63c7098014c4aec831`  
		Last Modified: Tue, 20 Jun 2017 18:58:04 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4459f975036d3e2d35f098a8e0475b2d0c79b61292ee0856bfabd09d8f86b26`  
		Last Modified: Tue, 20 Jun 2017 18:58:04 GMT  
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

## `redis:3.2.9`

```console
$ docker pull redis@sha256:6022356f9d729c858000fc10fc1b09d1624ba099227a0c5d314f7461c2fe6020
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36621853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83744227b191fbc32e3bcb293c1b90ecdb86b3636d02b1a0db009effb3a5b8de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Fri, 09 Jun 2017 06:41:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 09 Jun 2017 06:41:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 09 Jun 2017 06:42:05 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 06:57:52 GMT
ENV REDIS_VERSION=3.2.9
# Fri, 09 Jun 2017 06:57:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.9.tar.gz
# Fri, 09 Jun 2017 06:57:54 GMT
ENV REDIS_DOWNLOAD_SHA=6eaacfa983b287e440d0839ead20c2231749d5d6b78bbe0e0ffa3a890c59ff26
# Fri, 09 Jun 2017 06:58:48 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 09 Jun 2017 06:58:49 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 09 Jun 2017 06:58:50 GMT
VOLUME [/data]
# Fri, 09 Jun 2017 06:58:51 GMT
WORKDIR /data
# Fri, 09 Jun 2017 06:58:52 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 09 Jun 2017 06:58:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Jun 2017 06:58:55 GMT
EXPOSE 6379/tcp
# Fri, 09 Jun 2017 06:58:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:23e3d0773492d1b2fdc72507c0c8409a08ea9d94b45442954f5ff66a3975aaa4`  
		Last Modified: Wed, 07 Jun 2017 18:01:23 GMT  
		Size: 30.1 MB (30098598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8f870e2eab30884ed97dcd3d980d5e7774b33f6c63cbc48bc2c42735a073db`  
		Last Modified: Fri, 09 Jun 2017 07:11:01 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb63685a3dbf15c5c422d2ac8c42d678a76ff06be47c446286aa7a29f3aa905`  
		Last Modified: Fri, 09 Jun 2017 07:11:02 GMT  
		Size: 981.5 KB (981549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5f2d3e9188ec377bcc0eb43006311bcadb1438213d739fe0aebfa0d79c5716`  
		Last Modified: Fri, 09 Jun 2017 07:14:33 GMT  
		Size: 5.5 MB (5539151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b386c0238f476fb4cff96bddaa3a7721e5385f81a46c4696ac48e4270cac9f8`  
		Last Modified: Fri, 09 Jun 2017 07:14:31 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c08d492082038cc2d5eeb7007caa13f9355b56c0af04201222e876a8919054`  
		Last Modified: Fri, 09 Jun 2017 07:14:31 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2`

```console
$ docker pull redis@sha256:6022356f9d729c858000fc10fc1b09d1624ba099227a0c5d314f7461c2fe6020
```

-	Platforms:
	-	linux; amd64

### `redis:3.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36621853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83744227b191fbc32e3bcb293c1b90ecdb86b3636d02b1a0db009effb3a5b8de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Fri, 09 Jun 2017 06:41:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 09 Jun 2017 06:41:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 09 Jun 2017 06:42:05 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 06:57:52 GMT
ENV REDIS_VERSION=3.2.9
# Fri, 09 Jun 2017 06:57:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.9.tar.gz
# Fri, 09 Jun 2017 06:57:54 GMT
ENV REDIS_DOWNLOAD_SHA=6eaacfa983b287e440d0839ead20c2231749d5d6b78bbe0e0ffa3a890c59ff26
# Fri, 09 Jun 2017 06:58:48 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 09 Jun 2017 06:58:49 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 09 Jun 2017 06:58:50 GMT
VOLUME [/data]
# Fri, 09 Jun 2017 06:58:51 GMT
WORKDIR /data
# Fri, 09 Jun 2017 06:58:52 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 09 Jun 2017 06:58:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Jun 2017 06:58:55 GMT
EXPOSE 6379/tcp
# Fri, 09 Jun 2017 06:58:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:23e3d0773492d1b2fdc72507c0c8409a08ea9d94b45442954f5ff66a3975aaa4`  
		Last Modified: Wed, 07 Jun 2017 18:01:23 GMT  
		Size: 30.1 MB (30098598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8f870e2eab30884ed97dcd3d980d5e7774b33f6c63cbc48bc2c42735a073db`  
		Last Modified: Fri, 09 Jun 2017 07:11:01 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb63685a3dbf15c5c422d2ac8c42d678a76ff06be47c446286aa7a29f3aa905`  
		Last Modified: Fri, 09 Jun 2017 07:11:02 GMT  
		Size: 981.5 KB (981549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5f2d3e9188ec377bcc0eb43006311bcadb1438213d739fe0aebfa0d79c5716`  
		Last Modified: Fri, 09 Jun 2017 07:14:33 GMT  
		Size: 5.5 MB (5539151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b386c0238f476fb4cff96bddaa3a7721e5385f81a46c4696ac48e4270cac9f8`  
		Last Modified: Fri, 09 Jun 2017 07:14:31 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c08d492082038cc2d5eeb7007caa13f9355b56c0af04201222e876a8919054`  
		Last Modified: Fri, 09 Jun 2017 07:14:31 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3`

```console
$ docker pull redis@sha256:6022356f9d729c858000fc10fc1b09d1624ba099227a0c5d314f7461c2fe6020
```

-	Platforms:
	-	linux; amd64

### `redis:3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36621853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83744227b191fbc32e3bcb293c1b90ecdb86b3636d02b1a0db009effb3a5b8de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Fri, 09 Jun 2017 06:41:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 09 Jun 2017 06:41:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 09 Jun 2017 06:42:05 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 06:57:52 GMT
ENV REDIS_VERSION=3.2.9
# Fri, 09 Jun 2017 06:57:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.9.tar.gz
# Fri, 09 Jun 2017 06:57:54 GMT
ENV REDIS_DOWNLOAD_SHA=6eaacfa983b287e440d0839ead20c2231749d5d6b78bbe0e0ffa3a890c59ff26
# Fri, 09 Jun 2017 06:58:48 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 09 Jun 2017 06:58:49 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 09 Jun 2017 06:58:50 GMT
VOLUME [/data]
# Fri, 09 Jun 2017 06:58:51 GMT
WORKDIR /data
# Fri, 09 Jun 2017 06:58:52 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 09 Jun 2017 06:58:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Jun 2017 06:58:55 GMT
EXPOSE 6379/tcp
# Fri, 09 Jun 2017 06:58:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:23e3d0773492d1b2fdc72507c0c8409a08ea9d94b45442954f5ff66a3975aaa4`  
		Last Modified: Wed, 07 Jun 2017 18:01:23 GMT  
		Size: 30.1 MB (30098598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8f870e2eab30884ed97dcd3d980d5e7774b33f6c63cbc48bc2c42735a073db`  
		Last Modified: Fri, 09 Jun 2017 07:11:01 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb63685a3dbf15c5c422d2ac8c42d678a76ff06be47c446286aa7a29f3aa905`  
		Last Modified: Fri, 09 Jun 2017 07:11:02 GMT  
		Size: 981.5 KB (981549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5f2d3e9188ec377bcc0eb43006311bcadb1438213d739fe0aebfa0d79c5716`  
		Last Modified: Fri, 09 Jun 2017 07:14:33 GMT  
		Size: 5.5 MB (5539151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b386c0238f476fb4cff96bddaa3a7721e5385f81a46c4696ac48e4270cac9f8`  
		Last Modified: Fri, 09 Jun 2017 07:14:31 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c08d492082038cc2d5eeb7007caa13f9355b56c0af04201222e876a8919054`  
		Last Modified: Fri, 09 Jun 2017 07:14:31 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:latest`

```console
$ docker pull redis@sha256:6022356f9d729c858000fc10fc1b09d1624ba099227a0c5d314f7461c2fe6020
```

-	Platforms:
	-	linux; amd64

### `redis:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36621853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83744227b191fbc32e3bcb293c1b90ecdb86b3636d02b1a0db009effb3a5b8de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Fri, 09 Jun 2017 06:41:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 09 Jun 2017 06:41:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 09 Jun 2017 06:42:05 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 06:57:52 GMT
ENV REDIS_VERSION=3.2.9
# Fri, 09 Jun 2017 06:57:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.9.tar.gz
# Fri, 09 Jun 2017 06:57:54 GMT
ENV REDIS_DOWNLOAD_SHA=6eaacfa983b287e440d0839ead20c2231749d5d6b78bbe0e0ffa3a890c59ff26
# Fri, 09 Jun 2017 06:58:48 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 09 Jun 2017 06:58:49 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 09 Jun 2017 06:58:50 GMT
VOLUME [/data]
# Fri, 09 Jun 2017 06:58:51 GMT
WORKDIR /data
# Fri, 09 Jun 2017 06:58:52 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 09 Jun 2017 06:58:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Jun 2017 06:58:55 GMT
EXPOSE 6379/tcp
# Fri, 09 Jun 2017 06:58:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:23e3d0773492d1b2fdc72507c0c8409a08ea9d94b45442954f5ff66a3975aaa4`  
		Last Modified: Wed, 07 Jun 2017 18:01:23 GMT  
		Size: 30.1 MB (30098598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8f870e2eab30884ed97dcd3d980d5e7774b33f6c63cbc48bc2c42735a073db`  
		Last Modified: Fri, 09 Jun 2017 07:11:01 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb63685a3dbf15c5c422d2ac8c42d678a76ff06be47c446286aa7a29f3aa905`  
		Last Modified: Fri, 09 Jun 2017 07:11:02 GMT  
		Size: 981.5 KB (981549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5f2d3e9188ec377bcc0eb43006311bcadb1438213d739fe0aebfa0d79c5716`  
		Last Modified: Fri, 09 Jun 2017 07:14:33 GMT  
		Size: 5.5 MB (5539151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b386c0238f476fb4cff96bddaa3a7721e5385f81a46c4696ac48e4270cac9f8`  
		Last Modified: Fri, 09 Jun 2017 07:14:31 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c08d492082038cc2d5eeb7007caa13f9355b56c0af04201222e876a8919054`  
		Last Modified: Fri, 09 Jun 2017 07:14:31 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.9-32bit`

```console
$ docker pull redis@sha256:774816a4495dc4cf286d503ef1cf3ec19d1e9ad764b648b145bd220790e0ffbd
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.9-32bit` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40275437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b2563798d250408045bca75bc463eceb3dc52632e06b787935ef736ade10c06`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Fri, 09 Jun 2017 06:41:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 09 Jun 2017 06:41:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 09 Jun 2017 06:42:05 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 06:57:52 GMT
ENV REDIS_VERSION=3.2.9
# Fri, 09 Jun 2017 06:57:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.9.tar.gz
# Fri, 09 Jun 2017 06:57:54 GMT
ENV REDIS_DOWNLOAD_SHA=6eaacfa983b287e440d0839ead20c2231749d5d6b78bbe0e0ffa3a890c59ff26
# Fri, 09 Jun 2017 06:59:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 07:00:45 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 09 Jun 2017 07:00:47 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 09 Jun 2017 07:00:48 GMT
VOLUME [/data]
# Fri, 09 Jun 2017 07:00:49 GMT
WORKDIR /data
# Fri, 09 Jun 2017 07:00:51 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 09 Jun 2017 07:00:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Jun 2017 07:00:54 GMT
EXPOSE 6379/tcp
# Fri, 09 Jun 2017 07:00:55 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:23e3d0773492d1b2fdc72507c0c8409a08ea9d94b45442954f5ff66a3975aaa4`  
		Last Modified: Wed, 07 Jun 2017 18:01:23 GMT  
		Size: 30.1 MB (30098598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8f870e2eab30884ed97dcd3d980d5e7774b33f6c63cbc48bc2c42735a073db`  
		Last Modified: Fri, 09 Jun 2017 07:11:01 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb63685a3dbf15c5c422d2ac8c42d678a76ff06be47c446286aa7a29f3aa905`  
		Last Modified: Fri, 09 Jun 2017 07:11:02 GMT  
		Size: 981.5 KB (981549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e77c1c8d0e21681587f52162a748646fc26b9b4601743cbe0a2673b65bcbaff`  
		Last Modified: Fri, 09 Jun 2017 07:16:19 GMT  
		Size: 4.2 MB (4173039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f66a0019668a6e3c917a6fb4ddbf49e43376289eb285e7f5ff494e4d5029c037`  
		Last Modified: Fri, 09 Jun 2017 07:16:19 GMT  
		Size: 5.0 MB (5019695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0358bdc5e86c1dd7c435eb22d12b6ea3352904d80d639c929fd3771b93f3a3c6`  
		Last Modified: Fri, 09 Jun 2017 07:16:18 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3cdf73e742a7ddcd0ee41c6125e2358e407f4dc4334b04f300e913ac1196eec`  
		Last Modified: Fri, 09 Jun 2017 07:16:16 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-32bit`

```console
$ docker pull redis@sha256:774816a4495dc4cf286d503ef1cf3ec19d1e9ad764b648b145bd220790e0ffbd
```

-	Platforms:
	-	linux; amd64

### `redis:3.2-32bit` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40275437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b2563798d250408045bca75bc463eceb3dc52632e06b787935ef736ade10c06`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Fri, 09 Jun 2017 06:41:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 09 Jun 2017 06:41:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 09 Jun 2017 06:42:05 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 06:57:52 GMT
ENV REDIS_VERSION=3.2.9
# Fri, 09 Jun 2017 06:57:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.9.tar.gz
# Fri, 09 Jun 2017 06:57:54 GMT
ENV REDIS_DOWNLOAD_SHA=6eaacfa983b287e440d0839ead20c2231749d5d6b78bbe0e0ffa3a890c59ff26
# Fri, 09 Jun 2017 06:59:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 07:00:45 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 09 Jun 2017 07:00:47 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 09 Jun 2017 07:00:48 GMT
VOLUME [/data]
# Fri, 09 Jun 2017 07:00:49 GMT
WORKDIR /data
# Fri, 09 Jun 2017 07:00:51 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 09 Jun 2017 07:00:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Jun 2017 07:00:54 GMT
EXPOSE 6379/tcp
# Fri, 09 Jun 2017 07:00:55 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:23e3d0773492d1b2fdc72507c0c8409a08ea9d94b45442954f5ff66a3975aaa4`  
		Last Modified: Wed, 07 Jun 2017 18:01:23 GMT  
		Size: 30.1 MB (30098598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8f870e2eab30884ed97dcd3d980d5e7774b33f6c63cbc48bc2c42735a073db`  
		Last Modified: Fri, 09 Jun 2017 07:11:01 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb63685a3dbf15c5c422d2ac8c42d678a76ff06be47c446286aa7a29f3aa905`  
		Last Modified: Fri, 09 Jun 2017 07:11:02 GMT  
		Size: 981.5 KB (981549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e77c1c8d0e21681587f52162a748646fc26b9b4601743cbe0a2673b65bcbaff`  
		Last Modified: Fri, 09 Jun 2017 07:16:19 GMT  
		Size: 4.2 MB (4173039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f66a0019668a6e3c917a6fb4ddbf49e43376289eb285e7f5ff494e4d5029c037`  
		Last Modified: Fri, 09 Jun 2017 07:16:19 GMT  
		Size: 5.0 MB (5019695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0358bdc5e86c1dd7c435eb22d12b6ea3352904d80d639c929fd3771b93f3a3c6`  
		Last Modified: Fri, 09 Jun 2017 07:16:18 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3cdf73e742a7ddcd0ee41c6125e2358e407f4dc4334b04f300e913ac1196eec`  
		Last Modified: Fri, 09 Jun 2017 07:16:16 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-32bit`

```console
$ docker pull redis@sha256:774816a4495dc4cf286d503ef1cf3ec19d1e9ad764b648b145bd220790e0ffbd
```

-	Platforms:
	-	linux; amd64

### `redis:3-32bit` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40275437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b2563798d250408045bca75bc463eceb3dc52632e06b787935ef736ade10c06`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Fri, 09 Jun 2017 06:41:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 09 Jun 2017 06:41:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 09 Jun 2017 06:42:05 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 06:57:52 GMT
ENV REDIS_VERSION=3.2.9
# Fri, 09 Jun 2017 06:57:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.9.tar.gz
# Fri, 09 Jun 2017 06:57:54 GMT
ENV REDIS_DOWNLOAD_SHA=6eaacfa983b287e440d0839ead20c2231749d5d6b78bbe0e0ffa3a890c59ff26
# Fri, 09 Jun 2017 06:59:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 07:00:45 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 09 Jun 2017 07:00:47 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 09 Jun 2017 07:00:48 GMT
VOLUME [/data]
# Fri, 09 Jun 2017 07:00:49 GMT
WORKDIR /data
# Fri, 09 Jun 2017 07:00:51 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 09 Jun 2017 07:00:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Jun 2017 07:00:54 GMT
EXPOSE 6379/tcp
# Fri, 09 Jun 2017 07:00:55 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:23e3d0773492d1b2fdc72507c0c8409a08ea9d94b45442954f5ff66a3975aaa4`  
		Last Modified: Wed, 07 Jun 2017 18:01:23 GMT  
		Size: 30.1 MB (30098598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8f870e2eab30884ed97dcd3d980d5e7774b33f6c63cbc48bc2c42735a073db`  
		Last Modified: Fri, 09 Jun 2017 07:11:01 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb63685a3dbf15c5c422d2ac8c42d678a76ff06be47c446286aa7a29f3aa905`  
		Last Modified: Fri, 09 Jun 2017 07:11:02 GMT  
		Size: 981.5 KB (981549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e77c1c8d0e21681587f52162a748646fc26b9b4601743cbe0a2673b65bcbaff`  
		Last Modified: Fri, 09 Jun 2017 07:16:19 GMT  
		Size: 4.2 MB (4173039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f66a0019668a6e3c917a6fb4ddbf49e43376289eb285e7f5ff494e4d5029c037`  
		Last Modified: Fri, 09 Jun 2017 07:16:19 GMT  
		Size: 5.0 MB (5019695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0358bdc5e86c1dd7c435eb22d12b6ea3352904d80d639c929fd3771b93f3a3c6`  
		Last Modified: Fri, 09 Jun 2017 07:16:18 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3cdf73e742a7ddcd0ee41c6125e2358e407f4dc4334b04f300e913ac1196eec`  
		Last Modified: Fri, 09 Jun 2017 07:16:16 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:32bit`

```console
$ docker pull redis@sha256:774816a4495dc4cf286d503ef1cf3ec19d1e9ad764b648b145bd220790e0ffbd
```

-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40275437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b2563798d250408045bca75bc463eceb3dc52632e06b787935ef736ade10c06`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Fri, 09 Jun 2017 06:41:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 09 Jun 2017 06:41:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 09 Jun 2017 06:42:05 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 06:57:52 GMT
ENV REDIS_VERSION=3.2.9
# Fri, 09 Jun 2017 06:57:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.9.tar.gz
# Fri, 09 Jun 2017 06:57:54 GMT
ENV REDIS_DOWNLOAD_SHA=6eaacfa983b287e440d0839ead20c2231749d5d6b78bbe0e0ffa3a890c59ff26
# Fri, 09 Jun 2017 06:59:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 07:00:45 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 09 Jun 2017 07:00:47 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 09 Jun 2017 07:00:48 GMT
VOLUME [/data]
# Fri, 09 Jun 2017 07:00:49 GMT
WORKDIR /data
# Fri, 09 Jun 2017 07:00:51 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 09 Jun 2017 07:00:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Jun 2017 07:00:54 GMT
EXPOSE 6379/tcp
# Fri, 09 Jun 2017 07:00:55 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:23e3d0773492d1b2fdc72507c0c8409a08ea9d94b45442954f5ff66a3975aaa4`  
		Last Modified: Wed, 07 Jun 2017 18:01:23 GMT  
		Size: 30.1 MB (30098598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8f870e2eab30884ed97dcd3d980d5e7774b33f6c63cbc48bc2c42735a073db`  
		Last Modified: Fri, 09 Jun 2017 07:11:01 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb63685a3dbf15c5c422d2ac8c42d678a76ff06be47c446286aa7a29f3aa905`  
		Last Modified: Fri, 09 Jun 2017 07:11:02 GMT  
		Size: 981.5 KB (981549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e77c1c8d0e21681587f52162a748646fc26b9b4601743cbe0a2673b65bcbaff`  
		Last Modified: Fri, 09 Jun 2017 07:16:19 GMT  
		Size: 4.2 MB (4173039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f66a0019668a6e3c917a6fb4ddbf49e43376289eb285e7f5ff494e4d5029c037`  
		Last Modified: Fri, 09 Jun 2017 07:16:19 GMT  
		Size: 5.0 MB (5019695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0358bdc5e86c1dd7c435eb22d12b6ea3352904d80d639c929fd3771b93f3a3c6`  
		Last Modified: Fri, 09 Jun 2017 07:16:18 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3cdf73e742a7ddcd0ee41c6125e2358e407f4dc4334b04f300e913ac1196eec`  
		Last Modified: Fri, 09 Jun 2017 07:16:16 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.9-alpine`

```console
$ docker pull redis@sha256:abd220f66aac9f530096d5c4d382eb1483dc4e3bac5dd6a56b67746cd86d0e5b
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.9-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7490613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc63a40c7cd7f177eceb8ece21595aa55f2fccd4973ac64cd32c216961b65844`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Tue, 20 Jun 2017 00:39:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 20 Jun 2017 00:39:48 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 20 Jun 2017 00:42:23 GMT
ENV REDIS_VERSION=3.2.9
# Tue, 20 Jun 2017 00:42:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.9.tar.gz
# Tue, 20 Jun 2017 00:42:24 GMT
ENV REDIS_DOWNLOAD_SHA=6eaacfa983b287e440d0839ead20c2231749d5d6b78bbe0e0ffa3a890c59ff26
# Tue, 20 Jun 2017 00:42:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Tue, 20 Jun 2017 00:42:59 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 20 Jun 2017 00:43:23 GMT
VOLUME [/data]
# Tue, 20 Jun 2017 00:43:24 GMT
WORKDIR /data
# Tue, 20 Jun 2017 00:43:25 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 20 Jun 2017 00:43:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 00:43:50 GMT
EXPOSE 6379/tcp
# Tue, 20 Jun 2017 00:43:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4371af8a8c8e0b5ec128bf3b908c5f9d7343e9f449295d19a37004b68801cc0f`  
		Last Modified: Tue, 20 Jun 2017 18:58:04 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ed756029dba4ddc103640974c1edb2da81268f791538a8af9d645893c7903b`  
		Last Modified: Tue, 20 Jun 2017 18:58:03 GMT  
		Size: 8.2 KB (8160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653720cb4fd4cf5cfdd29f4431be52944ff982c9fe80415b905532c0bd66287b`  
		Last Modified: Tue, 20 Jun 2017 19:03:39 GMT  
		Size: 5.5 MB (5490549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65f285e186215589238ac09fc500d306d741dd4ccac3244f036d996dfc73d60`  
		Last Modified: Tue, 20 Jun 2017 19:03:39 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d06b31f9ca6f4517d5921afd8c7325555d920ef1d826c13ec45878f5b73d08`  
		Last Modified: Tue, 20 Jun 2017 19:03:38 GMT  
		Size: 388.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-alpine`

```console
$ docker pull redis@sha256:abd220f66aac9f530096d5c4d382eb1483dc4e3bac5dd6a56b67746cd86d0e5b
```

-	Platforms:
	-	linux; amd64

### `redis:3.2-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7490613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc63a40c7cd7f177eceb8ece21595aa55f2fccd4973ac64cd32c216961b65844`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Tue, 20 Jun 2017 00:39:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 20 Jun 2017 00:39:48 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 20 Jun 2017 00:42:23 GMT
ENV REDIS_VERSION=3.2.9
# Tue, 20 Jun 2017 00:42:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.9.tar.gz
# Tue, 20 Jun 2017 00:42:24 GMT
ENV REDIS_DOWNLOAD_SHA=6eaacfa983b287e440d0839ead20c2231749d5d6b78bbe0e0ffa3a890c59ff26
# Tue, 20 Jun 2017 00:42:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Tue, 20 Jun 2017 00:42:59 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 20 Jun 2017 00:43:23 GMT
VOLUME [/data]
# Tue, 20 Jun 2017 00:43:24 GMT
WORKDIR /data
# Tue, 20 Jun 2017 00:43:25 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 20 Jun 2017 00:43:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 00:43:50 GMT
EXPOSE 6379/tcp
# Tue, 20 Jun 2017 00:43:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4371af8a8c8e0b5ec128bf3b908c5f9d7343e9f449295d19a37004b68801cc0f`  
		Last Modified: Tue, 20 Jun 2017 18:58:04 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ed756029dba4ddc103640974c1edb2da81268f791538a8af9d645893c7903b`  
		Last Modified: Tue, 20 Jun 2017 18:58:03 GMT  
		Size: 8.2 KB (8160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653720cb4fd4cf5cfdd29f4431be52944ff982c9fe80415b905532c0bd66287b`  
		Last Modified: Tue, 20 Jun 2017 19:03:39 GMT  
		Size: 5.5 MB (5490549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65f285e186215589238ac09fc500d306d741dd4ccac3244f036d996dfc73d60`  
		Last Modified: Tue, 20 Jun 2017 19:03:39 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d06b31f9ca6f4517d5921afd8c7325555d920ef1d826c13ec45878f5b73d08`  
		Last Modified: Tue, 20 Jun 2017 19:03:38 GMT  
		Size: 388.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-alpine`

```console
$ docker pull redis@sha256:abd220f66aac9f530096d5c4d382eb1483dc4e3bac5dd6a56b67746cd86d0e5b
```

-	Platforms:
	-	linux; amd64

### `redis:3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7490613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc63a40c7cd7f177eceb8ece21595aa55f2fccd4973ac64cd32c216961b65844`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Tue, 20 Jun 2017 00:39:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 20 Jun 2017 00:39:48 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 20 Jun 2017 00:42:23 GMT
ENV REDIS_VERSION=3.2.9
# Tue, 20 Jun 2017 00:42:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.9.tar.gz
# Tue, 20 Jun 2017 00:42:24 GMT
ENV REDIS_DOWNLOAD_SHA=6eaacfa983b287e440d0839ead20c2231749d5d6b78bbe0e0ffa3a890c59ff26
# Tue, 20 Jun 2017 00:42:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Tue, 20 Jun 2017 00:42:59 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 20 Jun 2017 00:43:23 GMT
VOLUME [/data]
# Tue, 20 Jun 2017 00:43:24 GMT
WORKDIR /data
# Tue, 20 Jun 2017 00:43:25 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 20 Jun 2017 00:43:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 00:43:50 GMT
EXPOSE 6379/tcp
# Tue, 20 Jun 2017 00:43:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4371af8a8c8e0b5ec128bf3b908c5f9d7343e9f449295d19a37004b68801cc0f`  
		Last Modified: Tue, 20 Jun 2017 18:58:04 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ed756029dba4ddc103640974c1edb2da81268f791538a8af9d645893c7903b`  
		Last Modified: Tue, 20 Jun 2017 18:58:03 GMT  
		Size: 8.2 KB (8160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653720cb4fd4cf5cfdd29f4431be52944ff982c9fe80415b905532c0bd66287b`  
		Last Modified: Tue, 20 Jun 2017 19:03:39 GMT  
		Size: 5.5 MB (5490549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65f285e186215589238ac09fc500d306d741dd4ccac3244f036d996dfc73d60`  
		Last Modified: Tue, 20 Jun 2017 19:03:39 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d06b31f9ca6f4517d5921afd8c7325555d920ef1d826c13ec45878f5b73d08`  
		Last Modified: Tue, 20 Jun 2017 19:03:38 GMT  
		Size: 388.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine`

```console
$ docker pull redis@sha256:abd220f66aac9f530096d5c4d382eb1483dc4e3bac5dd6a56b67746cd86d0e5b
```

-	Platforms:
	-	linux; amd64

### `redis:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7490613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc63a40c7cd7f177eceb8ece21595aa55f2fccd4973ac64cd32c216961b65844`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Tue, 20 Jun 2017 00:39:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 20 Jun 2017 00:39:48 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 20 Jun 2017 00:42:23 GMT
ENV REDIS_VERSION=3.2.9
# Tue, 20 Jun 2017 00:42:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.9.tar.gz
# Tue, 20 Jun 2017 00:42:24 GMT
ENV REDIS_DOWNLOAD_SHA=6eaacfa983b287e440d0839ead20c2231749d5d6b78bbe0e0ffa3a890c59ff26
# Tue, 20 Jun 2017 00:42:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Tue, 20 Jun 2017 00:42:59 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 20 Jun 2017 00:43:23 GMT
VOLUME [/data]
# Tue, 20 Jun 2017 00:43:24 GMT
WORKDIR /data
# Tue, 20 Jun 2017 00:43:25 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 20 Jun 2017 00:43:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 00:43:50 GMT
EXPOSE 6379/tcp
# Tue, 20 Jun 2017 00:43:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4371af8a8c8e0b5ec128bf3b908c5f9d7343e9f449295d19a37004b68801cc0f`  
		Last Modified: Tue, 20 Jun 2017 18:58:04 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ed756029dba4ddc103640974c1edb2da81268f791538a8af9d645893c7903b`  
		Last Modified: Tue, 20 Jun 2017 18:58:03 GMT  
		Size: 8.2 KB (8160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653720cb4fd4cf5cfdd29f4431be52944ff982c9fe80415b905532c0bd66287b`  
		Last Modified: Tue, 20 Jun 2017 19:03:39 GMT  
		Size: 5.5 MB (5490549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65f285e186215589238ac09fc500d306d741dd4ccac3244f036d996dfc73d60`  
		Last Modified: Tue, 20 Jun 2017 19:03:39 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d06b31f9ca6f4517d5921afd8c7325555d920ef1d826c13ec45878f5b73d08`  
		Last Modified: Tue, 20 Jun 2017 19:03:38 GMT  
		Size: 388.0 B  
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
