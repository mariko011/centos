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
$ docker pull redis@sha256:730b765df9fe96af414da64a2b67f3a5f70b8fd13a31e5096fee4807ed802e20
```

-	Platforms:
	-	linux; amd64

### `redis:3.0.7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34124680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c44fa74ead882d6417e2736700dce8fdef2f12849d45f9f92023cf1d319a9ee4`
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
# Fri, 23 Jun 2017 05:44:57 GMT
ENV REDIS_VERSION=3.0.7
# Fri, 23 Jun 2017 05:44:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Fri, 23 Jun 2017 05:44:59 GMT
ENV REDIS_DOWNLOAD_SHA=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Fri, 23 Jun 2017 05:45:33 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Jun 2017 05:45:34 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 23 Jun 2017 05:45:35 GMT
VOLUME [/data]
# Fri, 23 Jun 2017 05:45:36 GMT
WORKDIR /data
# Fri, 23 Jun 2017 05:45:37 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 23 Jun 2017 05:45:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 23 Jun 2017 05:45:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 05:45:40 GMT
EXPOSE 6379/tcp
# Fri, 23 Jun 2017 05:45:41 GMT
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
	-	`sha256:77c68b51b836245e7f8f2454f1de9dcc743afb1b316ba22dd35375fdf4654386`  
		Last Modified: Sat, 24 Jun 2017 21:26:12 GMT  
		Size: 3.0 MB (3008545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c403ece3755ee9c08cfc4beaca65fe8e453a0d3cdff9beb4b0488aa9b5e2891`  
		Last Modified: Sat, 24 Jun 2017 21:26:11 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a653bd338f41b1181c6c2121a39430e179d12f63a8b7c109322404cace2f5eb`  
		Last Modified: Sat, 24 Jun 2017 21:26:11 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31531fd948c61899144f48f39bfb5b3e61031eae834f2a68f89599cc9e327cbf`  
		Last Modified: Sat, 24 Jun 2017 21:26:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0`

```console
$ docker pull redis@sha256:730b765df9fe96af414da64a2b67f3a5f70b8fd13a31e5096fee4807ed802e20
```

-	Platforms:
	-	linux; amd64

### `redis:3.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34124680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c44fa74ead882d6417e2736700dce8fdef2f12849d45f9f92023cf1d319a9ee4`
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
# Fri, 23 Jun 2017 05:44:57 GMT
ENV REDIS_VERSION=3.0.7
# Fri, 23 Jun 2017 05:44:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Fri, 23 Jun 2017 05:44:59 GMT
ENV REDIS_DOWNLOAD_SHA=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Fri, 23 Jun 2017 05:45:33 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Jun 2017 05:45:34 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 23 Jun 2017 05:45:35 GMT
VOLUME [/data]
# Fri, 23 Jun 2017 05:45:36 GMT
WORKDIR /data
# Fri, 23 Jun 2017 05:45:37 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 23 Jun 2017 05:45:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 23 Jun 2017 05:45:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 05:45:40 GMT
EXPOSE 6379/tcp
# Fri, 23 Jun 2017 05:45:41 GMT
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
	-	`sha256:77c68b51b836245e7f8f2454f1de9dcc743afb1b316ba22dd35375fdf4654386`  
		Last Modified: Sat, 24 Jun 2017 21:26:12 GMT  
		Size: 3.0 MB (3008545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c403ece3755ee9c08cfc4beaca65fe8e453a0d3cdff9beb4b0488aa9b5e2891`  
		Last Modified: Sat, 24 Jun 2017 21:26:11 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a653bd338f41b1181c6c2121a39430e179d12f63a8b7c109322404cace2f5eb`  
		Last Modified: Sat, 24 Jun 2017 21:26:11 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31531fd948c61899144f48f39bfb5b3e61031eae834f2a68f89599cc9e327cbf`  
		Last Modified: Sat, 24 Jun 2017 21:26:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0.7-32bit`

```console
$ docker pull redis@sha256:9073f09ce4d6f8281146bc30e39b4eb8d648eb7bdac26383b35a4f967c9834d3
```

-	Platforms:
	-	linux; amd64

### `redis:3.0.7-32bit` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (38016759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:460def4361894ce1997f3c346a54f935c40b0acec66108951cd71c5012fc828c`
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
# Fri, 23 Jun 2017 05:44:57 GMT
ENV REDIS_VERSION=3.0.7
# Fri, 23 Jun 2017 05:44:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Fri, 23 Jun 2017 05:44:59 GMT
ENV REDIS_DOWNLOAD_SHA=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Fri, 23 Jun 2017 05:46:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:46:53 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Jun 2017 05:46:55 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 23 Jun 2017 05:46:56 GMT
VOLUME [/data]
# Fri, 23 Jun 2017 05:46:57 GMT
WORKDIR /data
# Fri, 23 Jun 2017 05:46:58 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 23 Jun 2017 05:47:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 23 Jun 2017 05:47:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 05:47:02 GMT
EXPOSE 6379/tcp
# Fri, 23 Jun 2017 05:47:02 GMT
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
	-	`sha256:fee00a87f0b86b3a716f03a59705d2143e6ba8e0e1b8d98df84ab1e22c9f813a`  
		Last Modified: Sat, 24 Jun 2017 21:27:10 GMT  
		Size: 4.2 MB (4173520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8739930acac41ae82a0bd45fa68ff188ebe9edc6ea25c2126a02a872d660706`  
		Last Modified: Sat, 24 Jun 2017 21:27:10 GMT  
		Size: 2.7 MB (2727101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c221cc17824237ee27b877755b97128094076f860ee42fd6dfc130d35e89a4c`  
		Last Modified: Sat, 24 Jun 2017 21:27:09 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa114727f11c177065f76621d37e578a5f14f5484ba3f7242692c43859b8743`  
		Last Modified: Sat, 24 Jun 2017 21:27:09 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ddefe47d646524c41338cebedb36d3b614fb3fe88f62e78dcb6afb6a6fdb664`  
		Last Modified: Sat, 24 Jun 2017 21:27:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0-32bit`

```console
$ docker pull redis@sha256:9073f09ce4d6f8281146bc30e39b4eb8d648eb7bdac26383b35a4f967c9834d3
```

-	Platforms:
	-	linux; amd64

### `redis:3.0-32bit` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (38016759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:460def4361894ce1997f3c346a54f935c40b0acec66108951cd71c5012fc828c`
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
# Fri, 23 Jun 2017 05:44:57 GMT
ENV REDIS_VERSION=3.0.7
# Fri, 23 Jun 2017 05:44:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Fri, 23 Jun 2017 05:44:59 GMT
ENV REDIS_DOWNLOAD_SHA=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Fri, 23 Jun 2017 05:46:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:46:53 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Jun 2017 05:46:55 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 23 Jun 2017 05:46:56 GMT
VOLUME [/data]
# Fri, 23 Jun 2017 05:46:57 GMT
WORKDIR /data
# Fri, 23 Jun 2017 05:46:58 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 23 Jun 2017 05:47:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 23 Jun 2017 05:47:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 05:47:02 GMT
EXPOSE 6379/tcp
# Fri, 23 Jun 2017 05:47:02 GMT
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
	-	`sha256:fee00a87f0b86b3a716f03a59705d2143e6ba8e0e1b8d98df84ab1e22c9f813a`  
		Last Modified: Sat, 24 Jun 2017 21:27:10 GMT  
		Size: 4.2 MB (4173520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8739930acac41ae82a0bd45fa68ff188ebe9edc6ea25c2126a02a872d660706`  
		Last Modified: Sat, 24 Jun 2017 21:27:10 GMT  
		Size: 2.7 MB (2727101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c221cc17824237ee27b877755b97128094076f860ee42fd6dfc130d35e89a4c`  
		Last Modified: Sat, 24 Jun 2017 21:27:09 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa114727f11c177065f76621d37e578a5f14f5484ba3f7242692c43859b8743`  
		Last Modified: Sat, 24 Jun 2017 21:27:09 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ddefe47d646524c41338cebedb36d3b614fb3fe88f62e78dcb6afb6a6fdb664`  
		Last Modified: Sat, 24 Jun 2017 21:27:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0.7-alpine`

```console
$ docker pull redis@sha256:350469b395eac82395f9e59d7b7b90f7d23fe0838965e56400739dec3afa60de
```

-	Platforms:
	-	linux; amd64

### `redis:3.0.7-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4953871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:856249f48b0c1a735290ca73026de261a2ffbc57d8903e9ff50c6ed05f669b70`
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
# Wed, 28 Jun 2017 22:15:02 GMT
ENV REDIS_VERSION=3.0.7
# Wed, 28 Jun 2017 22:15:03 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Wed, 28 Jun 2017 22:15:04 GMT
ENV REDIS_DOWNLOAD_SHA=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Wed, 28 Jun 2017 22:15:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Wed, 28 Jun 2017 22:15:28 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Jun 2017 22:15:29 GMT
VOLUME [/data]
# Wed, 28 Jun 2017 22:15:30 GMT
WORKDIR /data
# Wed, 28 Jun 2017 22:15:31 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 28 Jun 2017 22:15:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 28 Jun 2017 22:15:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 22:15:34 GMT
EXPOSE 6379/tcp
# Wed, 28 Jun 2017 22:15:35 GMT
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
	-	`sha256:3abddb8060d4ff813878f744f7ef0e8d14af6f070104956dded858ab32794160`  
		Last Modified: Fri, 30 Jun 2017 00:51:25 GMT  
		Size: 3.0 MB (2953447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee13920fd7ae1cabb14c02ddb867dc330565dc22a3caae8a9e101e419a37646`  
		Last Modified: Fri, 30 Jun 2017 00:51:26 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deee6425d448c049f204a3366e1cf73bc8bb867643a01e8133ef634afc4232ec`  
		Last Modified: Fri, 30 Jun 2017 00:51:24 GMT  
		Size: 389.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d96171668fcaa6bdd57e4a0d0ac753d8e4f0a1f97e7403114913d766ff4972cd`  
		Last Modified: Fri, 30 Jun 2017 00:51:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0-alpine`

```console
$ docker pull redis@sha256:350469b395eac82395f9e59d7b7b90f7d23fe0838965e56400739dec3afa60de
```

-	Platforms:
	-	linux; amd64

### `redis:3.0-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4953871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:856249f48b0c1a735290ca73026de261a2ffbc57d8903e9ff50c6ed05f669b70`
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
# Wed, 28 Jun 2017 22:15:02 GMT
ENV REDIS_VERSION=3.0.7
# Wed, 28 Jun 2017 22:15:03 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Wed, 28 Jun 2017 22:15:04 GMT
ENV REDIS_DOWNLOAD_SHA=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Wed, 28 Jun 2017 22:15:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Wed, 28 Jun 2017 22:15:28 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Jun 2017 22:15:29 GMT
VOLUME [/data]
# Wed, 28 Jun 2017 22:15:30 GMT
WORKDIR /data
# Wed, 28 Jun 2017 22:15:31 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 28 Jun 2017 22:15:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 28 Jun 2017 22:15:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 22:15:34 GMT
EXPOSE 6379/tcp
# Wed, 28 Jun 2017 22:15:35 GMT
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
	-	`sha256:3abddb8060d4ff813878f744f7ef0e8d14af6f070104956dded858ab32794160`  
		Last Modified: Fri, 30 Jun 2017 00:51:25 GMT  
		Size: 3.0 MB (2953447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee13920fd7ae1cabb14c02ddb867dc330565dc22a3caae8a9e101e419a37646`  
		Last Modified: Fri, 30 Jun 2017 00:51:26 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deee6425d448c049f204a3366e1cf73bc8bb867643a01e8133ef634afc4232ec`  
		Last Modified: Fri, 30 Jun 2017 00:51:24 GMT  
		Size: 389.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d96171668fcaa6bdd57e4a0d0ac753d8e4f0a1f97e7403114913d766ff4972cd`  
		Last Modified: Fri, 30 Jun 2017 00:51:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0.504-windowsservercore`

```console
$ docker pull redis@sha256:eba96251db687c29332fe8fbb16808dd76e0163cf5edbe857a24575fb08f3e10
```

-	Platforms:
	-	windows; amd64

### `redis:3.0.504-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 GB (5247519128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a72597c5686bbcad723a8163cdb3a3ffc0edb578fbd84b9b6ff37b2f8cd5ab0`
-	Default Command: `["redis-server.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Wed, 26 Apr 2017 19:30:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jul 2017 18:29:32 GMT
RUN $newPath = ('C:\Redis;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 12 Jul 2017 18:29:35 GMT
ENV REDIS_VERSION=3.0.504
# Wed, 12 Jul 2017 18:29:38 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/MSOpenTech/redis/releases/download/win-3.0.504/Redis-x64-3.0.504.zip
# Wed, 12 Jul 2017 18:30:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:REDIS_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:REDIS_DOWNLOAD_URL -OutFile 'redis.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive redis.zip -DestinationPath C:\Redis; 		Write-Host 'Verifying install ("redis-server --version") ...'; 	redis-server --version; 		Write-Host 'Removing ...'; 	Remove-Item redis.zip -Force
# Wed, 12 Jul 2017 18:30:06 GMT
VOLUME [C:\data]
# Wed, 12 Jul 2017 18:30:09 GMT
WORKDIR C:\data
# Wed, 12 Jul 2017 18:30:11 GMT
EXPOSE 6379/tcp
# Wed, 12 Jul 2017 18:30:14 GMT
CMD ["redis-server.exe"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6d4d50238ed13902c153bc3efc3a22f8a96bca4168ea03624d01da1063728dc2`  
		Size: 1.2 GB (1161902022 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1363e862fdfb51b375f642fff311ab5f16a4e990d8d8c0ef1a0c9b563692b9ff`  
		Last Modified: Wed, 26 Apr 2017 19:51:11 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ea6c032e11a428044834103b9fc29821b4358f7a6b710d8c743dee6236ba25`  
		Last Modified: Wed, 12 Jul 2017 19:03:30 GMT  
		Size: 5.0 MB (4973578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e60efdb45fc9a1ab5a2fc47f8e2c7df825934247140b59c5c1ba043523c3773c`  
		Last Modified: Wed, 12 Jul 2017 19:03:28 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:713540b1283d6aeb991bc3693c29e8098be3fd60cd58fa86c95f8f1b34157898`  
		Last Modified: Wed, 12 Jul 2017 19:03:29 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7528f1817d12c0eb801d8890a21ecdc3633d4fc37720b7778c7d22c5e9addc5c`  
		Last Modified: Wed, 12 Jul 2017 19:03:28 GMT  
		Size: 10.6 MB (10649092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b673021b810685c0f1e608978ab925ed10c4cf0244db5b68caa9df8edf6f04bc`  
		Last Modified: Wed, 12 Jul 2017 19:03:25 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7909cc39ce210c731e4c7337d5c10e0a5db7bba519a72956c5522f6a0c6ac34`  
		Last Modified: Wed, 12 Jul 2017 19:03:25 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba2fada57b220a60a6a632d14c1697bdc3b3c85390d0e46406642f745f22353`  
		Last Modified: Wed, 12 Jul 2017 19:03:26 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8ec3c83f66fd25f2208a007e24e756ddf20f6d1e6dc2dd74cb50f8a80a4b62`  
		Last Modified: Wed, 12 Jul 2017 19:03:26 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0-windowsservercore`

```console
$ docker pull redis@sha256:eba96251db687c29332fe8fbb16808dd76e0163cf5edbe857a24575fb08f3e10
```

-	Platforms:
	-	windows; amd64

### `redis:3.0-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 GB (5247519128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a72597c5686bbcad723a8163cdb3a3ffc0edb578fbd84b9b6ff37b2f8cd5ab0`
-	Default Command: `["redis-server.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Wed, 26 Apr 2017 19:30:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jul 2017 18:29:32 GMT
RUN $newPath = ('C:\Redis;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 12 Jul 2017 18:29:35 GMT
ENV REDIS_VERSION=3.0.504
# Wed, 12 Jul 2017 18:29:38 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/MSOpenTech/redis/releases/download/win-3.0.504/Redis-x64-3.0.504.zip
# Wed, 12 Jul 2017 18:30:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:REDIS_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:REDIS_DOWNLOAD_URL -OutFile 'redis.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive redis.zip -DestinationPath C:\Redis; 		Write-Host 'Verifying install ("redis-server --version") ...'; 	redis-server --version; 		Write-Host 'Removing ...'; 	Remove-Item redis.zip -Force
# Wed, 12 Jul 2017 18:30:06 GMT
VOLUME [C:\data]
# Wed, 12 Jul 2017 18:30:09 GMT
WORKDIR C:\data
# Wed, 12 Jul 2017 18:30:11 GMT
EXPOSE 6379/tcp
# Wed, 12 Jul 2017 18:30:14 GMT
CMD ["redis-server.exe"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6d4d50238ed13902c153bc3efc3a22f8a96bca4168ea03624d01da1063728dc2`  
		Size: 1.2 GB (1161902022 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1363e862fdfb51b375f642fff311ab5f16a4e990d8d8c0ef1a0c9b563692b9ff`  
		Last Modified: Wed, 26 Apr 2017 19:51:11 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ea6c032e11a428044834103b9fc29821b4358f7a6b710d8c743dee6236ba25`  
		Last Modified: Wed, 12 Jul 2017 19:03:30 GMT  
		Size: 5.0 MB (4973578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e60efdb45fc9a1ab5a2fc47f8e2c7df825934247140b59c5c1ba043523c3773c`  
		Last Modified: Wed, 12 Jul 2017 19:03:28 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:713540b1283d6aeb991bc3693c29e8098be3fd60cd58fa86c95f8f1b34157898`  
		Last Modified: Wed, 12 Jul 2017 19:03:29 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7528f1817d12c0eb801d8890a21ecdc3633d4fc37720b7778c7d22c5e9addc5c`  
		Last Modified: Wed, 12 Jul 2017 19:03:28 GMT  
		Size: 10.6 MB (10649092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b673021b810685c0f1e608978ab925ed10c4cf0244db5b68caa9df8edf6f04bc`  
		Last Modified: Wed, 12 Jul 2017 19:03:25 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7909cc39ce210c731e4c7337d5c10e0a5db7bba519a72956c5522f6a0c6ac34`  
		Last Modified: Wed, 12 Jul 2017 19:03:25 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba2fada57b220a60a6a632d14c1697bdc3b3c85390d0e46406642f745f22353`  
		Last Modified: Wed, 12 Jul 2017 19:03:26 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8ec3c83f66fd25f2208a007e24e756ddf20f6d1e6dc2dd74cb50f8a80a4b62`  
		Last Modified: Wed, 12 Jul 2017 19:03:26 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0.504-nanoserver`

```console
$ docker pull redis@sha256:1703e1f381b517ee02440e8b72a4a524e58ad938c79113147fb9176d8810aef2
```

-	Platforms:
	-	windows; amd64

### `redis:3.0.504-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **376.4 MB (376372136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bea491f533b60c25e5f8ebcd8c535c1aae3a35f49b61acc227af6c8b3638cdfc`
-	Default Command: `["redis-server.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 20 Nov 2016 11:39:18 GMT
RUN Apply image 10.0.14393.0
# Fri, 07 Apr 2017 09:40:17 GMT
RUN Install update 10.0.14393.1066
# Wed, 26 Apr 2017 19:37:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jul 2017 18:30:27 GMT
RUN $newPath = ('C:\Redis;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 12 Jul 2017 18:30:29 GMT
ENV REDIS_VERSION=3.0.504
# Wed, 12 Jul 2017 18:30:32 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/MSOpenTech/redis/releases/download/win-3.0.504/Redis-x64-3.0.504.zip
# Wed, 12 Jul 2017 18:30:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:REDIS_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:REDIS_DOWNLOAD_URL -OutFile 'redis.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive redis.zip -DestinationPath C:\Redis; 		Write-Host 'Verifying install ("redis-server --version") ...'; 	redis-server --version; 		Write-Host 'Removing ...'; 	Remove-Item redis.zip -Force
# Wed, 12 Jul 2017 18:30:50 GMT
VOLUME [C:\data]
# Wed, 12 Jul 2017 18:30:53 GMT
WORKDIR C:\data
# Wed, 12 Jul 2017 18:30:55 GMT
EXPOSE 6379/tcp
# Wed, 12 Jul 2017 18:30:57 GMT
CMD ["redis-server.exe"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a43ac69611f40511708beba10dfe6fbe3e266ca933b6fd49c87a9f31f46f46c`  
		Size: 116.0 MB (116037241 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:acc75acac61e9635ae7c57f4d74b6ac6a2efef41d7b17052ff6f5bc0fb92e960`  
		Last Modified: Wed, 26 Apr 2017 19:51:40 GMT  
		Size: 968.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f17e54c8f52dbb6a5246a2a56f6c9de1762cd61e67319d2484ea2b6367c8f0`  
		Last Modified: Wed, 12 Jul 2017 19:03:44 GMT  
		Size: 873.0 KB (873031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275cffa3f5585958ee7728b4591b9883ab3b49f1a10db88e71758bc21b3ff034`  
		Last Modified: Wed, 12 Jul 2017 19:03:44 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636d9712b454cbbb855a59b3886778f02214b2ae8cbb9a4d858111e91c000e5b`  
		Last Modified: Wed, 12 Jul 2017 19:03:43 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca115997c2aee9eefd027894357c94779bdf57dc64afaa06db14607addd1dfc5`  
		Last Modified: Wed, 12 Jul 2017 19:03:46 GMT  
		Size: 6.8 MB (6764156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9116bd44766ff93b20dac72ff35125552d3c5bcefcf1f3118db0682b51c6df7b`  
		Last Modified: Wed, 12 Jul 2017 19:03:40 GMT  
		Size: 961.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88ee9b2b154750a7bc4e358f4ccd4349f5db0b627e058af7d5b91a6fe59e94a`  
		Last Modified: Wed, 12 Jul 2017 19:03:40 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41cc2d42d714e5f0236e0c2f542075204055f16d73f433f911702c1346c22b30`  
		Last Modified: Wed, 12 Jul 2017 19:03:40 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4bea4a8469cc916690cd8c080b92879a6e88b87df39a7f7e7fd0b362edcda92`  
		Last Modified: Wed, 12 Jul 2017 19:03:40 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0-nanoserver`

```console
$ docker pull redis@sha256:1703e1f381b517ee02440e8b72a4a524e58ad938c79113147fb9176d8810aef2
```

-	Platforms:
	-	windows; amd64

### `redis:3.0-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **376.4 MB (376372136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bea491f533b60c25e5f8ebcd8c535c1aae3a35f49b61acc227af6c8b3638cdfc`
-	Default Command: `["redis-server.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 20 Nov 2016 11:39:18 GMT
RUN Apply image 10.0.14393.0
# Fri, 07 Apr 2017 09:40:17 GMT
RUN Install update 10.0.14393.1066
# Wed, 26 Apr 2017 19:37:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jul 2017 18:30:27 GMT
RUN $newPath = ('C:\Redis;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 12 Jul 2017 18:30:29 GMT
ENV REDIS_VERSION=3.0.504
# Wed, 12 Jul 2017 18:30:32 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/MSOpenTech/redis/releases/download/win-3.0.504/Redis-x64-3.0.504.zip
# Wed, 12 Jul 2017 18:30:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:REDIS_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:REDIS_DOWNLOAD_URL -OutFile 'redis.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive redis.zip -DestinationPath C:\Redis; 		Write-Host 'Verifying install ("redis-server --version") ...'; 	redis-server --version; 		Write-Host 'Removing ...'; 	Remove-Item redis.zip -Force
# Wed, 12 Jul 2017 18:30:50 GMT
VOLUME [C:\data]
# Wed, 12 Jul 2017 18:30:53 GMT
WORKDIR C:\data
# Wed, 12 Jul 2017 18:30:55 GMT
EXPOSE 6379/tcp
# Wed, 12 Jul 2017 18:30:57 GMT
CMD ["redis-server.exe"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a43ac69611f40511708beba10dfe6fbe3e266ca933b6fd49c87a9f31f46f46c`  
		Size: 116.0 MB (116037241 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:acc75acac61e9635ae7c57f4d74b6ac6a2efef41d7b17052ff6f5bc0fb92e960`  
		Last Modified: Wed, 26 Apr 2017 19:51:40 GMT  
		Size: 968.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f17e54c8f52dbb6a5246a2a56f6c9de1762cd61e67319d2484ea2b6367c8f0`  
		Last Modified: Wed, 12 Jul 2017 19:03:44 GMT  
		Size: 873.0 KB (873031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275cffa3f5585958ee7728b4591b9883ab3b49f1a10db88e71758bc21b3ff034`  
		Last Modified: Wed, 12 Jul 2017 19:03:44 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636d9712b454cbbb855a59b3886778f02214b2ae8cbb9a4d858111e91c000e5b`  
		Last Modified: Wed, 12 Jul 2017 19:03:43 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca115997c2aee9eefd027894357c94779bdf57dc64afaa06db14607addd1dfc5`  
		Last Modified: Wed, 12 Jul 2017 19:03:46 GMT  
		Size: 6.8 MB (6764156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9116bd44766ff93b20dac72ff35125552d3c5bcefcf1f3118db0682b51c6df7b`  
		Last Modified: Wed, 12 Jul 2017 19:03:40 GMT  
		Size: 961.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88ee9b2b154750a7bc4e358f4ccd4349f5db0b627e058af7d5b91a6fe59e94a`  
		Last Modified: Wed, 12 Jul 2017 19:03:40 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41cc2d42d714e5f0236e0c2f542075204055f16d73f433f911702c1346c22b30`  
		Last Modified: Wed, 12 Jul 2017 19:03:40 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4bea4a8469cc916690cd8c080b92879a6e88b87df39a7f7e7fd0b362edcda92`  
		Last Modified: Wed, 12 Jul 2017 19:03:40 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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

## `redis:latest`

```console
$ docker pull redis@sha256:4e2af5470298aa3c79fba07216f0245fff5278b66f40681cf448eabca0bb966b
```

-	Platforms:
	-	linux; amd64

### `redis:latest` - linux; amd64

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

## `redis:32bit`

```console
$ docker pull redis@sha256:f6bc2abee86507d2e9ff1d13cc2faaa38f27133edc9c4ebf6d69603c06b5aa56
```

-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

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

## `redis:alpine`

```console
$ docker pull redis@sha256:2b1600c032e7653d079e9bd1eb80df5c99733795691f5ae9bca451bec325b7ea
```

-	Platforms:
	-	linux; amd64

### `redis:alpine` - linux; amd64

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

## `redis:3.2.100-windowsservercore`

```console
$ docker pull redis@sha256:ac7ef575d44c8653443165c600fb2f3ea9d9019843713f2a7575775c2c42ad0b
```

-	Platforms:
	-	windows; amd64

### `redis:3.2.100-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5251546602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a2ce94c3cdb33b022c12c24fb256cd3059585ef4e914e82000fd05850eec176`
-	Default Command: `["redis-server.exe","C:\\Redis\\redis.docker.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Wed, 26 Apr 2017 19:30:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jul 2017 18:29:32 GMT
RUN $newPath = ('C:\Redis;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 12 Jul 2017 18:31:00 GMT
ENV REDIS_VERSION=3.2.100
# Wed, 12 Jul 2017 18:31:03 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/MSOpenTech/redis/releases/download/win-3.2.100/Redis-x64-3.2.100.zip
# Wed, 12 Jul 2017 18:31:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:REDIS_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:REDIS_DOWNLOAD_URL -OutFile 'redis.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive redis.zip -DestinationPath C:\Redis; 		Write-Host 'Verifying install ("redis-server --version") ...'; 	redis-server --version; 		Write-Host 'Removing ...'; 	Remove-Item redis.zip -Force
# Wed, 12 Jul 2017 18:31:49 GMT
RUN (Get-Content C:\Redis\redis.windows.conf) 	-Replace '^(bind)\s+.*$', '$1 0.0.0.0' 	-Replace '^(protected-mode)\s+.*$', '$1 no' 	| Set-Content C:\Redis\redis.docker.conf
# Wed, 12 Jul 2017 18:31:52 GMT
VOLUME [C:\data]
# Wed, 12 Jul 2017 18:31:55 GMT
WORKDIR C:\data
# Wed, 12 Jul 2017 18:31:58 GMT
EXPOSE 6379/tcp
# Wed, 12 Jul 2017 18:32:01 GMT
CMD ["redis-server.exe" "C:\\Redis\\redis.docker.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6d4d50238ed13902c153bc3efc3a22f8a96bca4168ea03624d01da1063728dc2`  
		Size: 1.2 GB (1161902022 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1363e862fdfb51b375f642fff311ab5f16a4e990d8d8c0ef1a0c9b563692b9ff`  
		Last Modified: Wed, 26 Apr 2017 19:51:11 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ea6c032e11a428044834103b9fc29821b4358f7a6b710d8c743dee6236ba25`  
		Last Modified: Wed, 12 Jul 2017 19:03:30 GMT  
		Size: 5.0 MB (4973578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3607121f81f68b4aa608a0acc53b076093c929c22f045e7a0d1eb7d3a0864e0`  
		Last Modified: Wed, 12 Jul 2017 19:03:59 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81c9cf88ce8d952d48c102f1996ec8f3f0223e88a7eb596e1db13fad9ebf771`  
		Last Modified: Wed, 12 Jul 2017 19:04:00 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2f2226cfefa37b23b7e0f5b40a4b726ac700e80ea541ee4a6581ebe6b82d48`  
		Last Modified: Wed, 12 Jul 2017 19:04:02 GMT  
		Size: 10.0 MB (9998392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b438e38874fe01c8a1b657cd16bcc95533d2083c801420559648dececcb1fde0`  
		Last Modified: Wed, 12 Jul 2017 19:03:57 GMT  
		Size: 4.7 MB (4678186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac4643d4cd2e55985946ddf8c92d5cd53a43de7c9a330b96cbde76df53194de`  
		Last Modified: Wed, 12 Jul 2017 19:03:56 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a805c9cc0761d18915c329d645a495332a1cced4fbe07542b632cf1e4dfdfcb2`  
		Last Modified: Wed, 12 Jul 2017 19:03:56 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26999c73903ac435d968c63c9b09b90b8145b4a44ac944aef894592f6c70e723`  
		Last Modified: Wed, 12 Jul 2017 19:03:56 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b79d7413cd4602af40fbaa54d73042a9f86b07c5e219bb098d2c6d4055f15d`  
		Last Modified: Wed, 12 Jul 2017 19:03:57 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-windowsservercore`

```console
$ docker pull redis@sha256:ac7ef575d44c8653443165c600fb2f3ea9d9019843713f2a7575775c2c42ad0b
```

-	Platforms:
	-	windows; amd64

### `redis:3.2-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5251546602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a2ce94c3cdb33b022c12c24fb256cd3059585ef4e914e82000fd05850eec176`
-	Default Command: `["redis-server.exe","C:\\Redis\\redis.docker.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Wed, 26 Apr 2017 19:30:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jul 2017 18:29:32 GMT
RUN $newPath = ('C:\Redis;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 12 Jul 2017 18:31:00 GMT
ENV REDIS_VERSION=3.2.100
# Wed, 12 Jul 2017 18:31:03 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/MSOpenTech/redis/releases/download/win-3.2.100/Redis-x64-3.2.100.zip
# Wed, 12 Jul 2017 18:31:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:REDIS_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:REDIS_DOWNLOAD_URL -OutFile 'redis.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive redis.zip -DestinationPath C:\Redis; 		Write-Host 'Verifying install ("redis-server --version") ...'; 	redis-server --version; 		Write-Host 'Removing ...'; 	Remove-Item redis.zip -Force
# Wed, 12 Jul 2017 18:31:49 GMT
RUN (Get-Content C:\Redis\redis.windows.conf) 	-Replace '^(bind)\s+.*$', '$1 0.0.0.0' 	-Replace '^(protected-mode)\s+.*$', '$1 no' 	| Set-Content C:\Redis\redis.docker.conf
# Wed, 12 Jul 2017 18:31:52 GMT
VOLUME [C:\data]
# Wed, 12 Jul 2017 18:31:55 GMT
WORKDIR C:\data
# Wed, 12 Jul 2017 18:31:58 GMT
EXPOSE 6379/tcp
# Wed, 12 Jul 2017 18:32:01 GMT
CMD ["redis-server.exe" "C:\\Redis\\redis.docker.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6d4d50238ed13902c153bc3efc3a22f8a96bca4168ea03624d01da1063728dc2`  
		Size: 1.2 GB (1161902022 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1363e862fdfb51b375f642fff311ab5f16a4e990d8d8c0ef1a0c9b563692b9ff`  
		Last Modified: Wed, 26 Apr 2017 19:51:11 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ea6c032e11a428044834103b9fc29821b4358f7a6b710d8c743dee6236ba25`  
		Last Modified: Wed, 12 Jul 2017 19:03:30 GMT  
		Size: 5.0 MB (4973578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3607121f81f68b4aa608a0acc53b076093c929c22f045e7a0d1eb7d3a0864e0`  
		Last Modified: Wed, 12 Jul 2017 19:03:59 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81c9cf88ce8d952d48c102f1996ec8f3f0223e88a7eb596e1db13fad9ebf771`  
		Last Modified: Wed, 12 Jul 2017 19:04:00 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2f2226cfefa37b23b7e0f5b40a4b726ac700e80ea541ee4a6581ebe6b82d48`  
		Last Modified: Wed, 12 Jul 2017 19:04:02 GMT  
		Size: 10.0 MB (9998392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b438e38874fe01c8a1b657cd16bcc95533d2083c801420559648dececcb1fde0`  
		Last Modified: Wed, 12 Jul 2017 19:03:57 GMT  
		Size: 4.7 MB (4678186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac4643d4cd2e55985946ddf8c92d5cd53a43de7c9a330b96cbde76df53194de`  
		Last Modified: Wed, 12 Jul 2017 19:03:56 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a805c9cc0761d18915c329d645a495332a1cced4fbe07542b632cf1e4dfdfcb2`  
		Last Modified: Wed, 12 Jul 2017 19:03:56 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26999c73903ac435d968c63c9b09b90b8145b4a44ac944aef894592f6c70e723`  
		Last Modified: Wed, 12 Jul 2017 19:03:56 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b79d7413cd4602af40fbaa54d73042a9f86b07c5e219bb098d2c6d4055f15d`  
		Last Modified: Wed, 12 Jul 2017 19:03:57 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-windowsservercore`

```console
$ docker pull redis@sha256:ac7ef575d44c8653443165c600fb2f3ea9d9019843713f2a7575775c2c42ad0b
```

-	Platforms:
	-	windows; amd64

### `redis:3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5251546602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a2ce94c3cdb33b022c12c24fb256cd3059585ef4e914e82000fd05850eec176`
-	Default Command: `["redis-server.exe","C:\\Redis\\redis.docker.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Wed, 26 Apr 2017 19:30:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jul 2017 18:29:32 GMT
RUN $newPath = ('C:\Redis;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 12 Jul 2017 18:31:00 GMT
ENV REDIS_VERSION=3.2.100
# Wed, 12 Jul 2017 18:31:03 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/MSOpenTech/redis/releases/download/win-3.2.100/Redis-x64-3.2.100.zip
# Wed, 12 Jul 2017 18:31:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:REDIS_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:REDIS_DOWNLOAD_URL -OutFile 'redis.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive redis.zip -DestinationPath C:\Redis; 		Write-Host 'Verifying install ("redis-server --version") ...'; 	redis-server --version; 		Write-Host 'Removing ...'; 	Remove-Item redis.zip -Force
# Wed, 12 Jul 2017 18:31:49 GMT
RUN (Get-Content C:\Redis\redis.windows.conf) 	-Replace '^(bind)\s+.*$', '$1 0.0.0.0' 	-Replace '^(protected-mode)\s+.*$', '$1 no' 	| Set-Content C:\Redis\redis.docker.conf
# Wed, 12 Jul 2017 18:31:52 GMT
VOLUME [C:\data]
# Wed, 12 Jul 2017 18:31:55 GMT
WORKDIR C:\data
# Wed, 12 Jul 2017 18:31:58 GMT
EXPOSE 6379/tcp
# Wed, 12 Jul 2017 18:32:01 GMT
CMD ["redis-server.exe" "C:\\Redis\\redis.docker.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6d4d50238ed13902c153bc3efc3a22f8a96bca4168ea03624d01da1063728dc2`  
		Size: 1.2 GB (1161902022 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1363e862fdfb51b375f642fff311ab5f16a4e990d8d8c0ef1a0c9b563692b9ff`  
		Last Modified: Wed, 26 Apr 2017 19:51:11 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ea6c032e11a428044834103b9fc29821b4358f7a6b710d8c743dee6236ba25`  
		Last Modified: Wed, 12 Jul 2017 19:03:30 GMT  
		Size: 5.0 MB (4973578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3607121f81f68b4aa608a0acc53b076093c929c22f045e7a0d1eb7d3a0864e0`  
		Last Modified: Wed, 12 Jul 2017 19:03:59 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81c9cf88ce8d952d48c102f1996ec8f3f0223e88a7eb596e1db13fad9ebf771`  
		Last Modified: Wed, 12 Jul 2017 19:04:00 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2f2226cfefa37b23b7e0f5b40a4b726ac700e80ea541ee4a6581ebe6b82d48`  
		Last Modified: Wed, 12 Jul 2017 19:04:02 GMT  
		Size: 10.0 MB (9998392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b438e38874fe01c8a1b657cd16bcc95533d2083c801420559648dececcb1fde0`  
		Last Modified: Wed, 12 Jul 2017 19:03:57 GMT  
		Size: 4.7 MB (4678186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac4643d4cd2e55985946ddf8c92d5cd53a43de7c9a330b96cbde76df53194de`  
		Last Modified: Wed, 12 Jul 2017 19:03:56 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a805c9cc0761d18915c329d645a495332a1cced4fbe07542b632cf1e4dfdfcb2`  
		Last Modified: Wed, 12 Jul 2017 19:03:56 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26999c73903ac435d968c63c9b09b90b8145b4a44ac944aef894592f6c70e723`  
		Last Modified: Wed, 12 Jul 2017 19:03:56 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b79d7413cd4602af40fbaa54d73042a9f86b07c5e219bb098d2c6d4055f15d`  
		Last Modified: Wed, 12 Jul 2017 19:03:57 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:windowsservercore`

```console
$ docker pull redis@sha256:ac7ef575d44c8653443165c600fb2f3ea9d9019843713f2a7575775c2c42ad0b
```

-	Platforms:
	-	windows; amd64

### `redis:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5251546602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a2ce94c3cdb33b022c12c24fb256cd3059585ef4e914e82000fd05850eec176`
-	Default Command: `["redis-server.exe","C:\\Redis\\redis.docker.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Wed, 26 Apr 2017 19:30:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jul 2017 18:29:32 GMT
RUN $newPath = ('C:\Redis;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 12 Jul 2017 18:31:00 GMT
ENV REDIS_VERSION=3.2.100
# Wed, 12 Jul 2017 18:31:03 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/MSOpenTech/redis/releases/download/win-3.2.100/Redis-x64-3.2.100.zip
# Wed, 12 Jul 2017 18:31:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:REDIS_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:REDIS_DOWNLOAD_URL -OutFile 'redis.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive redis.zip -DestinationPath C:\Redis; 		Write-Host 'Verifying install ("redis-server --version") ...'; 	redis-server --version; 		Write-Host 'Removing ...'; 	Remove-Item redis.zip -Force
# Wed, 12 Jul 2017 18:31:49 GMT
RUN (Get-Content C:\Redis\redis.windows.conf) 	-Replace '^(bind)\s+.*$', '$1 0.0.0.0' 	-Replace '^(protected-mode)\s+.*$', '$1 no' 	| Set-Content C:\Redis\redis.docker.conf
# Wed, 12 Jul 2017 18:31:52 GMT
VOLUME [C:\data]
# Wed, 12 Jul 2017 18:31:55 GMT
WORKDIR C:\data
# Wed, 12 Jul 2017 18:31:58 GMT
EXPOSE 6379/tcp
# Wed, 12 Jul 2017 18:32:01 GMT
CMD ["redis-server.exe" "C:\\Redis\\redis.docker.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6d4d50238ed13902c153bc3efc3a22f8a96bca4168ea03624d01da1063728dc2`  
		Size: 1.2 GB (1161902022 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1363e862fdfb51b375f642fff311ab5f16a4e990d8d8c0ef1a0c9b563692b9ff`  
		Last Modified: Wed, 26 Apr 2017 19:51:11 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ea6c032e11a428044834103b9fc29821b4358f7a6b710d8c743dee6236ba25`  
		Last Modified: Wed, 12 Jul 2017 19:03:30 GMT  
		Size: 5.0 MB (4973578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3607121f81f68b4aa608a0acc53b076093c929c22f045e7a0d1eb7d3a0864e0`  
		Last Modified: Wed, 12 Jul 2017 19:03:59 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81c9cf88ce8d952d48c102f1996ec8f3f0223e88a7eb596e1db13fad9ebf771`  
		Last Modified: Wed, 12 Jul 2017 19:04:00 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2f2226cfefa37b23b7e0f5b40a4b726ac700e80ea541ee4a6581ebe6b82d48`  
		Last Modified: Wed, 12 Jul 2017 19:04:02 GMT  
		Size: 10.0 MB (9998392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b438e38874fe01c8a1b657cd16bcc95533d2083c801420559648dececcb1fde0`  
		Last Modified: Wed, 12 Jul 2017 19:03:57 GMT  
		Size: 4.7 MB (4678186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac4643d4cd2e55985946ddf8c92d5cd53a43de7c9a330b96cbde76df53194de`  
		Last Modified: Wed, 12 Jul 2017 19:03:56 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a805c9cc0761d18915c329d645a495332a1cced4fbe07542b632cf1e4dfdfcb2`  
		Last Modified: Wed, 12 Jul 2017 19:03:56 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26999c73903ac435d968c63c9b09b90b8145b4a44ac944aef894592f6c70e723`  
		Last Modified: Wed, 12 Jul 2017 19:03:56 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b79d7413cd4602af40fbaa54d73042a9f86b07c5e219bb098d2c6d4055f15d`  
		Last Modified: Wed, 12 Jul 2017 19:03:57 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.100-nanoserver`

```console
$ docker pull redis@sha256:810b22ec3e6009d23067e8e83c8a2ac4a2ca20200d0512caf40b171d03457cec
```

-	Platforms:
	-	windows; amd64

### `redis:3.2.100-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **376.5 MB (376522845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15fd74a53df1ffd5eaf5d5258db2c9558569f19a33fffcfdb0fae691c268ca01`
-	Default Command: `["redis-server.exe","C:\\Redis\\redis.docker.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 20 Nov 2016 11:39:18 GMT
RUN Apply image 10.0.14393.0
# Fri, 07 Apr 2017 09:40:17 GMT
RUN Install update 10.0.14393.1066
# Wed, 26 Apr 2017 19:37:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jul 2017 18:30:27 GMT
RUN $newPath = ('C:\Redis;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 12 Jul 2017 18:32:04 GMT
ENV REDIS_VERSION=3.2.100
# Wed, 12 Jul 2017 18:32:06 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/MSOpenTech/redis/releases/download/win-3.2.100/Redis-x64-3.2.100.zip
# Wed, 12 Jul 2017 18:32:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:REDIS_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:REDIS_DOWNLOAD_URL -OutFile 'redis.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive redis.zip -DestinationPath C:\Redis; 		Write-Host 'Verifying install ("redis-server --version") ...'; 	redis-server --version; 		Write-Host 'Removing ...'; 	Remove-Item redis.zip -Force
# Wed, 12 Jul 2017 18:32:34 GMT
RUN (Get-Content C:\Redis\redis.windows.conf) 	-Replace '^(bind)\s+.*$', '$1 0.0.0.0' 	-Replace '^(protected-mode)\s+.*$', '$1 no' 	| Set-Content C:\Redis\redis.docker.conf
# Wed, 12 Jul 2017 18:32:35 GMT
VOLUME [C:\data]
# Wed, 12 Jul 2017 18:32:38 GMT
WORKDIR C:\data
# Wed, 12 Jul 2017 18:32:40 GMT
EXPOSE 6379/tcp
# Wed, 12 Jul 2017 18:32:42 GMT
CMD ["redis-server.exe" "C:\\Redis\\redis.docker.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a43ac69611f40511708beba10dfe6fbe3e266ca933b6fd49c87a9f31f46f46c`  
		Size: 116.0 MB (116037241 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:acc75acac61e9635ae7c57f4d74b6ac6a2efef41d7b17052ff6f5bc0fb92e960`  
		Last Modified: Wed, 26 Apr 2017 19:51:40 GMT  
		Size: 968.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f17e54c8f52dbb6a5246a2a56f6c9de1762cd61e67319d2484ea2b6367c8f0`  
		Last Modified: Wed, 12 Jul 2017 19:03:44 GMT  
		Size: 873.0 KB (873031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd171254c5cb42e88cbb61f9664c44a4b9bbf8f1b9308732769d6e0e08746cd`  
		Last Modified: Wed, 12 Jul 2017 19:04:19 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3106c2ed15a3eb44406beba69af250d6868010c2f307b68accafd53579b0e9ea`  
		Last Modified: Wed, 12 Jul 2017 19:04:19 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c482e10d0fc8c892581315d2654090f35b8cd901cdcdadfa1e0540d41e5aa2b`  
		Last Modified: Wed, 12 Jul 2017 19:04:21 GMT  
		Size: 6.1 MB (6105286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a1bb8a51617fd4b2a0707082ff1885078ac1e1546294243dee089fd83431fb`  
		Last Modified: Wed, 12 Jul 2017 19:04:17 GMT  
		Size: 809.6 KB (809590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b72f867f044aec7145ef955bcd06cead82eb27ece411f8f4b62cb1fb99d1681`  
		Last Modified: Wed, 12 Jul 2017 19:04:17 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a303d4c0f022069d787c436527b881034b3c30bdc4c48b3908b0257ed0be01c7`  
		Last Modified: Wed, 12 Jul 2017 19:04:16 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820e678b188173827acc6298d5c33c2af03a4e701805f5f66d3364debc9d2f32`  
		Last Modified: Wed, 12 Jul 2017 19:04:16 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2bd99185dff9bbb357f63136c046ee8b4c104dda8c0ced6ab8b23a6af1fd42`  
		Last Modified: Wed, 12 Jul 2017 19:04:16 GMT  
		Size: 961.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-nanoserver`

```console
$ docker pull redis@sha256:810b22ec3e6009d23067e8e83c8a2ac4a2ca20200d0512caf40b171d03457cec
```

-	Platforms:
	-	windows; amd64

### `redis:3.2-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **376.5 MB (376522845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15fd74a53df1ffd5eaf5d5258db2c9558569f19a33fffcfdb0fae691c268ca01`
-	Default Command: `["redis-server.exe","C:\\Redis\\redis.docker.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 20 Nov 2016 11:39:18 GMT
RUN Apply image 10.0.14393.0
# Fri, 07 Apr 2017 09:40:17 GMT
RUN Install update 10.0.14393.1066
# Wed, 26 Apr 2017 19:37:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jul 2017 18:30:27 GMT
RUN $newPath = ('C:\Redis;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 12 Jul 2017 18:32:04 GMT
ENV REDIS_VERSION=3.2.100
# Wed, 12 Jul 2017 18:32:06 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/MSOpenTech/redis/releases/download/win-3.2.100/Redis-x64-3.2.100.zip
# Wed, 12 Jul 2017 18:32:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:REDIS_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:REDIS_DOWNLOAD_URL -OutFile 'redis.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive redis.zip -DestinationPath C:\Redis; 		Write-Host 'Verifying install ("redis-server --version") ...'; 	redis-server --version; 		Write-Host 'Removing ...'; 	Remove-Item redis.zip -Force
# Wed, 12 Jul 2017 18:32:34 GMT
RUN (Get-Content C:\Redis\redis.windows.conf) 	-Replace '^(bind)\s+.*$', '$1 0.0.0.0' 	-Replace '^(protected-mode)\s+.*$', '$1 no' 	| Set-Content C:\Redis\redis.docker.conf
# Wed, 12 Jul 2017 18:32:35 GMT
VOLUME [C:\data]
# Wed, 12 Jul 2017 18:32:38 GMT
WORKDIR C:\data
# Wed, 12 Jul 2017 18:32:40 GMT
EXPOSE 6379/tcp
# Wed, 12 Jul 2017 18:32:42 GMT
CMD ["redis-server.exe" "C:\\Redis\\redis.docker.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a43ac69611f40511708beba10dfe6fbe3e266ca933b6fd49c87a9f31f46f46c`  
		Size: 116.0 MB (116037241 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:acc75acac61e9635ae7c57f4d74b6ac6a2efef41d7b17052ff6f5bc0fb92e960`  
		Last Modified: Wed, 26 Apr 2017 19:51:40 GMT  
		Size: 968.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f17e54c8f52dbb6a5246a2a56f6c9de1762cd61e67319d2484ea2b6367c8f0`  
		Last Modified: Wed, 12 Jul 2017 19:03:44 GMT  
		Size: 873.0 KB (873031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd171254c5cb42e88cbb61f9664c44a4b9bbf8f1b9308732769d6e0e08746cd`  
		Last Modified: Wed, 12 Jul 2017 19:04:19 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3106c2ed15a3eb44406beba69af250d6868010c2f307b68accafd53579b0e9ea`  
		Last Modified: Wed, 12 Jul 2017 19:04:19 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c482e10d0fc8c892581315d2654090f35b8cd901cdcdadfa1e0540d41e5aa2b`  
		Last Modified: Wed, 12 Jul 2017 19:04:21 GMT  
		Size: 6.1 MB (6105286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a1bb8a51617fd4b2a0707082ff1885078ac1e1546294243dee089fd83431fb`  
		Last Modified: Wed, 12 Jul 2017 19:04:17 GMT  
		Size: 809.6 KB (809590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b72f867f044aec7145ef955bcd06cead82eb27ece411f8f4b62cb1fb99d1681`  
		Last Modified: Wed, 12 Jul 2017 19:04:17 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a303d4c0f022069d787c436527b881034b3c30bdc4c48b3908b0257ed0be01c7`  
		Last Modified: Wed, 12 Jul 2017 19:04:16 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820e678b188173827acc6298d5c33c2af03a4e701805f5f66d3364debc9d2f32`  
		Last Modified: Wed, 12 Jul 2017 19:04:16 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2bd99185dff9bbb357f63136c046ee8b4c104dda8c0ced6ab8b23a6af1fd42`  
		Last Modified: Wed, 12 Jul 2017 19:04:16 GMT  
		Size: 961.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-nanoserver`

```console
$ docker pull redis@sha256:810b22ec3e6009d23067e8e83c8a2ac4a2ca20200d0512caf40b171d03457cec
```

-	Platforms:
	-	windows; amd64

### `redis:3-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **376.5 MB (376522845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15fd74a53df1ffd5eaf5d5258db2c9558569f19a33fffcfdb0fae691c268ca01`
-	Default Command: `["redis-server.exe","C:\\Redis\\redis.docker.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 20 Nov 2016 11:39:18 GMT
RUN Apply image 10.0.14393.0
# Fri, 07 Apr 2017 09:40:17 GMT
RUN Install update 10.0.14393.1066
# Wed, 26 Apr 2017 19:37:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jul 2017 18:30:27 GMT
RUN $newPath = ('C:\Redis;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 12 Jul 2017 18:32:04 GMT
ENV REDIS_VERSION=3.2.100
# Wed, 12 Jul 2017 18:32:06 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/MSOpenTech/redis/releases/download/win-3.2.100/Redis-x64-3.2.100.zip
# Wed, 12 Jul 2017 18:32:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:REDIS_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:REDIS_DOWNLOAD_URL -OutFile 'redis.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive redis.zip -DestinationPath C:\Redis; 		Write-Host 'Verifying install ("redis-server --version") ...'; 	redis-server --version; 		Write-Host 'Removing ...'; 	Remove-Item redis.zip -Force
# Wed, 12 Jul 2017 18:32:34 GMT
RUN (Get-Content C:\Redis\redis.windows.conf) 	-Replace '^(bind)\s+.*$', '$1 0.0.0.0' 	-Replace '^(protected-mode)\s+.*$', '$1 no' 	| Set-Content C:\Redis\redis.docker.conf
# Wed, 12 Jul 2017 18:32:35 GMT
VOLUME [C:\data]
# Wed, 12 Jul 2017 18:32:38 GMT
WORKDIR C:\data
# Wed, 12 Jul 2017 18:32:40 GMT
EXPOSE 6379/tcp
# Wed, 12 Jul 2017 18:32:42 GMT
CMD ["redis-server.exe" "C:\\Redis\\redis.docker.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a43ac69611f40511708beba10dfe6fbe3e266ca933b6fd49c87a9f31f46f46c`  
		Size: 116.0 MB (116037241 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:acc75acac61e9635ae7c57f4d74b6ac6a2efef41d7b17052ff6f5bc0fb92e960`  
		Last Modified: Wed, 26 Apr 2017 19:51:40 GMT  
		Size: 968.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f17e54c8f52dbb6a5246a2a56f6c9de1762cd61e67319d2484ea2b6367c8f0`  
		Last Modified: Wed, 12 Jul 2017 19:03:44 GMT  
		Size: 873.0 KB (873031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd171254c5cb42e88cbb61f9664c44a4b9bbf8f1b9308732769d6e0e08746cd`  
		Last Modified: Wed, 12 Jul 2017 19:04:19 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3106c2ed15a3eb44406beba69af250d6868010c2f307b68accafd53579b0e9ea`  
		Last Modified: Wed, 12 Jul 2017 19:04:19 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c482e10d0fc8c892581315d2654090f35b8cd901cdcdadfa1e0540d41e5aa2b`  
		Last Modified: Wed, 12 Jul 2017 19:04:21 GMT  
		Size: 6.1 MB (6105286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a1bb8a51617fd4b2a0707082ff1885078ac1e1546294243dee089fd83431fb`  
		Last Modified: Wed, 12 Jul 2017 19:04:17 GMT  
		Size: 809.6 KB (809590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b72f867f044aec7145ef955bcd06cead82eb27ece411f8f4b62cb1fb99d1681`  
		Last Modified: Wed, 12 Jul 2017 19:04:17 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a303d4c0f022069d787c436527b881034b3c30bdc4c48b3908b0257ed0be01c7`  
		Last Modified: Wed, 12 Jul 2017 19:04:16 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820e678b188173827acc6298d5c33c2af03a4e701805f5f66d3364debc9d2f32`  
		Last Modified: Wed, 12 Jul 2017 19:04:16 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2bd99185dff9bbb357f63136c046ee8b4c104dda8c0ced6ab8b23a6af1fd42`  
		Last Modified: Wed, 12 Jul 2017 19:04:16 GMT  
		Size: 961.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:nanoserver`

```console
$ docker pull redis@sha256:810b22ec3e6009d23067e8e83c8a2ac4a2ca20200d0512caf40b171d03457cec
```

-	Platforms:
	-	windows; amd64

### `redis:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **376.5 MB (376522845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15fd74a53df1ffd5eaf5d5258db2c9558569f19a33fffcfdb0fae691c268ca01`
-	Default Command: `["redis-server.exe","C:\\Redis\\redis.docker.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 20 Nov 2016 11:39:18 GMT
RUN Apply image 10.0.14393.0
# Fri, 07 Apr 2017 09:40:17 GMT
RUN Install update 10.0.14393.1066
# Wed, 26 Apr 2017 19:37:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jul 2017 18:30:27 GMT
RUN $newPath = ('C:\Redis;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 12 Jul 2017 18:32:04 GMT
ENV REDIS_VERSION=3.2.100
# Wed, 12 Jul 2017 18:32:06 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/MSOpenTech/redis/releases/download/win-3.2.100/Redis-x64-3.2.100.zip
# Wed, 12 Jul 2017 18:32:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:REDIS_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:REDIS_DOWNLOAD_URL -OutFile 'redis.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive redis.zip -DestinationPath C:\Redis; 		Write-Host 'Verifying install ("redis-server --version") ...'; 	redis-server --version; 		Write-Host 'Removing ...'; 	Remove-Item redis.zip -Force
# Wed, 12 Jul 2017 18:32:34 GMT
RUN (Get-Content C:\Redis\redis.windows.conf) 	-Replace '^(bind)\s+.*$', '$1 0.0.0.0' 	-Replace '^(protected-mode)\s+.*$', '$1 no' 	| Set-Content C:\Redis\redis.docker.conf
# Wed, 12 Jul 2017 18:32:35 GMT
VOLUME [C:\data]
# Wed, 12 Jul 2017 18:32:38 GMT
WORKDIR C:\data
# Wed, 12 Jul 2017 18:32:40 GMT
EXPOSE 6379/tcp
# Wed, 12 Jul 2017 18:32:42 GMT
CMD ["redis-server.exe" "C:\\Redis\\redis.docker.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a43ac69611f40511708beba10dfe6fbe3e266ca933b6fd49c87a9f31f46f46c`  
		Size: 116.0 MB (116037241 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:acc75acac61e9635ae7c57f4d74b6ac6a2efef41d7b17052ff6f5bc0fb92e960`  
		Last Modified: Wed, 26 Apr 2017 19:51:40 GMT  
		Size: 968.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f17e54c8f52dbb6a5246a2a56f6c9de1762cd61e67319d2484ea2b6367c8f0`  
		Last Modified: Wed, 12 Jul 2017 19:03:44 GMT  
		Size: 873.0 KB (873031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd171254c5cb42e88cbb61f9664c44a4b9bbf8f1b9308732769d6e0e08746cd`  
		Last Modified: Wed, 12 Jul 2017 19:04:19 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3106c2ed15a3eb44406beba69af250d6868010c2f307b68accafd53579b0e9ea`  
		Last Modified: Wed, 12 Jul 2017 19:04:19 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c482e10d0fc8c892581315d2654090f35b8cd901cdcdadfa1e0540d41e5aa2b`  
		Last Modified: Wed, 12 Jul 2017 19:04:21 GMT  
		Size: 6.1 MB (6105286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a1bb8a51617fd4b2a0707082ff1885078ac1e1546294243dee089fd83431fb`  
		Last Modified: Wed, 12 Jul 2017 19:04:17 GMT  
		Size: 809.6 KB (809590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b72f867f044aec7145ef955bcd06cead82eb27ece411f8f4b62cb1fb99d1681`  
		Last Modified: Wed, 12 Jul 2017 19:04:17 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a303d4c0f022069d787c436527b881034b3c30bdc4c48b3908b0257ed0be01c7`  
		Last Modified: Wed, 12 Jul 2017 19:04:16 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820e678b188173827acc6298d5c33c2af03a4e701805f5f66d3364debc9d2f32`  
		Last Modified: Wed, 12 Jul 2017 19:04:16 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2bd99185dff9bbb357f63136c046ee8b4c104dda8c0ced6ab8b23a6af1fd42`  
		Last Modified: Wed, 12 Jul 2017 19:04:16 GMT  
		Size: 961.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
