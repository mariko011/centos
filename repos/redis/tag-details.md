<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redis`

-	[`redis:3.2.10`](#redis3210)
-	[`redis:3.2`](#redis32)
-	[`redis:3`](#redis3)
-	[`redis:3.2.10-32bit`](#redis3210-32bit)
-	[`redis:3.2-32bit`](#redis32-32bit)
-	[`redis:3-32bit`](#redis3-32bit)
-	[`redis:3.2.10-alpine`](#redis3210-alpine)
-	[`redis:3.2-alpine`](#redis32-alpine)
-	[`redis:3-alpine`](#redis3-alpine)
-	[`redis:4.0.1`](#redis401)
-	[`redis:4.0`](#redis40)
-	[`redis:4`](#redis4)
-	[`redis:latest`](#redislatest)
-	[`redis:4.0.1-32bit`](#redis401-32bit)
-	[`redis:4.0-32bit`](#redis40-32bit)
-	[`redis:4-32bit`](#redis4-32bit)
-	[`redis:32bit`](#redis32bit)
-	[`redis:4.0.1-alpine`](#redis401-alpine)
-	[`redis:4.0-alpine`](#redis40-alpine)
-	[`redis:4-alpine`](#redis4-alpine)
-	[`redis:alpine`](#redisalpine)

## `redis:3.2.10`

```console
$ docker pull redis@sha256:db724f8d0b505af8fde5f27803bb3dd926c88397561f8e4ca9ca25380ea674e6
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.10` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36639212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5520653847f71e29a15d12e0f8008d6d8ecd18b1e119c855d566b35c7f51e185`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 09:54:52 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 09:54:52 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 09:55:19 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 09:55:20 GMT
ENV REDIS_VERSION=3.2.10
# Fri, 08 Sep 2017 09:55:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Fri, 08 Sep 2017 09:55:20 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Fri, 08 Sep 2017 09:56:02 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 09:56:03 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Sep 2017 09:56:03 GMT
VOLUME [/data]
# Fri, 08 Sep 2017 09:56:03 GMT
WORKDIR /data
# Fri, 08 Sep 2017 09:56:04 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 08 Sep 2017 09:56:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 09:56:04 GMT
EXPOSE 6379/tcp
# Fri, 08 Sep 2017 09:56:05 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb2c08a77237578a88e6a9242db9060c8efbe632e030502899184e93b482620`  
		Last Modified: Mon, 11 Sep 2017 07:21:59 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae08bd2580c409b625db46fe5310f7d2a0c7e2ca9acbd61ac1349e9b8ef04eac`  
		Last Modified: Mon, 11 Sep 2017 07:22:01 GMT  
		Size: 981.7 KB (981687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f172900ab4d5524022df25ba76f6412e1903e1c2195e867a59b21794cb17bb`  
		Last Modified: Mon, 11 Sep 2017 07:22:01 GMT  
		Size: 5.5 MB (5541837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef2d73fd305f0110a0562cc5ef12c6c1a24315466681039130137f289524443`  
		Last Modified: Mon, 11 Sep 2017 07:21:59 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81ecdc1ea31585de972b5edc9728af5413f89b2c90089a22cbb14d265837406`  
		Last Modified: Mon, 11 Sep 2017 07:22:00 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2`

```console
$ docker pull redis@sha256:db724f8d0b505af8fde5f27803bb3dd926c88397561f8e4ca9ca25380ea674e6
```

-	Platforms:
	-	linux; amd64

### `redis:3.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36639212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5520653847f71e29a15d12e0f8008d6d8ecd18b1e119c855d566b35c7f51e185`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 09:54:52 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 09:54:52 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 09:55:19 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 09:55:20 GMT
ENV REDIS_VERSION=3.2.10
# Fri, 08 Sep 2017 09:55:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Fri, 08 Sep 2017 09:55:20 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Fri, 08 Sep 2017 09:56:02 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 09:56:03 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Sep 2017 09:56:03 GMT
VOLUME [/data]
# Fri, 08 Sep 2017 09:56:03 GMT
WORKDIR /data
# Fri, 08 Sep 2017 09:56:04 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 08 Sep 2017 09:56:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 09:56:04 GMT
EXPOSE 6379/tcp
# Fri, 08 Sep 2017 09:56:05 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb2c08a77237578a88e6a9242db9060c8efbe632e030502899184e93b482620`  
		Last Modified: Mon, 11 Sep 2017 07:21:59 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae08bd2580c409b625db46fe5310f7d2a0c7e2ca9acbd61ac1349e9b8ef04eac`  
		Last Modified: Mon, 11 Sep 2017 07:22:01 GMT  
		Size: 981.7 KB (981687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f172900ab4d5524022df25ba76f6412e1903e1c2195e867a59b21794cb17bb`  
		Last Modified: Mon, 11 Sep 2017 07:22:01 GMT  
		Size: 5.5 MB (5541837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef2d73fd305f0110a0562cc5ef12c6c1a24315466681039130137f289524443`  
		Last Modified: Mon, 11 Sep 2017 07:21:59 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81ecdc1ea31585de972b5edc9728af5413f89b2c90089a22cbb14d265837406`  
		Last Modified: Mon, 11 Sep 2017 07:22:00 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3`

```console
$ docker pull redis@sha256:db724f8d0b505af8fde5f27803bb3dd926c88397561f8e4ca9ca25380ea674e6
```

-	Platforms:
	-	linux; amd64

### `redis:3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36639212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5520653847f71e29a15d12e0f8008d6d8ecd18b1e119c855d566b35c7f51e185`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 09:54:52 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 09:54:52 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 09:55:19 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 09:55:20 GMT
ENV REDIS_VERSION=3.2.10
# Fri, 08 Sep 2017 09:55:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Fri, 08 Sep 2017 09:55:20 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Fri, 08 Sep 2017 09:56:02 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 09:56:03 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Sep 2017 09:56:03 GMT
VOLUME [/data]
# Fri, 08 Sep 2017 09:56:03 GMT
WORKDIR /data
# Fri, 08 Sep 2017 09:56:04 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 08 Sep 2017 09:56:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 09:56:04 GMT
EXPOSE 6379/tcp
# Fri, 08 Sep 2017 09:56:05 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb2c08a77237578a88e6a9242db9060c8efbe632e030502899184e93b482620`  
		Last Modified: Mon, 11 Sep 2017 07:21:59 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae08bd2580c409b625db46fe5310f7d2a0c7e2ca9acbd61ac1349e9b8ef04eac`  
		Last Modified: Mon, 11 Sep 2017 07:22:01 GMT  
		Size: 981.7 KB (981687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f172900ab4d5524022df25ba76f6412e1903e1c2195e867a59b21794cb17bb`  
		Last Modified: Mon, 11 Sep 2017 07:22:01 GMT  
		Size: 5.5 MB (5541837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef2d73fd305f0110a0562cc5ef12c6c1a24315466681039130137f289524443`  
		Last Modified: Mon, 11 Sep 2017 07:21:59 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81ecdc1ea31585de972b5edc9728af5413f89b2c90089a22cbb14d265837406`  
		Last Modified: Mon, 11 Sep 2017 07:22:00 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.10-32bit`

```console
$ docker pull redis@sha256:8701c2be35a9bbcbb13fde38b38c26499c9cf7c47d759e5e894ce758e51e7dc4
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.10-32bit` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40296003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28963ab02e2dcd828f565dbc62f43c50d2458140378a39d478a4e298a152ac18`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 09:54:52 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 09:54:52 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 09:55:19 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 09:55:20 GMT
ENV REDIS_VERSION=3.2.10
# Fri, 08 Sep 2017 09:55:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Fri, 08 Sep 2017 09:55:20 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Fri, 08 Sep 2017 09:56:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 09:57:14 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 09:57:15 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Sep 2017 09:57:15 GMT
VOLUME [/data]
# Fri, 08 Sep 2017 09:57:16 GMT
WORKDIR /data
# Fri, 08 Sep 2017 09:57:16 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 08 Sep 2017 09:57:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 09:57:17 GMT
EXPOSE 6379/tcp
# Fri, 08 Sep 2017 09:57:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb2c08a77237578a88e6a9242db9060c8efbe632e030502899184e93b482620`  
		Last Modified: Mon, 11 Sep 2017 07:21:59 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae08bd2580c409b625db46fe5310f7d2a0c7e2ca9acbd61ac1349e9b8ef04eac`  
		Last Modified: Mon, 11 Sep 2017 07:22:01 GMT  
		Size: 981.7 KB (981687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70c53659abd683b1b26f501d6c3f0ead6302baa6efeacc1017f9c4ddfc4d629`  
		Last Modified: Mon, 11 Sep 2017 07:22:30 GMT  
		Size: 4.2 MB (4173562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c7d64e62fe0b6b958e4185e3a14b995213808b1e1d416a866cfc9ceb523f82`  
		Last Modified: Mon, 11 Sep 2017 07:22:30 GMT  
		Size: 5.0 MB (5025063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3a46b63c23072a854f63c37ce1e48bd215f9bf2188f563cc7e52f7e383facce`  
		Last Modified: Mon, 11 Sep 2017 07:22:29 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44b4e8c63dc8d912fe333993b71b81a6f4185ebc770d3373ffd25284ca0a68e`  
		Last Modified: Mon, 11 Sep 2017 07:22:29 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-32bit`

```console
$ docker pull redis@sha256:8701c2be35a9bbcbb13fde38b38c26499c9cf7c47d759e5e894ce758e51e7dc4
```

-	Platforms:
	-	linux; amd64

### `redis:3.2-32bit` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40296003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28963ab02e2dcd828f565dbc62f43c50d2458140378a39d478a4e298a152ac18`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 09:54:52 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 09:54:52 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 09:55:19 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 09:55:20 GMT
ENV REDIS_VERSION=3.2.10
# Fri, 08 Sep 2017 09:55:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Fri, 08 Sep 2017 09:55:20 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Fri, 08 Sep 2017 09:56:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 09:57:14 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 09:57:15 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Sep 2017 09:57:15 GMT
VOLUME [/data]
# Fri, 08 Sep 2017 09:57:16 GMT
WORKDIR /data
# Fri, 08 Sep 2017 09:57:16 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 08 Sep 2017 09:57:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 09:57:17 GMT
EXPOSE 6379/tcp
# Fri, 08 Sep 2017 09:57:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb2c08a77237578a88e6a9242db9060c8efbe632e030502899184e93b482620`  
		Last Modified: Mon, 11 Sep 2017 07:21:59 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae08bd2580c409b625db46fe5310f7d2a0c7e2ca9acbd61ac1349e9b8ef04eac`  
		Last Modified: Mon, 11 Sep 2017 07:22:01 GMT  
		Size: 981.7 KB (981687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70c53659abd683b1b26f501d6c3f0ead6302baa6efeacc1017f9c4ddfc4d629`  
		Last Modified: Mon, 11 Sep 2017 07:22:30 GMT  
		Size: 4.2 MB (4173562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c7d64e62fe0b6b958e4185e3a14b995213808b1e1d416a866cfc9ceb523f82`  
		Last Modified: Mon, 11 Sep 2017 07:22:30 GMT  
		Size: 5.0 MB (5025063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3a46b63c23072a854f63c37ce1e48bd215f9bf2188f563cc7e52f7e383facce`  
		Last Modified: Mon, 11 Sep 2017 07:22:29 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44b4e8c63dc8d912fe333993b71b81a6f4185ebc770d3373ffd25284ca0a68e`  
		Last Modified: Mon, 11 Sep 2017 07:22:29 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-32bit`

```console
$ docker pull redis@sha256:8701c2be35a9bbcbb13fde38b38c26499c9cf7c47d759e5e894ce758e51e7dc4
```

-	Platforms:
	-	linux; amd64

### `redis:3-32bit` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40296003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28963ab02e2dcd828f565dbc62f43c50d2458140378a39d478a4e298a152ac18`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 09:54:52 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 09:54:52 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 09:55:19 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 09:55:20 GMT
ENV REDIS_VERSION=3.2.10
# Fri, 08 Sep 2017 09:55:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Fri, 08 Sep 2017 09:55:20 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Fri, 08 Sep 2017 09:56:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 09:57:14 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 09:57:15 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Sep 2017 09:57:15 GMT
VOLUME [/data]
# Fri, 08 Sep 2017 09:57:16 GMT
WORKDIR /data
# Fri, 08 Sep 2017 09:57:16 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 08 Sep 2017 09:57:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 09:57:17 GMT
EXPOSE 6379/tcp
# Fri, 08 Sep 2017 09:57:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb2c08a77237578a88e6a9242db9060c8efbe632e030502899184e93b482620`  
		Last Modified: Mon, 11 Sep 2017 07:21:59 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae08bd2580c409b625db46fe5310f7d2a0c7e2ca9acbd61ac1349e9b8ef04eac`  
		Last Modified: Mon, 11 Sep 2017 07:22:01 GMT  
		Size: 981.7 KB (981687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70c53659abd683b1b26f501d6c3f0ead6302baa6efeacc1017f9c4ddfc4d629`  
		Last Modified: Mon, 11 Sep 2017 07:22:30 GMT  
		Size: 4.2 MB (4173562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c7d64e62fe0b6b958e4185e3a14b995213808b1e1d416a866cfc9ceb523f82`  
		Last Modified: Mon, 11 Sep 2017 07:22:30 GMT  
		Size: 5.0 MB (5025063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3a46b63c23072a854f63c37ce1e48bd215f9bf2188f563cc7e52f7e383facce`  
		Last Modified: Mon, 11 Sep 2017 07:22:29 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44b4e8c63dc8d912fe333993b71b81a6f4185ebc770d3373ffd25284ca0a68e`  
		Last Modified: Mon, 11 Sep 2017 07:22:29 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.10-alpine`

```console
$ docker pull redis@sha256:b70323701e8e40908f868bfdc79a69b598d41d01330097afd83f1698d0bb3287
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.10-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7884636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d37c3101a605e2d1b7ece644e69c51476828899ae259312b41a411ac27f0d66f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:13:58 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 28 Jun 2017 22:14:03 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 31 Jul 2017 19:15:58 GMT
ENV REDIS_VERSION=3.2.10
# Mon, 31 Jul 2017 19:15:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Mon, 31 Jul 2017 19:15:59 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Mon, 31 Jul 2017 19:16:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Mon, 31 Jul 2017 19:16:24 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 31 Jul 2017 19:16:24 GMT
VOLUME [/data]
# Mon, 31 Jul 2017 19:16:24 GMT
WORKDIR /data
# Mon, 31 Jul 2017 19:16:25 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Mon, 31 Jul 2017 19:16:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 19:16:25 GMT
EXPOSE 6379/tcp
# Mon, 31 Jul 2017 19:16:25 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b1ac6c7a5068201d8b63a09bb15358ec1616b813ef3942eb8cc12ae191227f`  
		Last Modified: Fri, 30 Jun 2017 00:51:24 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e2e140ea27b3e89f359cd9fab4ec45647dda2a8e5fb0c78633217d9dca87b5`  
		Last Modified: Fri, 30 Jun 2017 00:51:24 GMT  
		Size: 8.2 KB (8164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35bdb0f0338ccbb4ab482a51f4dd4c1f43b6a080d07b3f3316921904aa079063`  
		Last Modified: Mon, 31 Jul 2017 19:17:14 GMT  
		Size: 5.9 MB (5884331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09a3b94f9059e3a9048eff8d12cf8ec6ebba25349dc9744fbe65ff2b426d56a7`  
		Last Modified: Mon, 31 Jul 2017 19:17:13 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68e97e78cefd21e907874f9eeccf9d87dbfdd5f7e0af31112352bf3723772c2`  
		Last Modified: Mon, 31 Jul 2017 19:17:13 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-alpine`

```console
$ docker pull redis@sha256:b70323701e8e40908f868bfdc79a69b598d41d01330097afd83f1698d0bb3287
```

-	Platforms:
	-	linux; amd64

### `redis:3.2-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7884636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d37c3101a605e2d1b7ece644e69c51476828899ae259312b41a411ac27f0d66f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:13:58 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 28 Jun 2017 22:14:03 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 31 Jul 2017 19:15:58 GMT
ENV REDIS_VERSION=3.2.10
# Mon, 31 Jul 2017 19:15:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Mon, 31 Jul 2017 19:15:59 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Mon, 31 Jul 2017 19:16:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Mon, 31 Jul 2017 19:16:24 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 31 Jul 2017 19:16:24 GMT
VOLUME [/data]
# Mon, 31 Jul 2017 19:16:24 GMT
WORKDIR /data
# Mon, 31 Jul 2017 19:16:25 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Mon, 31 Jul 2017 19:16:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 19:16:25 GMT
EXPOSE 6379/tcp
# Mon, 31 Jul 2017 19:16:25 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b1ac6c7a5068201d8b63a09bb15358ec1616b813ef3942eb8cc12ae191227f`  
		Last Modified: Fri, 30 Jun 2017 00:51:24 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e2e140ea27b3e89f359cd9fab4ec45647dda2a8e5fb0c78633217d9dca87b5`  
		Last Modified: Fri, 30 Jun 2017 00:51:24 GMT  
		Size: 8.2 KB (8164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35bdb0f0338ccbb4ab482a51f4dd4c1f43b6a080d07b3f3316921904aa079063`  
		Last Modified: Mon, 31 Jul 2017 19:17:14 GMT  
		Size: 5.9 MB (5884331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09a3b94f9059e3a9048eff8d12cf8ec6ebba25349dc9744fbe65ff2b426d56a7`  
		Last Modified: Mon, 31 Jul 2017 19:17:13 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68e97e78cefd21e907874f9eeccf9d87dbfdd5f7e0af31112352bf3723772c2`  
		Last Modified: Mon, 31 Jul 2017 19:17:13 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-alpine`

```console
$ docker pull redis@sha256:b70323701e8e40908f868bfdc79a69b598d41d01330097afd83f1698d0bb3287
```

-	Platforms:
	-	linux; amd64

### `redis:3-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7884636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d37c3101a605e2d1b7ece644e69c51476828899ae259312b41a411ac27f0d66f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:13:58 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 28 Jun 2017 22:14:03 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 31 Jul 2017 19:15:58 GMT
ENV REDIS_VERSION=3.2.10
# Mon, 31 Jul 2017 19:15:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Mon, 31 Jul 2017 19:15:59 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Mon, 31 Jul 2017 19:16:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Mon, 31 Jul 2017 19:16:24 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 31 Jul 2017 19:16:24 GMT
VOLUME [/data]
# Mon, 31 Jul 2017 19:16:24 GMT
WORKDIR /data
# Mon, 31 Jul 2017 19:16:25 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Mon, 31 Jul 2017 19:16:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 19:16:25 GMT
EXPOSE 6379/tcp
# Mon, 31 Jul 2017 19:16:25 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b1ac6c7a5068201d8b63a09bb15358ec1616b813ef3942eb8cc12ae191227f`  
		Last Modified: Fri, 30 Jun 2017 00:51:24 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e2e140ea27b3e89f359cd9fab4ec45647dda2a8e5fb0c78633217d9dca87b5`  
		Last Modified: Fri, 30 Jun 2017 00:51:24 GMT  
		Size: 8.2 KB (8164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35bdb0f0338ccbb4ab482a51f4dd4c1f43b6a080d07b3f3316921904aa079063`  
		Last Modified: Mon, 31 Jul 2017 19:17:14 GMT  
		Size: 5.9 MB (5884331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09a3b94f9059e3a9048eff8d12cf8ec6ebba25349dc9744fbe65ff2b426d56a7`  
		Last Modified: Mon, 31 Jul 2017 19:17:13 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68e97e78cefd21e907874f9eeccf9d87dbfdd5f7e0af31112352bf3723772c2`  
		Last Modified: Mon, 31 Jul 2017 19:17:13 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.1`

```console
$ docker pull redis@sha256:76b7faf7bcfdf630d40712aa665ffcb969e86fef47c07244505ea332948b69d5
```

-	Platforms:
	-	linux; amd64

### `redis:4.0.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39160655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a394fed3310d209a8429ea71da4a7d078e78fbc28557f7c2ce02b3307271833`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 09:54:52 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 09:54:52 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 09:55:19 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 09:57:24 GMT
ENV REDIS_VERSION=4.0.1
# Fri, 08 Sep 2017 09:57:25 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Fri, 08 Sep 2017 09:57:25 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Fri, 08 Sep 2017 09:58:12 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 09:58:13 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Sep 2017 09:58:13 GMT
VOLUME [/data]
# Fri, 08 Sep 2017 09:58:14 GMT
WORKDIR /data
# Fri, 08 Sep 2017 09:58:14 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 08 Sep 2017 09:58:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 09:58:15 GMT
EXPOSE 6379/tcp
# Fri, 08 Sep 2017 09:58:15 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb2c08a77237578a88e6a9242db9060c8efbe632e030502899184e93b482620`  
		Last Modified: Mon, 11 Sep 2017 07:21:59 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae08bd2580c409b625db46fe5310f7d2a0c7e2ca9acbd61ac1349e9b8ef04eac`  
		Last Modified: Mon, 11 Sep 2017 07:22:01 GMT  
		Size: 981.7 KB (981687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41358d415f7ee6cb05b05d27bda3e6d13219884537f9f65b70fb30adac4a68c`  
		Last Modified: Mon, 11 Sep 2017 07:23:01 GMT  
		Size: 8.1 MB (8063278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2091a0e76dc96362de5b7da970dcafd8e6d9465f345eed09c0bebf9b5f1dc078`  
		Last Modified: Mon, 11 Sep 2017 07:22:59 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abd472c341a08a68425ee98b9633b3e0450273fb79337d5df02e82f54278099`  
		Last Modified: Mon, 11 Sep 2017 07:22:59 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0`

```console
$ docker pull redis@sha256:76b7faf7bcfdf630d40712aa665ffcb969e86fef47c07244505ea332948b69d5
```

-	Platforms:
	-	linux; amd64

### `redis:4.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39160655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a394fed3310d209a8429ea71da4a7d078e78fbc28557f7c2ce02b3307271833`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 09:54:52 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 09:54:52 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 09:55:19 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 09:57:24 GMT
ENV REDIS_VERSION=4.0.1
# Fri, 08 Sep 2017 09:57:25 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Fri, 08 Sep 2017 09:57:25 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Fri, 08 Sep 2017 09:58:12 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 09:58:13 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Sep 2017 09:58:13 GMT
VOLUME [/data]
# Fri, 08 Sep 2017 09:58:14 GMT
WORKDIR /data
# Fri, 08 Sep 2017 09:58:14 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 08 Sep 2017 09:58:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 09:58:15 GMT
EXPOSE 6379/tcp
# Fri, 08 Sep 2017 09:58:15 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb2c08a77237578a88e6a9242db9060c8efbe632e030502899184e93b482620`  
		Last Modified: Mon, 11 Sep 2017 07:21:59 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae08bd2580c409b625db46fe5310f7d2a0c7e2ca9acbd61ac1349e9b8ef04eac`  
		Last Modified: Mon, 11 Sep 2017 07:22:01 GMT  
		Size: 981.7 KB (981687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41358d415f7ee6cb05b05d27bda3e6d13219884537f9f65b70fb30adac4a68c`  
		Last Modified: Mon, 11 Sep 2017 07:23:01 GMT  
		Size: 8.1 MB (8063278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2091a0e76dc96362de5b7da970dcafd8e6d9465f345eed09c0bebf9b5f1dc078`  
		Last Modified: Mon, 11 Sep 2017 07:22:59 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abd472c341a08a68425ee98b9633b3e0450273fb79337d5df02e82f54278099`  
		Last Modified: Mon, 11 Sep 2017 07:22:59 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4`

```console
$ docker pull redis@sha256:76b7faf7bcfdf630d40712aa665ffcb969e86fef47c07244505ea332948b69d5
```

-	Platforms:
	-	linux; amd64

### `redis:4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39160655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a394fed3310d209a8429ea71da4a7d078e78fbc28557f7c2ce02b3307271833`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 09:54:52 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 09:54:52 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 09:55:19 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 09:57:24 GMT
ENV REDIS_VERSION=4.0.1
# Fri, 08 Sep 2017 09:57:25 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Fri, 08 Sep 2017 09:57:25 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Fri, 08 Sep 2017 09:58:12 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 09:58:13 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Sep 2017 09:58:13 GMT
VOLUME [/data]
# Fri, 08 Sep 2017 09:58:14 GMT
WORKDIR /data
# Fri, 08 Sep 2017 09:58:14 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 08 Sep 2017 09:58:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 09:58:15 GMT
EXPOSE 6379/tcp
# Fri, 08 Sep 2017 09:58:15 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb2c08a77237578a88e6a9242db9060c8efbe632e030502899184e93b482620`  
		Last Modified: Mon, 11 Sep 2017 07:21:59 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae08bd2580c409b625db46fe5310f7d2a0c7e2ca9acbd61ac1349e9b8ef04eac`  
		Last Modified: Mon, 11 Sep 2017 07:22:01 GMT  
		Size: 981.7 KB (981687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41358d415f7ee6cb05b05d27bda3e6d13219884537f9f65b70fb30adac4a68c`  
		Last Modified: Mon, 11 Sep 2017 07:23:01 GMT  
		Size: 8.1 MB (8063278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2091a0e76dc96362de5b7da970dcafd8e6d9465f345eed09c0bebf9b5f1dc078`  
		Last Modified: Mon, 11 Sep 2017 07:22:59 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abd472c341a08a68425ee98b9633b3e0450273fb79337d5df02e82f54278099`  
		Last Modified: Mon, 11 Sep 2017 07:22:59 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:latest`

```console
$ docker pull redis@sha256:76b7faf7bcfdf630d40712aa665ffcb969e86fef47c07244505ea332948b69d5
```

-	Platforms:
	-	linux; amd64

### `redis:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39160655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a394fed3310d209a8429ea71da4a7d078e78fbc28557f7c2ce02b3307271833`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 09:54:52 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 09:54:52 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 09:55:19 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 09:57:24 GMT
ENV REDIS_VERSION=4.0.1
# Fri, 08 Sep 2017 09:57:25 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Fri, 08 Sep 2017 09:57:25 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Fri, 08 Sep 2017 09:58:12 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 09:58:13 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Sep 2017 09:58:13 GMT
VOLUME [/data]
# Fri, 08 Sep 2017 09:58:14 GMT
WORKDIR /data
# Fri, 08 Sep 2017 09:58:14 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 08 Sep 2017 09:58:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 09:58:15 GMT
EXPOSE 6379/tcp
# Fri, 08 Sep 2017 09:58:15 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb2c08a77237578a88e6a9242db9060c8efbe632e030502899184e93b482620`  
		Last Modified: Mon, 11 Sep 2017 07:21:59 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae08bd2580c409b625db46fe5310f7d2a0c7e2ca9acbd61ac1349e9b8ef04eac`  
		Last Modified: Mon, 11 Sep 2017 07:22:01 GMT  
		Size: 981.7 KB (981687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41358d415f7ee6cb05b05d27bda3e6d13219884537f9f65b70fb30adac4a68c`  
		Last Modified: Mon, 11 Sep 2017 07:23:01 GMT  
		Size: 8.1 MB (8063278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2091a0e76dc96362de5b7da970dcafd8e6d9465f345eed09c0bebf9b5f1dc078`  
		Last Modified: Mon, 11 Sep 2017 07:22:59 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abd472c341a08a68425ee98b9633b3e0450273fb79337d5df02e82f54278099`  
		Last Modified: Mon, 11 Sep 2017 07:22:59 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.1-32bit`

```console
$ docker pull redis@sha256:be883a89b06ac6493312b7de03977aee06c71bbcfca6da1fb0a1d4c8c61a5370
```

-	Platforms:
	-	linux; amd64

### `redis:4.0.1-32bit` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.6 MB (42554265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81370e8496ccfca3231c6eec94e7d04d44c33c6ec08f2bedc4bf3789be400ede`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 09:54:52 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 09:54:52 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 09:55:19 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 09:57:24 GMT
ENV REDIS_VERSION=4.0.1
# Fri, 08 Sep 2017 09:57:25 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Fri, 08 Sep 2017 09:57:25 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Fri, 08 Sep 2017 09:58:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 09:59:25 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 09:59:26 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Sep 2017 09:59:27 GMT
VOLUME [/data]
# Fri, 08 Sep 2017 09:59:27 GMT
WORKDIR /data
# Fri, 08 Sep 2017 09:59:27 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 08 Sep 2017 09:59:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 09:59:28 GMT
EXPOSE 6379/tcp
# Fri, 08 Sep 2017 09:59:28 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb2c08a77237578a88e6a9242db9060c8efbe632e030502899184e93b482620`  
		Last Modified: Mon, 11 Sep 2017 07:21:59 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae08bd2580c409b625db46fe5310f7d2a0c7e2ca9acbd61ac1349e9b8ef04eac`  
		Last Modified: Mon, 11 Sep 2017 07:22:01 GMT  
		Size: 981.7 KB (981687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26fc21a90c0c18bcebe5c5d753036d5a41b713b90c4409f14fb7add288839cc4`  
		Last Modified: Mon, 11 Sep 2017 07:23:37 GMT  
		Size: 4.2 MB (4173579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c5bd19f75dd7ea3a0ee36a5e57dbbf40db24c0d62578baf163e95964fa9233`  
		Last Modified: Mon, 11 Sep 2017 07:23:37 GMT  
		Size: 7.3 MB (7283310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286527c193dfb9fc4c21d73b3cf987ab82212821ee7e185c6dcdbc8d0ce424f8`  
		Last Modified: Mon, 11 Sep 2017 07:23:36 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971a1c41d173b07fa9e2d7dee075934aece75e4a4edebdbdd2b353e8bf16ae5a`  
		Last Modified: Mon, 11 Sep 2017 07:23:37 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-32bit`

```console
$ docker pull redis@sha256:be883a89b06ac6493312b7de03977aee06c71bbcfca6da1fb0a1d4c8c61a5370
```

-	Platforms:
	-	linux; amd64

### `redis:4.0-32bit` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.6 MB (42554265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81370e8496ccfca3231c6eec94e7d04d44c33c6ec08f2bedc4bf3789be400ede`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 09:54:52 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 09:54:52 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 09:55:19 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 09:57:24 GMT
ENV REDIS_VERSION=4.0.1
# Fri, 08 Sep 2017 09:57:25 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Fri, 08 Sep 2017 09:57:25 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Fri, 08 Sep 2017 09:58:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 09:59:25 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 09:59:26 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Sep 2017 09:59:27 GMT
VOLUME [/data]
# Fri, 08 Sep 2017 09:59:27 GMT
WORKDIR /data
# Fri, 08 Sep 2017 09:59:27 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 08 Sep 2017 09:59:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 09:59:28 GMT
EXPOSE 6379/tcp
# Fri, 08 Sep 2017 09:59:28 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb2c08a77237578a88e6a9242db9060c8efbe632e030502899184e93b482620`  
		Last Modified: Mon, 11 Sep 2017 07:21:59 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae08bd2580c409b625db46fe5310f7d2a0c7e2ca9acbd61ac1349e9b8ef04eac`  
		Last Modified: Mon, 11 Sep 2017 07:22:01 GMT  
		Size: 981.7 KB (981687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26fc21a90c0c18bcebe5c5d753036d5a41b713b90c4409f14fb7add288839cc4`  
		Last Modified: Mon, 11 Sep 2017 07:23:37 GMT  
		Size: 4.2 MB (4173579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c5bd19f75dd7ea3a0ee36a5e57dbbf40db24c0d62578baf163e95964fa9233`  
		Last Modified: Mon, 11 Sep 2017 07:23:37 GMT  
		Size: 7.3 MB (7283310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286527c193dfb9fc4c21d73b3cf987ab82212821ee7e185c6dcdbc8d0ce424f8`  
		Last Modified: Mon, 11 Sep 2017 07:23:36 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971a1c41d173b07fa9e2d7dee075934aece75e4a4edebdbdd2b353e8bf16ae5a`  
		Last Modified: Mon, 11 Sep 2017 07:23:37 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-32bit`

```console
$ docker pull redis@sha256:be883a89b06ac6493312b7de03977aee06c71bbcfca6da1fb0a1d4c8c61a5370
```

-	Platforms:
	-	linux; amd64

### `redis:4-32bit` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.6 MB (42554265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81370e8496ccfca3231c6eec94e7d04d44c33c6ec08f2bedc4bf3789be400ede`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 09:54:52 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 09:54:52 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 09:55:19 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 09:57:24 GMT
ENV REDIS_VERSION=4.0.1
# Fri, 08 Sep 2017 09:57:25 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Fri, 08 Sep 2017 09:57:25 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Fri, 08 Sep 2017 09:58:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 09:59:25 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 09:59:26 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Sep 2017 09:59:27 GMT
VOLUME [/data]
# Fri, 08 Sep 2017 09:59:27 GMT
WORKDIR /data
# Fri, 08 Sep 2017 09:59:27 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 08 Sep 2017 09:59:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 09:59:28 GMT
EXPOSE 6379/tcp
# Fri, 08 Sep 2017 09:59:28 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb2c08a77237578a88e6a9242db9060c8efbe632e030502899184e93b482620`  
		Last Modified: Mon, 11 Sep 2017 07:21:59 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae08bd2580c409b625db46fe5310f7d2a0c7e2ca9acbd61ac1349e9b8ef04eac`  
		Last Modified: Mon, 11 Sep 2017 07:22:01 GMT  
		Size: 981.7 KB (981687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26fc21a90c0c18bcebe5c5d753036d5a41b713b90c4409f14fb7add288839cc4`  
		Last Modified: Mon, 11 Sep 2017 07:23:37 GMT  
		Size: 4.2 MB (4173579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c5bd19f75dd7ea3a0ee36a5e57dbbf40db24c0d62578baf163e95964fa9233`  
		Last Modified: Mon, 11 Sep 2017 07:23:37 GMT  
		Size: 7.3 MB (7283310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286527c193dfb9fc4c21d73b3cf987ab82212821ee7e185c6dcdbc8d0ce424f8`  
		Last Modified: Mon, 11 Sep 2017 07:23:36 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971a1c41d173b07fa9e2d7dee075934aece75e4a4edebdbdd2b353e8bf16ae5a`  
		Last Modified: Mon, 11 Sep 2017 07:23:37 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:32bit`

```console
$ docker pull redis@sha256:be883a89b06ac6493312b7de03977aee06c71bbcfca6da1fb0a1d4c8c61a5370
```

-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.6 MB (42554265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81370e8496ccfca3231c6eec94e7d04d44c33c6ec08f2bedc4bf3789be400ede`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 09:54:52 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 09:54:52 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 09:55:19 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 09:57:24 GMT
ENV REDIS_VERSION=4.0.1
# Fri, 08 Sep 2017 09:57:25 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Fri, 08 Sep 2017 09:57:25 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Fri, 08 Sep 2017 09:58:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 09:59:25 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 09:59:26 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Sep 2017 09:59:27 GMT
VOLUME [/data]
# Fri, 08 Sep 2017 09:59:27 GMT
WORKDIR /data
# Fri, 08 Sep 2017 09:59:27 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 08 Sep 2017 09:59:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 09:59:28 GMT
EXPOSE 6379/tcp
# Fri, 08 Sep 2017 09:59:28 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb2c08a77237578a88e6a9242db9060c8efbe632e030502899184e93b482620`  
		Last Modified: Mon, 11 Sep 2017 07:21:59 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae08bd2580c409b625db46fe5310f7d2a0c7e2ca9acbd61ac1349e9b8ef04eac`  
		Last Modified: Mon, 11 Sep 2017 07:22:01 GMT  
		Size: 981.7 KB (981687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26fc21a90c0c18bcebe5c5d753036d5a41b713b90c4409f14fb7add288839cc4`  
		Last Modified: Mon, 11 Sep 2017 07:23:37 GMT  
		Size: 4.2 MB (4173579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c5bd19f75dd7ea3a0ee36a5e57dbbf40db24c0d62578baf163e95964fa9233`  
		Last Modified: Mon, 11 Sep 2017 07:23:37 GMT  
		Size: 7.3 MB (7283310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286527c193dfb9fc4c21d73b3cf987ab82212821ee7e185c6dcdbc8d0ce424f8`  
		Last Modified: Mon, 11 Sep 2017 07:23:36 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971a1c41d173b07fa9e2d7dee075934aece75e4a4edebdbdd2b353e8bf16ae5a`  
		Last Modified: Mon, 11 Sep 2017 07:23:37 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.1-alpine`

```console
$ docker pull redis@sha256:e633cded055a94202e4ccccb8125b7f383cd6ee56527ab890db643383a2647dd
```

-	Platforms:
	-	linux; amd64

### `redis:4.0.1-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10463544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d8fa9aa0e5b35f1790162225a6ffe6207a3ca73d967d8f6920ed0f293086ff9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:13:58 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 28 Jun 2017 22:14:03 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 24 Jul 2017 18:38:59 GMT
ENV REDIS_VERSION=4.0.1
# Mon, 24 Jul 2017 18:38:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Mon, 24 Jul 2017 18:38:59 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Mon, 24 Jul 2017 18:39:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Mon, 24 Jul 2017 18:39:26 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 24 Jul 2017 18:39:26 GMT
VOLUME [/data]
# Mon, 24 Jul 2017 18:39:27 GMT
WORKDIR /data
# Mon, 24 Jul 2017 18:39:27 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Mon, 24 Jul 2017 18:39:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Jul 2017 18:39:27 GMT
EXPOSE 6379/tcp
# Mon, 24 Jul 2017 18:39:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b1ac6c7a5068201d8b63a09bb15358ec1616b813ef3942eb8cc12ae191227f`  
		Last Modified: Fri, 30 Jun 2017 00:51:24 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e2e140ea27b3e89f359cd9fab4ec45647dda2a8e5fb0c78633217d9dca87b5`  
		Last Modified: Fri, 30 Jun 2017 00:51:24 GMT  
		Size: 8.2 KB (8164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b776421db63ee38b1a2d58829811b86437131ee50fce0f74a61db5e649dfa4db`  
		Last Modified: Mon, 24 Jul 2017 18:41:11 GMT  
		Size: 8.5 MB (8463239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7084591e5f58963c4e8c7bcb0b11e4527c93dab64cfeb0b4df84b65808ad00f`  
		Last Modified: Mon, 24 Jul 2017 18:41:08 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec785880f5f88a4ada95d03ff8b92fec53ba204d2b4292c1c9545072b12ba883`  
		Last Modified: Mon, 24 Jul 2017 18:41:08 GMT  
		Size: 389.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-alpine`

```console
$ docker pull redis@sha256:e633cded055a94202e4ccccb8125b7f383cd6ee56527ab890db643383a2647dd
```

-	Platforms:
	-	linux; amd64

### `redis:4.0-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10463544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d8fa9aa0e5b35f1790162225a6ffe6207a3ca73d967d8f6920ed0f293086ff9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:13:58 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 28 Jun 2017 22:14:03 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 24 Jul 2017 18:38:59 GMT
ENV REDIS_VERSION=4.0.1
# Mon, 24 Jul 2017 18:38:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Mon, 24 Jul 2017 18:38:59 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Mon, 24 Jul 2017 18:39:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Mon, 24 Jul 2017 18:39:26 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 24 Jul 2017 18:39:26 GMT
VOLUME [/data]
# Mon, 24 Jul 2017 18:39:27 GMT
WORKDIR /data
# Mon, 24 Jul 2017 18:39:27 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Mon, 24 Jul 2017 18:39:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Jul 2017 18:39:27 GMT
EXPOSE 6379/tcp
# Mon, 24 Jul 2017 18:39:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b1ac6c7a5068201d8b63a09bb15358ec1616b813ef3942eb8cc12ae191227f`  
		Last Modified: Fri, 30 Jun 2017 00:51:24 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e2e140ea27b3e89f359cd9fab4ec45647dda2a8e5fb0c78633217d9dca87b5`  
		Last Modified: Fri, 30 Jun 2017 00:51:24 GMT  
		Size: 8.2 KB (8164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b776421db63ee38b1a2d58829811b86437131ee50fce0f74a61db5e649dfa4db`  
		Last Modified: Mon, 24 Jul 2017 18:41:11 GMT  
		Size: 8.5 MB (8463239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7084591e5f58963c4e8c7bcb0b11e4527c93dab64cfeb0b4df84b65808ad00f`  
		Last Modified: Mon, 24 Jul 2017 18:41:08 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec785880f5f88a4ada95d03ff8b92fec53ba204d2b4292c1c9545072b12ba883`  
		Last Modified: Mon, 24 Jul 2017 18:41:08 GMT  
		Size: 389.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-alpine`

```console
$ docker pull redis@sha256:e633cded055a94202e4ccccb8125b7f383cd6ee56527ab890db643383a2647dd
```

-	Platforms:
	-	linux; amd64

### `redis:4-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10463544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d8fa9aa0e5b35f1790162225a6ffe6207a3ca73d967d8f6920ed0f293086ff9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:13:58 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 28 Jun 2017 22:14:03 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 24 Jul 2017 18:38:59 GMT
ENV REDIS_VERSION=4.0.1
# Mon, 24 Jul 2017 18:38:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Mon, 24 Jul 2017 18:38:59 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Mon, 24 Jul 2017 18:39:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Mon, 24 Jul 2017 18:39:26 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 24 Jul 2017 18:39:26 GMT
VOLUME [/data]
# Mon, 24 Jul 2017 18:39:27 GMT
WORKDIR /data
# Mon, 24 Jul 2017 18:39:27 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Mon, 24 Jul 2017 18:39:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Jul 2017 18:39:27 GMT
EXPOSE 6379/tcp
# Mon, 24 Jul 2017 18:39:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b1ac6c7a5068201d8b63a09bb15358ec1616b813ef3942eb8cc12ae191227f`  
		Last Modified: Fri, 30 Jun 2017 00:51:24 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e2e140ea27b3e89f359cd9fab4ec45647dda2a8e5fb0c78633217d9dca87b5`  
		Last Modified: Fri, 30 Jun 2017 00:51:24 GMT  
		Size: 8.2 KB (8164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b776421db63ee38b1a2d58829811b86437131ee50fce0f74a61db5e649dfa4db`  
		Last Modified: Mon, 24 Jul 2017 18:41:11 GMT  
		Size: 8.5 MB (8463239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7084591e5f58963c4e8c7bcb0b11e4527c93dab64cfeb0b4df84b65808ad00f`  
		Last Modified: Mon, 24 Jul 2017 18:41:08 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec785880f5f88a4ada95d03ff8b92fec53ba204d2b4292c1c9545072b12ba883`  
		Last Modified: Mon, 24 Jul 2017 18:41:08 GMT  
		Size: 389.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine`

```console
$ docker pull redis@sha256:e633cded055a94202e4ccccb8125b7f383cd6ee56527ab890db643383a2647dd
```

-	Platforms:
	-	linux; amd64

### `redis:alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10463544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d8fa9aa0e5b35f1790162225a6ffe6207a3ca73d967d8f6920ed0f293086ff9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:13:58 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 28 Jun 2017 22:14:03 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 24 Jul 2017 18:38:59 GMT
ENV REDIS_VERSION=4.0.1
# Mon, 24 Jul 2017 18:38:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Mon, 24 Jul 2017 18:38:59 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Mon, 24 Jul 2017 18:39:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Mon, 24 Jul 2017 18:39:26 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 24 Jul 2017 18:39:26 GMT
VOLUME [/data]
# Mon, 24 Jul 2017 18:39:27 GMT
WORKDIR /data
# Mon, 24 Jul 2017 18:39:27 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Mon, 24 Jul 2017 18:39:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Jul 2017 18:39:27 GMT
EXPOSE 6379/tcp
# Mon, 24 Jul 2017 18:39:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b1ac6c7a5068201d8b63a09bb15358ec1616b813ef3942eb8cc12ae191227f`  
		Last Modified: Fri, 30 Jun 2017 00:51:24 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e2e140ea27b3e89f359cd9fab4ec45647dda2a8e5fb0c78633217d9dca87b5`  
		Last Modified: Fri, 30 Jun 2017 00:51:24 GMT  
		Size: 8.2 KB (8164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b776421db63ee38b1a2d58829811b86437131ee50fce0f74a61db5e649dfa4db`  
		Last Modified: Mon, 24 Jul 2017 18:41:11 GMT  
		Size: 8.5 MB (8463239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7084591e5f58963c4e8c7bcb0b11e4527c93dab64cfeb0b4df84b65808ad00f`  
		Last Modified: Mon, 24 Jul 2017 18:41:08 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec785880f5f88a4ada95d03ff8b92fec53ba204d2b4292c1c9545072b12ba883`  
		Last Modified: Mon, 24 Jul 2017 18:41:08 GMT  
		Size: 389.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
