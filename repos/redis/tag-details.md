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
$ docker pull redis@sha256:9297f0699a9d459c80f20cc45ad39df2a1a6d8c50bd3503bd4e8303dbd133372
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:3` - linux; amd64

```console
$ docker pull redis@sha256:8d5d57da0ef2aa5346bb24bda675f230872dfcc55a584979b721a897769d434e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36844456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a3b4efd4801ded81054f15a3dd39f068e593eef593052e0c3d4defa4abe3ac7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 03:32:28 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 19 Sep 2017 03:32:28 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 03:32:56 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 21 Sep 2017 20:49:32 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 21 Sep 2017 20:49:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 21 Sep 2017 20:49:33 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 21 Sep 2017 20:50:25 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 21 Sep 2017 20:50:26 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Sep 2017 20:50:26 GMT
VOLUME [/data]
# Thu, 21 Sep 2017 20:50:26 GMT
WORKDIR /data
# Thu, 21 Sep 2017 20:50:26 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 21 Sep 2017 20:50:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Sep 2017 20:50:27 GMT
EXPOSE 6379/tcp
# Thu, 21 Sep 2017 20:50:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9835c278527bc23a93cf0cbfae60655ad5cf9f26806935a1bd0da57d14c751`  
		Last Modified: Tue, 19 Sep 2017 03:38:55 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a0d1212c38ec976de047e36c9b0f19d8427333c4db7d45d403f5839ec1c8fb`  
		Last Modified: Tue, 19 Sep 2017 03:38:55 GMT  
		Size: 981.7 KB (981718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fcd2e8bf8be8f450648982cd418fee6a80bb99fd35c285b4137f703271bf114`  
		Last Modified: Thu, 21 Sep 2017 21:01:16 GMT  
		Size: 5.7 MB (5747013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67695bc491d84b741a7eddea489bf7325ff54e7f52fc50b8397d8fb2f8251ceb`  
		Last Modified: Thu, 21 Sep 2017 21:01:15 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df02671e1fb24c1710c9e2dc8f2fb97941f5825f915005aa30223c3a651dd700`  
		Last Modified: Thu, 21 Sep 2017 21:01:15 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; arm variant v7

```console
$ docker pull redis@sha256:6054aadf94eff6621f063bf478b5cc55604ab4e3162ef67a5c02c30ece0609eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 MB (32714298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d8787bed5cc0b52c2f422c5d65c7d0e22ce70f1d4bde0b843af44c55e79e503`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:46 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Sat, 09 Sep 2017 01:40:47 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 03:05:55 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 19 Sep 2017 03:05:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 03:11:04 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 22 Sep 2017 00:27:56 GMT
ENV REDIS_VERSION=3.2.11
# Fri, 22 Sep 2017 00:27:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Fri, 22 Sep 2017 00:27:58 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Fri, 22 Sep 2017 00:34:00 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 00:34:03 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 00:34:04 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 00:34:04 GMT
WORKDIR /data
# Fri, 22 Sep 2017 00:34:05 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 00:34:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 00:34:08 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 00:34:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5ec7d30a9a8c4943b1650d24c5857d17b69f0e4bb62241d56894484ff9315547`  
		Last Modified: Sat, 09 Sep 2017 01:51:42 GMT  
		Size: 26.3 MB (26279463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71aa78af1dc05c680523e0e793af7351fde77d37b56e6d4c2be5d45c69e6bcc7`  
		Last Modified: Tue, 19 Sep 2017 03:29:47 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f17d61ada0d583be49aa7a57f8c5362ffd1d02d581c9ace2e5262ec3166a4a`  
		Last Modified: Tue, 19 Sep 2017 03:29:47 GMT  
		Size: 956.3 KB (956290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e05a70f1711c68d47675aa06eef74da6c3a37f5818d8d50252e7a755bf174aa`  
		Last Modified: Fri, 22 Sep 2017 00:39:47 GMT  
		Size: 5.5 MB (5475957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5ffef064e1f487e066614dae4907013cf6eb03fa3c958d78f0d83f1f6d0bd47`  
		Last Modified: Fri, 22 Sep 2017 00:39:46 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbdd4e9a84eb86ca51349702e766f60de16a07a147237ff8522dcb1b5886dcfa`  
		Last Modified: Fri, 22 Sep 2017 00:39:45 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:d52857ddc867207a6415b9ca2e40ed2b892d0ac419220ad5940081fee3940313
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34280569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f8de959680b33be969913cf28db9dcb97be68cb574ff6d29ba5df0480d02156`
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
# Fri, 22 Sep 2017 12:25:36 GMT
ENV REDIS_VERSION=3.2.11
# Fri, 22 Sep 2017 12:25:36 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Fri, 22 Sep 2017 12:25:37 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Fri, 22 Sep 2017 12:27:13 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 12:27:15 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 12:27:15 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 12:27:16 GMT
WORKDIR /data
# Fri, 22 Sep 2017 12:27:17 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 12:27:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 12:27:18 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 12:27:19 GMT
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
	-	`sha256:f8dfff4e5933175b22ab9aba54b77b3bf8a40721fc8286071aa1915713c17dcf`  
		Last Modified: Fri, 22 Sep 2017 12:30:01 GMT  
		Size: 5.8 MB (5848859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd41eef90ba9b726adac2cc907a01fd026b7b53f4bebda793796c0b3a3234a0`  
		Last Modified: Fri, 22 Sep 2017 12:29:59 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b75772795fb6cbfa179516034fc8f9fa9030d27cb8626fe06871a2d4252926b`  
		Last Modified: Fri, 22 Sep 2017 12:29:59 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; 386

```console
$ docker pull redis@sha256:7d3455033cd18d27fef809c4de11e9a80c27e1b05d0b15266f4c5e6754af2b35
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36452883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eef7014b81fa75e270b0121ea9eca2c09cf034d743e326d54028aff6a061ec63`
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
# Fri, 22 Sep 2017 12:16:23 GMT
ENV REDIS_VERSION=3.2.11
# Fri, 22 Sep 2017 12:16:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Fri, 22 Sep 2017 12:16:23 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Fri, 22 Sep 2017 12:17:38 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 12:17:38 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 12:17:38 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 12:17:38 GMT
WORKDIR /data
# Fri, 22 Sep 2017 12:17:39 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 12:17:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 12:17:39 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 12:17:39 GMT
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
	-	`sha256:9e00e054756501f26b59d33ca71a2f53c3b9bfc41bfcbd59b33d52bcf40eb8f9`  
		Last Modified: Fri, 22 Sep 2017 12:19:29 GMT  
		Size: 5.2 MB (5225357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1395c560f4c2f775b99bd5a8b989e3286c6722ebdcc4f4223eea0aa01692647`  
		Last Modified: Fri, 22 Sep 2017 12:19:29 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d226140a0fe50542cc56bb1b8dbe509043c71f83a11aab699ecc4fe95fe5c1c0`  
		Last Modified: Fri, 22 Sep 2017 12:19:29 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; ppc64le

```console
$ docker pull redis@sha256:560111869bd438282dc087f191ec8d24de20afa7ef75d4d2b394725605613475
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36249745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cee785bcc76bda4b870f28b271d5cc225ad03559ddd5538e7320253161a9cf5`
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
# Fri, 22 Sep 2017 05:35:18 GMT
ENV REDIS_VERSION=3.2.11
# Fri, 22 Sep 2017 05:35:19 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Fri, 22 Sep 2017 05:35:21 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Fri, 22 Sep 2017 05:38:43 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 05:38:48 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 05:38:50 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 05:38:52 GMT
WORKDIR /data
# Fri, 22 Sep 2017 05:38:54 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 05:38:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 05:38:57 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 05:39:00 GMT
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
	-	`sha256:679d5f9da9f8a9c580cffb19748ed3e189ff84ece1fee41b3e5b2b5e6a2c6692`  
		Last Modified: Fri, 22 Sep 2017 05:43:04 GMT  
		Size: 6.0 MB (5990260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:158a9927c17d8ffd34ad2e28c3ca63522b534823256f3704e341b0eb8fbd4810`  
		Last Modified: Fri, 22 Sep 2017 05:43:02 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5861da80d2b9c04c7a0a21d136564fd085c6464313d3b75cbebeddbb942fb2e3`  
		Last Modified: Fri, 22 Sep 2017 05:43:02 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3` - linux; s390x

```console
$ docker pull redis@sha256:2f781fe29ce74c752717ff6f206018d4d7ea4a6f2c1f73bbfa07c0ac1c83f253
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37438612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd2b785cadc18483ba29217da4063397263224142d6ee4f38c67dd6fcfe022fa`
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
# Fri, 22 Sep 2017 05:24:25 GMT
ENV REDIS_VERSION=3.2.11
# Fri, 22 Sep 2017 05:24:25 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Fri, 22 Sep 2017 05:24:25 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Fri, 22 Sep 2017 05:24:58 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 05:24:58 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 05:24:59 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 05:24:59 GMT
WORKDIR /data
# Fri, 22 Sep 2017 05:24:59 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 05:24:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 05:24:59 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 05:25:00 GMT
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
	-	`sha256:2eea7d31a0d2c66166a18160110de2b4f8c7f82ab345afc09708accf164629e3`  
		Last Modified: Fri, 22 Sep 2017 05:26:03 GMT  
		Size: 6.2 MB (6175012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a825df25005630a55b936ca60f7e686f9ebed814832acfc16238ea0cae94975a`  
		Last Modified: Fri, 22 Sep 2017 05:26:01 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f50aa96cdfd2545d22922dde0a8d6816513626a8c0ccbfc1f7612a7264289c6`  
		Last Modified: Fri, 22 Sep 2017 05:26:02 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2`

```console
$ docker pull redis@sha256:9297f0699a9d459c80f20cc45ad39df2a1a6d8c50bd3503bd4e8303dbd133372
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:3.2` - linux; amd64

```console
$ docker pull redis@sha256:8d5d57da0ef2aa5346bb24bda675f230872dfcc55a584979b721a897769d434e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36844456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a3b4efd4801ded81054f15a3dd39f068e593eef593052e0c3d4defa4abe3ac7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 03:32:28 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 19 Sep 2017 03:32:28 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 03:32:56 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 21 Sep 2017 20:49:32 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 21 Sep 2017 20:49:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 21 Sep 2017 20:49:33 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 21 Sep 2017 20:50:25 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 21 Sep 2017 20:50:26 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Sep 2017 20:50:26 GMT
VOLUME [/data]
# Thu, 21 Sep 2017 20:50:26 GMT
WORKDIR /data
# Thu, 21 Sep 2017 20:50:26 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 21 Sep 2017 20:50:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Sep 2017 20:50:27 GMT
EXPOSE 6379/tcp
# Thu, 21 Sep 2017 20:50:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9835c278527bc23a93cf0cbfae60655ad5cf9f26806935a1bd0da57d14c751`  
		Last Modified: Tue, 19 Sep 2017 03:38:55 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a0d1212c38ec976de047e36c9b0f19d8427333c4db7d45d403f5839ec1c8fb`  
		Last Modified: Tue, 19 Sep 2017 03:38:55 GMT  
		Size: 981.7 KB (981718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fcd2e8bf8be8f450648982cd418fee6a80bb99fd35c285b4137f703271bf114`  
		Last Modified: Thu, 21 Sep 2017 21:01:16 GMT  
		Size: 5.7 MB (5747013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67695bc491d84b741a7eddea489bf7325ff54e7f52fc50b8397d8fb2f8251ceb`  
		Last Modified: Thu, 21 Sep 2017 21:01:15 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df02671e1fb24c1710c9e2dc8f2fb97941f5825f915005aa30223c3a651dd700`  
		Last Modified: Thu, 21 Sep 2017 21:01:15 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; arm variant v7

```console
$ docker pull redis@sha256:6054aadf94eff6621f063bf478b5cc55604ab4e3162ef67a5c02c30ece0609eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 MB (32714298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d8787bed5cc0b52c2f422c5d65c7d0e22ce70f1d4bde0b843af44c55e79e503`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:46 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Sat, 09 Sep 2017 01:40:47 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 03:05:55 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 19 Sep 2017 03:05:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 03:11:04 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 22 Sep 2017 00:27:56 GMT
ENV REDIS_VERSION=3.2.11
# Fri, 22 Sep 2017 00:27:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Fri, 22 Sep 2017 00:27:58 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Fri, 22 Sep 2017 00:34:00 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 00:34:03 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 00:34:04 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 00:34:04 GMT
WORKDIR /data
# Fri, 22 Sep 2017 00:34:05 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 00:34:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 00:34:08 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 00:34:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5ec7d30a9a8c4943b1650d24c5857d17b69f0e4bb62241d56894484ff9315547`  
		Last Modified: Sat, 09 Sep 2017 01:51:42 GMT  
		Size: 26.3 MB (26279463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71aa78af1dc05c680523e0e793af7351fde77d37b56e6d4c2be5d45c69e6bcc7`  
		Last Modified: Tue, 19 Sep 2017 03:29:47 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f17d61ada0d583be49aa7a57f8c5362ffd1d02d581c9ace2e5262ec3166a4a`  
		Last Modified: Tue, 19 Sep 2017 03:29:47 GMT  
		Size: 956.3 KB (956290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e05a70f1711c68d47675aa06eef74da6c3a37f5818d8d50252e7a755bf174aa`  
		Last Modified: Fri, 22 Sep 2017 00:39:47 GMT  
		Size: 5.5 MB (5475957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5ffef064e1f487e066614dae4907013cf6eb03fa3c958d78f0d83f1f6d0bd47`  
		Last Modified: Fri, 22 Sep 2017 00:39:46 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbdd4e9a84eb86ca51349702e766f60de16a07a147237ff8522dcb1b5886dcfa`  
		Last Modified: Fri, 22 Sep 2017 00:39:45 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:d52857ddc867207a6415b9ca2e40ed2b892d0ac419220ad5940081fee3940313
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34280569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f8de959680b33be969913cf28db9dcb97be68cb574ff6d29ba5df0480d02156`
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
# Fri, 22 Sep 2017 12:25:36 GMT
ENV REDIS_VERSION=3.2.11
# Fri, 22 Sep 2017 12:25:36 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Fri, 22 Sep 2017 12:25:37 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Fri, 22 Sep 2017 12:27:13 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 12:27:15 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 12:27:15 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 12:27:16 GMT
WORKDIR /data
# Fri, 22 Sep 2017 12:27:17 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 12:27:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 12:27:18 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 12:27:19 GMT
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
	-	`sha256:f8dfff4e5933175b22ab9aba54b77b3bf8a40721fc8286071aa1915713c17dcf`  
		Last Modified: Fri, 22 Sep 2017 12:30:01 GMT  
		Size: 5.8 MB (5848859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd41eef90ba9b726adac2cc907a01fd026b7b53f4bebda793796c0b3a3234a0`  
		Last Modified: Fri, 22 Sep 2017 12:29:59 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b75772795fb6cbfa179516034fc8f9fa9030d27cb8626fe06871a2d4252926b`  
		Last Modified: Fri, 22 Sep 2017 12:29:59 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; 386

```console
$ docker pull redis@sha256:7d3455033cd18d27fef809c4de11e9a80c27e1b05d0b15266f4c5e6754af2b35
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36452883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eef7014b81fa75e270b0121ea9eca2c09cf034d743e326d54028aff6a061ec63`
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
# Fri, 22 Sep 2017 12:16:23 GMT
ENV REDIS_VERSION=3.2.11
# Fri, 22 Sep 2017 12:16:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Fri, 22 Sep 2017 12:16:23 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Fri, 22 Sep 2017 12:17:38 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 12:17:38 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 12:17:38 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 12:17:38 GMT
WORKDIR /data
# Fri, 22 Sep 2017 12:17:39 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 12:17:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 12:17:39 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 12:17:39 GMT
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
	-	`sha256:9e00e054756501f26b59d33ca71a2f53c3b9bfc41bfcbd59b33d52bcf40eb8f9`  
		Last Modified: Fri, 22 Sep 2017 12:19:29 GMT  
		Size: 5.2 MB (5225357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1395c560f4c2f775b99bd5a8b989e3286c6722ebdcc4f4223eea0aa01692647`  
		Last Modified: Fri, 22 Sep 2017 12:19:29 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d226140a0fe50542cc56bb1b8dbe509043c71f83a11aab699ecc4fe95fe5c1c0`  
		Last Modified: Fri, 22 Sep 2017 12:19:29 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; ppc64le

```console
$ docker pull redis@sha256:560111869bd438282dc087f191ec8d24de20afa7ef75d4d2b394725605613475
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36249745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cee785bcc76bda4b870f28b271d5cc225ad03559ddd5538e7320253161a9cf5`
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
# Fri, 22 Sep 2017 05:35:18 GMT
ENV REDIS_VERSION=3.2.11
# Fri, 22 Sep 2017 05:35:19 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Fri, 22 Sep 2017 05:35:21 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Fri, 22 Sep 2017 05:38:43 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 05:38:48 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 05:38:50 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 05:38:52 GMT
WORKDIR /data
# Fri, 22 Sep 2017 05:38:54 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 05:38:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 05:38:57 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 05:39:00 GMT
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
	-	`sha256:679d5f9da9f8a9c580cffb19748ed3e189ff84ece1fee41b3e5b2b5e6a2c6692`  
		Last Modified: Fri, 22 Sep 2017 05:43:04 GMT  
		Size: 6.0 MB (5990260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:158a9927c17d8ffd34ad2e28c3ca63522b534823256f3704e341b0eb8fbd4810`  
		Last Modified: Fri, 22 Sep 2017 05:43:02 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5861da80d2b9c04c7a0a21d136564fd085c6464313d3b75cbebeddbb942fb2e3`  
		Last Modified: Fri, 22 Sep 2017 05:43:02 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2` - linux; s390x

```console
$ docker pull redis@sha256:2f781fe29ce74c752717ff6f206018d4d7ea4a6f2c1f73bbfa07c0ac1c83f253
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37438612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd2b785cadc18483ba29217da4063397263224142d6ee4f38c67dd6fcfe022fa`
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
# Fri, 22 Sep 2017 05:24:25 GMT
ENV REDIS_VERSION=3.2.11
# Fri, 22 Sep 2017 05:24:25 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Fri, 22 Sep 2017 05:24:25 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Fri, 22 Sep 2017 05:24:58 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 05:24:58 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 05:24:59 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 05:24:59 GMT
WORKDIR /data
# Fri, 22 Sep 2017 05:24:59 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 05:24:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 05:24:59 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 05:25:00 GMT
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
	-	`sha256:2eea7d31a0d2c66166a18160110de2b4f8c7f82ab345afc09708accf164629e3`  
		Last Modified: Fri, 22 Sep 2017 05:26:03 GMT  
		Size: 6.2 MB (6175012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a825df25005630a55b936ca60f7e686f9ebed814832acfc16238ea0cae94975a`  
		Last Modified: Fri, 22 Sep 2017 05:26:01 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f50aa96cdfd2545d22922dde0a8d6816513626a8c0ccbfc1f7612a7264289c6`  
		Last Modified: Fri, 22 Sep 2017 05:26:02 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.11`

```console
$ docker pull redis@sha256:9297f0699a9d459c80f20cc45ad39df2a1a6d8c50bd3503bd4e8303dbd133372
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:3.2.11` - linux; amd64

```console
$ docker pull redis@sha256:8d5d57da0ef2aa5346bb24bda675f230872dfcc55a584979b721a897769d434e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36844456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a3b4efd4801ded81054f15a3dd39f068e593eef593052e0c3d4defa4abe3ac7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 03:32:28 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 19 Sep 2017 03:32:28 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 03:32:56 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 21 Sep 2017 20:49:32 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 21 Sep 2017 20:49:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 21 Sep 2017 20:49:33 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 21 Sep 2017 20:50:25 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 21 Sep 2017 20:50:26 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Sep 2017 20:50:26 GMT
VOLUME [/data]
# Thu, 21 Sep 2017 20:50:26 GMT
WORKDIR /data
# Thu, 21 Sep 2017 20:50:26 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 21 Sep 2017 20:50:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Sep 2017 20:50:27 GMT
EXPOSE 6379/tcp
# Thu, 21 Sep 2017 20:50:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9835c278527bc23a93cf0cbfae60655ad5cf9f26806935a1bd0da57d14c751`  
		Last Modified: Tue, 19 Sep 2017 03:38:55 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a0d1212c38ec976de047e36c9b0f19d8427333c4db7d45d403f5839ec1c8fb`  
		Last Modified: Tue, 19 Sep 2017 03:38:55 GMT  
		Size: 981.7 KB (981718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fcd2e8bf8be8f450648982cd418fee6a80bb99fd35c285b4137f703271bf114`  
		Last Modified: Thu, 21 Sep 2017 21:01:16 GMT  
		Size: 5.7 MB (5747013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67695bc491d84b741a7eddea489bf7325ff54e7f52fc50b8397d8fb2f8251ceb`  
		Last Modified: Thu, 21 Sep 2017 21:01:15 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df02671e1fb24c1710c9e2dc8f2fb97941f5825f915005aa30223c3a651dd700`  
		Last Modified: Thu, 21 Sep 2017 21:01:15 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11` - linux; arm variant v7

```console
$ docker pull redis@sha256:6054aadf94eff6621f063bf478b5cc55604ab4e3162ef67a5c02c30ece0609eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 MB (32714298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d8787bed5cc0b52c2f422c5d65c7d0e22ce70f1d4bde0b843af44c55e79e503`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:46 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Sat, 09 Sep 2017 01:40:47 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 03:05:55 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 19 Sep 2017 03:05:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 03:11:04 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 22 Sep 2017 00:27:56 GMT
ENV REDIS_VERSION=3.2.11
# Fri, 22 Sep 2017 00:27:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Fri, 22 Sep 2017 00:27:58 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Fri, 22 Sep 2017 00:34:00 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 00:34:03 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 00:34:04 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 00:34:04 GMT
WORKDIR /data
# Fri, 22 Sep 2017 00:34:05 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 00:34:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 00:34:08 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 00:34:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5ec7d30a9a8c4943b1650d24c5857d17b69f0e4bb62241d56894484ff9315547`  
		Last Modified: Sat, 09 Sep 2017 01:51:42 GMT  
		Size: 26.3 MB (26279463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71aa78af1dc05c680523e0e793af7351fde77d37b56e6d4c2be5d45c69e6bcc7`  
		Last Modified: Tue, 19 Sep 2017 03:29:47 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f17d61ada0d583be49aa7a57f8c5362ffd1d02d581c9ace2e5262ec3166a4a`  
		Last Modified: Tue, 19 Sep 2017 03:29:47 GMT  
		Size: 956.3 KB (956290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e05a70f1711c68d47675aa06eef74da6c3a37f5818d8d50252e7a755bf174aa`  
		Last Modified: Fri, 22 Sep 2017 00:39:47 GMT  
		Size: 5.5 MB (5475957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5ffef064e1f487e066614dae4907013cf6eb03fa3c958d78f0d83f1f6d0bd47`  
		Last Modified: Fri, 22 Sep 2017 00:39:46 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbdd4e9a84eb86ca51349702e766f60de16a07a147237ff8522dcb1b5886dcfa`  
		Last Modified: Fri, 22 Sep 2017 00:39:45 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:d52857ddc867207a6415b9ca2e40ed2b892d0ac419220ad5940081fee3940313
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34280569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f8de959680b33be969913cf28db9dcb97be68cb574ff6d29ba5df0480d02156`
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
# Fri, 22 Sep 2017 12:25:36 GMT
ENV REDIS_VERSION=3.2.11
# Fri, 22 Sep 2017 12:25:36 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Fri, 22 Sep 2017 12:25:37 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Fri, 22 Sep 2017 12:27:13 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 12:27:15 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 12:27:15 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 12:27:16 GMT
WORKDIR /data
# Fri, 22 Sep 2017 12:27:17 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 12:27:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 12:27:18 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 12:27:19 GMT
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
	-	`sha256:f8dfff4e5933175b22ab9aba54b77b3bf8a40721fc8286071aa1915713c17dcf`  
		Last Modified: Fri, 22 Sep 2017 12:30:01 GMT  
		Size: 5.8 MB (5848859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd41eef90ba9b726adac2cc907a01fd026b7b53f4bebda793796c0b3a3234a0`  
		Last Modified: Fri, 22 Sep 2017 12:29:59 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b75772795fb6cbfa179516034fc8f9fa9030d27cb8626fe06871a2d4252926b`  
		Last Modified: Fri, 22 Sep 2017 12:29:59 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11` - linux; 386

```console
$ docker pull redis@sha256:7d3455033cd18d27fef809c4de11e9a80c27e1b05d0b15266f4c5e6754af2b35
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36452883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eef7014b81fa75e270b0121ea9eca2c09cf034d743e326d54028aff6a061ec63`
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
# Fri, 22 Sep 2017 12:16:23 GMT
ENV REDIS_VERSION=3.2.11
# Fri, 22 Sep 2017 12:16:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Fri, 22 Sep 2017 12:16:23 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Fri, 22 Sep 2017 12:17:38 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 12:17:38 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 12:17:38 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 12:17:38 GMT
WORKDIR /data
# Fri, 22 Sep 2017 12:17:39 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 12:17:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 12:17:39 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 12:17:39 GMT
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
	-	`sha256:9e00e054756501f26b59d33ca71a2f53c3b9bfc41bfcbd59b33d52bcf40eb8f9`  
		Last Modified: Fri, 22 Sep 2017 12:19:29 GMT  
		Size: 5.2 MB (5225357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1395c560f4c2f775b99bd5a8b989e3286c6722ebdcc4f4223eea0aa01692647`  
		Last Modified: Fri, 22 Sep 2017 12:19:29 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d226140a0fe50542cc56bb1b8dbe509043c71f83a11aab699ecc4fe95fe5c1c0`  
		Last Modified: Fri, 22 Sep 2017 12:19:29 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11` - linux; ppc64le

```console
$ docker pull redis@sha256:560111869bd438282dc087f191ec8d24de20afa7ef75d4d2b394725605613475
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36249745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cee785bcc76bda4b870f28b271d5cc225ad03559ddd5538e7320253161a9cf5`
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
# Fri, 22 Sep 2017 05:35:18 GMT
ENV REDIS_VERSION=3.2.11
# Fri, 22 Sep 2017 05:35:19 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Fri, 22 Sep 2017 05:35:21 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Fri, 22 Sep 2017 05:38:43 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 05:38:48 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 05:38:50 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 05:38:52 GMT
WORKDIR /data
# Fri, 22 Sep 2017 05:38:54 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 05:38:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 05:38:57 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 05:39:00 GMT
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
	-	`sha256:679d5f9da9f8a9c580cffb19748ed3e189ff84ece1fee41b3e5b2b5e6a2c6692`  
		Last Modified: Fri, 22 Sep 2017 05:43:04 GMT  
		Size: 6.0 MB (5990260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:158a9927c17d8ffd34ad2e28c3ca63522b534823256f3704e341b0eb8fbd4810`  
		Last Modified: Fri, 22 Sep 2017 05:43:02 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5861da80d2b9c04c7a0a21d136564fd085c6464313d3b75cbebeddbb942fb2e3`  
		Last Modified: Fri, 22 Sep 2017 05:43:02 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:3.2.11` - linux; s390x

```console
$ docker pull redis@sha256:2f781fe29ce74c752717ff6f206018d4d7ea4a6f2c1f73bbfa07c0ac1c83f253
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37438612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd2b785cadc18483ba29217da4063397263224142d6ee4f38c67dd6fcfe022fa`
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
# Fri, 22 Sep 2017 05:24:25 GMT
ENV REDIS_VERSION=3.2.11
# Fri, 22 Sep 2017 05:24:25 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Fri, 22 Sep 2017 05:24:25 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Fri, 22 Sep 2017 05:24:58 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 05:24:58 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 05:24:59 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 05:24:59 GMT
WORKDIR /data
# Fri, 22 Sep 2017 05:24:59 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 05:24:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 05:24:59 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 05:25:00 GMT
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
	-	`sha256:2eea7d31a0d2c66166a18160110de2b4f8c7f82ab345afc09708accf164629e3`  
		Last Modified: Fri, 22 Sep 2017 05:26:03 GMT  
		Size: 6.2 MB (6175012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a825df25005630a55b936ca60f7e686f9ebed814832acfc16238ea0cae94975a`  
		Last Modified: Fri, 22 Sep 2017 05:26:01 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f50aa96cdfd2545d22922dde0a8d6816513626a8c0ccbfc1f7612a7264289c6`  
		Last Modified: Fri, 22 Sep 2017 05:26:02 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.11-32bit`

```console
$ docker pull redis@sha256:30001d7ea93512d7600a3c1a1fd44e16ae4d7d6d52f5d86ff10ad888d22ff028
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3.2.11-32bit` - linux; amd64

```console
$ docker pull redis@sha256:f6967c9442a62743b1509e40b8060201b0b46658eed24ab7533f0a056f52beab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 MB (40706517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f23fc3a2cce2f420932558cba3358217ce08af2fd8224849e0ab0d700c72088`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 03:32:28 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 19 Sep 2017 03:32:28 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 03:32:56 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 21 Sep 2017 20:49:32 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 21 Sep 2017 20:49:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 21 Sep 2017 20:49:33 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 21 Sep 2017 20:50:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Sep 2017 20:51:53 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 21 Sep 2017 20:51:54 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Sep 2017 20:51:54 GMT
VOLUME [/data]
# Thu, 21 Sep 2017 20:51:54 GMT
WORKDIR /data
# Thu, 21 Sep 2017 20:51:54 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 21 Sep 2017 20:51:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Sep 2017 20:51:55 GMT
EXPOSE 6379/tcp
# Thu, 21 Sep 2017 20:51:55 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9835c278527bc23a93cf0cbfae60655ad5cf9f26806935a1bd0da57d14c751`  
		Last Modified: Tue, 19 Sep 2017 03:38:55 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a0d1212c38ec976de047e36c9b0f19d8427333c4db7d45d403f5839ec1c8fb`  
		Last Modified: Tue, 19 Sep 2017 03:38:55 GMT  
		Size: 981.7 KB (981718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040d89e6787c261b175b938030c6f91dfbc6a30925af7537f6593a7dfdef715d`  
		Last Modified: Thu, 21 Sep 2017 21:01:54 GMT  
		Size: 4.4 MB (4378583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba63276bcebefa5fbe393889e4d214155b72144394ff9b2fd5c5d3083902129`  
		Last Modified: Thu, 21 Sep 2017 21:01:50 GMT  
		Size: 5.2 MB (5230486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad62cb2bd38fd75cedc8a9e5cab1aa4b2eb6ed2031736453a94f9bd2b1401b7`  
		Last Modified: Thu, 21 Sep 2017 21:01:49 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69c03b280b8a50ad371e0e889b975eb836bac54a7f3c8455026efe029f3b7304`  
		Last Modified: Thu, 21 Sep 2017 21:01:50 GMT  
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
$ docker pull redis@sha256:30001d7ea93512d7600a3c1a1fd44e16ae4d7d6d52f5d86ff10ad888d22ff028
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3.2-32bit` - linux; amd64

```console
$ docker pull redis@sha256:f6967c9442a62743b1509e40b8060201b0b46658eed24ab7533f0a056f52beab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 MB (40706517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f23fc3a2cce2f420932558cba3358217ce08af2fd8224849e0ab0d700c72088`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 03:32:28 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 19 Sep 2017 03:32:28 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 03:32:56 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 21 Sep 2017 20:49:32 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 21 Sep 2017 20:49:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 21 Sep 2017 20:49:33 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 21 Sep 2017 20:50:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Sep 2017 20:51:53 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 21 Sep 2017 20:51:54 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Sep 2017 20:51:54 GMT
VOLUME [/data]
# Thu, 21 Sep 2017 20:51:54 GMT
WORKDIR /data
# Thu, 21 Sep 2017 20:51:54 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 21 Sep 2017 20:51:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Sep 2017 20:51:55 GMT
EXPOSE 6379/tcp
# Thu, 21 Sep 2017 20:51:55 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9835c278527bc23a93cf0cbfae60655ad5cf9f26806935a1bd0da57d14c751`  
		Last Modified: Tue, 19 Sep 2017 03:38:55 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a0d1212c38ec976de047e36c9b0f19d8427333c4db7d45d403f5839ec1c8fb`  
		Last Modified: Tue, 19 Sep 2017 03:38:55 GMT  
		Size: 981.7 KB (981718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040d89e6787c261b175b938030c6f91dfbc6a30925af7537f6593a7dfdef715d`  
		Last Modified: Thu, 21 Sep 2017 21:01:54 GMT  
		Size: 4.4 MB (4378583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba63276bcebefa5fbe393889e4d214155b72144394ff9b2fd5c5d3083902129`  
		Last Modified: Thu, 21 Sep 2017 21:01:50 GMT  
		Size: 5.2 MB (5230486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad62cb2bd38fd75cedc8a9e5cab1aa4b2eb6ed2031736453a94f9bd2b1401b7`  
		Last Modified: Thu, 21 Sep 2017 21:01:49 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69c03b280b8a50ad371e0e889b975eb836bac54a7f3c8455026efe029f3b7304`  
		Last Modified: Thu, 21 Sep 2017 21:01:50 GMT  
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
$ docker pull redis@sha256:f2df50d5765831f165cb13782ebe4de44a5fca9fc866329b733c794c88a727bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

```console
$ docker pull redis@sha256:cd99d40bf98f799cae11f329e03429abc6fde25cbdadf1c49e950f5a20ec65e4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (42967333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:545f38ab931c158a8f07af7c0865d72964c67f6021e45a8719df5c69f3d932ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 03:32:28 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 19 Sep 2017 03:32:28 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 03:32:56 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 21 Sep 2017 20:55:13 GMT
ENV REDIS_VERSION=4.0.2
# Thu, 21 Sep 2017 20:55:13 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Thu, 21 Sep 2017 20:55:13 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Thu, 21 Sep 2017 20:56:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Sep 2017 20:57:53 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 21 Sep 2017 21:00:02 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Sep 2017 21:00:02 GMT
VOLUME [/data]
# Thu, 21 Sep 2017 21:00:03 GMT
WORKDIR /data
# Thu, 21 Sep 2017 21:00:03 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 21 Sep 2017 21:00:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Sep 2017 21:00:03 GMT
EXPOSE 6379/tcp
# Thu, 21 Sep 2017 21:00:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9835c278527bc23a93cf0cbfae60655ad5cf9f26806935a1bd0da57d14c751`  
		Last Modified: Tue, 19 Sep 2017 03:38:55 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a0d1212c38ec976de047e36c9b0f19d8427333c4db7d45d403f5839ec1c8fb`  
		Last Modified: Tue, 19 Sep 2017 03:38:55 GMT  
		Size: 981.7 KB (981718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80b86888209717a9a8d9c2db9b10e831891ad5a6217d79bb7c2edb17b08b19d9`  
		Last Modified: Thu, 21 Sep 2017 21:03:04 GMT  
		Size: 4.4 MB (4378575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360e79f860e49aa7e2b30a2f69f7bdebee6e10d9d85103b3c42c2773b004f1f9`  
		Last Modified: Thu, 21 Sep 2017 21:03:05 GMT  
		Size: 7.5 MB (7491307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5348eba18a840de4976ac480a7835efc2a0100be24c2cf07b8a075b86a0b7de3`  
		Last Modified: Thu, 21 Sep 2017 21:03:04 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66a8779e2c6d91537122a385da8114266815e0ab988eb5db358c617e10e4082`  
		Last Modified: Thu, 21 Sep 2017 21:03:04 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-32bit`

```console
$ docker pull redis@sha256:30001d7ea93512d7600a3c1a1fd44e16ae4d7d6d52f5d86ff10ad888d22ff028
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3-32bit` - linux; amd64

```console
$ docker pull redis@sha256:f6967c9442a62743b1509e40b8060201b0b46658eed24ab7533f0a056f52beab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 MB (40706517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f23fc3a2cce2f420932558cba3358217ce08af2fd8224849e0ab0d700c72088`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 03:32:28 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 19 Sep 2017 03:32:28 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 03:32:56 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 21 Sep 2017 20:49:32 GMT
ENV REDIS_VERSION=3.2.11
# Thu, 21 Sep 2017 20:49:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.11.tar.gz
# Thu, 21 Sep 2017 20:49:33 GMT
ENV REDIS_DOWNLOAD_SHA=31ae927cab09f90c9ca5954aab7aeecc3bb4da6087d3d12ba0a929ceb54081b5
# Thu, 21 Sep 2017 20:50:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Sep 2017 20:51:53 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 21 Sep 2017 20:51:54 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Sep 2017 20:51:54 GMT
VOLUME [/data]
# Thu, 21 Sep 2017 20:51:54 GMT
WORKDIR /data
# Thu, 21 Sep 2017 20:51:54 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 21 Sep 2017 20:51:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Sep 2017 20:51:55 GMT
EXPOSE 6379/tcp
# Thu, 21 Sep 2017 20:51:55 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9835c278527bc23a93cf0cbfae60655ad5cf9f26806935a1bd0da57d14c751`  
		Last Modified: Tue, 19 Sep 2017 03:38:55 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a0d1212c38ec976de047e36c9b0f19d8427333c4db7d45d403f5839ec1c8fb`  
		Last Modified: Tue, 19 Sep 2017 03:38:55 GMT  
		Size: 981.7 KB (981718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040d89e6787c261b175b938030c6f91dfbc6a30925af7537f6593a7dfdef715d`  
		Last Modified: Thu, 21 Sep 2017 21:01:54 GMT  
		Size: 4.4 MB (4378583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba63276bcebefa5fbe393889e4d214155b72144394ff9b2fd5c5d3083902129`  
		Last Modified: Thu, 21 Sep 2017 21:01:50 GMT  
		Size: 5.2 MB (5230486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad62cb2bd38fd75cedc8a9e5cab1aa4b2eb6ed2031736453a94f9bd2b1401b7`  
		Last Modified: Thu, 21 Sep 2017 21:01:49 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69c03b280b8a50ad371e0e889b975eb836bac54a7f3c8455026efe029f3b7304`  
		Last Modified: Thu, 21 Sep 2017 21:01:50 GMT  
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
$ docker pull redis@sha256:095d779a152df521eda4ae8fc6b7251ef60e02974d8e201812173267b019923d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:4` - linux; amd64

```console
$ docker pull redis@sha256:ef728e78b63de0c44ddb2d3cec482816293deaee013f8f3719260095a79c80bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39372240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6dddb991dfa5f8e49b00d2d4ff1e46e6593101ace99cca0febf287cadc4febf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 03:32:28 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 19 Sep 2017 03:32:28 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 03:32:56 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 21 Sep 2017 20:55:13 GMT
ENV REDIS_VERSION=4.0.2
# Thu, 21 Sep 2017 20:55:13 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Thu, 21 Sep 2017 20:55:13 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Thu, 21 Sep 2017 20:56:08 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 21 Sep 2017 20:56:09 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Sep 2017 20:56:09 GMT
VOLUME [/data]
# Thu, 21 Sep 2017 20:56:09 GMT
WORKDIR /data
# Thu, 21 Sep 2017 20:56:10 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 21 Sep 2017 20:56:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Sep 2017 20:56:10 GMT
EXPOSE 6379/tcp
# Thu, 21 Sep 2017 20:56:10 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9835c278527bc23a93cf0cbfae60655ad5cf9f26806935a1bd0da57d14c751`  
		Last Modified: Tue, 19 Sep 2017 03:38:55 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a0d1212c38ec976de047e36c9b0f19d8427333c4db7d45d403f5839ec1c8fb`  
		Last Modified: Tue, 19 Sep 2017 03:38:55 GMT  
		Size: 981.7 KB (981718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43be9e9f0fb9e865d48a8b5e54cd5560e70b8654b2079c296584bb831ed95270`  
		Last Modified: Thu, 21 Sep 2017 21:02:37 GMT  
		Size: 8.3 MB (8274798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1bca8e532ecd790280384459b0f38a2afcb3e8b34ad2f44f74fc5f7fa1afcb8`  
		Last Modified: Thu, 21 Sep 2017 21:02:35 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:382eae952932be17e3e19f293a03dcd46997be14270fb84563700f964dc6238a`  
		Last Modified: Thu, 21 Sep 2017 21:02:35 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm variant v7

```console
$ docker pull redis@sha256:3e1cf827dc634d563f6827a02cacbd8d9792e18b5e4372ae7d25e4350ddb84b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35156734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76cb3a3b1cbd131f2210f3089a7bbcb9ff9f28e4cb323f8e6dfa57dec9ac938f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:46 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Sat, 09 Sep 2017 01:40:47 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 03:05:55 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 19 Sep 2017 03:05:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 03:11:04 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 22 Sep 2017 00:34:39 GMT
ENV REDIS_VERSION=4.0.2
# Fri, 22 Sep 2017 00:34:41 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Fri, 22 Sep 2017 00:34:41 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Fri, 22 Sep 2017 00:38:58 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 00:39:00 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 00:39:01 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 00:39:02 GMT
WORKDIR /data
# Fri, 22 Sep 2017 00:39:03 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 00:39:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 00:39:05 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 00:39:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5ec7d30a9a8c4943b1650d24c5857d17b69f0e4bb62241d56894484ff9315547`  
		Last Modified: Sat, 09 Sep 2017 01:51:42 GMT  
		Size: 26.3 MB (26279463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71aa78af1dc05c680523e0e793af7351fde77d37b56e6d4c2be5d45c69e6bcc7`  
		Last Modified: Tue, 19 Sep 2017 03:29:47 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f17d61ada0d583be49aa7a57f8c5362ffd1d02d581c9ace2e5262ec3166a4a`  
		Last Modified: Tue, 19 Sep 2017 03:29:47 GMT  
		Size: 956.3 KB (956290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87edc98a3525491b3c726025f682e807b9ff0704a98e9ab46854334316653c0d`  
		Last Modified: Fri, 22 Sep 2017 00:40:24 GMT  
		Size: 7.9 MB (7918395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e9f4d6ee11a1c6f937079b1cdf7b6007a2c2701d9c1f1d82d74dd56429d9b8`  
		Last Modified: Fri, 22 Sep 2017 00:40:20 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67949765e580a2359587430bf1600557980a247bf73adacf07817fcabf8cbb32`  
		Last Modified: Fri, 22 Sep 2017 00:40:20 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:4845140105737ed581dba4f744be0c2556ae2ba8b0d18dc3f41ba67b62e11151
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36847619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92f96525c124fae5046d5246bff2105ae6681951b1007646019ef88b4f353209`
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
# Fri, 22 Sep 2017 12:27:43 GMT
ENV REDIS_VERSION=4.0.2
# Fri, 22 Sep 2017 12:27:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Fri, 22 Sep 2017 12:27:44 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Fri, 22 Sep 2017 12:29:26 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 12:29:27 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 12:29:28 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 12:29:29 GMT
WORKDIR /data
# Fri, 22 Sep 2017 12:29:30 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 12:29:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 12:29:31 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 12:29:32 GMT
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
	-	`sha256:ac15723d8d0fba9bf5664cae62333fa1c0b43234dab991cbd4a6911a2da8dcf9`  
		Last Modified: Fri, 22 Sep 2017 12:30:36 GMT  
		Size: 8.4 MB (8415910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f73a338123506c454f23e0fe39482284d2bbf48940142bd7e6671803184703`  
		Last Modified: Fri, 22 Sep 2017 12:30:33 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:054926106ae8a2807c4f3f95d762998d2f02e1215aca57faa64e1b097e212581`  
		Last Modified: Fri, 22 Sep 2017 12:30:33 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; 386

```console
$ docker pull redis@sha256:d9806ceb97cd055a4bf777964380bada1ae75149aad9d4e871b89b351327241b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38713920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0136124221c70aabac4bdd8401e208e11674aeafa4d09c2e9432d5757189d4fc`
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
# Fri, 22 Sep 2017 12:17:59 GMT
ENV REDIS_VERSION=4.0.2
# Fri, 22 Sep 2017 12:18:00 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Fri, 22 Sep 2017 12:18:00 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Fri, 22 Sep 2017 12:19:07 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 12:19:08 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 12:19:08 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 12:19:08 GMT
WORKDIR /data
# Fri, 22 Sep 2017 12:19:09 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 12:19:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 12:19:09 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 12:19:09 GMT
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
	-	`sha256:11a813b99168123bcb44e3ed6af24a948e85edd544ab04b0493a87406b768c1d`  
		Last Modified: Fri, 22 Sep 2017 12:19:50 GMT  
		Size: 7.5 MB (7486393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc41c7286101a3b1f93e839c6a77c29a5eec6a4142546fa0a3cd81cd3a94a40`  
		Last Modified: Fri, 22 Sep 2017 12:19:49 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19c157457e68d1a66980eb50e88990add470e9c4f945d6d33ad9ca80e038cf1`  
		Last Modified: Fri, 22 Sep 2017 12:19:48 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; ppc64le

```console
$ docker pull redis@sha256:acda5a62a21c587804f8878e6b01762f808f7144b223d7b205cf8b17e98ed063
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.9 MB (38894470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba7bf7a80d6d707077001db34bf2c4d4ecd0f884d17964683b390544d1ed7fa`
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
# Fri, 22 Sep 2017 05:39:15 GMT
ENV REDIS_VERSION=4.0.2
# Fri, 22 Sep 2017 05:39:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Fri, 22 Sep 2017 05:39:18 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Fri, 22 Sep 2017 05:42:29 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 05:42:34 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 05:42:36 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 05:42:37 GMT
WORKDIR /data
# Fri, 22 Sep 2017 05:42:39 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 05:42:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 05:42:44 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 05:42:46 GMT
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
	-	`sha256:f62e196e5f9bcd1d645bde7808a33fdf0b9a007f270d2e72e9dc161e35bf6a1f`  
		Last Modified: Fri, 22 Sep 2017 05:43:22 GMT  
		Size: 8.6 MB (8634982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c9f3f8035aec3526fecb2cfdfbb0875e87816cced6e0acc4d837de8b201e6c`  
		Last Modified: Fri, 22 Sep 2017 05:43:19 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3000da410048933c9c436841b3f2023e9f84cd523e6c9a69ae23c102609171d3`  
		Last Modified: Fri, 22 Sep 2017 05:43:19 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; s390x

```console
$ docker pull redis@sha256:975ad29ec743d71ca6ad72e0245a85177d3f1c6c7b3d3f858883ae310e2dc71b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 MB (40167645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55d62d225b4c05d5bc56df68ef8ad4c02ffde63d78394e6342a79cb86f3f0fac`
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
# Fri, 22 Sep 2017 05:25:08 GMT
ENV REDIS_VERSION=4.0.2
# Fri, 22 Sep 2017 05:25:08 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Fri, 22 Sep 2017 05:25:08 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Fri, 22 Sep 2017 05:25:46 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 05:25:46 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 05:25:47 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 05:25:47 GMT
WORKDIR /data
# Fri, 22 Sep 2017 05:25:47 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 05:25:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 05:25:47 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 05:25:48 GMT
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
	-	`sha256:82bbeea47f1fca75c57b4f7f130e5a4d72160e8feb947982ba163ae0dfe46aca`  
		Last Modified: Fri, 22 Sep 2017 05:26:16 GMT  
		Size: 8.9 MB (8904046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2796ce4c0d8ce62a1409bfe45448c822180ad8610c34872b5090ef50b20a0cfc`  
		Last Modified: Fri, 22 Sep 2017 05:26:13 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2685f3d1541495bdb047d0623f47b6cad9087b57d4bd62935d4df39954fef9dd`  
		Last Modified: Fri, 22 Sep 2017 05:26:14 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0`

```console
$ docker pull redis@sha256:095d779a152df521eda4ae8fc6b7251ef60e02974d8e201812173267b019923d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:4.0` - linux; amd64

```console
$ docker pull redis@sha256:ef728e78b63de0c44ddb2d3cec482816293deaee013f8f3719260095a79c80bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39372240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6dddb991dfa5f8e49b00d2d4ff1e46e6593101ace99cca0febf287cadc4febf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 03:32:28 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 19 Sep 2017 03:32:28 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 03:32:56 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 21 Sep 2017 20:55:13 GMT
ENV REDIS_VERSION=4.0.2
# Thu, 21 Sep 2017 20:55:13 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Thu, 21 Sep 2017 20:55:13 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Thu, 21 Sep 2017 20:56:08 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 21 Sep 2017 20:56:09 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Sep 2017 20:56:09 GMT
VOLUME [/data]
# Thu, 21 Sep 2017 20:56:09 GMT
WORKDIR /data
# Thu, 21 Sep 2017 20:56:10 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 21 Sep 2017 20:56:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Sep 2017 20:56:10 GMT
EXPOSE 6379/tcp
# Thu, 21 Sep 2017 20:56:10 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9835c278527bc23a93cf0cbfae60655ad5cf9f26806935a1bd0da57d14c751`  
		Last Modified: Tue, 19 Sep 2017 03:38:55 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a0d1212c38ec976de047e36c9b0f19d8427333c4db7d45d403f5839ec1c8fb`  
		Last Modified: Tue, 19 Sep 2017 03:38:55 GMT  
		Size: 981.7 KB (981718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43be9e9f0fb9e865d48a8b5e54cd5560e70b8654b2079c296584bb831ed95270`  
		Last Modified: Thu, 21 Sep 2017 21:02:37 GMT  
		Size: 8.3 MB (8274798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1bca8e532ecd790280384459b0f38a2afcb3e8b34ad2f44f74fc5f7fa1afcb8`  
		Last Modified: Thu, 21 Sep 2017 21:02:35 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:382eae952932be17e3e19f293a03dcd46997be14270fb84563700f964dc6238a`  
		Last Modified: Thu, 21 Sep 2017 21:02:35 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm variant v7

```console
$ docker pull redis@sha256:3e1cf827dc634d563f6827a02cacbd8d9792e18b5e4372ae7d25e4350ddb84b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35156734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76cb3a3b1cbd131f2210f3089a7bbcb9ff9f28e4cb323f8e6dfa57dec9ac938f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:46 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Sat, 09 Sep 2017 01:40:47 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 03:05:55 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 19 Sep 2017 03:05:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 03:11:04 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 22 Sep 2017 00:34:39 GMT
ENV REDIS_VERSION=4.0.2
# Fri, 22 Sep 2017 00:34:41 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Fri, 22 Sep 2017 00:34:41 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Fri, 22 Sep 2017 00:38:58 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 00:39:00 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 00:39:01 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 00:39:02 GMT
WORKDIR /data
# Fri, 22 Sep 2017 00:39:03 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 00:39:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 00:39:05 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 00:39:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5ec7d30a9a8c4943b1650d24c5857d17b69f0e4bb62241d56894484ff9315547`  
		Last Modified: Sat, 09 Sep 2017 01:51:42 GMT  
		Size: 26.3 MB (26279463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71aa78af1dc05c680523e0e793af7351fde77d37b56e6d4c2be5d45c69e6bcc7`  
		Last Modified: Tue, 19 Sep 2017 03:29:47 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f17d61ada0d583be49aa7a57f8c5362ffd1d02d581c9ace2e5262ec3166a4a`  
		Last Modified: Tue, 19 Sep 2017 03:29:47 GMT  
		Size: 956.3 KB (956290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87edc98a3525491b3c726025f682e807b9ff0704a98e9ab46854334316653c0d`  
		Last Modified: Fri, 22 Sep 2017 00:40:24 GMT  
		Size: 7.9 MB (7918395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e9f4d6ee11a1c6f937079b1cdf7b6007a2c2701d9c1f1d82d74dd56429d9b8`  
		Last Modified: Fri, 22 Sep 2017 00:40:20 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67949765e580a2359587430bf1600557980a247bf73adacf07817fcabf8cbb32`  
		Last Modified: Fri, 22 Sep 2017 00:40:20 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:4845140105737ed581dba4f744be0c2556ae2ba8b0d18dc3f41ba67b62e11151
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36847619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92f96525c124fae5046d5246bff2105ae6681951b1007646019ef88b4f353209`
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
# Fri, 22 Sep 2017 12:27:43 GMT
ENV REDIS_VERSION=4.0.2
# Fri, 22 Sep 2017 12:27:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Fri, 22 Sep 2017 12:27:44 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Fri, 22 Sep 2017 12:29:26 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 12:29:27 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 12:29:28 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 12:29:29 GMT
WORKDIR /data
# Fri, 22 Sep 2017 12:29:30 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 12:29:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 12:29:31 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 12:29:32 GMT
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
	-	`sha256:ac15723d8d0fba9bf5664cae62333fa1c0b43234dab991cbd4a6911a2da8dcf9`  
		Last Modified: Fri, 22 Sep 2017 12:30:36 GMT  
		Size: 8.4 MB (8415910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f73a338123506c454f23e0fe39482284d2bbf48940142bd7e6671803184703`  
		Last Modified: Fri, 22 Sep 2017 12:30:33 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:054926106ae8a2807c4f3f95d762998d2f02e1215aca57faa64e1b097e212581`  
		Last Modified: Fri, 22 Sep 2017 12:30:33 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; 386

```console
$ docker pull redis@sha256:d9806ceb97cd055a4bf777964380bada1ae75149aad9d4e871b89b351327241b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38713920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0136124221c70aabac4bdd8401e208e11674aeafa4d09c2e9432d5757189d4fc`
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
# Fri, 22 Sep 2017 12:17:59 GMT
ENV REDIS_VERSION=4.0.2
# Fri, 22 Sep 2017 12:18:00 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Fri, 22 Sep 2017 12:18:00 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Fri, 22 Sep 2017 12:19:07 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 12:19:08 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 12:19:08 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 12:19:08 GMT
WORKDIR /data
# Fri, 22 Sep 2017 12:19:09 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 12:19:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 12:19:09 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 12:19:09 GMT
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
	-	`sha256:11a813b99168123bcb44e3ed6af24a948e85edd544ab04b0493a87406b768c1d`  
		Last Modified: Fri, 22 Sep 2017 12:19:50 GMT  
		Size: 7.5 MB (7486393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc41c7286101a3b1f93e839c6a77c29a5eec6a4142546fa0a3cd81cd3a94a40`  
		Last Modified: Fri, 22 Sep 2017 12:19:49 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19c157457e68d1a66980eb50e88990add470e9c4f945d6d33ad9ca80e038cf1`  
		Last Modified: Fri, 22 Sep 2017 12:19:48 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; ppc64le

```console
$ docker pull redis@sha256:acda5a62a21c587804f8878e6b01762f808f7144b223d7b205cf8b17e98ed063
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.9 MB (38894470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba7bf7a80d6d707077001db34bf2c4d4ecd0f884d17964683b390544d1ed7fa`
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
# Fri, 22 Sep 2017 05:39:15 GMT
ENV REDIS_VERSION=4.0.2
# Fri, 22 Sep 2017 05:39:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Fri, 22 Sep 2017 05:39:18 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Fri, 22 Sep 2017 05:42:29 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 05:42:34 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 05:42:36 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 05:42:37 GMT
WORKDIR /data
# Fri, 22 Sep 2017 05:42:39 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 05:42:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 05:42:44 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 05:42:46 GMT
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
	-	`sha256:f62e196e5f9bcd1d645bde7808a33fdf0b9a007f270d2e72e9dc161e35bf6a1f`  
		Last Modified: Fri, 22 Sep 2017 05:43:22 GMT  
		Size: 8.6 MB (8634982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c9f3f8035aec3526fecb2cfdfbb0875e87816cced6e0acc4d837de8b201e6c`  
		Last Modified: Fri, 22 Sep 2017 05:43:19 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3000da410048933c9c436841b3f2023e9f84cd523e6c9a69ae23c102609171d3`  
		Last Modified: Fri, 22 Sep 2017 05:43:19 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; s390x

```console
$ docker pull redis@sha256:975ad29ec743d71ca6ad72e0245a85177d3f1c6c7b3d3f858883ae310e2dc71b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 MB (40167645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55d62d225b4c05d5bc56df68ef8ad4c02ffde63d78394e6342a79cb86f3f0fac`
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
# Fri, 22 Sep 2017 05:25:08 GMT
ENV REDIS_VERSION=4.0.2
# Fri, 22 Sep 2017 05:25:08 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Fri, 22 Sep 2017 05:25:08 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Fri, 22 Sep 2017 05:25:46 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 05:25:46 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 05:25:47 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 05:25:47 GMT
WORKDIR /data
# Fri, 22 Sep 2017 05:25:47 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 05:25:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 05:25:47 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 05:25:48 GMT
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
	-	`sha256:82bbeea47f1fca75c57b4f7f130e5a4d72160e8feb947982ba163ae0dfe46aca`  
		Last Modified: Fri, 22 Sep 2017 05:26:16 GMT  
		Size: 8.9 MB (8904046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2796ce4c0d8ce62a1409bfe45448c822180ad8610c34872b5090ef50b20a0cfc`  
		Last Modified: Fri, 22 Sep 2017 05:26:13 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2685f3d1541495bdb047d0623f47b6cad9087b57d4bd62935d4df39954fef9dd`  
		Last Modified: Fri, 22 Sep 2017 05:26:14 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.2`

```console
$ docker pull redis@sha256:095d779a152df521eda4ae8fc6b7251ef60e02974d8e201812173267b019923d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:4.0.2` - linux; amd64

```console
$ docker pull redis@sha256:ef728e78b63de0c44ddb2d3cec482816293deaee013f8f3719260095a79c80bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39372240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6dddb991dfa5f8e49b00d2d4ff1e46e6593101ace99cca0febf287cadc4febf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 03:32:28 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 19 Sep 2017 03:32:28 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 03:32:56 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 21 Sep 2017 20:55:13 GMT
ENV REDIS_VERSION=4.0.2
# Thu, 21 Sep 2017 20:55:13 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Thu, 21 Sep 2017 20:55:13 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Thu, 21 Sep 2017 20:56:08 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 21 Sep 2017 20:56:09 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Sep 2017 20:56:09 GMT
VOLUME [/data]
# Thu, 21 Sep 2017 20:56:09 GMT
WORKDIR /data
# Thu, 21 Sep 2017 20:56:10 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 21 Sep 2017 20:56:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Sep 2017 20:56:10 GMT
EXPOSE 6379/tcp
# Thu, 21 Sep 2017 20:56:10 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9835c278527bc23a93cf0cbfae60655ad5cf9f26806935a1bd0da57d14c751`  
		Last Modified: Tue, 19 Sep 2017 03:38:55 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a0d1212c38ec976de047e36c9b0f19d8427333c4db7d45d403f5839ec1c8fb`  
		Last Modified: Tue, 19 Sep 2017 03:38:55 GMT  
		Size: 981.7 KB (981718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43be9e9f0fb9e865d48a8b5e54cd5560e70b8654b2079c296584bb831ed95270`  
		Last Modified: Thu, 21 Sep 2017 21:02:37 GMT  
		Size: 8.3 MB (8274798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1bca8e532ecd790280384459b0f38a2afcb3e8b34ad2f44f74fc5f7fa1afcb8`  
		Last Modified: Thu, 21 Sep 2017 21:02:35 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:382eae952932be17e3e19f293a03dcd46997be14270fb84563700f964dc6238a`  
		Last Modified: Thu, 21 Sep 2017 21:02:35 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.2` - linux; arm variant v7

```console
$ docker pull redis@sha256:3e1cf827dc634d563f6827a02cacbd8d9792e18b5e4372ae7d25e4350ddb84b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35156734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76cb3a3b1cbd131f2210f3089a7bbcb9ff9f28e4cb323f8e6dfa57dec9ac938f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:46 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Sat, 09 Sep 2017 01:40:47 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 03:05:55 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 19 Sep 2017 03:05:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 03:11:04 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 22 Sep 2017 00:34:39 GMT
ENV REDIS_VERSION=4.0.2
# Fri, 22 Sep 2017 00:34:41 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Fri, 22 Sep 2017 00:34:41 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Fri, 22 Sep 2017 00:38:58 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 00:39:00 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 00:39:01 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 00:39:02 GMT
WORKDIR /data
# Fri, 22 Sep 2017 00:39:03 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 00:39:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 00:39:05 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 00:39:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5ec7d30a9a8c4943b1650d24c5857d17b69f0e4bb62241d56894484ff9315547`  
		Last Modified: Sat, 09 Sep 2017 01:51:42 GMT  
		Size: 26.3 MB (26279463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71aa78af1dc05c680523e0e793af7351fde77d37b56e6d4c2be5d45c69e6bcc7`  
		Last Modified: Tue, 19 Sep 2017 03:29:47 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f17d61ada0d583be49aa7a57f8c5362ffd1d02d581c9ace2e5262ec3166a4a`  
		Last Modified: Tue, 19 Sep 2017 03:29:47 GMT  
		Size: 956.3 KB (956290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87edc98a3525491b3c726025f682e807b9ff0704a98e9ab46854334316653c0d`  
		Last Modified: Fri, 22 Sep 2017 00:40:24 GMT  
		Size: 7.9 MB (7918395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e9f4d6ee11a1c6f937079b1cdf7b6007a2c2701d9c1f1d82d74dd56429d9b8`  
		Last Modified: Fri, 22 Sep 2017 00:40:20 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67949765e580a2359587430bf1600557980a247bf73adacf07817fcabf8cbb32`  
		Last Modified: Fri, 22 Sep 2017 00:40:20 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.2` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:4845140105737ed581dba4f744be0c2556ae2ba8b0d18dc3f41ba67b62e11151
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36847619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92f96525c124fae5046d5246bff2105ae6681951b1007646019ef88b4f353209`
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
# Fri, 22 Sep 2017 12:27:43 GMT
ENV REDIS_VERSION=4.0.2
# Fri, 22 Sep 2017 12:27:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Fri, 22 Sep 2017 12:27:44 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Fri, 22 Sep 2017 12:29:26 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 12:29:27 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 12:29:28 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 12:29:29 GMT
WORKDIR /data
# Fri, 22 Sep 2017 12:29:30 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 12:29:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 12:29:31 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 12:29:32 GMT
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
	-	`sha256:ac15723d8d0fba9bf5664cae62333fa1c0b43234dab991cbd4a6911a2da8dcf9`  
		Last Modified: Fri, 22 Sep 2017 12:30:36 GMT  
		Size: 8.4 MB (8415910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f73a338123506c454f23e0fe39482284d2bbf48940142bd7e6671803184703`  
		Last Modified: Fri, 22 Sep 2017 12:30:33 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:054926106ae8a2807c4f3f95d762998d2f02e1215aca57faa64e1b097e212581`  
		Last Modified: Fri, 22 Sep 2017 12:30:33 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.2` - linux; 386

```console
$ docker pull redis@sha256:d9806ceb97cd055a4bf777964380bada1ae75149aad9d4e871b89b351327241b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38713920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0136124221c70aabac4bdd8401e208e11674aeafa4d09c2e9432d5757189d4fc`
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
# Fri, 22 Sep 2017 12:17:59 GMT
ENV REDIS_VERSION=4.0.2
# Fri, 22 Sep 2017 12:18:00 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Fri, 22 Sep 2017 12:18:00 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Fri, 22 Sep 2017 12:19:07 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 12:19:08 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 12:19:08 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 12:19:08 GMT
WORKDIR /data
# Fri, 22 Sep 2017 12:19:09 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 12:19:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 12:19:09 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 12:19:09 GMT
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
	-	`sha256:11a813b99168123bcb44e3ed6af24a948e85edd544ab04b0493a87406b768c1d`  
		Last Modified: Fri, 22 Sep 2017 12:19:50 GMT  
		Size: 7.5 MB (7486393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc41c7286101a3b1f93e839c6a77c29a5eec6a4142546fa0a3cd81cd3a94a40`  
		Last Modified: Fri, 22 Sep 2017 12:19:49 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19c157457e68d1a66980eb50e88990add470e9c4f945d6d33ad9ca80e038cf1`  
		Last Modified: Fri, 22 Sep 2017 12:19:48 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.2` - linux; ppc64le

```console
$ docker pull redis@sha256:acda5a62a21c587804f8878e6b01762f808f7144b223d7b205cf8b17e98ed063
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.9 MB (38894470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba7bf7a80d6d707077001db34bf2c4d4ecd0f884d17964683b390544d1ed7fa`
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
# Fri, 22 Sep 2017 05:39:15 GMT
ENV REDIS_VERSION=4.0.2
# Fri, 22 Sep 2017 05:39:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Fri, 22 Sep 2017 05:39:18 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Fri, 22 Sep 2017 05:42:29 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 05:42:34 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 05:42:36 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 05:42:37 GMT
WORKDIR /data
# Fri, 22 Sep 2017 05:42:39 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 05:42:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 05:42:44 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 05:42:46 GMT
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
	-	`sha256:f62e196e5f9bcd1d645bde7808a33fdf0b9a007f270d2e72e9dc161e35bf6a1f`  
		Last Modified: Fri, 22 Sep 2017 05:43:22 GMT  
		Size: 8.6 MB (8634982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c9f3f8035aec3526fecb2cfdfbb0875e87816cced6e0acc4d837de8b201e6c`  
		Last Modified: Fri, 22 Sep 2017 05:43:19 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3000da410048933c9c436841b3f2023e9f84cd523e6c9a69ae23c102609171d3`  
		Last Modified: Fri, 22 Sep 2017 05:43:19 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.2` - linux; s390x

```console
$ docker pull redis@sha256:975ad29ec743d71ca6ad72e0245a85177d3f1c6c7b3d3f858883ae310e2dc71b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 MB (40167645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55d62d225b4c05d5bc56df68ef8ad4c02ffde63d78394e6342a79cb86f3f0fac`
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
# Fri, 22 Sep 2017 05:25:08 GMT
ENV REDIS_VERSION=4.0.2
# Fri, 22 Sep 2017 05:25:08 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Fri, 22 Sep 2017 05:25:08 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Fri, 22 Sep 2017 05:25:46 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 05:25:46 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 05:25:47 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 05:25:47 GMT
WORKDIR /data
# Fri, 22 Sep 2017 05:25:47 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 05:25:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 05:25:47 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 05:25:48 GMT
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
	-	`sha256:82bbeea47f1fca75c57b4f7f130e5a4d72160e8feb947982ba163ae0dfe46aca`  
		Last Modified: Fri, 22 Sep 2017 05:26:16 GMT  
		Size: 8.9 MB (8904046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2796ce4c0d8ce62a1409bfe45448c822180ad8610c34872b5090ef50b20a0cfc`  
		Last Modified: Fri, 22 Sep 2017 05:26:13 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2685f3d1541495bdb047d0623f47b6cad9087b57d4bd62935d4df39954fef9dd`  
		Last Modified: Fri, 22 Sep 2017 05:26:14 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.2-32bit`

```console
$ docker pull redis@sha256:f2df50d5765831f165cb13782ebe4de44a5fca9fc866329b733c794c88a727bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0.2-32bit` - linux; amd64

```console
$ docker pull redis@sha256:cd99d40bf98f799cae11f329e03429abc6fde25cbdadf1c49e950f5a20ec65e4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (42967333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:545f38ab931c158a8f07af7c0865d72964c67f6021e45a8719df5c69f3d932ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 03:32:28 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 19 Sep 2017 03:32:28 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 03:32:56 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 21 Sep 2017 20:55:13 GMT
ENV REDIS_VERSION=4.0.2
# Thu, 21 Sep 2017 20:55:13 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Thu, 21 Sep 2017 20:55:13 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Thu, 21 Sep 2017 20:56:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Sep 2017 20:57:53 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 21 Sep 2017 21:00:02 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Sep 2017 21:00:02 GMT
VOLUME [/data]
# Thu, 21 Sep 2017 21:00:03 GMT
WORKDIR /data
# Thu, 21 Sep 2017 21:00:03 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 21 Sep 2017 21:00:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Sep 2017 21:00:03 GMT
EXPOSE 6379/tcp
# Thu, 21 Sep 2017 21:00:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9835c278527bc23a93cf0cbfae60655ad5cf9f26806935a1bd0da57d14c751`  
		Last Modified: Tue, 19 Sep 2017 03:38:55 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a0d1212c38ec976de047e36c9b0f19d8427333c4db7d45d403f5839ec1c8fb`  
		Last Modified: Tue, 19 Sep 2017 03:38:55 GMT  
		Size: 981.7 KB (981718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80b86888209717a9a8d9c2db9b10e831891ad5a6217d79bb7c2edb17b08b19d9`  
		Last Modified: Thu, 21 Sep 2017 21:03:04 GMT  
		Size: 4.4 MB (4378575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360e79f860e49aa7e2b30a2f69f7bdebee6e10d9d85103b3c42c2773b004f1f9`  
		Last Modified: Thu, 21 Sep 2017 21:03:05 GMT  
		Size: 7.5 MB (7491307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5348eba18a840de4976ac480a7835efc2a0100be24c2cf07b8a075b86a0b7de3`  
		Last Modified: Thu, 21 Sep 2017 21:03:04 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66a8779e2c6d91537122a385da8114266815e0ab988eb5db358c617e10e4082`  
		Last Modified: Thu, 21 Sep 2017 21:03:04 GMT  
		Size: 411.0 B  
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
$ docker pull redis@sha256:f2df50d5765831f165cb13782ebe4de44a5fca9fc866329b733c794c88a727bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0-32bit` - linux; amd64

```console
$ docker pull redis@sha256:cd99d40bf98f799cae11f329e03429abc6fde25cbdadf1c49e950f5a20ec65e4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (42967333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:545f38ab931c158a8f07af7c0865d72964c67f6021e45a8719df5c69f3d932ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 03:32:28 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 19 Sep 2017 03:32:28 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 03:32:56 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 21 Sep 2017 20:55:13 GMT
ENV REDIS_VERSION=4.0.2
# Thu, 21 Sep 2017 20:55:13 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Thu, 21 Sep 2017 20:55:13 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Thu, 21 Sep 2017 20:56:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Sep 2017 20:57:53 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 21 Sep 2017 21:00:02 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Sep 2017 21:00:02 GMT
VOLUME [/data]
# Thu, 21 Sep 2017 21:00:03 GMT
WORKDIR /data
# Thu, 21 Sep 2017 21:00:03 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 21 Sep 2017 21:00:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Sep 2017 21:00:03 GMT
EXPOSE 6379/tcp
# Thu, 21 Sep 2017 21:00:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9835c278527bc23a93cf0cbfae60655ad5cf9f26806935a1bd0da57d14c751`  
		Last Modified: Tue, 19 Sep 2017 03:38:55 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a0d1212c38ec976de047e36c9b0f19d8427333c4db7d45d403f5839ec1c8fb`  
		Last Modified: Tue, 19 Sep 2017 03:38:55 GMT  
		Size: 981.7 KB (981718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80b86888209717a9a8d9c2db9b10e831891ad5a6217d79bb7c2edb17b08b19d9`  
		Last Modified: Thu, 21 Sep 2017 21:03:04 GMT  
		Size: 4.4 MB (4378575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360e79f860e49aa7e2b30a2f69f7bdebee6e10d9d85103b3c42c2773b004f1f9`  
		Last Modified: Thu, 21 Sep 2017 21:03:05 GMT  
		Size: 7.5 MB (7491307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5348eba18a840de4976ac480a7835efc2a0100be24c2cf07b8a075b86a0b7de3`  
		Last Modified: Thu, 21 Sep 2017 21:03:04 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66a8779e2c6d91537122a385da8114266815e0ab988eb5db358c617e10e4082`  
		Last Modified: Thu, 21 Sep 2017 21:03:04 GMT  
		Size: 411.0 B  
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
$ docker pull redis@sha256:f2df50d5765831f165cb13782ebe4de44a5fca9fc866329b733c794c88a727bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-32bit` - linux; amd64

```console
$ docker pull redis@sha256:cd99d40bf98f799cae11f329e03429abc6fde25cbdadf1c49e950f5a20ec65e4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (42967333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:545f38ab931c158a8f07af7c0865d72964c67f6021e45a8719df5c69f3d932ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 03:32:28 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 19 Sep 2017 03:32:28 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 03:32:56 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 21 Sep 2017 20:55:13 GMT
ENV REDIS_VERSION=4.0.2
# Thu, 21 Sep 2017 20:55:13 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Thu, 21 Sep 2017 20:55:13 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Thu, 21 Sep 2017 20:56:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Sep 2017 20:57:53 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 21 Sep 2017 21:00:02 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Sep 2017 21:00:02 GMT
VOLUME [/data]
# Thu, 21 Sep 2017 21:00:03 GMT
WORKDIR /data
# Thu, 21 Sep 2017 21:00:03 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 21 Sep 2017 21:00:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Sep 2017 21:00:03 GMT
EXPOSE 6379/tcp
# Thu, 21 Sep 2017 21:00:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9835c278527bc23a93cf0cbfae60655ad5cf9f26806935a1bd0da57d14c751`  
		Last Modified: Tue, 19 Sep 2017 03:38:55 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a0d1212c38ec976de047e36c9b0f19d8427333c4db7d45d403f5839ec1c8fb`  
		Last Modified: Tue, 19 Sep 2017 03:38:55 GMT  
		Size: 981.7 KB (981718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80b86888209717a9a8d9c2db9b10e831891ad5a6217d79bb7c2edb17b08b19d9`  
		Last Modified: Thu, 21 Sep 2017 21:03:04 GMT  
		Size: 4.4 MB (4378575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360e79f860e49aa7e2b30a2f69f7bdebee6e10d9d85103b3c42c2773b004f1f9`  
		Last Modified: Thu, 21 Sep 2017 21:03:05 GMT  
		Size: 7.5 MB (7491307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5348eba18a840de4976ac480a7835efc2a0100be24c2cf07b8a075b86a0b7de3`  
		Last Modified: Thu, 21 Sep 2017 21:03:04 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66a8779e2c6d91537122a385da8114266815e0ab988eb5db358c617e10e4082`  
		Last Modified: Thu, 21 Sep 2017 21:03:04 GMT  
		Size: 411.0 B  
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
$ docker pull redis@sha256:095d779a152df521eda4ae8fc6b7251ef60e02974d8e201812173267b019923d
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
$ docker pull redis@sha256:ef728e78b63de0c44ddb2d3cec482816293deaee013f8f3719260095a79c80bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39372240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6dddb991dfa5f8e49b00d2d4ff1e46e6593101ace99cca0febf287cadc4febf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 03:32:28 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 19 Sep 2017 03:32:28 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 03:32:56 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 21 Sep 2017 20:55:13 GMT
ENV REDIS_VERSION=4.0.2
# Thu, 21 Sep 2017 20:55:13 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Thu, 21 Sep 2017 20:55:13 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Thu, 21 Sep 2017 20:56:08 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 21 Sep 2017 20:56:09 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Sep 2017 20:56:09 GMT
VOLUME [/data]
# Thu, 21 Sep 2017 20:56:09 GMT
WORKDIR /data
# Thu, 21 Sep 2017 20:56:10 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 21 Sep 2017 20:56:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Sep 2017 20:56:10 GMT
EXPOSE 6379/tcp
# Thu, 21 Sep 2017 20:56:10 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9835c278527bc23a93cf0cbfae60655ad5cf9f26806935a1bd0da57d14c751`  
		Last Modified: Tue, 19 Sep 2017 03:38:55 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a0d1212c38ec976de047e36c9b0f19d8427333c4db7d45d403f5839ec1c8fb`  
		Last Modified: Tue, 19 Sep 2017 03:38:55 GMT  
		Size: 981.7 KB (981718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43be9e9f0fb9e865d48a8b5e54cd5560e70b8654b2079c296584bb831ed95270`  
		Last Modified: Thu, 21 Sep 2017 21:02:37 GMT  
		Size: 8.3 MB (8274798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1bca8e532ecd790280384459b0f38a2afcb3e8b34ad2f44f74fc5f7fa1afcb8`  
		Last Modified: Thu, 21 Sep 2017 21:02:35 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:382eae952932be17e3e19f293a03dcd46997be14270fb84563700f964dc6238a`  
		Last Modified: Thu, 21 Sep 2017 21:02:35 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm variant v7

```console
$ docker pull redis@sha256:3e1cf827dc634d563f6827a02cacbd8d9792e18b5e4372ae7d25e4350ddb84b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35156734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76cb3a3b1cbd131f2210f3089a7bbcb9ff9f28e4cb323f8e6dfa57dec9ac938f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:46 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Sat, 09 Sep 2017 01:40:47 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 03:05:55 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 19 Sep 2017 03:05:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 03:11:04 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 22 Sep 2017 00:34:39 GMT
ENV REDIS_VERSION=4.0.2
# Fri, 22 Sep 2017 00:34:41 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Fri, 22 Sep 2017 00:34:41 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Fri, 22 Sep 2017 00:38:58 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 00:39:00 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 00:39:01 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 00:39:02 GMT
WORKDIR /data
# Fri, 22 Sep 2017 00:39:03 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 00:39:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 00:39:05 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 00:39:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5ec7d30a9a8c4943b1650d24c5857d17b69f0e4bb62241d56894484ff9315547`  
		Last Modified: Sat, 09 Sep 2017 01:51:42 GMT  
		Size: 26.3 MB (26279463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71aa78af1dc05c680523e0e793af7351fde77d37b56e6d4c2be5d45c69e6bcc7`  
		Last Modified: Tue, 19 Sep 2017 03:29:47 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f17d61ada0d583be49aa7a57f8c5362ffd1d02d581c9ace2e5262ec3166a4a`  
		Last Modified: Tue, 19 Sep 2017 03:29:47 GMT  
		Size: 956.3 KB (956290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87edc98a3525491b3c726025f682e807b9ff0704a98e9ab46854334316653c0d`  
		Last Modified: Fri, 22 Sep 2017 00:40:24 GMT  
		Size: 7.9 MB (7918395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e9f4d6ee11a1c6f937079b1cdf7b6007a2c2701d9c1f1d82d74dd56429d9b8`  
		Last Modified: Fri, 22 Sep 2017 00:40:20 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67949765e580a2359587430bf1600557980a247bf73adacf07817fcabf8cbb32`  
		Last Modified: Fri, 22 Sep 2017 00:40:20 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:4845140105737ed581dba4f744be0c2556ae2ba8b0d18dc3f41ba67b62e11151
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36847619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92f96525c124fae5046d5246bff2105ae6681951b1007646019ef88b4f353209`
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
# Fri, 22 Sep 2017 12:27:43 GMT
ENV REDIS_VERSION=4.0.2
# Fri, 22 Sep 2017 12:27:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Fri, 22 Sep 2017 12:27:44 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Fri, 22 Sep 2017 12:29:26 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 12:29:27 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 12:29:28 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 12:29:29 GMT
WORKDIR /data
# Fri, 22 Sep 2017 12:29:30 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 12:29:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 12:29:31 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 12:29:32 GMT
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
	-	`sha256:ac15723d8d0fba9bf5664cae62333fa1c0b43234dab991cbd4a6911a2da8dcf9`  
		Last Modified: Fri, 22 Sep 2017 12:30:36 GMT  
		Size: 8.4 MB (8415910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f73a338123506c454f23e0fe39482284d2bbf48940142bd7e6671803184703`  
		Last Modified: Fri, 22 Sep 2017 12:30:33 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:054926106ae8a2807c4f3f95d762998d2f02e1215aca57faa64e1b097e212581`  
		Last Modified: Fri, 22 Sep 2017 12:30:33 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; 386

```console
$ docker pull redis@sha256:d9806ceb97cd055a4bf777964380bada1ae75149aad9d4e871b89b351327241b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38713920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0136124221c70aabac4bdd8401e208e11674aeafa4d09c2e9432d5757189d4fc`
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
# Fri, 22 Sep 2017 12:17:59 GMT
ENV REDIS_VERSION=4.0.2
# Fri, 22 Sep 2017 12:18:00 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Fri, 22 Sep 2017 12:18:00 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Fri, 22 Sep 2017 12:19:07 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 12:19:08 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 12:19:08 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 12:19:08 GMT
WORKDIR /data
# Fri, 22 Sep 2017 12:19:09 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 12:19:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 12:19:09 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 12:19:09 GMT
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
	-	`sha256:11a813b99168123bcb44e3ed6af24a948e85edd544ab04b0493a87406b768c1d`  
		Last Modified: Fri, 22 Sep 2017 12:19:50 GMT  
		Size: 7.5 MB (7486393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc41c7286101a3b1f93e839c6a77c29a5eec6a4142546fa0a3cd81cd3a94a40`  
		Last Modified: Fri, 22 Sep 2017 12:19:49 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19c157457e68d1a66980eb50e88990add470e9c4f945d6d33ad9ca80e038cf1`  
		Last Modified: Fri, 22 Sep 2017 12:19:48 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; ppc64le

```console
$ docker pull redis@sha256:acda5a62a21c587804f8878e6b01762f808f7144b223d7b205cf8b17e98ed063
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.9 MB (38894470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba7bf7a80d6d707077001db34bf2c4d4ecd0f884d17964683b390544d1ed7fa`
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
# Fri, 22 Sep 2017 05:39:15 GMT
ENV REDIS_VERSION=4.0.2
# Fri, 22 Sep 2017 05:39:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Fri, 22 Sep 2017 05:39:18 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Fri, 22 Sep 2017 05:42:29 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 05:42:34 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 05:42:36 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 05:42:37 GMT
WORKDIR /data
# Fri, 22 Sep 2017 05:42:39 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 05:42:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 05:42:44 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 05:42:46 GMT
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
	-	`sha256:f62e196e5f9bcd1d645bde7808a33fdf0b9a007f270d2e72e9dc161e35bf6a1f`  
		Last Modified: Fri, 22 Sep 2017 05:43:22 GMT  
		Size: 8.6 MB (8634982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c9f3f8035aec3526fecb2cfdfbb0875e87816cced6e0acc4d837de8b201e6c`  
		Last Modified: Fri, 22 Sep 2017 05:43:19 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3000da410048933c9c436841b3f2023e9f84cd523e6c9a69ae23c102609171d3`  
		Last Modified: Fri, 22 Sep 2017 05:43:19 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; s390x

```console
$ docker pull redis@sha256:975ad29ec743d71ca6ad72e0245a85177d3f1c6c7b3d3f858883ae310e2dc71b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 MB (40167645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55d62d225b4c05d5bc56df68ef8ad4c02ffde63d78394e6342a79cb86f3f0fac`
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
# Fri, 22 Sep 2017 05:25:08 GMT
ENV REDIS_VERSION=4.0.2
# Fri, 22 Sep 2017 05:25:08 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Fri, 22 Sep 2017 05:25:08 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Fri, 22 Sep 2017 05:25:46 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 05:25:46 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 05:25:47 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 05:25:47 GMT
WORKDIR /data
# Fri, 22 Sep 2017 05:25:47 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 05:25:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 05:25:47 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 05:25:48 GMT
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
	-	`sha256:82bbeea47f1fca75c57b4f7f130e5a4d72160e8feb947982ba163ae0dfe46aca`  
		Last Modified: Fri, 22 Sep 2017 05:26:16 GMT  
		Size: 8.9 MB (8904046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2796ce4c0d8ce62a1409bfe45448c822180ad8610c34872b5090ef50b20a0cfc`  
		Last Modified: Fri, 22 Sep 2017 05:26:13 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2685f3d1541495bdb047d0623f47b6cad9087b57d4bd62935d4df39954fef9dd`  
		Last Modified: Fri, 22 Sep 2017 05:26:14 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
