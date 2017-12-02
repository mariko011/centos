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
-	[`redis:4.0-32bit`](#redis40-32bit)
-	[`redis:4.0.5`](#redis405)
-	[`redis:4.0.5-32bit`](#redis405-32bit)
-	[`redis:4.0.5-alpine`](#redis405-alpine)
-	[`redis:4.0-alpine`](#redis40-alpine)
-	[`redis:4-32bit`](#redis4-32bit)
-	[`redis:4-alpine`](#redis4-alpine)
-	[`redis:alpine`](#redisalpine)
-	[`redis:latest`](#redislatest)

## `redis:3`

```console
$ docker pull redis@sha256:c4913d36d229f9efa1dbe315df37a3725b0c241888509766d856f9460f5d4937
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
$ docker pull redis@sha256:38ea68fadc02dd2ea9a929345d7e5ebdc2442c047150cfd64ed68df0bc903767
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36844634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3f696a9f23068ee7801fa2216721b6b29eb1680ed60a6dceb37c09d868ce388`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 16:15:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 04 Nov 2017 16:15:26 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 16:15:47 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 04 Nov 2017 16:15:47 GMT
ENV REDIS_VERSION=3.2.11
# Sat, 04 Nov 2017 16:15:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Sat, 04 Nov 2017 16:15:48 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Sat, 04 Nov 2017 16:16:28 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 16:16:29 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Nov 2017 16:16:29 GMT
VOLUME [/data]
# Sat, 04 Nov 2017 16:16:29 GMT
WORKDIR /data
# Sat, 04 Nov 2017 16:16:29 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 04 Nov 2017 16:16:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 16:16:30 GMT
EXPOSE 6379/tcp
# Sat, 04 Nov 2017 16:16:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f8341839ed6c0ca916876566d7193c33a80ae461cba558d85832436f59650`  
		Last Modified: Sat, 04 Nov 2017 16:22:06 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b9cdda7eb9fa2604e34311ddfbf9bb9e3b8a67d6c1668a9dc802f27855dcdd`  
		Last Modified: Sat, 04 Nov 2017 16:22:07 GMT  
		Size: 981.7 KB (981737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de9f02b4e2739f6dea1c7728e5db6cee6d8a810a6b547ebd8374942c4e51c2d`  
		Last Modified: Sat, 04 Nov 2017 16:22:07 GMT  
		Size: 5.7 MB (5746989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd716b63cf0687eb543ac8cb87836efa131a0de81757c4f7c52a9ac70b063499`  
		Last Modified: Sat, 04 Nov 2017 16:22:06 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95dff9cab78654f02cc84ccd42f67bea9c05d3856922f61e525d3e53a94fd67`  
		Last Modified: Sat, 04 Nov 2017 16:22:07 GMT  
		Size: 403.0 B  
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
$ docker pull redis@sha256:c4913d36d229f9efa1dbe315df37a3725b0c241888509766d856f9460f5d4937
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
$ docker pull redis@sha256:38ea68fadc02dd2ea9a929345d7e5ebdc2442c047150cfd64ed68df0bc903767
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36844634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3f696a9f23068ee7801fa2216721b6b29eb1680ed60a6dceb37c09d868ce388`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 16:15:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 04 Nov 2017 16:15:26 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 16:15:47 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 04 Nov 2017 16:15:47 GMT
ENV REDIS_VERSION=3.2.11
# Sat, 04 Nov 2017 16:15:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Sat, 04 Nov 2017 16:15:48 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Sat, 04 Nov 2017 16:16:28 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 16:16:29 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Nov 2017 16:16:29 GMT
VOLUME [/data]
# Sat, 04 Nov 2017 16:16:29 GMT
WORKDIR /data
# Sat, 04 Nov 2017 16:16:29 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 04 Nov 2017 16:16:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 16:16:30 GMT
EXPOSE 6379/tcp
# Sat, 04 Nov 2017 16:16:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f8341839ed6c0ca916876566d7193c33a80ae461cba558d85832436f59650`  
		Last Modified: Sat, 04 Nov 2017 16:22:06 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b9cdda7eb9fa2604e34311ddfbf9bb9e3b8a67d6c1668a9dc802f27855dcdd`  
		Last Modified: Sat, 04 Nov 2017 16:22:07 GMT  
		Size: 981.7 KB (981737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de9f02b4e2739f6dea1c7728e5db6cee6d8a810a6b547ebd8374942c4e51c2d`  
		Last Modified: Sat, 04 Nov 2017 16:22:07 GMT  
		Size: 5.7 MB (5746989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd716b63cf0687eb543ac8cb87836efa131a0de81757c4f7c52a9ac70b063499`  
		Last Modified: Sat, 04 Nov 2017 16:22:06 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95dff9cab78654f02cc84ccd42f67bea9c05d3856922f61e525d3e53a94fd67`  
		Last Modified: Sat, 04 Nov 2017 16:22:07 GMT  
		Size: 403.0 B  
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
$ docker pull redis@sha256:c4913d36d229f9efa1dbe315df37a3725b0c241888509766d856f9460f5d4937
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
$ docker pull redis@sha256:38ea68fadc02dd2ea9a929345d7e5ebdc2442c047150cfd64ed68df0bc903767
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36844634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3f696a9f23068ee7801fa2216721b6b29eb1680ed60a6dceb37c09d868ce388`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 16:15:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 04 Nov 2017 16:15:26 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 16:15:47 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 04 Nov 2017 16:15:47 GMT
ENV REDIS_VERSION=3.2.11
# Sat, 04 Nov 2017 16:15:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Sat, 04 Nov 2017 16:15:48 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Sat, 04 Nov 2017 16:16:28 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 16:16:29 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Nov 2017 16:16:29 GMT
VOLUME [/data]
# Sat, 04 Nov 2017 16:16:29 GMT
WORKDIR /data
# Sat, 04 Nov 2017 16:16:29 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 04 Nov 2017 16:16:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 16:16:30 GMT
EXPOSE 6379/tcp
# Sat, 04 Nov 2017 16:16:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f8341839ed6c0ca916876566d7193c33a80ae461cba558d85832436f59650`  
		Last Modified: Sat, 04 Nov 2017 16:22:06 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b9cdda7eb9fa2604e34311ddfbf9bb9e3b8a67d6c1668a9dc802f27855dcdd`  
		Last Modified: Sat, 04 Nov 2017 16:22:07 GMT  
		Size: 981.7 KB (981737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de9f02b4e2739f6dea1c7728e5db6cee6d8a810a6b547ebd8374942c4e51c2d`  
		Last Modified: Sat, 04 Nov 2017 16:22:07 GMT  
		Size: 5.7 MB (5746989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd716b63cf0687eb543ac8cb87836efa131a0de81757c4f7c52a9ac70b063499`  
		Last Modified: Sat, 04 Nov 2017 16:22:06 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95dff9cab78654f02cc84ccd42f67bea9c05d3856922f61e525d3e53a94fd67`  
		Last Modified: Sat, 04 Nov 2017 16:22:07 GMT  
		Size: 403.0 B  
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
$ docker pull redis@sha256:d70c9a31db5577ad4eeb33becead4153fb356c11fa0091038c2f066f14dcff09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3.2.11-32bit` - linux; amd64

```console
$ docker pull redis@sha256:d3e7c479e4c1333d8bb8581b8218265620ff7b5a9eee4c2a240f590ae3c0c5ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 MB (40706667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72ae2e656283abd266d491d52f3d19bbe5d3738a47bb4717c261fac88dee0d4a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 16:15:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 04 Nov 2017 16:15:26 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 16:15:47 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 04 Nov 2017 16:15:47 GMT
ENV REDIS_VERSION=3.2.11
# Sat, 04 Nov 2017 16:15:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Sat, 04 Nov 2017 16:15:48 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Sat, 04 Nov 2017 16:16:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:17:39 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 16:17:39 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Nov 2017 16:17:40 GMT
VOLUME [/data]
# Sat, 04 Nov 2017 16:17:40 GMT
WORKDIR /data
# Sat, 04 Nov 2017 16:17:40 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 04 Nov 2017 16:17:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 16:17:40 GMT
EXPOSE 6379/tcp
# Sat, 04 Nov 2017 16:17:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f8341839ed6c0ca916876566d7193c33a80ae461cba558d85832436f59650`  
		Last Modified: Sat, 04 Nov 2017 16:22:06 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b9cdda7eb9fa2604e34311ddfbf9bb9e3b8a67d6c1668a9dc802f27855dcdd`  
		Last Modified: Sat, 04 Nov 2017 16:22:07 GMT  
		Size: 981.7 KB (981737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d275c6b5f71cf7743f29a1552bfcdc6a2da8284fbba66b146abb6222d488f4`  
		Last Modified: Sat, 04 Nov 2017 16:23:29 GMT  
		Size: 4.4 MB (4378575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c4d1b8d281598caf1098b705b37252d48893130e3f6645bc8d7495ca2286cc`  
		Last Modified: Sat, 04 Nov 2017 16:23:28 GMT  
		Size: 5.2 MB (5230440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6e5f684428e04f52b64c9646a7e445f44d8d2232b28a7f244dd90e5e337ed2`  
		Last Modified: Sat, 04 Nov 2017 16:23:28 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4209f8cb0340ad3fc40b74420aecda15e125794ed03cc85e0a19af8b7a9cf36`  
		Last Modified: Sat, 04 Nov 2017 16:23:27 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.11-alpine`

```console
$ docker pull redis@sha256:0319876e3d7a8f570a2a6fc54051b1401d4484b46c7e4808a27cef2adcd9fc49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:3.2.11-alpine` - linux; amd64

```console
$ docker pull redis@sha256:69daaf0dc1886b982871ad286dd2d9816eac1234b76af7cd43c11d24ca9a4c12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7496393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f60c2c2ed49041f0bd8e31d62efb4ec6a7cd5aca4ee04656a70cd48b5e42cbb1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:11:21 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 01 Dec 2017 22:11:24 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 01 Dec 2017 22:11:24 GMT
ENV REDIS_VERSION=3.2.11
# Fri, 01 Dec 2017 22:11:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Fri, 01 Dec 2017 22:11:24 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Fri, 01 Dec 2017 22:11:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Fri, 01 Dec 2017 22:11:52 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:11:53 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:11:53 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:11:53 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:11:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:11:54 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:11:54 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c53d69ca3aed47d1db25335f3b3c89f755dc18f177ae7a70c4c8f70f8edcbd`  
		Last Modified: Fri, 01 Dec 2017 22:15:02 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbffccae30ef7a74b938eaa2aaed4b067a15e62d0dd059a063bdf272defae8b`  
		Last Modified: Fri, 01 Dec 2017 22:15:02 GMT  
		Size: 8.2 KB (8179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee2491aba23bc567d81c17b198d8ed9b40adce4029a0e2f1e8d91bdc5436ebdc`  
		Last Modified: Fri, 01 Dec 2017 22:15:07 GMT  
		Size: 5.5 MB (5494964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9630844778dd191d91c4977a69ad472b092fbbfc56e879aaf8d6c8ce9a1b2a`  
		Last Modified: Fri, 01 Dec 2017 22:15:02 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:252a8b66705294c16d31fd6d7a21a979ab928034d91cdb51735cee450a4caf70`  
		Last Modified: Fri, 01 Dec 2017 22:15:02 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:a5da84b8f7a80e380d243bee2fea779b51be2c5c3175a1d52b88666812f852ea
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7629126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:526d5e0986598a85bef833b3c7eb339c3386273e8269dc770d46dfa71a68a256`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:24:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 05:24:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 05:24:21 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 26 Oct 2017 05:24:22 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 26 Oct 2017 05:24:22 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 26 Oct 2017 05:24:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Thu, 26 Oct 2017 05:24:44 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 26 Oct 2017 05:24:44 GMT
VOLUME [/data]
# Thu, 26 Oct 2017 05:24:45 GMT
WORKDIR /data
# Thu, 26 Oct 2017 05:24:45 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Thu, 26 Oct 2017 05:24:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 05:24:45 GMT
EXPOSE 6379/tcp
# Thu, 26 Oct 2017 05:24:46 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed5ccc911def388320cc35fabf3f26d6dbe3865f29cbc8ea4d6969afba892b6`  
		Last Modified: Thu, 26 Oct 2017 05:25:25 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb557aa00e602a24029e21b21fd124cee2b11be03a5d7c2c7a5bdd35d837a2c`  
		Last Modified: Thu, 26 Oct 2017 05:25:26 GMT  
		Size: 8.4 KB (8372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333282354ac5d74938fb750a3adea3f33c0b5f077d53d661ac19988e2bdc4e7c`  
		Last Modified: Thu, 26 Oct 2017 05:25:27 GMT  
		Size: 5.7 MB (5652784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a28f0879b62dc750332363fea24bd9b8c13184c92b4078b6fb1a432b9ecc07a`  
		Last Modified: Thu, 26 Oct 2017 05:25:25 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff9dc7cb3112c0957cf58882450aa33bae9c950c51b846be7b4844eee33eaa2`  
		Last Modified: Thu, 26 Oct 2017 05:25:25 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:3dc8b717d7e549822c02752a8e7b8d34edcb7a22ffc42c403821be09a5451de7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7684148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7cc449971ca9e46d45672df7d5c23cdff31dd1689108fe9598c453574bb7c9b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 12:25:55 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 12:25:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 12:26:00 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 26 Oct 2017 12:26:00 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 26 Oct 2017 12:26:01 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 26 Oct 2017 12:26:35 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Thu, 26 Oct 2017 12:26:37 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 26 Oct 2017 12:26:38 GMT
VOLUME [/data]
# Thu, 26 Oct 2017 12:26:38 GMT
WORKDIR /data
# Thu, 26 Oct 2017 12:26:39 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Thu, 26 Oct 2017 12:26:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 12:26:41 GMT
EXPOSE 6379/tcp
# Thu, 26 Oct 2017 12:26:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7b73d0b3160845d84c0e4f5e413bc6c426a1909c0f2d1fbb2829218a2e21e3`  
		Last Modified: Thu, 26 Oct 2017 12:28:49 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fef4495152ec2827feab445efc6a8ce14f21f61f1aab617f08ca02ddcfaf4cb`  
		Last Modified: Thu, 26 Oct 2017 12:28:48 GMT  
		Size: 8.3 KB (8297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25518b69f378aedbcdf31fd7f3da48dc8fe43cb32580e8f352bc626d02ddd3c`  
		Last Modified: Thu, 26 Oct 2017 12:28:51 GMT  
		Size: 5.8 MB (5759174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c998ba49e52251cb11971bdc8a8bd7fd9b49c345f8b26c497b04ea6d7162deea`  
		Last Modified: Thu, 26 Oct 2017 12:28:48 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:084768236fd05c9cb454e112903ac38b830f220ba94c00dae4896d3505496074`  
		Last Modified: Thu, 26 Oct 2017 12:28:49 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11-alpine` - linux; 386

```console
$ docker pull redis@sha256:1170ff309c0e8ad2a437a7f91772b4e8f4c6d2244e567a5b490bfa1d80698900
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7618971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58586aa82b770b499a6b19594af92f524915b29ed84f11ea6404b096de65f46d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 12:20:43 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 12:20:47 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 12:20:47 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 26 Oct 2017 12:20:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 26 Oct 2017 12:20:47 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 26 Oct 2017 12:21:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Thu, 26 Oct 2017 12:21:16 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 26 Oct 2017 12:21:16 GMT
VOLUME [/data]
# Thu, 26 Oct 2017 12:21:16 GMT
WORKDIR /data
# Thu, 26 Oct 2017 12:21:17 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Thu, 26 Oct 2017 12:21:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 12:21:17 GMT
EXPOSE 6379/tcp
# Thu, 26 Oct 2017 12:21:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc0092e2488972f59ebfb4ee46b20ae44b279b56a72db00fcc793d134652c77`  
		Last Modified: Thu, 26 Oct 2017 12:22:17 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7c3600a6050db7d3d16edf77e4aae56c6fc6d8dd8359260697bdcb746e1591`  
		Last Modified: Thu, 26 Oct 2017 12:22:17 GMT  
		Size: 8.3 KB (8304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fa4d004515ac566bfb4b6bb1e0c888e53fe182668a33a737d612c3ff57960bb`  
		Last Modified: Thu, 26 Oct 2017 12:22:17 GMT  
		Size: 5.6 MB (5563150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c579d94be55c9d836d7241503f5fc5eaaac957a6da4fcd9bf1338a35392d8e`  
		Last Modified: Thu, 26 Oct 2017 12:22:17 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6ae211618d9c3c22ae80143646342004da8c63f1dd9988abf164d2b6f434f5`  
		Last Modified: Thu, 26 Oct 2017 12:22:17 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:9420cbb3ce7ef8ea3827b2280bc061d9e5798fe7057cc114ce762b9437229c6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8022703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59032610895ada828c9376c405e6e3e04156e86c1ffe1a860b21c503a7f4f3cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:35:32 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 05:35:38 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 05:35:40 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 26 Oct 2017 05:35:41 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 26 Oct 2017 05:35:42 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 26 Oct 2017 05:36:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Thu, 26 Oct 2017 05:36:15 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 26 Oct 2017 05:36:17 GMT
VOLUME [/data]
# Thu, 26 Oct 2017 05:36:18 GMT
WORKDIR /data
# Thu, 26 Oct 2017 05:36:20 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Thu, 26 Oct 2017 05:36:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 05:36:24 GMT
EXPOSE 6379/tcp
# Thu, 26 Oct 2017 05:36:25 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3ebe7128dbea25409b23d4a494ae0111ad5bd8c25a0d6b1138a08be0cb339a`  
		Last Modified: Thu, 26 Oct 2017 05:37:33 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de77d1e048161d22a574862ad5b23c83b469a29ea7acd1a9f8277a5930b4f80`  
		Last Modified: Thu, 26 Oct 2017 05:37:33 GMT  
		Size: 9.1 KB (9058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d538d8175dc4d761e0a19befd3de1a4e4a79fcf0bfa6c3a211319d2edfe1c8`  
		Last Modified: Thu, 26 Oct 2017 05:37:36 GMT  
		Size: 6.0 MB (6003070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8637516ffd77c79d6ebf3a22fc8cccb01a7c8e1bfc990e95f8a356373a8f7d`  
		Last Modified: Thu, 26 Oct 2017 05:37:33 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f512bd4d22ce64df98b4beeebd3f632c760b6f3f594fcbaae24982b29839748`  
		Last Modified: Thu, 26 Oct 2017 05:37:33 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11-alpine` - linux; s390x

```console
$ docker pull redis@sha256:7094f82ef9b253a2afe5d87bbaf9ec70dd54f232f78285c93ab9b81162ca04eb
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8120684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08215e114a8455c98cb8954f1f6c9b261ef3bb111b9d255958c0ac29b50da07a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:24:32 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 05:24:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 05:24:34 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 26 Oct 2017 05:24:35 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 26 Oct 2017 05:24:35 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 26 Oct 2017 05:24:55 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Thu, 26 Oct 2017 05:24:56 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 26 Oct 2017 05:24:56 GMT
VOLUME [/data]
# Thu, 26 Oct 2017 05:24:56 GMT
WORKDIR /data
# Thu, 26 Oct 2017 05:24:56 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Thu, 26 Oct 2017 05:24:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 05:24:57 GMT
EXPOSE 6379/tcp
# Thu, 26 Oct 2017 05:24:57 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aadc88619c9ad71a095bb4de1d9bb26ba477d43141099ee566f10fbe45811cd`  
		Last Modified: Thu, 26 Oct 2017 05:25:42 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facc71eadb971db0206fdd767056d3bd71d32b4fdec59986d325a2ab02c0a4c7`  
		Last Modified: Thu, 26 Oct 2017 05:25:42 GMT  
		Size: 8.6 KB (8607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f445b1955f3309e6c2e3c5e44a8c8038b6e86c8724fb1c50313f7eb1cfd67d`  
		Last Modified: Thu, 26 Oct 2017 05:25:44 GMT  
		Size: 6.0 MB (6044693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce2c4010d331188b1f07de391c02f75356c49831d07e03de4ebde3b519dbcfea`  
		Last Modified: Thu, 26 Oct 2017 05:25:44 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45825e51f447a23d548ac31d30ac1fb9404318af99e3fab5768900687fda33e`  
		Last Modified: Thu, 26 Oct 2017 05:25:42 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-32bit`

```console
$ docker pull redis@sha256:d70c9a31db5577ad4eeb33becead4153fb356c11fa0091038c2f066f14dcff09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3.2-32bit` - linux; amd64

```console
$ docker pull redis@sha256:d3e7c479e4c1333d8bb8581b8218265620ff7b5a9eee4c2a240f590ae3c0c5ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 MB (40706667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72ae2e656283abd266d491d52f3d19bbe5d3738a47bb4717c261fac88dee0d4a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 16:15:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 04 Nov 2017 16:15:26 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 16:15:47 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 04 Nov 2017 16:15:47 GMT
ENV REDIS_VERSION=3.2.11
# Sat, 04 Nov 2017 16:15:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Sat, 04 Nov 2017 16:15:48 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Sat, 04 Nov 2017 16:16:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:17:39 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 16:17:39 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Nov 2017 16:17:40 GMT
VOLUME [/data]
# Sat, 04 Nov 2017 16:17:40 GMT
WORKDIR /data
# Sat, 04 Nov 2017 16:17:40 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 04 Nov 2017 16:17:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 16:17:40 GMT
EXPOSE 6379/tcp
# Sat, 04 Nov 2017 16:17:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f8341839ed6c0ca916876566d7193c33a80ae461cba558d85832436f59650`  
		Last Modified: Sat, 04 Nov 2017 16:22:06 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b9cdda7eb9fa2604e34311ddfbf9bb9e3b8a67d6c1668a9dc802f27855dcdd`  
		Last Modified: Sat, 04 Nov 2017 16:22:07 GMT  
		Size: 981.7 KB (981737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d275c6b5f71cf7743f29a1552bfcdc6a2da8284fbba66b146abb6222d488f4`  
		Last Modified: Sat, 04 Nov 2017 16:23:29 GMT  
		Size: 4.4 MB (4378575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c4d1b8d281598caf1098b705b37252d48893130e3f6645bc8d7495ca2286cc`  
		Last Modified: Sat, 04 Nov 2017 16:23:28 GMT  
		Size: 5.2 MB (5230440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6e5f684428e04f52b64c9646a7e445f44d8d2232b28a7f244dd90e5e337ed2`  
		Last Modified: Sat, 04 Nov 2017 16:23:28 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4209f8cb0340ad3fc40b74420aecda15e125794ed03cc85e0a19af8b7a9cf36`  
		Last Modified: Sat, 04 Nov 2017 16:23:27 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-alpine`

```console
$ docker pull redis@sha256:0319876e3d7a8f570a2a6fc54051b1401d4484b46c7e4808a27cef2adcd9fc49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:3.2-alpine` - linux; amd64

```console
$ docker pull redis@sha256:69daaf0dc1886b982871ad286dd2d9816eac1234b76af7cd43c11d24ca9a4c12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7496393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f60c2c2ed49041f0bd8e31d62efb4ec6a7cd5aca4ee04656a70cd48b5e42cbb1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:11:21 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 01 Dec 2017 22:11:24 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 01 Dec 2017 22:11:24 GMT
ENV REDIS_VERSION=3.2.11
# Fri, 01 Dec 2017 22:11:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Fri, 01 Dec 2017 22:11:24 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Fri, 01 Dec 2017 22:11:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Fri, 01 Dec 2017 22:11:52 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:11:53 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:11:53 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:11:53 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:11:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:11:54 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:11:54 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c53d69ca3aed47d1db25335f3b3c89f755dc18f177ae7a70c4c8f70f8edcbd`  
		Last Modified: Fri, 01 Dec 2017 22:15:02 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbffccae30ef7a74b938eaa2aaed4b067a15e62d0dd059a063bdf272defae8b`  
		Last Modified: Fri, 01 Dec 2017 22:15:02 GMT  
		Size: 8.2 KB (8179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee2491aba23bc567d81c17b198d8ed9b40adce4029a0e2f1e8d91bdc5436ebdc`  
		Last Modified: Fri, 01 Dec 2017 22:15:07 GMT  
		Size: 5.5 MB (5494964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9630844778dd191d91c4977a69ad472b092fbbfc56e879aaf8d6c8ce9a1b2a`  
		Last Modified: Fri, 01 Dec 2017 22:15:02 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:252a8b66705294c16d31fd6d7a21a979ab928034d91cdb51735cee450a4caf70`  
		Last Modified: Fri, 01 Dec 2017 22:15:02 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:a5da84b8f7a80e380d243bee2fea779b51be2c5c3175a1d52b88666812f852ea
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7629126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:526d5e0986598a85bef833b3c7eb339c3386273e8269dc770d46dfa71a68a256`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:24:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 05:24:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 05:24:21 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 26 Oct 2017 05:24:22 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 26 Oct 2017 05:24:22 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 26 Oct 2017 05:24:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Thu, 26 Oct 2017 05:24:44 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 26 Oct 2017 05:24:44 GMT
VOLUME [/data]
# Thu, 26 Oct 2017 05:24:45 GMT
WORKDIR /data
# Thu, 26 Oct 2017 05:24:45 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Thu, 26 Oct 2017 05:24:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 05:24:45 GMT
EXPOSE 6379/tcp
# Thu, 26 Oct 2017 05:24:46 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed5ccc911def388320cc35fabf3f26d6dbe3865f29cbc8ea4d6969afba892b6`  
		Last Modified: Thu, 26 Oct 2017 05:25:25 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb557aa00e602a24029e21b21fd124cee2b11be03a5d7c2c7a5bdd35d837a2c`  
		Last Modified: Thu, 26 Oct 2017 05:25:26 GMT  
		Size: 8.4 KB (8372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333282354ac5d74938fb750a3adea3f33c0b5f077d53d661ac19988e2bdc4e7c`  
		Last Modified: Thu, 26 Oct 2017 05:25:27 GMT  
		Size: 5.7 MB (5652784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a28f0879b62dc750332363fea24bd9b8c13184c92b4078b6fb1a432b9ecc07a`  
		Last Modified: Thu, 26 Oct 2017 05:25:25 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff9dc7cb3112c0957cf58882450aa33bae9c950c51b846be7b4844eee33eaa2`  
		Last Modified: Thu, 26 Oct 2017 05:25:25 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:3dc8b717d7e549822c02752a8e7b8d34edcb7a22ffc42c403821be09a5451de7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7684148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7cc449971ca9e46d45672df7d5c23cdff31dd1689108fe9598c453574bb7c9b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 12:25:55 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 12:25:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 12:26:00 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 26 Oct 2017 12:26:00 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 26 Oct 2017 12:26:01 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 26 Oct 2017 12:26:35 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Thu, 26 Oct 2017 12:26:37 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 26 Oct 2017 12:26:38 GMT
VOLUME [/data]
# Thu, 26 Oct 2017 12:26:38 GMT
WORKDIR /data
# Thu, 26 Oct 2017 12:26:39 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Thu, 26 Oct 2017 12:26:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 12:26:41 GMT
EXPOSE 6379/tcp
# Thu, 26 Oct 2017 12:26:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7b73d0b3160845d84c0e4f5e413bc6c426a1909c0f2d1fbb2829218a2e21e3`  
		Last Modified: Thu, 26 Oct 2017 12:28:49 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fef4495152ec2827feab445efc6a8ce14f21f61f1aab617f08ca02ddcfaf4cb`  
		Last Modified: Thu, 26 Oct 2017 12:28:48 GMT  
		Size: 8.3 KB (8297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25518b69f378aedbcdf31fd7f3da48dc8fe43cb32580e8f352bc626d02ddd3c`  
		Last Modified: Thu, 26 Oct 2017 12:28:51 GMT  
		Size: 5.8 MB (5759174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c998ba49e52251cb11971bdc8a8bd7fd9b49c345f8b26c497b04ea6d7162deea`  
		Last Modified: Thu, 26 Oct 2017 12:28:48 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:084768236fd05c9cb454e112903ac38b830f220ba94c00dae4896d3505496074`  
		Last Modified: Thu, 26 Oct 2017 12:28:49 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2-alpine` - linux; 386

```console
$ docker pull redis@sha256:1170ff309c0e8ad2a437a7f91772b4e8f4c6d2244e567a5b490bfa1d80698900
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7618971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58586aa82b770b499a6b19594af92f524915b29ed84f11ea6404b096de65f46d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 12:20:43 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 12:20:47 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 12:20:47 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 26 Oct 2017 12:20:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 26 Oct 2017 12:20:47 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 26 Oct 2017 12:21:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Thu, 26 Oct 2017 12:21:16 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 26 Oct 2017 12:21:16 GMT
VOLUME [/data]
# Thu, 26 Oct 2017 12:21:16 GMT
WORKDIR /data
# Thu, 26 Oct 2017 12:21:17 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Thu, 26 Oct 2017 12:21:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 12:21:17 GMT
EXPOSE 6379/tcp
# Thu, 26 Oct 2017 12:21:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc0092e2488972f59ebfb4ee46b20ae44b279b56a72db00fcc793d134652c77`  
		Last Modified: Thu, 26 Oct 2017 12:22:17 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7c3600a6050db7d3d16edf77e4aae56c6fc6d8dd8359260697bdcb746e1591`  
		Last Modified: Thu, 26 Oct 2017 12:22:17 GMT  
		Size: 8.3 KB (8304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fa4d004515ac566bfb4b6bb1e0c888e53fe182668a33a737d612c3ff57960bb`  
		Last Modified: Thu, 26 Oct 2017 12:22:17 GMT  
		Size: 5.6 MB (5563150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c579d94be55c9d836d7241503f5fc5eaaac957a6da4fcd9bf1338a35392d8e`  
		Last Modified: Thu, 26 Oct 2017 12:22:17 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6ae211618d9c3c22ae80143646342004da8c63f1dd9988abf164d2b6f434f5`  
		Last Modified: Thu, 26 Oct 2017 12:22:17 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:9420cbb3ce7ef8ea3827b2280bc061d9e5798fe7057cc114ce762b9437229c6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8022703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59032610895ada828c9376c405e6e3e04156e86c1ffe1a860b21c503a7f4f3cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:35:32 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 05:35:38 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 05:35:40 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 26 Oct 2017 05:35:41 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 26 Oct 2017 05:35:42 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 26 Oct 2017 05:36:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Thu, 26 Oct 2017 05:36:15 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 26 Oct 2017 05:36:17 GMT
VOLUME [/data]
# Thu, 26 Oct 2017 05:36:18 GMT
WORKDIR /data
# Thu, 26 Oct 2017 05:36:20 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Thu, 26 Oct 2017 05:36:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 05:36:24 GMT
EXPOSE 6379/tcp
# Thu, 26 Oct 2017 05:36:25 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3ebe7128dbea25409b23d4a494ae0111ad5bd8c25a0d6b1138a08be0cb339a`  
		Last Modified: Thu, 26 Oct 2017 05:37:33 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de77d1e048161d22a574862ad5b23c83b469a29ea7acd1a9f8277a5930b4f80`  
		Last Modified: Thu, 26 Oct 2017 05:37:33 GMT  
		Size: 9.1 KB (9058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d538d8175dc4d761e0a19befd3de1a4e4a79fcf0bfa6c3a211319d2edfe1c8`  
		Last Modified: Thu, 26 Oct 2017 05:37:36 GMT  
		Size: 6.0 MB (6003070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8637516ffd77c79d6ebf3a22fc8cccb01a7c8e1bfc990e95f8a356373a8f7d`  
		Last Modified: Thu, 26 Oct 2017 05:37:33 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f512bd4d22ce64df98b4beeebd3f632c760b6f3f594fcbaae24982b29839748`  
		Last Modified: Thu, 26 Oct 2017 05:37:33 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2-alpine` - linux; s390x

```console
$ docker pull redis@sha256:7094f82ef9b253a2afe5d87bbaf9ec70dd54f232f78285c93ab9b81162ca04eb
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8120684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08215e114a8455c98cb8954f1f6c9b261ef3bb111b9d255958c0ac29b50da07a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:24:32 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 05:24:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 05:24:34 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 26 Oct 2017 05:24:35 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 26 Oct 2017 05:24:35 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 26 Oct 2017 05:24:55 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Thu, 26 Oct 2017 05:24:56 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 26 Oct 2017 05:24:56 GMT
VOLUME [/data]
# Thu, 26 Oct 2017 05:24:56 GMT
WORKDIR /data
# Thu, 26 Oct 2017 05:24:56 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Thu, 26 Oct 2017 05:24:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 05:24:57 GMT
EXPOSE 6379/tcp
# Thu, 26 Oct 2017 05:24:57 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aadc88619c9ad71a095bb4de1d9bb26ba477d43141099ee566f10fbe45811cd`  
		Last Modified: Thu, 26 Oct 2017 05:25:42 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facc71eadb971db0206fdd767056d3bd71d32b4fdec59986d325a2ab02c0a4c7`  
		Last Modified: Thu, 26 Oct 2017 05:25:42 GMT  
		Size: 8.6 KB (8607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f445b1955f3309e6c2e3c5e44a8c8038b6e86c8724fb1c50313f7eb1cfd67d`  
		Last Modified: Thu, 26 Oct 2017 05:25:44 GMT  
		Size: 6.0 MB (6044693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce2c4010d331188b1f07de391c02f75356c49831d07e03de4ebde3b519dbcfea`  
		Last Modified: Thu, 26 Oct 2017 05:25:44 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45825e51f447a23d548ac31d30ac1fb9404318af99e3fab5768900687fda33e`  
		Last Modified: Thu, 26 Oct 2017 05:25:42 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:32bit`

```console
$ docker pull redis@sha256:fd4f4a47f63c4539c7be30589fcb634203509afa8173149a439fe89111108232
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

```console
$ docker pull redis@sha256:9334c9892beccbc2293874a5b6e121ac8b66bbb2ae0246313be8b330d8ee4151
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (42984276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:803b0744b03125fff4415f61c6a59df6769cdb618fb5ec112559c3d5dbedbce8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 16:15:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 04 Nov 2017 16:15:26 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 16:15:47 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 01 Dec 2017 22:12:01 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:12:01 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:12:01 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:13:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Dec 2017 22:13:56 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Dec 2017 22:13:59 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:13:59 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:14:00 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:14:00 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:14:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:14:00 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:14:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f8341839ed6c0ca916876566d7193c33a80ae461cba558d85832436f59650`  
		Last Modified: Sat, 04 Nov 2017 16:22:06 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b9cdda7eb9fa2604e34311ddfbf9bb9e3b8a67d6c1668a9dc802f27855dcdd`  
		Last Modified: Sat, 04 Nov 2017 16:22:07 GMT  
		Size: 981.7 KB (981737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ca2a4e8a2d0054cdeb9fa0ea5f7271e52f6287a01e09f516014fa36e8f2e20`  
		Last Modified: Fri, 01 Dec 2017 22:16:20 GMT  
		Size: 4.4 MB (4378599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd9fc2308e99f044415249133a865c07310381e3df0e26bab397ede8ed8e9f8`  
		Last Modified: Fri, 01 Dec 2017 22:16:22 GMT  
		Size: 7.5 MB (7508027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:644740b804c05b8316107bcdc57ae85fe8e2e163325867f35ce3c16685ed00f2`  
		Last Modified: Fri, 01 Dec 2017 22:16:19 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24dc081a7fa8f5b37c6b82d64bee1f794d94991ba58171f4cdf4dcad4ccd933`  
		Last Modified: Fri, 01 Dec 2017 22:16:19 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-32bit`

```console
$ docker pull redis@sha256:d70c9a31db5577ad4eeb33becead4153fb356c11fa0091038c2f066f14dcff09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3-32bit` - linux; amd64

```console
$ docker pull redis@sha256:d3e7c479e4c1333d8bb8581b8218265620ff7b5a9eee4c2a240f590ae3c0c5ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 MB (40706667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72ae2e656283abd266d491d52f3d19bbe5d3738a47bb4717c261fac88dee0d4a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 16:15:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 04 Nov 2017 16:15:26 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 16:15:47 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 04 Nov 2017 16:15:47 GMT
ENV REDIS_VERSION=3.2.11
# Sat, 04 Nov 2017 16:15:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Sat, 04 Nov 2017 16:15:48 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Sat, 04 Nov 2017 16:16:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:17:39 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 16:17:39 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Nov 2017 16:17:40 GMT
VOLUME [/data]
# Sat, 04 Nov 2017 16:17:40 GMT
WORKDIR /data
# Sat, 04 Nov 2017 16:17:40 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 04 Nov 2017 16:17:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 16:17:40 GMT
EXPOSE 6379/tcp
# Sat, 04 Nov 2017 16:17:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f8341839ed6c0ca916876566d7193c33a80ae461cba558d85832436f59650`  
		Last Modified: Sat, 04 Nov 2017 16:22:06 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b9cdda7eb9fa2604e34311ddfbf9bb9e3b8a67d6c1668a9dc802f27855dcdd`  
		Last Modified: Sat, 04 Nov 2017 16:22:07 GMT  
		Size: 981.7 KB (981737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d275c6b5f71cf7743f29a1552bfcdc6a2da8284fbba66b146abb6222d488f4`  
		Last Modified: Sat, 04 Nov 2017 16:23:29 GMT  
		Size: 4.4 MB (4378575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c4d1b8d281598caf1098b705b37252d48893130e3f6645bc8d7495ca2286cc`  
		Last Modified: Sat, 04 Nov 2017 16:23:28 GMT  
		Size: 5.2 MB (5230440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6e5f684428e04f52b64c9646a7e445f44d8d2232b28a7f244dd90e5e337ed2`  
		Last Modified: Sat, 04 Nov 2017 16:23:28 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4209f8cb0340ad3fc40b74420aecda15e125794ed03cc85e0a19af8b7a9cf36`  
		Last Modified: Sat, 04 Nov 2017 16:23:27 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-alpine`

```console
$ docker pull redis@sha256:0319876e3d7a8f570a2a6fc54051b1401d4484b46c7e4808a27cef2adcd9fc49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:3-alpine` - linux; amd64

```console
$ docker pull redis@sha256:69daaf0dc1886b982871ad286dd2d9816eac1234b76af7cd43c11d24ca9a4c12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7496393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f60c2c2ed49041f0bd8e31d62efb4ec6a7cd5aca4ee04656a70cd48b5e42cbb1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:11:21 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 01 Dec 2017 22:11:24 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 01 Dec 2017 22:11:24 GMT
ENV REDIS_VERSION=3.2.11
# Fri, 01 Dec 2017 22:11:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Fri, 01 Dec 2017 22:11:24 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Fri, 01 Dec 2017 22:11:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Fri, 01 Dec 2017 22:11:52 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:11:53 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:11:53 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:11:53 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:11:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:11:54 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:11:54 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c53d69ca3aed47d1db25335f3b3c89f755dc18f177ae7a70c4c8f70f8edcbd`  
		Last Modified: Fri, 01 Dec 2017 22:15:02 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbffccae30ef7a74b938eaa2aaed4b067a15e62d0dd059a063bdf272defae8b`  
		Last Modified: Fri, 01 Dec 2017 22:15:02 GMT  
		Size: 8.2 KB (8179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee2491aba23bc567d81c17b198d8ed9b40adce4029a0e2f1e8d91bdc5436ebdc`  
		Last Modified: Fri, 01 Dec 2017 22:15:07 GMT  
		Size: 5.5 MB (5494964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9630844778dd191d91c4977a69ad472b092fbbfc56e879aaf8d6c8ce9a1b2a`  
		Last Modified: Fri, 01 Dec 2017 22:15:02 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:252a8b66705294c16d31fd6d7a21a979ab928034d91cdb51735cee450a4caf70`  
		Last Modified: Fri, 01 Dec 2017 22:15:02 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:a5da84b8f7a80e380d243bee2fea779b51be2c5c3175a1d52b88666812f852ea
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7629126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:526d5e0986598a85bef833b3c7eb339c3386273e8269dc770d46dfa71a68a256`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:24:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 05:24:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 05:24:21 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 26 Oct 2017 05:24:22 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 26 Oct 2017 05:24:22 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 26 Oct 2017 05:24:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Thu, 26 Oct 2017 05:24:44 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 26 Oct 2017 05:24:44 GMT
VOLUME [/data]
# Thu, 26 Oct 2017 05:24:45 GMT
WORKDIR /data
# Thu, 26 Oct 2017 05:24:45 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Thu, 26 Oct 2017 05:24:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 05:24:45 GMT
EXPOSE 6379/tcp
# Thu, 26 Oct 2017 05:24:46 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed5ccc911def388320cc35fabf3f26d6dbe3865f29cbc8ea4d6969afba892b6`  
		Last Modified: Thu, 26 Oct 2017 05:25:25 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb557aa00e602a24029e21b21fd124cee2b11be03a5d7c2c7a5bdd35d837a2c`  
		Last Modified: Thu, 26 Oct 2017 05:25:26 GMT  
		Size: 8.4 KB (8372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333282354ac5d74938fb750a3adea3f33c0b5f077d53d661ac19988e2bdc4e7c`  
		Last Modified: Thu, 26 Oct 2017 05:25:27 GMT  
		Size: 5.7 MB (5652784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a28f0879b62dc750332363fea24bd9b8c13184c92b4078b6fb1a432b9ecc07a`  
		Last Modified: Thu, 26 Oct 2017 05:25:25 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff9dc7cb3112c0957cf58882450aa33bae9c950c51b846be7b4844eee33eaa2`  
		Last Modified: Thu, 26 Oct 2017 05:25:25 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:3dc8b717d7e549822c02752a8e7b8d34edcb7a22ffc42c403821be09a5451de7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7684148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7cc449971ca9e46d45672df7d5c23cdff31dd1689108fe9598c453574bb7c9b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 12:25:55 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 12:25:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 12:26:00 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 26 Oct 2017 12:26:00 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 26 Oct 2017 12:26:01 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 26 Oct 2017 12:26:35 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Thu, 26 Oct 2017 12:26:37 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 26 Oct 2017 12:26:38 GMT
VOLUME [/data]
# Thu, 26 Oct 2017 12:26:38 GMT
WORKDIR /data
# Thu, 26 Oct 2017 12:26:39 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Thu, 26 Oct 2017 12:26:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 12:26:41 GMT
EXPOSE 6379/tcp
# Thu, 26 Oct 2017 12:26:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7b73d0b3160845d84c0e4f5e413bc6c426a1909c0f2d1fbb2829218a2e21e3`  
		Last Modified: Thu, 26 Oct 2017 12:28:49 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fef4495152ec2827feab445efc6a8ce14f21f61f1aab617f08ca02ddcfaf4cb`  
		Last Modified: Thu, 26 Oct 2017 12:28:48 GMT  
		Size: 8.3 KB (8297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25518b69f378aedbcdf31fd7f3da48dc8fe43cb32580e8f352bc626d02ddd3c`  
		Last Modified: Thu, 26 Oct 2017 12:28:51 GMT  
		Size: 5.8 MB (5759174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c998ba49e52251cb11971bdc8a8bd7fd9b49c345f8b26c497b04ea6d7162deea`  
		Last Modified: Thu, 26 Oct 2017 12:28:48 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:084768236fd05c9cb454e112903ac38b830f220ba94c00dae4896d3505496074`  
		Last Modified: Thu, 26 Oct 2017 12:28:49 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3-alpine` - linux; 386

```console
$ docker pull redis@sha256:1170ff309c0e8ad2a437a7f91772b4e8f4c6d2244e567a5b490bfa1d80698900
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7618971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58586aa82b770b499a6b19594af92f524915b29ed84f11ea6404b096de65f46d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 12:20:43 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 12:20:47 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 12:20:47 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 26 Oct 2017 12:20:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 26 Oct 2017 12:20:47 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 26 Oct 2017 12:21:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Thu, 26 Oct 2017 12:21:16 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 26 Oct 2017 12:21:16 GMT
VOLUME [/data]
# Thu, 26 Oct 2017 12:21:16 GMT
WORKDIR /data
# Thu, 26 Oct 2017 12:21:17 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Thu, 26 Oct 2017 12:21:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 12:21:17 GMT
EXPOSE 6379/tcp
# Thu, 26 Oct 2017 12:21:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc0092e2488972f59ebfb4ee46b20ae44b279b56a72db00fcc793d134652c77`  
		Last Modified: Thu, 26 Oct 2017 12:22:17 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7c3600a6050db7d3d16edf77e4aae56c6fc6d8dd8359260697bdcb746e1591`  
		Last Modified: Thu, 26 Oct 2017 12:22:17 GMT  
		Size: 8.3 KB (8304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fa4d004515ac566bfb4b6bb1e0c888e53fe182668a33a737d612c3ff57960bb`  
		Last Modified: Thu, 26 Oct 2017 12:22:17 GMT  
		Size: 5.6 MB (5563150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c579d94be55c9d836d7241503f5fc5eaaac957a6da4fcd9bf1338a35392d8e`  
		Last Modified: Thu, 26 Oct 2017 12:22:17 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6ae211618d9c3c22ae80143646342004da8c63f1dd9988abf164d2b6f434f5`  
		Last Modified: Thu, 26 Oct 2017 12:22:17 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:9420cbb3ce7ef8ea3827b2280bc061d9e5798fe7057cc114ce762b9437229c6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8022703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59032610895ada828c9376c405e6e3e04156e86c1ffe1a860b21c503a7f4f3cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:35:32 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 05:35:38 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 05:35:40 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 26 Oct 2017 05:35:41 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 26 Oct 2017 05:35:42 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 26 Oct 2017 05:36:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Thu, 26 Oct 2017 05:36:15 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 26 Oct 2017 05:36:17 GMT
VOLUME [/data]
# Thu, 26 Oct 2017 05:36:18 GMT
WORKDIR /data
# Thu, 26 Oct 2017 05:36:20 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Thu, 26 Oct 2017 05:36:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 05:36:24 GMT
EXPOSE 6379/tcp
# Thu, 26 Oct 2017 05:36:25 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3ebe7128dbea25409b23d4a494ae0111ad5bd8c25a0d6b1138a08be0cb339a`  
		Last Modified: Thu, 26 Oct 2017 05:37:33 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de77d1e048161d22a574862ad5b23c83b469a29ea7acd1a9f8277a5930b4f80`  
		Last Modified: Thu, 26 Oct 2017 05:37:33 GMT  
		Size: 9.1 KB (9058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d538d8175dc4d761e0a19befd3de1a4e4a79fcf0bfa6c3a211319d2edfe1c8`  
		Last Modified: Thu, 26 Oct 2017 05:37:36 GMT  
		Size: 6.0 MB (6003070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8637516ffd77c79d6ebf3a22fc8cccb01a7c8e1bfc990e95f8a356373a8f7d`  
		Last Modified: Thu, 26 Oct 2017 05:37:33 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f512bd4d22ce64df98b4beeebd3f632c760b6f3f594fcbaae24982b29839748`  
		Last Modified: Thu, 26 Oct 2017 05:37:33 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3-alpine` - linux; s390x

```console
$ docker pull redis@sha256:7094f82ef9b253a2afe5d87bbaf9ec70dd54f232f78285c93ab9b81162ca04eb
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8120684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08215e114a8455c98cb8954f1f6c9b261ef3bb111b9d255958c0ac29b50da07a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:24:32 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 05:24:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 05:24:34 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 26 Oct 2017 05:24:35 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 26 Oct 2017 05:24:35 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 26 Oct 2017 05:24:55 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Thu, 26 Oct 2017 05:24:56 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 26 Oct 2017 05:24:56 GMT
VOLUME [/data]
# Thu, 26 Oct 2017 05:24:56 GMT
WORKDIR /data
# Thu, 26 Oct 2017 05:24:56 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Thu, 26 Oct 2017 05:24:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 05:24:57 GMT
EXPOSE 6379/tcp
# Thu, 26 Oct 2017 05:24:57 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aadc88619c9ad71a095bb4de1d9bb26ba477d43141099ee566f10fbe45811cd`  
		Last Modified: Thu, 26 Oct 2017 05:25:42 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facc71eadb971db0206fdd767056d3bd71d32b4fdec59986d325a2ab02c0a4c7`  
		Last Modified: Thu, 26 Oct 2017 05:25:42 GMT  
		Size: 8.6 KB (8607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f445b1955f3309e6c2e3c5e44a8c8038b6e86c8724fb1c50313f7eb1cfd67d`  
		Last Modified: Thu, 26 Oct 2017 05:25:44 GMT  
		Size: 6.0 MB (6044693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce2c4010d331188b1f07de391c02f75356c49831d07e03de4ebde3b519dbcfea`  
		Last Modified: Thu, 26 Oct 2017 05:25:44 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45825e51f447a23d548ac31d30ac1fb9404318af99e3fab5768900687fda33e`  
		Last Modified: Thu, 26 Oct 2017 05:25:42 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4`

```console
$ docker pull redis@sha256:182c8ebc0fe2d0b364b03596e13256cb0ed18b19a11d07e11a35e0d74d30a964
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
$ docker pull redis@sha256:78175fc7ec4622809837400af449ed2c7c05a9bbdf773d86cac2817dbbc29547
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39388452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5f9a9e182f4cab294367b5beb85c176d19511c23db9a2c04b221e6ff6ca9908`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 16:15:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 04 Nov 2017 16:15:26 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 16:15:47 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 01 Dec 2017 22:12:01 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:12:01 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:12:01 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:12:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Dec 2017 22:12:46 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:12:46 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:12:46 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:12:46 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:12:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:12:47 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:12:52 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f8341839ed6c0ca916876566d7193c33a80ae461cba558d85832436f59650`  
		Last Modified: Sat, 04 Nov 2017 16:22:06 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b9cdda7eb9fa2604e34311ddfbf9bb9e3b8a67d6c1668a9dc802f27855dcdd`  
		Last Modified: Sat, 04 Nov 2017 16:22:07 GMT  
		Size: 981.7 KB (981737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c82f73f66c7f3f18e90e6dca2322976d55da72ddc19ccd9c9a07a75bedc49b7`  
		Last Modified: Fri, 01 Dec 2017 22:15:39 GMT  
		Size: 8.3 MB (8290807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3632c5436ac3d35cd519bc9da1751606a6bd465e9e9c6ae950a571178c2d641`  
		Last Modified: Fri, 01 Dec 2017 22:15:37 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3e9840aa4b79fe3929fc6f83c84511828b573fb78669d5506cef9a8a87edd8`  
		Last Modified: Fri, 01 Dec 2017 22:15:37 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm variant v5

```console
$ docker pull redis@sha256:75b3fa0e6f19522310eecbda7ce40c2f90b098fba09aedb44335eb1cfd58a5a0
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37582254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b3c9512034b106d368a36d96ce55cdb60e33e8aff01f6b68cee1733a7105ee8`
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
# Sat, 02 Dec 2017 15:09:38 GMT
ENV REDIS_VERSION=4.0.5
# Sat, 02 Dec 2017 15:09:39 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Sat, 02 Dec 2017 15:09:39 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Sat, 02 Dec 2017 15:10:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 02 Dec 2017 15:10:45 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 02 Dec 2017 15:10:45 GMT
VOLUME [/data]
# Sat, 02 Dec 2017 15:10:46 GMT
WORKDIR /data
# Sat, 02 Dec 2017 15:10:46 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 02 Dec 2017 15:10:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Dec 2017 15:10:46 GMT
EXPOSE 6379/tcp
# Sat, 02 Dec 2017 15:10:47 GMT
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
	-	`sha256:04d57aa71f0af24915a88b61d1dad3334bed6cefb43220ac4a21f69826520fd7`  
		Last Modified: Sat, 02 Dec 2017 15:11:08 GMT  
		Size: 8.2 MB (8184206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2543df38b80a65a9a981121d055b728f371d06cba8af9ae841bd9886e03e870`  
		Last Modified: Sat, 02 Dec 2017 15:11:06 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9d1ca7e5fa8a2718cc5425843740ba7d47f8940460623f11fc8bcdb9a1559d`  
		Last Modified: Sat, 02 Dec 2017 15:11:05 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm variant v7

```console
$ docker pull redis@sha256:b3552da06f864d91938f800b44442d1a30a9fa720ec15d356c19aeaa796355cf
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35161729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:126862a91b56545131a94561f9ef0ef98e055bd6d786231fb97c8be52450a8ac`
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
# Fri, 01 Dec 2017 22:26:54 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:26:54 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:26:55 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:27:55 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Dec 2017 22:27:56 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:27:56 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:27:57 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:27:57 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:27:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:27:58 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:27:58 GMT
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
	-	`sha256:866466ca73402f4c9b724d18e0688c56848ea7635ada8e264efe09805de031f7`  
		Last Modified: Fri, 01 Dec 2017 22:28:27 GMT  
		Size: 7.9 MB (7922028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8587f6302ff7f1b0a8dbe021517a882af286d630d0c022e96cb42fb2794d51`  
		Last Modified: Fri, 01 Dec 2017 22:28:24 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b7651e0b5c4e954e52668b83b8198386d8e1d27c240f57a7eb3b818d766836`  
		Last Modified: Fri, 01 Dec 2017 22:28:24 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:420ae0e3bb344f8a8d2059f6286dfcb9328e65b9e1e0f7f359f1ac5d8ae6f9c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36862491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:514024c66539efe4a39580ccc0356260825afdae6eaf529ef5d1310c12949f49`
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
# Fri, 01 Dec 2017 19:23:31 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 19:23:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 19:23:34 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 19:26:14 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Dec 2017 19:26:16 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 19:26:17 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 19:26:17 GMT
WORKDIR /data
# Fri, 01 Dec 2017 19:26:18 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 01 Dec 2017 19:26:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 19:26:20 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 19:26:20 GMT
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
	-	`sha256:ae1c8d095ad5784c909a93462870783d0e438138239c50cc50859d94f9e8b9b6`  
		Last Modified: Fri, 01 Dec 2017 19:28:14 GMT  
		Size: 8.4 MB (8430655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8821085efd9701c7901c95d2f49be4bc196b25b133b3d1fad4ccdeae02dc57fe`  
		Last Modified: Fri, 01 Dec 2017 19:28:12 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ace674017b514e90e48317cc41e990125e7e53d5808e2e4c26e064def374db`  
		Last Modified: Fri, 01 Dec 2017 19:28:11 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; 386

```console
$ docker pull redis@sha256:911e2e0e2b0e6104382490aeba40ae53913d9c25559d41cde273d5cb396b785e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38730454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cce076c26c30e5b8e2dc41d0ace2da312c99a868958e1ebc8ac5e5e829f87fb`
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
# Fri, 01 Dec 2017 22:26:39 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:26:39 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:26:39 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:27:37 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Dec 2017 22:27:38 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:27:38 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:27:38 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:27:39 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:27:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:27:39 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:27:39 GMT
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
	-	`sha256:b33705e86af8f5e43c2fa1924fba51b98c75a57f3d491a304c9a7e545cf2e526`  
		Last Modified: Fri, 01 Dec 2017 22:28:50 GMT  
		Size: 7.5 MB (7502620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42ccad835054ed30f401a9a8640325eb94e95c68fd2013e07ec3cb8ad5841a5`  
		Last Modified: Fri, 01 Dec 2017 22:28:49 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df08306fe99590a3913702ef5e3ac8a651f0735a253d7675ee0f0878c63ee649`  
		Last Modified: Fri, 01 Dec 2017 22:28:49 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; ppc64le

```console
$ docker pull redis@sha256:1845bb6fe4e76439158fe2fe63bf60f8f72944439c19540345fd0b65fba8dbd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.9 MB (38909708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9464c93759599fe8d8cabeb1ba18d567a7a010c08d5c7fa66dad04cd18b418d2`
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
# Fri, 01 Dec 2017 22:26:05 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:26:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:26:12 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:29:03 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Dec 2017 22:29:07 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:29:08 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:29:10 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:29:11 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:29:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:29:14 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:29:15 GMT
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
	-	`sha256:9abbf7f04d914fdfc3a77e8ee5175fb068f80a39836749dd038d171d2d9cad16`  
		Last Modified: Fri, 01 Dec 2017 22:30:43 GMT  
		Size: 8.6 MB (8649594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab649a228dcc98b137918837044cd8b8aaa00daae90d0699e732e4d9448c2e5a`  
		Last Modified: Fri, 01 Dec 2017 22:30:40 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6500b0c1d2cda48a4ae628622cfcc94cf8db36b2cb5264cf409b9f7d09b88d42`  
		Last Modified: Fri, 01 Dec 2017 22:30:40 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; s390x

```console
$ docker pull redis@sha256:3f1d42e13ec6615087f527face30ed4b5a3b25dc64c014459a3e25aeeb873e62
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 MB (40188142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c703c706d7d89513cc4ff558ee263235b239888fe01aeec7b8f766dc82a6266a`
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
# Fri, 01 Dec 2017 22:26:27 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:26:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:26:27 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:27:02 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Dec 2017 22:27:03 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:27:03 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:27:03 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:27:03 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:27:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:27:04 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:27:04 GMT
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
	-	`sha256:8e1e50034bdfc61452fd61d5c59e166171e7e1538b87bcc0e05e8f62618abfde`  
		Last Modified: Fri, 01 Dec 2017 22:27:53 GMT  
		Size: 8.9 MB (8924498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe549d3e4d7473d475df4d29978625e6d273471294466e7802761bf1f251834`  
		Last Modified: Fri, 01 Dec 2017 22:27:49 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9443c1bafec9a41246796078e3770145bb69d68fd8e306fd63cdaa18c0fbef66`  
		Last Modified: Fri, 01 Dec 2017 22:27:49 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0`

```console
$ docker pull redis@sha256:182c8ebc0fe2d0b364b03596e13256cb0ed18b19a11d07e11a35e0d74d30a964
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
$ docker pull redis@sha256:78175fc7ec4622809837400af449ed2c7c05a9bbdf773d86cac2817dbbc29547
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39388452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5f9a9e182f4cab294367b5beb85c176d19511c23db9a2c04b221e6ff6ca9908`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 16:15:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 04 Nov 2017 16:15:26 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 16:15:47 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 01 Dec 2017 22:12:01 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:12:01 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:12:01 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:12:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Dec 2017 22:12:46 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:12:46 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:12:46 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:12:46 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:12:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:12:47 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:12:52 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f8341839ed6c0ca916876566d7193c33a80ae461cba558d85832436f59650`  
		Last Modified: Sat, 04 Nov 2017 16:22:06 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b9cdda7eb9fa2604e34311ddfbf9bb9e3b8a67d6c1668a9dc802f27855dcdd`  
		Last Modified: Sat, 04 Nov 2017 16:22:07 GMT  
		Size: 981.7 KB (981737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c82f73f66c7f3f18e90e6dca2322976d55da72ddc19ccd9c9a07a75bedc49b7`  
		Last Modified: Fri, 01 Dec 2017 22:15:39 GMT  
		Size: 8.3 MB (8290807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3632c5436ac3d35cd519bc9da1751606a6bd465e9e9c6ae950a571178c2d641`  
		Last Modified: Fri, 01 Dec 2017 22:15:37 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3e9840aa4b79fe3929fc6f83c84511828b573fb78669d5506cef9a8a87edd8`  
		Last Modified: Fri, 01 Dec 2017 22:15:37 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm variant v5

```console
$ docker pull redis@sha256:75b3fa0e6f19522310eecbda7ce40c2f90b098fba09aedb44335eb1cfd58a5a0
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37582254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b3c9512034b106d368a36d96ce55cdb60e33e8aff01f6b68cee1733a7105ee8`
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
# Sat, 02 Dec 2017 15:09:38 GMT
ENV REDIS_VERSION=4.0.5
# Sat, 02 Dec 2017 15:09:39 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Sat, 02 Dec 2017 15:09:39 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Sat, 02 Dec 2017 15:10:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 02 Dec 2017 15:10:45 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 02 Dec 2017 15:10:45 GMT
VOLUME [/data]
# Sat, 02 Dec 2017 15:10:46 GMT
WORKDIR /data
# Sat, 02 Dec 2017 15:10:46 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 02 Dec 2017 15:10:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Dec 2017 15:10:46 GMT
EXPOSE 6379/tcp
# Sat, 02 Dec 2017 15:10:47 GMT
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
	-	`sha256:04d57aa71f0af24915a88b61d1dad3334bed6cefb43220ac4a21f69826520fd7`  
		Last Modified: Sat, 02 Dec 2017 15:11:08 GMT  
		Size: 8.2 MB (8184206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2543df38b80a65a9a981121d055b728f371d06cba8af9ae841bd9886e03e870`  
		Last Modified: Sat, 02 Dec 2017 15:11:06 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9d1ca7e5fa8a2718cc5425843740ba7d47f8940460623f11fc8bcdb9a1559d`  
		Last Modified: Sat, 02 Dec 2017 15:11:05 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm variant v7

```console
$ docker pull redis@sha256:b3552da06f864d91938f800b44442d1a30a9fa720ec15d356c19aeaa796355cf
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35161729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:126862a91b56545131a94561f9ef0ef98e055bd6d786231fb97c8be52450a8ac`
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
# Fri, 01 Dec 2017 22:26:54 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:26:54 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:26:55 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:27:55 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Dec 2017 22:27:56 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:27:56 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:27:57 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:27:57 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:27:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:27:58 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:27:58 GMT
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
	-	`sha256:866466ca73402f4c9b724d18e0688c56848ea7635ada8e264efe09805de031f7`  
		Last Modified: Fri, 01 Dec 2017 22:28:27 GMT  
		Size: 7.9 MB (7922028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8587f6302ff7f1b0a8dbe021517a882af286d630d0c022e96cb42fb2794d51`  
		Last Modified: Fri, 01 Dec 2017 22:28:24 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b7651e0b5c4e954e52668b83b8198386d8e1d27c240f57a7eb3b818d766836`  
		Last Modified: Fri, 01 Dec 2017 22:28:24 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:420ae0e3bb344f8a8d2059f6286dfcb9328e65b9e1e0f7f359f1ac5d8ae6f9c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36862491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:514024c66539efe4a39580ccc0356260825afdae6eaf529ef5d1310c12949f49`
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
# Fri, 01 Dec 2017 19:23:31 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 19:23:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 19:23:34 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 19:26:14 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Dec 2017 19:26:16 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 19:26:17 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 19:26:17 GMT
WORKDIR /data
# Fri, 01 Dec 2017 19:26:18 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 01 Dec 2017 19:26:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 19:26:20 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 19:26:20 GMT
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
	-	`sha256:ae1c8d095ad5784c909a93462870783d0e438138239c50cc50859d94f9e8b9b6`  
		Last Modified: Fri, 01 Dec 2017 19:28:14 GMT  
		Size: 8.4 MB (8430655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8821085efd9701c7901c95d2f49be4bc196b25b133b3d1fad4ccdeae02dc57fe`  
		Last Modified: Fri, 01 Dec 2017 19:28:12 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ace674017b514e90e48317cc41e990125e7e53d5808e2e4c26e064def374db`  
		Last Modified: Fri, 01 Dec 2017 19:28:11 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; 386

```console
$ docker pull redis@sha256:911e2e0e2b0e6104382490aeba40ae53913d9c25559d41cde273d5cb396b785e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38730454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cce076c26c30e5b8e2dc41d0ace2da312c99a868958e1ebc8ac5e5e829f87fb`
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
# Fri, 01 Dec 2017 22:26:39 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:26:39 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:26:39 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:27:37 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Dec 2017 22:27:38 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:27:38 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:27:38 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:27:39 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:27:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:27:39 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:27:39 GMT
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
	-	`sha256:b33705e86af8f5e43c2fa1924fba51b98c75a57f3d491a304c9a7e545cf2e526`  
		Last Modified: Fri, 01 Dec 2017 22:28:50 GMT  
		Size: 7.5 MB (7502620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42ccad835054ed30f401a9a8640325eb94e95c68fd2013e07ec3cb8ad5841a5`  
		Last Modified: Fri, 01 Dec 2017 22:28:49 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df08306fe99590a3913702ef5e3ac8a651f0735a253d7675ee0f0878c63ee649`  
		Last Modified: Fri, 01 Dec 2017 22:28:49 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; ppc64le

```console
$ docker pull redis@sha256:1845bb6fe4e76439158fe2fe63bf60f8f72944439c19540345fd0b65fba8dbd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.9 MB (38909708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9464c93759599fe8d8cabeb1ba18d567a7a010c08d5c7fa66dad04cd18b418d2`
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
# Fri, 01 Dec 2017 22:26:05 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:26:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:26:12 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:29:03 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Dec 2017 22:29:07 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:29:08 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:29:10 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:29:11 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:29:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:29:14 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:29:15 GMT
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
	-	`sha256:9abbf7f04d914fdfc3a77e8ee5175fb068f80a39836749dd038d171d2d9cad16`  
		Last Modified: Fri, 01 Dec 2017 22:30:43 GMT  
		Size: 8.6 MB (8649594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab649a228dcc98b137918837044cd8b8aaa00daae90d0699e732e4d9448c2e5a`  
		Last Modified: Fri, 01 Dec 2017 22:30:40 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6500b0c1d2cda48a4ae628622cfcc94cf8db36b2cb5264cf409b9f7d09b88d42`  
		Last Modified: Fri, 01 Dec 2017 22:30:40 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; s390x

```console
$ docker pull redis@sha256:3f1d42e13ec6615087f527face30ed4b5a3b25dc64c014459a3e25aeeb873e62
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 MB (40188142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c703c706d7d89513cc4ff558ee263235b239888fe01aeec7b8f766dc82a6266a`
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
# Fri, 01 Dec 2017 22:26:27 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:26:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:26:27 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:27:02 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Dec 2017 22:27:03 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:27:03 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:27:03 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:27:03 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:27:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:27:04 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:27:04 GMT
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
	-	`sha256:8e1e50034bdfc61452fd61d5c59e166171e7e1538b87bcc0e05e8f62618abfde`  
		Last Modified: Fri, 01 Dec 2017 22:27:53 GMT  
		Size: 8.9 MB (8924498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe549d3e4d7473d475df4d29978625e6d273471294466e7802761bf1f251834`  
		Last Modified: Fri, 01 Dec 2017 22:27:49 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9443c1bafec9a41246796078e3770145bb69d68fd8e306fd63cdaa18c0fbef66`  
		Last Modified: Fri, 01 Dec 2017 22:27:49 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-32bit`

```console
$ docker pull redis@sha256:fd4f4a47f63c4539c7be30589fcb634203509afa8173149a439fe89111108232
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0-32bit` - linux; amd64

```console
$ docker pull redis@sha256:9334c9892beccbc2293874a5b6e121ac8b66bbb2ae0246313be8b330d8ee4151
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (42984276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:803b0744b03125fff4415f61c6a59df6769cdb618fb5ec112559c3d5dbedbce8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 16:15:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 04 Nov 2017 16:15:26 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 16:15:47 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 01 Dec 2017 22:12:01 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:12:01 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:12:01 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:13:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Dec 2017 22:13:56 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Dec 2017 22:13:59 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:13:59 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:14:00 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:14:00 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:14:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:14:00 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:14:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f8341839ed6c0ca916876566d7193c33a80ae461cba558d85832436f59650`  
		Last Modified: Sat, 04 Nov 2017 16:22:06 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b9cdda7eb9fa2604e34311ddfbf9bb9e3b8a67d6c1668a9dc802f27855dcdd`  
		Last Modified: Sat, 04 Nov 2017 16:22:07 GMT  
		Size: 981.7 KB (981737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ca2a4e8a2d0054cdeb9fa0ea5f7271e52f6287a01e09f516014fa36e8f2e20`  
		Last Modified: Fri, 01 Dec 2017 22:16:20 GMT  
		Size: 4.4 MB (4378599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd9fc2308e99f044415249133a865c07310381e3df0e26bab397ede8ed8e9f8`  
		Last Modified: Fri, 01 Dec 2017 22:16:22 GMT  
		Size: 7.5 MB (7508027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:644740b804c05b8316107bcdc57ae85fe8e2e163325867f35ce3c16685ed00f2`  
		Last Modified: Fri, 01 Dec 2017 22:16:19 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24dc081a7fa8f5b37c6b82d64bee1f794d94991ba58171f4cdf4dcad4ccd933`  
		Last Modified: Fri, 01 Dec 2017 22:16:19 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.5`

```console
$ docker pull redis@sha256:182c8ebc0fe2d0b364b03596e13256cb0ed18b19a11d07e11a35e0d74d30a964
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

### `redis:4.0.5` - linux; amd64

```console
$ docker pull redis@sha256:78175fc7ec4622809837400af449ed2c7c05a9bbdf773d86cac2817dbbc29547
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39388452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5f9a9e182f4cab294367b5beb85c176d19511c23db9a2c04b221e6ff6ca9908`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 16:15:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 04 Nov 2017 16:15:26 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 16:15:47 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 01 Dec 2017 22:12:01 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:12:01 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:12:01 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:12:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Dec 2017 22:12:46 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:12:46 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:12:46 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:12:46 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:12:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:12:47 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:12:52 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f8341839ed6c0ca916876566d7193c33a80ae461cba558d85832436f59650`  
		Last Modified: Sat, 04 Nov 2017 16:22:06 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b9cdda7eb9fa2604e34311ddfbf9bb9e3b8a67d6c1668a9dc802f27855dcdd`  
		Last Modified: Sat, 04 Nov 2017 16:22:07 GMT  
		Size: 981.7 KB (981737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c82f73f66c7f3f18e90e6dca2322976d55da72ddc19ccd9c9a07a75bedc49b7`  
		Last Modified: Fri, 01 Dec 2017 22:15:39 GMT  
		Size: 8.3 MB (8290807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3632c5436ac3d35cd519bc9da1751606a6bd465e9e9c6ae950a571178c2d641`  
		Last Modified: Fri, 01 Dec 2017 22:15:37 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3e9840aa4b79fe3929fc6f83c84511828b573fb78669d5506cef9a8a87edd8`  
		Last Modified: Fri, 01 Dec 2017 22:15:37 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.5` - linux; arm variant v5

```console
$ docker pull redis@sha256:75b3fa0e6f19522310eecbda7ce40c2f90b098fba09aedb44335eb1cfd58a5a0
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37582254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b3c9512034b106d368a36d96ce55cdb60e33e8aff01f6b68cee1733a7105ee8`
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
# Sat, 02 Dec 2017 15:09:38 GMT
ENV REDIS_VERSION=4.0.5
# Sat, 02 Dec 2017 15:09:39 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Sat, 02 Dec 2017 15:09:39 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Sat, 02 Dec 2017 15:10:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 02 Dec 2017 15:10:45 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 02 Dec 2017 15:10:45 GMT
VOLUME [/data]
# Sat, 02 Dec 2017 15:10:46 GMT
WORKDIR /data
# Sat, 02 Dec 2017 15:10:46 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 02 Dec 2017 15:10:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Dec 2017 15:10:46 GMT
EXPOSE 6379/tcp
# Sat, 02 Dec 2017 15:10:47 GMT
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
	-	`sha256:04d57aa71f0af24915a88b61d1dad3334bed6cefb43220ac4a21f69826520fd7`  
		Last Modified: Sat, 02 Dec 2017 15:11:08 GMT  
		Size: 8.2 MB (8184206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2543df38b80a65a9a981121d055b728f371d06cba8af9ae841bd9886e03e870`  
		Last Modified: Sat, 02 Dec 2017 15:11:06 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9d1ca7e5fa8a2718cc5425843740ba7d47f8940460623f11fc8bcdb9a1559d`  
		Last Modified: Sat, 02 Dec 2017 15:11:05 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.5` - linux; arm variant v7

```console
$ docker pull redis@sha256:b3552da06f864d91938f800b44442d1a30a9fa720ec15d356c19aeaa796355cf
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35161729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:126862a91b56545131a94561f9ef0ef98e055bd6d786231fb97c8be52450a8ac`
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
# Fri, 01 Dec 2017 22:26:54 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:26:54 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:26:55 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:27:55 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Dec 2017 22:27:56 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:27:56 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:27:57 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:27:57 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:27:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:27:58 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:27:58 GMT
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
	-	`sha256:866466ca73402f4c9b724d18e0688c56848ea7635ada8e264efe09805de031f7`  
		Last Modified: Fri, 01 Dec 2017 22:28:27 GMT  
		Size: 7.9 MB (7922028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8587f6302ff7f1b0a8dbe021517a882af286d630d0c022e96cb42fb2794d51`  
		Last Modified: Fri, 01 Dec 2017 22:28:24 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b7651e0b5c4e954e52668b83b8198386d8e1d27c240f57a7eb3b818d766836`  
		Last Modified: Fri, 01 Dec 2017 22:28:24 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.5` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:420ae0e3bb344f8a8d2059f6286dfcb9328e65b9e1e0f7f359f1ac5d8ae6f9c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36862491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:514024c66539efe4a39580ccc0356260825afdae6eaf529ef5d1310c12949f49`
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
# Fri, 01 Dec 2017 19:23:31 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 19:23:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 19:23:34 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 19:26:14 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Dec 2017 19:26:16 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 19:26:17 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 19:26:17 GMT
WORKDIR /data
# Fri, 01 Dec 2017 19:26:18 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 01 Dec 2017 19:26:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 19:26:20 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 19:26:20 GMT
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
	-	`sha256:ae1c8d095ad5784c909a93462870783d0e438138239c50cc50859d94f9e8b9b6`  
		Last Modified: Fri, 01 Dec 2017 19:28:14 GMT  
		Size: 8.4 MB (8430655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8821085efd9701c7901c95d2f49be4bc196b25b133b3d1fad4ccdeae02dc57fe`  
		Last Modified: Fri, 01 Dec 2017 19:28:12 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ace674017b514e90e48317cc41e990125e7e53d5808e2e4c26e064def374db`  
		Last Modified: Fri, 01 Dec 2017 19:28:11 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.5` - linux; 386

```console
$ docker pull redis@sha256:911e2e0e2b0e6104382490aeba40ae53913d9c25559d41cde273d5cb396b785e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38730454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cce076c26c30e5b8e2dc41d0ace2da312c99a868958e1ebc8ac5e5e829f87fb`
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
# Fri, 01 Dec 2017 22:26:39 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:26:39 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:26:39 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:27:37 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Dec 2017 22:27:38 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:27:38 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:27:38 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:27:39 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:27:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:27:39 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:27:39 GMT
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
	-	`sha256:b33705e86af8f5e43c2fa1924fba51b98c75a57f3d491a304c9a7e545cf2e526`  
		Last Modified: Fri, 01 Dec 2017 22:28:50 GMT  
		Size: 7.5 MB (7502620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42ccad835054ed30f401a9a8640325eb94e95c68fd2013e07ec3cb8ad5841a5`  
		Last Modified: Fri, 01 Dec 2017 22:28:49 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df08306fe99590a3913702ef5e3ac8a651f0735a253d7675ee0f0878c63ee649`  
		Last Modified: Fri, 01 Dec 2017 22:28:49 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.5` - linux; ppc64le

```console
$ docker pull redis@sha256:1845bb6fe4e76439158fe2fe63bf60f8f72944439c19540345fd0b65fba8dbd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.9 MB (38909708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9464c93759599fe8d8cabeb1ba18d567a7a010c08d5c7fa66dad04cd18b418d2`
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
# Fri, 01 Dec 2017 22:26:05 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:26:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:26:12 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:29:03 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Dec 2017 22:29:07 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:29:08 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:29:10 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:29:11 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:29:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:29:14 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:29:15 GMT
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
	-	`sha256:9abbf7f04d914fdfc3a77e8ee5175fb068f80a39836749dd038d171d2d9cad16`  
		Last Modified: Fri, 01 Dec 2017 22:30:43 GMT  
		Size: 8.6 MB (8649594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab649a228dcc98b137918837044cd8b8aaa00daae90d0699e732e4d9448c2e5a`  
		Last Modified: Fri, 01 Dec 2017 22:30:40 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6500b0c1d2cda48a4ae628622cfcc94cf8db36b2cb5264cf409b9f7d09b88d42`  
		Last Modified: Fri, 01 Dec 2017 22:30:40 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.5` - linux; s390x

```console
$ docker pull redis@sha256:3f1d42e13ec6615087f527face30ed4b5a3b25dc64c014459a3e25aeeb873e62
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 MB (40188142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c703c706d7d89513cc4ff558ee263235b239888fe01aeec7b8f766dc82a6266a`
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
# Fri, 01 Dec 2017 22:26:27 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:26:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:26:27 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:27:02 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Dec 2017 22:27:03 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:27:03 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:27:03 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:27:03 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:27:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:27:04 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:27:04 GMT
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
	-	`sha256:8e1e50034bdfc61452fd61d5c59e166171e7e1538b87bcc0e05e8f62618abfde`  
		Last Modified: Fri, 01 Dec 2017 22:27:53 GMT  
		Size: 8.9 MB (8924498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe549d3e4d7473d475df4d29978625e6d273471294466e7802761bf1f251834`  
		Last Modified: Fri, 01 Dec 2017 22:27:49 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9443c1bafec9a41246796078e3770145bb69d68fd8e306fd63cdaa18c0fbef66`  
		Last Modified: Fri, 01 Dec 2017 22:27:49 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.5-32bit`

```console
$ docker pull redis@sha256:fd4f4a47f63c4539c7be30589fcb634203509afa8173149a439fe89111108232
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0.5-32bit` - linux; amd64

```console
$ docker pull redis@sha256:9334c9892beccbc2293874a5b6e121ac8b66bbb2ae0246313be8b330d8ee4151
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (42984276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:803b0744b03125fff4415f61c6a59df6769cdb618fb5ec112559c3d5dbedbce8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 16:15:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 04 Nov 2017 16:15:26 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 16:15:47 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 01 Dec 2017 22:12:01 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:12:01 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:12:01 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:13:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Dec 2017 22:13:56 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Dec 2017 22:13:59 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:13:59 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:14:00 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:14:00 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:14:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:14:00 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:14:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f8341839ed6c0ca916876566d7193c33a80ae461cba558d85832436f59650`  
		Last Modified: Sat, 04 Nov 2017 16:22:06 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b9cdda7eb9fa2604e34311ddfbf9bb9e3b8a67d6c1668a9dc802f27855dcdd`  
		Last Modified: Sat, 04 Nov 2017 16:22:07 GMT  
		Size: 981.7 KB (981737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ca2a4e8a2d0054cdeb9fa0ea5f7271e52f6287a01e09f516014fa36e8f2e20`  
		Last Modified: Fri, 01 Dec 2017 22:16:20 GMT  
		Size: 4.4 MB (4378599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd9fc2308e99f044415249133a865c07310381e3df0e26bab397ede8ed8e9f8`  
		Last Modified: Fri, 01 Dec 2017 22:16:22 GMT  
		Size: 7.5 MB (7508027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:644740b804c05b8316107bcdc57ae85fe8e2e163325867f35ce3c16685ed00f2`  
		Last Modified: Fri, 01 Dec 2017 22:16:19 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24dc081a7fa8f5b37c6b82d64bee1f794d94991ba58171f4cdf4dcad4ccd933`  
		Last Modified: Fri, 01 Dec 2017 22:16:19 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.5-alpine`

```console
$ docker pull redis@sha256:e7775fbdf73827d741596774b609642ad53bc67885b3f3bccbf720584b85e818
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:4.0.5-alpine` - linux; amd64

```console
$ docker pull redis@sha256:212d3e44198658788ef5b81a8b33054eeaa81e7b08ec5550d98c1e833857e028
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.1 MB (10093229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba3df185d5ea4cae3b5da690301605ac96199732bab4edf46f7bafec43dbcb1f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:11:21 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 01 Dec 2017 22:11:24 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 01 Dec 2017 22:14:15 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:14:15 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:14:15 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:14:45 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Fri, 01 Dec 2017 22:14:45 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:14:46 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:14:46 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:14:46 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:14:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:14:47 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:14:47 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c53d69ca3aed47d1db25335f3b3c89f755dc18f177ae7a70c4c8f70f8edcbd`  
		Last Modified: Fri, 01 Dec 2017 22:15:02 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbffccae30ef7a74b938eaa2aaed4b067a15e62d0dd059a063bdf272defae8b`  
		Last Modified: Fri, 01 Dec 2017 22:15:02 GMT  
		Size: 8.2 KB (8179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e070aa3b2f1b0528e946d7e2662b1bf0fb447dae7d624ad0e9799edc6c38b68`  
		Last Modified: Fri, 01 Dec 2017 22:17:03 GMT  
		Size: 8.1 MB (8091800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7d4e53fbda7ec706176c4bc3755fda1ad79e1614b30c323086340af6f5f91e`  
		Last Modified: Fri, 01 Dec 2017 22:17:01 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4dd5493c59591d5245d63adb43f3edb595f71f70b5b2591847c6475fe303026`  
		Last Modified: Fri, 01 Dec 2017 22:17:01 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.5-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:78f8a5bf08a39899198dcfe54e559ae4620d85eb6e6ec16d6dccf566206ce21b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10156123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:797e205adadc804041b1b33e183e236e53a402f50894246ea7248c86b70b1d2a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:24:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 05:24:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 02 Dec 2017 02:11:24 GMT
ENV REDIS_VERSION=4.0.5
# Sat, 02 Dec 2017 02:11:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Sat, 02 Dec 2017 02:11:24 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Sat, 02 Dec 2017 02:11:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Sat, 02 Dec 2017 02:11:48 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 02 Dec 2017 02:11:48 GMT
VOLUME [/data]
# Sat, 02 Dec 2017 02:11:48 GMT
WORKDIR /data
# Sat, 02 Dec 2017 02:11:49 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 02 Dec 2017 02:11:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Dec 2017 02:11:49 GMT
EXPOSE 6379/tcp
# Sat, 02 Dec 2017 02:11:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed5ccc911def388320cc35fabf3f26d6dbe3865f29cbc8ea4d6969afba892b6`  
		Last Modified: Thu, 26 Oct 2017 05:25:25 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb557aa00e602a24029e21b21fd124cee2b11be03a5d7c2c7a5bdd35d837a2c`  
		Last Modified: Thu, 26 Oct 2017 05:25:26 GMT  
		Size: 8.4 KB (8372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9132dd66c187ae890c22c550a73680d40ca2ade9dd54e8f591093d7900fde8d2`  
		Last Modified: Sat, 02 Dec 2017 02:11:59 GMT  
		Size: 8.2 MB (8179778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b7b6850f501061297b17c2747e28e94eacb3cb26d146ce2675b17c15ac668d`  
		Last Modified: Sat, 02 Dec 2017 02:11:57 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6557d24ad4e1af94c1fe64e059044b25a9ffd1d13b81666548dc8774af44d1dc`  
		Last Modified: Sat, 02 Dec 2017 02:11:57 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.5-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:f23d254c27af80cfde43600baa117cecb20cbaafe30a1ea33fe955a81890e333
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10222443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b078b5224fba461231e167844927930e73c76d395f316926b1f1cf8ed064770b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 12:25:55 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 12:25:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 01 Dec 2017 19:26:45 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 19:26:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 19:26:46 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 19:27:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Fri, 01 Dec 2017 19:27:34 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 19:27:35 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 19:27:36 GMT
WORKDIR /data
# Fri, 01 Dec 2017 19:27:37 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 01 Dec 2017 19:27:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 19:27:40 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 19:27:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7b73d0b3160845d84c0e4f5e413bc6c426a1909c0f2d1fbb2829218a2e21e3`  
		Last Modified: Thu, 26 Oct 2017 12:28:49 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fef4495152ec2827feab445efc6a8ce14f21f61f1aab617f08ca02ddcfaf4cb`  
		Last Modified: Thu, 26 Oct 2017 12:28:48 GMT  
		Size: 8.3 KB (8297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fc1fe05740a2724098a144c51cee65e34f1f5c474787036263cb2ed21ccb7e`  
		Last Modified: Fri, 01 Dec 2017 19:29:29 GMT  
		Size: 8.3 MB (8297470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56160f2a03a94374f0c1600acbea44f3128d14c0f43de34bbff411f8e874a630`  
		Last Modified: Fri, 01 Dec 2017 19:29:25 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6954e6940d9c8c323e01b26099e4ee54b453e08f844442dabeffed3b12ace4d1`  
		Last Modified: Fri, 01 Dec 2017 19:29:25 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.5-alpine` - linux; 386

```console
$ docker pull redis@sha256:357330cf970bb4422c9bc3c814fb335e28c7449f6a34861905f974b2b02fb398
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.1 MB (10098438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:decc86c2f2ca9ef71f951b9e0329ab493ad3eec95c317b5a727e344be9fc9e63`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 12:20:43 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 12:20:47 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 01 Dec 2017 22:27:55 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:27:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:27:56 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:28:28 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Fri, 01 Dec 2017 22:28:29 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:28:29 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:28:29 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:28:30 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:28:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:28:30 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:28:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc0092e2488972f59ebfb4ee46b20ae44b279b56a72db00fcc793d134652c77`  
		Last Modified: Thu, 26 Oct 2017 12:22:17 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7c3600a6050db7d3d16edf77e4aae56c6fc6d8dd8359260697bdcb746e1591`  
		Last Modified: Thu, 26 Oct 2017 12:22:17 GMT  
		Size: 8.3 KB (8304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fac488ac83c8dcc7e02339dad7f6027e83b13f8da60533dea97c6a9d18b8df7`  
		Last Modified: Fri, 01 Dec 2017 22:29:36 GMT  
		Size: 8.0 MB (8042612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ace290bbc96d1cf6d685300c2f8c756dc5e85cf72a0aaea48b14a1cd0986ac1b`  
		Last Modified: Fri, 01 Dec 2017 22:29:34 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51edbe387576ab8d928b3ab440521b51fc647a8b5afec6cc33e9bb3e5a793331`  
		Last Modified: Fri, 01 Dec 2017 22:29:34 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.5-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:25d5af410f38a5c75ed556298a8db9e71b3e2daf0929f38fa71465468f891a7c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10649143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90f3603c475f7790ea61f88c7d560d219a15c8ef0970c467fab7bab7cd04e5d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:35:32 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 05:35:38 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 01 Dec 2017 22:29:32 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:29:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:29:35 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:30:06 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Fri, 01 Dec 2017 22:30:10 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:30:12 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:30:13 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:30:15 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:30:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:30:19 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:30:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3ebe7128dbea25409b23d4a494ae0111ad5bd8c25a0d6b1138a08be0cb339a`  
		Last Modified: Thu, 26 Oct 2017 05:37:33 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de77d1e048161d22a574862ad5b23c83b469a29ea7acd1a9f8277a5930b4f80`  
		Last Modified: Thu, 26 Oct 2017 05:37:33 GMT  
		Size: 9.1 KB (9058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd0d5db2d8d412fa4543746b2b303248389a702588ccc4df6043ce47c1e4bec`  
		Last Modified: Fri, 01 Dec 2017 22:31:11 GMT  
		Size: 8.6 MB (8629511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c226563a502f5367e5b146850eecd2b89a97760fcb874f39994719c196e1930f`  
		Last Modified: Fri, 01 Dec 2017 22:31:08 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d77402745ee3d487bd05aff9fcffbb013ad7b9540f245f92619a00674eacc7f`  
		Last Modified: Fri, 01 Dec 2017 22:31:08 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.5-alpine` - linux; s390x

```console
$ docker pull redis@sha256:e61e3769cb365610b5d87f055cffd6b5d4f5f3d841bac911781385514ec84851
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10785770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3255a0337552b6b3f670610c03560a7ad876f91be25063018aee964ee978c64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:24:32 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 05:24:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 01 Dec 2017 22:27:17 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:27:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:27:17 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:27:37 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Fri, 01 Dec 2017 22:27:38 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:27:38 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:27:38 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:27:38 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:27:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:27:39 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:27:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aadc88619c9ad71a095bb4de1d9bb26ba477d43141099ee566f10fbe45811cd`  
		Last Modified: Thu, 26 Oct 2017 05:25:42 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facc71eadb971db0206fdd767056d3bd71d32b4fdec59986d325a2ab02c0a4c7`  
		Last Modified: Thu, 26 Oct 2017 05:25:42 GMT  
		Size: 8.6 KB (8607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a00503c72fc59761be46cbadd885d94a26c4a00d65e2651f1c1f80410d567b7`  
		Last Modified: Fri, 01 Dec 2017 22:28:15 GMT  
		Size: 8.7 MB (8709777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb30f97811366646243025b6c3e338949102a59c61a543f18d999b169bd0bef4`  
		Last Modified: Fri, 01 Dec 2017 22:28:13 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44171319a123319b1ae87f7bdb39e8ac254049f3f4d2876703de39ae071e51e4`  
		Last Modified: Fri, 01 Dec 2017 22:28:13 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-alpine`

```console
$ docker pull redis@sha256:e7775fbdf73827d741596774b609642ad53bc67885b3f3bccbf720584b85e818
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:4.0-alpine` - linux; amd64

```console
$ docker pull redis@sha256:212d3e44198658788ef5b81a8b33054eeaa81e7b08ec5550d98c1e833857e028
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.1 MB (10093229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba3df185d5ea4cae3b5da690301605ac96199732bab4edf46f7bafec43dbcb1f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:11:21 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 01 Dec 2017 22:11:24 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 01 Dec 2017 22:14:15 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:14:15 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:14:15 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:14:45 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Fri, 01 Dec 2017 22:14:45 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:14:46 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:14:46 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:14:46 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:14:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:14:47 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:14:47 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c53d69ca3aed47d1db25335f3b3c89f755dc18f177ae7a70c4c8f70f8edcbd`  
		Last Modified: Fri, 01 Dec 2017 22:15:02 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbffccae30ef7a74b938eaa2aaed4b067a15e62d0dd059a063bdf272defae8b`  
		Last Modified: Fri, 01 Dec 2017 22:15:02 GMT  
		Size: 8.2 KB (8179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e070aa3b2f1b0528e946d7e2662b1bf0fb447dae7d624ad0e9799edc6c38b68`  
		Last Modified: Fri, 01 Dec 2017 22:17:03 GMT  
		Size: 8.1 MB (8091800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7d4e53fbda7ec706176c4bc3755fda1ad79e1614b30c323086340af6f5f91e`  
		Last Modified: Fri, 01 Dec 2017 22:17:01 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4dd5493c59591d5245d63adb43f3edb595f71f70b5b2591847c6475fe303026`  
		Last Modified: Fri, 01 Dec 2017 22:17:01 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:78f8a5bf08a39899198dcfe54e559ae4620d85eb6e6ec16d6dccf566206ce21b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10156123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:797e205adadc804041b1b33e183e236e53a402f50894246ea7248c86b70b1d2a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:24:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 05:24:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 02 Dec 2017 02:11:24 GMT
ENV REDIS_VERSION=4.0.5
# Sat, 02 Dec 2017 02:11:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Sat, 02 Dec 2017 02:11:24 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Sat, 02 Dec 2017 02:11:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Sat, 02 Dec 2017 02:11:48 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 02 Dec 2017 02:11:48 GMT
VOLUME [/data]
# Sat, 02 Dec 2017 02:11:48 GMT
WORKDIR /data
# Sat, 02 Dec 2017 02:11:49 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 02 Dec 2017 02:11:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Dec 2017 02:11:49 GMT
EXPOSE 6379/tcp
# Sat, 02 Dec 2017 02:11:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed5ccc911def388320cc35fabf3f26d6dbe3865f29cbc8ea4d6969afba892b6`  
		Last Modified: Thu, 26 Oct 2017 05:25:25 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb557aa00e602a24029e21b21fd124cee2b11be03a5d7c2c7a5bdd35d837a2c`  
		Last Modified: Thu, 26 Oct 2017 05:25:26 GMT  
		Size: 8.4 KB (8372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9132dd66c187ae890c22c550a73680d40ca2ade9dd54e8f591093d7900fde8d2`  
		Last Modified: Sat, 02 Dec 2017 02:11:59 GMT  
		Size: 8.2 MB (8179778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b7b6850f501061297b17c2747e28e94eacb3cb26d146ce2675b17c15ac668d`  
		Last Modified: Sat, 02 Dec 2017 02:11:57 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6557d24ad4e1af94c1fe64e059044b25a9ffd1d13b81666548dc8774af44d1dc`  
		Last Modified: Sat, 02 Dec 2017 02:11:57 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:f23d254c27af80cfde43600baa117cecb20cbaafe30a1ea33fe955a81890e333
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10222443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b078b5224fba461231e167844927930e73c76d395f316926b1f1cf8ed064770b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 12:25:55 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 12:25:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 01 Dec 2017 19:26:45 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 19:26:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 19:26:46 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 19:27:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Fri, 01 Dec 2017 19:27:34 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 19:27:35 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 19:27:36 GMT
WORKDIR /data
# Fri, 01 Dec 2017 19:27:37 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 01 Dec 2017 19:27:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 19:27:40 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 19:27:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7b73d0b3160845d84c0e4f5e413bc6c426a1909c0f2d1fbb2829218a2e21e3`  
		Last Modified: Thu, 26 Oct 2017 12:28:49 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fef4495152ec2827feab445efc6a8ce14f21f61f1aab617f08ca02ddcfaf4cb`  
		Last Modified: Thu, 26 Oct 2017 12:28:48 GMT  
		Size: 8.3 KB (8297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fc1fe05740a2724098a144c51cee65e34f1f5c474787036263cb2ed21ccb7e`  
		Last Modified: Fri, 01 Dec 2017 19:29:29 GMT  
		Size: 8.3 MB (8297470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56160f2a03a94374f0c1600acbea44f3128d14c0f43de34bbff411f8e874a630`  
		Last Modified: Fri, 01 Dec 2017 19:29:25 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6954e6940d9c8c323e01b26099e4ee54b453e08f844442dabeffed3b12ace4d1`  
		Last Modified: Fri, 01 Dec 2017 19:29:25 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; 386

```console
$ docker pull redis@sha256:357330cf970bb4422c9bc3c814fb335e28c7449f6a34861905f974b2b02fb398
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.1 MB (10098438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:decc86c2f2ca9ef71f951b9e0329ab493ad3eec95c317b5a727e344be9fc9e63`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 12:20:43 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 12:20:47 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 01 Dec 2017 22:27:55 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:27:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:27:56 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:28:28 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Fri, 01 Dec 2017 22:28:29 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:28:29 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:28:29 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:28:30 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:28:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:28:30 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:28:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc0092e2488972f59ebfb4ee46b20ae44b279b56a72db00fcc793d134652c77`  
		Last Modified: Thu, 26 Oct 2017 12:22:17 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7c3600a6050db7d3d16edf77e4aae56c6fc6d8dd8359260697bdcb746e1591`  
		Last Modified: Thu, 26 Oct 2017 12:22:17 GMT  
		Size: 8.3 KB (8304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fac488ac83c8dcc7e02339dad7f6027e83b13f8da60533dea97c6a9d18b8df7`  
		Last Modified: Fri, 01 Dec 2017 22:29:36 GMT  
		Size: 8.0 MB (8042612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ace290bbc96d1cf6d685300c2f8c756dc5e85cf72a0aaea48b14a1cd0986ac1b`  
		Last Modified: Fri, 01 Dec 2017 22:29:34 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51edbe387576ab8d928b3ab440521b51fc647a8b5afec6cc33e9bb3e5a793331`  
		Last Modified: Fri, 01 Dec 2017 22:29:34 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:25d5af410f38a5c75ed556298a8db9e71b3e2daf0929f38fa71465468f891a7c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10649143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90f3603c475f7790ea61f88c7d560d219a15c8ef0970c467fab7bab7cd04e5d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:35:32 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 05:35:38 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 01 Dec 2017 22:29:32 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:29:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:29:35 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:30:06 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Fri, 01 Dec 2017 22:30:10 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:30:12 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:30:13 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:30:15 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:30:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:30:19 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:30:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3ebe7128dbea25409b23d4a494ae0111ad5bd8c25a0d6b1138a08be0cb339a`  
		Last Modified: Thu, 26 Oct 2017 05:37:33 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de77d1e048161d22a574862ad5b23c83b469a29ea7acd1a9f8277a5930b4f80`  
		Last Modified: Thu, 26 Oct 2017 05:37:33 GMT  
		Size: 9.1 KB (9058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd0d5db2d8d412fa4543746b2b303248389a702588ccc4df6043ce47c1e4bec`  
		Last Modified: Fri, 01 Dec 2017 22:31:11 GMT  
		Size: 8.6 MB (8629511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c226563a502f5367e5b146850eecd2b89a97760fcb874f39994719c196e1930f`  
		Last Modified: Fri, 01 Dec 2017 22:31:08 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d77402745ee3d487bd05aff9fcffbb013ad7b9540f245f92619a00674eacc7f`  
		Last Modified: Fri, 01 Dec 2017 22:31:08 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; s390x

```console
$ docker pull redis@sha256:e61e3769cb365610b5d87f055cffd6b5d4f5f3d841bac911781385514ec84851
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10785770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3255a0337552b6b3f670610c03560a7ad876f91be25063018aee964ee978c64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:24:32 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 05:24:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 01 Dec 2017 22:27:17 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:27:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:27:17 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:27:37 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Fri, 01 Dec 2017 22:27:38 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:27:38 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:27:38 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:27:38 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:27:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:27:39 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:27:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aadc88619c9ad71a095bb4de1d9bb26ba477d43141099ee566f10fbe45811cd`  
		Last Modified: Thu, 26 Oct 2017 05:25:42 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facc71eadb971db0206fdd767056d3bd71d32b4fdec59986d325a2ab02c0a4c7`  
		Last Modified: Thu, 26 Oct 2017 05:25:42 GMT  
		Size: 8.6 KB (8607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a00503c72fc59761be46cbadd885d94a26c4a00d65e2651f1c1f80410d567b7`  
		Last Modified: Fri, 01 Dec 2017 22:28:15 GMT  
		Size: 8.7 MB (8709777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb30f97811366646243025b6c3e338949102a59c61a543f18d999b169bd0bef4`  
		Last Modified: Fri, 01 Dec 2017 22:28:13 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44171319a123319b1ae87f7bdb39e8ac254049f3f4d2876703de39ae071e51e4`  
		Last Modified: Fri, 01 Dec 2017 22:28:13 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-32bit`

```console
$ docker pull redis@sha256:fd4f4a47f63c4539c7be30589fcb634203509afa8173149a439fe89111108232
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-32bit` - linux; amd64

```console
$ docker pull redis@sha256:9334c9892beccbc2293874a5b6e121ac8b66bbb2ae0246313be8b330d8ee4151
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (42984276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:803b0744b03125fff4415f61c6a59df6769cdb618fb5ec112559c3d5dbedbce8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 16:15:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 04 Nov 2017 16:15:26 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 16:15:47 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 01 Dec 2017 22:12:01 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:12:01 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:12:01 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:13:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Dec 2017 22:13:56 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Dec 2017 22:13:59 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:13:59 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:14:00 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:14:00 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:14:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:14:00 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:14:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f8341839ed6c0ca916876566d7193c33a80ae461cba558d85832436f59650`  
		Last Modified: Sat, 04 Nov 2017 16:22:06 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b9cdda7eb9fa2604e34311ddfbf9bb9e3b8a67d6c1668a9dc802f27855dcdd`  
		Last Modified: Sat, 04 Nov 2017 16:22:07 GMT  
		Size: 981.7 KB (981737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ca2a4e8a2d0054cdeb9fa0ea5f7271e52f6287a01e09f516014fa36e8f2e20`  
		Last Modified: Fri, 01 Dec 2017 22:16:20 GMT  
		Size: 4.4 MB (4378599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd9fc2308e99f044415249133a865c07310381e3df0e26bab397ede8ed8e9f8`  
		Last Modified: Fri, 01 Dec 2017 22:16:22 GMT  
		Size: 7.5 MB (7508027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:644740b804c05b8316107bcdc57ae85fe8e2e163325867f35ce3c16685ed00f2`  
		Last Modified: Fri, 01 Dec 2017 22:16:19 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24dc081a7fa8f5b37c6b82d64bee1f794d94991ba58171f4cdf4dcad4ccd933`  
		Last Modified: Fri, 01 Dec 2017 22:16:19 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-alpine`

```console
$ docker pull redis@sha256:e7775fbdf73827d741596774b609642ad53bc67885b3f3bccbf720584b85e818
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:4-alpine` - linux; amd64

```console
$ docker pull redis@sha256:212d3e44198658788ef5b81a8b33054eeaa81e7b08ec5550d98c1e833857e028
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.1 MB (10093229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba3df185d5ea4cae3b5da690301605ac96199732bab4edf46f7bafec43dbcb1f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:11:21 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 01 Dec 2017 22:11:24 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 01 Dec 2017 22:14:15 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:14:15 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:14:15 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:14:45 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Fri, 01 Dec 2017 22:14:45 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:14:46 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:14:46 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:14:46 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:14:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:14:47 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:14:47 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c53d69ca3aed47d1db25335f3b3c89f755dc18f177ae7a70c4c8f70f8edcbd`  
		Last Modified: Fri, 01 Dec 2017 22:15:02 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbffccae30ef7a74b938eaa2aaed4b067a15e62d0dd059a063bdf272defae8b`  
		Last Modified: Fri, 01 Dec 2017 22:15:02 GMT  
		Size: 8.2 KB (8179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e070aa3b2f1b0528e946d7e2662b1bf0fb447dae7d624ad0e9799edc6c38b68`  
		Last Modified: Fri, 01 Dec 2017 22:17:03 GMT  
		Size: 8.1 MB (8091800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7d4e53fbda7ec706176c4bc3755fda1ad79e1614b30c323086340af6f5f91e`  
		Last Modified: Fri, 01 Dec 2017 22:17:01 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4dd5493c59591d5245d63adb43f3edb595f71f70b5b2591847c6475fe303026`  
		Last Modified: Fri, 01 Dec 2017 22:17:01 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:78f8a5bf08a39899198dcfe54e559ae4620d85eb6e6ec16d6dccf566206ce21b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10156123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:797e205adadc804041b1b33e183e236e53a402f50894246ea7248c86b70b1d2a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:24:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 05:24:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 02 Dec 2017 02:11:24 GMT
ENV REDIS_VERSION=4.0.5
# Sat, 02 Dec 2017 02:11:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Sat, 02 Dec 2017 02:11:24 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Sat, 02 Dec 2017 02:11:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Sat, 02 Dec 2017 02:11:48 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 02 Dec 2017 02:11:48 GMT
VOLUME [/data]
# Sat, 02 Dec 2017 02:11:48 GMT
WORKDIR /data
# Sat, 02 Dec 2017 02:11:49 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 02 Dec 2017 02:11:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Dec 2017 02:11:49 GMT
EXPOSE 6379/tcp
# Sat, 02 Dec 2017 02:11:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed5ccc911def388320cc35fabf3f26d6dbe3865f29cbc8ea4d6969afba892b6`  
		Last Modified: Thu, 26 Oct 2017 05:25:25 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb557aa00e602a24029e21b21fd124cee2b11be03a5d7c2c7a5bdd35d837a2c`  
		Last Modified: Thu, 26 Oct 2017 05:25:26 GMT  
		Size: 8.4 KB (8372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9132dd66c187ae890c22c550a73680d40ca2ade9dd54e8f591093d7900fde8d2`  
		Last Modified: Sat, 02 Dec 2017 02:11:59 GMT  
		Size: 8.2 MB (8179778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b7b6850f501061297b17c2747e28e94eacb3cb26d146ce2675b17c15ac668d`  
		Last Modified: Sat, 02 Dec 2017 02:11:57 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6557d24ad4e1af94c1fe64e059044b25a9ffd1d13b81666548dc8774af44d1dc`  
		Last Modified: Sat, 02 Dec 2017 02:11:57 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:f23d254c27af80cfde43600baa117cecb20cbaafe30a1ea33fe955a81890e333
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10222443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b078b5224fba461231e167844927930e73c76d395f316926b1f1cf8ed064770b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 12:25:55 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 12:25:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 01 Dec 2017 19:26:45 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 19:26:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 19:26:46 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 19:27:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Fri, 01 Dec 2017 19:27:34 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 19:27:35 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 19:27:36 GMT
WORKDIR /data
# Fri, 01 Dec 2017 19:27:37 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 01 Dec 2017 19:27:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 19:27:40 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 19:27:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7b73d0b3160845d84c0e4f5e413bc6c426a1909c0f2d1fbb2829218a2e21e3`  
		Last Modified: Thu, 26 Oct 2017 12:28:49 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fef4495152ec2827feab445efc6a8ce14f21f61f1aab617f08ca02ddcfaf4cb`  
		Last Modified: Thu, 26 Oct 2017 12:28:48 GMT  
		Size: 8.3 KB (8297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fc1fe05740a2724098a144c51cee65e34f1f5c474787036263cb2ed21ccb7e`  
		Last Modified: Fri, 01 Dec 2017 19:29:29 GMT  
		Size: 8.3 MB (8297470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56160f2a03a94374f0c1600acbea44f3128d14c0f43de34bbff411f8e874a630`  
		Last Modified: Fri, 01 Dec 2017 19:29:25 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6954e6940d9c8c323e01b26099e4ee54b453e08f844442dabeffed3b12ace4d1`  
		Last Modified: Fri, 01 Dec 2017 19:29:25 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; 386

```console
$ docker pull redis@sha256:357330cf970bb4422c9bc3c814fb335e28c7449f6a34861905f974b2b02fb398
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.1 MB (10098438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:decc86c2f2ca9ef71f951b9e0329ab493ad3eec95c317b5a727e344be9fc9e63`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 12:20:43 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 12:20:47 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 01 Dec 2017 22:27:55 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:27:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:27:56 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:28:28 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Fri, 01 Dec 2017 22:28:29 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:28:29 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:28:29 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:28:30 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:28:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:28:30 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:28:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc0092e2488972f59ebfb4ee46b20ae44b279b56a72db00fcc793d134652c77`  
		Last Modified: Thu, 26 Oct 2017 12:22:17 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7c3600a6050db7d3d16edf77e4aae56c6fc6d8dd8359260697bdcb746e1591`  
		Last Modified: Thu, 26 Oct 2017 12:22:17 GMT  
		Size: 8.3 KB (8304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fac488ac83c8dcc7e02339dad7f6027e83b13f8da60533dea97c6a9d18b8df7`  
		Last Modified: Fri, 01 Dec 2017 22:29:36 GMT  
		Size: 8.0 MB (8042612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ace290bbc96d1cf6d685300c2f8c756dc5e85cf72a0aaea48b14a1cd0986ac1b`  
		Last Modified: Fri, 01 Dec 2017 22:29:34 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51edbe387576ab8d928b3ab440521b51fc647a8b5afec6cc33e9bb3e5a793331`  
		Last Modified: Fri, 01 Dec 2017 22:29:34 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:25d5af410f38a5c75ed556298a8db9e71b3e2daf0929f38fa71465468f891a7c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10649143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90f3603c475f7790ea61f88c7d560d219a15c8ef0970c467fab7bab7cd04e5d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:35:32 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 05:35:38 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 01 Dec 2017 22:29:32 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:29:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:29:35 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:30:06 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Fri, 01 Dec 2017 22:30:10 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:30:12 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:30:13 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:30:15 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:30:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:30:19 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:30:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3ebe7128dbea25409b23d4a494ae0111ad5bd8c25a0d6b1138a08be0cb339a`  
		Last Modified: Thu, 26 Oct 2017 05:37:33 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de77d1e048161d22a574862ad5b23c83b469a29ea7acd1a9f8277a5930b4f80`  
		Last Modified: Thu, 26 Oct 2017 05:37:33 GMT  
		Size: 9.1 KB (9058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd0d5db2d8d412fa4543746b2b303248389a702588ccc4df6043ce47c1e4bec`  
		Last Modified: Fri, 01 Dec 2017 22:31:11 GMT  
		Size: 8.6 MB (8629511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c226563a502f5367e5b146850eecd2b89a97760fcb874f39994719c196e1930f`  
		Last Modified: Fri, 01 Dec 2017 22:31:08 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d77402745ee3d487bd05aff9fcffbb013ad7b9540f245f92619a00674eacc7f`  
		Last Modified: Fri, 01 Dec 2017 22:31:08 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; s390x

```console
$ docker pull redis@sha256:e61e3769cb365610b5d87f055cffd6b5d4f5f3d841bac911781385514ec84851
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10785770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3255a0337552b6b3f670610c03560a7ad876f91be25063018aee964ee978c64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:24:32 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 05:24:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 01 Dec 2017 22:27:17 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:27:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:27:17 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:27:37 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Fri, 01 Dec 2017 22:27:38 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:27:38 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:27:38 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:27:38 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:27:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:27:39 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:27:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aadc88619c9ad71a095bb4de1d9bb26ba477d43141099ee566f10fbe45811cd`  
		Last Modified: Thu, 26 Oct 2017 05:25:42 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facc71eadb971db0206fdd767056d3bd71d32b4fdec59986d325a2ab02c0a4c7`  
		Last Modified: Thu, 26 Oct 2017 05:25:42 GMT  
		Size: 8.6 KB (8607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a00503c72fc59761be46cbadd885d94a26c4a00d65e2651f1c1f80410d567b7`  
		Last Modified: Fri, 01 Dec 2017 22:28:15 GMT  
		Size: 8.7 MB (8709777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb30f97811366646243025b6c3e338949102a59c61a543f18d999b169bd0bef4`  
		Last Modified: Fri, 01 Dec 2017 22:28:13 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44171319a123319b1ae87f7bdb39e8ac254049f3f4d2876703de39ae071e51e4`  
		Last Modified: Fri, 01 Dec 2017 22:28:13 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine`

```console
$ docker pull redis@sha256:e7775fbdf73827d741596774b609642ad53bc67885b3f3bccbf720584b85e818
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:alpine` - linux; amd64

```console
$ docker pull redis@sha256:212d3e44198658788ef5b81a8b33054eeaa81e7b08ec5550d98c1e833857e028
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.1 MB (10093229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba3df185d5ea4cae3b5da690301605ac96199732bab4edf46f7bafec43dbcb1f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:11:21 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 01 Dec 2017 22:11:24 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 01 Dec 2017 22:14:15 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:14:15 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:14:15 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:14:45 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Fri, 01 Dec 2017 22:14:45 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:14:46 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:14:46 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:14:46 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:14:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:14:47 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:14:47 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c53d69ca3aed47d1db25335f3b3c89f755dc18f177ae7a70c4c8f70f8edcbd`  
		Last Modified: Fri, 01 Dec 2017 22:15:02 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbffccae30ef7a74b938eaa2aaed4b067a15e62d0dd059a063bdf272defae8b`  
		Last Modified: Fri, 01 Dec 2017 22:15:02 GMT  
		Size: 8.2 KB (8179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e070aa3b2f1b0528e946d7e2662b1bf0fb447dae7d624ad0e9799edc6c38b68`  
		Last Modified: Fri, 01 Dec 2017 22:17:03 GMT  
		Size: 8.1 MB (8091800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7d4e53fbda7ec706176c4bc3755fda1ad79e1614b30c323086340af6f5f91e`  
		Last Modified: Fri, 01 Dec 2017 22:17:01 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4dd5493c59591d5245d63adb43f3edb595f71f70b5b2591847c6475fe303026`  
		Last Modified: Fri, 01 Dec 2017 22:17:01 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:78f8a5bf08a39899198dcfe54e559ae4620d85eb6e6ec16d6dccf566206ce21b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10156123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:797e205adadc804041b1b33e183e236e53a402f50894246ea7248c86b70b1d2a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:24:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 05:24:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 02 Dec 2017 02:11:24 GMT
ENV REDIS_VERSION=4.0.5
# Sat, 02 Dec 2017 02:11:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Sat, 02 Dec 2017 02:11:24 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Sat, 02 Dec 2017 02:11:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Sat, 02 Dec 2017 02:11:48 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 02 Dec 2017 02:11:48 GMT
VOLUME [/data]
# Sat, 02 Dec 2017 02:11:48 GMT
WORKDIR /data
# Sat, 02 Dec 2017 02:11:49 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 02 Dec 2017 02:11:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Dec 2017 02:11:49 GMT
EXPOSE 6379/tcp
# Sat, 02 Dec 2017 02:11:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed5ccc911def388320cc35fabf3f26d6dbe3865f29cbc8ea4d6969afba892b6`  
		Last Modified: Thu, 26 Oct 2017 05:25:25 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb557aa00e602a24029e21b21fd124cee2b11be03a5d7c2c7a5bdd35d837a2c`  
		Last Modified: Thu, 26 Oct 2017 05:25:26 GMT  
		Size: 8.4 KB (8372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9132dd66c187ae890c22c550a73680d40ca2ade9dd54e8f591093d7900fde8d2`  
		Last Modified: Sat, 02 Dec 2017 02:11:59 GMT  
		Size: 8.2 MB (8179778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b7b6850f501061297b17c2747e28e94eacb3cb26d146ce2675b17c15ac668d`  
		Last Modified: Sat, 02 Dec 2017 02:11:57 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6557d24ad4e1af94c1fe64e059044b25a9ffd1d13b81666548dc8774af44d1dc`  
		Last Modified: Sat, 02 Dec 2017 02:11:57 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:f23d254c27af80cfde43600baa117cecb20cbaafe30a1ea33fe955a81890e333
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10222443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b078b5224fba461231e167844927930e73c76d395f316926b1f1cf8ed064770b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 12:25:55 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 12:25:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 01 Dec 2017 19:26:45 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 19:26:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 19:26:46 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 19:27:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Fri, 01 Dec 2017 19:27:34 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 19:27:35 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 19:27:36 GMT
WORKDIR /data
# Fri, 01 Dec 2017 19:27:37 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 01 Dec 2017 19:27:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 19:27:40 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 19:27:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7b73d0b3160845d84c0e4f5e413bc6c426a1909c0f2d1fbb2829218a2e21e3`  
		Last Modified: Thu, 26 Oct 2017 12:28:49 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fef4495152ec2827feab445efc6a8ce14f21f61f1aab617f08ca02ddcfaf4cb`  
		Last Modified: Thu, 26 Oct 2017 12:28:48 GMT  
		Size: 8.3 KB (8297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fc1fe05740a2724098a144c51cee65e34f1f5c474787036263cb2ed21ccb7e`  
		Last Modified: Fri, 01 Dec 2017 19:29:29 GMT  
		Size: 8.3 MB (8297470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56160f2a03a94374f0c1600acbea44f3128d14c0f43de34bbff411f8e874a630`  
		Last Modified: Fri, 01 Dec 2017 19:29:25 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6954e6940d9c8c323e01b26099e4ee54b453e08f844442dabeffed3b12ace4d1`  
		Last Modified: Fri, 01 Dec 2017 19:29:25 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; 386

```console
$ docker pull redis@sha256:357330cf970bb4422c9bc3c814fb335e28c7449f6a34861905f974b2b02fb398
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.1 MB (10098438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:decc86c2f2ca9ef71f951b9e0329ab493ad3eec95c317b5a727e344be9fc9e63`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 12:20:43 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 12:20:47 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 01 Dec 2017 22:27:55 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:27:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:27:56 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:28:28 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Fri, 01 Dec 2017 22:28:29 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:28:29 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:28:29 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:28:30 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:28:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:28:30 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:28:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc0092e2488972f59ebfb4ee46b20ae44b279b56a72db00fcc793d134652c77`  
		Last Modified: Thu, 26 Oct 2017 12:22:17 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7c3600a6050db7d3d16edf77e4aae56c6fc6d8dd8359260697bdcb746e1591`  
		Last Modified: Thu, 26 Oct 2017 12:22:17 GMT  
		Size: 8.3 KB (8304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fac488ac83c8dcc7e02339dad7f6027e83b13f8da60533dea97c6a9d18b8df7`  
		Last Modified: Fri, 01 Dec 2017 22:29:36 GMT  
		Size: 8.0 MB (8042612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ace290bbc96d1cf6d685300c2f8c756dc5e85cf72a0aaea48b14a1cd0986ac1b`  
		Last Modified: Fri, 01 Dec 2017 22:29:34 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51edbe387576ab8d928b3ab440521b51fc647a8b5afec6cc33e9bb3e5a793331`  
		Last Modified: Fri, 01 Dec 2017 22:29:34 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:25d5af410f38a5c75ed556298a8db9e71b3e2daf0929f38fa71465468f891a7c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10649143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90f3603c475f7790ea61f88c7d560d219a15c8ef0970c467fab7bab7cd04e5d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:35:32 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 05:35:38 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 01 Dec 2017 22:29:32 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:29:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:29:35 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:30:06 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Fri, 01 Dec 2017 22:30:10 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:30:12 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:30:13 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:30:15 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:30:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:30:19 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:30:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3ebe7128dbea25409b23d4a494ae0111ad5bd8c25a0d6b1138a08be0cb339a`  
		Last Modified: Thu, 26 Oct 2017 05:37:33 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de77d1e048161d22a574862ad5b23c83b469a29ea7acd1a9f8277a5930b4f80`  
		Last Modified: Thu, 26 Oct 2017 05:37:33 GMT  
		Size: 9.1 KB (9058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd0d5db2d8d412fa4543746b2b303248389a702588ccc4df6043ce47c1e4bec`  
		Last Modified: Fri, 01 Dec 2017 22:31:11 GMT  
		Size: 8.6 MB (8629511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c226563a502f5367e5b146850eecd2b89a97760fcb874f39994719c196e1930f`  
		Last Modified: Fri, 01 Dec 2017 22:31:08 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d77402745ee3d487bd05aff9fcffbb013ad7b9540f245f92619a00674eacc7f`  
		Last Modified: Fri, 01 Dec 2017 22:31:08 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; s390x

```console
$ docker pull redis@sha256:e61e3769cb365610b5d87f055cffd6b5d4f5f3d841bac911781385514ec84851
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10785770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3255a0337552b6b3f670610c03560a7ad876f91be25063018aee964ee978c64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:24:32 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 05:24:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 01 Dec 2017 22:27:17 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:27:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:27:17 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:27:37 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Fri, 01 Dec 2017 22:27:38 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:27:38 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:27:38 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:27:38 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:27:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:27:39 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:27:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aadc88619c9ad71a095bb4de1d9bb26ba477d43141099ee566f10fbe45811cd`  
		Last Modified: Thu, 26 Oct 2017 05:25:42 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facc71eadb971db0206fdd767056d3bd71d32b4fdec59986d325a2ab02c0a4c7`  
		Last Modified: Thu, 26 Oct 2017 05:25:42 GMT  
		Size: 8.6 KB (8607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a00503c72fc59761be46cbadd885d94a26c4a00d65e2651f1c1f80410d567b7`  
		Last Modified: Fri, 01 Dec 2017 22:28:15 GMT  
		Size: 8.7 MB (8709777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb30f97811366646243025b6c3e338949102a59c61a543f18d999b169bd0bef4`  
		Last Modified: Fri, 01 Dec 2017 22:28:13 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44171319a123319b1ae87f7bdb39e8ac254049f3f4d2876703de39ae071e51e4`  
		Last Modified: Fri, 01 Dec 2017 22:28:13 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:latest`

```console
$ docker pull redis@sha256:8bfb936f7e025ce3b1f8d64aab1cb27e0c8d321cd38a16cf52f31dad64dcb673
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:latest` - linux; amd64

```console
$ docker pull redis@sha256:78175fc7ec4622809837400af449ed2c7c05a9bbdf773d86cac2817dbbc29547
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39388452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5f9a9e182f4cab294367b5beb85c176d19511c23db9a2c04b221e6ff6ca9908`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 16:15:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 04 Nov 2017 16:15:26 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 16:15:47 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 01 Dec 2017 22:12:01 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:12:01 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:12:01 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:12:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Dec 2017 22:12:46 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:12:46 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:12:46 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:12:46 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:12:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:12:47 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:12:52 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f8341839ed6c0ca916876566d7193c33a80ae461cba558d85832436f59650`  
		Last Modified: Sat, 04 Nov 2017 16:22:06 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b9cdda7eb9fa2604e34311ddfbf9bb9e3b8a67d6c1668a9dc802f27855dcdd`  
		Last Modified: Sat, 04 Nov 2017 16:22:07 GMT  
		Size: 981.7 KB (981737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c82f73f66c7f3f18e90e6dca2322976d55da72ddc19ccd9c9a07a75bedc49b7`  
		Last Modified: Fri, 01 Dec 2017 22:15:39 GMT  
		Size: 8.3 MB (8290807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3632c5436ac3d35cd519bc9da1751606a6bd465e9e9c6ae950a571178c2d641`  
		Last Modified: Fri, 01 Dec 2017 22:15:37 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3e9840aa4b79fe3929fc6f83c84511828b573fb78669d5506cef9a8a87edd8`  
		Last Modified: Fri, 01 Dec 2017 22:15:37 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm variant v7

```console
$ docker pull redis@sha256:b3552da06f864d91938f800b44442d1a30a9fa720ec15d356c19aeaa796355cf
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35161729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:126862a91b56545131a94561f9ef0ef98e055bd6d786231fb97c8be52450a8ac`
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
# Fri, 01 Dec 2017 22:26:54 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:26:54 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:26:55 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:27:55 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Dec 2017 22:27:56 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:27:56 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:27:57 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:27:57 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:27:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:27:58 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:27:58 GMT
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
	-	`sha256:866466ca73402f4c9b724d18e0688c56848ea7635ada8e264efe09805de031f7`  
		Last Modified: Fri, 01 Dec 2017 22:28:27 GMT  
		Size: 7.9 MB (7922028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8587f6302ff7f1b0a8dbe021517a882af286d630d0c022e96cb42fb2794d51`  
		Last Modified: Fri, 01 Dec 2017 22:28:24 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b7651e0b5c4e954e52668b83b8198386d8e1d27c240f57a7eb3b818d766836`  
		Last Modified: Fri, 01 Dec 2017 22:28:24 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:420ae0e3bb344f8a8d2059f6286dfcb9328e65b9e1e0f7f359f1ac5d8ae6f9c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36862491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:514024c66539efe4a39580ccc0356260825afdae6eaf529ef5d1310c12949f49`
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
# Fri, 01 Dec 2017 19:23:31 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 19:23:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 19:23:34 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 19:26:14 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Dec 2017 19:26:16 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 19:26:17 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 19:26:17 GMT
WORKDIR /data
# Fri, 01 Dec 2017 19:26:18 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 01 Dec 2017 19:26:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 19:26:20 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 19:26:20 GMT
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
	-	`sha256:ae1c8d095ad5784c909a93462870783d0e438138239c50cc50859d94f9e8b9b6`  
		Last Modified: Fri, 01 Dec 2017 19:28:14 GMT  
		Size: 8.4 MB (8430655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8821085efd9701c7901c95d2f49be4bc196b25b133b3d1fad4ccdeae02dc57fe`  
		Last Modified: Fri, 01 Dec 2017 19:28:12 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ace674017b514e90e48317cc41e990125e7e53d5808e2e4c26e064def374db`  
		Last Modified: Fri, 01 Dec 2017 19:28:11 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; 386

```console
$ docker pull redis@sha256:911e2e0e2b0e6104382490aeba40ae53913d9c25559d41cde273d5cb396b785e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38730454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cce076c26c30e5b8e2dc41d0ace2da312c99a868958e1ebc8ac5e5e829f87fb`
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
# Fri, 01 Dec 2017 22:26:39 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:26:39 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:26:39 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:27:37 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Dec 2017 22:27:38 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:27:38 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:27:38 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:27:39 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:27:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:27:39 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:27:39 GMT
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
	-	`sha256:b33705e86af8f5e43c2fa1924fba51b98c75a57f3d491a304c9a7e545cf2e526`  
		Last Modified: Fri, 01 Dec 2017 22:28:50 GMT  
		Size: 7.5 MB (7502620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42ccad835054ed30f401a9a8640325eb94e95c68fd2013e07ec3cb8ad5841a5`  
		Last Modified: Fri, 01 Dec 2017 22:28:49 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df08306fe99590a3913702ef5e3ac8a651f0735a253d7675ee0f0878c63ee649`  
		Last Modified: Fri, 01 Dec 2017 22:28:49 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; ppc64le

```console
$ docker pull redis@sha256:1845bb6fe4e76439158fe2fe63bf60f8f72944439c19540345fd0b65fba8dbd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.9 MB (38909708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9464c93759599fe8d8cabeb1ba18d567a7a010c08d5c7fa66dad04cd18b418d2`
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
# Fri, 01 Dec 2017 22:26:05 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:26:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:26:12 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:29:03 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Dec 2017 22:29:07 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:29:08 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:29:10 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:29:11 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:29:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:29:14 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:29:15 GMT
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
	-	`sha256:9abbf7f04d914fdfc3a77e8ee5175fb068f80a39836749dd038d171d2d9cad16`  
		Last Modified: Fri, 01 Dec 2017 22:30:43 GMT  
		Size: 8.6 MB (8649594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab649a228dcc98b137918837044cd8b8aaa00daae90d0699e732e4d9448c2e5a`  
		Last Modified: Fri, 01 Dec 2017 22:30:40 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6500b0c1d2cda48a4ae628622cfcc94cf8db36b2cb5264cf409b9f7d09b88d42`  
		Last Modified: Fri, 01 Dec 2017 22:30:40 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; s390x

```console
$ docker pull redis@sha256:3f1d42e13ec6615087f527face30ed4b5a3b25dc64c014459a3e25aeeb873e62
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 MB (40188142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c703c706d7d89513cc4ff558ee263235b239888fe01aeec7b8f766dc82a6266a`
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
# Fri, 01 Dec 2017 22:26:27 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 22:26:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 22:26:27 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 22:27:02 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Dec 2017 22:27:03 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 22:27:03 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 22:27:03 GMT
WORKDIR /data
# Fri, 01 Dec 2017 22:27:03 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:27:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:27:04 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 22:27:04 GMT
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
	-	`sha256:8e1e50034bdfc61452fd61d5c59e166171e7e1538b87bcc0e05e8f62618abfde`  
		Last Modified: Fri, 01 Dec 2017 22:27:53 GMT  
		Size: 8.9 MB (8924498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe549d3e4d7473d475df4d29978625e6d273471294466e7802761bf1f251834`  
		Last Modified: Fri, 01 Dec 2017 22:27:49 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9443c1bafec9a41246796078e3770145bb69d68fd8e306fd63cdaa18c0fbef66`  
		Last Modified: Fri, 01 Dec 2017 22:27:49 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
