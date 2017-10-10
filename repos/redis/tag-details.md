<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redis`

-	[`redis:3`](#redis3)
-	[`redis:3.2`](#redis32)
-	[`redis:3.2.11`](#redis3211)
-	[`redis:3.2.11-32bit`](#redis3211-32bit)
-	[`redis:3.2.11-alpine`](#redis3211-alpine)
-	[`redis:3.2-32bit`](#redis32-32bit)
-	[`redis:3.2-alpine`](#redis32-alpine)
-	[`redis:32bit`](#redis32bit)
-	[`redis:3-32bit`](#redis3-32bit)
-	[`redis:3-alpine`](#redis3-alpine)
-	[`redis:4`](#redis4)
-	[`redis:4.0`](#redis40)
-	[`redis:4.0.2`](#redis402)
-	[`redis:4.0.2-32bit`](#redis402-32bit)
-	[`redis:4.0.2-alpine`](#redis402-alpine)
-	[`redis:4.0-32bit`](#redis40-32bit)
-	[`redis:4.0-alpine`](#redis40-alpine)
-	[`redis:4-32bit`](#redis4-32bit)
-	[`redis:4-alpine`](#redis4-alpine)
-	[`redis:alpine`](#redisalpine)
-	[`redis:latest`](#redislatest)

## `redis:3`

```console
$ docker pull redis@sha256:b15e3fabba806a6ee7f14774df0c2dc3036f752969bcdac022f0aa96d5cfc954
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:3` - linux; amd64

```console
$ docker pull redis@sha256:ccc7dd711bdcfa78378c2a1629e89c4d9531fe0d94e80b3113691209daac545c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36844677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ae3b93617bdb7cc7559c021cd57fec2db465daf94e717b61282406b74493941`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:48:50 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 02:48:50 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:49:22 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 02:49:22 GMT
ENV REDIS_VERSION=3.2.11
# Tue, 10 Oct 2017 02:49:22 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Tue, 10 Oct 2017 02:49:22 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Tue, 10 Oct 2017 02:50:22 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 02:50:22 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 02:50:22 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 02:50:23 GMT
WORKDIR /data
# Tue, 10 Oct 2017 02:50:23 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:50:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:50:23 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 02:50:23 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1846f364e395a92181df2a4fb615848549e90fb27c271bda34c8eb787cf50af`  
		Last Modified: Tue, 10 Oct 2017 02:55:26 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba901efed8cecd066085ffec4b49648fc217a911ec6557efaa4fcc7eca9daba`  
		Last Modified: Tue, 10 Oct 2017 02:55:27 GMT  
		Size: 981.8 KB (981752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28151d657b0516e02ccef6147839f19318fc1f9e050a77a1b7cffb26c67d1ad8`  
		Last Modified: Tue, 10 Oct 2017 02:55:28 GMT  
		Size: 5.7 MB (5747016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd9285bf0722a1a815f722e3df945164247abaaaa79e9718daa9147838c11ba`  
		Last Modified: Tue, 10 Oct 2017 02:55:26 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023eb188840459c2480a9506cabb3de77e1b839e1c094204835c0f52b839ddfe`  
		Last Modified: Tue, 10 Oct 2017 02:55:26 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; arm variant v5

```console
$ docker pull redis@sha256:c53859a9fe5ea9190c9afe88d3c13b62f3dd1b3a544e4ec8ba41c86f6d48b8f5
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35038800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67226108e2e2a13b33271099ae0d6b0f998dcb7cd0649eddaebb994c978633a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:24 GMT
ADD file:b3e61e5275e7047cc330ef997896c9e74467b5134f0cada4325564a122204b61 in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:20:49 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 00:20:49 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:21:38 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 00:21:38 GMT
ENV REDIS_VERSION=3.2.11
# Tue, 10 Oct 2017 00:21:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Tue, 10 Oct 2017 00:21:39 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Tue, 10 Oct 2017 00:22:39 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 00:22:40 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 00:22:40 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 00:22:40 GMT
WORKDIR /data
# Tue, 10 Oct 2017 00:22:41 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:22:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:22:41 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 00:22:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:355c947ce54f583e3c4723632384e762cf27a159cb11b7ff6af3106dc7bf8e99`  
		Last Modified: Mon, 09 Oct 2017 21:47:41 GMT  
		Size: 28.4 MB (28424201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd038f96617a144d92c710168e0f0eb6c5997c6f2dda7ffcd277b4d4b08cecf`  
		Last Modified: Tue, 10 Oct 2017 00:24:15 GMT  
		Size: 2.1 KB (2074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4144ae6f0952a422c232f2b37cfa79916365b05774962b00697f7b4fde08c0f3`  
		Last Modified: Tue, 10 Oct 2017 00:24:15 GMT  
		Size: 971.2 KB (971238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b569b88e4b32096f24eb58e6f63633f6dcd658e827828b066aa9dd96a46dd341`  
		Last Modified: Tue, 10 Oct 2017 00:24:17 GMT  
		Size: 5.6 MB (5640753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd92620ec3f3958d5906528f4747d79daef9d4bf3330869151db42bf29e35bb5`  
		Last Modified: Tue, 10 Oct 2017 00:24:15 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9c935fcbd461da22cf0a2f658d46b8d1330df5e3c2fffea3d98ca96667c0ed2`  
		Last Modified: Tue, 10 Oct 2017 00:24:15 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; arm variant v7

```console
$ docker pull redis@sha256:bcf1592db21102f4573d931cab0cde20848d0b276fbddebb83d62e6a450aab62
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 MB (32715154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0decda02f937f7d9f041c9ecc5b59d99e6343097b13aa14d942a10753f010a8f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:0cd8ed314febdbf680645d20f346d9bac16fad5654c0b0d6ce2dec7c27c17b9a in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:11:22 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 00:11:22 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:12:25 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 00:12:25 GMT
ENV REDIS_VERSION=3.2.11
# Tue, 10 Oct 2017 00:12:25 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Tue, 10 Oct 2017 00:12:26 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Tue, 10 Oct 2017 00:13:33 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 00:13:34 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 00:13:34 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 00:13:34 GMT
WORKDIR /data
# Tue, 10 Oct 2017 00:13:35 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:13:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:13:36 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 00:13:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:02620033936d6cf3514a813f366025a14370f5dfe654e89eaca3a56b357e88c2`  
		Last Modified: Mon, 09 Oct 2017 21:49:15 GMT  
		Size: 26.3 MB (26280982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1b8976e9d698895ee6bac5731b99ea1c740a234bb1d7cf23d8f74334b74a63`  
		Last Modified: Tue, 10 Oct 2017 00:15:36 GMT  
		Size: 2.1 KB (2073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0064aaefd3fc879be9a4010ba88375a62b4f4f1e6a483ab539f77ab45aee083e`  
		Last Modified: Tue, 10 Oct 2017 00:15:36 GMT  
		Size: 956.1 KB (956111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6783ffe3f9370b2d93b7341be9a0698e4c94354ec89d28d28ff69d4f13d88a`  
		Last Modified: Tue, 10 Oct 2017 00:15:38 GMT  
		Size: 5.5 MB (5475452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:840a24e85331f8fd529c1e6b25a68f89d05c9ffd7e232e272d3e1b31f99d1fe5`  
		Last Modified: Tue, 10 Oct 2017 00:15:36 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eef559d897b4af1092bb783d635841c22dd068f153cd9abe9d65d8bec624869`  
		Last Modified: Tue, 10 Oct 2017 00:15:36 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:e27c18168097ceff06d91cce6ea9baf22838ce43195be29510b7f7b422422712
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34280627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8161dcffc99a8ce09001767b1bcb63d331b418e7baa8fc9efec94bad2134a29d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:51 GMT
ADD file:75f5768db078e9eee90676141a2c9faa9ce02768b7c9cd6e588bdd5ffc0f65e3 in / 
# Mon, 09 Oct 2017 21:43:51 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:03:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 05:03:21 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 05:04:19 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 05:04:20 GMT
ENV REDIS_VERSION=3.2.11
# Tue, 10 Oct 2017 05:04:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Tue, 10 Oct 2017 05:04:21 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Tue, 10 Oct 2017 05:06:05 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 05:06:07 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 05:06:08 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 05:06:09 GMT
WORKDIR /data
# Tue, 10 Oct 2017 05:06:10 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 05:06:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 05:06:12 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 05:06:13 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f2da27d97c13e9e531eda9577a28eb81b0d9034d7fd7e6575bd92744eed500f6`  
		Last Modified: Mon, 09 Oct 2017 21:53:20 GMT  
		Size: 27.5 MB (27480591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05e1313d9bb5766ff6bdeb2dde2e7f01045ac9c7df071253d3dc226d7cbe691`  
		Last Modified: Tue, 10 Oct 2017 05:08:57 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8c747456b46f024d9fda80792b271a2396f5d11f0adb7def45ec25548f8ab7`  
		Last Modified: Tue, 10 Oct 2017 05:08:57 GMT  
		Size: 948.7 KB (948653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:990a5e10ceee492c27ddbd9ec8ac8a9dafe2d6d4483d8f2cacbc6e37650d3643`  
		Last Modified: Tue, 10 Oct 2017 05:09:01 GMT  
		Size: 5.8 MB (5848792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d84f8bc4abdde3453dae4350a7363aacc728c286455b9bce9a6130b4c48be0d`  
		Last Modified: Tue, 10 Oct 2017 05:08:58 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e40988074fbdcb716eecc185d23e9989fb3e344931a7708aaf081e6c3a0c143`  
		Last Modified: Tue, 10 Oct 2017 05:08:57 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; 386

```console
$ docker pull redis@sha256:6e063633f42e536ca65e51b3b926b40c0e2a672dc00a23bb6bcf01b011b38af4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36453199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cfad35731c1acc9435a79d8a6885656d29f701b3611194013ccee80f71943f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:30 GMT
ADD file:169ab3194fd1b25e06359d6eceb655093f44f0255c799ae8a3fc5bf8ba50fd8d in / 
# Mon, 09 Oct 2017 21:42:31 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:19:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 02:19:22 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:20:12 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 02:20:12 GMT
ENV REDIS_VERSION=3.2.11
# Tue, 10 Oct 2017 02:20:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Tue, 10 Oct 2017 02:20:12 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Tue, 10 Oct 2017 02:21:49 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 02:21:49 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 02:21:50 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 02:21:50 GMT
WORKDIR /data
# Tue, 10 Oct 2017 02:21:50 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:21:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:21:50 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 02:21:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d8b3cf5f6e0f087738d5589b812e12f5b8781935412c95d15f2f77d68657b006`  
		Last Modified: Mon, 09 Oct 2017 21:48:54 GMT  
		Size: 30.3 MB (30264454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c8d2c75f5b453b9d49112d257eb4c2f457c6597151256be7900ade930200dd`  
		Last Modified: Tue, 10 Oct 2017 02:24:19 GMT  
		Size: 2.1 KB (2075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d13873782f4c8b79e0d645f76188d4b6df1e79c97a304a50ec7a9e1f5882dd38`  
		Last Modified: Tue, 10 Oct 2017 02:24:20 GMT  
		Size: 960.8 KB (960803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb12faa5db93b1e0d9a340ec4001413558768442472a2c9e85c9de2d5287577f`  
		Last Modified: Tue, 10 Oct 2017 02:24:21 GMT  
		Size: 5.2 MB (5225367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d81fcda8db20562969aeeab3e6ebe66ecf6433370449c844ecb70bbe72c49f`  
		Last Modified: Tue, 10 Oct 2017 02:24:19 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62aaa2deced9a9c30444410b103a14926e3274b37611fa5428cd8f0938dacc6c`  
		Last Modified: Tue, 10 Oct 2017 02:24:19 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; ppc64le

```console
$ docker pull redis@sha256:ae34e744d3335dab65ebfbe1ccca5614967a844574d84a6d6d5340532cc860a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.3 MB (36251191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08850e9f303ca32c69e28bab7f3533606f50e627f61c55590b27395a54c3aa58`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:16 GMT
ADD file:2116c25fe6275b240bd8d3a4bfe6f707d53b8f7c679a08dc4e82f9351e32073f in / 
# Mon, 09 Oct 2017 21:43:18 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 06:51:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 06:51:43 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 06:56:16 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 06:56:18 GMT
ENV REDIS_VERSION=3.2.11
# Tue, 10 Oct 2017 06:56:21 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Tue, 10 Oct 2017 06:56:25 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Tue, 10 Oct 2017 07:04:51 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 07:05:00 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 07:05:06 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 07:05:10 GMT
WORKDIR /data
# Tue, 10 Oct 2017 07:05:14 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 07:05:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 07:05:23 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 07:05:28 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3e88472df41b6d64a43bb66e5def74c4e222f868fe8eb13015accec0b9812609`  
		Last Modified: Mon, 09 Oct 2017 21:49:29 GMT  
		Size: 29.3 MB (29306532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c537c33b2629cef2e083c79f74e8f68604cdcb77e2aa240795e5f6a5bff74a92`  
		Last Modified: Tue, 10 Oct 2017 07:12:32 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d58a246dc69d3d7c69f0b6a0fce3e472d5d4d89886b4d25241dae28720030066`  
		Last Modified: Tue, 10 Oct 2017 07:12:32 GMT  
		Size: 950.9 KB (950943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720e2d295c0de02f31e02a0ad1ae8a086a747baea40af168074f1ea4207d29a5`  
		Last Modified: Tue, 10 Oct 2017 07:12:34 GMT  
		Size: 6.0 MB (5991079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9416cfcca1ca4273068a9d8268027718b5d93cb5a4afa5b84a88f26970ffdfc`  
		Last Modified: Tue, 10 Oct 2017 07:12:32 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f00d5165f19d3756837bcd60fcb55229db0a1addb8a3429b31dc6d03af5201c`  
		Last Modified: Tue, 10 Oct 2017 07:12:32 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; s390x

```console
$ docker pull redis@sha256:aa0b87ec19d77c3efde0643953e3c918326cf60359d4070342c90fa6e307ddb2
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37438607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c66bd287acecc0b20212d623bf5e2e6da89770ee3216ae88f9d447fe5740fcbe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:6cb76b1e40d19c5c42495dcfac0822e2e2e999e93fbe2274c6b7222bb6659b20 in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:46:49 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Mon, 09 Oct 2017 23:46:50 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:47:10 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 09 Oct 2017 23:47:10 GMT
ENV REDIS_VERSION=3.2.11
# Mon, 09 Oct 2017 23:47:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Mon, 09 Oct 2017 23:47:10 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Mon, 09 Oct 2017 23:47:55 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 23:47:55 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 09 Oct 2017 23:47:55 GMT
VOLUME [/data]
# Mon, 09 Oct 2017 23:47:56 GMT
WORKDIR /data
# Mon, 09 Oct 2017 23:47:56 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Mon, 09 Oct 2017 23:47:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:47:56 GMT
EXPOSE 6379/tcp
# Mon, 09 Oct 2017 23:47:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e5707ed2790f9e4144aedd6b69cce68d5bbd2267ce4f8885c072ee882ab1a8ad`  
		Last Modified: Mon, 09 Oct 2017 21:46:52 GMT  
		Size: 30.3 MB (30294195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1b0aa2f9a0b809864d23aad0244ab4b21c3ce7ebed4ddf0cd2d051a738a385`  
		Last Modified: Mon, 09 Oct 2017 23:48:58 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97156c7e7c15cd65361cca6b90910ade53527af127634758a9b869f8edcf31c3`  
		Last Modified: Mon, 09 Oct 2017 23:48:58 GMT  
		Size: 966.9 KB (966858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e305a8c92f10764c45c57fa60398863379ed99090d6ae804900ae9cdd66a158a`  
		Last Modified: Mon, 09 Oct 2017 23:48:59 GMT  
		Size: 6.2 MB (6174966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccdd3e137ec3984c4cd28f0f2e089728dcef20ae9528b9e4302cfc5aea2e31b`  
		Last Modified: Mon, 09 Oct 2017 23:48:58 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4c03c70119294a3bb932c611637237d84fd1388213e780a41e019e15314129`  
		Last Modified: Mon, 09 Oct 2017 23:48:58 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2`

```console
$ docker pull redis@sha256:b15e3fabba806a6ee7f14774df0c2dc3036f752969bcdac022f0aa96d5cfc954
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:3.2` - linux; amd64

```console
$ docker pull redis@sha256:ccc7dd711bdcfa78378c2a1629e89c4d9531fe0d94e80b3113691209daac545c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36844677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ae3b93617bdb7cc7559c021cd57fec2db465daf94e717b61282406b74493941`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:48:50 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 02:48:50 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:49:22 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 02:49:22 GMT
ENV REDIS_VERSION=3.2.11
# Tue, 10 Oct 2017 02:49:22 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Tue, 10 Oct 2017 02:49:22 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Tue, 10 Oct 2017 02:50:22 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 02:50:22 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 02:50:22 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 02:50:23 GMT
WORKDIR /data
# Tue, 10 Oct 2017 02:50:23 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:50:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:50:23 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 02:50:23 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1846f364e395a92181df2a4fb615848549e90fb27c271bda34c8eb787cf50af`  
		Last Modified: Tue, 10 Oct 2017 02:55:26 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba901efed8cecd066085ffec4b49648fc217a911ec6557efaa4fcc7eca9daba`  
		Last Modified: Tue, 10 Oct 2017 02:55:27 GMT  
		Size: 981.8 KB (981752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28151d657b0516e02ccef6147839f19318fc1f9e050a77a1b7cffb26c67d1ad8`  
		Last Modified: Tue, 10 Oct 2017 02:55:28 GMT  
		Size: 5.7 MB (5747016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd9285bf0722a1a815f722e3df945164247abaaaa79e9718daa9147838c11ba`  
		Last Modified: Tue, 10 Oct 2017 02:55:26 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023eb188840459c2480a9506cabb3de77e1b839e1c094204835c0f52b839ddfe`  
		Last Modified: Tue, 10 Oct 2017 02:55:26 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; arm variant v5

```console
$ docker pull redis@sha256:c53859a9fe5ea9190c9afe88d3c13b62f3dd1b3a544e4ec8ba41c86f6d48b8f5
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35038800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67226108e2e2a13b33271099ae0d6b0f998dcb7cd0649eddaebb994c978633a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:24 GMT
ADD file:b3e61e5275e7047cc330ef997896c9e74467b5134f0cada4325564a122204b61 in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:20:49 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 00:20:49 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:21:38 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 00:21:38 GMT
ENV REDIS_VERSION=3.2.11
# Tue, 10 Oct 2017 00:21:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Tue, 10 Oct 2017 00:21:39 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Tue, 10 Oct 2017 00:22:39 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 00:22:40 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 00:22:40 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 00:22:40 GMT
WORKDIR /data
# Tue, 10 Oct 2017 00:22:41 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:22:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:22:41 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 00:22:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:355c947ce54f583e3c4723632384e762cf27a159cb11b7ff6af3106dc7bf8e99`  
		Last Modified: Mon, 09 Oct 2017 21:47:41 GMT  
		Size: 28.4 MB (28424201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd038f96617a144d92c710168e0f0eb6c5997c6f2dda7ffcd277b4d4b08cecf`  
		Last Modified: Tue, 10 Oct 2017 00:24:15 GMT  
		Size: 2.1 KB (2074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4144ae6f0952a422c232f2b37cfa79916365b05774962b00697f7b4fde08c0f3`  
		Last Modified: Tue, 10 Oct 2017 00:24:15 GMT  
		Size: 971.2 KB (971238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b569b88e4b32096f24eb58e6f63633f6dcd658e827828b066aa9dd96a46dd341`  
		Last Modified: Tue, 10 Oct 2017 00:24:17 GMT  
		Size: 5.6 MB (5640753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd92620ec3f3958d5906528f4747d79daef9d4bf3330869151db42bf29e35bb5`  
		Last Modified: Tue, 10 Oct 2017 00:24:15 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9c935fcbd461da22cf0a2f658d46b8d1330df5e3c2fffea3d98ca96667c0ed2`  
		Last Modified: Tue, 10 Oct 2017 00:24:15 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; arm variant v7

```console
$ docker pull redis@sha256:bcf1592db21102f4573d931cab0cde20848d0b276fbddebb83d62e6a450aab62
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 MB (32715154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0decda02f937f7d9f041c9ecc5b59d99e6343097b13aa14d942a10753f010a8f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:0cd8ed314febdbf680645d20f346d9bac16fad5654c0b0d6ce2dec7c27c17b9a in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:11:22 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 00:11:22 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:12:25 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 00:12:25 GMT
ENV REDIS_VERSION=3.2.11
# Tue, 10 Oct 2017 00:12:25 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Tue, 10 Oct 2017 00:12:26 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Tue, 10 Oct 2017 00:13:33 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 00:13:34 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 00:13:34 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 00:13:34 GMT
WORKDIR /data
# Tue, 10 Oct 2017 00:13:35 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:13:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:13:36 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 00:13:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:02620033936d6cf3514a813f366025a14370f5dfe654e89eaca3a56b357e88c2`  
		Last Modified: Mon, 09 Oct 2017 21:49:15 GMT  
		Size: 26.3 MB (26280982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1b8976e9d698895ee6bac5731b99ea1c740a234bb1d7cf23d8f74334b74a63`  
		Last Modified: Tue, 10 Oct 2017 00:15:36 GMT  
		Size: 2.1 KB (2073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0064aaefd3fc879be9a4010ba88375a62b4f4f1e6a483ab539f77ab45aee083e`  
		Last Modified: Tue, 10 Oct 2017 00:15:36 GMT  
		Size: 956.1 KB (956111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6783ffe3f9370b2d93b7341be9a0698e4c94354ec89d28d28ff69d4f13d88a`  
		Last Modified: Tue, 10 Oct 2017 00:15:38 GMT  
		Size: 5.5 MB (5475452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:840a24e85331f8fd529c1e6b25a68f89d05c9ffd7e232e272d3e1b31f99d1fe5`  
		Last Modified: Tue, 10 Oct 2017 00:15:36 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eef559d897b4af1092bb783d635841c22dd068f153cd9abe9d65d8bec624869`  
		Last Modified: Tue, 10 Oct 2017 00:15:36 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:e27c18168097ceff06d91cce6ea9baf22838ce43195be29510b7f7b422422712
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34280627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8161dcffc99a8ce09001767b1bcb63d331b418e7baa8fc9efec94bad2134a29d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:51 GMT
ADD file:75f5768db078e9eee90676141a2c9faa9ce02768b7c9cd6e588bdd5ffc0f65e3 in / 
# Mon, 09 Oct 2017 21:43:51 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:03:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 05:03:21 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 05:04:19 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 05:04:20 GMT
ENV REDIS_VERSION=3.2.11
# Tue, 10 Oct 2017 05:04:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Tue, 10 Oct 2017 05:04:21 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Tue, 10 Oct 2017 05:06:05 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 05:06:07 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 05:06:08 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 05:06:09 GMT
WORKDIR /data
# Tue, 10 Oct 2017 05:06:10 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 05:06:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 05:06:12 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 05:06:13 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f2da27d97c13e9e531eda9577a28eb81b0d9034d7fd7e6575bd92744eed500f6`  
		Last Modified: Mon, 09 Oct 2017 21:53:20 GMT  
		Size: 27.5 MB (27480591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05e1313d9bb5766ff6bdeb2dde2e7f01045ac9c7df071253d3dc226d7cbe691`  
		Last Modified: Tue, 10 Oct 2017 05:08:57 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8c747456b46f024d9fda80792b271a2396f5d11f0adb7def45ec25548f8ab7`  
		Last Modified: Tue, 10 Oct 2017 05:08:57 GMT  
		Size: 948.7 KB (948653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:990a5e10ceee492c27ddbd9ec8ac8a9dafe2d6d4483d8f2cacbc6e37650d3643`  
		Last Modified: Tue, 10 Oct 2017 05:09:01 GMT  
		Size: 5.8 MB (5848792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d84f8bc4abdde3453dae4350a7363aacc728c286455b9bce9a6130b4c48be0d`  
		Last Modified: Tue, 10 Oct 2017 05:08:58 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e40988074fbdcb716eecc185d23e9989fb3e344931a7708aaf081e6c3a0c143`  
		Last Modified: Tue, 10 Oct 2017 05:08:57 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; 386

```console
$ docker pull redis@sha256:6e063633f42e536ca65e51b3b926b40c0e2a672dc00a23bb6bcf01b011b38af4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36453199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cfad35731c1acc9435a79d8a6885656d29f701b3611194013ccee80f71943f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:30 GMT
ADD file:169ab3194fd1b25e06359d6eceb655093f44f0255c799ae8a3fc5bf8ba50fd8d in / 
# Mon, 09 Oct 2017 21:42:31 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:19:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 02:19:22 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:20:12 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 02:20:12 GMT
ENV REDIS_VERSION=3.2.11
# Tue, 10 Oct 2017 02:20:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Tue, 10 Oct 2017 02:20:12 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Tue, 10 Oct 2017 02:21:49 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 02:21:49 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 02:21:50 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 02:21:50 GMT
WORKDIR /data
# Tue, 10 Oct 2017 02:21:50 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:21:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:21:50 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 02:21:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d8b3cf5f6e0f087738d5589b812e12f5b8781935412c95d15f2f77d68657b006`  
		Last Modified: Mon, 09 Oct 2017 21:48:54 GMT  
		Size: 30.3 MB (30264454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c8d2c75f5b453b9d49112d257eb4c2f457c6597151256be7900ade930200dd`  
		Last Modified: Tue, 10 Oct 2017 02:24:19 GMT  
		Size: 2.1 KB (2075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d13873782f4c8b79e0d645f76188d4b6df1e79c97a304a50ec7a9e1f5882dd38`  
		Last Modified: Tue, 10 Oct 2017 02:24:20 GMT  
		Size: 960.8 KB (960803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb12faa5db93b1e0d9a340ec4001413558768442472a2c9e85c9de2d5287577f`  
		Last Modified: Tue, 10 Oct 2017 02:24:21 GMT  
		Size: 5.2 MB (5225367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d81fcda8db20562969aeeab3e6ebe66ecf6433370449c844ecb70bbe72c49f`  
		Last Modified: Tue, 10 Oct 2017 02:24:19 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62aaa2deced9a9c30444410b103a14926e3274b37611fa5428cd8f0938dacc6c`  
		Last Modified: Tue, 10 Oct 2017 02:24:19 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; ppc64le

```console
$ docker pull redis@sha256:ae34e744d3335dab65ebfbe1ccca5614967a844574d84a6d6d5340532cc860a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.3 MB (36251191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08850e9f303ca32c69e28bab7f3533606f50e627f61c55590b27395a54c3aa58`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:16 GMT
ADD file:2116c25fe6275b240bd8d3a4bfe6f707d53b8f7c679a08dc4e82f9351e32073f in / 
# Mon, 09 Oct 2017 21:43:18 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 06:51:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 06:51:43 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 06:56:16 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 06:56:18 GMT
ENV REDIS_VERSION=3.2.11
# Tue, 10 Oct 2017 06:56:21 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Tue, 10 Oct 2017 06:56:25 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Tue, 10 Oct 2017 07:04:51 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 07:05:00 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 07:05:06 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 07:05:10 GMT
WORKDIR /data
# Tue, 10 Oct 2017 07:05:14 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 07:05:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 07:05:23 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 07:05:28 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3e88472df41b6d64a43bb66e5def74c4e222f868fe8eb13015accec0b9812609`  
		Last Modified: Mon, 09 Oct 2017 21:49:29 GMT  
		Size: 29.3 MB (29306532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c537c33b2629cef2e083c79f74e8f68604cdcb77e2aa240795e5f6a5bff74a92`  
		Last Modified: Tue, 10 Oct 2017 07:12:32 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d58a246dc69d3d7c69f0b6a0fce3e472d5d4d89886b4d25241dae28720030066`  
		Last Modified: Tue, 10 Oct 2017 07:12:32 GMT  
		Size: 950.9 KB (950943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720e2d295c0de02f31e02a0ad1ae8a086a747baea40af168074f1ea4207d29a5`  
		Last Modified: Tue, 10 Oct 2017 07:12:34 GMT  
		Size: 6.0 MB (5991079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9416cfcca1ca4273068a9d8268027718b5d93cb5a4afa5b84a88f26970ffdfc`  
		Last Modified: Tue, 10 Oct 2017 07:12:32 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f00d5165f19d3756837bcd60fcb55229db0a1addb8a3429b31dc6d03af5201c`  
		Last Modified: Tue, 10 Oct 2017 07:12:32 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; s390x

```console
$ docker pull redis@sha256:aa0b87ec19d77c3efde0643953e3c918326cf60359d4070342c90fa6e307ddb2
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37438607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c66bd287acecc0b20212d623bf5e2e6da89770ee3216ae88f9d447fe5740fcbe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:6cb76b1e40d19c5c42495dcfac0822e2e2e999e93fbe2274c6b7222bb6659b20 in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:46:49 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Mon, 09 Oct 2017 23:46:50 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:47:10 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 09 Oct 2017 23:47:10 GMT
ENV REDIS_VERSION=3.2.11
# Mon, 09 Oct 2017 23:47:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Mon, 09 Oct 2017 23:47:10 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Mon, 09 Oct 2017 23:47:55 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 23:47:55 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 09 Oct 2017 23:47:55 GMT
VOLUME [/data]
# Mon, 09 Oct 2017 23:47:56 GMT
WORKDIR /data
# Mon, 09 Oct 2017 23:47:56 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Mon, 09 Oct 2017 23:47:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:47:56 GMT
EXPOSE 6379/tcp
# Mon, 09 Oct 2017 23:47:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e5707ed2790f9e4144aedd6b69cce68d5bbd2267ce4f8885c072ee882ab1a8ad`  
		Last Modified: Mon, 09 Oct 2017 21:46:52 GMT  
		Size: 30.3 MB (30294195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1b0aa2f9a0b809864d23aad0244ab4b21c3ce7ebed4ddf0cd2d051a738a385`  
		Last Modified: Mon, 09 Oct 2017 23:48:58 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97156c7e7c15cd65361cca6b90910ade53527af127634758a9b869f8edcf31c3`  
		Last Modified: Mon, 09 Oct 2017 23:48:58 GMT  
		Size: 966.9 KB (966858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e305a8c92f10764c45c57fa60398863379ed99090d6ae804900ae9cdd66a158a`  
		Last Modified: Mon, 09 Oct 2017 23:48:59 GMT  
		Size: 6.2 MB (6174966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccdd3e137ec3984c4cd28f0f2e089728dcef20ae9528b9e4302cfc5aea2e31b`  
		Last Modified: Mon, 09 Oct 2017 23:48:58 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4c03c70119294a3bb932c611637237d84fd1388213e780a41e019e15314129`  
		Last Modified: Mon, 09 Oct 2017 23:48:58 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.11`

```console
$ docker pull redis@sha256:b15e3fabba806a6ee7f14774df0c2dc3036f752969bcdac022f0aa96d5cfc954
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:3.2.11` - linux; amd64

```console
$ docker pull redis@sha256:ccc7dd711bdcfa78378c2a1629e89c4d9531fe0d94e80b3113691209daac545c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36844677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ae3b93617bdb7cc7559c021cd57fec2db465daf94e717b61282406b74493941`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:48:50 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 02:48:50 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:49:22 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 02:49:22 GMT
ENV REDIS_VERSION=3.2.11
# Tue, 10 Oct 2017 02:49:22 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Tue, 10 Oct 2017 02:49:22 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Tue, 10 Oct 2017 02:50:22 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 02:50:22 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 02:50:22 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 02:50:23 GMT
WORKDIR /data
# Tue, 10 Oct 2017 02:50:23 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:50:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:50:23 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 02:50:23 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1846f364e395a92181df2a4fb615848549e90fb27c271bda34c8eb787cf50af`  
		Last Modified: Tue, 10 Oct 2017 02:55:26 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba901efed8cecd066085ffec4b49648fc217a911ec6557efaa4fcc7eca9daba`  
		Last Modified: Tue, 10 Oct 2017 02:55:27 GMT  
		Size: 981.8 KB (981752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28151d657b0516e02ccef6147839f19318fc1f9e050a77a1b7cffb26c67d1ad8`  
		Last Modified: Tue, 10 Oct 2017 02:55:28 GMT  
		Size: 5.7 MB (5747016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd9285bf0722a1a815f722e3df945164247abaaaa79e9718daa9147838c11ba`  
		Last Modified: Tue, 10 Oct 2017 02:55:26 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023eb188840459c2480a9506cabb3de77e1b839e1c094204835c0f52b839ddfe`  
		Last Modified: Tue, 10 Oct 2017 02:55:26 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11` - linux; arm variant v5

```console
$ docker pull redis@sha256:c53859a9fe5ea9190c9afe88d3c13b62f3dd1b3a544e4ec8ba41c86f6d48b8f5
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35038800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67226108e2e2a13b33271099ae0d6b0f998dcb7cd0649eddaebb994c978633a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:24 GMT
ADD file:b3e61e5275e7047cc330ef997896c9e74467b5134f0cada4325564a122204b61 in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:20:49 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 00:20:49 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:21:38 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 00:21:38 GMT
ENV REDIS_VERSION=3.2.11
# Tue, 10 Oct 2017 00:21:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Tue, 10 Oct 2017 00:21:39 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Tue, 10 Oct 2017 00:22:39 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 00:22:40 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 00:22:40 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 00:22:40 GMT
WORKDIR /data
# Tue, 10 Oct 2017 00:22:41 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:22:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:22:41 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 00:22:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:355c947ce54f583e3c4723632384e762cf27a159cb11b7ff6af3106dc7bf8e99`  
		Last Modified: Mon, 09 Oct 2017 21:47:41 GMT  
		Size: 28.4 MB (28424201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd038f96617a144d92c710168e0f0eb6c5997c6f2dda7ffcd277b4d4b08cecf`  
		Last Modified: Tue, 10 Oct 2017 00:24:15 GMT  
		Size: 2.1 KB (2074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4144ae6f0952a422c232f2b37cfa79916365b05774962b00697f7b4fde08c0f3`  
		Last Modified: Tue, 10 Oct 2017 00:24:15 GMT  
		Size: 971.2 KB (971238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b569b88e4b32096f24eb58e6f63633f6dcd658e827828b066aa9dd96a46dd341`  
		Last Modified: Tue, 10 Oct 2017 00:24:17 GMT  
		Size: 5.6 MB (5640753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd92620ec3f3958d5906528f4747d79daef9d4bf3330869151db42bf29e35bb5`  
		Last Modified: Tue, 10 Oct 2017 00:24:15 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9c935fcbd461da22cf0a2f658d46b8d1330df5e3c2fffea3d98ca96667c0ed2`  
		Last Modified: Tue, 10 Oct 2017 00:24:15 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11` - linux; arm variant v7

```console
$ docker pull redis@sha256:bcf1592db21102f4573d931cab0cde20848d0b276fbddebb83d62e6a450aab62
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 MB (32715154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0decda02f937f7d9f041c9ecc5b59d99e6343097b13aa14d942a10753f010a8f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:0cd8ed314febdbf680645d20f346d9bac16fad5654c0b0d6ce2dec7c27c17b9a in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:11:22 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 00:11:22 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:12:25 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 00:12:25 GMT
ENV REDIS_VERSION=3.2.11
# Tue, 10 Oct 2017 00:12:25 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Tue, 10 Oct 2017 00:12:26 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Tue, 10 Oct 2017 00:13:33 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 00:13:34 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 00:13:34 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 00:13:34 GMT
WORKDIR /data
# Tue, 10 Oct 2017 00:13:35 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:13:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:13:36 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 00:13:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:02620033936d6cf3514a813f366025a14370f5dfe654e89eaca3a56b357e88c2`  
		Last Modified: Mon, 09 Oct 2017 21:49:15 GMT  
		Size: 26.3 MB (26280982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1b8976e9d698895ee6bac5731b99ea1c740a234bb1d7cf23d8f74334b74a63`  
		Last Modified: Tue, 10 Oct 2017 00:15:36 GMT  
		Size: 2.1 KB (2073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0064aaefd3fc879be9a4010ba88375a62b4f4f1e6a483ab539f77ab45aee083e`  
		Last Modified: Tue, 10 Oct 2017 00:15:36 GMT  
		Size: 956.1 KB (956111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6783ffe3f9370b2d93b7341be9a0698e4c94354ec89d28d28ff69d4f13d88a`  
		Last Modified: Tue, 10 Oct 2017 00:15:38 GMT  
		Size: 5.5 MB (5475452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:840a24e85331f8fd529c1e6b25a68f89d05c9ffd7e232e272d3e1b31f99d1fe5`  
		Last Modified: Tue, 10 Oct 2017 00:15:36 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eef559d897b4af1092bb783d635841c22dd068f153cd9abe9d65d8bec624869`  
		Last Modified: Tue, 10 Oct 2017 00:15:36 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:e27c18168097ceff06d91cce6ea9baf22838ce43195be29510b7f7b422422712
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34280627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8161dcffc99a8ce09001767b1bcb63d331b418e7baa8fc9efec94bad2134a29d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:51 GMT
ADD file:75f5768db078e9eee90676141a2c9faa9ce02768b7c9cd6e588bdd5ffc0f65e3 in / 
# Mon, 09 Oct 2017 21:43:51 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:03:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 05:03:21 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 05:04:19 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 05:04:20 GMT
ENV REDIS_VERSION=3.2.11
# Tue, 10 Oct 2017 05:04:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Tue, 10 Oct 2017 05:04:21 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Tue, 10 Oct 2017 05:06:05 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 05:06:07 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 05:06:08 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 05:06:09 GMT
WORKDIR /data
# Tue, 10 Oct 2017 05:06:10 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 05:06:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 05:06:12 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 05:06:13 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f2da27d97c13e9e531eda9577a28eb81b0d9034d7fd7e6575bd92744eed500f6`  
		Last Modified: Mon, 09 Oct 2017 21:53:20 GMT  
		Size: 27.5 MB (27480591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05e1313d9bb5766ff6bdeb2dde2e7f01045ac9c7df071253d3dc226d7cbe691`  
		Last Modified: Tue, 10 Oct 2017 05:08:57 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8c747456b46f024d9fda80792b271a2396f5d11f0adb7def45ec25548f8ab7`  
		Last Modified: Tue, 10 Oct 2017 05:08:57 GMT  
		Size: 948.7 KB (948653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:990a5e10ceee492c27ddbd9ec8ac8a9dafe2d6d4483d8f2cacbc6e37650d3643`  
		Last Modified: Tue, 10 Oct 2017 05:09:01 GMT  
		Size: 5.8 MB (5848792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d84f8bc4abdde3453dae4350a7363aacc728c286455b9bce9a6130b4c48be0d`  
		Last Modified: Tue, 10 Oct 2017 05:08:58 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e40988074fbdcb716eecc185d23e9989fb3e344931a7708aaf081e6c3a0c143`  
		Last Modified: Tue, 10 Oct 2017 05:08:57 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11` - linux; 386

```console
$ docker pull redis@sha256:6e063633f42e536ca65e51b3b926b40c0e2a672dc00a23bb6bcf01b011b38af4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36453199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cfad35731c1acc9435a79d8a6885656d29f701b3611194013ccee80f71943f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:30 GMT
ADD file:169ab3194fd1b25e06359d6eceb655093f44f0255c799ae8a3fc5bf8ba50fd8d in / 
# Mon, 09 Oct 2017 21:42:31 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:19:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 02:19:22 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:20:12 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 02:20:12 GMT
ENV REDIS_VERSION=3.2.11
# Tue, 10 Oct 2017 02:20:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Tue, 10 Oct 2017 02:20:12 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Tue, 10 Oct 2017 02:21:49 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 02:21:49 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 02:21:50 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 02:21:50 GMT
WORKDIR /data
# Tue, 10 Oct 2017 02:21:50 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:21:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:21:50 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 02:21:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d8b3cf5f6e0f087738d5589b812e12f5b8781935412c95d15f2f77d68657b006`  
		Last Modified: Mon, 09 Oct 2017 21:48:54 GMT  
		Size: 30.3 MB (30264454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c8d2c75f5b453b9d49112d257eb4c2f457c6597151256be7900ade930200dd`  
		Last Modified: Tue, 10 Oct 2017 02:24:19 GMT  
		Size: 2.1 KB (2075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d13873782f4c8b79e0d645f76188d4b6df1e79c97a304a50ec7a9e1f5882dd38`  
		Last Modified: Tue, 10 Oct 2017 02:24:20 GMT  
		Size: 960.8 KB (960803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb12faa5db93b1e0d9a340ec4001413558768442472a2c9e85c9de2d5287577f`  
		Last Modified: Tue, 10 Oct 2017 02:24:21 GMT  
		Size: 5.2 MB (5225367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d81fcda8db20562969aeeab3e6ebe66ecf6433370449c844ecb70bbe72c49f`  
		Last Modified: Tue, 10 Oct 2017 02:24:19 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62aaa2deced9a9c30444410b103a14926e3274b37611fa5428cd8f0938dacc6c`  
		Last Modified: Tue, 10 Oct 2017 02:24:19 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11` - linux; ppc64le

```console
$ docker pull redis@sha256:ae34e744d3335dab65ebfbe1ccca5614967a844574d84a6d6d5340532cc860a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.3 MB (36251191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08850e9f303ca32c69e28bab7f3533606f50e627f61c55590b27395a54c3aa58`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:16 GMT
ADD file:2116c25fe6275b240bd8d3a4bfe6f707d53b8f7c679a08dc4e82f9351e32073f in / 
# Mon, 09 Oct 2017 21:43:18 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 06:51:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 06:51:43 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 06:56:16 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 06:56:18 GMT
ENV REDIS_VERSION=3.2.11
# Tue, 10 Oct 2017 06:56:21 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Tue, 10 Oct 2017 06:56:25 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Tue, 10 Oct 2017 07:04:51 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 07:05:00 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 07:05:06 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 07:05:10 GMT
WORKDIR /data
# Tue, 10 Oct 2017 07:05:14 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 07:05:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 07:05:23 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 07:05:28 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3e88472df41b6d64a43bb66e5def74c4e222f868fe8eb13015accec0b9812609`  
		Last Modified: Mon, 09 Oct 2017 21:49:29 GMT  
		Size: 29.3 MB (29306532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c537c33b2629cef2e083c79f74e8f68604cdcb77e2aa240795e5f6a5bff74a92`  
		Last Modified: Tue, 10 Oct 2017 07:12:32 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d58a246dc69d3d7c69f0b6a0fce3e472d5d4d89886b4d25241dae28720030066`  
		Last Modified: Tue, 10 Oct 2017 07:12:32 GMT  
		Size: 950.9 KB (950943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720e2d295c0de02f31e02a0ad1ae8a086a747baea40af168074f1ea4207d29a5`  
		Last Modified: Tue, 10 Oct 2017 07:12:34 GMT  
		Size: 6.0 MB (5991079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9416cfcca1ca4273068a9d8268027718b5d93cb5a4afa5b84a88f26970ffdfc`  
		Last Modified: Tue, 10 Oct 2017 07:12:32 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f00d5165f19d3756837bcd60fcb55229db0a1addb8a3429b31dc6d03af5201c`  
		Last Modified: Tue, 10 Oct 2017 07:12:32 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11` - linux; s390x

```console
$ docker pull redis@sha256:aa0b87ec19d77c3efde0643953e3c918326cf60359d4070342c90fa6e307ddb2
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37438607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c66bd287acecc0b20212d623bf5e2e6da89770ee3216ae88f9d447fe5740fcbe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:6cb76b1e40d19c5c42495dcfac0822e2e2e999e93fbe2274c6b7222bb6659b20 in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:46:49 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Mon, 09 Oct 2017 23:46:50 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:47:10 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 09 Oct 2017 23:47:10 GMT
ENV REDIS_VERSION=3.2.11
# Mon, 09 Oct 2017 23:47:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Mon, 09 Oct 2017 23:47:10 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Mon, 09 Oct 2017 23:47:55 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 23:47:55 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 09 Oct 2017 23:47:55 GMT
VOLUME [/data]
# Mon, 09 Oct 2017 23:47:56 GMT
WORKDIR /data
# Mon, 09 Oct 2017 23:47:56 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Mon, 09 Oct 2017 23:47:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:47:56 GMT
EXPOSE 6379/tcp
# Mon, 09 Oct 2017 23:47:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e5707ed2790f9e4144aedd6b69cce68d5bbd2267ce4f8885c072ee882ab1a8ad`  
		Last Modified: Mon, 09 Oct 2017 21:46:52 GMT  
		Size: 30.3 MB (30294195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1b0aa2f9a0b809864d23aad0244ab4b21c3ce7ebed4ddf0cd2d051a738a385`  
		Last Modified: Mon, 09 Oct 2017 23:48:58 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97156c7e7c15cd65361cca6b90910ade53527af127634758a9b869f8edcf31c3`  
		Last Modified: Mon, 09 Oct 2017 23:48:58 GMT  
		Size: 966.9 KB (966858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e305a8c92f10764c45c57fa60398863379ed99090d6ae804900ae9cdd66a158a`  
		Last Modified: Mon, 09 Oct 2017 23:48:59 GMT  
		Size: 6.2 MB (6174966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccdd3e137ec3984c4cd28f0f2e089728dcef20ae9528b9e4302cfc5aea2e31b`  
		Last Modified: Mon, 09 Oct 2017 23:48:58 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4c03c70119294a3bb932c611637237d84fd1388213e780a41e019e15314129`  
		Last Modified: Mon, 09 Oct 2017 23:48:58 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.11-32bit`

```console
$ docker pull redis@sha256:1cb878b41a28299ac61ef366841f55ed855d0a2f5a2fbe19f6cbe624937d9748
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3.2.11-32bit` - linux; amd64

```console
$ docker pull redis@sha256:4bbb3f75f820d6c09982ebb28bf714e35a0175cfcb0d97351ae2d760117e5669
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 MB (40706772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47fab11e7eccaa7a470a721f14aafb3a9f12c434d2a2c4dd572f5552bf0ef4ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:48:50 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 02:48:50 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:49:22 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 02:49:22 GMT
ENV REDIS_VERSION=3.2.11
# Tue, 10 Oct 2017 02:49:22 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Tue, 10 Oct 2017 02:49:22 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Tue, 10 Oct 2017 02:50:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:51:59 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 02:52:00 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 02:52:00 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 02:52:00 GMT
WORKDIR /data
# Tue, 10 Oct 2017 02:52:01 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:52:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:52:01 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 02:52:01 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1846f364e395a92181df2a4fb615848549e90fb27c271bda34c8eb787cf50af`  
		Last Modified: Tue, 10 Oct 2017 02:55:26 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba901efed8cecd066085ffec4b49648fc217a911ec6557efaa4fcc7eca9daba`  
		Last Modified: Tue, 10 Oct 2017 02:55:27 GMT  
		Size: 981.8 KB (981752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be6d2f460e022253d92256ecc130d8a1182df8be6b547e6b1243d1141b482f0`  
		Last Modified: Tue, 10 Oct 2017 02:56:02 GMT  
		Size: 4.4 MB (4378587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9c5a798aeba7cb01a07c441bf5e3d9f6d9d00de850a05b0dc672ea338ba4dec`  
		Last Modified: Tue, 10 Oct 2017 02:56:02 GMT  
		Size: 5.2 MB (5230520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e4aaecbdd1e2a242c87947a42a4e6317e0e58fae03d64c39a3d189a98068b6`  
		Last Modified: Tue, 10 Oct 2017 02:56:01 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b268643253f910cf20d582ac5104fe36ed887fe7ffa08427ba6a06fd1d99214d`  
		Last Modified: Tue, 10 Oct 2017 02:56:01 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.11-alpine`

```console
$ docker pull redis@sha256:6b364fbaf6401dea92c1569fd4b5a06da100c1c239152225cd6c4fde18101b70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3.2.11-alpine` - linux; amd64

```console
$ docker pull redis@sha256:bafeec8c618059ded7690460da29fd84b2ced204cff411f646332951060dc227
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7884670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd31eccebe3134eb0d822534c5827828be91e1d66d636b8331a69a272a67699f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 03:35:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 19 Sep 2017 03:35:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 21 Sep 2017 20:54:29 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 21 Sep 2017 20:54:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 21 Sep 2017 20:54:29 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 21 Sep 2017 20:54:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Thu, 21 Sep 2017 20:54:57 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Sep 2017 20:54:57 GMT
VOLUME [/data]
# Thu, 21 Sep 2017 20:54:57 GMT
WORKDIR /data
# Thu, 21 Sep 2017 20:54:58 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Thu, 21 Sep 2017 20:55:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Sep 2017 20:55:01 GMT
EXPOSE 6379/tcp
# Thu, 21 Sep 2017 20:55:01 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66139f3b4e091d3312482f1b690ec58f6544e2efa007d77c4ced415e39f7d0`  
		Last Modified: Tue, 19 Sep 2017 03:39:35 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111233a1622e0a347be99cd408d4632df84fffbded819d12109bb280c35af4e2`  
		Last Modified: Tue, 19 Sep 2017 03:39:35 GMT  
		Size: 8.2 KB (8216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef000dadabba363bd9546e8e47eec27f28f1ed15366b3284a1ffb0884650831`  
		Last Modified: Thu, 21 Sep 2017 21:02:15 GMT  
		Size: 5.9 MB (5884302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83a05e368bb2b44d2985d1a07aad66cb3e00e0f344a63725b83c765b91bf756`  
		Last Modified: Thu, 21 Sep 2017 21:02:14 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc67f0022f294a72bd42e675a862ba5ab9e16c3b2afe8937b9b0680de8f99af`  
		Last Modified: Thu, 21 Sep 2017 21:02:14 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-32bit`

```console
$ docker pull redis@sha256:1cb878b41a28299ac61ef366841f55ed855d0a2f5a2fbe19f6cbe624937d9748
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3.2-32bit` - linux; amd64

```console
$ docker pull redis@sha256:4bbb3f75f820d6c09982ebb28bf714e35a0175cfcb0d97351ae2d760117e5669
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 MB (40706772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47fab11e7eccaa7a470a721f14aafb3a9f12c434d2a2c4dd572f5552bf0ef4ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:48:50 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 02:48:50 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:49:22 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 02:49:22 GMT
ENV REDIS_VERSION=3.2.11
# Tue, 10 Oct 2017 02:49:22 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Tue, 10 Oct 2017 02:49:22 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Tue, 10 Oct 2017 02:50:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:51:59 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 02:52:00 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 02:52:00 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 02:52:00 GMT
WORKDIR /data
# Tue, 10 Oct 2017 02:52:01 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:52:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:52:01 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 02:52:01 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1846f364e395a92181df2a4fb615848549e90fb27c271bda34c8eb787cf50af`  
		Last Modified: Tue, 10 Oct 2017 02:55:26 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba901efed8cecd066085ffec4b49648fc217a911ec6557efaa4fcc7eca9daba`  
		Last Modified: Tue, 10 Oct 2017 02:55:27 GMT  
		Size: 981.8 KB (981752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be6d2f460e022253d92256ecc130d8a1182df8be6b547e6b1243d1141b482f0`  
		Last Modified: Tue, 10 Oct 2017 02:56:02 GMT  
		Size: 4.4 MB (4378587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9c5a798aeba7cb01a07c441bf5e3d9f6d9d00de850a05b0dc672ea338ba4dec`  
		Last Modified: Tue, 10 Oct 2017 02:56:02 GMT  
		Size: 5.2 MB (5230520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e4aaecbdd1e2a242c87947a42a4e6317e0e58fae03d64c39a3d189a98068b6`  
		Last Modified: Tue, 10 Oct 2017 02:56:01 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b268643253f910cf20d582ac5104fe36ed887fe7ffa08427ba6a06fd1d99214d`  
		Last Modified: Tue, 10 Oct 2017 02:56:01 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-alpine`

```console
$ docker pull redis@sha256:6b364fbaf6401dea92c1569fd4b5a06da100c1c239152225cd6c4fde18101b70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3.2-alpine` - linux; amd64

```console
$ docker pull redis@sha256:bafeec8c618059ded7690460da29fd84b2ced204cff411f646332951060dc227
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7884670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd31eccebe3134eb0d822534c5827828be91e1d66d636b8331a69a272a67699f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 03:35:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 19 Sep 2017 03:35:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 21 Sep 2017 20:54:29 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 21 Sep 2017 20:54:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 21 Sep 2017 20:54:29 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 21 Sep 2017 20:54:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Thu, 21 Sep 2017 20:54:57 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Sep 2017 20:54:57 GMT
VOLUME [/data]
# Thu, 21 Sep 2017 20:54:57 GMT
WORKDIR /data
# Thu, 21 Sep 2017 20:54:58 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Thu, 21 Sep 2017 20:55:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Sep 2017 20:55:01 GMT
EXPOSE 6379/tcp
# Thu, 21 Sep 2017 20:55:01 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66139f3b4e091d3312482f1b690ec58f6544e2efa007d77c4ced415e39f7d0`  
		Last Modified: Tue, 19 Sep 2017 03:39:35 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111233a1622e0a347be99cd408d4632df84fffbded819d12109bb280c35af4e2`  
		Last Modified: Tue, 19 Sep 2017 03:39:35 GMT  
		Size: 8.2 KB (8216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef000dadabba363bd9546e8e47eec27f28f1ed15366b3284a1ffb0884650831`  
		Last Modified: Thu, 21 Sep 2017 21:02:15 GMT  
		Size: 5.9 MB (5884302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83a05e368bb2b44d2985d1a07aad66cb3e00e0f344a63725b83c765b91bf756`  
		Last Modified: Thu, 21 Sep 2017 21:02:14 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc67f0022f294a72bd42e675a862ba5ab9e16c3b2afe8937b9b0680de8f99af`  
		Last Modified: Thu, 21 Sep 2017 21:02:14 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:32bit`

```console
$ docker pull redis@sha256:4eaba49a17b0b2af483de8b7326a8a4df387529cce0cc03a05bf9422fa0f1a5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

```console
$ docker pull redis@sha256:98811500ee57c4fd6f330119822feace81630d5549a007504e20647e4451e8e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (42967534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aedd67f0abbe9ae287c4f08f0ca93197f3b81b9f880f1d7221aa2aa906de0e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:48:50 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 02:48:50 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:49:22 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 02:52:10 GMT
ENV REDIS_VERSION=4.0.2
# Tue, 10 Oct 2017 02:52:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Tue, 10 Oct 2017 02:52:10 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Tue, 10 Oct 2017 02:53:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:54:53 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 02:54:58 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 02:54:58 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 02:54:59 GMT
WORKDIR /data
# Tue, 10 Oct 2017 02:54:59 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:54:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:54:59 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 02:55:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1846f364e395a92181df2a4fb615848549e90fb27c271bda34c8eb787cf50af`  
		Last Modified: Tue, 10 Oct 2017 02:55:26 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba901efed8cecd066085ffec4b49648fc217a911ec6557efaa4fcc7eca9daba`  
		Last Modified: Tue, 10 Oct 2017 02:55:27 GMT  
		Size: 981.8 KB (981752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4fd0575e218765ccd10c14985ede0b92bd3f641d8d821942993badfe2ce242f`  
		Last Modified: Tue, 10 Oct 2017 02:57:02 GMT  
		Size: 4.4 MB (4378585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e0dd350911894d2f2a9f3519421796037ab268740735b1cfe037392e481fbee`  
		Last Modified: Tue, 10 Oct 2017 02:57:02 GMT  
		Size: 7.5 MB (7491284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c00e113616b7cb376d19a22c9507ac25afc5f18801b66471813224fccfe6ceb`  
		Last Modified: Tue, 10 Oct 2017 02:57:01 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0662fb6443d7586751560b1aec53ee8a115b0189599983bdfbbd0a01dc80496d`  
		Last Modified: Tue, 10 Oct 2017 02:57:01 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-32bit`

```console
$ docker pull redis@sha256:1cb878b41a28299ac61ef366841f55ed855d0a2f5a2fbe19f6cbe624937d9748
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3-32bit` - linux; amd64

```console
$ docker pull redis@sha256:4bbb3f75f820d6c09982ebb28bf714e35a0175cfcb0d97351ae2d760117e5669
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 MB (40706772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47fab11e7eccaa7a470a721f14aafb3a9f12c434d2a2c4dd572f5552bf0ef4ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:48:50 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 02:48:50 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:49:22 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 02:49:22 GMT
ENV REDIS_VERSION=3.2.11
# Tue, 10 Oct 2017 02:49:22 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Tue, 10 Oct 2017 02:49:22 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Tue, 10 Oct 2017 02:50:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:51:59 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 02:52:00 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 02:52:00 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 02:52:00 GMT
WORKDIR /data
# Tue, 10 Oct 2017 02:52:01 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:52:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:52:01 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 02:52:01 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1846f364e395a92181df2a4fb615848549e90fb27c271bda34c8eb787cf50af`  
		Last Modified: Tue, 10 Oct 2017 02:55:26 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba901efed8cecd066085ffec4b49648fc217a911ec6557efaa4fcc7eca9daba`  
		Last Modified: Tue, 10 Oct 2017 02:55:27 GMT  
		Size: 981.8 KB (981752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be6d2f460e022253d92256ecc130d8a1182df8be6b547e6b1243d1141b482f0`  
		Last Modified: Tue, 10 Oct 2017 02:56:02 GMT  
		Size: 4.4 MB (4378587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9c5a798aeba7cb01a07c441bf5e3d9f6d9d00de850a05b0dc672ea338ba4dec`  
		Last Modified: Tue, 10 Oct 2017 02:56:02 GMT  
		Size: 5.2 MB (5230520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e4aaecbdd1e2a242c87947a42a4e6317e0e58fae03d64c39a3d189a98068b6`  
		Last Modified: Tue, 10 Oct 2017 02:56:01 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b268643253f910cf20d582ac5104fe36ed887fe7ffa08427ba6a06fd1d99214d`  
		Last Modified: Tue, 10 Oct 2017 02:56:01 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-alpine`

```console
$ docker pull redis@sha256:6b364fbaf6401dea92c1569fd4b5a06da100c1c239152225cd6c4fde18101b70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3-alpine` - linux; amd64

```console
$ docker pull redis@sha256:bafeec8c618059ded7690460da29fd84b2ced204cff411f646332951060dc227
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7884670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd31eccebe3134eb0d822534c5827828be91e1d66d636b8331a69a272a67699f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 03:35:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 19 Sep 2017 03:35:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 21 Sep 2017 20:54:29 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 21 Sep 2017 20:54:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 21 Sep 2017 20:54:29 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 21 Sep 2017 20:54:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Thu, 21 Sep 2017 20:54:57 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Sep 2017 20:54:57 GMT
VOLUME [/data]
# Thu, 21 Sep 2017 20:54:57 GMT
WORKDIR /data
# Thu, 21 Sep 2017 20:54:58 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Thu, 21 Sep 2017 20:55:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Sep 2017 20:55:01 GMT
EXPOSE 6379/tcp
# Thu, 21 Sep 2017 20:55:01 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66139f3b4e091d3312482f1b690ec58f6544e2efa007d77c4ced415e39f7d0`  
		Last Modified: Tue, 19 Sep 2017 03:39:35 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111233a1622e0a347be99cd408d4632df84fffbded819d12109bb280c35af4e2`  
		Last Modified: Tue, 19 Sep 2017 03:39:35 GMT  
		Size: 8.2 KB (8216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef000dadabba363bd9546e8e47eec27f28f1ed15366b3284a1ffb0884650831`  
		Last Modified: Thu, 21 Sep 2017 21:02:15 GMT  
		Size: 5.9 MB (5884302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83a05e368bb2b44d2985d1a07aad66cb3e00e0f344a63725b83c765b91bf756`  
		Last Modified: Thu, 21 Sep 2017 21:02:14 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc67f0022f294a72bd42e675a862ba5ab9e16c3b2afe8937b9b0680de8f99af`  
		Last Modified: Thu, 21 Sep 2017 21:02:14 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4`

```console
$ docker pull redis@sha256:07e7b6cb753f8d06a894e22af30f94e04844461ab6cb002c688841873e5e5116
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:4` - linux; amd64

```console
$ docker pull redis@sha256:395f1c294afdc9e85f02904258f010b0a5dda4bfebc49bac90a8b4239448d7f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39372472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fb7b6c8c0d0713640c99dc75f7f39849cb9fc5619c1ba4ff6da286e6af759ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:48:50 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 02:48:50 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:49:22 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 02:52:10 GMT
ENV REDIS_VERSION=4.0.2
# Tue, 10 Oct 2017 02:52:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Tue, 10 Oct 2017 02:52:10 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Tue, 10 Oct 2017 02:53:17 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 02:53:18 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 02:53:18 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 02:53:18 GMT
WORKDIR /data
# Tue, 10 Oct 2017 02:53:18 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:53:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:53:19 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 02:53:19 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1846f364e395a92181df2a4fb615848549e90fb27c271bda34c8eb787cf50af`  
		Last Modified: Tue, 10 Oct 2017 02:55:26 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba901efed8cecd066085ffec4b49648fc217a911ec6557efaa4fcc7eca9daba`  
		Last Modified: Tue, 10 Oct 2017 02:55:27 GMT  
		Size: 981.8 KB (981752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b54b43b9d04990ddb25cd7c91b1c51f2d8016adb5ecfe392a419d8772fa333da`  
		Last Modified: Tue, 10 Oct 2017 02:56:29 GMT  
		Size: 8.3 MB (8274812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5b9e2d5e9c688b086ceac72340c20a571e633eccf624756bc66ba51f05ac832`  
		Last Modified: Tue, 10 Oct 2017 02:56:28 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7058d282fa00d5c102215df75410506e29eceec09933c0abdf9974e425f7de3d`  
		Last Modified: Tue, 10 Oct 2017 02:56:27 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm variant v5

```console
$ docker pull redis@sha256:c55b2f3487a470758a81a3ab1e9f8e5b5db9d6a078afaa36f2e6f4b42dc49b67
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37569906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9648e1913a2554ec5512b01e59dc9b4ec5ff6f1f4873cfd19a24ea324df92504`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:24 GMT
ADD file:b3e61e5275e7047cc330ef997896c9e74467b5134f0cada4325564a122204b61 in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:20:49 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 00:20:49 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:21:38 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 00:22:52 GMT
ENV REDIS_VERSION=4.0.2
# Tue, 10 Oct 2017 00:22:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Tue, 10 Oct 2017 00:22:52 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Tue, 10 Oct 2017 00:23:58 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 00:23:59 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 00:23:59 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 00:23:59 GMT
WORKDIR /data
# Tue, 10 Oct 2017 00:24:00 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:24:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:24:00 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 00:24:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:355c947ce54f583e3c4723632384e762cf27a159cb11b7ff6af3106dc7bf8e99`  
		Last Modified: Mon, 09 Oct 2017 21:47:41 GMT  
		Size: 28.4 MB (28424201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd038f96617a144d92c710168e0f0eb6c5997c6f2dda7ffcd277b4d4b08cecf`  
		Last Modified: Tue, 10 Oct 2017 00:24:15 GMT  
		Size: 2.1 KB (2074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4144ae6f0952a422c232f2b37cfa79916365b05774962b00697f7b4fde08c0f3`  
		Last Modified: Tue, 10 Oct 2017 00:24:15 GMT  
		Size: 971.2 KB (971238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:954965c07b8b737b29d341abc3f297e82ca06bb81aa5bf33f897e86c8da587ef`  
		Last Modified: Tue, 10 Oct 2017 00:24:31 GMT  
		Size: 8.2 MB (8171857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d9b6dae93ec06b47a866502b5dae621dfd97dfbc98a6a61a75f9250c9a15c2`  
		Last Modified: Tue, 10 Oct 2017 00:24:28 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f9896cbd7c9aedec282ad07eef84f685175964205d65aba25fd1a28cc903059`  
		Last Modified: Tue, 10 Oct 2017 00:24:28 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm variant v7

```console
$ docker pull redis@sha256:f8d2248d73de3ea641d0b5c71a75276799ef208cc027678dc1acb1c4449ef517
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35157546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5607ab0e55ec0e1a0dcfc29e48b0777c09504e43da3ce87e74f12641c82e592`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:0cd8ed314febdbf680645d20f346d9bac16fad5654c0b0d6ce2dec7c27c17b9a in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:11:22 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 00:11:22 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:12:25 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 00:13:56 GMT
ENV REDIS_VERSION=4.0.2
# Tue, 10 Oct 2017 00:13:56 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Tue, 10 Oct 2017 00:13:57 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Tue, 10 Oct 2017 00:15:14 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 00:15:16 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 00:15:16 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 00:15:16 GMT
WORKDIR /data
# Tue, 10 Oct 2017 00:15:17 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:15:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:15:18 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 00:15:18 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:02620033936d6cf3514a813f366025a14370f5dfe654e89eaca3a56b357e88c2`  
		Last Modified: Mon, 09 Oct 2017 21:49:15 GMT  
		Size: 26.3 MB (26280982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1b8976e9d698895ee6bac5731b99ea1c740a234bb1d7cf23d8f74334b74a63`  
		Last Modified: Tue, 10 Oct 2017 00:15:36 GMT  
		Size: 2.1 KB (2073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0064aaefd3fc879be9a4010ba88375a62b4f4f1e6a483ab539f77ab45aee083e`  
		Last Modified: Tue, 10 Oct 2017 00:15:36 GMT  
		Size: 956.1 KB (956111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f03f7e23866a09e5fdc0aba355bae50c5092a55e04d5c9d96d75622ab3e3ccc`  
		Last Modified: Tue, 10 Oct 2017 00:15:59 GMT  
		Size: 7.9 MB (7917843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d2acb4efd4392cc211ec36ff237a809e4499b22d8d56e00048e804d7cb81c6c`  
		Last Modified: Tue, 10 Oct 2017 00:15:57 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a93ff992ef2ce8ab18c292fd016296238b6bc018969f44b1951ae121f2daf56`  
		Last Modified: Tue, 10 Oct 2017 00:15:57 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:7383ddd2cb24bb790cc892b329c706d510bcf0069182d1db98ec1bacbc5c1205
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36847654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c11a0107cbceb7f0552586d85a86fa02f83f241932b0298c4eee6cf00a38212b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:51 GMT
ADD file:75f5768db078e9eee90676141a2c9faa9ce02768b7c9cd6e588bdd5ffc0f65e3 in / 
# Mon, 09 Oct 2017 21:43:51 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:03:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 05:03:21 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 05:04:19 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 05:06:27 GMT
ENV REDIS_VERSION=4.0.2
# Tue, 10 Oct 2017 05:06:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Tue, 10 Oct 2017 05:06:29 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Tue, 10 Oct 2017 05:08:24 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 05:08:26 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 05:08:27 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 05:08:27 GMT
WORKDIR /data
# Tue, 10 Oct 2017 05:08:28 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 05:08:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 05:08:30 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 05:08:31 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f2da27d97c13e9e531eda9577a28eb81b0d9034d7fd7e6575bd92744eed500f6`  
		Last Modified: Mon, 09 Oct 2017 21:53:20 GMT  
		Size: 27.5 MB (27480591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05e1313d9bb5766ff6bdeb2dde2e7f01045ac9c7df071253d3dc226d7cbe691`  
		Last Modified: Tue, 10 Oct 2017 05:08:57 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8c747456b46f024d9fda80792b271a2396f5d11f0adb7def45ec25548f8ab7`  
		Last Modified: Tue, 10 Oct 2017 05:08:57 GMT  
		Size: 948.7 KB (948653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf01e6edbad383372713f73ddfbd5ed73eb8652489416c0707b8e82fa872db1c`  
		Last Modified: Tue, 10 Oct 2017 05:09:39 GMT  
		Size: 8.4 MB (8415818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:350682285d7609af12d7cb3f7e7adfde8d8348003aee14b9f8fe6cf78a204411`  
		Last Modified: Tue, 10 Oct 2017 05:09:36 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297ef2f2afb0d442812bb74a64dc2dcbf56ce4ed7a21a0150873ff2dc44bf659`  
		Last Modified: Tue, 10 Oct 2017 05:09:36 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; 386

```console
$ docker pull redis@sha256:8dce1dc3843182baf5188577ff2650be9a3e2cd0416765bc12ffda78d68b2baa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38714226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f25c65f7d5052ad9303d4f4d753d9eb7b7b85899fc34e013ba4ed3688986bc33`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:30 GMT
ADD file:169ab3194fd1b25e06359d6eceb655093f44f0255c799ae8a3fc5bf8ba50fd8d in / 
# Mon, 09 Oct 2017 21:42:31 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:19:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 02:19:22 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:20:12 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 02:22:27 GMT
ENV REDIS_VERSION=4.0.2
# Tue, 10 Oct 2017 02:22:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Tue, 10 Oct 2017 02:22:27 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Tue, 10 Oct 2017 02:23:53 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 02:23:54 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 02:23:55 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 02:23:55 GMT
WORKDIR /data
# Tue, 10 Oct 2017 02:23:55 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:23:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:23:56 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 02:23:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d8b3cf5f6e0f087738d5589b812e12f5b8781935412c95d15f2f77d68657b006`  
		Last Modified: Mon, 09 Oct 2017 21:48:54 GMT  
		Size: 30.3 MB (30264454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c8d2c75f5b453b9d49112d257eb4c2f457c6597151256be7900ade930200dd`  
		Last Modified: Tue, 10 Oct 2017 02:24:19 GMT  
		Size: 2.1 KB (2075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d13873782f4c8b79e0d645f76188d4b6df1e79c97a304a50ec7a9e1f5882dd38`  
		Last Modified: Tue, 10 Oct 2017 02:24:20 GMT  
		Size: 960.8 KB (960803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d913c5dc5869c13a05c0b66e8b0cab44324bd60f99ee08d24cda89810f5685ad`  
		Last Modified: Tue, 10 Oct 2017 02:24:46 GMT  
		Size: 7.5 MB (7486394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c35916227329fb0fcb894b09451854689169da9b4b34af1e5acafe42695d55`  
		Last Modified: Tue, 10 Oct 2017 02:24:44 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343ab305763c638e73ef89c6a7f357475d9cdcab2274b0485d6123bbe04e0f7a`  
		Last Modified: Tue, 10 Oct 2017 02:24:44 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; ppc64le

```console
$ docker pull redis@sha256:4fa351ab945db9f16fb91f601f03d1d05a3b5c013658cf7fa3844d95b5d67153
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.9 MB (38895774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:376104d63ba89a2e5b425ac5fed81d76f172146355039380fd3a91bb52759fa3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:16 GMT
ADD file:2116c25fe6275b240bd8d3a4bfe6f707d53b8f7c679a08dc4e82f9351e32073f in / 
# Mon, 09 Oct 2017 21:43:18 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 06:51:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 06:51:43 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 06:56:16 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 07:05:43 GMT
ENV REDIS_VERSION=4.0.2
# Tue, 10 Oct 2017 07:05:48 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Tue, 10 Oct 2017 07:05:51 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Tue, 10 Oct 2017 07:11:42 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 07:11:50 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 07:11:53 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 07:11:56 GMT
WORKDIR /data
# Tue, 10 Oct 2017 07:11:59 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 07:12:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 07:12:07 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 07:12:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3e88472df41b6d64a43bb66e5def74c4e222f868fe8eb13015accec0b9812609`  
		Last Modified: Mon, 09 Oct 2017 21:49:29 GMT  
		Size: 29.3 MB (29306532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c537c33b2629cef2e083c79f74e8f68604cdcb77e2aa240795e5f6a5bff74a92`  
		Last Modified: Tue, 10 Oct 2017 07:12:32 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d58a246dc69d3d7c69f0b6a0fce3e472d5d4d89886b4d25241dae28720030066`  
		Last Modified: Tue, 10 Oct 2017 07:12:32 GMT  
		Size: 950.9 KB (950943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33d66da0f93209613a8a7f9b1df0f7cbf3950c7eb6f6acedd43a7d0717aa279`  
		Last Modified: Tue, 10 Oct 2017 07:12:56 GMT  
		Size: 8.6 MB (8635660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f59f2809937137bf6c4f12d7fc75b1b23397821e46b164fa1c637a1eaa0d0e5`  
		Last Modified: Tue, 10 Oct 2017 07:12:53 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f8ed3ce0e60b69d8a3cf84b1418de5308b7282084513c9679e7ffdf91aac32`  
		Last Modified: Tue, 10 Oct 2017 07:12:53 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; s390x

```console
$ docker pull redis@sha256:b1e0688852e789bd05b91f72482d2bbf3399195833742ffc2a2a9465229797be
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 MB (40167661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:026f8d2e45bbfa40f519477caabb08ec95371ca0b0efbc3611fdb46c8da1866e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:6cb76b1e40d19c5c42495dcfac0822e2e2e999e93fbe2274c6b7222bb6659b20 in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:46:49 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Mon, 09 Oct 2017 23:46:50 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:47:10 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 09 Oct 2017 23:48:10 GMT
ENV REDIS_VERSION=4.0.2
# Mon, 09 Oct 2017 23:48:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Mon, 09 Oct 2017 23:48:10 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Mon, 09 Oct 2017 23:48:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 23:48:45 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 09 Oct 2017 23:48:45 GMT
VOLUME [/data]
# Mon, 09 Oct 2017 23:48:45 GMT
WORKDIR /data
# Mon, 09 Oct 2017 23:48:45 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Mon, 09 Oct 2017 23:48:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:48:45 GMT
EXPOSE 6379/tcp
# Mon, 09 Oct 2017 23:48:46 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e5707ed2790f9e4144aedd6b69cce68d5bbd2267ce4f8885c072ee882ab1a8ad`  
		Last Modified: Mon, 09 Oct 2017 21:46:52 GMT  
		Size: 30.3 MB (30294195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1b0aa2f9a0b809864d23aad0244ab4b21c3ce7ebed4ddf0cd2d051a738a385`  
		Last Modified: Mon, 09 Oct 2017 23:48:58 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97156c7e7c15cd65361cca6b90910ade53527af127634758a9b869f8edcf31c3`  
		Last Modified: Mon, 09 Oct 2017 23:48:58 GMT  
		Size: 966.9 KB (966858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36bf2455e5e6f281a8be1c7c6de716ea0a8bbc7ef1a428d8a672f0d30fea3c8`  
		Last Modified: Mon, 09 Oct 2017 23:49:12 GMT  
		Size: 8.9 MB (8904021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee2e678d58f97fd6c45e7b8a1b92101f2cff5bcd66598b7e2488a10b0cfd06b`  
		Last Modified: Mon, 09 Oct 2017 23:49:11 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e16f068bd456e7d81ccd89f098fada039849146ba5f35061d3c8fb4bd29467b`  
		Last Modified: Mon, 09 Oct 2017 23:49:10 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0`

```console
$ docker pull redis@sha256:07e7b6cb753f8d06a894e22af30f94e04844461ab6cb002c688841873e5e5116
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:4.0` - linux; amd64

```console
$ docker pull redis@sha256:395f1c294afdc9e85f02904258f010b0a5dda4bfebc49bac90a8b4239448d7f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39372472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fb7b6c8c0d0713640c99dc75f7f39849cb9fc5619c1ba4ff6da286e6af759ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:48:50 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 02:48:50 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:49:22 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 02:52:10 GMT
ENV REDIS_VERSION=4.0.2
# Tue, 10 Oct 2017 02:52:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Tue, 10 Oct 2017 02:52:10 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Tue, 10 Oct 2017 02:53:17 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 02:53:18 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 02:53:18 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 02:53:18 GMT
WORKDIR /data
# Tue, 10 Oct 2017 02:53:18 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:53:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:53:19 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 02:53:19 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1846f364e395a92181df2a4fb615848549e90fb27c271bda34c8eb787cf50af`  
		Last Modified: Tue, 10 Oct 2017 02:55:26 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba901efed8cecd066085ffec4b49648fc217a911ec6557efaa4fcc7eca9daba`  
		Last Modified: Tue, 10 Oct 2017 02:55:27 GMT  
		Size: 981.8 KB (981752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b54b43b9d04990ddb25cd7c91b1c51f2d8016adb5ecfe392a419d8772fa333da`  
		Last Modified: Tue, 10 Oct 2017 02:56:29 GMT  
		Size: 8.3 MB (8274812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5b9e2d5e9c688b086ceac72340c20a571e633eccf624756bc66ba51f05ac832`  
		Last Modified: Tue, 10 Oct 2017 02:56:28 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7058d282fa00d5c102215df75410506e29eceec09933c0abdf9974e425f7de3d`  
		Last Modified: Tue, 10 Oct 2017 02:56:27 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm variant v5

```console
$ docker pull redis@sha256:c55b2f3487a470758a81a3ab1e9f8e5b5db9d6a078afaa36f2e6f4b42dc49b67
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37569906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9648e1913a2554ec5512b01e59dc9b4ec5ff6f1f4873cfd19a24ea324df92504`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:24 GMT
ADD file:b3e61e5275e7047cc330ef997896c9e74467b5134f0cada4325564a122204b61 in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:20:49 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 00:20:49 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:21:38 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 00:22:52 GMT
ENV REDIS_VERSION=4.0.2
# Tue, 10 Oct 2017 00:22:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Tue, 10 Oct 2017 00:22:52 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Tue, 10 Oct 2017 00:23:58 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 00:23:59 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 00:23:59 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 00:23:59 GMT
WORKDIR /data
# Tue, 10 Oct 2017 00:24:00 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:24:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:24:00 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 00:24:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:355c947ce54f583e3c4723632384e762cf27a159cb11b7ff6af3106dc7bf8e99`  
		Last Modified: Mon, 09 Oct 2017 21:47:41 GMT  
		Size: 28.4 MB (28424201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd038f96617a144d92c710168e0f0eb6c5997c6f2dda7ffcd277b4d4b08cecf`  
		Last Modified: Tue, 10 Oct 2017 00:24:15 GMT  
		Size: 2.1 KB (2074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4144ae6f0952a422c232f2b37cfa79916365b05774962b00697f7b4fde08c0f3`  
		Last Modified: Tue, 10 Oct 2017 00:24:15 GMT  
		Size: 971.2 KB (971238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:954965c07b8b737b29d341abc3f297e82ca06bb81aa5bf33f897e86c8da587ef`  
		Last Modified: Tue, 10 Oct 2017 00:24:31 GMT  
		Size: 8.2 MB (8171857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d9b6dae93ec06b47a866502b5dae621dfd97dfbc98a6a61a75f9250c9a15c2`  
		Last Modified: Tue, 10 Oct 2017 00:24:28 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f9896cbd7c9aedec282ad07eef84f685175964205d65aba25fd1a28cc903059`  
		Last Modified: Tue, 10 Oct 2017 00:24:28 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm variant v7

```console
$ docker pull redis@sha256:f8d2248d73de3ea641d0b5c71a75276799ef208cc027678dc1acb1c4449ef517
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35157546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5607ab0e55ec0e1a0dcfc29e48b0777c09504e43da3ce87e74f12641c82e592`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:0cd8ed314febdbf680645d20f346d9bac16fad5654c0b0d6ce2dec7c27c17b9a in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:11:22 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 00:11:22 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:12:25 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 00:13:56 GMT
ENV REDIS_VERSION=4.0.2
# Tue, 10 Oct 2017 00:13:56 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Tue, 10 Oct 2017 00:13:57 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Tue, 10 Oct 2017 00:15:14 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 00:15:16 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 00:15:16 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 00:15:16 GMT
WORKDIR /data
# Tue, 10 Oct 2017 00:15:17 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:15:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:15:18 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 00:15:18 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:02620033936d6cf3514a813f366025a14370f5dfe654e89eaca3a56b357e88c2`  
		Last Modified: Mon, 09 Oct 2017 21:49:15 GMT  
		Size: 26.3 MB (26280982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1b8976e9d698895ee6bac5731b99ea1c740a234bb1d7cf23d8f74334b74a63`  
		Last Modified: Tue, 10 Oct 2017 00:15:36 GMT  
		Size: 2.1 KB (2073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0064aaefd3fc879be9a4010ba88375a62b4f4f1e6a483ab539f77ab45aee083e`  
		Last Modified: Tue, 10 Oct 2017 00:15:36 GMT  
		Size: 956.1 KB (956111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f03f7e23866a09e5fdc0aba355bae50c5092a55e04d5c9d96d75622ab3e3ccc`  
		Last Modified: Tue, 10 Oct 2017 00:15:59 GMT  
		Size: 7.9 MB (7917843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d2acb4efd4392cc211ec36ff237a809e4499b22d8d56e00048e804d7cb81c6c`  
		Last Modified: Tue, 10 Oct 2017 00:15:57 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a93ff992ef2ce8ab18c292fd016296238b6bc018969f44b1951ae121f2daf56`  
		Last Modified: Tue, 10 Oct 2017 00:15:57 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:7383ddd2cb24bb790cc892b329c706d510bcf0069182d1db98ec1bacbc5c1205
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36847654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c11a0107cbceb7f0552586d85a86fa02f83f241932b0298c4eee6cf00a38212b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:51 GMT
ADD file:75f5768db078e9eee90676141a2c9faa9ce02768b7c9cd6e588bdd5ffc0f65e3 in / 
# Mon, 09 Oct 2017 21:43:51 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:03:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 05:03:21 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 05:04:19 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 05:06:27 GMT
ENV REDIS_VERSION=4.0.2
# Tue, 10 Oct 2017 05:06:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Tue, 10 Oct 2017 05:06:29 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Tue, 10 Oct 2017 05:08:24 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 05:08:26 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 05:08:27 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 05:08:27 GMT
WORKDIR /data
# Tue, 10 Oct 2017 05:08:28 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 05:08:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 05:08:30 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 05:08:31 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f2da27d97c13e9e531eda9577a28eb81b0d9034d7fd7e6575bd92744eed500f6`  
		Last Modified: Mon, 09 Oct 2017 21:53:20 GMT  
		Size: 27.5 MB (27480591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05e1313d9bb5766ff6bdeb2dde2e7f01045ac9c7df071253d3dc226d7cbe691`  
		Last Modified: Tue, 10 Oct 2017 05:08:57 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8c747456b46f024d9fda80792b271a2396f5d11f0adb7def45ec25548f8ab7`  
		Last Modified: Tue, 10 Oct 2017 05:08:57 GMT  
		Size: 948.7 KB (948653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf01e6edbad383372713f73ddfbd5ed73eb8652489416c0707b8e82fa872db1c`  
		Last Modified: Tue, 10 Oct 2017 05:09:39 GMT  
		Size: 8.4 MB (8415818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:350682285d7609af12d7cb3f7e7adfde8d8348003aee14b9f8fe6cf78a204411`  
		Last Modified: Tue, 10 Oct 2017 05:09:36 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297ef2f2afb0d442812bb74a64dc2dcbf56ce4ed7a21a0150873ff2dc44bf659`  
		Last Modified: Tue, 10 Oct 2017 05:09:36 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; 386

```console
$ docker pull redis@sha256:8dce1dc3843182baf5188577ff2650be9a3e2cd0416765bc12ffda78d68b2baa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38714226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f25c65f7d5052ad9303d4f4d753d9eb7b7b85899fc34e013ba4ed3688986bc33`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:30 GMT
ADD file:169ab3194fd1b25e06359d6eceb655093f44f0255c799ae8a3fc5bf8ba50fd8d in / 
# Mon, 09 Oct 2017 21:42:31 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:19:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 02:19:22 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:20:12 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 02:22:27 GMT
ENV REDIS_VERSION=4.0.2
# Tue, 10 Oct 2017 02:22:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Tue, 10 Oct 2017 02:22:27 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Tue, 10 Oct 2017 02:23:53 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 02:23:54 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 02:23:55 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 02:23:55 GMT
WORKDIR /data
# Tue, 10 Oct 2017 02:23:55 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:23:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:23:56 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 02:23:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d8b3cf5f6e0f087738d5589b812e12f5b8781935412c95d15f2f77d68657b006`  
		Last Modified: Mon, 09 Oct 2017 21:48:54 GMT  
		Size: 30.3 MB (30264454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c8d2c75f5b453b9d49112d257eb4c2f457c6597151256be7900ade930200dd`  
		Last Modified: Tue, 10 Oct 2017 02:24:19 GMT  
		Size: 2.1 KB (2075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d13873782f4c8b79e0d645f76188d4b6df1e79c97a304a50ec7a9e1f5882dd38`  
		Last Modified: Tue, 10 Oct 2017 02:24:20 GMT  
		Size: 960.8 KB (960803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d913c5dc5869c13a05c0b66e8b0cab44324bd60f99ee08d24cda89810f5685ad`  
		Last Modified: Tue, 10 Oct 2017 02:24:46 GMT  
		Size: 7.5 MB (7486394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c35916227329fb0fcb894b09451854689169da9b4b34af1e5acafe42695d55`  
		Last Modified: Tue, 10 Oct 2017 02:24:44 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343ab305763c638e73ef89c6a7f357475d9cdcab2274b0485d6123bbe04e0f7a`  
		Last Modified: Tue, 10 Oct 2017 02:24:44 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; ppc64le

```console
$ docker pull redis@sha256:4fa351ab945db9f16fb91f601f03d1d05a3b5c013658cf7fa3844d95b5d67153
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.9 MB (38895774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:376104d63ba89a2e5b425ac5fed81d76f172146355039380fd3a91bb52759fa3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:16 GMT
ADD file:2116c25fe6275b240bd8d3a4bfe6f707d53b8f7c679a08dc4e82f9351e32073f in / 
# Mon, 09 Oct 2017 21:43:18 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 06:51:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 06:51:43 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 06:56:16 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 07:05:43 GMT
ENV REDIS_VERSION=4.0.2
# Tue, 10 Oct 2017 07:05:48 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Tue, 10 Oct 2017 07:05:51 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Tue, 10 Oct 2017 07:11:42 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 07:11:50 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 07:11:53 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 07:11:56 GMT
WORKDIR /data
# Tue, 10 Oct 2017 07:11:59 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 07:12:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 07:12:07 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 07:12:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3e88472df41b6d64a43bb66e5def74c4e222f868fe8eb13015accec0b9812609`  
		Last Modified: Mon, 09 Oct 2017 21:49:29 GMT  
		Size: 29.3 MB (29306532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c537c33b2629cef2e083c79f74e8f68604cdcb77e2aa240795e5f6a5bff74a92`  
		Last Modified: Tue, 10 Oct 2017 07:12:32 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d58a246dc69d3d7c69f0b6a0fce3e472d5d4d89886b4d25241dae28720030066`  
		Last Modified: Tue, 10 Oct 2017 07:12:32 GMT  
		Size: 950.9 KB (950943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33d66da0f93209613a8a7f9b1df0f7cbf3950c7eb6f6acedd43a7d0717aa279`  
		Last Modified: Tue, 10 Oct 2017 07:12:56 GMT  
		Size: 8.6 MB (8635660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f59f2809937137bf6c4f12d7fc75b1b23397821e46b164fa1c637a1eaa0d0e5`  
		Last Modified: Tue, 10 Oct 2017 07:12:53 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f8ed3ce0e60b69d8a3cf84b1418de5308b7282084513c9679e7ffdf91aac32`  
		Last Modified: Tue, 10 Oct 2017 07:12:53 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; s390x

```console
$ docker pull redis@sha256:b1e0688852e789bd05b91f72482d2bbf3399195833742ffc2a2a9465229797be
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 MB (40167661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:026f8d2e45bbfa40f519477caabb08ec95371ca0b0efbc3611fdb46c8da1866e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:6cb76b1e40d19c5c42495dcfac0822e2e2e999e93fbe2274c6b7222bb6659b20 in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:46:49 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Mon, 09 Oct 2017 23:46:50 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:47:10 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 09 Oct 2017 23:48:10 GMT
ENV REDIS_VERSION=4.0.2
# Mon, 09 Oct 2017 23:48:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Mon, 09 Oct 2017 23:48:10 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Mon, 09 Oct 2017 23:48:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 23:48:45 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 09 Oct 2017 23:48:45 GMT
VOLUME [/data]
# Mon, 09 Oct 2017 23:48:45 GMT
WORKDIR /data
# Mon, 09 Oct 2017 23:48:45 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Mon, 09 Oct 2017 23:48:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:48:45 GMT
EXPOSE 6379/tcp
# Mon, 09 Oct 2017 23:48:46 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e5707ed2790f9e4144aedd6b69cce68d5bbd2267ce4f8885c072ee882ab1a8ad`  
		Last Modified: Mon, 09 Oct 2017 21:46:52 GMT  
		Size: 30.3 MB (30294195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1b0aa2f9a0b809864d23aad0244ab4b21c3ce7ebed4ddf0cd2d051a738a385`  
		Last Modified: Mon, 09 Oct 2017 23:48:58 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97156c7e7c15cd65361cca6b90910ade53527af127634758a9b869f8edcf31c3`  
		Last Modified: Mon, 09 Oct 2017 23:48:58 GMT  
		Size: 966.9 KB (966858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36bf2455e5e6f281a8be1c7c6de716ea0a8bbc7ef1a428d8a672f0d30fea3c8`  
		Last Modified: Mon, 09 Oct 2017 23:49:12 GMT  
		Size: 8.9 MB (8904021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee2e678d58f97fd6c45e7b8a1b92101f2cff5bcd66598b7e2488a10b0cfd06b`  
		Last Modified: Mon, 09 Oct 2017 23:49:11 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e16f068bd456e7d81ccd89f098fada039849146ba5f35061d3c8fb4bd29467b`  
		Last Modified: Mon, 09 Oct 2017 23:49:10 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.2`

```console
$ docker pull redis@sha256:07e7b6cb753f8d06a894e22af30f94e04844461ab6cb002c688841873e5e5116
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:4.0.2` - linux; amd64

```console
$ docker pull redis@sha256:395f1c294afdc9e85f02904258f010b0a5dda4bfebc49bac90a8b4239448d7f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39372472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fb7b6c8c0d0713640c99dc75f7f39849cb9fc5619c1ba4ff6da286e6af759ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:48:50 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 02:48:50 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:49:22 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 02:52:10 GMT
ENV REDIS_VERSION=4.0.2
# Tue, 10 Oct 2017 02:52:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Tue, 10 Oct 2017 02:52:10 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Tue, 10 Oct 2017 02:53:17 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 02:53:18 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 02:53:18 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 02:53:18 GMT
WORKDIR /data
# Tue, 10 Oct 2017 02:53:18 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:53:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:53:19 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 02:53:19 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1846f364e395a92181df2a4fb615848549e90fb27c271bda34c8eb787cf50af`  
		Last Modified: Tue, 10 Oct 2017 02:55:26 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba901efed8cecd066085ffec4b49648fc217a911ec6557efaa4fcc7eca9daba`  
		Last Modified: Tue, 10 Oct 2017 02:55:27 GMT  
		Size: 981.8 KB (981752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b54b43b9d04990ddb25cd7c91b1c51f2d8016adb5ecfe392a419d8772fa333da`  
		Last Modified: Tue, 10 Oct 2017 02:56:29 GMT  
		Size: 8.3 MB (8274812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5b9e2d5e9c688b086ceac72340c20a571e633eccf624756bc66ba51f05ac832`  
		Last Modified: Tue, 10 Oct 2017 02:56:28 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7058d282fa00d5c102215df75410506e29eceec09933c0abdf9974e425f7de3d`  
		Last Modified: Tue, 10 Oct 2017 02:56:27 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.2` - linux; arm variant v5

```console
$ docker pull redis@sha256:c55b2f3487a470758a81a3ab1e9f8e5b5db9d6a078afaa36f2e6f4b42dc49b67
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37569906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9648e1913a2554ec5512b01e59dc9b4ec5ff6f1f4873cfd19a24ea324df92504`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:24 GMT
ADD file:b3e61e5275e7047cc330ef997896c9e74467b5134f0cada4325564a122204b61 in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:20:49 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 00:20:49 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:21:38 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 00:22:52 GMT
ENV REDIS_VERSION=4.0.2
# Tue, 10 Oct 2017 00:22:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Tue, 10 Oct 2017 00:22:52 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Tue, 10 Oct 2017 00:23:58 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 00:23:59 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 00:23:59 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 00:23:59 GMT
WORKDIR /data
# Tue, 10 Oct 2017 00:24:00 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:24:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:24:00 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 00:24:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:355c947ce54f583e3c4723632384e762cf27a159cb11b7ff6af3106dc7bf8e99`  
		Last Modified: Mon, 09 Oct 2017 21:47:41 GMT  
		Size: 28.4 MB (28424201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd038f96617a144d92c710168e0f0eb6c5997c6f2dda7ffcd277b4d4b08cecf`  
		Last Modified: Tue, 10 Oct 2017 00:24:15 GMT  
		Size: 2.1 KB (2074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4144ae6f0952a422c232f2b37cfa79916365b05774962b00697f7b4fde08c0f3`  
		Last Modified: Tue, 10 Oct 2017 00:24:15 GMT  
		Size: 971.2 KB (971238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:954965c07b8b737b29d341abc3f297e82ca06bb81aa5bf33f897e86c8da587ef`  
		Last Modified: Tue, 10 Oct 2017 00:24:31 GMT  
		Size: 8.2 MB (8171857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d9b6dae93ec06b47a866502b5dae621dfd97dfbc98a6a61a75f9250c9a15c2`  
		Last Modified: Tue, 10 Oct 2017 00:24:28 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f9896cbd7c9aedec282ad07eef84f685175964205d65aba25fd1a28cc903059`  
		Last Modified: Tue, 10 Oct 2017 00:24:28 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.2` - linux; arm variant v7

```console
$ docker pull redis@sha256:f8d2248d73de3ea641d0b5c71a75276799ef208cc027678dc1acb1c4449ef517
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35157546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5607ab0e55ec0e1a0dcfc29e48b0777c09504e43da3ce87e74f12641c82e592`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:0cd8ed314febdbf680645d20f346d9bac16fad5654c0b0d6ce2dec7c27c17b9a in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:11:22 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 00:11:22 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:12:25 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 00:13:56 GMT
ENV REDIS_VERSION=4.0.2
# Tue, 10 Oct 2017 00:13:56 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Tue, 10 Oct 2017 00:13:57 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Tue, 10 Oct 2017 00:15:14 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 00:15:16 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 00:15:16 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 00:15:16 GMT
WORKDIR /data
# Tue, 10 Oct 2017 00:15:17 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:15:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:15:18 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 00:15:18 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:02620033936d6cf3514a813f366025a14370f5dfe654e89eaca3a56b357e88c2`  
		Last Modified: Mon, 09 Oct 2017 21:49:15 GMT  
		Size: 26.3 MB (26280982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1b8976e9d698895ee6bac5731b99ea1c740a234bb1d7cf23d8f74334b74a63`  
		Last Modified: Tue, 10 Oct 2017 00:15:36 GMT  
		Size: 2.1 KB (2073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0064aaefd3fc879be9a4010ba88375a62b4f4f1e6a483ab539f77ab45aee083e`  
		Last Modified: Tue, 10 Oct 2017 00:15:36 GMT  
		Size: 956.1 KB (956111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f03f7e23866a09e5fdc0aba355bae50c5092a55e04d5c9d96d75622ab3e3ccc`  
		Last Modified: Tue, 10 Oct 2017 00:15:59 GMT  
		Size: 7.9 MB (7917843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d2acb4efd4392cc211ec36ff237a809e4499b22d8d56e00048e804d7cb81c6c`  
		Last Modified: Tue, 10 Oct 2017 00:15:57 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a93ff992ef2ce8ab18c292fd016296238b6bc018969f44b1951ae121f2daf56`  
		Last Modified: Tue, 10 Oct 2017 00:15:57 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.2` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:7383ddd2cb24bb790cc892b329c706d510bcf0069182d1db98ec1bacbc5c1205
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36847654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c11a0107cbceb7f0552586d85a86fa02f83f241932b0298c4eee6cf00a38212b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:51 GMT
ADD file:75f5768db078e9eee90676141a2c9faa9ce02768b7c9cd6e588bdd5ffc0f65e3 in / 
# Mon, 09 Oct 2017 21:43:51 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:03:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 05:03:21 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 05:04:19 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 05:06:27 GMT
ENV REDIS_VERSION=4.0.2
# Tue, 10 Oct 2017 05:06:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Tue, 10 Oct 2017 05:06:29 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Tue, 10 Oct 2017 05:08:24 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 05:08:26 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 05:08:27 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 05:08:27 GMT
WORKDIR /data
# Tue, 10 Oct 2017 05:08:28 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 05:08:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 05:08:30 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 05:08:31 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f2da27d97c13e9e531eda9577a28eb81b0d9034d7fd7e6575bd92744eed500f6`  
		Last Modified: Mon, 09 Oct 2017 21:53:20 GMT  
		Size: 27.5 MB (27480591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05e1313d9bb5766ff6bdeb2dde2e7f01045ac9c7df071253d3dc226d7cbe691`  
		Last Modified: Tue, 10 Oct 2017 05:08:57 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8c747456b46f024d9fda80792b271a2396f5d11f0adb7def45ec25548f8ab7`  
		Last Modified: Tue, 10 Oct 2017 05:08:57 GMT  
		Size: 948.7 KB (948653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf01e6edbad383372713f73ddfbd5ed73eb8652489416c0707b8e82fa872db1c`  
		Last Modified: Tue, 10 Oct 2017 05:09:39 GMT  
		Size: 8.4 MB (8415818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:350682285d7609af12d7cb3f7e7adfde8d8348003aee14b9f8fe6cf78a204411`  
		Last Modified: Tue, 10 Oct 2017 05:09:36 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297ef2f2afb0d442812bb74a64dc2dcbf56ce4ed7a21a0150873ff2dc44bf659`  
		Last Modified: Tue, 10 Oct 2017 05:09:36 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.2` - linux; 386

```console
$ docker pull redis@sha256:8dce1dc3843182baf5188577ff2650be9a3e2cd0416765bc12ffda78d68b2baa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38714226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f25c65f7d5052ad9303d4f4d753d9eb7b7b85899fc34e013ba4ed3688986bc33`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:30 GMT
ADD file:169ab3194fd1b25e06359d6eceb655093f44f0255c799ae8a3fc5bf8ba50fd8d in / 
# Mon, 09 Oct 2017 21:42:31 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:19:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 02:19:22 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:20:12 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 02:22:27 GMT
ENV REDIS_VERSION=4.0.2
# Tue, 10 Oct 2017 02:22:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Tue, 10 Oct 2017 02:22:27 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Tue, 10 Oct 2017 02:23:53 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 02:23:54 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 02:23:55 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 02:23:55 GMT
WORKDIR /data
# Tue, 10 Oct 2017 02:23:55 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:23:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:23:56 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 02:23:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d8b3cf5f6e0f087738d5589b812e12f5b8781935412c95d15f2f77d68657b006`  
		Last Modified: Mon, 09 Oct 2017 21:48:54 GMT  
		Size: 30.3 MB (30264454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c8d2c75f5b453b9d49112d257eb4c2f457c6597151256be7900ade930200dd`  
		Last Modified: Tue, 10 Oct 2017 02:24:19 GMT  
		Size: 2.1 KB (2075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d13873782f4c8b79e0d645f76188d4b6df1e79c97a304a50ec7a9e1f5882dd38`  
		Last Modified: Tue, 10 Oct 2017 02:24:20 GMT  
		Size: 960.8 KB (960803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d913c5dc5869c13a05c0b66e8b0cab44324bd60f99ee08d24cda89810f5685ad`  
		Last Modified: Tue, 10 Oct 2017 02:24:46 GMT  
		Size: 7.5 MB (7486394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c35916227329fb0fcb894b09451854689169da9b4b34af1e5acafe42695d55`  
		Last Modified: Tue, 10 Oct 2017 02:24:44 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343ab305763c638e73ef89c6a7f357475d9cdcab2274b0485d6123bbe04e0f7a`  
		Last Modified: Tue, 10 Oct 2017 02:24:44 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.2` - linux; ppc64le

```console
$ docker pull redis@sha256:4fa351ab945db9f16fb91f601f03d1d05a3b5c013658cf7fa3844d95b5d67153
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.9 MB (38895774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:376104d63ba89a2e5b425ac5fed81d76f172146355039380fd3a91bb52759fa3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:16 GMT
ADD file:2116c25fe6275b240bd8d3a4bfe6f707d53b8f7c679a08dc4e82f9351e32073f in / 
# Mon, 09 Oct 2017 21:43:18 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 06:51:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 06:51:43 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 06:56:16 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 07:05:43 GMT
ENV REDIS_VERSION=4.0.2
# Tue, 10 Oct 2017 07:05:48 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Tue, 10 Oct 2017 07:05:51 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Tue, 10 Oct 2017 07:11:42 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 07:11:50 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 07:11:53 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 07:11:56 GMT
WORKDIR /data
# Tue, 10 Oct 2017 07:11:59 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 07:12:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 07:12:07 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 07:12:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3e88472df41b6d64a43bb66e5def74c4e222f868fe8eb13015accec0b9812609`  
		Last Modified: Mon, 09 Oct 2017 21:49:29 GMT  
		Size: 29.3 MB (29306532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c537c33b2629cef2e083c79f74e8f68604cdcb77e2aa240795e5f6a5bff74a92`  
		Last Modified: Tue, 10 Oct 2017 07:12:32 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d58a246dc69d3d7c69f0b6a0fce3e472d5d4d89886b4d25241dae28720030066`  
		Last Modified: Tue, 10 Oct 2017 07:12:32 GMT  
		Size: 950.9 KB (950943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33d66da0f93209613a8a7f9b1df0f7cbf3950c7eb6f6acedd43a7d0717aa279`  
		Last Modified: Tue, 10 Oct 2017 07:12:56 GMT  
		Size: 8.6 MB (8635660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f59f2809937137bf6c4f12d7fc75b1b23397821e46b164fa1c637a1eaa0d0e5`  
		Last Modified: Tue, 10 Oct 2017 07:12:53 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f8ed3ce0e60b69d8a3cf84b1418de5308b7282084513c9679e7ffdf91aac32`  
		Last Modified: Tue, 10 Oct 2017 07:12:53 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.2` - linux; s390x

```console
$ docker pull redis@sha256:b1e0688852e789bd05b91f72482d2bbf3399195833742ffc2a2a9465229797be
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 MB (40167661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:026f8d2e45bbfa40f519477caabb08ec95371ca0b0efbc3611fdb46c8da1866e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:6cb76b1e40d19c5c42495dcfac0822e2e2e999e93fbe2274c6b7222bb6659b20 in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:46:49 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Mon, 09 Oct 2017 23:46:50 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:47:10 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 09 Oct 2017 23:48:10 GMT
ENV REDIS_VERSION=4.0.2
# Mon, 09 Oct 2017 23:48:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Mon, 09 Oct 2017 23:48:10 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Mon, 09 Oct 2017 23:48:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 23:48:45 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 09 Oct 2017 23:48:45 GMT
VOLUME [/data]
# Mon, 09 Oct 2017 23:48:45 GMT
WORKDIR /data
# Mon, 09 Oct 2017 23:48:45 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Mon, 09 Oct 2017 23:48:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:48:45 GMT
EXPOSE 6379/tcp
# Mon, 09 Oct 2017 23:48:46 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e5707ed2790f9e4144aedd6b69cce68d5bbd2267ce4f8885c072ee882ab1a8ad`  
		Last Modified: Mon, 09 Oct 2017 21:46:52 GMT  
		Size: 30.3 MB (30294195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1b0aa2f9a0b809864d23aad0244ab4b21c3ce7ebed4ddf0cd2d051a738a385`  
		Last Modified: Mon, 09 Oct 2017 23:48:58 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97156c7e7c15cd65361cca6b90910ade53527af127634758a9b869f8edcf31c3`  
		Last Modified: Mon, 09 Oct 2017 23:48:58 GMT  
		Size: 966.9 KB (966858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36bf2455e5e6f281a8be1c7c6de716ea0a8bbc7ef1a428d8a672f0d30fea3c8`  
		Last Modified: Mon, 09 Oct 2017 23:49:12 GMT  
		Size: 8.9 MB (8904021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee2e678d58f97fd6c45e7b8a1b92101f2cff5bcd66598b7e2488a10b0cfd06b`  
		Last Modified: Mon, 09 Oct 2017 23:49:11 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e16f068bd456e7d81ccd89f098fada039849146ba5f35061d3c8fb4bd29467b`  
		Last Modified: Mon, 09 Oct 2017 23:49:10 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.2-32bit`

```console
$ docker pull redis@sha256:4eaba49a17b0b2af483de8b7326a8a4df387529cce0cc03a05bf9422fa0f1a5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0.2-32bit` - linux; amd64

```console
$ docker pull redis@sha256:98811500ee57c4fd6f330119822feace81630d5549a007504e20647e4451e8e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (42967534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aedd67f0abbe9ae287c4f08f0ca93197f3b81b9f880f1d7221aa2aa906de0e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:48:50 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 02:48:50 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:49:22 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 02:52:10 GMT
ENV REDIS_VERSION=4.0.2
# Tue, 10 Oct 2017 02:52:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Tue, 10 Oct 2017 02:52:10 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Tue, 10 Oct 2017 02:53:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:54:53 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 02:54:58 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 02:54:58 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 02:54:59 GMT
WORKDIR /data
# Tue, 10 Oct 2017 02:54:59 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:54:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:54:59 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 02:55:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1846f364e395a92181df2a4fb615848549e90fb27c271bda34c8eb787cf50af`  
		Last Modified: Tue, 10 Oct 2017 02:55:26 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba901efed8cecd066085ffec4b49648fc217a911ec6557efaa4fcc7eca9daba`  
		Last Modified: Tue, 10 Oct 2017 02:55:27 GMT  
		Size: 981.8 KB (981752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4fd0575e218765ccd10c14985ede0b92bd3f641d8d821942993badfe2ce242f`  
		Last Modified: Tue, 10 Oct 2017 02:57:02 GMT  
		Size: 4.4 MB (4378585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e0dd350911894d2f2a9f3519421796037ab268740735b1cfe037392e481fbee`  
		Last Modified: Tue, 10 Oct 2017 02:57:02 GMT  
		Size: 7.5 MB (7491284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c00e113616b7cb376d19a22c9507ac25afc5f18801b66471813224fccfe6ceb`  
		Last Modified: Tue, 10 Oct 2017 02:57:01 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0662fb6443d7586751560b1aec53ee8a115b0189599983bdfbbd0a01dc80496d`  
		Last Modified: Tue, 10 Oct 2017 02:57:01 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.2-alpine`

```console
$ docker pull redis@sha256:081fb9b298b9d703de4db5441e456973f1346572cb22927cc78caa5c7964b5b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0.2-alpine` - linux; amd64

```console
$ docker pull redis@sha256:d058b9d74d863ba405dfa42440d8109484b1f39732d4975447a42188f09ac077
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10467617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c7823413ff7934c9ce82068705cd552edc5da07d1e4257654be69c3a12506ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 03:35:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 19 Sep 2017 03:35:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 21 Sep 2017 21:00:29 GMT
ENV REDIS_VERSION=4.0.2
# Thu, 21 Sep 2017 21:00:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Thu, 21 Sep 2017 21:00:29 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Thu, 21 Sep 2017 21:00:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Thu, 21 Sep 2017 21:01:02 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Sep 2017 21:01:02 GMT
VOLUME [/data]
# Thu, 21 Sep 2017 21:01:02 GMT
WORKDIR /data
# Thu, 21 Sep 2017 21:01:03 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Thu, 21 Sep 2017 21:01:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Sep 2017 21:01:03 GMT
EXPOSE 6379/tcp
# Thu, 21 Sep 2017 21:01:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66139f3b4e091d3312482f1b690ec58f6544e2efa007d77c4ced415e39f7d0`  
		Last Modified: Tue, 19 Sep 2017 03:39:35 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111233a1622e0a347be99cd408d4632df84fffbded819d12109bb280c35af4e2`  
		Last Modified: Tue, 19 Sep 2017 03:39:35 GMT  
		Size: 8.2 KB (8216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d57c008af3ac376c0cb9b954a3c738b1fc8a2bb71c3a099f05771b6791ef15b`  
		Last Modified: Thu, 21 Sep 2017 21:03:39 GMT  
		Size: 8.5 MB (8467245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0faf6e56d29bd26f3e94178feb9eedcb3d24e91c4b6adeef01f43cc640bee8`  
		Last Modified: Thu, 21 Sep 2017 21:03:37 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51203d500d42a27ca82c9d2382e6c586a27430aa783f7c77ca756fa2dfc9655`  
		Last Modified: Thu, 21 Sep 2017 21:03:37 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-32bit`

```console
$ docker pull redis@sha256:4eaba49a17b0b2af483de8b7326a8a4df387529cce0cc03a05bf9422fa0f1a5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0-32bit` - linux; amd64

```console
$ docker pull redis@sha256:98811500ee57c4fd6f330119822feace81630d5549a007504e20647e4451e8e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (42967534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aedd67f0abbe9ae287c4f08f0ca93197f3b81b9f880f1d7221aa2aa906de0e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:48:50 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 02:48:50 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:49:22 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 02:52:10 GMT
ENV REDIS_VERSION=4.0.2
# Tue, 10 Oct 2017 02:52:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Tue, 10 Oct 2017 02:52:10 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Tue, 10 Oct 2017 02:53:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:54:53 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 02:54:58 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 02:54:58 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 02:54:59 GMT
WORKDIR /data
# Tue, 10 Oct 2017 02:54:59 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:54:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:54:59 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 02:55:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1846f364e395a92181df2a4fb615848549e90fb27c271bda34c8eb787cf50af`  
		Last Modified: Tue, 10 Oct 2017 02:55:26 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba901efed8cecd066085ffec4b49648fc217a911ec6557efaa4fcc7eca9daba`  
		Last Modified: Tue, 10 Oct 2017 02:55:27 GMT  
		Size: 981.8 KB (981752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4fd0575e218765ccd10c14985ede0b92bd3f641d8d821942993badfe2ce242f`  
		Last Modified: Tue, 10 Oct 2017 02:57:02 GMT  
		Size: 4.4 MB (4378585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e0dd350911894d2f2a9f3519421796037ab268740735b1cfe037392e481fbee`  
		Last Modified: Tue, 10 Oct 2017 02:57:02 GMT  
		Size: 7.5 MB (7491284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c00e113616b7cb376d19a22c9507ac25afc5f18801b66471813224fccfe6ceb`  
		Last Modified: Tue, 10 Oct 2017 02:57:01 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0662fb6443d7586751560b1aec53ee8a115b0189599983bdfbbd0a01dc80496d`  
		Last Modified: Tue, 10 Oct 2017 02:57:01 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-alpine`

```console
$ docker pull redis@sha256:081fb9b298b9d703de4db5441e456973f1346572cb22927cc78caa5c7964b5b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0-alpine` - linux; amd64

```console
$ docker pull redis@sha256:d058b9d74d863ba405dfa42440d8109484b1f39732d4975447a42188f09ac077
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10467617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c7823413ff7934c9ce82068705cd552edc5da07d1e4257654be69c3a12506ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 03:35:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 19 Sep 2017 03:35:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 21 Sep 2017 21:00:29 GMT
ENV REDIS_VERSION=4.0.2
# Thu, 21 Sep 2017 21:00:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Thu, 21 Sep 2017 21:00:29 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Thu, 21 Sep 2017 21:00:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Thu, 21 Sep 2017 21:01:02 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Sep 2017 21:01:02 GMT
VOLUME [/data]
# Thu, 21 Sep 2017 21:01:02 GMT
WORKDIR /data
# Thu, 21 Sep 2017 21:01:03 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Thu, 21 Sep 2017 21:01:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Sep 2017 21:01:03 GMT
EXPOSE 6379/tcp
# Thu, 21 Sep 2017 21:01:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66139f3b4e091d3312482f1b690ec58f6544e2efa007d77c4ced415e39f7d0`  
		Last Modified: Tue, 19 Sep 2017 03:39:35 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111233a1622e0a347be99cd408d4632df84fffbded819d12109bb280c35af4e2`  
		Last Modified: Tue, 19 Sep 2017 03:39:35 GMT  
		Size: 8.2 KB (8216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d57c008af3ac376c0cb9b954a3c738b1fc8a2bb71c3a099f05771b6791ef15b`  
		Last Modified: Thu, 21 Sep 2017 21:03:39 GMT  
		Size: 8.5 MB (8467245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0faf6e56d29bd26f3e94178feb9eedcb3d24e91c4b6adeef01f43cc640bee8`  
		Last Modified: Thu, 21 Sep 2017 21:03:37 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51203d500d42a27ca82c9d2382e6c586a27430aa783f7c77ca756fa2dfc9655`  
		Last Modified: Thu, 21 Sep 2017 21:03:37 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-32bit`

```console
$ docker pull redis@sha256:4eaba49a17b0b2af483de8b7326a8a4df387529cce0cc03a05bf9422fa0f1a5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-32bit` - linux; amd64

```console
$ docker pull redis@sha256:98811500ee57c4fd6f330119822feace81630d5549a007504e20647e4451e8e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (42967534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aedd67f0abbe9ae287c4f08f0ca93197f3b81b9f880f1d7221aa2aa906de0e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:48:50 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 02:48:50 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:49:22 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 02:52:10 GMT
ENV REDIS_VERSION=4.0.2
# Tue, 10 Oct 2017 02:52:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Tue, 10 Oct 2017 02:52:10 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Tue, 10 Oct 2017 02:53:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:54:53 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 02:54:58 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 02:54:58 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 02:54:59 GMT
WORKDIR /data
# Tue, 10 Oct 2017 02:54:59 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:54:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:54:59 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 02:55:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1846f364e395a92181df2a4fb615848549e90fb27c271bda34c8eb787cf50af`  
		Last Modified: Tue, 10 Oct 2017 02:55:26 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba901efed8cecd066085ffec4b49648fc217a911ec6557efaa4fcc7eca9daba`  
		Last Modified: Tue, 10 Oct 2017 02:55:27 GMT  
		Size: 981.8 KB (981752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4fd0575e218765ccd10c14985ede0b92bd3f641d8d821942993badfe2ce242f`  
		Last Modified: Tue, 10 Oct 2017 02:57:02 GMT  
		Size: 4.4 MB (4378585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e0dd350911894d2f2a9f3519421796037ab268740735b1cfe037392e481fbee`  
		Last Modified: Tue, 10 Oct 2017 02:57:02 GMT  
		Size: 7.5 MB (7491284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c00e113616b7cb376d19a22c9507ac25afc5f18801b66471813224fccfe6ceb`  
		Last Modified: Tue, 10 Oct 2017 02:57:01 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0662fb6443d7586751560b1aec53ee8a115b0189599983bdfbbd0a01dc80496d`  
		Last Modified: Tue, 10 Oct 2017 02:57:01 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-alpine`

```console
$ docker pull redis@sha256:081fb9b298b9d703de4db5441e456973f1346572cb22927cc78caa5c7964b5b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-alpine` - linux; amd64

```console
$ docker pull redis@sha256:d058b9d74d863ba405dfa42440d8109484b1f39732d4975447a42188f09ac077
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10467617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c7823413ff7934c9ce82068705cd552edc5da07d1e4257654be69c3a12506ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 03:35:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 19 Sep 2017 03:35:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 21 Sep 2017 21:00:29 GMT
ENV REDIS_VERSION=4.0.2
# Thu, 21 Sep 2017 21:00:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Thu, 21 Sep 2017 21:00:29 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Thu, 21 Sep 2017 21:00:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Thu, 21 Sep 2017 21:01:02 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Sep 2017 21:01:02 GMT
VOLUME [/data]
# Thu, 21 Sep 2017 21:01:02 GMT
WORKDIR /data
# Thu, 21 Sep 2017 21:01:03 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Thu, 21 Sep 2017 21:01:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Sep 2017 21:01:03 GMT
EXPOSE 6379/tcp
# Thu, 21 Sep 2017 21:01:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66139f3b4e091d3312482f1b690ec58f6544e2efa007d77c4ced415e39f7d0`  
		Last Modified: Tue, 19 Sep 2017 03:39:35 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111233a1622e0a347be99cd408d4632df84fffbded819d12109bb280c35af4e2`  
		Last Modified: Tue, 19 Sep 2017 03:39:35 GMT  
		Size: 8.2 KB (8216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d57c008af3ac376c0cb9b954a3c738b1fc8a2bb71c3a099f05771b6791ef15b`  
		Last Modified: Thu, 21 Sep 2017 21:03:39 GMT  
		Size: 8.5 MB (8467245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0faf6e56d29bd26f3e94178feb9eedcb3d24e91c4b6adeef01f43cc640bee8`  
		Last Modified: Thu, 21 Sep 2017 21:03:37 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51203d500d42a27ca82c9d2382e6c586a27430aa783f7c77ca756fa2dfc9655`  
		Last Modified: Thu, 21 Sep 2017 21:03:37 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine`

```console
$ docker pull redis@sha256:081fb9b298b9d703de4db5441e456973f1346572cb22927cc78caa5c7964b5b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:alpine` - linux; amd64

```console
$ docker pull redis@sha256:d058b9d74d863ba405dfa42440d8109484b1f39732d4975447a42188f09ac077
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10467617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c7823413ff7934c9ce82068705cd552edc5da07d1e4257654be69c3a12506ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 03:35:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 19 Sep 2017 03:35:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 21 Sep 2017 21:00:29 GMT
ENV REDIS_VERSION=4.0.2
# Thu, 21 Sep 2017 21:00:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Thu, 21 Sep 2017 21:00:29 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Thu, 21 Sep 2017 21:00:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Thu, 21 Sep 2017 21:01:02 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Sep 2017 21:01:02 GMT
VOLUME [/data]
# Thu, 21 Sep 2017 21:01:02 GMT
WORKDIR /data
# Thu, 21 Sep 2017 21:01:03 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Thu, 21 Sep 2017 21:01:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Sep 2017 21:01:03 GMT
EXPOSE 6379/tcp
# Thu, 21 Sep 2017 21:01:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66139f3b4e091d3312482f1b690ec58f6544e2efa007d77c4ced415e39f7d0`  
		Last Modified: Tue, 19 Sep 2017 03:39:35 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111233a1622e0a347be99cd408d4632df84fffbded819d12109bb280c35af4e2`  
		Last Modified: Tue, 19 Sep 2017 03:39:35 GMT  
		Size: 8.2 KB (8216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d57c008af3ac376c0cb9b954a3c738b1fc8a2bb71c3a099f05771b6791ef15b`  
		Last Modified: Thu, 21 Sep 2017 21:03:39 GMT  
		Size: 8.5 MB (8467245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0faf6e56d29bd26f3e94178feb9eedcb3d24e91c4b6adeef01f43cc640bee8`  
		Last Modified: Thu, 21 Sep 2017 21:03:37 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51203d500d42a27ca82c9d2382e6c586a27430aa783f7c77ca756fa2dfc9655`  
		Last Modified: Thu, 21 Sep 2017 21:03:37 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:latest`

```console
$ docker pull redis@sha256:07e7b6cb753f8d06a894e22af30f94e04844461ab6cb002c688841873e5e5116
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:latest` - linux; amd64

```console
$ docker pull redis@sha256:395f1c294afdc9e85f02904258f010b0a5dda4bfebc49bac90a8b4239448d7f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39372472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fb7b6c8c0d0713640c99dc75f7f39849cb9fc5619c1ba4ff6da286e6af759ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:48:50 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 02:48:50 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:49:22 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 02:52:10 GMT
ENV REDIS_VERSION=4.0.2
# Tue, 10 Oct 2017 02:52:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Tue, 10 Oct 2017 02:52:10 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Tue, 10 Oct 2017 02:53:17 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 02:53:18 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 02:53:18 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 02:53:18 GMT
WORKDIR /data
# Tue, 10 Oct 2017 02:53:18 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:53:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:53:19 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 02:53:19 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1846f364e395a92181df2a4fb615848549e90fb27c271bda34c8eb787cf50af`  
		Last Modified: Tue, 10 Oct 2017 02:55:26 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba901efed8cecd066085ffec4b49648fc217a911ec6557efaa4fcc7eca9daba`  
		Last Modified: Tue, 10 Oct 2017 02:55:27 GMT  
		Size: 981.8 KB (981752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b54b43b9d04990ddb25cd7c91b1c51f2d8016adb5ecfe392a419d8772fa333da`  
		Last Modified: Tue, 10 Oct 2017 02:56:29 GMT  
		Size: 8.3 MB (8274812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5b9e2d5e9c688b086ceac72340c20a571e633eccf624756bc66ba51f05ac832`  
		Last Modified: Tue, 10 Oct 2017 02:56:28 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7058d282fa00d5c102215df75410506e29eceec09933c0abdf9974e425f7de3d`  
		Last Modified: Tue, 10 Oct 2017 02:56:27 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm variant v5

```console
$ docker pull redis@sha256:c55b2f3487a470758a81a3ab1e9f8e5b5db9d6a078afaa36f2e6f4b42dc49b67
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37569906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9648e1913a2554ec5512b01e59dc9b4ec5ff6f1f4873cfd19a24ea324df92504`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:24 GMT
ADD file:b3e61e5275e7047cc330ef997896c9e74467b5134f0cada4325564a122204b61 in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:20:49 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 00:20:49 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:21:38 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 00:22:52 GMT
ENV REDIS_VERSION=4.0.2
# Tue, 10 Oct 2017 00:22:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Tue, 10 Oct 2017 00:22:52 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Tue, 10 Oct 2017 00:23:58 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 00:23:59 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 00:23:59 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 00:23:59 GMT
WORKDIR /data
# Tue, 10 Oct 2017 00:24:00 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:24:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:24:00 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 00:24:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:355c947ce54f583e3c4723632384e762cf27a159cb11b7ff6af3106dc7bf8e99`  
		Last Modified: Mon, 09 Oct 2017 21:47:41 GMT  
		Size: 28.4 MB (28424201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd038f96617a144d92c710168e0f0eb6c5997c6f2dda7ffcd277b4d4b08cecf`  
		Last Modified: Tue, 10 Oct 2017 00:24:15 GMT  
		Size: 2.1 KB (2074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4144ae6f0952a422c232f2b37cfa79916365b05774962b00697f7b4fde08c0f3`  
		Last Modified: Tue, 10 Oct 2017 00:24:15 GMT  
		Size: 971.2 KB (971238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:954965c07b8b737b29d341abc3f297e82ca06bb81aa5bf33f897e86c8da587ef`  
		Last Modified: Tue, 10 Oct 2017 00:24:31 GMT  
		Size: 8.2 MB (8171857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d9b6dae93ec06b47a866502b5dae621dfd97dfbc98a6a61a75f9250c9a15c2`  
		Last Modified: Tue, 10 Oct 2017 00:24:28 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f9896cbd7c9aedec282ad07eef84f685175964205d65aba25fd1a28cc903059`  
		Last Modified: Tue, 10 Oct 2017 00:24:28 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm variant v7

```console
$ docker pull redis@sha256:f8d2248d73de3ea641d0b5c71a75276799ef208cc027678dc1acb1c4449ef517
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35157546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5607ab0e55ec0e1a0dcfc29e48b0777c09504e43da3ce87e74f12641c82e592`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:0cd8ed314febdbf680645d20f346d9bac16fad5654c0b0d6ce2dec7c27c17b9a in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:11:22 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 00:11:22 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:12:25 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 00:13:56 GMT
ENV REDIS_VERSION=4.0.2
# Tue, 10 Oct 2017 00:13:56 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Tue, 10 Oct 2017 00:13:57 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Tue, 10 Oct 2017 00:15:14 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 00:15:16 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 00:15:16 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 00:15:16 GMT
WORKDIR /data
# Tue, 10 Oct 2017 00:15:17 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:15:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:15:18 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 00:15:18 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:02620033936d6cf3514a813f366025a14370f5dfe654e89eaca3a56b357e88c2`  
		Last Modified: Mon, 09 Oct 2017 21:49:15 GMT  
		Size: 26.3 MB (26280982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1b8976e9d698895ee6bac5731b99ea1c740a234bb1d7cf23d8f74334b74a63`  
		Last Modified: Tue, 10 Oct 2017 00:15:36 GMT  
		Size: 2.1 KB (2073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0064aaefd3fc879be9a4010ba88375a62b4f4f1e6a483ab539f77ab45aee083e`  
		Last Modified: Tue, 10 Oct 2017 00:15:36 GMT  
		Size: 956.1 KB (956111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f03f7e23866a09e5fdc0aba355bae50c5092a55e04d5c9d96d75622ab3e3ccc`  
		Last Modified: Tue, 10 Oct 2017 00:15:59 GMT  
		Size: 7.9 MB (7917843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d2acb4efd4392cc211ec36ff237a809e4499b22d8d56e00048e804d7cb81c6c`  
		Last Modified: Tue, 10 Oct 2017 00:15:57 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a93ff992ef2ce8ab18c292fd016296238b6bc018969f44b1951ae121f2daf56`  
		Last Modified: Tue, 10 Oct 2017 00:15:57 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:7383ddd2cb24bb790cc892b329c706d510bcf0069182d1db98ec1bacbc5c1205
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36847654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c11a0107cbceb7f0552586d85a86fa02f83f241932b0298c4eee6cf00a38212b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:51 GMT
ADD file:75f5768db078e9eee90676141a2c9faa9ce02768b7c9cd6e588bdd5ffc0f65e3 in / 
# Mon, 09 Oct 2017 21:43:51 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:03:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 05:03:21 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 05:04:19 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 05:06:27 GMT
ENV REDIS_VERSION=4.0.2
# Tue, 10 Oct 2017 05:06:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Tue, 10 Oct 2017 05:06:29 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Tue, 10 Oct 2017 05:08:24 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 05:08:26 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 05:08:27 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 05:08:27 GMT
WORKDIR /data
# Tue, 10 Oct 2017 05:08:28 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 05:08:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 05:08:30 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 05:08:31 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f2da27d97c13e9e531eda9577a28eb81b0d9034d7fd7e6575bd92744eed500f6`  
		Last Modified: Mon, 09 Oct 2017 21:53:20 GMT  
		Size: 27.5 MB (27480591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05e1313d9bb5766ff6bdeb2dde2e7f01045ac9c7df071253d3dc226d7cbe691`  
		Last Modified: Tue, 10 Oct 2017 05:08:57 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8c747456b46f024d9fda80792b271a2396f5d11f0adb7def45ec25548f8ab7`  
		Last Modified: Tue, 10 Oct 2017 05:08:57 GMT  
		Size: 948.7 KB (948653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf01e6edbad383372713f73ddfbd5ed73eb8652489416c0707b8e82fa872db1c`  
		Last Modified: Tue, 10 Oct 2017 05:09:39 GMT  
		Size: 8.4 MB (8415818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:350682285d7609af12d7cb3f7e7adfde8d8348003aee14b9f8fe6cf78a204411`  
		Last Modified: Tue, 10 Oct 2017 05:09:36 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297ef2f2afb0d442812bb74a64dc2dcbf56ce4ed7a21a0150873ff2dc44bf659`  
		Last Modified: Tue, 10 Oct 2017 05:09:36 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; 386

```console
$ docker pull redis@sha256:8dce1dc3843182baf5188577ff2650be9a3e2cd0416765bc12ffda78d68b2baa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38714226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f25c65f7d5052ad9303d4f4d753d9eb7b7b85899fc34e013ba4ed3688986bc33`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:30 GMT
ADD file:169ab3194fd1b25e06359d6eceb655093f44f0255c799ae8a3fc5bf8ba50fd8d in / 
# Mon, 09 Oct 2017 21:42:31 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:19:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 02:19:22 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:20:12 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 02:22:27 GMT
ENV REDIS_VERSION=4.0.2
# Tue, 10 Oct 2017 02:22:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Tue, 10 Oct 2017 02:22:27 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Tue, 10 Oct 2017 02:23:53 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 02:23:54 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 02:23:55 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 02:23:55 GMT
WORKDIR /data
# Tue, 10 Oct 2017 02:23:55 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:23:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:23:56 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 02:23:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d8b3cf5f6e0f087738d5589b812e12f5b8781935412c95d15f2f77d68657b006`  
		Last Modified: Mon, 09 Oct 2017 21:48:54 GMT  
		Size: 30.3 MB (30264454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c8d2c75f5b453b9d49112d257eb4c2f457c6597151256be7900ade930200dd`  
		Last Modified: Tue, 10 Oct 2017 02:24:19 GMT  
		Size: 2.1 KB (2075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d13873782f4c8b79e0d645f76188d4b6df1e79c97a304a50ec7a9e1f5882dd38`  
		Last Modified: Tue, 10 Oct 2017 02:24:20 GMT  
		Size: 960.8 KB (960803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d913c5dc5869c13a05c0b66e8b0cab44324bd60f99ee08d24cda89810f5685ad`  
		Last Modified: Tue, 10 Oct 2017 02:24:46 GMT  
		Size: 7.5 MB (7486394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c35916227329fb0fcb894b09451854689169da9b4b34af1e5acafe42695d55`  
		Last Modified: Tue, 10 Oct 2017 02:24:44 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343ab305763c638e73ef89c6a7f357475d9cdcab2274b0485d6123bbe04e0f7a`  
		Last Modified: Tue, 10 Oct 2017 02:24:44 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; ppc64le

```console
$ docker pull redis@sha256:4fa351ab945db9f16fb91f601f03d1d05a3b5c013658cf7fa3844d95b5d67153
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.9 MB (38895774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:376104d63ba89a2e5b425ac5fed81d76f172146355039380fd3a91bb52759fa3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:16 GMT
ADD file:2116c25fe6275b240bd8d3a4bfe6f707d53b8f7c679a08dc4e82f9351e32073f in / 
# Mon, 09 Oct 2017 21:43:18 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 06:51:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 06:51:43 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 06:56:16 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 10 Oct 2017 07:05:43 GMT
ENV REDIS_VERSION=4.0.2
# Tue, 10 Oct 2017 07:05:48 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Tue, 10 Oct 2017 07:05:51 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Tue, 10 Oct 2017 07:11:42 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 07:11:50 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 10 Oct 2017 07:11:53 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 07:11:56 GMT
WORKDIR /data
# Tue, 10 Oct 2017 07:11:59 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 10 Oct 2017 07:12:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 07:12:07 GMT
EXPOSE 6379/tcp
# Tue, 10 Oct 2017 07:12:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3e88472df41b6d64a43bb66e5def74c4e222f868fe8eb13015accec0b9812609`  
		Last Modified: Mon, 09 Oct 2017 21:49:29 GMT  
		Size: 29.3 MB (29306532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c537c33b2629cef2e083c79f74e8f68604cdcb77e2aa240795e5f6a5bff74a92`  
		Last Modified: Tue, 10 Oct 2017 07:12:32 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d58a246dc69d3d7c69f0b6a0fce3e472d5d4d89886b4d25241dae28720030066`  
		Last Modified: Tue, 10 Oct 2017 07:12:32 GMT  
		Size: 950.9 KB (950943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33d66da0f93209613a8a7f9b1df0f7cbf3950c7eb6f6acedd43a7d0717aa279`  
		Last Modified: Tue, 10 Oct 2017 07:12:56 GMT  
		Size: 8.6 MB (8635660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f59f2809937137bf6c4f12d7fc75b1b23397821e46b164fa1c637a1eaa0d0e5`  
		Last Modified: Tue, 10 Oct 2017 07:12:53 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f8ed3ce0e60b69d8a3cf84b1418de5308b7282084513c9679e7ffdf91aac32`  
		Last Modified: Tue, 10 Oct 2017 07:12:53 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; s390x

```console
$ docker pull redis@sha256:b1e0688852e789bd05b91f72482d2bbf3399195833742ffc2a2a9465229797be
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 MB (40167661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:026f8d2e45bbfa40f519477caabb08ec95371ca0b0efbc3611fdb46c8da1866e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:6cb76b1e40d19c5c42495dcfac0822e2e2e999e93fbe2274c6b7222bb6659b20 in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:46:49 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Mon, 09 Oct 2017 23:46:50 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:47:10 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 09 Oct 2017 23:48:10 GMT
ENV REDIS_VERSION=4.0.2
# Mon, 09 Oct 2017 23:48:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Mon, 09 Oct 2017 23:48:10 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Mon, 09 Oct 2017 23:48:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 23:48:45 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 09 Oct 2017 23:48:45 GMT
VOLUME [/data]
# Mon, 09 Oct 2017 23:48:45 GMT
WORKDIR /data
# Mon, 09 Oct 2017 23:48:45 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Mon, 09 Oct 2017 23:48:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:48:45 GMT
EXPOSE 6379/tcp
# Mon, 09 Oct 2017 23:48:46 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e5707ed2790f9e4144aedd6b69cce68d5bbd2267ce4f8885c072ee882ab1a8ad`  
		Last Modified: Mon, 09 Oct 2017 21:46:52 GMT  
		Size: 30.3 MB (30294195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1b0aa2f9a0b809864d23aad0244ab4b21c3ce7ebed4ddf0cd2d051a738a385`  
		Last Modified: Mon, 09 Oct 2017 23:48:58 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97156c7e7c15cd65361cca6b90910ade53527af127634758a9b869f8edcf31c3`  
		Last Modified: Mon, 09 Oct 2017 23:48:58 GMT  
		Size: 966.9 KB (966858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36bf2455e5e6f281a8be1c7c6de716ea0a8bbc7ef1a428d8a672f0d30fea3c8`  
		Last Modified: Mon, 09 Oct 2017 23:49:12 GMT  
		Size: 8.9 MB (8904021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee2e678d58f97fd6c45e7b8a1b92101f2cff5bcd66598b7e2488a10b0cfd06b`  
		Last Modified: Mon, 09 Oct 2017 23:49:11 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e16f068bd456e7d81ccd89f098fada039849146ba5f35061d3c8fb4bd29467b`  
		Last Modified: Mon, 09 Oct 2017 23:49:10 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
