<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redis`

-	[`redis:3.2.9`](#redis329)
-	[`redis:3.2`](#redis32)
-	[`redis:3`](#redis3)
-	[`redis:3.2.9-32bit`](#redis329-32bit)
-	[`redis:3.2-32bit`](#redis32-32bit)
-	[`redis:3-32bit`](#redis3-32bit)
-	[`redis:3.2.9-alpine`](#redis329-alpine)
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

## `redis:3.2.9`

```console
$ docker pull redis@sha256:613b3726ddff603e2730f7f4ae7796d63632f17a9cd82d787d60084b8b0109f1
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.9` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36645228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3459037fcc3a7fd7b315e47370c5a0a9184aa03e0de02ef19273710f6b73ada9`
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
# Mon, 24 Jul 2017 18:34:53 GMT
ENV REDIS_VERSION=3.2.9
# Mon, 24 Jul 2017 18:34:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.9.tar.gz
# Mon, 24 Jul 2017 18:34:53 GMT
ENV REDIS_DOWNLOAD_SHA=6eaacfa983b287e440d0839ead20c2231749d5d6b78bbe0e0ffa3a890c59ff26
# Mon, 24 Jul 2017 18:35:35 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Jul 2017 18:35:36 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 24 Jul 2017 18:35:36 GMT
VOLUME [/data]
# Mon, 24 Jul 2017 18:35:37 GMT
WORKDIR /data
# Mon, 24 Jul 2017 18:35:37 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Mon, 24 Jul 2017 18:35:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Jul 2017 18:35:37 GMT
EXPOSE 6379/tcp
# Mon, 24 Jul 2017 18:35:37 GMT
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
	-	`sha256:181f40e08814b6b7108d5e912d9987f03c181a787f15645dabf132cc1d708cee`  
		Last Modified: Mon, 24 Jul 2017 18:39:38 GMT  
		Size: 5.5 MB (5539279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc1e145e8f107efae2adb694ba220e3bd68d24d7fc7fb52b9b2c977727ccf0c7`  
		Last Modified: Mon, 24 Jul 2017 18:39:34 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d604a160f5dc03fc7ada467d7b19ccee8e89f7e81c4fc36fcd3cd80c9c17e8a`  
		Last Modified: Mon, 24 Jul 2017 18:39:34 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2`

```console
$ docker pull redis@sha256:613b3726ddff603e2730f7f4ae7796d63632f17a9cd82d787d60084b8b0109f1
```

-	Platforms:
	-	linux; amd64

### `redis:3.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36645228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3459037fcc3a7fd7b315e47370c5a0a9184aa03e0de02ef19273710f6b73ada9`
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
# Mon, 24 Jul 2017 18:34:53 GMT
ENV REDIS_VERSION=3.2.9
# Mon, 24 Jul 2017 18:34:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.9.tar.gz
# Mon, 24 Jul 2017 18:34:53 GMT
ENV REDIS_DOWNLOAD_SHA=6eaacfa983b287e440d0839ead20c2231749d5d6b78bbe0e0ffa3a890c59ff26
# Mon, 24 Jul 2017 18:35:35 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Jul 2017 18:35:36 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 24 Jul 2017 18:35:36 GMT
VOLUME [/data]
# Mon, 24 Jul 2017 18:35:37 GMT
WORKDIR /data
# Mon, 24 Jul 2017 18:35:37 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Mon, 24 Jul 2017 18:35:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Jul 2017 18:35:37 GMT
EXPOSE 6379/tcp
# Mon, 24 Jul 2017 18:35:37 GMT
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
	-	`sha256:181f40e08814b6b7108d5e912d9987f03c181a787f15645dabf132cc1d708cee`  
		Last Modified: Mon, 24 Jul 2017 18:39:38 GMT  
		Size: 5.5 MB (5539279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc1e145e8f107efae2adb694ba220e3bd68d24d7fc7fb52b9b2c977727ccf0c7`  
		Last Modified: Mon, 24 Jul 2017 18:39:34 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d604a160f5dc03fc7ada467d7b19ccee8e89f7e81c4fc36fcd3cd80c9c17e8a`  
		Last Modified: Mon, 24 Jul 2017 18:39:34 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3`

```console
$ docker pull redis@sha256:613b3726ddff603e2730f7f4ae7796d63632f17a9cd82d787d60084b8b0109f1
```

-	Platforms:
	-	linux; amd64

### `redis:3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36645228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3459037fcc3a7fd7b315e47370c5a0a9184aa03e0de02ef19273710f6b73ada9`
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
# Mon, 24 Jul 2017 18:34:53 GMT
ENV REDIS_VERSION=3.2.9
# Mon, 24 Jul 2017 18:34:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.9.tar.gz
# Mon, 24 Jul 2017 18:34:53 GMT
ENV REDIS_DOWNLOAD_SHA=6eaacfa983b287e440d0839ead20c2231749d5d6b78bbe0e0ffa3a890c59ff26
# Mon, 24 Jul 2017 18:35:35 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Jul 2017 18:35:36 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 24 Jul 2017 18:35:36 GMT
VOLUME [/data]
# Mon, 24 Jul 2017 18:35:37 GMT
WORKDIR /data
# Mon, 24 Jul 2017 18:35:37 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Mon, 24 Jul 2017 18:35:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Jul 2017 18:35:37 GMT
EXPOSE 6379/tcp
# Mon, 24 Jul 2017 18:35:37 GMT
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
	-	`sha256:181f40e08814b6b7108d5e912d9987f03c181a787f15645dabf132cc1d708cee`  
		Last Modified: Mon, 24 Jul 2017 18:39:38 GMT  
		Size: 5.5 MB (5539279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc1e145e8f107efae2adb694ba220e3bd68d24d7fc7fb52b9b2c977727ccf0c7`  
		Last Modified: Mon, 24 Jul 2017 18:39:34 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d604a160f5dc03fc7ada467d7b19ccee8e89f7e81c4fc36fcd3cd80c9c17e8a`  
		Last Modified: Mon, 24 Jul 2017 18:39:34 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.9-32bit`

```console
$ docker pull redis@sha256:4b52cb4ea7006130d1280abaa4a6ac68484e4e2018069270fe496fa0d38782a3
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.9-32bit` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40299302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9975d766e9f9934b4e15cc88b76096ec14e7e6d5968504ed97b025818b0cd12b`
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
# Mon, 24 Jul 2017 18:34:53 GMT
ENV REDIS_VERSION=3.2.9
# Mon, 24 Jul 2017 18:34:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.9.tar.gz
# Mon, 24 Jul 2017 18:34:53 GMT
ENV REDIS_DOWNLOAD_SHA=6eaacfa983b287e440d0839ead20c2231749d5d6b78bbe0e0ffa3a890c59ff26
# Mon, 24 Jul 2017 18:36:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:37:00 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Jul 2017 18:37:00 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 24 Jul 2017 18:37:01 GMT
VOLUME [/data]
# Mon, 24 Jul 2017 18:37:01 GMT
WORKDIR /data
# Mon, 24 Jul 2017 18:37:01 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Mon, 24 Jul 2017 18:37:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Jul 2017 18:37:02 GMT
EXPOSE 6379/tcp
# Mon, 24 Jul 2017 18:37:02 GMT
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
	-	`sha256:54e2eeda0a482c242433d55f5556cd6419fcdebe44e2ef12aa0556538c58232c`  
		Last Modified: Mon, 24 Jul 2017 18:39:56 GMT  
		Size: 4.2 MB (4173579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2e51b2d309d0f5c9f1556f17a7e189519117e41429357da237cf642727304c`  
		Last Modified: Mon, 24 Jul 2017 18:39:55 GMT  
		Size: 5.0 MB (5019773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38ca1eb6f92ad2d76d5c4c5454cf644c1443e2eaa02eb6d4111baab8d03effb`  
		Last Modified: Mon, 24 Jul 2017 18:39:54 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9113166f017c67b3ba362f03c76e04abfc412ee4ed07a42dd46350520c2390ab`  
		Last Modified: Mon, 24 Jul 2017 18:39:55 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-32bit`

```console
$ docker pull redis@sha256:4b52cb4ea7006130d1280abaa4a6ac68484e4e2018069270fe496fa0d38782a3
```

-	Platforms:
	-	linux; amd64

### `redis:3.2-32bit` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40299302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9975d766e9f9934b4e15cc88b76096ec14e7e6d5968504ed97b025818b0cd12b`
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
# Mon, 24 Jul 2017 18:34:53 GMT
ENV REDIS_VERSION=3.2.9
# Mon, 24 Jul 2017 18:34:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.9.tar.gz
# Mon, 24 Jul 2017 18:34:53 GMT
ENV REDIS_DOWNLOAD_SHA=6eaacfa983b287e440d0839ead20c2231749d5d6b78bbe0e0ffa3a890c59ff26
# Mon, 24 Jul 2017 18:36:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:37:00 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Jul 2017 18:37:00 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 24 Jul 2017 18:37:01 GMT
VOLUME [/data]
# Mon, 24 Jul 2017 18:37:01 GMT
WORKDIR /data
# Mon, 24 Jul 2017 18:37:01 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Mon, 24 Jul 2017 18:37:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Jul 2017 18:37:02 GMT
EXPOSE 6379/tcp
# Mon, 24 Jul 2017 18:37:02 GMT
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
	-	`sha256:54e2eeda0a482c242433d55f5556cd6419fcdebe44e2ef12aa0556538c58232c`  
		Last Modified: Mon, 24 Jul 2017 18:39:56 GMT  
		Size: 4.2 MB (4173579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2e51b2d309d0f5c9f1556f17a7e189519117e41429357da237cf642727304c`  
		Last Modified: Mon, 24 Jul 2017 18:39:55 GMT  
		Size: 5.0 MB (5019773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38ca1eb6f92ad2d76d5c4c5454cf644c1443e2eaa02eb6d4111baab8d03effb`  
		Last Modified: Mon, 24 Jul 2017 18:39:54 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9113166f017c67b3ba362f03c76e04abfc412ee4ed07a42dd46350520c2390ab`  
		Last Modified: Mon, 24 Jul 2017 18:39:55 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-32bit`

```console
$ docker pull redis@sha256:4b52cb4ea7006130d1280abaa4a6ac68484e4e2018069270fe496fa0d38782a3
```

-	Platforms:
	-	linux; amd64

### `redis:3-32bit` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40299302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9975d766e9f9934b4e15cc88b76096ec14e7e6d5968504ed97b025818b0cd12b`
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
# Mon, 24 Jul 2017 18:34:53 GMT
ENV REDIS_VERSION=3.2.9
# Mon, 24 Jul 2017 18:34:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.9.tar.gz
# Mon, 24 Jul 2017 18:34:53 GMT
ENV REDIS_DOWNLOAD_SHA=6eaacfa983b287e440d0839ead20c2231749d5d6b78bbe0e0ffa3a890c59ff26
# Mon, 24 Jul 2017 18:36:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:37:00 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Jul 2017 18:37:00 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 24 Jul 2017 18:37:01 GMT
VOLUME [/data]
# Mon, 24 Jul 2017 18:37:01 GMT
WORKDIR /data
# Mon, 24 Jul 2017 18:37:01 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Mon, 24 Jul 2017 18:37:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Jul 2017 18:37:02 GMT
EXPOSE 6379/tcp
# Mon, 24 Jul 2017 18:37:02 GMT
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
	-	`sha256:54e2eeda0a482c242433d55f5556cd6419fcdebe44e2ef12aa0556538c58232c`  
		Last Modified: Mon, 24 Jul 2017 18:39:56 GMT  
		Size: 4.2 MB (4173579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2e51b2d309d0f5c9f1556f17a7e189519117e41429357da237cf642727304c`  
		Last Modified: Mon, 24 Jul 2017 18:39:55 GMT  
		Size: 5.0 MB (5019773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38ca1eb6f92ad2d76d5c4c5454cf644c1443e2eaa02eb6d4111baab8d03effb`  
		Last Modified: Mon, 24 Jul 2017 18:39:54 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9113166f017c67b3ba362f03c76e04abfc412ee4ed07a42dd46350520c2390ab`  
		Last Modified: Mon, 24 Jul 2017 18:39:55 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.9-alpine`

```console
$ docker pull redis@sha256:2b1600c032e7653d079e9bd1eb80df5c99733795691f5ae9bca451bec325b7ea
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.9-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7490836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:159ac12c79e1a8d85dfe61afff8c64b96881719139730012a9697f432d6b739a`
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
# Wed, 28 Jun 2017 22:14:03 GMT
ENV REDIS_VERSION=3.2.9
# Wed, 28 Jun 2017 22:14:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.9.tar.gz
# Wed, 28 Jun 2017 22:14:05 GMT
ENV REDIS_DOWNLOAD_SHA=6eaacfa983b287e440d0839ead20c2231749d5d6b78bbe0e0ffa3a890c59ff26
# Wed, 28 Jun 2017 22:14:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Wed, 28 Jun 2017 22:14:31 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Jun 2017 22:14:31 GMT
VOLUME [/data]
# Wed, 28 Jun 2017 22:14:32 GMT
WORKDIR /data
# Wed, 28 Jun 2017 22:14:34 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 28 Jun 2017 22:14:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 22:14:35 GMT
EXPOSE 6379/tcp
# Wed, 28 Jun 2017 22:14:36 GMT
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
	-	`sha256:08957ceaa2b3be874cde8d7fa15c274300f47185acd62bca812a2ffb6228482d`  
		Last Modified: Fri, 30 Jun 2017 00:52:33 GMT  
		Size: 5.5 MB (5490529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd3d12a6a79f772961a771f678c1a39e1f370e7baeb9e606ad8f1b92572f4ab`  
		Last Modified: Fri, 30 Jun 2017 00:52:31 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad88df090801e8faa8cf0be1f403b77613d13e11dad73f561461d482f79256c`  
		Last Modified: Fri, 30 Jun 2017 00:52:31 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-alpine`

```console
$ docker pull redis@sha256:2b1600c032e7653d079e9bd1eb80df5c99733795691f5ae9bca451bec325b7ea
```

-	Platforms:
	-	linux; amd64

### `redis:3.2-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7490836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:159ac12c79e1a8d85dfe61afff8c64b96881719139730012a9697f432d6b739a`
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
# Wed, 28 Jun 2017 22:14:03 GMT
ENV REDIS_VERSION=3.2.9
# Wed, 28 Jun 2017 22:14:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.9.tar.gz
# Wed, 28 Jun 2017 22:14:05 GMT
ENV REDIS_DOWNLOAD_SHA=6eaacfa983b287e440d0839ead20c2231749d5d6b78bbe0e0ffa3a890c59ff26
# Wed, 28 Jun 2017 22:14:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Wed, 28 Jun 2017 22:14:31 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Jun 2017 22:14:31 GMT
VOLUME [/data]
# Wed, 28 Jun 2017 22:14:32 GMT
WORKDIR /data
# Wed, 28 Jun 2017 22:14:34 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 28 Jun 2017 22:14:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 22:14:35 GMT
EXPOSE 6379/tcp
# Wed, 28 Jun 2017 22:14:36 GMT
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
	-	`sha256:08957ceaa2b3be874cde8d7fa15c274300f47185acd62bca812a2ffb6228482d`  
		Last Modified: Fri, 30 Jun 2017 00:52:33 GMT  
		Size: 5.5 MB (5490529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd3d12a6a79f772961a771f678c1a39e1f370e7baeb9e606ad8f1b92572f4ab`  
		Last Modified: Fri, 30 Jun 2017 00:52:31 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad88df090801e8faa8cf0be1f403b77613d13e11dad73f561461d482f79256c`  
		Last Modified: Fri, 30 Jun 2017 00:52:31 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-alpine`

```console
$ docker pull redis@sha256:2b1600c032e7653d079e9bd1eb80df5c99733795691f5ae9bca451bec325b7ea
```

-	Platforms:
	-	linux; amd64

### `redis:3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7490836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:159ac12c79e1a8d85dfe61afff8c64b96881719139730012a9697f432d6b739a`
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
# Wed, 28 Jun 2017 22:14:03 GMT
ENV REDIS_VERSION=3.2.9
# Wed, 28 Jun 2017 22:14:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.9.tar.gz
# Wed, 28 Jun 2017 22:14:05 GMT
ENV REDIS_DOWNLOAD_SHA=6eaacfa983b287e440d0839ead20c2231749d5d6b78bbe0e0ffa3a890c59ff26
# Wed, 28 Jun 2017 22:14:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Wed, 28 Jun 2017 22:14:31 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Jun 2017 22:14:31 GMT
VOLUME [/data]
# Wed, 28 Jun 2017 22:14:32 GMT
WORKDIR /data
# Wed, 28 Jun 2017 22:14:34 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 28 Jun 2017 22:14:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 22:14:35 GMT
EXPOSE 6379/tcp
# Wed, 28 Jun 2017 22:14:36 GMT
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
	-	`sha256:08957ceaa2b3be874cde8d7fa15c274300f47185acd62bca812a2ffb6228482d`  
		Last Modified: Fri, 30 Jun 2017 00:52:33 GMT  
		Size: 5.5 MB (5490529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd3d12a6a79f772961a771f678c1a39e1f370e7baeb9e606ad8f1b92572f4ab`  
		Last Modified: Fri, 30 Jun 2017 00:52:31 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad88df090801e8faa8cf0be1f403b77613d13e11dad73f561461d482f79256c`  
		Last Modified: Fri, 30 Jun 2017 00:52:31 GMT  
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
