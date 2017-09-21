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
$ docker pull redis@sha256:a33c4d7b7468eaea5b6fc33e776b0780010e262cfd27d7cc8d0937fbe84f5e6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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

## `redis:3.2`

```console
$ docker pull redis@sha256:a33c4d7b7468eaea5b6fc33e776b0780010e262cfd27d7cc8d0937fbe84f5e6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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

## `redis:3.2.11`

```console
$ docker pull redis@sha256:a33c4d7b7468eaea5b6fc33e776b0780010e262cfd27d7cc8d0937fbe84f5e6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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
$ docker pull redis@sha256:a393b29aa5892b0c5a6f9910c89d1dcfbd2e4b050d4118cad504739d0081af75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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

## `redis:4.0`

```console
$ docker pull redis@sha256:a393b29aa5892b0c5a6f9910c89d1dcfbd2e4b050d4118cad504739d0081af75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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

## `redis:4.0.2`

```console
$ docker pull redis@sha256:a393b29aa5892b0c5a6f9910c89d1dcfbd2e4b050d4118cad504739d0081af75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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
$ docker pull redis@sha256:a393b29aa5892b0c5a6f9910c89d1dcfbd2e4b050d4118cad504739d0081af75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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
