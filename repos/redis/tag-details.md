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
-	[`redis:4.0.0`](#redis400)
-	[`redis:4.0`](#redis40)
-	[`redis:4`](#redis4)
-	[`redis:latest`](#redislatest)
-	[`redis:4.0.0-32bit`](#redis400-32bit)
-	[`redis:4.0-32bit`](#redis40-32bit)
-	[`redis:4-32bit`](#redis4-32bit)
-	[`redis:32bit`](#redis32bit)
-	[`redis:4.0.0-alpine`](#redis400-alpine)
-	[`redis:4.0-alpine`](#redis40-alpine)
-	[`redis:4-alpine`](#redis4-alpine)
-	[`redis:alpine`](#redisalpine)

## `redis:3.2.9`

```console
$ docker pull redis@sha256:4e2af5470298aa3c79fba07216f0245fff5278b66f40681cf448eabca0bb966b
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.7 MB (36655248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e482b286430fc5abed4cd26965ef200c59b727739919489d9ba42d5c361576c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 05:44:34 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 23 Jun 2017 05:44:35 GMT
ENV GOSU_VERSION=1.10
# Fri, 23 Jun 2017 05:44:57 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 23 Jun 2017 05:47:28 GMT
ENV REDIS_VERSION=3.2.9
# Fri, 23 Jun 2017 05:47:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.9.tar.gz
# Fri, 23 Jun 2017 05:47:29 GMT
ENV REDIS_DOWNLOAD_SHA=6eaacfa983b287e440d0839ead20c2231749d5d6b78bbe0e0ffa3a890c59ff26
# Fri, 23 Jun 2017 05:48:04 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Jun 2017 05:48:06 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 23 Jun 2017 05:48:07 GMT
VOLUME [/data]
# Fri, 23 Jun 2017 05:48:08 GMT
WORKDIR /data
# Fri, 23 Jun 2017 05:48:09 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 23 Jun 2017 05:48:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 05:48:11 GMT
EXPOSE 6379/tcp
# Fri, 23 Jun 2017 05:48:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc25ed18e877d43401da85c64188e58d30d84158be61b7c2a380e487c2e7443`  
		Last Modified: Sat, 24 Jun 2017 21:26:11 GMT  
		Size: 2.1 KB (2071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e025bc8872f6df52f89826f3bd4300771177bcd0268a5b091bbe11e52d62634d`  
		Last Modified: Sat, 24 Jun 2017 21:26:12 GMT  
		Size: 983.2 KB (983160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8edb7c8bd1cf6547519ea67fa1350f8d2cf3a20f03447ab816e062cac79ad5`  
		Last Modified: Sat, 24 Jun 2017 21:29:02 GMT  
		Size: 5.5 MB (5539234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654cb9d60232fd5b37015b80c7f1207efd9f237b5f86a7fce1406875d71f6f14`  
		Last Modified: Sat, 24 Jun 2017 21:29:00 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44888ef5307528d97578efd747ff6a5635facbcfe23c84e79159c0630daf16de`  
		Last Modified: Sat, 24 Jun 2017 21:29:00 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2`

```console
$ docker pull redis@sha256:4e2af5470298aa3c79fba07216f0245fff5278b66f40681cf448eabca0bb966b
```

-	Platforms:
	-	linux; amd64

### `redis:3.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.7 MB (36655248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e482b286430fc5abed4cd26965ef200c59b727739919489d9ba42d5c361576c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 05:44:34 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 23 Jun 2017 05:44:35 GMT
ENV GOSU_VERSION=1.10
# Fri, 23 Jun 2017 05:44:57 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 23 Jun 2017 05:47:28 GMT
ENV REDIS_VERSION=3.2.9
# Fri, 23 Jun 2017 05:47:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.9.tar.gz
# Fri, 23 Jun 2017 05:47:29 GMT
ENV REDIS_DOWNLOAD_SHA=6eaacfa983b287e440d0839ead20c2231749d5d6b78bbe0e0ffa3a890c59ff26
# Fri, 23 Jun 2017 05:48:04 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Jun 2017 05:48:06 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 23 Jun 2017 05:48:07 GMT
VOLUME [/data]
# Fri, 23 Jun 2017 05:48:08 GMT
WORKDIR /data
# Fri, 23 Jun 2017 05:48:09 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 23 Jun 2017 05:48:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 05:48:11 GMT
EXPOSE 6379/tcp
# Fri, 23 Jun 2017 05:48:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc25ed18e877d43401da85c64188e58d30d84158be61b7c2a380e487c2e7443`  
		Last Modified: Sat, 24 Jun 2017 21:26:11 GMT  
		Size: 2.1 KB (2071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e025bc8872f6df52f89826f3bd4300771177bcd0268a5b091bbe11e52d62634d`  
		Last Modified: Sat, 24 Jun 2017 21:26:12 GMT  
		Size: 983.2 KB (983160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8edb7c8bd1cf6547519ea67fa1350f8d2cf3a20f03447ab816e062cac79ad5`  
		Last Modified: Sat, 24 Jun 2017 21:29:02 GMT  
		Size: 5.5 MB (5539234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654cb9d60232fd5b37015b80c7f1207efd9f237b5f86a7fce1406875d71f6f14`  
		Last Modified: Sat, 24 Jun 2017 21:29:00 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44888ef5307528d97578efd747ff6a5635facbcfe23c84e79159c0630daf16de`  
		Last Modified: Sat, 24 Jun 2017 21:29:00 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3`

```console
$ docker pull redis@sha256:4e2af5470298aa3c79fba07216f0245fff5278b66f40681cf448eabca0bb966b
```

-	Platforms:
	-	linux; amd64

### `redis:3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.7 MB (36655248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e482b286430fc5abed4cd26965ef200c59b727739919489d9ba42d5c361576c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 05:44:34 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 23 Jun 2017 05:44:35 GMT
ENV GOSU_VERSION=1.10
# Fri, 23 Jun 2017 05:44:57 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 23 Jun 2017 05:47:28 GMT
ENV REDIS_VERSION=3.2.9
# Fri, 23 Jun 2017 05:47:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.9.tar.gz
# Fri, 23 Jun 2017 05:47:29 GMT
ENV REDIS_DOWNLOAD_SHA=6eaacfa983b287e440d0839ead20c2231749d5d6b78bbe0e0ffa3a890c59ff26
# Fri, 23 Jun 2017 05:48:04 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Jun 2017 05:48:06 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 23 Jun 2017 05:48:07 GMT
VOLUME [/data]
# Fri, 23 Jun 2017 05:48:08 GMT
WORKDIR /data
# Fri, 23 Jun 2017 05:48:09 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 23 Jun 2017 05:48:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 05:48:11 GMT
EXPOSE 6379/tcp
# Fri, 23 Jun 2017 05:48:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc25ed18e877d43401da85c64188e58d30d84158be61b7c2a380e487c2e7443`  
		Last Modified: Sat, 24 Jun 2017 21:26:11 GMT  
		Size: 2.1 KB (2071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e025bc8872f6df52f89826f3bd4300771177bcd0268a5b091bbe11e52d62634d`  
		Last Modified: Sat, 24 Jun 2017 21:26:12 GMT  
		Size: 983.2 KB (983160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8edb7c8bd1cf6547519ea67fa1350f8d2cf3a20f03447ab816e062cac79ad5`  
		Last Modified: Sat, 24 Jun 2017 21:29:02 GMT  
		Size: 5.5 MB (5539234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654cb9d60232fd5b37015b80c7f1207efd9f237b5f86a7fce1406875d71f6f14`  
		Last Modified: Sat, 24 Jun 2017 21:29:00 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44888ef5307528d97578efd747ff6a5635facbcfe23c84e79159c0630daf16de`  
		Last Modified: Sat, 24 Jun 2017 21:29:00 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.9-32bit`

```console
$ docker pull redis@sha256:f6bc2abee86507d2e9ff1d13cc2faaa38f27133edc9c4ebf6d69603c06b5aa56
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.9-32bit` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40309270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5969bc58bcf668ac359e19109034a7e7e1bcb5c5be807a20c017be14c27e69b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 05:44:34 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 23 Jun 2017 05:44:35 GMT
ENV GOSU_VERSION=1.10
# Fri, 23 Jun 2017 05:44:57 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 23 Jun 2017 05:47:28 GMT
ENV REDIS_VERSION=3.2.9
# Fri, 23 Jun 2017 05:47:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.9.tar.gz
# Fri, 23 Jun 2017 05:47:29 GMT
ENV REDIS_DOWNLOAD_SHA=6eaacfa983b287e440d0839ead20c2231749d5d6b78bbe0e0ffa3a890c59ff26
# Fri, 23 Jun 2017 05:48:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:49:23 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Jun 2017 05:49:24 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 23 Jun 2017 05:49:25 GMT
VOLUME [/data]
# Fri, 23 Jun 2017 05:49:26 GMT
WORKDIR /data
# Fri, 23 Jun 2017 05:49:27 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 23 Jun 2017 05:49:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 05:49:29 GMT
EXPOSE 6379/tcp
# Fri, 23 Jun 2017 05:49:29 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc25ed18e877d43401da85c64188e58d30d84158be61b7c2a380e487c2e7443`  
		Last Modified: Sat, 24 Jun 2017 21:26:11 GMT  
		Size: 2.1 KB (2071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e025bc8872f6df52f89826f3bd4300771177bcd0268a5b091bbe11e52d62634d`  
		Last Modified: Sat, 24 Jun 2017 21:26:12 GMT  
		Size: 983.2 KB (983160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1421edb21792c204500c3ec5f066ba188cc0bd367ade6edcf73cf915435bae78`  
		Last Modified: Sat, 24 Jun 2017 21:30:53 GMT  
		Size: 4.2 MB (4173503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fdaf801c95a64860a5033743dad55f2b4392aafd457784791460bd3b5d19a7c`  
		Last Modified: Sat, 24 Jun 2017 21:30:53 GMT  
		Size: 5.0 MB (5019751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b0361b3087b3ba0038b343f9d38a36e1c833516bbc5111c7e8921b3a044dc68`  
		Last Modified: Sat, 24 Jun 2017 21:30:52 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760c1792ae409d5f26492c5bdb46d2ef178512513c046bc4526e6a908d70eaa7`  
		Last Modified: Sat, 24 Jun 2017 21:30:52 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-32bit`

```console
$ docker pull redis@sha256:f6bc2abee86507d2e9ff1d13cc2faaa38f27133edc9c4ebf6d69603c06b5aa56
```

-	Platforms:
	-	linux; amd64

### `redis:3.2-32bit` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40309270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5969bc58bcf668ac359e19109034a7e7e1bcb5c5be807a20c017be14c27e69b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 05:44:34 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 23 Jun 2017 05:44:35 GMT
ENV GOSU_VERSION=1.10
# Fri, 23 Jun 2017 05:44:57 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 23 Jun 2017 05:47:28 GMT
ENV REDIS_VERSION=3.2.9
# Fri, 23 Jun 2017 05:47:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.9.tar.gz
# Fri, 23 Jun 2017 05:47:29 GMT
ENV REDIS_DOWNLOAD_SHA=6eaacfa983b287e440d0839ead20c2231749d5d6b78bbe0e0ffa3a890c59ff26
# Fri, 23 Jun 2017 05:48:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:49:23 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Jun 2017 05:49:24 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 23 Jun 2017 05:49:25 GMT
VOLUME [/data]
# Fri, 23 Jun 2017 05:49:26 GMT
WORKDIR /data
# Fri, 23 Jun 2017 05:49:27 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 23 Jun 2017 05:49:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 05:49:29 GMT
EXPOSE 6379/tcp
# Fri, 23 Jun 2017 05:49:29 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc25ed18e877d43401da85c64188e58d30d84158be61b7c2a380e487c2e7443`  
		Last Modified: Sat, 24 Jun 2017 21:26:11 GMT  
		Size: 2.1 KB (2071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e025bc8872f6df52f89826f3bd4300771177bcd0268a5b091bbe11e52d62634d`  
		Last Modified: Sat, 24 Jun 2017 21:26:12 GMT  
		Size: 983.2 KB (983160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1421edb21792c204500c3ec5f066ba188cc0bd367ade6edcf73cf915435bae78`  
		Last Modified: Sat, 24 Jun 2017 21:30:53 GMT  
		Size: 4.2 MB (4173503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fdaf801c95a64860a5033743dad55f2b4392aafd457784791460bd3b5d19a7c`  
		Last Modified: Sat, 24 Jun 2017 21:30:53 GMT  
		Size: 5.0 MB (5019751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b0361b3087b3ba0038b343f9d38a36e1c833516bbc5111c7e8921b3a044dc68`  
		Last Modified: Sat, 24 Jun 2017 21:30:52 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760c1792ae409d5f26492c5bdb46d2ef178512513c046bc4526e6a908d70eaa7`  
		Last Modified: Sat, 24 Jun 2017 21:30:52 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-32bit`

```console
$ docker pull redis@sha256:f6bc2abee86507d2e9ff1d13cc2faaa38f27133edc9c4ebf6d69603c06b5aa56
```

-	Platforms:
	-	linux; amd64

### `redis:3-32bit` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40309270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5969bc58bcf668ac359e19109034a7e7e1bcb5c5be807a20c017be14c27e69b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 05:44:34 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 23 Jun 2017 05:44:35 GMT
ENV GOSU_VERSION=1.10
# Fri, 23 Jun 2017 05:44:57 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 23 Jun 2017 05:47:28 GMT
ENV REDIS_VERSION=3.2.9
# Fri, 23 Jun 2017 05:47:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.9.tar.gz
# Fri, 23 Jun 2017 05:47:29 GMT
ENV REDIS_DOWNLOAD_SHA=6eaacfa983b287e440d0839ead20c2231749d5d6b78bbe0e0ffa3a890c59ff26
# Fri, 23 Jun 2017 05:48:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:49:23 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Jun 2017 05:49:24 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 23 Jun 2017 05:49:25 GMT
VOLUME [/data]
# Fri, 23 Jun 2017 05:49:26 GMT
WORKDIR /data
# Fri, 23 Jun 2017 05:49:27 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 23 Jun 2017 05:49:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 05:49:29 GMT
EXPOSE 6379/tcp
# Fri, 23 Jun 2017 05:49:29 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc25ed18e877d43401da85c64188e58d30d84158be61b7c2a380e487c2e7443`  
		Last Modified: Sat, 24 Jun 2017 21:26:11 GMT  
		Size: 2.1 KB (2071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e025bc8872f6df52f89826f3bd4300771177bcd0268a5b091bbe11e52d62634d`  
		Last Modified: Sat, 24 Jun 2017 21:26:12 GMT  
		Size: 983.2 KB (983160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1421edb21792c204500c3ec5f066ba188cc0bd367ade6edcf73cf915435bae78`  
		Last Modified: Sat, 24 Jun 2017 21:30:53 GMT  
		Size: 4.2 MB (4173503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fdaf801c95a64860a5033743dad55f2b4392aafd457784791460bd3b5d19a7c`  
		Last Modified: Sat, 24 Jun 2017 21:30:53 GMT  
		Size: 5.0 MB (5019751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b0361b3087b3ba0038b343f9d38a36e1c833516bbc5111c7e8921b3a044dc68`  
		Last Modified: Sat, 24 Jun 2017 21:30:52 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760c1792ae409d5f26492c5bdb46d2ef178512513c046bc4526e6a908d70eaa7`  
		Last Modified: Sat, 24 Jun 2017 21:30:52 GMT  
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

## `redis:4.0.0`

```console
$ docker pull redis@sha256:c2a9a89edc0902356955f14c947c4b16e67a18316210515641e24842b63078bb
```

-	Platforms:
	-	linux; amd64

### `redis:4.0.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39176155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1b99da73d055b844d483b1dd814b7b882c6cb4551e5de8ef165bbbf9a96cdb0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 05:44:34 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 23 Jun 2017 05:44:35 GMT
ENV GOSU_VERSION=1.10
# Fri, 23 Jun 2017 05:44:57 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 14 Jul 2017 19:50:28 GMT
ENV REDIS_VERSION=4.0.0
# Fri, 14 Jul 2017 19:50:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.0.tar.gz
# Fri, 14 Jul 2017 19:50:29 GMT
ENV REDIS_DOWNLOAD_SHA=d539ae309295721d5c3ed7298939645b6f86ab5d25fdf2a0352ab575c159df2d
# Fri, 14 Jul 2017 19:51:13 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 14 Jul 2017 19:51:14 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 14 Jul 2017 19:51:14 GMT
VOLUME [/data]
# Fri, 14 Jul 2017 19:51:15 GMT
WORKDIR /data
# Fri, 14 Jul 2017 19:51:16 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 14 Jul 2017 19:51:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 19:51:17 GMT
EXPOSE 6379/tcp
# Fri, 14 Jul 2017 19:51:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc25ed18e877d43401da85c64188e58d30d84158be61b7c2a380e487c2e7443`  
		Last Modified: Sat, 24 Jun 2017 21:26:11 GMT  
		Size: 2.1 KB (2071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e025bc8872f6df52f89826f3bd4300771177bcd0268a5b091bbe11e52d62634d`  
		Last Modified: Sat, 24 Jun 2017 21:26:12 GMT  
		Size: 983.2 KB (983160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9561c3f55930da062b46c44a91ef719baf7a019dbd319cc158b808f824144075`  
		Last Modified: Fri, 14 Jul 2017 19:54:43 GMT  
		Size: 8.1 MB (8060136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:592ed969e475fe20f924f421049e83c28bcad9c69b7a194f15e1c7b7a9dfc247`  
		Last Modified: Fri, 14 Jul 2017 19:54:41 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1864173810379f9e0a0ef37fdf6c8bba7162b9c265f35b8d31d0525e3299401d`  
		Last Modified: Fri, 14 Jul 2017 19:54:41 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0`

```console
$ docker pull redis@sha256:c2a9a89edc0902356955f14c947c4b16e67a18316210515641e24842b63078bb
```

-	Platforms:
	-	linux; amd64

### `redis:4.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39176155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1b99da73d055b844d483b1dd814b7b882c6cb4551e5de8ef165bbbf9a96cdb0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 05:44:34 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 23 Jun 2017 05:44:35 GMT
ENV GOSU_VERSION=1.10
# Fri, 23 Jun 2017 05:44:57 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 14 Jul 2017 19:50:28 GMT
ENV REDIS_VERSION=4.0.0
# Fri, 14 Jul 2017 19:50:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.0.tar.gz
# Fri, 14 Jul 2017 19:50:29 GMT
ENV REDIS_DOWNLOAD_SHA=d539ae309295721d5c3ed7298939645b6f86ab5d25fdf2a0352ab575c159df2d
# Fri, 14 Jul 2017 19:51:13 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 14 Jul 2017 19:51:14 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 14 Jul 2017 19:51:14 GMT
VOLUME [/data]
# Fri, 14 Jul 2017 19:51:15 GMT
WORKDIR /data
# Fri, 14 Jul 2017 19:51:16 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 14 Jul 2017 19:51:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 19:51:17 GMT
EXPOSE 6379/tcp
# Fri, 14 Jul 2017 19:51:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc25ed18e877d43401da85c64188e58d30d84158be61b7c2a380e487c2e7443`  
		Last Modified: Sat, 24 Jun 2017 21:26:11 GMT  
		Size: 2.1 KB (2071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e025bc8872f6df52f89826f3bd4300771177bcd0268a5b091bbe11e52d62634d`  
		Last Modified: Sat, 24 Jun 2017 21:26:12 GMT  
		Size: 983.2 KB (983160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9561c3f55930da062b46c44a91ef719baf7a019dbd319cc158b808f824144075`  
		Last Modified: Fri, 14 Jul 2017 19:54:43 GMT  
		Size: 8.1 MB (8060136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:592ed969e475fe20f924f421049e83c28bcad9c69b7a194f15e1c7b7a9dfc247`  
		Last Modified: Fri, 14 Jul 2017 19:54:41 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1864173810379f9e0a0ef37fdf6c8bba7162b9c265f35b8d31d0525e3299401d`  
		Last Modified: Fri, 14 Jul 2017 19:54:41 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4`

```console
$ docker pull redis@sha256:c2a9a89edc0902356955f14c947c4b16e67a18316210515641e24842b63078bb
```

-	Platforms:
	-	linux; amd64

### `redis:4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39176155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1b99da73d055b844d483b1dd814b7b882c6cb4551e5de8ef165bbbf9a96cdb0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 05:44:34 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 23 Jun 2017 05:44:35 GMT
ENV GOSU_VERSION=1.10
# Fri, 23 Jun 2017 05:44:57 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 14 Jul 2017 19:50:28 GMT
ENV REDIS_VERSION=4.0.0
# Fri, 14 Jul 2017 19:50:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.0.tar.gz
# Fri, 14 Jul 2017 19:50:29 GMT
ENV REDIS_DOWNLOAD_SHA=d539ae309295721d5c3ed7298939645b6f86ab5d25fdf2a0352ab575c159df2d
# Fri, 14 Jul 2017 19:51:13 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 14 Jul 2017 19:51:14 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 14 Jul 2017 19:51:14 GMT
VOLUME [/data]
# Fri, 14 Jul 2017 19:51:15 GMT
WORKDIR /data
# Fri, 14 Jul 2017 19:51:16 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 14 Jul 2017 19:51:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 19:51:17 GMT
EXPOSE 6379/tcp
# Fri, 14 Jul 2017 19:51:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc25ed18e877d43401da85c64188e58d30d84158be61b7c2a380e487c2e7443`  
		Last Modified: Sat, 24 Jun 2017 21:26:11 GMT  
		Size: 2.1 KB (2071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e025bc8872f6df52f89826f3bd4300771177bcd0268a5b091bbe11e52d62634d`  
		Last Modified: Sat, 24 Jun 2017 21:26:12 GMT  
		Size: 983.2 KB (983160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9561c3f55930da062b46c44a91ef719baf7a019dbd319cc158b808f824144075`  
		Last Modified: Fri, 14 Jul 2017 19:54:43 GMT  
		Size: 8.1 MB (8060136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:592ed969e475fe20f924f421049e83c28bcad9c69b7a194f15e1c7b7a9dfc247`  
		Last Modified: Fri, 14 Jul 2017 19:54:41 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1864173810379f9e0a0ef37fdf6c8bba7162b9c265f35b8d31d0525e3299401d`  
		Last Modified: Fri, 14 Jul 2017 19:54:41 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:latest`

```console
$ docker pull redis@sha256:c2a9a89edc0902356955f14c947c4b16e67a18316210515641e24842b63078bb
```

-	Platforms:
	-	linux; amd64

### `redis:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39176155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1b99da73d055b844d483b1dd814b7b882c6cb4551e5de8ef165bbbf9a96cdb0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 05:44:34 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 23 Jun 2017 05:44:35 GMT
ENV GOSU_VERSION=1.10
# Fri, 23 Jun 2017 05:44:57 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 14 Jul 2017 19:50:28 GMT
ENV REDIS_VERSION=4.0.0
# Fri, 14 Jul 2017 19:50:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.0.tar.gz
# Fri, 14 Jul 2017 19:50:29 GMT
ENV REDIS_DOWNLOAD_SHA=d539ae309295721d5c3ed7298939645b6f86ab5d25fdf2a0352ab575c159df2d
# Fri, 14 Jul 2017 19:51:13 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 14 Jul 2017 19:51:14 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 14 Jul 2017 19:51:14 GMT
VOLUME [/data]
# Fri, 14 Jul 2017 19:51:15 GMT
WORKDIR /data
# Fri, 14 Jul 2017 19:51:16 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 14 Jul 2017 19:51:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 19:51:17 GMT
EXPOSE 6379/tcp
# Fri, 14 Jul 2017 19:51:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc25ed18e877d43401da85c64188e58d30d84158be61b7c2a380e487c2e7443`  
		Last Modified: Sat, 24 Jun 2017 21:26:11 GMT  
		Size: 2.1 KB (2071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e025bc8872f6df52f89826f3bd4300771177bcd0268a5b091bbe11e52d62634d`  
		Last Modified: Sat, 24 Jun 2017 21:26:12 GMT  
		Size: 983.2 KB (983160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9561c3f55930da062b46c44a91ef719baf7a019dbd319cc158b808f824144075`  
		Last Modified: Fri, 14 Jul 2017 19:54:43 GMT  
		Size: 8.1 MB (8060136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:592ed969e475fe20f924f421049e83c28bcad9c69b7a194f15e1c7b7a9dfc247`  
		Last Modified: Fri, 14 Jul 2017 19:54:41 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1864173810379f9e0a0ef37fdf6c8bba7162b9c265f35b8d31d0525e3299401d`  
		Last Modified: Fri, 14 Jul 2017 19:54:41 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.0-32bit`

```console
$ docker pull redis@sha256:02e266ac296a022db559574b0b040c1c7cc54041789014436e0ac130a19182b5
```

-	Platforms:
	-	linux; amd64

### `redis:4.0.0-32bit` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.6 MB (42569592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7583cc66c9f22bd1a90a71c06ea48ccdd0152ace7b29277bcc7889bd28acf5b4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 05:44:34 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 23 Jun 2017 05:44:35 GMT
ENV GOSU_VERSION=1.10
# Fri, 23 Jun 2017 05:44:57 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 14 Jul 2017 19:50:28 GMT
ENV REDIS_VERSION=4.0.0
# Fri, 14 Jul 2017 19:50:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.0.tar.gz
# Fri, 14 Jul 2017 19:50:29 GMT
ENV REDIS_DOWNLOAD_SHA=d539ae309295721d5c3ed7298939645b6f86ab5d25fdf2a0352ab575c159df2d
# Fri, 14 Jul 2017 19:51:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Jul 2017 19:52:18 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 14 Jul 2017 19:52:19 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 14 Jul 2017 19:52:19 GMT
VOLUME [/data]
# Fri, 14 Jul 2017 19:52:20 GMT
WORKDIR /data
# Fri, 14 Jul 2017 19:52:21 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 14 Jul 2017 19:52:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 19:52:22 GMT
EXPOSE 6379/tcp
# Fri, 14 Jul 2017 19:52:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc25ed18e877d43401da85c64188e58d30d84158be61b7c2a380e487c2e7443`  
		Last Modified: Sat, 24 Jun 2017 21:26:11 GMT  
		Size: 2.1 KB (2071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e025bc8872f6df52f89826f3bd4300771177bcd0268a5b091bbe11e52d62634d`  
		Last Modified: Sat, 24 Jun 2017 21:26:12 GMT  
		Size: 983.2 KB (983160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63bbafe125d9bb51ae1f430cceac55309b3a0c945fdf3aa436f71c0f1146dee3`  
		Last Modified: Fri, 14 Jul 2017 19:55:25 GMT  
		Size: 4.2 MB (4173549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c897e92ceded42e48e30520c675d679900abbf492d5c01a9cc3a5e93117af1ec`  
		Last Modified: Fri, 14 Jul 2017 19:55:26 GMT  
		Size: 7.3 MB (7280028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:733ece64a2667240b23b38f4d7d59bdcd3211cdb90b647a5da1eb2326f285f16`  
		Last Modified: Fri, 14 Jul 2017 19:55:25 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b09043882cce7a3a993169af408fb4b5fe8cc96626b78540879671a20df7f8`  
		Last Modified: Fri, 14 Jul 2017 19:55:25 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-32bit`

```console
$ docker pull redis@sha256:02e266ac296a022db559574b0b040c1c7cc54041789014436e0ac130a19182b5
```

-	Platforms:
	-	linux; amd64

### `redis:4.0-32bit` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.6 MB (42569592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7583cc66c9f22bd1a90a71c06ea48ccdd0152ace7b29277bcc7889bd28acf5b4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 05:44:34 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 23 Jun 2017 05:44:35 GMT
ENV GOSU_VERSION=1.10
# Fri, 23 Jun 2017 05:44:57 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 14 Jul 2017 19:50:28 GMT
ENV REDIS_VERSION=4.0.0
# Fri, 14 Jul 2017 19:50:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.0.tar.gz
# Fri, 14 Jul 2017 19:50:29 GMT
ENV REDIS_DOWNLOAD_SHA=d539ae309295721d5c3ed7298939645b6f86ab5d25fdf2a0352ab575c159df2d
# Fri, 14 Jul 2017 19:51:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Jul 2017 19:52:18 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 14 Jul 2017 19:52:19 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 14 Jul 2017 19:52:19 GMT
VOLUME [/data]
# Fri, 14 Jul 2017 19:52:20 GMT
WORKDIR /data
# Fri, 14 Jul 2017 19:52:21 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 14 Jul 2017 19:52:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 19:52:22 GMT
EXPOSE 6379/tcp
# Fri, 14 Jul 2017 19:52:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc25ed18e877d43401da85c64188e58d30d84158be61b7c2a380e487c2e7443`  
		Last Modified: Sat, 24 Jun 2017 21:26:11 GMT  
		Size: 2.1 KB (2071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e025bc8872f6df52f89826f3bd4300771177bcd0268a5b091bbe11e52d62634d`  
		Last Modified: Sat, 24 Jun 2017 21:26:12 GMT  
		Size: 983.2 KB (983160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63bbafe125d9bb51ae1f430cceac55309b3a0c945fdf3aa436f71c0f1146dee3`  
		Last Modified: Fri, 14 Jul 2017 19:55:25 GMT  
		Size: 4.2 MB (4173549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c897e92ceded42e48e30520c675d679900abbf492d5c01a9cc3a5e93117af1ec`  
		Last Modified: Fri, 14 Jul 2017 19:55:26 GMT  
		Size: 7.3 MB (7280028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:733ece64a2667240b23b38f4d7d59bdcd3211cdb90b647a5da1eb2326f285f16`  
		Last Modified: Fri, 14 Jul 2017 19:55:25 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b09043882cce7a3a993169af408fb4b5fe8cc96626b78540879671a20df7f8`  
		Last Modified: Fri, 14 Jul 2017 19:55:25 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-32bit`

```console
$ docker pull redis@sha256:02e266ac296a022db559574b0b040c1c7cc54041789014436e0ac130a19182b5
```

-	Platforms:
	-	linux; amd64

### `redis:4-32bit` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.6 MB (42569592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7583cc66c9f22bd1a90a71c06ea48ccdd0152ace7b29277bcc7889bd28acf5b4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 05:44:34 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 23 Jun 2017 05:44:35 GMT
ENV GOSU_VERSION=1.10
# Fri, 23 Jun 2017 05:44:57 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 14 Jul 2017 19:50:28 GMT
ENV REDIS_VERSION=4.0.0
# Fri, 14 Jul 2017 19:50:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.0.tar.gz
# Fri, 14 Jul 2017 19:50:29 GMT
ENV REDIS_DOWNLOAD_SHA=d539ae309295721d5c3ed7298939645b6f86ab5d25fdf2a0352ab575c159df2d
# Fri, 14 Jul 2017 19:51:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Jul 2017 19:52:18 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 14 Jul 2017 19:52:19 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 14 Jul 2017 19:52:19 GMT
VOLUME [/data]
# Fri, 14 Jul 2017 19:52:20 GMT
WORKDIR /data
# Fri, 14 Jul 2017 19:52:21 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 14 Jul 2017 19:52:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 19:52:22 GMT
EXPOSE 6379/tcp
# Fri, 14 Jul 2017 19:52:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc25ed18e877d43401da85c64188e58d30d84158be61b7c2a380e487c2e7443`  
		Last Modified: Sat, 24 Jun 2017 21:26:11 GMT  
		Size: 2.1 KB (2071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e025bc8872f6df52f89826f3bd4300771177bcd0268a5b091bbe11e52d62634d`  
		Last Modified: Sat, 24 Jun 2017 21:26:12 GMT  
		Size: 983.2 KB (983160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63bbafe125d9bb51ae1f430cceac55309b3a0c945fdf3aa436f71c0f1146dee3`  
		Last Modified: Fri, 14 Jul 2017 19:55:25 GMT  
		Size: 4.2 MB (4173549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c897e92ceded42e48e30520c675d679900abbf492d5c01a9cc3a5e93117af1ec`  
		Last Modified: Fri, 14 Jul 2017 19:55:26 GMT  
		Size: 7.3 MB (7280028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:733ece64a2667240b23b38f4d7d59bdcd3211cdb90b647a5da1eb2326f285f16`  
		Last Modified: Fri, 14 Jul 2017 19:55:25 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b09043882cce7a3a993169af408fb4b5fe8cc96626b78540879671a20df7f8`  
		Last Modified: Fri, 14 Jul 2017 19:55:25 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:32bit`

```console
$ docker pull redis@sha256:02e266ac296a022db559574b0b040c1c7cc54041789014436e0ac130a19182b5
```

-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.6 MB (42569592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7583cc66c9f22bd1a90a71c06ea48ccdd0152ace7b29277bcc7889bd28acf5b4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 05:44:34 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 23 Jun 2017 05:44:35 GMT
ENV GOSU_VERSION=1.10
# Fri, 23 Jun 2017 05:44:57 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 14 Jul 2017 19:50:28 GMT
ENV REDIS_VERSION=4.0.0
# Fri, 14 Jul 2017 19:50:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.0.tar.gz
# Fri, 14 Jul 2017 19:50:29 GMT
ENV REDIS_DOWNLOAD_SHA=d539ae309295721d5c3ed7298939645b6f86ab5d25fdf2a0352ab575c159df2d
# Fri, 14 Jul 2017 19:51:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Jul 2017 19:52:18 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 14 Jul 2017 19:52:19 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 14 Jul 2017 19:52:19 GMT
VOLUME [/data]
# Fri, 14 Jul 2017 19:52:20 GMT
WORKDIR /data
# Fri, 14 Jul 2017 19:52:21 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 14 Jul 2017 19:52:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 19:52:22 GMT
EXPOSE 6379/tcp
# Fri, 14 Jul 2017 19:52:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc25ed18e877d43401da85c64188e58d30d84158be61b7c2a380e487c2e7443`  
		Last Modified: Sat, 24 Jun 2017 21:26:11 GMT  
		Size: 2.1 KB (2071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e025bc8872f6df52f89826f3bd4300771177bcd0268a5b091bbe11e52d62634d`  
		Last Modified: Sat, 24 Jun 2017 21:26:12 GMT  
		Size: 983.2 KB (983160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63bbafe125d9bb51ae1f430cceac55309b3a0c945fdf3aa436f71c0f1146dee3`  
		Last Modified: Fri, 14 Jul 2017 19:55:25 GMT  
		Size: 4.2 MB (4173549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c897e92ceded42e48e30520c675d679900abbf492d5c01a9cc3a5e93117af1ec`  
		Last Modified: Fri, 14 Jul 2017 19:55:26 GMT  
		Size: 7.3 MB (7280028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:733ece64a2667240b23b38f4d7d59bdcd3211cdb90b647a5da1eb2326f285f16`  
		Last Modified: Fri, 14 Jul 2017 19:55:25 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b09043882cce7a3a993169af408fb4b5fe8cc96626b78540879671a20df7f8`  
		Last Modified: Fri, 14 Jul 2017 19:55:25 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.0-alpine`

```console
$ docker pull redis@sha256:67c6760513424f2512fd47912b3d21183e989f9299cc158f53fac37571e427e6
```

-	Platforms:
	-	linux; amd64

### `redis:4.0.0-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10462401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fedae67fbf45fed9997bce664141f225ff931373b11c6095131339fe4afd4bf`
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
# Fri, 14 Jul 2017 19:52:30 GMT
ENV REDIS_VERSION=4.0.0
# Fri, 14 Jul 2017 19:52:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.0.tar.gz
# Fri, 14 Jul 2017 19:52:32 GMT
ENV REDIS_DOWNLOAD_SHA=d539ae309295721d5c3ed7298939645b6f86ab5d25fdf2a0352ab575c159df2d
# Fri, 14 Jul 2017 19:52:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Fri, 14 Jul 2017 19:52:59 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 14 Jul 2017 19:53:00 GMT
VOLUME [/data]
# Fri, 14 Jul 2017 19:53:01 GMT
WORKDIR /data
# Fri, 14 Jul 2017 19:53:01 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 14 Jul 2017 19:53:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 19:53:03 GMT
EXPOSE 6379/tcp
# Fri, 14 Jul 2017 19:53:03 GMT
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
	-	`sha256:d1045fb5418a5367a45bbc3a40f8f9b0667de9304e07ba36425a43d80a1fb461`  
		Last Modified: Fri, 14 Jul 2017 19:56:10 GMT  
		Size: 8.5 MB (8462095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6857b28dd4359a6307366c6d8ba765d0c668c535fe4545b0512cf2fb299eeeaf`  
		Last Modified: Fri, 14 Jul 2017 19:56:09 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4c40a02aad1514cfe4fd43a187ce2624e9b1135ffd6f012e7c876c73bbe572`  
		Last Modified: Fri, 14 Jul 2017 19:56:08 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-alpine`

```console
$ docker pull redis@sha256:67c6760513424f2512fd47912b3d21183e989f9299cc158f53fac37571e427e6
```

-	Platforms:
	-	linux; amd64

### `redis:4.0-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10462401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fedae67fbf45fed9997bce664141f225ff931373b11c6095131339fe4afd4bf`
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
# Fri, 14 Jul 2017 19:52:30 GMT
ENV REDIS_VERSION=4.0.0
# Fri, 14 Jul 2017 19:52:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.0.tar.gz
# Fri, 14 Jul 2017 19:52:32 GMT
ENV REDIS_DOWNLOAD_SHA=d539ae309295721d5c3ed7298939645b6f86ab5d25fdf2a0352ab575c159df2d
# Fri, 14 Jul 2017 19:52:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Fri, 14 Jul 2017 19:52:59 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 14 Jul 2017 19:53:00 GMT
VOLUME [/data]
# Fri, 14 Jul 2017 19:53:01 GMT
WORKDIR /data
# Fri, 14 Jul 2017 19:53:01 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 14 Jul 2017 19:53:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 19:53:03 GMT
EXPOSE 6379/tcp
# Fri, 14 Jul 2017 19:53:03 GMT
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
	-	`sha256:d1045fb5418a5367a45bbc3a40f8f9b0667de9304e07ba36425a43d80a1fb461`  
		Last Modified: Fri, 14 Jul 2017 19:56:10 GMT  
		Size: 8.5 MB (8462095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6857b28dd4359a6307366c6d8ba765d0c668c535fe4545b0512cf2fb299eeeaf`  
		Last Modified: Fri, 14 Jul 2017 19:56:09 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4c40a02aad1514cfe4fd43a187ce2624e9b1135ffd6f012e7c876c73bbe572`  
		Last Modified: Fri, 14 Jul 2017 19:56:08 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-alpine`

```console
$ docker pull redis@sha256:67c6760513424f2512fd47912b3d21183e989f9299cc158f53fac37571e427e6
```

-	Platforms:
	-	linux; amd64

### `redis:4-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10462401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fedae67fbf45fed9997bce664141f225ff931373b11c6095131339fe4afd4bf`
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
# Fri, 14 Jul 2017 19:52:30 GMT
ENV REDIS_VERSION=4.0.0
# Fri, 14 Jul 2017 19:52:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.0.tar.gz
# Fri, 14 Jul 2017 19:52:32 GMT
ENV REDIS_DOWNLOAD_SHA=d539ae309295721d5c3ed7298939645b6f86ab5d25fdf2a0352ab575c159df2d
# Fri, 14 Jul 2017 19:52:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Fri, 14 Jul 2017 19:52:59 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 14 Jul 2017 19:53:00 GMT
VOLUME [/data]
# Fri, 14 Jul 2017 19:53:01 GMT
WORKDIR /data
# Fri, 14 Jul 2017 19:53:01 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 14 Jul 2017 19:53:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 19:53:03 GMT
EXPOSE 6379/tcp
# Fri, 14 Jul 2017 19:53:03 GMT
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
	-	`sha256:d1045fb5418a5367a45bbc3a40f8f9b0667de9304e07ba36425a43d80a1fb461`  
		Last Modified: Fri, 14 Jul 2017 19:56:10 GMT  
		Size: 8.5 MB (8462095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6857b28dd4359a6307366c6d8ba765d0c668c535fe4545b0512cf2fb299eeeaf`  
		Last Modified: Fri, 14 Jul 2017 19:56:09 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4c40a02aad1514cfe4fd43a187ce2624e9b1135ffd6f012e7c876c73bbe572`  
		Last Modified: Fri, 14 Jul 2017 19:56:08 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine`

```console
$ docker pull redis@sha256:67c6760513424f2512fd47912b3d21183e989f9299cc158f53fac37571e427e6
```

-	Platforms:
	-	linux; amd64

### `redis:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10462401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fedae67fbf45fed9997bce664141f225ff931373b11c6095131339fe4afd4bf`
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
# Fri, 14 Jul 2017 19:52:30 GMT
ENV REDIS_VERSION=4.0.0
# Fri, 14 Jul 2017 19:52:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.0.tar.gz
# Fri, 14 Jul 2017 19:52:32 GMT
ENV REDIS_DOWNLOAD_SHA=d539ae309295721d5c3ed7298939645b6f86ab5d25fdf2a0352ab575c159df2d
# Fri, 14 Jul 2017 19:52:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Fri, 14 Jul 2017 19:52:59 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 14 Jul 2017 19:53:00 GMT
VOLUME [/data]
# Fri, 14 Jul 2017 19:53:01 GMT
WORKDIR /data
# Fri, 14 Jul 2017 19:53:01 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 14 Jul 2017 19:53:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 19:53:03 GMT
EXPOSE 6379/tcp
# Fri, 14 Jul 2017 19:53:03 GMT
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
	-	`sha256:d1045fb5418a5367a45bbc3a40f8f9b0667de9304e07ba36425a43d80a1fb461`  
		Last Modified: Fri, 14 Jul 2017 19:56:10 GMT  
		Size: 8.5 MB (8462095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6857b28dd4359a6307366c6d8ba765d0c668c535fe4545b0512cf2fb299eeeaf`  
		Last Modified: Fri, 14 Jul 2017 19:56:09 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4c40a02aad1514cfe4fd43a187ce2624e9b1135ffd6f012e7c876c73bbe572`  
		Last Modified: Fri, 14 Jul 2017 19:56:08 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
