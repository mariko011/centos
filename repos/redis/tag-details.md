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
$ docker pull redis@sha256:848b4fd76a5dacb56988af810a6e86719e313cf4e1186f3d3050384686dbc120
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.10` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36647805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6988031bc4776c54cd9eb50c111a463d39e3479cc57a11dbc57f52ac7c6c291`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:33:23 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Mon, 24 Jul 2017 18:33:24 GMT
ENV GOSU_VERSION=1.10
# Mon, 24 Jul 2017 18:34:53 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 31 Jul 2017 19:13:55 GMT
ENV REDIS_VERSION=3.2.10
# Mon, 31 Jul 2017 19:13:56 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Mon, 31 Jul 2017 19:13:56 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Mon, 31 Jul 2017 19:14:42 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 31 Jul 2017 19:14:43 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 31 Jul 2017 19:14:43 GMT
VOLUME [/data]
# Mon, 31 Jul 2017 19:14:43 GMT
WORKDIR /data
# Mon, 31 Jul 2017 19:14:44 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Mon, 31 Jul 2017 19:14:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 19:14:44 GMT
EXPOSE 6379/tcp
# Mon, 31 Jul 2017 19:14:44 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1b33d3f1140aa85d8fa6df4d8bd6fb270697f2da59e8e4759dead245d87899`  
		Last Modified: Mon, 24 Jul 2017 18:39:33 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920cdc17d3c261b5b00622fa8e135a39e27a04859d3ee4a062ed126506d10c13`  
		Last Modified: Mon, 24 Jul 2017 18:39:34 GMT  
		Size: 981.7 KB (981678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039bc0a8c4af1a0e235ed015d6bfc095b8f463dfbd2cab5a340d476906b40d61`  
		Last Modified: Mon, 31 Jul 2017 19:16:34 GMT  
		Size: 5.5 MB (5541856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d721bfb392b3e02273c41604d35ba397fa96a1cee29f5b48956a911494139f`  
		Last Modified: Mon, 31 Jul 2017 19:16:33 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853085e403eb95e05be44d7c006c40cd6a6b445ac7036522d6e3e30a7975270a`  
		Last Modified: Mon, 31 Jul 2017 19:16:33 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2`

```console
$ docker pull redis@sha256:848b4fd76a5dacb56988af810a6e86719e313cf4e1186f3d3050384686dbc120
```

-	Platforms:
	-	linux; amd64

### `redis:3.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36647805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6988031bc4776c54cd9eb50c111a463d39e3479cc57a11dbc57f52ac7c6c291`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:33:23 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Mon, 24 Jul 2017 18:33:24 GMT
ENV GOSU_VERSION=1.10
# Mon, 24 Jul 2017 18:34:53 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 31 Jul 2017 19:13:55 GMT
ENV REDIS_VERSION=3.2.10
# Mon, 31 Jul 2017 19:13:56 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Mon, 31 Jul 2017 19:13:56 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Mon, 31 Jul 2017 19:14:42 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 31 Jul 2017 19:14:43 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 31 Jul 2017 19:14:43 GMT
VOLUME [/data]
# Mon, 31 Jul 2017 19:14:43 GMT
WORKDIR /data
# Mon, 31 Jul 2017 19:14:44 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Mon, 31 Jul 2017 19:14:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 19:14:44 GMT
EXPOSE 6379/tcp
# Mon, 31 Jul 2017 19:14:44 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1b33d3f1140aa85d8fa6df4d8bd6fb270697f2da59e8e4759dead245d87899`  
		Last Modified: Mon, 24 Jul 2017 18:39:33 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920cdc17d3c261b5b00622fa8e135a39e27a04859d3ee4a062ed126506d10c13`  
		Last Modified: Mon, 24 Jul 2017 18:39:34 GMT  
		Size: 981.7 KB (981678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039bc0a8c4af1a0e235ed015d6bfc095b8f463dfbd2cab5a340d476906b40d61`  
		Last Modified: Mon, 31 Jul 2017 19:16:34 GMT  
		Size: 5.5 MB (5541856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d721bfb392b3e02273c41604d35ba397fa96a1cee29f5b48956a911494139f`  
		Last Modified: Mon, 31 Jul 2017 19:16:33 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853085e403eb95e05be44d7c006c40cd6a6b445ac7036522d6e3e30a7975270a`  
		Last Modified: Mon, 31 Jul 2017 19:16:33 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3`

```console
$ docker pull redis@sha256:848b4fd76a5dacb56988af810a6e86719e313cf4e1186f3d3050384686dbc120
```

-	Platforms:
	-	linux; amd64

### `redis:3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36647805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6988031bc4776c54cd9eb50c111a463d39e3479cc57a11dbc57f52ac7c6c291`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:33:23 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Mon, 24 Jul 2017 18:33:24 GMT
ENV GOSU_VERSION=1.10
# Mon, 24 Jul 2017 18:34:53 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 31 Jul 2017 19:13:55 GMT
ENV REDIS_VERSION=3.2.10
# Mon, 31 Jul 2017 19:13:56 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Mon, 31 Jul 2017 19:13:56 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Mon, 31 Jul 2017 19:14:42 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 31 Jul 2017 19:14:43 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 31 Jul 2017 19:14:43 GMT
VOLUME [/data]
# Mon, 31 Jul 2017 19:14:43 GMT
WORKDIR /data
# Mon, 31 Jul 2017 19:14:44 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Mon, 31 Jul 2017 19:14:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 19:14:44 GMT
EXPOSE 6379/tcp
# Mon, 31 Jul 2017 19:14:44 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1b33d3f1140aa85d8fa6df4d8bd6fb270697f2da59e8e4759dead245d87899`  
		Last Modified: Mon, 24 Jul 2017 18:39:33 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920cdc17d3c261b5b00622fa8e135a39e27a04859d3ee4a062ed126506d10c13`  
		Last Modified: Mon, 24 Jul 2017 18:39:34 GMT  
		Size: 981.7 KB (981678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039bc0a8c4af1a0e235ed015d6bfc095b8f463dfbd2cab5a340d476906b40d61`  
		Last Modified: Mon, 31 Jul 2017 19:16:34 GMT  
		Size: 5.5 MB (5541856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d721bfb392b3e02273c41604d35ba397fa96a1cee29f5b48956a911494139f`  
		Last Modified: Mon, 31 Jul 2017 19:16:33 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853085e403eb95e05be44d7c006c40cd6a6b445ac7036522d6e3e30a7975270a`  
		Last Modified: Mon, 31 Jul 2017 19:16:33 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.10-32bit`

```console
$ docker pull redis@sha256:0b459dbcbef2021df6cecbbb7f6d96b484f5a2e62c2cbbe42a23389e9d4f35d2
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.10-32bit` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40304594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8eb03116103c7d2335f6a7efbb700996ae8d2bdea4fc3d5d88fe5942afa5804`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:33:23 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Mon, 24 Jul 2017 18:33:24 GMT
ENV GOSU_VERSION=1.10
# Mon, 24 Jul 2017 18:34:53 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 31 Jul 2017 19:13:55 GMT
ENV REDIS_VERSION=3.2.10
# Mon, 31 Jul 2017 19:13:56 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Mon, 31 Jul 2017 19:13:56 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Mon, 31 Jul 2017 19:15:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Jul 2017 19:15:53 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 31 Jul 2017 19:15:53 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 31 Jul 2017 19:15:53 GMT
VOLUME [/data]
# Mon, 31 Jul 2017 19:15:54 GMT
WORKDIR /data
# Mon, 31 Jul 2017 19:15:54 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Mon, 31 Jul 2017 19:15:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 19:15:55 GMT
EXPOSE 6379/tcp
# Mon, 31 Jul 2017 19:15:55 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1b33d3f1140aa85d8fa6df4d8bd6fb270697f2da59e8e4759dead245d87899`  
		Last Modified: Mon, 24 Jul 2017 18:39:33 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920cdc17d3c261b5b00622fa8e135a39e27a04859d3ee4a062ed126506d10c13`  
		Last Modified: Mon, 24 Jul 2017 18:39:34 GMT  
		Size: 981.7 KB (981678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b94b2e51ea994c40a96cc3ab5c95eb7c68bbb39ba32361c744755a931e3731c8`  
		Last Modified: Mon, 31 Jul 2017 19:16:53 GMT  
		Size: 4.2 MB (4173594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b78ab7abadf61bb6abb942f0aabffd5fbd71604996dc2ae1adc73507a7d51a`  
		Last Modified: Mon, 31 Jul 2017 19:16:53 GMT  
		Size: 5.0 MB (5025052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bddf792f0a6534c82d18a3d83587d8e2e108c4edc54f535deb47e64bef1e4d36`  
		Last Modified: Mon, 31 Jul 2017 19:16:52 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83f7413b8c1cbc521c186f80af8b7e996460412fdb0b65b88dc6d763b427c10`  
		Last Modified: Mon, 31 Jul 2017 19:16:52 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-32bit`

```console
$ docker pull redis@sha256:0b459dbcbef2021df6cecbbb7f6d96b484f5a2e62c2cbbe42a23389e9d4f35d2
```

-	Platforms:
	-	linux; amd64

### `redis:3.2-32bit` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40304594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8eb03116103c7d2335f6a7efbb700996ae8d2bdea4fc3d5d88fe5942afa5804`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:33:23 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Mon, 24 Jul 2017 18:33:24 GMT
ENV GOSU_VERSION=1.10
# Mon, 24 Jul 2017 18:34:53 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 31 Jul 2017 19:13:55 GMT
ENV REDIS_VERSION=3.2.10
# Mon, 31 Jul 2017 19:13:56 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Mon, 31 Jul 2017 19:13:56 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Mon, 31 Jul 2017 19:15:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Jul 2017 19:15:53 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 31 Jul 2017 19:15:53 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 31 Jul 2017 19:15:53 GMT
VOLUME [/data]
# Mon, 31 Jul 2017 19:15:54 GMT
WORKDIR /data
# Mon, 31 Jul 2017 19:15:54 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Mon, 31 Jul 2017 19:15:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 19:15:55 GMT
EXPOSE 6379/tcp
# Mon, 31 Jul 2017 19:15:55 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1b33d3f1140aa85d8fa6df4d8bd6fb270697f2da59e8e4759dead245d87899`  
		Last Modified: Mon, 24 Jul 2017 18:39:33 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920cdc17d3c261b5b00622fa8e135a39e27a04859d3ee4a062ed126506d10c13`  
		Last Modified: Mon, 24 Jul 2017 18:39:34 GMT  
		Size: 981.7 KB (981678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b94b2e51ea994c40a96cc3ab5c95eb7c68bbb39ba32361c744755a931e3731c8`  
		Last Modified: Mon, 31 Jul 2017 19:16:53 GMT  
		Size: 4.2 MB (4173594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b78ab7abadf61bb6abb942f0aabffd5fbd71604996dc2ae1adc73507a7d51a`  
		Last Modified: Mon, 31 Jul 2017 19:16:53 GMT  
		Size: 5.0 MB (5025052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bddf792f0a6534c82d18a3d83587d8e2e108c4edc54f535deb47e64bef1e4d36`  
		Last Modified: Mon, 31 Jul 2017 19:16:52 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83f7413b8c1cbc521c186f80af8b7e996460412fdb0b65b88dc6d763b427c10`  
		Last Modified: Mon, 31 Jul 2017 19:16:52 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-32bit`

```console
$ docker pull redis@sha256:0b459dbcbef2021df6cecbbb7f6d96b484f5a2e62c2cbbe42a23389e9d4f35d2
```

-	Platforms:
	-	linux; amd64

### `redis:3-32bit` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40304594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8eb03116103c7d2335f6a7efbb700996ae8d2bdea4fc3d5d88fe5942afa5804`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:33:23 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Mon, 24 Jul 2017 18:33:24 GMT
ENV GOSU_VERSION=1.10
# Mon, 24 Jul 2017 18:34:53 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 31 Jul 2017 19:13:55 GMT
ENV REDIS_VERSION=3.2.10
# Mon, 31 Jul 2017 19:13:56 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Mon, 31 Jul 2017 19:13:56 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Mon, 31 Jul 2017 19:15:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Jul 2017 19:15:53 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 31 Jul 2017 19:15:53 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 31 Jul 2017 19:15:53 GMT
VOLUME [/data]
# Mon, 31 Jul 2017 19:15:54 GMT
WORKDIR /data
# Mon, 31 Jul 2017 19:15:54 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Mon, 31 Jul 2017 19:15:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 19:15:55 GMT
EXPOSE 6379/tcp
# Mon, 31 Jul 2017 19:15:55 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1b33d3f1140aa85d8fa6df4d8bd6fb270697f2da59e8e4759dead245d87899`  
		Last Modified: Mon, 24 Jul 2017 18:39:33 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920cdc17d3c261b5b00622fa8e135a39e27a04859d3ee4a062ed126506d10c13`  
		Last Modified: Mon, 24 Jul 2017 18:39:34 GMT  
		Size: 981.7 KB (981678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b94b2e51ea994c40a96cc3ab5c95eb7c68bbb39ba32361c744755a931e3731c8`  
		Last Modified: Mon, 31 Jul 2017 19:16:53 GMT  
		Size: 4.2 MB (4173594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b78ab7abadf61bb6abb942f0aabffd5fbd71604996dc2ae1adc73507a7d51a`  
		Last Modified: Mon, 31 Jul 2017 19:16:53 GMT  
		Size: 5.0 MB (5025052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bddf792f0a6534c82d18a3d83587d8e2e108c4edc54f535deb47e64bef1e4d36`  
		Last Modified: Mon, 31 Jul 2017 19:16:52 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83f7413b8c1cbc521c186f80af8b7e996460412fdb0b65b88dc6d763b427c10`  
		Last Modified: Mon, 31 Jul 2017 19:16:52 GMT  
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
$ docker pull redis@sha256:a7776895af32e34b1fef997e26c79fa988b40c5cf2a3fb48dc22e0584b648d82
```

-	Platforms:
	-	linux; amd64

### `redis:4.0.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39169220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4f259423416b3c82b46e1caf01829ac3a99a211dfc691c9d862464768112e7f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:33:23 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Mon, 24 Jul 2017 18:33:24 GMT
ENV GOSU_VERSION=1.10
# Mon, 24 Jul 2017 18:34:53 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 24 Jul 2017 18:37:04 GMT
ENV REDIS_VERSION=4.0.1
# Mon, 24 Jul 2017 18:37:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Mon, 24 Jul 2017 18:37:04 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Mon, 24 Jul 2017 18:37:48 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Jul 2017 18:37:49 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 24 Jul 2017 18:37:49 GMT
VOLUME [/data]
# Mon, 24 Jul 2017 18:37:49 GMT
WORKDIR /data
# Mon, 24 Jul 2017 18:37:50 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Mon, 24 Jul 2017 18:37:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Jul 2017 18:37:50 GMT
EXPOSE 6379/tcp
# Mon, 24 Jul 2017 18:37:50 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1b33d3f1140aa85d8fa6df4d8bd6fb270697f2da59e8e4759dead245d87899`  
		Last Modified: Mon, 24 Jul 2017 18:39:33 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920cdc17d3c261b5b00622fa8e135a39e27a04859d3ee4a062ed126506d10c13`  
		Last Modified: Mon, 24 Jul 2017 18:39:34 GMT  
		Size: 981.7 KB (981678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f939f708ee9a8df2f6ce80bacb7a4e7600bb27bf9615bf5371df0637e20a211`  
		Last Modified: Mon, 24 Jul 2017 18:40:27 GMT  
		Size: 8.1 MB (8063273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba0e186289de69568d40148a2cb0e43b4af1f7048b55b02f985ce42e1e5972a`  
		Last Modified: Mon, 24 Jul 2017 18:40:25 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e448b71a4f0fc223fe100d3c8ccbc8c601065c16fd32f958fdc62bb549f9979`  
		Last Modified: Mon, 24 Jul 2017 18:40:25 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0`

```console
$ docker pull redis@sha256:a7776895af32e34b1fef997e26c79fa988b40c5cf2a3fb48dc22e0584b648d82
```

-	Platforms:
	-	linux; amd64

### `redis:4.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39169220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4f259423416b3c82b46e1caf01829ac3a99a211dfc691c9d862464768112e7f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:33:23 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Mon, 24 Jul 2017 18:33:24 GMT
ENV GOSU_VERSION=1.10
# Mon, 24 Jul 2017 18:34:53 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 24 Jul 2017 18:37:04 GMT
ENV REDIS_VERSION=4.0.1
# Mon, 24 Jul 2017 18:37:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Mon, 24 Jul 2017 18:37:04 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Mon, 24 Jul 2017 18:37:48 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Jul 2017 18:37:49 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 24 Jul 2017 18:37:49 GMT
VOLUME [/data]
# Mon, 24 Jul 2017 18:37:49 GMT
WORKDIR /data
# Mon, 24 Jul 2017 18:37:50 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Mon, 24 Jul 2017 18:37:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Jul 2017 18:37:50 GMT
EXPOSE 6379/tcp
# Mon, 24 Jul 2017 18:37:50 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1b33d3f1140aa85d8fa6df4d8bd6fb270697f2da59e8e4759dead245d87899`  
		Last Modified: Mon, 24 Jul 2017 18:39:33 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920cdc17d3c261b5b00622fa8e135a39e27a04859d3ee4a062ed126506d10c13`  
		Last Modified: Mon, 24 Jul 2017 18:39:34 GMT  
		Size: 981.7 KB (981678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f939f708ee9a8df2f6ce80bacb7a4e7600bb27bf9615bf5371df0637e20a211`  
		Last Modified: Mon, 24 Jul 2017 18:40:27 GMT  
		Size: 8.1 MB (8063273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba0e186289de69568d40148a2cb0e43b4af1f7048b55b02f985ce42e1e5972a`  
		Last Modified: Mon, 24 Jul 2017 18:40:25 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e448b71a4f0fc223fe100d3c8ccbc8c601065c16fd32f958fdc62bb549f9979`  
		Last Modified: Mon, 24 Jul 2017 18:40:25 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4`

```console
$ docker pull redis@sha256:a7776895af32e34b1fef997e26c79fa988b40c5cf2a3fb48dc22e0584b648d82
```

-	Platforms:
	-	linux; amd64

### `redis:4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39169220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4f259423416b3c82b46e1caf01829ac3a99a211dfc691c9d862464768112e7f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:33:23 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Mon, 24 Jul 2017 18:33:24 GMT
ENV GOSU_VERSION=1.10
# Mon, 24 Jul 2017 18:34:53 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 24 Jul 2017 18:37:04 GMT
ENV REDIS_VERSION=4.0.1
# Mon, 24 Jul 2017 18:37:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Mon, 24 Jul 2017 18:37:04 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Mon, 24 Jul 2017 18:37:48 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Jul 2017 18:37:49 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 24 Jul 2017 18:37:49 GMT
VOLUME [/data]
# Mon, 24 Jul 2017 18:37:49 GMT
WORKDIR /data
# Mon, 24 Jul 2017 18:37:50 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Mon, 24 Jul 2017 18:37:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Jul 2017 18:37:50 GMT
EXPOSE 6379/tcp
# Mon, 24 Jul 2017 18:37:50 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1b33d3f1140aa85d8fa6df4d8bd6fb270697f2da59e8e4759dead245d87899`  
		Last Modified: Mon, 24 Jul 2017 18:39:33 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920cdc17d3c261b5b00622fa8e135a39e27a04859d3ee4a062ed126506d10c13`  
		Last Modified: Mon, 24 Jul 2017 18:39:34 GMT  
		Size: 981.7 KB (981678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f939f708ee9a8df2f6ce80bacb7a4e7600bb27bf9615bf5371df0637e20a211`  
		Last Modified: Mon, 24 Jul 2017 18:40:27 GMT  
		Size: 8.1 MB (8063273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba0e186289de69568d40148a2cb0e43b4af1f7048b55b02f985ce42e1e5972a`  
		Last Modified: Mon, 24 Jul 2017 18:40:25 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e448b71a4f0fc223fe100d3c8ccbc8c601065c16fd32f958fdc62bb549f9979`  
		Last Modified: Mon, 24 Jul 2017 18:40:25 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:latest`

```console
$ docker pull redis@sha256:a7776895af32e34b1fef997e26c79fa988b40c5cf2a3fb48dc22e0584b648d82
```

-	Platforms:
	-	linux; amd64

### `redis:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39169220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4f259423416b3c82b46e1caf01829ac3a99a211dfc691c9d862464768112e7f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:33:23 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Mon, 24 Jul 2017 18:33:24 GMT
ENV GOSU_VERSION=1.10
# Mon, 24 Jul 2017 18:34:53 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 24 Jul 2017 18:37:04 GMT
ENV REDIS_VERSION=4.0.1
# Mon, 24 Jul 2017 18:37:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Mon, 24 Jul 2017 18:37:04 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Mon, 24 Jul 2017 18:37:48 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Jul 2017 18:37:49 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 24 Jul 2017 18:37:49 GMT
VOLUME [/data]
# Mon, 24 Jul 2017 18:37:49 GMT
WORKDIR /data
# Mon, 24 Jul 2017 18:37:50 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Mon, 24 Jul 2017 18:37:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Jul 2017 18:37:50 GMT
EXPOSE 6379/tcp
# Mon, 24 Jul 2017 18:37:50 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1b33d3f1140aa85d8fa6df4d8bd6fb270697f2da59e8e4759dead245d87899`  
		Last Modified: Mon, 24 Jul 2017 18:39:33 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920cdc17d3c261b5b00622fa8e135a39e27a04859d3ee4a062ed126506d10c13`  
		Last Modified: Mon, 24 Jul 2017 18:39:34 GMT  
		Size: 981.7 KB (981678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f939f708ee9a8df2f6ce80bacb7a4e7600bb27bf9615bf5371df0637e20a211`  
		Last Modified: Mon, 24 Jul 2017 18:40:27 GMT  
		Size: 8.1 MB (8063273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba0e186289de69568d40148a2cb0e43b4af1f7048b55b02f985ce42e1e5972a`  
		Last Modified: Mon, 24 Jul 2017 18:40:25 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e448b71a4f0fc223fe100d3c8ccbc8c601065c16fd32f958fdc62bb549f9979`  
		Last Modified: Mon, 24 Jul 2017 18:40:25 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.1-32bit`

```console
$ docker pull redis@sha256:678464f03bab572a55f1aa4beed932e94a52b8ab4e9303920322dc73cbf05d82
```

-	Platforms:
	-	linux; amd64

### `redis:4.0.1-32bit` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.6 MB (42562853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:076f47e16f967a4b2cb58957cc6581c45481a0742bb964f74f01d80c59701dc7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:33:23 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Mon, 24 Jul 2017 18:33:24 GMT
ENV GOSU_VERSION=1.10
# Mon, 24 Jul 2017 18:34:53 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 24 Jul 2017 18:37:04 GMT
ENV REDIS_VERSION=4.0.1
# Mon, 24 Jul 2017 18:37:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Mon, 24 Jul 2017 18:37:04 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Mon, 24 Jul 2017 18:38:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:38:55 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Jul 2017 18:38:55 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 24 Jul 2017 18:38:56 GMT
VOLUME [/data]
# Mon, 24 Jul 2017 18:38:56 GMT
WORKDIR /data
# Mon, 24 Jul 2017 18:38:56 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Mon, 24 Jul 2017 18:38:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Jul 2017 18:38:56 GMT
EXPOSE 6379/tcp
# Mon, 24 Jul 2017 18:38:57 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1b33d3f1140aa85d8fa6df4d8bd6fb270697f2da59e8e4759dead245d87899`  
		Last Modified: Mon, 24 Jul 2017 18:39:33 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920cdc17d3c261b5b00622fa8e135a39e27a04859d3ee4a062ed126506d10c13`  
		Last Modified: Mon, 24 Jul 2017 18:39:34 GMT  
		Size: 981.7 KB (981678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aed5c176579fe0ad0e9516c95924e04afab3ee6de49d4134070c5716e2122232`  
		Last Modified: Mon, 24 Jul 2017 18:40:47 GMT  
		Size: 4.2 MB (4173578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77dd561df4b4a91c630af203ded4bb9cbe1dad6da11ebe4bc687de086a11e09`  
		Last Modified: Mon, 24 Jul 2017 18:40:48 GMT  
		Size: 7.3 MB (7283327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a340ccf12e1b00be7ac8f9ed3de40f268e3d3df5d29680c5b1fef250b1ef2ec3`  
		Last Modified: Mon, 24 Jul 2017 18:40:46 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3810400c009104ebf4dc24757563600308d537dba48efc469f5fd49ed35c0a`  
		Last Modified: Mon, 24 Jul 2017 18:40:46 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-32bit`

```console
$ docker pull redis@sha256:678464f03bab572a55f1aa4beed932e94a52b8ab4e9303920322dc73cbf05d82
```

-	Platforms:
	-	linux; amd64

### `redis:4.0-32bit` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.6 MB (42562853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:076f47e16f967a4b2cb58957cc6581c45481a0742bb964f74f01d80c59701dc7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:33:23 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Mon, 24 Jul 2017 18:33:24 GMT
ENV GOSU_VERSION=1.10
# Mon, 24 Jul 2017 18:34:53 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 24 Jul 2017 18:37:04 GMT
ENV REDIS_VERSION=4.0.1
# Mon, 24 Jul 2017 18:37:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Mon, 24 Jul 2017 18:37:04 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Mon, 24 Jul 2017 18:38:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:38:55 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Jul 2017 18:38:55 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 24 Jul 2017 18:38:56 GMT
VOLUME [/data]
# Mon, 24 Jul 2017 18:38:56 GMT
WORKDIR /data
# Mon, 24 Jul 2017 18:38:56 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Mon, 24 Jul 2017 18:38:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Jul 2017 18:38:56 GMT
EXPOSE 6379/tcp
# Mon, 24 Jul 2017 18:38:57 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1b33d3f1140aa85d8fa6df4d8bd6fb270697f2da59e8e4759dead245d87899`  
		Last Modified: Mon, 24 Jul 2017 18:39:33 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920cdc17d3c261b5b00622fa8e135a39e27a04859d3ee4a062ed126506d10c13`  
		Last Modified: Mon, 24 Jul 2017 18:39:34 GMT  
		Size: 981.7 KB (981678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aed5c176579fe0ad0e9516c95924e04afab3ee6de49d4134070c5716e2122232`  
		Last Modified: Mon, 24 Jul 2017 18:40:47 GMT  
		Size: 4.2 MB (4173578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77dd561df4b4a91c630af203ded4bb9cbe1dad6da11ebe4bc687de086a11e09`  
		Last Modified: Mon, 24 Jul 2017 18:40:48 GMT  
		Size: 7.3 MB (7283327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a340ccf12e1b00be7ac8f9ed3de40f268e3d3df5d29680c5b1fef250b1ef2ec3`  
		Last Modified: Mon, 24 Jul 2017 18:40:46 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3810400c009104ebf4dc24757563600308d537dba48efc469f5fd49ed35c0a`  
		Last Modified: Mon, 24 Jul 2017 18:40:46 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-32bit`

```console
$ docker pull redis@sha256:678464f03bab572a55f1aa4beed932e94a52b8ab4e9303920322dc73cbf05d82
```

-	Platforms:
	-	linux; amd64

### `redis:4-32bit` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.6 MB (42562853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:076f47e16f967a4b2cb58957cc6581c45481a0742bb964f74f01d80c59701dc7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:33:23 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Mon, 24 Jul 2017 18:33:24 GMT
ENV GOSU_VERSION=1.10
# Mon, 24 Jul 2017 18:34:53 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 24 Jul 2017 18:37:04 GMT
ENV REDIS_VERSION=4.0.1
# Mon, 24 Jul 2017 18:37:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Mon, 24 Jul 2017 18:37:04 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Mon, 24 Jul 2017 18:38:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:38:55 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Jul 2017 18:38:55 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 24 Jul 2017 18:38:56 GMT
VOLUME [/data]
# Mon, 24 Jul 2017 18:38:56 GMT
WORKDIR /data
# Mon, 24 Jul 2017 18:38:56 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Mon, 24 Jul 2017 18:38:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Jul 2017 18:38:56 GMT
EXPOSE 6379/tcp
# Mon, 24 Jul 2017 18:38:57 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1b33d3f1140aa85d8fa6df4d8bd6fb270697f2da59e8e4759dead245d87899`  
		Last Modified: Mon, 24 Jul 2017 18:39:33 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920cdc17d3c261b5b00622fa8e135a39e27a04859d3ee4a062ed126506d10c13`  
		Last Modified: Mon, 24 Jul 2017 18:39:34 GMT  
		Size: 981.7 KB (981678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aed5c176579fe0ad0e9516c95924e04afab3ee6de49d4134070c5716e2122232`  
		Last Modified: Mon, 24 Jul 2017 18:40:47 GMT  
		Size: 4.2 MB (4173578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77dd561df4b4a91c630af203ded4bb9cbe1dad6da11ebe4bc687de086a11e09`  
		Last Modified: Mon, 24 Jul 2017 18:40:48 GMT  
		Size: 7.3 MB (7283327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a340ccf12e1b00be7ac8f9ed3de40f268e3d3df5d29680c5b1fef250b1ef2ec3`  
		Last Modified: Mon, 24 Jul 2017 18:40:46 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3810400c009104ebf4dc24757563600308d537dba48efc469f5fd49ed35c0a`  
		Last Modified: Mon, 24 Jul 2017 18:40:46 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:32bit`

```console
$ docker pull redis@sha256:678464f03bab572a55f1aa4beed932e94a52b8ab4e9303920322dc73cbf05d82
```

-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.6 MB (42562853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:076f47e16f967a4b2cb58957cc6581c45481a0742bb964f74f01d80c59701dc7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:33:23 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Mon, 24 Jul 2017 18:33:24 GMT
ENV GOSU_VERSION=1.10
# Mon, 24 Jul 2017 18:34:53 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 24 Jul 2017 18:37:04 GMT
ENV REDIS_VERSION=4.0.1
# Mon, 24 Jul 2017 18:37:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Mon, 24 Jul 2017 18:37:04 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Mon, 24 Jul 2017 18:38:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:38:55 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Jul 2017 18:38:55 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 24 Jul 2017 18:38:56 GMT
VOLUME [/data]
# Mon, 24 Jul 2017 18:38:56 GMT
WORKDIR /data
# Mon, 24 Jul 2017 18:38:56 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Mon, 24 Jul 2017 18:38:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Jul 2017 18:38:56 GMT
EXPOSE 6379/tcp
# Mon, 24 Jul 2017 18:38:57 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1b33d3f1140aa85d8fa6df4d8bd6fb270697f2da59e8e4759dead245d87899`  
		Last Modified: Mon, 24 Jul 2017 18:39:33 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920cdc17d3c261b5b00622fa8e135a39e27a04859d3ee4a062ed126506d10c13`  
		Last Modified: Mon, 24 Jul 2017 18:39:34 GMT  
		Size: 981.7 KB (981678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aed5c176579fe0ad0e9516c95924e04afab3ee6de49d4134070c5716e2122232`  
		Last Modified: Mon, 24 Jul 2017 18:40:47 GMT  
		Size: 4.2 MB (4173578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77dd561df4b4a91c630af203ded4bb9cbe1dad6da11ebe4bc687de086a11e09`  
		Last Modified: Mon, 24 Jul 2017 18:40:48 GMT  
		Size: 7.3 MB (7283327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a340ccf12e1b00be7ac8f9ed3de40f268e3d3df5d29680c5b1fef250b1ef2ec3`  
		Last Modified: Mon, 24 Jul 2017 18:40:46 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3810400c009104ebf4dc24757563600308d537dba48efc469f5fd49ed35c0a`  
		Last Modified: Mon, 24 Jul 2017 18:40:46 GMT  
		Size: 395.0 B  
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
