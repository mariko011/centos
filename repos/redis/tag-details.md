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
$ docker pull redis@sha256:7e1d44d500002b30d0b7ca528c5550b2e97031e3158fd470b60c298716359752
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

### `redis:3.2.10` - linux; amd64

```console
$ docker pull redis@sha256:f13c4e3454c7bdfe9dca6d62634e56ff7277904e5381ba2a23a8c713c49a3f58
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36844478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be044336d7a4aed25d5d9524439c2b83f74e8239bc8097e02c17e8204ab82e97`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 03:32:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 13 Sep 2017 03:32:21 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Sep 2017 03:32:49 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Sep 2017 03:32:49 GMT
ENV REDIS_VERSION=3.2.10
# Wed, 13 Sep 2017 03:32:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Wed, 13 Sep 2017 03:32:50 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Wed, 13 Sep 2017 03:33:34 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Sep 2017 03:33:35 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 13 Sep 2017 03:33:35 GMT
VOLUME [/data]
# Wed, 13 Sep 2017 03:33:35 GMT
WORKDIR /data
# Wed, 13 Sep 2017 03:33:35 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 13 Sep 2017 03:33:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 03:33:36 GMT
EXPOSE 6379/tcp
# Wed, 13 Sep 2017 03:33:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc32c7d9b0f4d408e70aa19dd530fc281bbd0ab73b49e2a9911affdd76c120e3`  
		Last Modified: Wed, 13 Sep 2017 03:37:54 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad60cc6fa43175ef5587cc699b884aeb50a863e5f224a79e71ad7d4a29140659`  
		Last Modified: Wed, 13 Sep 2017 03:37:54 GMT  
		Size: 981.7 KB (981727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7341f2c415eca72cd946aadf5b2c7aed08f6395677a1912548518e1237a0d599`  
		Last Modified: Wed, 13 Sep 2017 03:37:53 GMT  
		Size: 5.7 MB (5747028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c034df8c6ac2ba1841543a8a2b9824563a3fea8785ab3078ce5fbd82fa7469`  
		Last Modified: Wed, 13 Sep 2017 03:37:52 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf80d6b280353fd829ca595fec69807a8c4d41e7d03da5b3132b0cb385a32f4e`  
		Last Modified: Wed, 13 Sep 2017 03:37:52 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.10` - linux; arm variant v5

```console
$ docker pull redis@sha256:084cc66d30854f3b5a0bf8a9eb59c5cf76bdaac203ce64a14b27e2b8359ea6da
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35037869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49d92b38bb20c29527b161ab149981b3ea95ff6177195374590b22dd8eda96d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 19:57:26 GMT
ADD file:606c213181f629ee41d4467828fb9801d09971722004715d4ee5e715f51d1704 in / 
# Fri, 08 Sep 2017 19:57:29 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 02:04:25 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 09 Sep 2017 02:04:26 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 02:09:30 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 09 Sep 2017 02:09:31 GMT
ENV REDIS_VERSION=3.2.10
# Sat, 09 Sep 2017 02:09:32 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Sat, 09 Sep 2017 02:09:33 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Sat, 09 Sep 2017 02:37:26 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 09 Sep 2017 02:37:28 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 09 Sep 2017 02:37:29 GMT
VOLUME [/data]
# Sat, 09 Sep 2017 02:37:30 GMT
WORKDIR /data
# Sat, 09 Sep 2017 02:37:31 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 09 Sep 2017 02:37:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Sep 2017 02:37:33 GMT
EXPOSE 6379/tcp
# Sat, 09 Sep 2017 02:37:35 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c730baecba27c98917b2ee85dc172ed0ef62d1decdc5064d89296a8edb1657f3`  
		Last Modified: Fri, 08 Sep 2017 20:13:04 GMT  
		Size: 28.4 MB (28422486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d6c4d9a2fba872cff461e8e8c20b69ea3aa9d829462a25dd1c8795b0009856`  
		Last Modified: Sat, 09 Sep 2017 02:44:20 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53631fc6671832d1ad815bc338d2e57c9838bbc229916e7d3a9a5f11df03bdeb`  
		Last Modified: Sat, 09 Sep 2017 02:44:20 GMT  
		Size: 971.4 KB (971422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebba50d6a862f983abad4c791f8abcb962778bcc8b7cb28dff6a27b49a002a0f`  
		Last Modified: Sat, 09 Sep 2017 02:44:21 GMT  
		Size: 5.6 MB (5641374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:339879256f56373961a5f53f5c3e97dd3620ee7ef9cef5e1bb8ffe67b234973f`  
		Last Modified: Sat, 09 Sep 2017 02:44:20 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d897021d39a78c7c0f23badb15c0f1f9686983cac77880bf8c819be2f3027b07`  
		Last Modified: Sat, 09 Sep 2017 02:44:20 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.10` - linux; arm variant v7

```console
$ docker pull redis@sha256:94542d6a4ae4375b1819f0c6e95724abaf4c2725ef1dbe60de79de9d79d1b41c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 MB (32714272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d9be9678b488ec9209d3750d0c73e4ff8bb8c2f0e12500985bb6b7ee2288829`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:46 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Sat, 09 Sep 2017 01:40:47 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 02:23:36 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 12 Sep 2017 02:23:38 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Sep 2017 02:30:52 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Sep 2017 02:30:53 GMT
ENV REDIS_VERSION=3.2.10
# Tue, 12 Sep 2017 02:30:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Tue, 12 Sep 2017 02:30:56 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Tue, 12 Sep 2017 02:38:51 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Sep 2017 02:38:54 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 12 Sep 2017 02:38:56 GMT
VOLUME [/data]
# Tue, 12 Sep 2017 02:38:57 GMT
WORKDIR /data
# Tue, 12 Sep 2017 02:38:58 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 12 Sep 2017 02:39:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 02:39:01 GMT
EXPOSE 6379/tcp
# Tue, 12 Sep 2017 02:39:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5ec7d30a9a8c4943b1650d24c5857d17b69f0e4bb62241d56894484ff9315547`  
		Last Modified: Sat, 09 Sep 2017 01:51:42 GMT  
		Size: 26.3 MB (26279463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681a2ce24187b910a55e37705ba11b41e87a6950949abceb35177553ec00e7d7`  
		Last Modified: Tue, 12 Sep 2017 02:58:45 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd0ed4f3f6d3475fdbe0ae0c48cd0b3c09bf3fdf3dfa96b3a98d3ea06044375`  
		Last Modified: Tue, 12 Sep 2017 02:58:45 GMT  
		Size: 956.3 KB (956264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d97ff5aa6e523774e45c7f40730f59b1b6789f6703708d3e38d1ac54268c6550`  
		Last Modified: Tue, 12 Sep 2017 02:58:47 GMT  
		Size: 5.5 MB (5475959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a736e1959b00bd3a7ff247587f3dc4293892e6a5458caef1f0c23275275ecc`  
		Last Modified: Tue, 12 Sep 2017 02:58:45 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba5133ced63553eb60f1e6361c2668342527a9728a1937924e120851a5fed8c`  
		Last Modified: Tue, 12 Sep 2017 02:58:46 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.10` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:234b0eceb063c1e12c069540373f4a6f477875fd979d66bde7f47e418bb8621e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34281038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6f767c964ec37b0448720c650ad0fba9c39bd51d9e2ca70d3347708918b2184`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 17:24:21 GMT
ADD file:e941b26069cf288fadf2ab835d4f0c3a681f3f882d81686662d20f9642928795 in / 
# Fri, 08 Sep 2017 17:24:22 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 02:47:18 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 09 Sep 2017 02:47:19 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 02:48:38 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 09 Sep 2017 02:48:39 GMT
ENV REDIS_VERSION=3.2.10
# Sat, 09 Sep 2017 02:48:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Sat, 09 Sep 2017 02:48:41 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Sat, 09 Sep 2017 02:53:21 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 09 Sep 2017 02:53:28 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 09 Sep 2017 02:53:31 GMT
VOLUME [/data]
# Sat, 09 Sep 2017 02:53:33 GMT
WORKDIR /data
# Sat, 09 Sep 2017 02:53:35 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 09 Sep 2017 02:53:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Sep 2017 02:53:38 GMT
EXPOSE 6379/tcp
# Sat, 09 Sep 2017 02:53:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:01c8fcecd171557c0af8130e86fd47e393a2791dc2ea655cb5f4f0ed6b95ef51`  
		Last Modified: Fri, 08 Sep 2017 17:36:14 GMT  
		Size: 27.5 MB (27480389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715ea475c1dc269a38ebfee254376c154c2dc2a64a2887d559243eb5e59429d5`  
		Last Modified: Sat, 09 Sep 2017 02:57:13 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:287b4ff744d288b6c4cb9ee329a00c3cbb5acb152ae88eac786ac9084a530a7b`  
		Last Modified: Sat, 09 Sep 2017 02:57:14 GMT  
		Size: 948.7 KB (948729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddeb70a389068a1d6be0e70fab816d7bedeeb755b7c13934c34973b6e5f18600`  
		Last Modified: Sat, 09 Sep 2017 02:57:16 GMT  
		Size: 5.8 MB (5849333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a71d90fc010f335d5670d613094f9806d591887e10e9c905c975f36cee556e`  
		Last Modified: Sat, 09 Sep 2017 02:57:13 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307b4e8105e289b73463c321aba934d434af1d2fc1a7b879a3bdf77a834d4382`  
		Last Modified: Sat, 09 Sep 2017 02:57:13 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.10` - linux; 386

```console
$ docker pull redis@sha256:ca3d20b63d029be20c5fcd2bb0947f588db90c6537f1aab7cf32c58cefbb378d
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36452785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a5d75c6c7f42ac7e8d9a1ee06a0026a976bce93634de83de48935044aedd938`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:05 GMT
ADD file:cd8c8c04f635ce6e14de5271949afcf67b9c480ea35ba633423d385975e330ad in / 
# Fri, 08 Sep 2017 13:18:05 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:12:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 17:12:55 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 17:13:53 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 17:13:54 GMT
ENV REDIS_VERSION=3.2.10
# Fri, 08 Sep 2017 17:13:56 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Fri, 08 Sep 2017 17:13:57 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Fri, 08 Sep 2017 17:15:23 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 17:15:24 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Sep 2017 17:15:25 GMT
VOLUME [/data]
# Fri, 08 Sep 2017 17:15:25 GMT
WORKDIR /data
# Fri, 08 Sep 2017 17:15:26 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 08 Sep 2017 17:15:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 17:15:29 GMT
EXPOSE 6379/tcp
# Fri, 08 Sep 2017 17:15:29 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:60dc9bcedd31a278f8b25a98451958fb75022352fe550042039e16ce32422ecf`  
		Last Modified: Fri, 08 Sep 2017 13:23:15 GMT  
		Size: 30.3 MB (30264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ede072b04252ed37d0b3f458abd925ed9a16c1453d1dbe3884f06ff416bc39c`  
		Last Modified: Fri, 08 Sep 2017 17:17:12 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3633915fd03a8ec800300ef25f0e4fc969383fe4a4dc1725bf5c9e181ef84bac`  
		Last Modified: Fri, 08 Sep 2017 17:17:13 GMT  
		Size: 960.8 KB (960783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c782c70282c4ad67dbc90f74342b9ab2be626f3473e6003b912a66e64bdbc0aa`  
		Last Modified: Fri, 08 Sep 2017 17:17:13 GMT  
		Size: 5.2 MB (5225258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f198ea64b21f833d21f9c96670c012f2ce898fe87b2fa4a0c729216bbd21a9`  
		Last Modified: Fri, 08 Sep 2017 17:17:12 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66375f98fcdf88473b20a634ee529e8336f8213c625f2b388bac402f57a5997c`  
		Last Modified: Fri, 08 Sep 2017 17:17:12 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.10` - linux; ppc64le

```console
$ docker pull redis@sha256:67eb37975f8a979f5740b9dff46779f680434b9bc7fa912b8fed6536fe3bddd4
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36249106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:813c3dfc5749f93d8179017dc952b242a85fe0f0310a08ec7f41f4f5351b027f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:35 GMT
ADD file:a71c29d4477813e82c1dc250af55ac351262466c8d3b71f16ba55c334df128cb in / 
# Fri, 08 Sep 2017 00:32:35 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 02:36:41 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 02:36:41 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 02:37:07 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 02:37:08 GMT
ENV REDIS_VERSION=3.2.10
# Fri, 08 Sep 2017 02:37:08 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Fri, 08 Sep 2017 02:37:08 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Fri, 08 Sep 2017 02:37:49 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 02:37:50 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Sep 2017 02:37:50 GMT
VOLUME [/data]
# Fri, 08 Sep 2017 02:37:50 GMT
WORKDIR /data
# Fri, 08 Sep 2017 02:37:50 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 08 Sep 2017 02:37:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 02:37:51 GMT
EXPOSE 6379/tcp
# Fri, 08 Sep 2017 02:37:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c81aec82dcf4ce3160634cefb76527ab80d464191cc48ad6c4593766c230004b`  
		Last Modified: Fri, 08 Sep 2017 00:37:39 GMT  
		Size: 29.3 MB (29306443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b7dc9fbcb59c464bb2dee6a93c8de45a94e651da0f7e73b9463f91b584d718`  
		Last Modified: Fri, 08 Sep 2017 02:38:52 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8fdc5bb87107ce2c801e86b5daf0b77abd4a00109cfd20b0c250b4e27c555d`  
		Last Modified: Fri, 08 Sep 2017 02:38:52 GMT  
		Size: 950.4 KB (950420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34e31ab41bd9bcba50a4ff3c77048a67ccaa94b02f2bdee20c03c6171f7ca95d`  
		Last Modified: Fri, 08 Sep 2017 02:38:51 GMT  
		Size: 6.0 MB (5989621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacb83ce21b0e4263ee01b170220ad0955d800ebffa624c5a6447b9896ab9f5a`  
		Last Modified: Fri, 08 Sep 2017 02:38:49 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:403498c602455d04679d6fc38f909647d454dbf72093495ad9a2812779cbced4`  
		Last Modified: Fri, 08 Sep 2017 02:38:49 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.10` - linux; s390x

```console
$ docker pull redis@sha256:588de527c2122065d60418e7dabbc6358152ade2a358aa91d299f24791b7087d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37438332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d26c7b8067abe0529f5ae1b2410ba9bdf8b873a52cf1e27025260fe3bb2f7bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:50 GMT
ADD file:520d2b400acdfce1df5aa9f6322a091acc0302fcef67b02c35f2fabb06f00377 in / 
# Fri, 08 Sep 2017 05:21:51 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:14:31 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 07:14:31 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 07:14:50 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 07:14:50 GMT
ENV REDIS_VERSION=3.2.10
# Fri, 08 Sep 2017 07:14:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Fri, 08 Sep 2017 07:14:51 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Fri, 08 Sep 2017 07:15:26 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 07:15:26 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Sep 2017 07:15:26 GMT
VOLUME [/data]
# Fri, 08 Sep 2017 07:15:27 GMT
WORKDIR /data
# Fri, 08 Sep 2017 07:15:27 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 08 Sep 2017 07:15:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 07:15:27 GMT
EXPOSE 6379/tcp
# Fri, 08 Sep 2017 07:15:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:69a1c1f09006646402113c13549903b3334134cbc88f6a3cc3aa52b906115dae`  
		Last Modified: Fri, 08 Sep 2017 05:25:03 GMT  
		Size: 30.3 MB (30294153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0e7d3e483472434f624e773ed187c706ad109c44f1a568fd72d8677aafbb2c`  
		Last Modified: Fri, 08 Sep 2017 07:16:19 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:714c5ed9756cb27be8619d079c85a8ef0ec3696d7acfa4202eeb56c800845cd0`  
		Last Modified: Fri, 08 Sep 2017 07:16:19 GMT  
		Size: 966.9 KB (966854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e107e5b2fb8b725f75405d680ab3129e9c1a0f20e0bebeeb900cac0c4024fb15`  
		Last Modified: Fri, 08 Sep 2017 07:16:20 GMT  
		Size: 6.2 MB (6174736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0654540aae2b482a259ac54e6e4a5fea9db0a31da14f19c1106551500f7d4920`  
		Last Modified: Fri, 08 Sep 2017 07:16:18 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9feefbb0df22dd7adfa86ea50f9f60ad772bc62c16dd64c8837daf4eab608d6d`  
		Last Modified: Fri, 08 Sep 2017 07:16:19 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2`

```console
$ docker pull redis@sha256:7e1d44d500002b30d0b7ca528c5550b2e97031e3158fd470b60c298716359752
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
$ docker pull redis@sha256:f13c4e3454c7bdfe9dca6d62634e56ff7277904e5381ba2a23a8c713c49a3f58
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36844478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be044336d7a4aed25d5d9524439c2b83f74e8239bc8097e02c17e8204ab82e97`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 03:32:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 13 Sep 2017 03:32:21 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Sep 2017 03:32:49 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Sep 2017 03:32:49 GMT
ENV REDIS_VERSION=3.2.10
# Wed, 13 Sep 2017 03:32:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Wed, 13 Sep 2017 03:32:50 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Wed, 13 Sep 2017 03:33:34 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Sep 2017 03:33:35 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 13 Sep 2017 03:33:35 GMT
VOLUME [/data]
# Wed, 13 Sep 2017 03:33:35 GMT
WORKDIR /data
# Wed, 13 Sep 2017 03:33:35 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 13 Sep 2017 03:33:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 03:33:36 GMT
EXPOSE 6379/tcp
# Wed, 13 Sep 2017 03:33:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc32c7d9b0f4d408e70aa19dd530fc281bbd0ab73b49e2a9911affdd76c120e3`  
		Last Modified: Wed, 13 Sep 2017 03:37:54 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad60cc6fa43175ef5587cc699b884aeb50a863e5f224a79e71ad7d4a29140659`  
		Last Modified: Wed, 13 Sep 2017 03:37:54 GMT  
		Size: 981.7 KB (981727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7341f2c415eca72cd946aadf5b2c7aed08f6395677a1912548518e1237a0d599`  
		Last Modified: Wed, 13 Sep 2017 03:37:53 GMT  
		Size: 5.7 MB (5747028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c034df8c6ac2ba1841543a8a2b9824563a3fea8785ab3078ce5fbd82fa7469`  
		Last Modified: Wed, 13 Sep 2017 03:37:52 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf80d6b280353fd829ca595fec69807a8c4d41e7d03da5b3132b0cb385a32f4e`  
		Last Modified: Wed, 13 Sep 2017 03:37:52 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; arm variant v5

```console
$ docker pull redis@sha256:084cc66d30854f3b5a0bf8a9eb59c5cf76bdaac203ce64a14b27e2b8359ea6da
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35037869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49d92b38bb20c29527b161ab149981b3ea95ff6177195374590b22dd8eda96d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 19:57:26 GMT
ADD file:606c213181f629ee41d4467828fb9801d09971722004715d4ee5e715f51d1704 in / 
# Fri, 08 Sep 2017 19:57:29 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 02:04:25 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 09 Sep 2017 02:04:26 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 02:09:30 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 09 Sep 2017 02:09:31 GMT
ENV REDIS_VERSION=3.2.10
# Sat, 09 Sep 2017 02:09:32 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Sat, 09 Sep 2017 02:09:33 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Sat, 09 Sep 2017 02:37:26 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 09 Sep 2017 02:37:28 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 09 Sep 2017 02:37:29 GMT
VOLUME [/data]
# Sat, 09 Sep 2017 02:37:30 GMT
WORKDIR /data
# Sat, 09 Sep 2017 02:37:31 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 09 Sep 2017 02:37:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Sep 2017 02:37:33 GMT
EXPOSE 6379/tcp
# Sat, 09 Sep 2017 02:37:35 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c730baecba27c98917b2ee85dc172ed0ef62d1decdc5064d89296a8edb1657f3`  
		Last Modified: Fri, 08 Sep 2017 20:13:04 GMT  
		Size: 28.4 MB (28422486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d6c4d9a2fba872cff461e8e8c20b69ea3aa9d829462a25dd1c8795b0009856`  
		Last Modified: Sat, 09 Sep 2017 02:44:20 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53631fc6671832d1ad815bc338d2e57c9838bbc229916e7d3a9a5f11df03bdeb`  
		Last Modified: Sat, 09 Sep 2017 02:44:20 GMT  
		Size: 971.4 KB (971422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebba50d6a862f983abad4c791f8abcb962778bcc8b7cb28dff6a27b49a002a0f`  
		Last Modified: Sat, 09 Sep 2017 02:44:21 GMT  
		Size: 5.6 MB (5641374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:339879256f56373961a5f53f5c3e97dd3620ee7ef9cef5e1bb8ffe67b234973f`  
		Last Modified: Sat, 09 Sep 2017 02:44:20 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d897021d39a78c7c0f23badb15c0f1f9686983cac77880bf8c819be2f3027b07`  
		Last Modified: Sat, 09 Sep 2017 02:44:20 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; arm variant v7

```console
$ docker pull redis@sha256:94542d6a4ae4375b1819f0c6e95724abaf4c2725ef1dbe60de79de9d79d1b41c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 MB (32714272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d9be9678b488ec9209d3750d0c73e4ff8bb8c2f0e12500985bb6b7ee2288829`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:46 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Sat, 09 Sep 2017 01:40:47 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 02:23:36 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 12 Sep 2017 02:23:38 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Sep 2017 02:30:52 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Sep 2017 02:30:53 GMT
ENV REDIS_VERSION=3.2.10
# Tue, 12 Sep 2017 02:30:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Tue, 12 Sep 2017 02:30:56 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Tue, 12 Sep 2017 02:38:51 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Sep 2017 02:38:54 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 12 Sep 2017 02:38:56 GMT
VOLUME [/data]
# Tue, 12 Sep 2017 02:38:57 GMT
WORKDIR /data
# Tue, 12 Sep 2017 02:38:58 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 12 Sep 2017 02:39:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 02:39:01 GMT
EXPOSE 6379/tcp
# Tue, 12 Sep 2017 02:39:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5ec7d30a9a8c4943b1650d24c5857d17b69f0e4bb62241d56894484ff9315547`  
		Last Modified: Sat, 09 Sep 2017 01:51:42 GMT  
		Size: 26.3 MB (26279463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681a2ce24187b910a55e37705ba11b41e87a6950949abceb35177553ec00e7d7`  
		Last Modified: Tue, 12 Sep 2017 02:58:45 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd0ed4f3f6d3475fdbe0ae0c48cd0b3c09bf3fdf3dfa96b3a98d3ea06044375`  
		Last Modified: Tue, 12 Sep 2017 02:58:45 GMT  
		Size: 956.3 KB (956264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d97ff5aa6e523774e45c7f40730f59b1b6789f6703708d3e38d1ac54268c6550`  
		Last Modified: Tue, 12 Sep 2017 02:58:47 GMT  
		Size: 5.5 MB (5475959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a736e1959b00bd3a7ff247587f3dc4293892e6a5458caef1f0c23275275ecc`  
		Last Modified: Tue, 12 Sep 2017 02:58:45 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba5133ced63553eb60f1e6361c2668342527a9728a1937924e120851a5fed8c`  
		Last Modified: Tue, 12 Sep 2017 02:58:46 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:234b0eceb063c1e12c069540373f4a6f477875fd979d66bde7f47e418bb8621e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34281038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6f767c964ec37b0448720c650ad0fba9c39bd51d9e2ca70d3347708918b2184`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 17:24:21 GMT
ADD file:e941b26069cf288fadf2ab835d4f0c3a681f3f882d81686662d20f9642928795 in / 
# Fri, 08 Sep 2017 17:24:22 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 02:47:18 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 09 Sep 2017 02:47:19 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 02:48:38 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 09 Sep 2017 02:48:39 GMT
ENV REDIS_VERSION=3.2.10
# Sat, 09 Sep 2017 02:48:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Sat, 09 Sep 2017 02:48:41 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Sat, 09 Sep 2017 02:53:21 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 09 Sep 2017 02:53:28 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 09 Sep 2017 02:53:31 GMT
VOLUME [/data]
# Sat, 09 Sep 2017 02:53:33 GMT
WORKDIR /data
# Sat, 09 Sep 2017 02:53:35 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 09 Sep 2017 02:53:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Sep 2017 02:53:38 GMT
EXPOSE 6379/tcp
# Sat, 09 Sep 2017 02:53:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:01c8fcecd171557c0af8130e86fd47e393a2791dc2ea655cb5f4f0ed6b95ef51`  
		Last Modified: Fri, 08 Sep 2017 17:36:14 GMT  
		Size: 27.5 MB (27480389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715ea475c1dc269a38ebfee254376c154c2dc2a64a2887d559243eb5e59429d5`  
		Last Modified: Sat, 09 Sep 2017 02:57:13 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:287b4ff744d288b6c4cb9ee329a00c3cbb5acb152ae88eac786ac9084a530a7b`  
		Last Modified: Sat, 09 Sep 2017 02:57:14 GMT  
		Size: 948.7 KB (948729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddeb70a389068a1d6be0e70fab816d7bedeeb755b7c13934c34973b6e5f18600`  
		Last Modified: Sat, 09 Sep 2017 02:57:16 GMT  
		Size: 5.8 MB (5849333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a71d90fc010f335d5670d613094f9806d591887e10e9c905c975f36cee556e`  
		Last Modified: Sat, 09 Sep 2017 02:57:13 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307b4e8105e289b73463c321aba934d434af1d2fc1a7b879a3bdf77a834d4382`  
		Last Modified: Sat, 09 Sep 2017 02:57:13 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; 386

```console
$ docker pull redis@sha256:ca3d20b63d029be20c5fcd2bb0947f588db90c6537f1aab7cf32c58cefbb378d
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36452785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a5d75c6c7f42ac7e8d9a1ee06a0026a976bce93634de83de48935044aedd938`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:05 GMT
ADD file:cd8c8c04f635ce6e14de5271949afcf67b9c480ea35ba633423d385975e330ad in / 
# Fri, 08 Sep 2017 13:18:05 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:12:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 17:12:55 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 17:13:53 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 17:13:54 GMT
ENV REDIS_VERSION=3.2.10
# Fri, 08 Sep 2017 17:13:56 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Fri, 08 Sep 2017 17:13:57 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Fri, 08 Sep 2017 17:15:23 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 17:15:24 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Sep 2017 17:15:25 GMT
VOLUME [/data]
# Fri, 08 Sep 2017 17:15:25 GMT
WORKDIR /data
# Fri, 08 Sep 2017 17:15:26 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 08 Sep 2017 17:15:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 17:15:29 GMT
EXPOSE 6379/tcp
# Fri, 08 Sep 2017 17:15:29 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:60dc9bcedd31a278f8b25a98451958fb75022352fe550042039e16ce32422ecf`  
		Last Modified: Fri, 08 Sep 2017 13:23:15 GMT  
		Size: 30.3 MB (30264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ede072b04252ed37d0b3f458abd925ed9a16c1453d1dbe3884f06ff416bc39c`  
		Last Modified: Fri, 08 Sep 2017 17:17:12 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3633915fd03a8ec800300ef25f0e4fc969383fe4a4dc1725bf5c9e181ef84bac`  
		Last Modified: Fri, 08 Sep 2017 17:17:13 GMT  
		Size: 960.8 KB (960783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c782c70282c4ad67dbc90f74342b9ab2be626f3473e6003b912a66e64bdbc0aa`  
		Last Modified: Fri, 08 Sep 2017 17:17:13 GMT  
		Size: 5.2 MB (5225258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f198ea64b21f833d21f9c96670c012f2ce898fe87b2fa4a0c729216bbd21a9`  
		Last Modified: Fri, 08 Sep 2017 17:17:12 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66375f98fcdf88473b20a634ee529e8336f8213c625f2b388bac402f57a5997c`  
		Last Modified: Fri, 08 Sep 2017 17:17:12 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; ppc64le

```console
$ docker pull redis@sha256:67eb37975f8a979f5740b9dff46779f680434b9bc7fa912b8fed6536fe3bddd4
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36249106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:813c3dfc5749f93d8179017dc952b242a85fe0f0310a08ec7f41f4f5351b027f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:35 GMT
ADD file:a71c29d4477813e82c1dc250af55ac351262466c8d3b71f16ba55c334df128cb in / 
# Fri, 08 Sep 2017 00:32:35 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 02:36:41 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 02:36:41 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 02:37:07 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 02:37:08 GMT
ENV REDIS_VERSION=3.2.10
# Fri, 08 Sep 2017 02:37:08 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Fri, 08 Sep 2017 02:37:08 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Fri, 08 Sep 2017 02:37:49 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 02:37:50 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Sep 2017 02:37:50 GMT
VOLUME [/data]
# Fri, 08 Sep 2017 02:37:50 GMT
WORKDIR /data
# Fri, 08 Sep 2017 02:37:50 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 08 Sep 2017 02:37:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 02:37:51 GMT
EXPOSE 6379/tcp
# Fri, 08 Sep 2017 02:37:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c81aec82dcf4ce3160634cefb76527ab80d464191cc48ad6c4593766c230004b`  
		Last Modified: Fri, 08 Sep 2017 00:37:39 GMT  
		Size: 29.3 MB (29306443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b7dc9fbcb59c464bb2dee6a93c8de45a94e651da0f7e73b9463f91b584d718`  
		Last Modified: Fri, 08 Sep 2017 02:38:52 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8fdc5bb87107ce2c801e86b5daf0b77abd4a00109cfd20b0c250b4e27c555d`  
		Last Modified: Fri, 08 Sep 2017 02:38:52 GMT  
		Size: 950.4 KB (950420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34e31ab41bd9bcba50a4ff3c77048a67ccaa94b02f2bdee20c03c6171f7ca95d`  
		Last Modified: Fri, 08 Sep 2017 02:38:51 GMT  
		Size: 6.0 MB (5989621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacb83ce21b0e4263ee01b170220ad0955d800ebffa624c5a6447b9896ab9f5a`  
		Last Modified: Fri, 08 Sep 2017 02:38:49 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:403498c602455d04679d6fc38f909647d454dbf72093495ad9a2812779cbced4`  
		Last Modified: Fri, 08 Sep 2017 02:38:49 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; s390x

```console
$ docker pull redis@sha256:588de527c2122065d60418e7dabbc6358152ade2a358aa91d299f24791b7087d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37438332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d26c7b8067abe0529f5ae1b2410ba9bdf8b873a52cf1e27025260fe3bb2f7bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:50 GMT
ADD file:520d2b400acdfce1df5aa9f6322a091acc0302fcef67b02c35f2fabb06f00377 in / 
# Fri, 08 Sep 2017 05:21:51 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:14:31 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 07:14:31 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 07:14:50 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 07:14:50 GMT
ENV REDIS_VERSION=3.2.10
# Fri, 08 Sep 2017 07:14:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Fri, 08 Sep 2017 07:14:51 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Fri, 08 Sep 2017 07:15:26 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 07:15:26 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Sep 2017 07:15:26 GMT
VOLUME [/data]
# Fri, 08 Sep 2017 07:15:27 GMT
WORKDIR /data
# Fri, 08 Sep 2017 07:15:27 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 08 Sep 2017 07:15:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 07:15:27 GMT
EXPOSE 6379/tcp
# Fri, 08 Sep 2017 07:15:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:69a1c1f09006646402113c13549903b3334134cbc88f6a3cc3aa52b906115dae`  
		Last Modified: Fri, 08 Sep 2017 05:25:03 GMT  
		Size: 30.3 MB (30294153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0e7d3e483472434f624e773ed187c706ad109c44f1a568fd72d8677aafbb2c`  
		Last Modified: Fri, 08 Sep 2017 07:16:19 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:714c5ed9756cb27be8619d079c85a8ef0ec3696d7acfa4202eeb56c800845cd0`  
		Last Modified: Fri, 08 Sep 2017 07:16:19 GMT  
		Size: 966.9 KB (966854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e107e5b2fb8b725f75405d680ab3129e9c1a0f20e0bebeeb900cac0c4024fb15`  
		Last Modified: Fri, 08 Sep 2017 07:16:20 GMT  
		Size: 6.2 MB (6174736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0654540aae2b482a259ac54e6e4a5fea9db0a31da14f19c1106551500f7d4920`  
		Last Modified: Fri, 08 Sep 2017 07:16:18 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9feefbb0df22dd7adfa86ea50f9f60ad772bc62c16dd64c8837daf4eab608d6d`  
		Last Modified: Fri, 08 Sep 2017 07:16:19 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3`

```console
$ docker pull redis@sha256:7e1d44d500002b30d0b7ca528c5550b2e97031e3158fd470b60c298716359752
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
$ docker pull redis@sha256:f13c4e3454c7bdfe9dca6d62634e56ff7277904e5381ba2a23a8c713c49a3f58
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36844478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be044336d7a4aed25d5d9524439c2b83f74e8239bc8097e02c17e8204ab82e97`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 03:32:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 13 Sep 2017 03:32:21 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Sep 2017 03:32:49 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Sep 2017 03:32:49 GMT
ENV REDIS_VERSION=3.2.10
# Wed, 13 Sep 2017 03:32:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Wed, 13 Sep 2017 03:32:50 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Wed, 13 Sep 2017 03:33:34 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Sep 2017 03:33:35 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 13 Sep 2017 03:33:35 GMT
VOLUME [/data]
# Wed, 13 Sep 2017 03:33:35 GMT
WORKDIR /data
# Wed, 13 Sep 2017 03:33:35 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 13 Sep 2017 03:33:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 03:33:36 GMT
EXPOSE 6379/tcp
# Wed, 13 Sep 2017 03:33:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc32c7d9b0f4d408e70aa19dd530fc281bbd0ab73b49e2a9911affdd76c120e3`  
		Last Modified: Wed, 13 Sep 2017 03:37:54 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad60cc6fa43175ef5587cc699b884aeb50a863e5f224a79e71ad7d4a29140659`  
		Last Modified: Wed, 13 Sep 2017 03:37:54 GMT  
		Size: 981.7 KB (981727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7341f2c415eca72cd946aadf5b2c7aed08f6395677a1912548518e1237a0d599`  
		Last Modified: Wed, 13 Sep 2017 03:37:53 GMT  
		Size: 5.7 MB (5747028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c034df8c6ac2ba1841543a8a2b9824563a3fea8785ab3078ce5fbd82fa7469`  
		Last Modified: Wed, 13 Sep 2017 03:37:52 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf80d6b280353fd829ca595fec69807a8c4d41e7d03da5b3132b0cb385a32f4e`  
		Last Modified: Wed, 13 Sep 2017 03:37:52 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; arm variant v5

```console
$ docker pull redis@sha256:084cc66d30854f3b5a0bf8a9eb59c5cf76bdaac203ce64a14b27e2b8359ea6da
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35037869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49d92b38bb20c29527b161ab149981b3ea95ff6177195374590b22dd8eda96d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 19:57:26 GMT
ADD file:606c213181f629ee41d4467828fb9801d09971722004715d4ee5e715f51d1704 in / 
# Fri, 08 Sep 2017 19:57:29 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 02:04:25 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 09 Sep 2017 02:04:26 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 02:09:30 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 09 Sep 2017 02:09:31 GMT
ENV REDIS_VERSION=3.2.10
# Sat, 09 Sep 2017 02:09:32 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Sat, 09 Sep 2017 02:09:33 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Sat, 09 Sep 2017 02:37:26 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 09 Sep 2017 02:37:28 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 09 Sep 2017 02:37:29 GMT
VOLUME [/data]
# Sat, 09 Sep 2017 02:37:30 GMT
WORKDIR /data
# Sat, 09 Sep 2017 02:37:31 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 09 Sep 2017 02:37:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Sep 2017 02:37:33 GMT
EXPOSE 6379/tcp
# Sat, 09 Sep 2017 02:37:35 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c730baecba27c98917b2ee85dc172ed0ef62d1decdc5064d89296a8edb1657f3`  
		Last Modified: Fri, 08 Sep 2017 20:13:04 GMT  
		Size: 28.4 MB (28422486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d6c4d9a2fba872cff461e8e8c20b69ea3aa9d829462a25dd1c8795b0009856`  
		Last Modified: Sat, 09 Sep 2017 02:44:20 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53631fc6671832d1ad815bc338d2e57c9838bbc229916e7d3a9a5f11df03bdeb`  
		Last Modified: Sat, 09 Sep 2017 02:44:20 GMT  
		Size: 971.4 KB (971422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebba50d6a862f983abad4c791f8abcb962778bcc8b7cb28dff6a27b49a002a0f`  
		Last Modified: Sat, 09 Sep 2017 02:44:21 GMT  
		Size: 5.6 MB (5641374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:339879256f56373961a5f53f5c3e97dd3620ee7ef9cef5e1bb8ffe67b234973f`  
		Last Modified: Sat, 09 Sep 2017 02:44:20 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d897021d39a78c7c0f23badb15c0f1f9686983cac77880bf8c819be2f3027b07`  
		Last Modified: Sat, 09 Sep 2017 02:44:20 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; arm variant v7

```console
$ docker pull redis@sha256:94542d6a4ae4375b1819f0c6e95724abaf4c2725ef1dbe60de79de9d79d1b41c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 MB (32714272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d9be9678b488ec9209d3750d0c73e4ff8bb8c2f0e12500985bb6b7ee2288829`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:46 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Sat, 09 Sep 2017 01:40:47 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 02:23:36 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 12 Sep 2017 02:23:38 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Sep 2017 02:30:52 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Sep 2017 02:30:53 GMT
ENV REDIS_VERSION=3.2.10
# Tue, 12 Sep 2017 02:30:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Tue, 12 Sep 2017 02:30:56 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Tue, 12 Sep 2017 02:38:51 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Sep 2017 02:38:54 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 12 Sep 2017 02:38:56 GMT
VOLUME [/data]
# Tue, 12 Sep 2017 02:38:57 GMT
WORKDIR /data
# Tue, 12 Sep 2017 02:38:58 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 12 Sep 2017 02:39:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 02:39:01 GMT
EXPOSE 6379/tcp
# Tue, 12 Sep 2017 02:39:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5ec7d30a9a8c4943b1650d24c5857d17b69f0e4bb62241d56894484ff9315547`  
		Last Modified: Sat, 09 Sep 2017 01:51:42 GMT  
		Size: 26.3 MB (26279463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681a2ce24187b910a55e37705ba11b41e87a6950949abceb35177553ec00e7d7`  
		Last Modified: Tue, 12 Sep 2017 02:58:45 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd0ed4f3f6d3475fdbe0ae0c48cd0b3c09bf3fdf3dfa96b3a98d3ea06044375`  
		Last Modified: Tue, 12 Sep 2017 02:58:45 GMT  
		Size: 956.3 KB (956264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d97ff5aa6e523774e45c7f40730f59b1b6789f6703708d3e38d1ac54268c6550`  
		Last Modified: Tue, 12 Sep 2017 02:58:47 GMT  
		Size: 5.5 MB (5475959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a736e1959b00bd3a7ff247587f3dc4293892e6a5458caef1f0c23275275ecc`  
		Last Modified: Tue, 12 Sep 2017 02:58:45 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba5133ced63553eb60f1e6361c2668342527a9728a1937924e120851a5fed8c`  
		Last Modified: Tue, 12 Sep 2017 02:58:46 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:234b0eceb063c1e12c069540373f4a6f477875fd979d66bde7f47e418bb8621e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34281038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6f767c964ec37b0448720c650ad0fba9c39bd51d9e2ca70d3347708918b2184`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 17:24:21 GMT
ADD file:e941b26069cf288fadf2ab835d4f0c3a681f3f882d81686662d20f9642928795 in / 
# Fri, 08 Sep 2017 17:24:22 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 02:47:18 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 09 Sep 2017 02:47:19 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 02:48:38 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 09 Sep 2017 02:48:39 GMT
ENV REDIS_VERSION=3.2.10
# Sat, 09 Sep 2017 02:48:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Sat, 09 Sep 2017 02:48:41 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Sat, 09 Sep 2017 02:53:21 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 09 Sep 2017 02:53:28 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 09 Sep 2017 02:53:31 GMT
VOLUME [/data]
# Sat, 09 Sep 2017 02:53:33 GMT
WORKDIR /data
# Sat, 09 Sep 2017 02:53:35 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 09 Sep 2017 02:53:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Sep 2017 02:53:38 GMT
EXPOSE 6379/tcp
# Sat, 09 Sep 2017 02:53:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:01c8fcecd171557c0af8130e86fd47e393a2791dc2ea655cb5f4f0ed6b95ef51`  
		Last Modified: Fri, 08 Sep 2017 17:36:14 GMT  
		Size: 27.5 MB (27480389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715ea475c1dc269a38ebfee254376c154c2dc2a64a2887d559243eb5e59429d5`  
		Last Modified: Sat, 09 Sep 2017 02:57:13 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:287b4ff744d288b6c4cb9ee329a00c3cbb5acb152ae88eac786ac9084a530a7b`  
		Last Modified: Sat, 09 Sep 2017 02:57:14 GMT  
		Size: 948.7 KB (948729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddeb70a389068a1d6be0e70fab816d7bedeeb755b7c13934c34973b6e5f18600`  
		Last Modified: Sat, 09 Sep 2017 02:57:16 GMT  
		Size: 5.8 MB (5849333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a71d90fc010f335d5670d613094f9806d591887e10e9c905c975f36cee556e`  
		Last Modified: Sat, 09 Sep 2017 02:57:13 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307b4e8105e289b73463c321aba934d434af1d2fc1a7b879a3bdf77a834d4382`  
		Last Modified: Sat, 09 Sep 2017 02:57:13 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; 386

```console
$ docker pull redis@sha256:ca3d20b63d029be20c5fcd2bb0947f588db90c6537f1aab7cf32c58cefbb378d
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36452785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a5d75c6c7f42ac7e8d9a1ee06a0026a976bce93634de83de48935044aedd938`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:05 GMT
ADD file:cd8c8c04f635ce6e14de5271949afcf67b9c480ea35ba633423d385975e330ad in / 
# Fri, 08 Sep 2017 13:18:05 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:12:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 17:12:55 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 17:13:53 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 17:13:54 GMT
ENV REDIS_VERSION=3.2.10
# Fri, 08 Sep 2017 17:13:56 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Fri, 08 Sep 2017 17:13:57 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Fri, 08 Sep 2017 17:15:23 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 17:15:24 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Sep 2017 17:15:25 GMT
VOLUME [/data]
# Fri, 08 Sep 2017 17:15:25 GMT
WORKDIR /data
# Fri, 08 Sep 2017 17:15:26 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 08 Sep 2017 17:15:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 17:15:29 GMT
EXPOSE 6379/tcp
# Fri, 08 Sep 2017 17:15:29 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:60dc9bcedd31a278f8b25a98451958fb75022352fe550042039e16ce32422ecf`  
		Last Modified: Fri, 08 Sep 2017 13:23:15 GMT  
		Size: 30.3 MB (30264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ede072b04252ed37d0b3f458abd925ed9a16c1453d1dbe3884f06ff416bc39c`  
		Last Modified: Fri, 08 Sep 2017 17:17:12 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3633915fd03a8ec800300ef25f0e4fc969383fe4a4dc1725bf5c9e181ef84bac`  
		Last Modified: Fri, 08 Sep 2017 17:17:13 GMT  
		Size: 960.8 KB (960783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c782c70282c4ad67dbc90f74342b9ab2be626f3473e6003b912a66e64bdbc0aa`  
		Last Modified: Fri, 08 Sep 2017 17:17:13 GMT  
		Size: 5.2 MB (5225258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f198ea64b21f833d21f9c96670c012f2ce898fe87b2fa4a0c729216bbd21a9`  
		Last Modified: Fri, 08 Sep 2017 17:17:12 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66375f98fcdf88473b20a634ee529e8336f8213c625f2b388bac402f57a5997c`  
		Last Modified: Fri, 08 Sep 2017 17:17:12 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; ppc64le

```console
$ docker pull redis@sha256:67eb37975f8a979f5740b9dff46779f680434b9bc7fa912b8fed6536fe3bddd4
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36249106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:813c3dfc5749f93d8179017dc952b242a85fe0f0310a08ec7f41f4f5351b027f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:35 GMT
ADD file:a71c29d4477813e82c1dc250af55ac351262466c8d3b71f16ba55c334df128cb in / 
# Fri, 08 Sep 2017 00:32:35 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 02:36:41 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 02:36:41 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 02:37:07 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 02:37:08 GMT
ENV REDIS_VERSION=3.2.10
# Fri, 08 Sep 2017 02:37:08 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Fri, 08 Sep 2017 02:37:08 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Fri, 08 Sep 2017 02:37:49 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 02:37:50 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Sep 2017 02:37:50 GMT
VOLUME [/data]
# Fri, 08 Sep 2017 02:37:50 GMT
WORKDIR /data
# Fri, 08 Sep 2017 02:37:50 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 08 Sep 2017 02:37:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 02:37:51 GMT
EXPOSE 6379/tcp
# Fri, 08 Sep 2017 02:37:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c81aec82dcf4ce3160634cefb76527ab80d464191cc48ad6c4593766c230004b`  
		Last Modified: Fri, 08 Sep 2017 00:37:39 GMT  
		Size: 29.3 MB (29306443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b7dc9fbcb59c464bb2dee6a93c8de45a94e651da0f7e73b9463f91b584d718`  
		Last Modified: Fri, 08 Sep 2017 02:38:52 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8fdc5bb87107ce2c801e86b5daf0b77abd4a00109cfd20b0c250b4e27c555d`  
		Last Modified: Fri, 08 Sep 2017 02:38:52 GMT  
		Size: 950.4 KB (950420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34e31ab41bd9bcba50a4ff3c77048a67ccaa94b02f2bdee20c03c6171f7ca95d`  
		Last Modified: Fri, 08 Sep 2017 02:38:51 GMT  
		Size: 6.0 MB (5989621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacb83ce21b0e4263ee01b170220ad0955d800ebffa624c5a6447b9896ab9f5a`  
		Last Modified: Fri, 08 Sep 2017 02:38:49 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:403498c602455d04679d6fc38f909647d454dbf72093495ad9a2812779cbced4`  
		Last Modified: Fri, 08 Sep 2017 02:38:49 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; s390x

```console
$ docker pull redis@sha256:588de527c2122065d60418e7dabbc6358152ade2a358aa91d299f24791b7087d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37438332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d26c7b8067abe0529f5ae1b2410ba9bdf8b873a52cf1e27025260fe3bb2f7bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:50 GMT
ADD file:520d2b400acdfce1df5aa9f6322a091acc0302fcef67b02c35f2fabb06f00377 in / 
# Fri, 08 Sep 2017 05:21:51 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:14:31 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 07:14:31 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 07:14:50 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 07:14:50 GMT
ENV REDIS_VERSION=3.2.10
# Fri, 08 Sep 2017 07:14:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Fri, 08 Sep 2017 07:14:51 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Fri, 08 Sep 2017 07:15:26 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 07:15:26 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Sep 2017 07:15:26 GMT
VOLUME [/data]
# Fri, 08 Sep 2017 07:15:27 GMT
WORKDIR /data
# Fri, 08 Sep 2017 07:15:27 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 08 Sep 2017 07:15:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 07:15:27 GMT
EXPOSE 6379/tcp
# Fri, 08 Sep 2017 07:15:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:69a1c1f09006646402113c13549903b3334134cbc88f6a3cc3aa52b906115dae`  
		Last Modified: Fri, 08 Sep 2017 05:25:03 GMT  
		Size: 30.3 MB (30294153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0e7d3e483472434f624e773ed187c706ad109c44f1a568fd72d8677aafbb2c`  
		Last Modified: Fri, 08 Sep 2017 07:16:19 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:714c5ed9756cb27be8619d079c85a8ef0ec3696d7acfa4202eeb56c800845cd0`  
		Last Modified: Fri, 08 Sep 2017 07:16:19 GMT  
		Size: 966.9 KB (966854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e107e5b2fb8b725f75405d680ab3129e9c1a0f20e0bebeeb900cac0c4024fb15`  
		Last Modified: Fri, 08 Sep 2017 07:16:20 GMT  
		Size: 6.2 MB (6174736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0654540aae2b482a259ac54e6e4a5fea9db0a31da14f19c1106551500f7d4920`  
		Last Modified: Fri, 08 Sep 2017 07:16:18 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9feefbb0df22dd7adfa86ea50f9f60ad772bc62c16dd64c8837daf4eab608d6d`  
		Last Modified: Fri, 08 Sep 2017 07:16:19 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.10-32bit`

```console
$ docker pull redis@sha256:344ecf8fa0b1553af3ed60751e289ae47d822196b92f6b860fc940eb8cb0b402
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3.2.10-32bit` - linux; amd64

```console
$ docker pull redis@sha256:b30be9ae500b19232133326b64b4468d82f3fe7d2a53a3f64e4e13ec8624e9cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 MB (40706335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0669b1b967750981948919239a4376cce34ff725734dfeec7b5f430b9f9fe427`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 03:32:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 13 Sep 2017 03:32:21 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Sep 2017 03:32:49 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Sep 2017 03:32:49 GMT
ENV REDIS_VERSION=3.2.10
# Wed, 13 Sep 2017 03:32:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Wed, 13 Sep 2017 03:32:50 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Wed, 13 Sep 2017 03:33:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:34:40 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Sep 2017 03:34:40 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 13 Sep 2017 03:34:40 GMT
VOLUME [/data]
# Wed, 13 Sep 2017 03:34:41 GMT
WORKDIR /data
# Wed, 13 Sep 2017 03:34:41 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 13 Sep 2017 03:34:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 03:34:41 GMT
EXPOSE 6379/tcp
# Wed, 13 Sep 2017 03:34:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc32c7d9b0f4d408e70aa19dd530fc281bbd0ab73b49e2a9911affdd76c120e3`  
		Last Modified: Wed, 13 Sep 2017 03:37:54 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad60cc6fa43175ef5587cc699b884aeb50a863e5f224a79e71ad7d4a29140659`  
		Last Modified: Wed, 13 Sep 2017 03:37:54 GMT  
		Size: 981.7 KB (981727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418e3a426d05c5b89eb0ff47658470eb3ae06c9a78ceb7421aece15b9946c47d`  
		Last Modified: Wed, 13 Sep 2017 03:38:08 GMT  
		Size: 4.4 MB (4378560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2114aaec68b0cb4541aac79ddf16448504ddf8ae63abe3cc916b7c6f6abe0e`  
		Last Modified: Wed, 13 Sep 2017 03:38:08 GMT  
		Size: 5.2 MB (5230320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97eef6fed10d084206285ad3f36ca841c0439b97bd99ca6061778df16c739cfa`  
		Last Modified: Wed, 13 Sep 2017 03:38:07 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d7cb247b932b28f7112bfc495a728c9d681fbb0b8508929dd3e3ce48b6a493`  
		Last Modified: Wed, 13 Sep 2017 03:38:07 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-32bit`

```console
$ docker pull redis@sha256:344ecf8fa0b1553af3ed60751e289ae47d822196b92f6b860fc940eb8cb0b402
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3.2-32bit` - linux; amd64

```console
$ docker pull redis@sha256:b30be9ae500b19232133326b64b4468d82f3fe7d2a53a3f64e4e13ec8624e9cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 MB (40706335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0669b1b967750981948919239a4376cce34ff725734dfeec7b5f430b9f9fe427`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 03:32:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 13 Sep 2017 03:32:21 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Sep 2017 03:32:49 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Sep 2017 03:32:49 GMT
ENV REDIS_VERSION=3.2.10
# Wed, 13 Sep 2017 03:32:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Wed, 13 Sep 2017 03:32:50 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Wed, 13 Sep 2017 03:33:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:34:40 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Sep 2017 03:34:40 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 13 Sep 2017 03:34:40 GMT
VOLUME [/data]
# Wed, 13 Sep 2017 03:34:41 GMT
WORKDIR /data
# Wed, 13 Sep 2017 03:34:41 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 13 Sep 2017 03:34:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 03:34:41 GMT
EXPOSE 6379/tcp
# Wed, 13 Sep 2017 03:34:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc32c7d9b0f4d408e70aa19dd530fc281bbd0ab73b49e2a9911affdd76c120e3`  
		Last Modified: Wed, 13 Sep 2017 03:37:54 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad60cc6fa43175ef5587cc699b884aeb50a863e5f224a79e71ad7d4a29140659`  
		Last Modified: Wed, 13 Sep 2017 03:37:54 GMT  
		Size: 981.7 KB (981727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418e3a426d05c5b89eb0ff47658470eb3ae06c9a78ceb7421aece15b9946c47d`  
		Last Modified: Wed, 13 Sep 2017 03:38:08 GMT  
		Size: 4.4 MB (4378560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2114aaec68b0cb4541aac79ddf16448504ddf8ae63abe3cc916b7c6f6abe0e`  
		Last Modified: Wed, 13 Sep 2017 03:38:08 GMT  
		Size: 5.2 MB (5230320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97eef6fed10d084206285ad3f36ca841c0439b97bd99ca6061778df16c739cfa`  
		Last Modified: Wed, 13 Sep 2017 03:38:07 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d7cb247b932b28f7112bfc495a728c9d681fbb0b8508929dd3e3ce48b6a493`  
		Last Modified: Wed, 13 Sep 2017 03:38:07 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-32bit`

```console
$ docker pull redis@sha256:344ecf8fa0b1553af3ed60751e289ae47d822196b92f6b860fc940eb8cb0b402
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3-32bit` - linux; amd64

```console
$ docker pull redis@sha256:b30be9ae500b19232133326b64b4468d82f3fe7d2a53a3f64e4e13ec8624e9cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 MB (40706335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0669b1b967750981948919239a4376cce34ff725734dfeec7b5f430b9f9fe427`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 03:32:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 13 Sep 2017 03:32:21 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Sep 2017 03:32:49 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Sep 2017 03:32:49 GMT
ENV REDIS_VERSION=3.2.10
# Wed, 13 Sep 2017 03:32:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Wed, 13 Sep 2017 03:32:50 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Wed, 13 Sep 2017 03:33:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:34:40 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Sep 2017 03:34:40 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 13 Sep 2017 03:34:40 GMT
VOLUME [/data]
# Wed, 13 Sep 2017 03:34:41 GMT
WORKDIR /data
# Wed, 13 Sep 2017 03:34:41 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 13 Sep 2017 03:34:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 03:34:41 GMT
EXPOSE 6379/tcp
# Wed, 13 Sep 2017 03:34:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc32c7d9b0f4d408e70aa19dd530fc281bbd0ab73b49e2a9911affdd76c120e3`  
		Last Modified: Wed, 13 Sep 2017 03:37:54 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad60cc6fa43175ef5587cc699b884aeb50a863e5f224a79e71ad7d4a29140659`  
		Last Modified: Wed, 13 Sep 2017 03:37:54 GMT  
		Size: 981.7 KB (981727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418e3a426d05c5b89eb0ff47658470eb3ae06c9a78ceb7421aece15b9946c47d`  
		Last Modified: Wed, 13 Sep 2017 03:38:08 GMT  
		Size: 4.4 MB (4378560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2114aaec68b0cb4541aac79ddf16448504ddf8ae63abe3cc916b7c6f6abe0e`  
		Last Modified: Wed, 13 Sep 2017 03:38:08 GMT  
		Size: 5.2 MB (5230320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97eef6fed10d084206285ad3f36ca841c0439b97bd99ca6061778df16c739cfa`  
		Last Modified: Wed, 13 Sep 2017 03:38:07 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d7cb247b932b28f7112bfc495a728c9d681fbb0b8508929dd3e3ce48b6a493`  
		Last Modified: Wed, 13 Sep 2017 03:38:07 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.10-alpine`

```console
$ docker pull redis@sha256:8c4590c90c4f8f4412de7ed8aaafc6da62fb3104864b99cb1230f936fce2dcb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3.2.10-alpine` - linux; amd64

```console
$ docker pull redis@sha256:02f979ad4406c0817c9b43352ab38d2f6e51a10c4921ce42b02d19197a602f76
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7884721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb92e7734cf77b297f4039ad00b21cf76e23418907b3cc56ffad90fb20f0de1b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 03:34:43 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 13 Sep 2017 03:34:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Sep 2017 03:34:46 GMT
ENV REDIS_VERSION=3.2.10
# Wed, 13 Sep 2017 03:34:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Wed, 13 Sep 2017 03:34:47 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Wed, 13 Sep 2017 03:35:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Wed, 13 Sep 2017 03:35:10 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 13 Sep 2017 03:35:11 GMT
VOLUME [/data]
# Wed, 13 Sep 2017 03:35:11 GMT
WORKDIR /data
# Wed, 13 Sep 2017 03:35:11 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 13 Sep 2017 03:35:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 03:35:11 GMT
EXPOSE 6379/tcp
# Wed, 13 Sep 2017 03:35:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769f41498e4c5f8669706ff06c4ff2e63ba66b16c8a404a48c18c9d13e2470c5`  
		Last Modified: Wed, 13 Sep 2017 03:38:19 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60252c844d0b338a3314f4fe91a027ff8484aec059df0ca1a82aeb0f61c99206`  
		Last Modified: Wed, 13 Sep 2017 03:38:19 GMT  
		Size: 8.2 KB (8218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1499a4e72b2515b963758905d4f4114d3635d8f2f6ec0bc17223e748dff044bd`  
		Last Modified: Wed, 13 Sep 2017 03:38:21 GMT  
		Size: 5.9 MB (5884351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d56955a7b09a2e4d15118d000e0c7f721be5a49b366602117a137baf3a6fdaf`  
		Last Modified: Wed, 13 Sep 2017 03:38:19 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d685c1e75339ec138057c7ad1b3deb595e209c2852c0c0ae495847bdb26ea5`  
		Last Modified: Wed, 13 Sep 2017 03:38:20 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-alpine`

```console
$ docker pull redis@sha256:8c4590c90c4f8f4412de7ed8aaafc6da62fb3104864b99cb1230f936fce2dcb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3.2-alpine` - linux; amd64

```console
$ docker pull redis@sha256:02f979ad4406c0817c9b43352ab38d2f6e51a10c4921ce42b02d19197a602f76
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7884721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb92e7734cf77b297f4039ad00b21cf76e23418907b3cc56ffad90fb20f0de1b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 03:34:43 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 13 Sep 2017 03:34:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Sep 2017 03:34:46 GMT
ENV REDIS_VERSION=3.2.10
# Wed, 13 Sep 2017 03:34:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Wed, 13 Sep 2017 03:34:47 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Wed, 13 Sep 2017 03:35:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Wed, 13 Sep 2017 03:35:10 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 13 Sep 2017 03:35:11 GMT
VOLUME [/data]
# Wed, 13 Sep 2017 03:35:11 GMT
WORKDIR /data
# Wed, 13 Sep 2017 03:35:11 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 13 Sep 2017 03:35:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 03:35:11 GMT
EXPOSE 6379/tcp
# Wed, 13 Sep 2017 03:35:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769f41498e4c5f8669706ff06c4ff2e63ba66b16c8a404a48c18c9d13e2470c5`  
		Last Modified: Wed, 13 Sep 2017 03:38:19 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60252c844d0b338a3314f4fe91a027ff8484aec059df0ca1a82aeb0f61c99206`  
		Last Modified: Wed, 13 Sep 2017 03:38:19 GMT  
		Size: 8.2 KB (8218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1499a4e72b2515b963758905d4f4114d3635d8f2f6ec0bc17223e748dff044bd`  
		Last Modified: Wed, 13 Sep 2017 03:38:21 GMT  
		Size: 5.9 MB (5884351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d56955a7b09a2e4d15118d000e0c7f721be5a49b366602117a137baf3a6fdaf`  
		Last Modified: Wed, 13 Sep 2017 03:38:19 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d685c1e75339ec138057c7ad1b3deb595e209c2852c0c0ae495847bdb26ea5`  
		Last Modified: Wed, 13 Sep 2017 03:38:20 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-alpine`

```console
$ docker pull redis@sha256:8c4590c90c4f8f4412de7ed8aaafc6da62fb3104864b99cb1230f936fce2dcb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3-alpine` - linux; amd64

```console
$ docker pull redis@sha256:02f979ad4406c0817c9b43352ab38d2f6e51a10c4921ce42b02d19197a602f76
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7884721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb92e7734cf77b297f4039ad00b21cf76e23418907b3cc56ffad90fb20f0de1b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 03:34:43 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 13 Sep 2017 03:34:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Sep 2017 03:34:46 GMT
ENV REDIS_VERSION=3.2.10
# Wed, 13 Sep 2017 03:34:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Wed, 13 Sep 2017 03:34:47 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Wed, 13 Sep 2017 03:35:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Wed, 13 Sep 2017 03:35:10 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 13 Sep 2017 03:35:11 GMT
VOLUME [/data]
# Wed, 13 Sep 2017 03:35:11 GMT
WORKDIR /data
# Wed, 13 Sep 2017 03:35:11 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 13 Sep 2017 03:35:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 03:35:11 GMT
EXPOSE 6379/tcp
# Wed, 13 Sep 2017 03:35:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769f41498e4c5f8669706ff06c4ff2e63ba66b16c8a404a48c18c9d13e2470c5`  
		Last Modified: Wed, 13 Sep 2017 03:38:19 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60252c844d0b338a3314f4fe91a027ff8484aec059df0ca1a82aeb0f61c99206`  
		Last Modified: Wed, 13 Sep 2017 03:38:19 GMT  
		Size: 8.2 KB (8218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1499a4e72b2515b963758905d4f4114d3635d8f2f6ec0bc17223e748dff044bd`  
		Last Modified: Wed, 13 Sep 2017 03:38:21 GMT  
		Size: 5.9 MB (5884351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d56955a7b09a2e4d15118d000e0c7f721be5a49b366602117a137baf3a6fdaf`  
		Last Modified: Wed, 13 Sep 2017 03:38:19 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d685c1e75339ec138057c7ad1b3deb595e209c2852c0c0ae495847bdb26ea5`  
		Last Modified: Wed, 13 Sep 2017 03:38:20 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.1`

```console
$ docker pull redis@sha256:fe77356e6e8d5c5200b9800e50ae71147efdc446a3cc4f601c607fbfd218015e
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

### `redis:4.0.1` - linux; amd64

```console
$ docker pull redis@sha256:13998f4f3e8905909ce3e8dc204b5953270a1c4893363d549d0f989dac29ac93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39365924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9813a7e8fcc0027047b39390b05b2f1487aa59df2139ac71d12885ad9b7c4f9c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 03:32:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 13 Sep 2017 03:32:21 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Sep 2017 03:32:49 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Sep 2017 03:35:12 GMT
ENV REDIS_VERSION=4.0.1
# Wed, 13 Sep 2017 03:35:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Wed, 13 Sep 2017 03:35:13 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Wed, 13 Sep 2017 03:35:57 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Sep 2017 03:35:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 13 Sep 2017 03:35:58 GMT
VOLUME [/data]
# Wed, 13 Sep 2017 03:35:58 GMT
WORKDIR /data
# Wed, 13 Sep 2017 03:35:58 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 13 Sep 2017 03:35:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 03:35:58 GMT
EXPOSE 6379/tcp
# Wed, 13 Sep 2017 03:35:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc32c7d9b0f4d408e70aa19dd530fc281bbd0ab73b49e2a9911affdd76c120e3`  
		Last Modified: Wed, 13 Sep 2017 03:37:54 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad60cc6fa43175ef5587cc699b884aeb50a863e5f224a79e71ad7d4a29140659`  
		Last Modified: Wed, 13 Sep 2017 03:37:54 GMT  
		Size: 981.7 KB (981727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21c99d8cf03d1afcdca25858e9dbe028cd44a14cc71dd75e860acfedd8cee54`  
		Last Modified: Wed, 13 Sep 2017 03:38:36 GMT  
		Size: 8.3 MB (8268475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:357908014789be24f8bd537a80c88aca8b87909f419767d58c43c74fb83e8421`  
		Last Modified: Wed, 13 Sep 2017 03:38:35 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27e1cb0ca43016179f95c7d21b58b502de8d2cf9e31e849cb606f9071427e96`  
		Last Modified: Wed, 13 Sep 2017 03:38:34 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.1` - linux; arm variant v5

```console
$ docker pull redis@sha256:63f11b6d9274d1459e23b04b16db6c6cb8523fc5591e199abd4b523c5a1e9d5c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37568456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d542bdbd2ae73e9a5b7b676e36da9211ea850941d4efb3a7f959067bbe0ed6ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 19:57:26 GMT
ADD file:606c213181f629ee41d4467828fb9801d09971722004715d4ee5e715f51d1704 in / 
# Fri, 08 Sep 2017 19:57:29 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 02:04:25 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 09 Sep 2017 02:04:26 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 02:09:30 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 09 Sep 2017 02:37:41 GMT
ENV REDIS_VERSION=4.0.1
# Sat, 09 Sep 2017 02:37:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Sat, 09 Sep 2017 02:37:43 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Sat, 09 Sep 2017 02:43:53 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 09 Sep 2017 02:43:55 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 09 Sep 2017 02:43:57 GMT
VOLUME [/data]
# Sat, 09 Sep 2017 02:43:59 GMT
WORKDIR /data
# Sat, 09 Sep 2017 02:43:59 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 09 Sep 2017 02:44:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Sep 2017 02:44:01 GMT
EXPOSE 6379/tcp
# Sat, 09 Sep 2017 02:44:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c730baecba27c98917b2ee85dc172ed0ef62d1decdc5064d89296a8edb1657f3`  
		Last Modified: Fri, 08 Sep 2017 20:13:04 GMT  
		Size: 28.4 MB (28422486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d6c4d9a2fba872cff461e8e8c20b69ea3aa9d829462a25dd1c8795b0009856`  
		Last Modified: Sat, 09 Sep 2017 02:44:20 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53631fc6671832d1ad815bc338d2e57c9838bbc229916e7d3a9a5f11df03bdeb`  
		Last Modified: Sat, 09 Sep 2017 02:44:20 GMT  
		Size: 971.4 KB (971422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3362bc33cc5f8bde5a1e1416c31898f95e048e8f17509a639750e56382593a29`  
		Last Modified: Sat, 09 Sep 2017 02:44:54 GMT  
		Size: 8.2 MB (8171960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b229f315c1d20c054bf4824b6377a493a0336a18930cb1a5dd0415d18bc0db6`  
		Last Modified: Sat, 09 Sep 2017 02:44:49 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581781ca5aecea0aad73bb6a38232938a2305d30a4ca90832e07d9a782f38648`  
		Last Modified: Sat, 09 Sep 2017 02:44:51 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.1` - linux; arm variant v7

```console
$ docker pull redis@sha256:431418afc48dc6255060ccf6b157f5b555867bdd9486761631aecc961889860c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35155324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbd04331e9eabf416783a556261f91e8c0f447c022a4c2b12d5978cbb988e7aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:46 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Sat, 09 Sep 2017 01:40:47 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 02:23:36 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 12 Sep 2017 02:23:38 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Sep 2017 02:30:52 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Sep 2017 02:39:06 GMT
ENV REDIS_VERSION=4.0.1
# Tue, 12 Sep 2017 02:39:08 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Tue, 12 Sep 2017 02:39:09 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Tue, 12 Sep 2017 02:58:12 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Sep 2017 02:58:14 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 12 Sep 2017 02:58:15 GMT
VOLUME [/data]
# Tue, 12 Sep 2017 02:58:16 GMT
WORKDIR /data
# Tue, 12 Sep 2017 02:58:17 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 12 Sep 2017 02:58:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 02:58:19 GMT
EXPOSE 6379/tcp
# Tue, 12 Sep 2017 02:58:20 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5ec7d30a9a8c4943b1650d24c5857d17b69f0e4bb62241d56894484ff9315547`  
		Last Modified: Sat, 09 Sep 2017 01:51:42 GMT  
		Size: 26.3 MB (26279463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681a2ce24187b910a55e37705ba11b41e87a6950949abceb35177553ec00e7d7`  
		Last Modified: Tue, 12 Sep 2017 02:58:45 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd0ed4f3f6d3475fdbe0ae0c48cd0b3c09bf3fdf3dfa96b3a98d3ea06044375`  
		Last Modified: Tue, 12 Sep 2017 02:58:45 GMT  
		Size: 956.3 KB (956264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6baf32ca8bc634a7d1c31b01fbc1a3cb13d0f98ddda61a4a24a2fb420e1444`  
		Last Modified: Tue, 12 Sep 2017 02:59:10 GMT  
		Size: 7.9 MB (7917011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3730cf9f88696d44db95f180e829da97fd1c48cd030b85a2fa613ebbd6fecf4e`  
		Last Modified: Tue, 12 Sep 2017 02:59:07 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3478618950f1cf293703e98dea29711bdee6033f922c2f2605a2bd2a4722cf6a`  
		Last Modified: Tue, 12 Sep 2017 02:59:07 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.1` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:b2917f063da686dbde86534db09c16217b26f7901fce611db2a70ff1c0d1d581
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36843635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d8232f2244e506c4287d5535077120126fbb00a56d3b7e9b3fc8c961896c36c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 17:24:21 GMT
ADD file:e941b26069cf288fadf2ab835d4f0c3a681f3f882d81686662d20f9642928795 in / 
# Fri, 08 Sep 2017 17:24:22 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 02:47:18 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 09 Sep 2017 02:47:19 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 02:48:38 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 09 Sep 2017 02:53:47 GMT
ENV REDIS_VERSION=4.0.1
# Sat, 09 Sep 2017 02:53:48 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Sat, 09 Sep 2017 02:53:49 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Sat, 09 Sep 2017 02:56:39 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 09 Sep 2017 02:56:42 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 09 Sep 2017 02:56:43 GMT
VOLUME [/data]
# Sat, 09 Sep 2017 02:56:45 GMT
WORKDIR /data
# Sat, 09 Sep 2017 02:56:46 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 09 Sep 2017 02:56:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Sep 2017 02:56:48 GMT
EXPOSE 6379/tcp
# Sat, 09 Sep 2017 02:56:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:01c8fcecd171557c0af8130e86fd47e393a2791dc2ea655cb5f4f0ed6b95ef51`  
		Last Modified: Fri, 08 Sep 2017 17:36:14 GMT  
		Size: 27.5 MB (27480389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715ea475c1dc269a38ebfee254376c154c2dc2a64a2887d559243eb5e59429d5`  
		Last Modified: Sat, 09 Sep 2017 02:57:13 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:287b4ff744d288b6c4cb9ee329a00c3cbb5acb152ae88eac786ac9084a530a7b`  
		Last Modified: Sat, 09 Sep 2017 02:57:14 GMT  
		Size: 948.7 KB (948729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6a67ef5c44a1e172968b84e7c7cf3618528bfdac98cf2fccd30bde93740e26`  
		Last Modified: Sat, 09 Sep 2017 02:57:44 GMT  
		Size: 8.4 MB (8411927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd6d10091ddde6c8f9061f611f1746b3d6ba7eb71f909dd282a02bdd5cc99b7`  
		Last Modified: Sat, 09 Sep 2017 02:57:40 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2f3d3ce2cc564da504d647183f8b0db7013d19c62c05c3f185ba7993a91af5`  
		Last Modified: Sat, 09 Sep 2017 02:57:40 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.1` - linux; 386

```console
$ docker pull redis@sha256:b72f26daace949471f74ddccbde969cdb65a9f206c806eb82a548a1badab17f2
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38710182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d0f80d094085a121ae2206636f0b9243eb44c0a883355f8b6bbe3b01ec76437`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:05 GMT
ADD file:cd8c8c04f635ce6e14de5271949afcf67b9c480ea35ba633423d385975e330ad in / 
# Fri, 08 Sep 2017 13:18:05 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:12:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 17:12:55 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 17:13:53 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 17:15:33 GMT
ENV REDIS_VERSION=4.0.1
# Fri, 08 Sep 2017 17:15:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Fri, 08 Sep 2017 17:15:34 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Fri, 08 Sep 2017 17:17:03 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 17:17:04 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Sep 2017 17:17:04 GMT
VOLUME [/data]
# Fri, 08 Sep 2017 17:17:04 GMT
WORKDIR /data
# Fri, 08 Sep 2017 17:17:04 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 08 Sep 2017 17:17:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 17:17:05 GMT
EXPOSE 6379/tcp
# Fri, 08 Sep 2017 17:17:05 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:60dc9bcedd31a278f8b25a98451958fb75022352fe550042039e16ce32422ecf`  
		Last Modified: Fri, 08 Sep 2017 13:23:15 GMT  
		Size: 30.3 MB (30264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ede072b04252ed37d0b3f458abd925ed9a16c1453d1dbe3884f06ff416bc39c`  
		Last Modified: Fri, 08 Sep 2017 17:17:12 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3633915fd03a8ec800300ef25f0e4fc969383fe4a4dc1725bf5c9e181ef84bac`  
		Last Modified: Fri, 08 Sep 2017 17:17:13 GMT  
		Size: 960.8 KB (960783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ff964f06e20343dd83e4fdc15226fb57f5545fd315174c4b67f46eb8929de2`  
		Last Modified: Fri, 08 Sep 2017 17:17:35 GMT  
		Size: 7.5 MB (7482657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f4b60a870b55ff62ee64230255df997f9cde59bc2614f131f18432b1c0ea6cf`  
		Last Modified: Fri, 08 Sep 2017 17:17:33 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c9a43a7282106144e210dd6a8e5590ddabdbcf8e7f924aaa99d96a90093169`  
		Last Modified: Fri, 08 Sep 2017 17:17:33 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.1` - linux; ppc64le

```console
$ docker pull redis@sha256:c49719a8630ce02738537d96bcefbfe8fb1f547dc151db892d8eb1b691959ec5
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.9 MB (38890386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d78f38517c264dbbf9cd7ef8871d5f08a21192e2571cf6bf8ff3af16eb263a4a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:35 GMT
ADD file:a71c29d4477813e82c1dc250af55ac351262466c8d3b71f16ba55c334df128cb in / 
# Fri, 08 Sep 2017 00:32:35 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 02:36:41 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 02:36:41 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 02:37:07 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 02:37:55 GMT
ENV REDIS_VERSION=4.0.1
# Fri, 08 Sep 2017 02:37:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Fri, 08 Sep 2017 02:37:55 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Fri, 08 Sep 2017 02:38:37 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 02:38:38 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Sep 2017 02:38:38 GMT
VOLUME [/data]
# Fri, 08 Sep 2017 02:38:38 GMT
WORKDIR /data
# Fri, 08 Sep 2017 02:38:38 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 08 Sep 2017 02:38:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 02:38:39 GMT
EXPOSE 6379/tcp
# Fri, 08 Sep 2017 02:38:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c81aec82dcf4ce3160634cefb76527ab80d464191cc48ad6c4593766c230004b`  
		Last Modified: Fri, 08 Sep 2017 00:37:39 GMT  
		Size: 29.3 MB (29306443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b7dc9fbcb59c464bb2dee6a93c8de45a94e651da0f7e73b9463f91b584d718`  
		Last Modified: Fri, 08 Sep 2017 02:38:52 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8fdc5bb87107ce2c801e86b5daf0b77abd4a00109cfd20b0c250b4e27c555d`  
		Last Modified: Fri, 08 Sep 2017 02:38:52 GMT  
		Size: 950.4 KB (950420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e8c41e78cd4016270af1fdf917e763320cc31e7159c93f58a73ae449d076ea`  
		Last Modified: Fri, 08 Sep 2017 02:39:15 GMT  
		Size: 8.6 MB (8630902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f63a64e90de882f0722dcec655bb540c787d814c818073491b6ed0388128d0d`  
		Last Modified: Fri, 08 Sep 2017 02:39:12 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95932397bf4f0d5744e6e9837953db06424445074dde41923fec0be3eb2ffc33`  
		Last Modified: Fri, 08 Sep 2017 02:39:12 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.1` - linux; s390x

```console
$ docker pull redis@sha256:88a4a6d000c152680459246bcdbeb4235f1821c3303312b1cecd8d77af712776
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 MB (40165568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:406650d530edf0eeeadc92f49e55f9f9f72168747f0b612d0d518fd423e6811c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:50 GMT
ADD file:520d2b400acdfce1df5aa9f6322a091acc0302fcef67b02c35f2fabb06f00377 in / 
# Fri, 08 Sep 2017 05:21:51 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:14:31 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 07:14:31 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 07:14:50 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 07:15:29 GMT
ENV REDIS_VERSION=4.0.1
# Fri, 08 Sep 2017 07:15:30 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Fri, 08 Sep 2017 07:15:30 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Fri, 08 Sep 2017 07:16:06 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 07:16:07 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Sep 2017 07:16:07 GMT
VOLUME [/data]
# Fri, 08 Sep 2017 07:16:07 GMT
WORKDIR /data
# Fri, 08 Sep 2017 07:16:08 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 08 Sep 2017 07:16:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 07:16:08 GMT
EXPOSE 6379/tcp
# Fri, 08 Sep 2017 07:16:08 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:69a1c1f09006646402113c13549903b3334134cbc88f6a3cc3aa52b906115dae`  
		Last Modified: Fri, 08 Sep 2017 05:25:03 GMT  
		Size: 30.3 MB (30294153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0e7d3e483472434f624e773ed187c706ad109c44f1a568fd72d8677aafbb2c`  
		Last Modified: Fri, 08 Sep 2017 07:16:19 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:714c5ed9756cb27be8619d079c85a8ef0ec3696d7acfa4202eeb56c800845cd0`  
		Last Modified: Fri, 08 Sep 2017 07:16:19 GMT  
		Size: 966.9 KB (966854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98eed162a4243e6ca50558a00a830db1b7758ed3fd1c15e6a477b55f336d52d4`  
		Last Modified: Fri, 08 Sep 2017 07:16:31 GMT  
		Size: 8.9 MB (8901972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:447f6e23277b6e9274ec1092b47794785330d34a17432a85e250aa7d248734ce`  
		Last Modified: Fri, 08 Sep 2017 07:16:28 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:097f0b495e1cd85eaefcf9eb92f1ee7730f9b8ff1dee3c61f72ec234bc5102f1`  
		Last Modified: Fri, 08 Sep 2017 07:16:28 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0`

```console
$ docker pull redis@sha256:fe77356e6e8d5c5200b9800e50ae71147efdc446a3cc4f601c607fbfd218015e
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
$ docker pull redis@sha256:13998f4f3e8905909ce3e8dc204b5953270a1c4893363d549d0f989dac29ac93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39365924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9813a7e8fcc0027047b39390b05b2f1487aa59df2139ac71d12885ad9b7c4f9c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 03:32:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 13 Sep 2017 03:32:21 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Sep 2017 03:32:49 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Sep 2017 03:35:12 GMT
ENV REDIS_VERSION=4.0.1
# Wed, 13 Sep 2017 03:35:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Wed, 13 Sep 2017 03:35:13 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Wed, 13 Sep 2017 03:35:57 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Sep 2017 03:35:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 13 Sep 2017 03:35:58 GMT
VOLUME [/data]
# Wed, 13 Sep 2017 03:35:58 GMT
WORKDIR /data
# Wed, 13 Sep 2017 03:35:58 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 13 Sep 2017 03:35:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 03:35:58 GMT
EXPOSE 6379/tcp
# Wed, 13 Sep 2017 03:35:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc32c7d9b0f4d408e70aa19dd530fc281bbd0ab73b49e2a9911affdd76c120e3`  
		Last Modified: Wed, 13 Sep 2017 03:37:54 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad60cc6fa43175ef5587cc699b884aeb50a863e5f224a79e71ad7d4a29140659`  
		Last Modified: Wed, 13 Sep 2017 03:37:54 GMT  
		Size: 981.7 KB (981727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21c99d8cf03d1afcdca25858e9dbe028cd44a14cc71dd75e860acfedd8cee54`  
		Last Modified: Wed, 13 Sep 2017 03:38:36 GMT  
		Size: 8.3 MB (8268475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:357908014789be24f8bd537a80c88aca8b87909f419767d58c43c74fb83e8421`  
		Last Modified: Wed, 13 Sep 2017 03:38:35 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27e1cb0ca43016179f95c7d21b58b502de8d2cf9e31e849cb606f9071427e96`  
		Last Modified: Wed, 13 Sep 2017 03:38:34 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm variant v5

```console
$ docker pull redis@sha256:63f11b6d9274d1459e23b04b16db6c6cb8523fc5591e199abd4b523c5a1e9d5c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37568456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d542bdbd2ae73e9a5b7b676e36da9211ea850941d4efb3a7f959067bbe0ed6ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 19:57:26 GMT
ADD file:606c213181f629ee41d4467828fb9801d09971722004715d4ee5e715f51d1704 in / 
# Fri, 08 Sep 2017 19:57:29 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 02:04:25 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 09 Sep 2017 02:04:26 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 02:09:30 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 09 Sep 2017 02:37:41 GMT
ENV REDIS_VERSION=4.0.1
# Sat, 09 Sep 2017 02:37:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Sat, 09 Sep 2017 02:37:43 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Sat, 09 Sep 2017 02:43:53 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 09 Sep 2017 02:43:55 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 09 Sep 2017 02:43:57 GMT
VOLUME [/data]
# Sat, 09 Sep 2017 02:43:59 GMT
WORKDIR /data
# Sat, 09 Sep 2017 02:43:59 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 09 Sep 2017 02:44:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Sep 2017 02:44:01 GMT
EXPOSE 6379/tcp
# Sat, 09 Sep 2017 02:44:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c730baecba27c98917b2ee85dc172ed0ef62d1decdc5064d89296a8edb1657f3`  
		Last Modified: Fri, 08 Sep 2017 20:13:04 GMT  
		Size: 28.4 MB (28422486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d6c4d9a2fba872cff461e8e8c20b69ea3aa9d829462a25dd1c8795b0009856`  
		Last Modified: Sat, 09 Sep 2017 02:44:20 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53631fc6671832d1ad815bc338d2e57c9838bbc229916e7d3a9a5f11df03bdeb`  
		Last Modified: Sat, 09 Sep 2017 02:44:20 GMT  
		Size: 971.4 KB (971422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3362bc33cc5f8bde5a1e1416c31898f95e048e8f17509a639750e56382593a29`  
		Last Modified: Sat, 09 Sep 2017 02:44:54 GMT  
		Size: 8.2 MB (8171960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b229f315c1d20c054bf4824b6377a493a0336a18930cb1a5dd0415d18bc0db6`  
		Last Modified: Sat, 09 Sep 2017 02:44:49 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581781ca5aecea0aad73bb6a38232938a2305d30a4ca90832e07d9a782f38648`  
		Last Modified: Sat, 09 Sep 2017 02:44:51 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm variant v7

```console
$ docker pull redis@sha256:431418afc48dc6255060ccf6b157f5b555867bdd9486761631aecc961889860c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35155324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbd04331e9eabf416783a556261f91e8c0f447c022a4c2b12d5978cbb988e7aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:46 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Sat, 09 Sep 2017 01:40:47 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 02:23:36 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 12 Sep 2017 02:23:38 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Sep 2017 02:30:52 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Sep 2017 02:39:06 GMT
ENV REDIS_VERSION=4.0.1
# Tue, 12 Sep 2017 02:39:08 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Tue, 12 Sep 2017 02:39:09 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Tue, 12 Sep 2017 02:58:12 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Sep 2017 02:58:14 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 12 Sep 2017 02:58:15 GMT
VOLUME [/data]
# Tue, 12 Sep 2017 02:58:16 GMT
WORKDIR /data
# Tue, 12 Sep 2017 02:58:17 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 12 Sep 2017 02:58:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 02:58:19 GMT
EXPOSE 6379/tcp
# Tue, 12 Sep 2017 02:58:20 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5ec7d30a9a8c4943b1650d24c5857d17b69f0e4bb62241d56894484ff9315547`  
		Last Modified: Sat, 09 Sep 2017 01:51:42 GMT  
		Size: 26.3 MB (26279463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681a2ce24187b910a55e37705ba11b41e87a6950949abceb35177553ec00e7d7`  
		Last Modified: Tue, 12 Sep 2017 02:58:45 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd0ed4f3f6d3475fdbe0ae0c48cd0b3c09bf3fdf3dfa96b3a98d3ea06044375`  
		Last Modified: Tue, 12 Sep 2017 02:58:45 GMT  
		Size: 956.3 KB (956264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6baf32ca8bc634a7d1c31b01fbc1a3cb13d0f98ddda61a4a24a2fb420e1444`  
		Last Modified: Tue, 12 Sep 2017 02:59:10 GMT  
		Size: 7.9 MB (7917011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3730cf9f88696d44db95f180e829da97fd1c48cd030b85a2fa613ebbd6fecf4e`  
		Last Modified: Tue, 12 Sep 2017 02:59:07 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3478618950f1cf293703e98dea29711bdee6033f922c2f2605a2bd2a4722cf6a`  
		Last Modified: Tue, 12 Sep 2017 02:59:07 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:b2917f063da686dbde86534db09c16217b26f7901fce611db2a70ff1c0d1d581
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36843635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d8232f2244e506c4287d5535077120126fbb00a56d3b7e9b3fc8c961896c36c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 17:24:21 GMT
ADD file:e941b26069cf288fadf2ab835d4f0c3a681f3f882d81686662d20f9642928795 in / 
# Fri, 08 Sep 2017 17:24:22 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 02:47:18 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 09 Sep 2017 02:47:19 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 02:48:38 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 09 Sep 2017 02:53:47 GMT
ENV REDIS_VERSION=4.0.1
# Sat, 09 Sep 2017 02:53:48 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Sat, 09 Sep 2017 02:53:49 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Sat, 09 Sep 2017 02:56:39 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 09 Sep 2017 02:56:42 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 09 Sep 2017 02:56:43 GMT
VOLUME [/data]
# Sat, 09 Sep 2017 02:56:45 GMT
WORKDIR /data
# Sat, 09 Sep 2017 02:56:46 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 09 Sep 2017 02:56:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Sep 2017 02:56:48 GMT
EXPOSE 6379/tcp
# Sat, 09 Sep 2017 02:56:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:01c8fcecd171557c0af8130e86fd47e393a2791dc2ea655cb5f4f0ed6b95ef51`  
		Last Modified: Fri, 08 Sep 2017 17:36:14 GMT  
		Size: 27.5 MB (27480389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715ea475c1dc269a38ebfee254376c154c2dc2a64a2887d559243eb5e59429d5`  
		Last Modified: Sat, 09 Sep 2017 02:57:13 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:287b4ff744d288b6c4cb9ee329a00c3cbb5acb152ae88eac786ac9084a530a7b`  
		Last Modified: Sat, 09 Sep 2017 02:57:14 GMT  
		Size: 948.7 KB (948729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6a67ef5c44a1e172968b84e7c7cf3618528bfdac98cf2fccd30bde93740e26`  
		Last Modified: Sat, 09 Sep 2017 02:57:44 GMT  
		Size: 8.4 MB (8411927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd6d10091ddde6c8f9061f611f1746b3d6ba7eb71f909dd282a02bdd5cc99b7`  
		Last Modified: Sat, 09 Sep 2017 02:57:40 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2f3d3ce2cc564da504d647183f8b0db7013d19c62c05c3f185ba7993a91af5`  
		Last Modified: Sat, 09 Sep 2017 02:57:40 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; 386

```console
$ docker pull redis@sha256:b72f26daace949471f74ddccbde969cdb65a9f206c806eb82a548a1badab17f2
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38710182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d0f80d094085a121ae2206636f0b9243eb44c0a883355f8b6bbe3b01ec76437`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:05 GMT
ADD file:cd8c8c04f635ce6e14de5271949afcf67b9c480ea35ba633423d385975e330ad in / 
# Fri, 08 Sep 2017 13:18:05 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:12:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 17:12:55 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 17:13:53 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 17:15:33 GMT
ENV REDIS_VERSION=4.0.1
# Fri, 08 Sep 2017 17:15:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Fri, 08 Sep 2017 17:15:34 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Fri, 08 Sep 2017 17:17:03 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 17:17:04 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Sep 2017 17:17:04 GMT
VOLUME [/data]
# Fri, 08 Sep 2017 17:17:04 GMT
WORKDIR /data
# Fri, 08 Sep 2017 17:17:04 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 08 Sep 2017 17:17:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 17:17:05 GMT
EXPOSE 6379/tcp
# Fri, 08 Sep 2017 17:17:05 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:60dc9bcedd31a278f8b25a98451958fb75022352fe550042039e16ce32422ecf`  
		Last Modified: Fri, 08 Sep 2017 13:23:15 GMT  
		Size: 30.3 MB (30264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ede072b04252ed37d0b3f458abd925ed9a16c1453d1dbe3884f06ff416bc39c`  
		Last Modified: Fri, 08 Sep 2017 17:17:12 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3633915fd03a8ec800300ef25f0e4fc969383fe4a4dc1725bf5c9e181ef84bac`  
		Last Modified: Fri, 08 Sep 2017 17:17:13 GMT  
		Size: 960.8 KB (960783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ff964f06e20343dd83e4fdc15226fb57f5545fd315174c4b67f46eb8929de2`  
		Last Modified: Fri, 08 Sep 2017 17:17:35 GMT  
		Size: 7.5 MB (7482657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f4b60a870b55ff62ee64230255df997f9cde59bc2614f131f18432b1c0ea6cf`  
		Last Modified: Fri, 08 Sep 2017 17:17:33 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c9a43a7282106144e210dd6a8e5590ddabdbcf8e7f924aaa99d96a90093169`  
		Last Modified: Fri, 08 Sep 2017 17:17:33 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; ppc64le

```console
$ docker pull redis@sha256:c49719a8630ce02738537d96bcefbfe8fb1f547dc151db892d8eb1b691959ec5
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.9 MB (38890386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d78f38517c264dbbf9cd7ef8871d5f08a21192e2571cf6bf8ff3af16eb263a4a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:35 GMT
ADD file:a71c29d4477813e82c1dc250af55ac351262466c8d3b71f16ba55c334df128cb in / 
# Fri, 08 Sep 2017 00:32:35 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 02:36:41 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 02:36:41 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 02:37:07 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 02:37:55 GMT
ENV REDIS_VERSION=4.0.1
# Fri, 08 Sep 2017 02:37:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Fri, 08 Sep 2017 02:37:55 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Fri, 08 Sep 2017 02:38:37 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 02:38:38 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Sep 2017 02:38:38 GMT
VOLUME [/data]
# Fri, 08 Sep 2017 02:38:38 GMT
WORKDIR /data
# Fri, 08 Sep 2017 02:38:38 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 08 Sep 2017 02:38:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 02:38:39 GMT
EXPOSE 6379/tcp
# Fri, 08 Sep 2017 02:38:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c81aec82dcf4ce3160634cefb76527ab80d464191cc48ad6c4593766c230004b`  
		Last Modified: Fri, 08 Sep 2017 00:37:39 GMT  
		Size: 29.3 MB (29306443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b7dc9fbcb59c464bb2dee6a93c8de45a94e651da0f7e73b9463f91b584d718`  
		Last Modified: Fri, 08 Sep 2017 02:38:52 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8fdc5bb87107ce2c801e86b5daf0b77abd4a00109cfd20b0c250b4e27c555d`  
		Last Modified: Fri, 08 Sep 2017 02:38:52 GMT  
		Size: 950.4 KB (950420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e8c41e78cd4016270af1fdf917e763320cc31e7159c93f58a73ae449d076ea`  
		Last Modified: Fri, 08 Sep 2017 02:39:15 GMT  
		Size: 8.6 MB (8630902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f63a64e90de882f0722dcec655bb540c787d814c818073491b6ed0388128d0d`  
		Last Modified: Fri, 08 Sep 2017 02:39:12 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95932397bf4f0d5744e6e9837953db06424445074dde41923fec0be3eb2ffc33`  
		Last Modified: Fri, 08 Sep 2017 02:39:12 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; s390x

```console
$ docker pull redis@sha256:88a4a6d000c152680459246bcdbeb4235f1821c3303312b1cecd8d77af712776
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 MB (40165568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:406650d530edf0eeeadc92f49e55f9f9f72168747f0b612d0d518fd423e6811c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:50 GMT
ADD file:520d2b400acdfce1df5aa9f6322a091acc0302fcef67b02c35f2fabb06f00377 in / 
# Fri, 08 Sep 2017 05:21:51 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:14:31 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 07:14:31 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 07:14:50 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 07:15:29 GMT
ENV REDIS_VERSION=4.0.1
# Fri, 08 Sep 2017 07:15:30 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Fri, 08 Sep 2017 07:15:30 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Fri, 08 Sep 2017 07:16:06 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 07:16:07 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Sep 2017 07:16:07 GMT
VOLUME [/data]
# Fri, 08 Sep 2017 07:16:07 GMT
WORKDIR /data
# Fri, 08 Sep 2017 07:16:08 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 08 Sep 2017 07:16:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 07:16:08 GMT
EXPOSE 6379/tcp
# Fri, 08 Sep 2017 07:16:08 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:69a1c1f09006646402113c13549903b3334134cbc88f6a3cc3aa52b906115dae`  
		Last Modified: Fri, 08 Sep 2017 05:25:03 GMT  
		Size: 30.3 MB (30294153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0e7d3e483472434f624e773ed187c706ad109c44f1a568fd72d8677aafbb2c`  
		Last Modified: Fri, 08 Sep 2017 07:16:19 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:714c5ed9756cb27be8619d079c85a8ef0ec3696d7acfa4202eeb56c800845cd0`  
		Last Modified: Fri, 08 Sep 2017 07:16:19 GMT  
		Size: 966.9 KB (966854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98eed162a4243e6ca50558a00a830db1b7758ed3fd1c15e6a477b55f336d52d4`  
		Last Modified: Fri, 08 Sep 2017 07:16:31 GMT  
		Size: 8.9 MB (8901972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:447f6e23277b6e9274ec1092b47794785330d34a17432a85e250aa7d248734ce`  
		Last Modified: Fri, 08 Sep 2017 07:16:28 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:097f0b495e1cd85eaefcf9eb92f1ee7730f9b8ff1dee3c61f72ec234bc5102f1`  
		Last Modified: Fri, 08 Sep 2017 07:16:28 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4`

```console
$ docker pull redis@sha256:fe77356e6e8d5c5200b9800e50ae71147efdc446a3cc4f601c607fbfd218015e
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
$ docker pull redis@sha256:13998f4f3e8905909ce3e8dc204b5953270a1c4893363d549d0f989dac29ac93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39365924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9813a7e8fcc0027047b39390b05b2f1487aa59df2139ac71d12885ad9b7c4f9c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 03:32:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 13 Sep 2017 03:32:21 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Sep 2017 03:32:49 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Sep 2017 03:35:12 GMT
ENV REDIS_VERSION=4.0.1
# Wed, 13 Sep 2017 03:35:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Wed, 13 Sep 2017 03:35:13 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Wed, 13 Sep 2017 03:35:57 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Sep 2017 03:35:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 13 Sep 2017 03:35:58 GMT
VOLUME [/data]
# Wed, 13 Sep 2017 03:35:58 GMT
WORKDIR /data
# Wed, 13 Sep 2017 03:35:58 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 13 Sep 2017 03:35:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 03:35:58 GMT
EXPOSE 6379/tcp
# Wed, 13 Sep 2017 03:35:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc32c7d9b0f4d408e70aa19dd530fc281bbd0ab73b49e2a9911affdd76c120e3`  
		Last Modified: Wed, 13 Sep 2017 03:37:54 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad60cc6fa43175ef5587cc699b884aeb50a863e5f224a79e71ad7d4a29140659`  
		Last Modified: Wed, 13 Sep 2017 03:37:54 GMT  
		Size: 981.7 KB (981727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21c99d8cf03d1afcdca25858e9dbe028cd44a14cc71dd75e860acfedd8cee54`  
		Last Modified: Wed, 13 Sep 2017 03:38:36 GMT  
		Size: 8.3 MB (8268475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:357908014789be24f8bd537a80c88aca8b87909f419767d58c43c74fb83e8421`  
		Last Modified: Wed, 13 Sep 2017 03:38:35 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27e1cb0ca43016179f95c7d21b58b502de8d2cf9e31e849cb606f9071427e96`  
		Last Modified: Wed, 13 Sep 2017 03:38:34 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm variant v5

```console
$ docker pull redis@sha256:63f11b6d9274d1459e23b04b16db6c6cb8523fc5591e199abd4b523c5a1e9d5c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37568456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d542bdbd2ae73e9a5b7b676e36da9211ea850941d4efb3a7f959067bbe0ed6ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 19:57:26 GMT
ADD file:606c213181f629ee41d4467828fb9801d09971722004715d4ee5e715f51d1704 in / 
# Fri, 08 Sep 2017 19:57:29 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 02:04:25 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 09 Sep 2017 02:04:26 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 02:09:30 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 09 Sep 2017 02:37:41 GMT
ENV REDIS_VERSION=4.0.1
# Sat, 09 Sep 2017 02:37:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Sat, 09 Sep 2017 02:37:43 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Sat, 09 Sep 2017 02:43:53 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 09 Sep 2017 02:43:55 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 09 Sep 2017 02:43:57 GMT
VOLUME [/data]
# Sat, 09 Sep 2017 02:43:59 GMT
WORKDIR /data
# Sat, 09 Sep 2017 02:43:59 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 09 Sep 2017 02:44:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Sep 2017 02:44:01 GMT
EXPOSE 6379/tcp
# Sat, 09 Sep 2017 02:44:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c730baecba27c98917b2ee85dc172ed0ef62d1decdc5064d89296a8edb1657f3`  
		Last Modified: Fri, 08 Sep 2017 20:13:04 GMT  
		Size: 28.4 MB (28422486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d6c4d9a2fba872cff461e8e8c20b69ea3aa9d829462a25dd1c8795b0009856`  
		Last Modified: Sat, 09 Sep 2017 02:44:20 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53631fc6671832d1ad815bc338d2e57c9838bbc229916e7d3a9a5f11df03bdeb`  
		Last Modified: Sat, 09 Sep 2017 02:44:20 GMT  
		Size: 971.4 KB (971422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3362bc33cc5f8bde5a1e1416c31898f95e048e8f17509a639750e56382593a29`  
		Last Modified: Sat, 09 Sep 2017 02:44:54 GMT  
		Size: 8.2 MB (8171960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b229f315c1d20c054bf4824b6377a493a0336a18930cb1a5dd0415d18bc0db6`  
		Last Modified: Sat, 09 Sep 2017 02:44:49 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581781ca5aecea0aad73bb6a38232938a2305d30a4ca90832e07d9a782f38648`  
		Last Modified: Sat, 09 Sep 2017 02:44:51 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm variant v7

```console
$ docker pull redis@sha256:431418afc48dc6255060ccf6b157f5b555867bdd9486761631aecc961889860c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35155324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbd04331e9eabf416783a556261f91e8c0f447c022a4c2b12d5978cbb988e7aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:46 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Sat, 09 Sep 2017 01:40:47 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 02:23:36 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 12 Sep 2017 02:23:38 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Sep 2017 02:30:52 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Sep 2017 02:39:06 GMT
ENV REDIS_VERSION=4.0.1
# Tue, 12 Sep 2017 02:39:08 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Tue, 12 Sep 2017 02:39:09 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Tue, 12 Sep 2017 02:58:12 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Sep 2017 02:58:14 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 12 Sep 2017 02:58:15 GMT
VOLUME [/data]
# Tue, 12 Sep 2017 02:58:16 GMT
WORKDIR /data
# Tue, 12 Sep 2017 02:58:17 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 12 Sep 2017 02:58:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 02:58:19 GMT
EXPOSE 6379/tcp
# Tue, 12 Sep 2017 02:58:20 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5ec7d30a9a8c4943b1650d24c5857d17b69f0e4bb62241d56894484ff9315547`  
		Last Modified: Sat, 09 Sep 2017 01:51:42 GMT  
		Size: 26.3 MB (26279463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681a2ce24187b910a55e37705ba11b41e87a6950949abceb35177553ec00e7d7`  
		Last Modified: Tue, 12 Sep 2017 02:58:45 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd0ed4f3f6d3475fdbe0ae0c48cd0b3c09bf3fdf3dfa96b3a98d3ea06044375`  
		Last Modified: Tue, 12 Sep 2017 02:58:45 GMT  
		Size: 956.3 KB (956264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6baf32ca8bc634a7d1c31b01fbc1a3cb13d0f98ddda61a4a24a2fb420e1444`  
		Last Modified: Tue, 12 Sep 2017 02:59:10 GMT  
		Size: 7.9 MB (7917011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3730cf9f88696d44db95f180e829da97fd1c48cd030b85a2fa613ebbd6fecf4e`  
		Last Modified: Tue, 12 Sep 2017 02:59:07 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3478618950f1cf293703e98dea29711bdee6033f922c2f2605a2bd2a4722cf6a`  
		Last Modified: Tue, 12 Sep 2017 02:59:07 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:b2917f063da686dbde86534db09c16217b26f7901fce611db2a70ff1c0d1d581
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36843635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d8232f2244e506c4287d5535077120126fbb00a56d3b7e9b3fc8c961896c36c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 17:24:21 GMT
ADD file:e941b26069cf288fadf2ab835d4f0c3a681f3f882d81686662d20f9642928795 in / 
# Fri, 08 Sep 2017 17:24:22 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 02:47:18 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 09 Sep 2017 02:47:19 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 02:48:38 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 09 Sep 2017 02:53:47 GMT
ENV REDIS_VERSION=4.0.1
# Sat, 09 Sep 2017 02:53:48 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Sat, 09 Sep 2017 02:53:49 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Sat, 09 Sep 2017 02:56:39 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 09 Sep 2017 02:56:42 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 09 Sep 2017 02:56:43 GMT
VOLUME [/data]
# Sat, 09 Sep 2017 02:56:45 GMT
WORKDIR /data
# Sat, 09 Sep 2017 02:56:46 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 09 Sep 2017 02:56:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Sep 2017 02:56:48 GMT
EXPOSE 6379/tcp
# Sat, 09 Sep 2017 02:56:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:01c8fcecd171557c0af8130e86fd47e393a2791dc2ea655cb5f4f0ed6b95ef51`  
		Last Modified: Fri, 08 Sep 2017 17:36:14 GMT  
		Size: 27.5 MB (27480389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715ea475c1dc269a38ebfee254376c154c2dc2a64a2887d559243eb5e59429d5`  
		Last Modified: Sat, 09 Sep 2017 02:57:13 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:287b4ff744d288b6c4cb9ee329a00c3cbb5acb152ae88eac786ac9084a530a7b`  
		Last Modified: Sat, 09 Sep 2017 02:57:14 GMT  
		Size: 948.7 KB (948729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6a67ef5c44a1e172968b84e7c7cf3618528bfdac98cf2fccd30bde93740e26`  
		Last Modified: Sat, 09 Sep 2017 02:57:44 GMT  
		Size: 8.4 MB (8411927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd6d10091ddde6c8f9061f611f1746b3d6ba7eb71f909dd282a02bdd5cc99b7`  
		Last Modified: Sat, 09 Sep 2017 02:57:40 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2f3d3ce2cc564da504d647183f8b0db7013d19c62c05c3f185ba7993a91af5`  
		Last Modified: Sat, 09 Sep 2017 02:57:40 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; 386

```console
$ docker pull redis@sha256:b72f26daace949471f74ddccbde969cdb65a9f206c806eb82a548a1badab17f2
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38710182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d0f80d094085a121ae2206636f0b9243eb44c0a883355f8b6bbe3b01ec76437`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:05 GMT
ADD file:cd8c8c04f635ce6e14de5271949afcf67b9c480ea35ba633423d385975e330ad in / 
# Fri, 08 Sep 2017 13:18:05 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:12:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 17:12:55 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 17:13:53 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 17:15:33 GMT
ENV REDIS_VERSION=4.0.1
# Fri, 08 Sep 2017 17:15:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Fri, 08 Sep 2017 17:15:34 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Fri, 08 Sep 2017 17:17:03 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 17:17:04 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Sep 2017 17:17:04 GMT
VOLUME [/data]
# Fri, 08 Sep 2017 17:17:04 GMT
WORKDIR /data
# Fri, 08 Sep 2017 17:17:04 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 08 Sep 2017 17:17:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 17:17:05 GMT
EXPOSE 6379/tcp
# Fri, 08 Sep 2017 17:17:05 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:60dc9bcedd31a278f8b25a98451958fb75022352fe550042039e16ce32422ecf`  
		Last Modified: Fri, 08 Sep 2017 13:23:15 GMT  
		Size: 30.3 MB (30264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ede072b04252ed37d0b3f458abd925ed9a16c1453d1dbe3884f06ff416bc39c`  
		Last Modified: Fri, 08 Sep 2017 17:17:12 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3633915fd03a8ec800300ef25f0e4fc969383fe4a4dc1725bf5c9e181ef84bac`  
		Last Modified: Fri, 08 Sep 2017 17:17:13 GMT  
		Size: 960.8 KB (960783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ff964f06e20343dd83e4fdc15226fb57f5545fd315174c4b67f46eb8929de2`  
		Last Modified: Fri, 08 Sep 2017 17:17:35 GMT  
		Size: 7.5 MB (7482657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f4b60a870b55ff62ee64230255df997f9cde59bc2614f131f18432b1c0ea6cf`  
		Last Modified: Fri, 08 Sep 2017 17:17:33 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c9a43a7282106144e210dd6a8e5590ddabdbcf8e7f924aaa99d96a90093169`  
		Last Modified: Fri, 08 Sep 2017 17:17:33 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; ppc64le

```console
$ docker pull redis@sha256:c49719a8630ce02738537d96bcefbfe8fb1f547dc151db892d8eb1b691959ec5
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.9 MB (38890386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d78f38517c264dbbf9cd7ef8871d5f08a21192e2571cf6bf8ff3af16eb263a4a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:35 GMT
ADD file:a71c29d4477813e82c1dc250af55ac351262466c8d3b71f16ba55c334df128cb in / 
# Fri, 08 Sep 2017 00:32:35 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 02:36:41 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 02:36:41 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 02:37:07 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 02:37:55 GMT
ENV REDIS_VERSION=4.0.1
# Fri, 08 Sep 2017 02:37:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Fri, 08 Sep 2017 02:37:55 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Fri, 08 Sep 2017 02:38:37 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 02:38:38 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Sep 2017 02:38:38 GMT
VOLUME [/data]
# Fri, 08 Sep 2017 02:38:38 GMT
WORKDIR /data
# Fri, 08 Sep 2017 02:38:38 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 08 Sep 2017 02:38:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 02:38:39 GMT
EXPOSE 6379/tcp
# Fri, 08 Sep 2017 02:38:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c81aec82dcf4ce3160634cefb76527ab80d464191cc48ad6c4593766c230004b`  
		Last Modified: Fri, 08 Sep 2017 00:37:39 GMT  
		Size: 29.3 MB (29306443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b7dc9fbcb59c464bb2dee6a93c8de45a94e651da0f7e73b9463f91b584d718`  
		Last Modified: Fri, 08 Sep 2017 02:38:52 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8fdc5bb87107ce2c801e86b5daf0b77abd4a00109cfd20b0c250b4e27c555d`  
		Last Modified: Fri, 08 Sep 2017 02:38:52 GMT  
		Size: 950.4 KB (950420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e8c41e78cd4016270af1fdf917e763320cc31e7159c93f58a73ae449d076ea`  
		Last Modified: Fri, 08 Sep 2017 02:39:15 GMT  
		Size: 8.6 MB (8630902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f63a64e90de882f0722dcec655bb540c787d814c818073491b6ed0388128d0d`  
		Last Modified: Fri, 08 Sep 2017 02:39:12 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95932397bf4f0d5744e6e9837953db06424445074dde41923fec0be3eb2ffc33`  
		Last Modified: Fri, 08 Sep 2017 02:39:12 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; s390x

```console
$ docker pull redis@sha256:88a4a6d000c152680459246bcdbeb4235f1821c3303312b1cecd8d77af712776
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 MB (40165568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:406650d530edf0eeeadc92f49e55f9f9f72168747f0b612d0d518fd423e6811c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:50 GMT
ADD file:520d2b400acdfce1df5aa9f6322a091acc0302fcef67b02c35f2fabb06f00377 in / 
# Fri, 08 Sep 2017 05:21:51 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:14:31 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 07:14:31 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 07:14:50 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 07:15:29 GMT
ENV REDIS_VERSION=4.0.1
# Fri, 08 Sep 2017 07:15:30 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Fri, 08 Sep 2017 07:15:30 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Fri, 08 Sep 2017 07:16:06 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 07:16:07 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Sep 2017 07:16:07 GMT
VOLUME [/data]
# Fri, 08 Sep 2017 07:16:07 GMT
WORKDIR /data
# Fri, 08 Sep 2017 07:16:08 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 08 Sep 2017 07:16:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 07:16:08 GMT
EXPOSE 6379/tcp
# Fri, 08 Sep 2017 07:16:08 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:69a1c1f09006646402113c13549903b3334134cbc88f6a3cc3aa52b906115dae`  
		Last Modified: Fri, 08 Sep 2017 05:25:03 GMT  
		Size: 30.3 MB (30294153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0e7d3e483472434f624e773ed187c706ad109c44f1a568fd72d8677aafbb2c`  
		Last Modified: Fri, 08 Sep 2017 07:16:19 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:714c5ed9756cb27be8619d079c85a8ef0ec3696d7acfa4202eeb56c800845cd0`  
		Last Modified: Fri, 08 Sep 2017 07:16:19 GMT  
		Size: 966.9 KB (966854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98eed162a4243e6ca50558a00a830db1b7758ed3fd1c15e6a477b55f336d52d4`  
		Last Modified: Fri, 08 Sep 2017 07:16:31 GMT  
		Size: 8.9 MB (8901972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:447f6e23277b6e9274ec1092b47794785330d34a17432a85e250aa7d248734ce`  
		Last Modified: Fri, 08 Sep 2017 07:16:28 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:097f0b495e1cd85eaefcf9eb92f1ee7730f9b8ff1dee3c61f72ec234bc5102f1`  
		Last Modified: Fri, 08 Sep 2017 07:16:28 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:latest`

```console
$ docker pull redis@sha256:fe77356e6e8d5c5200b9800e50ae71147efdc446a3cc4f601c607fbfd218015e
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
$ docker pull redis@sha256:13998f4f3e8905909ce3e8dc204b5953270a1c4893363d549d0f989dac29ac93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39365924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9813a7e8fcc0027047b39390b05b2f1487aa59df2139ac71d12885ad9b7c4f9c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 03:32:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 13 Sep 2017 03:32:21 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Sep 2017 03:32:49 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Sep 2017 03:35:12 GMT
ENV REDIS_VERSION=4.0.1
# Wed, 13 Sep 2017 03:35:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Wed, 13 Sep 2017 03:35:13 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Wed, 13 Sep 2017 03:35:57 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Sep 2017 03:35:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 13 Sep 2017 03:35:58 GMT
VOLUME [/data]
# Wed, 13 Sep 2017 03:35:58 GMT
WORKDIR /data
# Wed, 13 Sep 2017 03:35:58 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 13 Sep 2017 03:35:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 03:35:58 GMT
EXPOSE 6379/tcp
# Wed, 13 Sep 2017 03:35:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc32c7d9b0f4d408e70aa19dd530fc281bbd0ab73b49e2a9911affdd76c120e3`  
		Last Modified: Wed, 13 Sep 2017 03:37:54 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad60cc6fa43175ef5587cc699b884aeb50a863e5f224a79e71ad7d4a29140659`  
		Last Modified: Wed, 13 Sep 2017 03:37:54 GMT  
		Size: 981.7 KB (981727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21c99d8cf03d1afcdca25858e9dbe028cd44a14cc71dd75e860acfedd8cee54`  
		Last Modified: Wed, 13 Sep 2017 03:38:36 GMT  
		Size: 8.3 MB (8268475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:357908014789be24f8bd537a80c88aca8b87909f419767d58c43c74fb83e8421`  
		Last Modified: Wed, 13 Sep 2017 03:38:35 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27e1cb0ca43016179f95c7d21b58b502de8d2cf9e31e849cb606f9071427e96`  
		Last Modified: Wed, 13 Sep 2017 03:38:34 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm variant v5

```console
$ docker pull redis@sha256:63f11b6d9274d1459e23b04b16db6c6cb8523fc5591e199abd4b523c5a1e9d5c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37568456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d542bdbd2ae73e9a5b7b676e36da9211ea850941d4efb3a7f959067bbe0ed6ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 19:57:26 GMT
ADD file:606c213181f629ee41d4467828fb9801d09971722004715d4ee5e715f51d1704 in / 
# Fri, 08 Sep 2017 19:57:29 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 02:04:25 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 09 Sep 2017 02:04:26 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 02:09:30 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 09 Sep 2017 02:37:41 GMT
ENV REDIS_VERSION=4.0.1
# Sat, 09 Sep 2017 02:37:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Sat, 09 Sep 2017 02:37:43 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Sat, 09 Sep 2017 02:43:53 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 09 Sep 2017 02:43:55 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 09 Sep 2017 02:43:57 GMT
VOLUME [/data]
# Sat, 09 Sep 2017 02:43:59 GMT
WORKDIR /data
# Sat, 09 Sep 2017 02:43:59 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 09 Sep 2017 02:44:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Sep 2017 02:44:01 GMT
EXPOSE 6379/tcp
# Sat, 09 Sep 2017 02:44:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c730baecba27c98917b2ee85dc172ed0ef62d1decdc5064d89296a8edb1657f3`  
		Last Modified: Fri, 08 Sep 2017 20:13:04 GMT  
		Size: 28.4 MB (28422486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d6c4d9a2fba872cff461e8e8c20b69ea3aa9d829462a25dd1c8795b0009856`  
		Last Modified: Sat, 09 Sep 2017 02:44:20 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53631fc6671832d1ad815bc338d2e57c9838bbc229916e7d3a9a5f11df03bdeb`  
		Last Modified: Sat, 09 Sep 2017 02:44:20 GMT  
		Size: 971.4 KB (971422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3362bc33cc5f8bde5a1e1416c31898f95e048e8f17509a639750e56382593a29`  
		Last Modified: Sat, 09 Sep 2017 02:44:54 GMT  
		Size: 8.2 MB (8171960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b229f315c1d20c054bf4824b6377a493a0336a18930cb1a5dd0415d18bc0db6`  
		Last Modified: Sat, 09 Sep 2017 02:44:49 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581781ca5aecea0aad73bb6a38232938a2305d30a4ca90832e07d9a782f38648`  
		Last Modified: Sat, 09 Sep 2017 02:44:51 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm variant v7

```console
$ docker pull redis@sha256:431418afc48dc6255060ccf6b157f5b555867bdd9486761631aecc961889860c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35155324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbd04331e9eabf416783a556261f91e8c0f447c022a4c2b12d5978cbb988e7aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:46 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Sat, 09 Sep 2017 01:40:47 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 02:23:36 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 12 Sep 2017 02:23:38 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Sep 2017 02:30:52 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Sep 2017 02:39:06 GMT
ENV REDIS_VERSION=4.0.1
# Tue, 12 Sep 2017 02:39:08 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Tue, 12 Sep 2017 02:39:09 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Tue, 12 Sep 2017 02:58:12 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Sep 2017 02:58:14 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 12 Sep 2017 02:58:15 GMT
VOLUME [/data]
# Tue, 12 Sep 2017 02:58:16 GMT
WORKDIR /data
# Tue, 12 Sep 2017 02:58:17 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 12 Sep 2017 02:58:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 02:58:19 GMT
EXPOSE 6379/tcp
# Tue, 12 Sep 2017 02:58:20 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5ec7d30a9a8c4943b1650d24c5857d17b69f0e4bb62241d56894484ff9315547`  
		Last Modified: Sat, 09 Sep 2017 01:51:42 GMT  
		Size: 26.3 MB (26279463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681a2ce24187b910a55e37705ba11b41e87a6950949abceb35177553ec00e7d7`  
		Last Modified: Tue, 12 Sep 2017 02:58:45 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd0ed4f3f6d3475fdbe0ae0c48cd0b3c09bf3fdf3dfa96b3a98d3ea06044375`  
		Last Modified: Tue, 12 Sep 2017 02:58:45 GMT  
		Size: 956.3 KB (956264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6baf32ca8bc634a7d1c31b01fbc1a3cb13d0f98ddda61a4a24a2fb420e1444`  
		Last Modified: Tue, 12 Sep 2017 02:59:10 GMT  
		Size: 7.9 MB (7917011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3730cf9f88696d44db95f180e829da97fd1c48cd030b85a2fa613ebbd6fecf4e`  
		Last Modified: Tue, 12 Sep 2017 02:59:07 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3478618950f1cf293703e98dea29711bdee6033f922c2f2605a2bd2a4722cf6a`  
		Last Modified: Tue, 12 Sep 2017 02:59:07 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:b2917f063da686dbde86534db09c16217b26f7901fce611db2a70ff1c0d1d581
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36843635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d8232f2244e506c4287d5535077120126fbb00a56d3b7e9b3fc8c961896c36c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 17:24:21 GMT
ADD file:e941b26069cf288fadf2ab835d4f0c3a681f3f882d81686662d20f9642928795 in / 
# Fri, 08 Sep 2017 17:24:22 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 02:47:18 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 09 Sep 2017 02:47:19 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 02:48:38 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 09 Sep 2017 02:53:47 GMT
ENV REDIS_VERSION=4.0.1
# Sat, 09 Sep 2017 02:53:48 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Sat, 09 Sep 2017 02:53:49 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Sat, 09 Sep 2017 02:56:39 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 09 Sep 2017 02:56:42 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 09 Sep 2017 02:56:43 GMT
VOLUME [/data]
# Sat, 09 Sep 2017 02:56:45 GMT
WORKDIR /data
# Sat, 09 Sep 2017 02:56:46 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 09 Sep 2017 02:56:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Sep 2017 02:56:48 GMT
EXPOSE 6379/tcp
# Sat, 09 Sep 2017 02:56:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:01c8fcecd171557c0af8130e86fd47e393a2791dc2ea655cb5f4f0ed6b95ef51`  
		Last Modified: Fri, 08 Sep 2017 17:36:14 GMT  
		Size: 27.5 MB (27480389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715ea475c1dc269a38ebfee254376c154c2dc2a64a2887d559243eb5e59429d5`  
		Last Modified: Sat, 09 Sep 2017 02:57:13 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:287b4ff744d288b6c4cb9ee329a00c3cbb5acb152ae88eac786ac9084a530a7b`  
		Last Modified: Sat, 09 Sep 2017 02:57:14 GMT  
		Size: 948.7 KB (948729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6a67ef5c44a1e172968b84e7c7cf3618528bfdac98cf2fccd30bde93740e26`  
		Last Modified: Sat, 09 Sep 2017 02:57:44 GMT  
		Size: 8.4 MB (8411927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd6d10091ddde6c8f9061f611f1746b3d6ba7eb71f909dd282a02bdd5cc99b7`  
		Last Modified: Sat, 09 Sep 2017 02:57:40 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2f3d3ce2cc564da504d647183f8b0db7013d19c62c05c3f185ba7993a91af5`  
		Last Modified: Sat, 09 Sep 2017 02:57:40 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; 386

```console
$ docker pull redis@sha256:b72f26daace949471f74ddccbde969cdb65a9f206c806eb82a548a1badab17f2
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38710182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d0f80d094085a121ae2206636f0b9243eb44c0a883355f8b6bbe3b01ec76437`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:05 GMT
ADD file:cd8c8c04f635ce6e14de5271949afcf67b9c480ea35ba633423d385975e330ad in / 
# Fri, 08 Sep 2017 13:18:05 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:12:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 17:12:55 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 17:13:53 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 17:15:33 GMT
ENV REDIS_VERSION=4.0.1
# Fri, 08 Sep 2017 17:15:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Fri, 08 Sep 2017 17:15:34 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Fri, 08 Sep 2017 17:17:03 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 17:17:04 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Sep 2017 17:17:04 GMT
VOLUME [/data]
# Fri, 08 Sep 2017 17:17:04 GMT
WORKDIR /data
# Fri, 08 Sep 2017 17:17:04 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 08 Sep 2017 17:17:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 17:17:05 GMT
EXPOSE 6379/tcp
# Fri, 08 Sep 2017 17:17:05 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:60dc9bcedd31a278f8b25a98451958fb75022352fe550042039e16ce32422ecf`  
		Last Modified: Fri, 08 Sep 2017 13:23:15 GMT  
		Size: 30.3 MB (30264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ede072b04252ed37d0b3f458abd925ed9a16c1453d1dbe3884f06ff416bc39c`  
		Last Modified: Fri, 08 Sep 2017 17:17:12 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3633915fd03a8ec800300ef25f0e4fc969383fe4a4dc1725bf5c9e181ef84bac`  
		Last Modified: Fri, 08 Sep 2017 17:17:13 GMT  
		Size: 960.8 KB (960783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ff964f06e20343dd83e4fdc15226fb57f5545fd315174c4b67f46eb8929de2`  
		Last Modified: Fri, 08 Sep 2017 17:17:35 GMT  
		Size: 7.5 MB (7482657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f4b60a870b55ff62ee64230255df997f9cde59bc2614f131f18432b1c0ea6cf`  
		Last Modified: Fri, 08 Sep 2017 17:17:33 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c9a43a7282106144e210dd6a8e5590ddabdbcf8e7f924aaa99d96a90093169`  
		Last Modified: Fri, 08 Sep 2017 17:17:33 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; ppc64le

```console
$ docker pull redis@sha256:c49719a8630ce02738537d96bcefbfe8fb1f547dc151db892d8eb1b691959ec5
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.9 MB (38890386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d78f38517c264dbbf9cd7ef8871d5f08a21192e2571cf6bf8ff3af16eb263a4a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:35 GMT
ADD file:a71c29d4477813e82c1dc250af55ac351262466c8d3b71f16ba55c334df128cb in / 
# Fri, 08 Sep 2017 00:32:35 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 02:36:41 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 02:36:41 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 02:37:07 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 02:37:55 GMT
ENV REDIS_VERSION=4.0.1
# Fri, 08 Sep 2017 02:37:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Fri, 08 Sep 2017 02:37:55 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Fri, 08 Sep 2017 02:38:37 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 02:38:38 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Sep 2017 02:38:38 GMT
VOLUME [/data]
# Fri, 08 Sep 2017 02:38:38 GMT
WORKDIR /data
# Fri, 08 Sep 2017 02:38:38 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 08 Sep 2017 02:38:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 02:38:39 GMT
EXPOSE 6379/tcp
# Fri, 08 Sep 2017 02:38:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c81aec82dcf4ce3160634cefb76527ab80d464191cc48ad6c4593766c230004b`  
		Last Modified: Fri, 08 Sep 2017 00:37:39 GMT  
		Size: 29.3 MB (29306443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b7dc9fbcb59c464bb2dee6a93c8de45a94e651da0f7e73b9463f91b584d718`  
		Last Modified: Fri, 08 Sep 2017 02:38:52 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8fdc5bb87107ce2c801e86b5daf0b77abd4a00109cfd20b0c250b4e27c555d`  
		Last Modified: Fri, 08 Sep 2017 02:38:52 GMT  
		Size: 950.4 KB (950420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e8c41e78cd4016270af1fdf917e763320cc31e7159c93f58a73ae449d076ea`  
		Last Modified: Fri, 08 Sep 2017 02:39:15 GMT  
		Size: 8.6 MB (8630902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f63a64e90de882f0722dcec655bb540c787d814c818073491b6ed0388128d0d`  
		Last Modified: Fri, 08 Sep 2017 02:39:12 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95932397bf4f0d5744e6e9837953db06424445074dde41923fec0be3eb2ffc33`  
		Last Modified: Fri, 08 Sep 2017 02:39:12 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; s390x

```console
$ docker pull redis@sha256:88a4a6d000c152680459246bcdbeb4235f1821c3303312b1cecd8d77af712776
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 MB (40165568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:406650d530edf0eeeadc92f49e55f9f9f72168747f0b612d0d518fd423e6811c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:50 GMT
ADD file:520d2b400acdfce1df5aa9f6322a091acc0302fcef67b02c35f2fabb06f00377 in / 
# Fri, 08 Sep 2017 05:21:51 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:14:31 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 07:14:31 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 07:14:50 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 07:15:29 GMT
ENV REDIS_VERSION=4.0.1
# Fri, 08 Sep 2017 07:15:30 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Fri, 08 Sep 2017 07:15:30 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Fri, 08 Sep 2017 07:16:06 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 07:16:07 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Sep 2017 07:16:07 GMT
VOLUME [/data]
# Fri, 08 Sep 2017 07:16:07 GMT
WORKDIR /data
# Fri, 08 Sep 2017 07:16:08 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 08 Sep 2017 07:16:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 07:16:08 GMT
EXPOSE 6379/tcp
# Fri, 08 Sep 2017 07:16:08 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:69a1c1f09006646402113c13549903b3334134cbc88f6a3cc3aa52b906115dae`  
		Last Modified: Fri, 08 Sep 2017 05:25:03 GMT  
		Size: 30.3 MB (30294153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0e7d3e483472434f624e773ed187c706ad109c44f1a568fd72d8677aafbb2c`  
		Last Modified: Fri, 08 Sep 2017 07:16:19 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:714c5ed9756cb27be8619d079c85a8ef0ec3696d7acfa4202eeb56c800845cd0`  
		Last Modified: Fri, 08 Sep 2017 07:16:19 GMT  
		Size: 966.9 KB (966854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98eed162a4243e6ca50558a00a830db1b7758ed3fd1c15e6a477b55f336d52d4`  
		Last Modified: Fri, 08 Sep 2017 07:16:31 GMT  
		Size: 8.9 MB (8901972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:447f6e23277b6e9274ec1092b47794785330d34a17432a85e250aa7d248734ce`  
		Last Modified: Fri, 08 Sep 2017 07:16:28 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:097f0b495e1cd85eaefcf9eb92f1ee7730f9b8ff1dee3c61f72ec234bc5102f1`  
		Last Modified: Fri, 08 Sep 2017 07:16:28 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.1-32bit`

```console
$ docker pull redis@sha256:2955618305e87ee389d8cb1c928ae64fbbe3833116caca364b66f5ede106daa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0.1-32bit` - linux; amd64

```console
$ docker pull redis@sha256:7b16856844b13c840e7f547a077780d493936d76573d09c105e2a1466e1fc4a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (42964314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95875aa7f6376237f3ea4b189d4e5c9f81c6d89ec5da8053fa4ff4c71cc5b4cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 03:32:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 13 Sep 2017 03:32:21 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Sep 2017 03:32:49 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Sep 2017 03:35:12 GMT
ENV REDIS_VERSION=4.0.1
# Wed, 13 Sep 2017 03:35:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Wed, 13 Sep 2017 03:35:13 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Wed, 13 Sep 2017 03:36:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:37:07 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Sep 2017 03:37:08 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 13 Sep 2017 03:37:08 GMT
VOLUME [/data]
# Wed, 13 Sep 2017 03:37:08 GMT
WORKDIR /data
# Wed, 13 Sep 2017 03:37:09 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 13 Sep 2017 03:37:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 03:37:09 GMT
EXPOSE 6379/tcp
# Wed, 13 Sep 2017 03:37:10 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc32c7d9b0f4d408e70aa19dd530fc281bbd0ab73b49e2a9911affdd76c120e3`  
		Last Modified: Wed, 13 Sep 2017 03:37:54 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad60cc6fa43175ef5587cc699b884aeb50a863e5f224a79e71ad7d4a29140659`  
		Last Modified: Wed, 13 Sep 2017 03:37:54 GMT  
		Size: 981.7 KB (981727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e054b8ec625a86ee2a02d3b51d192a1956ddddd078cbcd8b8265136325f435d6`  
		Last Modified: Wed, 13 Sep 2017 03:38:52 GMT  
		Size: 4.4 MB (4378558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53200d44b92bec88938f1c66dd514f955184feb7daf1c3d84f1f843c942d7579`  
		Last Modified: Wed, 13 Sep 2017 03:38:53 GMT  
		Size: 7.5 MB (7488303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bd6ac87db58b191ccbc6e0c887ed5dd409ca1746b99c2d0e9c5cb1bab7414c`  
		Last Modified: Wed, 13 Sep 2017 03:38:52 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7a9ca3cc2fef4ee8d130065e7c6119ce5f0bd6a9352a32ea236b13032c4aa8`  
		Last Modified: Wed, 13 Sep 2017 03:38:52 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-32bit`

```console
$ docker pull redis@sha256:2955618305e87ee389d8cb1c928ae64fbbe3833116caca364b66f5ede106daa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0-32bit` - linux; amd64

```console
$ docker pull redis@sha256:7b16856844b13c840e7f547a077780d493936d76573d09c105e2a1466e1fc4a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (42964314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95875aa7f6376237f3ea4b189d4e5c9f81c6d89ec5da8053fa4ff4c71cc5b4cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 03:32:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 13 Sep 2017 03:32:21 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Sep 2017 03:32:49 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Sep 2017 03:35:12 GMT
ENV REDIS_VERSION=4.0.1
# Wed, 13 Sep 2017 03:35:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Wed, 13 Sep 2017 03:35:13 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Wed, 13 Sep 2017 03:36:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:37:07 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Sep 2017 03:37:08 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 13 Sep 2017 03:37:08 GMT
VOLUME [/data]
# Wed, 13 Sep 2017 03:37:08 GMT
WORKDIR /data
# Wed, 13 Sep 2017 03:37:09 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 13 Sep 2017 03:37:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 03:37:09 GMT
EXPOSE 6379/tcp
# Wed, 13 Sep 2017 03:37:10 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc32c7d9b0f4d408e70aa19dd530fc281bbd0ab73b49e2a9911affdd76c120e3`  
		Last Modified: Wed, 13 Sep 2017 03:37:54 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad60cc6fa43175ef5587cc699b884aeb50a863e5f224a79e71ad7d4a29140659`  
		Last Modified: Wed, 13 Sep 2017 03:37:54 GMT  
		Size: 981.7 KB (981727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e054b8ec625a86ee2a02d3b51d192a1956ddddd078cbcd8b8265136325f435d6`  
		Last Modified: Wed, 13 Sep 2017 03:38:52 GMT  
		Size: 4.4 MB (4378558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53200d44b92bec88938f1c66dd514f955184feb7daf1c3d84f1f843c942d7579`  
		Last Modified: Wed, 13 Sep 2017 03:38:53 GMT  
		Size: 7.5 MB (7488303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bd6ac87db58b191ccbc6e0c887ed5dd409ca1746b99c2d0e9c5cb1bab7414c`  
		Last Modified: Wed, 13 Sep 2017 03:38:52 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7a9ca3cc2fef4ee8d130065e7c6119ce5f0bd6a9352a32ea236b13032c4aa8`  
		Last Modified: Wed, 13 Sep 2017 03:38:52 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-32bit`

```console
$ docker pull redis@sha256:2955618305e87ee389d8cb1c928ae64fbbe3833116caca364b66f5ede106daa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-32bit` - linux; amd64

```console
$ docker pull redis@sha256:7b16856844b13c840e7f547a077780d493936d76573d09c105e2a1466e1fc4a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (42964314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95875aa7f6376237f3ea4b189d4e5c9f81c6d89ec5da8053fa4ff4c71cc5b4cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 03:32:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 13 Sep 2017 03:32:21 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Sep 2017 03:32:49 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Sep 2017 03:35:12 GMT
ENV REDIS_VERSION=4.0.1
# Wed, 13 Sep 2017 03:35:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Wed, 13 Sep 2017 03:35:13 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Wed, 13 Sep 2017 03:36:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:37:07 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Sep 2017 03:37:08 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 13 Sep 2017 03:37:08 GMT
VOLUME [/data]
# Wed, 13 Sep 2017 03:37:08 GMT
WORKDIR /data
# Wed, 13 Sep 2017 03:37:09 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 13 Sep 2017 03:37:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 03:37:09 GMT
EXPOSE 6379/tcp
# Wed, 13 Sep 2017 03:37:10 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc32c7d9b0f4d408e70aa19dd530fc281bbd0ab73b49e2a9911affdd76c120e3`  
		Last Modified: Wed, 13 Sep 2017 03:37:54 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad60cc6fa43175ef5587cc699b884aeb50a863e5f224a79e71ad7d4a29140659`  
		Last Modified: Wed, 13 Sep 2017 03:37:54 GMT  
		Size: 981.7 KB (981727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e054b8ec625a86ee2a02d3b51d192a1956ddddd078cbcd8b8265136325f435d6`  
		Last Modified: Wed, 13 Sep 2017 03:38:52 GMT  
		Size: 4.4 MB (4378558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53200d44b92bec88938f1c66dd514f955184feb7daf1c3d84f1f843c942d7579`  
		Last Modified: Wed, 13 Sep 2017 03:38:53 GMT  
		Size: 7.5 MB (7488303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bd6ac87db58b191ccbc6e0c887ed5dd409ca1746b99c2d0e9c5cb1bab7414c`  
		Last Modified: Wed, 13 Sep 2017 03:38:52 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7a9ca3cc2fef4ee8d130065e7c6119ce5f0bd6a9352a32ea236b13032c4aa8`  
		Last Modified: Wed, 13 Sep 2017 03:38:52 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:32bit`

```console
$ docker pull redis@sha256:2955618305e87ee389d8cb1c928ae64fbbe3833116caca364b66f5ede106daa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

```console
$ docker pull redis@sha256:7b16856844b13c840e7f547a077780d493936d76573d09c105e2a1466e1fc4a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (42964314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95875aa7f6376237f3ea4b189d4e5c9f81c6d89ec5da8053fa4ff4c71cc5b4cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 03:32:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 13 Sep 2017 03:32:21 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Sep 2017 03:32:49 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Sep 2017 03:35:12 GMT
ENV REDIS_VERSION=4.0.1
# Wed, 13 Sep 2017 03:35:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Wed, 13 Sep 2017 03:35:13 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Wed, 13 Sep 2017 03:36:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:37:07 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Sep 2017 03:37:08 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 13 Sep 2017 03:37:08 GMT
VOLUME [/data]
# Wed, 13 Sep 2017 03:37:08 GMT
WORKDIR /data
# Wed, 13 Sep 2017 03:37:09 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 13 Sep 2017 03:37:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 03:37:09 GMT
EXPOSE 6379/tcp
# Wed, 13 Sep 2017 03:37:10 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc32c7d9b0f4d408e70aa19dd530fc281bbd0ab73b49e2a9911affdd76c120e3`  
		Last Modified: Wed, 13 Sep 2017 03:37:54 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad60cc6fa43175ef5587cc699b884aeb50a863e5f224a79e71ad7d4a29140659`  
		Last Modified: Wed, 13 Sep 2017 03:37:54 GMT  
		Size: 981.7 KB (981727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e054b8ec625a86ee2a02d3b51d192a1956ddddd078cbcd8b8265136325f435d6`  
		Last Modified: Wed, 13 Sep 2017 03:38:52 GMT  
		Size: 4.4 MB (4378558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53200d44b92bec88938f1c66dd514f955184feb7daf1c3d84f1f843c942d7579`  
		Last Modified: Wed, 13 Sep 2017 03:38:53 GMT  
		Size: 7.5 MB (7488303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bd6ac87db58b191ccbc6e0c887ed5dd409ca1746b99c2d0e9c5cb1bab7414c`  
		Last Modified: Wed, 13 Sep 2017 03:38:52 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7a9ca3cc2fef4ee8d130065e7c6119ce5f0bd6a9352a32ea236b13032c4aa8`  
		Last Modified: Wed, 13 Sep 2017 03:38:52 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.1-alpine`

```console
$ docker pull redis@sha256:99ec383b895ca08158afe6e6bb9d5f1d349d183d3ec106c001353a393f61969d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0.1-alpine` - linux; amd64

```console
$ docker pull redis@sha256:27c642583014a5bfe1cbe333b0029704efc807f60acd2df8aac270c42e978eb8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10463590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1659aac5657e20996861d1b2bcdd0c54d35f7ee80cdb45b5cd24ba6eb12fba4a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 03:34:43 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 13 Sep 2017 03:34:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Sep 2017 03:37:10 GMT
ENV REDIS_VERSION=4.0.1
# Wed, 13 Sep 2017 03:37:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Wed, 13 Sep 2017 03:37:11 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Wed, 13 Sep 2017 03:37:40 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Wed, 13 Sep 2017 03:37:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 13 Sep 2017 03:37:41 GMT
VOLUME [/data]
# Wed, 13 Sep 2017 03:37:41 GMT
WORKDIR /data
# Wed, 13 Sep 2017 03:37:41 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 13 Sep 2017 03:37:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 03:37:41 GMT
EXPOSE 6379/tcp
# Wed, 13 Sep 2017 03:37:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769f41498e4c5f8669706ff06c4ff2e63ba66b16c8a404a48c18c9d13e2470c5`  
		Last Modified: Wed, 13 Sep 2017 03:38:19 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60252c844d0b338a3314f4fe91a027ff8484aec059df0ca1a82aeb0f61c99206`  
		Last Modified: Wed, 13 Sep 2017 03:38:19 GMT  
		Size: 8.2 KB (8218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a934f7daaad6ba49f4af50f9f8fb5d878b03c73ee75d4dc8b5b9f2e09ef0fdc8`  
		Last Modified: Wed, 13 Sep 2017 03:39:09 GMT  
		Size: 8.5 MB (8463218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a02b830d842616d72a2182a69942409c2940ea883da9154a076aa0f8e699e6`  
		Last Modified: Wed, 13 Sep 2017 03:39:08 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b8c3a4d63cea486ecb6e6d46e71959142514fb3cd388527eaa14ab67feb5a0`  
		Last Modified: Wed, 13 Sep 2017 03:39:08 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-alpine`

```console
$ docker pull redis@sha256:99ec383b895ca08158afe6e6bb9d5f1d349d183d3ec106c001353a393f61969d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0-alpine` - linux; amd64

```console
$ docker pull redis@sha256:27c642583014a5bfe1cbe333b0029704efc807f60acd2df8aac270c42e978eb8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10463590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1659aac5657e20996861d1b2bcdd0c54d35f7ee80cdb45b5cd24ba6eb12fba4a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 03:34:43 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 13 Sep 2017 03:34:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Sep 2017 03:37:10 GMT
ENV REDIS_VERSION=4.0.1
# Wed, 13 Sep 2017 03:37:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Wed, 13 Sep 2017 03:37:11 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Wed, 13 Sep 2017 03:37:40 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Wed, 13 Sep 2017 03:37:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 13 Sep 2017 03:37:41 GMT
VOLUME [/data]
# Wed, 13 Sep 2017 03:37:41 GMT
WORKDIR /data
# Wed, 13 Sep 2017 03:37:41 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 13 Sep 2017 03:37:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 03:37:41 GMT
EXPOSE 6379/tcp
# Wed, 13 Sep 2017 03:37:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769f41498e4c5f8669706ff06c4ff2e63ba66b16c8a404a48c18c9d13e2470c5`  
		Last Modified: Wed, 13 Sep 2017 03:38:19 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60252c844d0b338a3314f4fe91a027ff8484aec059df0ca1a82aeb0f61c99206`  
		Last Modified: Wed, 13 Sep 2017 03:38:19 GMT  
		Size: 8.2 KB (8218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a934f7daaad6ba49f4af50f9f8fb5d878b03c73ee75d4dc8b5b9f2e09ef0fdc8`  
		Last Modified: Wed, 13 Sep 2017 03:39:09 GMT  
		Size: 8.5 MB (8463218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a02b830d842616d72a2182a69942409c2940ea883da9154a076aa0f8e699e6`  
		Last Modified: Wed, 13 Sep 2017 03:39:08 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b8c3a4d63cea486ecb6e6d46e71959142514fb3cd388527eaa14ab67feb5a0`  
		Last Modified: Wed, 13 Sep 2017 03:39:08 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-alpine`

```console
$ docker pull redis@sha256:99ec383b895ca08158afe6e6bb9d5f1d349d183d3ec106c001353a393f61969d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-alpine` - linux; amd64

```console
$ docker pull redis@sha256:27c642583014a5bfe1cbe333b0029704efc807f60acd2df8aac270c42e978eb8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10463590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1659aac5657e20996861d1b2bcdd0c54d35f7ee80cdb45b5cd24ba6eb12fba4a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 03:34:43 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 13 Sep 2017 03:34:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Sep 2017 03:37:10 GMT
ENV REDIS_VERSION=4.0.1
# Wed, 13 Sep 2017 03:37:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Wed, 13 Sep 2017 03:37:11 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Wed, 13 Sep 2017 03:37:40 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Wed, 13 Sep 2017 03:37:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 13 Sep 2017 03:37:41 GMT
VOLUME [/data]
# Wed, 13 Sep 2017 03:37:41 GMT
WORKDIR /data
# Wed, 13 Sep 2017 03:37:41 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 13 Sep 2017 03:37:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 03:37:41 GMT
EXPOSE 6379/tcp
# Wed, 13 Sep 2017 03:37:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769f41498e4c5f8669706ff06c4ff2e63ba66b16c8a404a48c18c9d13e2470c5`  
		Last Modified: Wed, 13 Sep 2017 03:38:19 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60252c844d0b338a3314f4fe91a027ff8484aec059df0ca1a82aeb0f61c99206`  
		Last Modified: Wed, 13 Sep 2017 03:38:19 GMT  
		Size: 8.2 KB (8218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a934f7daaad6ba49f4af50f9f8fb5d878b03c73ee75d4dc8b5b9f2e09ef0fdc8`  
		Last Modified: Wed, 13 Sep 2017 03:39:09 GMT  
		Size: 8.5 MB (8463218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a02b830d842616d72a2182a69942409c2940ea883da9154a076aa0f8e699e6`  
		Last Modified: Wed, 13 Sep 2017 03:39:08 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b8c3a4d63cea486ecb6e6d46e71959142514fb3cd388527eaa14ab67feb5a0`  
		Last Modified: Wed, 13 Sep 2017 03:39:08 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine`

```console
$ docker pull redis@sha256:99ec383b895ca08158afe6e6bb9d5f1d349d183d3ec106c001353a393f61969d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:alpine` - linux; amd64

```console
$ docker pull redis@sha256:27c642583014a5bfe1cbe333b0029704efc807f60acd2df8aac270c42e978eb8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10463590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1659aac5657e20996861d1b2bcdd0c54d35f7ee80cdb45b5cd24ba6eb12fba4a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 03:34:43 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 13 Sep 2017 03:34:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Sep 2017 03:37:10 GMT
ENV REDIS_VERSION=4.0.1
# Wed, 13 Sep 2017 03:37:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Wed, 13 Sep 2017 03:37:11 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Wed, 13 Sep 2017 03:37:40 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Wed, 13 Sep 2017 03:37:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 13 Sep 2017 03:37:41 GMT
VOLUME [/data]
# Wed, 13 Sep 2017 03:37:41 GMT
WORKDIR /data
# Wed, 13 Sep 2017 03:37:41 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 13 Sep 2017 03:37:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 03:37:41 GMT
EXPOSE 6379/tcp
# Wed, 13 Sep 2017 03:37:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769f41498e4c5f8669706ff06c4ff2e63ba66b16c8a404a48c18c9d13e2470c5`  
		Last Modified: Wed, 13 Sep 2017 03:38:19 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60252c844d0b338a3314f4fe91a027ff8484aec059df0ca1a82aeb0f61c99206`  
		Last Modified: Wed, 13 Sep 2017 03:38:19 GMT  
		Size: 8.2 KB (8218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a934f7daaad6ba49f4af50f9f8fb5d878b03c73ee75d4dc8b5b9f2e09ef0fdc8`  
		Last Modified: Wed, 13 Sep 2017 03:39:09 GMT  
		Size: 8.5 MB (8463218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a02b830d842616d72a2182a69942409c2940ea883da9154a076aa0f8e699e6`  
		Last Modified: Wed, 13 Sep 2017 03:39:08 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b8c3a4d63cea486ecb6e6d46e71959142514fb3cd388527eaa14ab67feb5a0`  
		Last Modified: Wed, 13 Sep 2017 03:39:08 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
