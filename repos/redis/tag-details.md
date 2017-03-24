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
-	[`redis:3.2.8`](#redis328)
-	[`redis:3.2`](#redis32)
-	[`redis:3`](#redis3)
-	[`redis:latest`](#redislatest)
-	[`redis:3.2.8-32bit`](#redis328-32bit)
-	[`redis:3.2-32bit`](#redis32-32bit)
-	[`redis:3-32bit`](#redis3-32bit)
-	[`redis:32bit`](#redis32bit)
-	[`redis:3.2.8-alpine`](#redis328-alpine)
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
$ docker pull redis@sha256:29f740b256f47f413f4ba7a03c8fc800edda4e3439e0754974819d8dbcf4e986
```

-	Platforms:
	-	linux; amd64

### `redis:3.0.7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71920595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:253897011cbb87ae07478c779c2b43c28717cfae604d6c8c10c2ca6b09c687d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 00:04:29 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 22 Mar 2017 15:06:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 15:06:51 GMT
ENV GOSU_VERSION=1.7
# Wed, 22 Mar 2017 15:06:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 22 Mar 2017 15:08:44 GMT
ENV REDIS_VERSION=3.0.7
# Wed, 22 Mar 2017 15:08:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Wed, 22 Mar 2017 15:08:44 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Wed, 22 Mar 2017 15:09:23 GMT
RUN buildDeps='gcc libc6-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 15:09:24 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 22 Mar 2017 15:09:25 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 15:09:25 GMT
WORKDIR /data
# Wed, 22 Mar 2017 15:09:26 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 22 Mar 2017 15:09:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 22 Mar 2017 15:09:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Mar 2017 15:09:28 GMT
EXPOSE 6379/tcp
# Wed, 22 Mar 2017 15:09:28 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787f13ab8ea910bcc271068eab4c454ed8c5ba45156dd3e393a742a4826ebfad`  
		Last Modified: Fri, 24 Mar 2017 00:29:12 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14faf2bdac07deb52fa72e15675bbef90c4da9fb5c6ac5d52f7ad568fb5719bb`  
		Last Modified: Fri, 24 Mar 2017 00:29:17 GMT  
		Size: 16.7 MB (16689642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52905ba81f398b8d62f1a7f7d30f40aa08f0984955fa240256eb909f8a84cdd`  
		Last Modified: Fri, 24 Mar 2017 00:29:11 GMT  
		Size: 807.9 KB (807927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d4da69444969516f33f909ae2886a8be9815470306b3684c1e8e5b8d3c4a20c`  
		Last Modified: Fri, 24 Mar 2017 00:29:10 GMT  
		Size: 3.0 MB (2981890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d2199a32e75be03e31ee77120cb36520d6ab86da639525f195e504540d8468`  
		Last Modified: Fri, 24 Mar 2017 00:29:13 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db68e15437d19b2054cdec633a409228dd77996897b06d11a0e87e6418c6d1b`  
		Last Modified: Fri, 24 Mar 2017 00:29:09 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6028c663216966bfe76e76f33c2ba6e83c11d6a43cb1b6bcd2f6cc07316017cd`  
		Last Modified: Fri, 24 Mar 2017 00:29:10 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0`

```console
$ docker pull redis@sha256:29f740b256f47f413f4ba7a03c8fc800edda4e3439e0754974819d8dbcf4e986
```

-	Platforms:
	-	linux; amd64

### `redis:3.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71920595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:253897011cbb87ae07478c779c2b43c28717cfae604d6c8c10c2ca6b09c687d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 00:04:29 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 22 Mar 2017 15:06:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 15:06:51 GMT
ENV GOSU_VERSION=1.7
# Wed, 22 Mar 2017 15:06:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 22 Mar 2017 15:08:44 GMT
ENV REDIS_VERSION=3.0.7
# Wed, 22 Mar 2017 15:08:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Wed, 22 Mar 2017 15:08:44 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Wed, 22 Mar 2017 15:09:23 GMT
RUN buildDeps='gcc libc6-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 15:09:24 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 22 Mar 2017 15:09:25 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 15:09:25 GMT
WORKDIR /data
# Wed, 22 Mar 2017 15:09:26 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 22 Mar 2017 15:09:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 22 Mar 2017 15:09:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Mar 2017 15:09:28 GMT
EXPOSE 6379/tcp
# Wed, 22 Mar 2017 15:09:28 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787f13ab8ea910bcc271068eab4c454ed8c5ba45156dd3e393a742a4826ebfad`  
		Last Modified: Fri, 24 Mar 2017 00:29:12 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14faf2bdac07deb52fa72e15675bbef90c4da9fb5c6ac5d52f7ad568fb5719bb`  
		Last Modified: Fri, 24 Mar 2017 00:29:17 GMT  
		Size: 16.7 MB (16689642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52905ba81f398b8d62f1a7f7d30f40aa08f0984955fa240256eb909f8a84cdd`  
		Last Modified: Fri, 24 Mar 2017 00:29:11 GMT  
		Size: 807.9 KB (807927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d4da69444969516f33f909ae2886a8be9815470306b3684c1e8e5b8d3c4a20c`  
		Last Modified: Fri, 24 Mar 2017 00:29:10 GMT  
		Size: 3.0 MB (2981890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d2199a32e75be03e31ee77120cb36520d6ab86da639525f195e504540d8468`  
		Last Modified: Fri, 24 Mar 2017 00:29:13 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db68e15437d19b2054cdec633a409228dd77996897b06d11a0e87e6418c6d1b`  
		Last Modified: Fri, 24 Mar 2017 00:29:09 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6028c663216966bfe76e76f33c2ba6e83c11d6a43cb1b6bcd2f6cc07316017cd`  
		Last Modified: Fri, 24 Mar 2017 00:29:10 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0.7-32bit`

```console
$ docker pull redis@sha256:934eaa1875e5f1b3d922472dd01208c7d2891aef7949d0bf30ea43b9105b2b39
```

-	Platforms:
	-	linux; amd64

### `redis:3.0.7-32bit` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.8 MB (75832872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64dc1531217bc5156d83ef94af40ff8109037e53ce18a86a8eda0a345d55f841`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 00:04:29 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 22 Mar 2017 15:06:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 15:06:51 GMT
ENV GOSU_VERSION=1.7
# Wed, 22 Mar 2017 15:06:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 22 Mar 2017 15:08:44 GMT
ENV REDIS_VERSION=3.0.7
# Wed, 22 Mar 2017 15:08:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Wed, 22 Mar 2017 15:08:44 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Wed, 22 Mar 2017 15:09:34 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 15:10:25 GMT
RUN buildDeps='gcc gcc-multilib libc6-dev-i386 make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 15:10:26 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 22 Mar 2017 15:10:27 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 15:10:27 GMT
WORKDIR /data
# Wed, 22 Mar 2017 15:10:28 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 22 Mar 2017 15:10:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 22 Mar 2017 15:10:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Mar 2017 15:10:29 GMT
EXPOSE 6379/tcp
# Wed, 22 Mar 2017 15:10:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787f13ab8ea910bcc271068eab4c454ed8c5ba45156dd3e393a742a4826ebfad`  
		Last Modified: Fri, 24 Mar 2017 00:29:12 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14faf2bdac07deb52fa72e15675bbef90c4da9fb5c6ac5d52f7ad568fb5719bb`  
		Last Modified: Fri, 24 Mar 2017 00:29:17 GMT  
		Size: 16.7 MB (16689642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52905ba81f398b8d62f1a7f7d30f40aa08f0984955fa240256eb909f8a84cdd`  
		Last Modified: Fri, 24 Mar 2017 00:29:11 GMT  
		Size: 807.9 KB (807927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3dd7b1d8e8ccd12b9b05213f39e77dd0b0d7d73740c2b23c45690194eb82d38`  
		Last Modified: Fri, 24 Mar 2017 00:30:02 GMT  
		Size: 4.2 MB (4224420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3163241e74d107cc951c0040933f0e1a5b60657b5dea2a5dfdbea788cf10057d`  
		Last Modified: Fri, 24 Mar 2017 00:30:01 GMT  
		Size: 2.7 MB (2669750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3120d85a8ba2693e98e1c1b5fa6f7672f697959c96de0e45869f11ad218a4e`  
		Last Modified: Fri, 24 Mar 2017 00:30:01 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c327a0c4f16cc953c25642a9aac0cc222cb91a594ac371db655de30bb0e63bfb`  
		Last Modified: Fri, 24 Mar 2017 00:30:00 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:835403dc5b2381d8973b3873f2bc26e84f0d7b75eff0187cda2297a22a86e462`  
		Last Modified: Fri, 24 Mar 2017 00:30:00 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0-32bit`

```console
$ docker pull redis@sha256:934eaa1875e5f1b3d922472dd01208c7d2891aef7949d0bf30ea43b9105b2b39
```

-	Platforms:
	-	linux; amd64

### `redis:3.0-32bit` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.8 MB (75832872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64dc1531217bc5156d83ef94af40ff8109037e53ce18a86a8eda0a345d55f841`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 00:04:29 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 22 Mar 2017 15:06:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 15:06:51 GMT
ENV GOSU_VERSION=1.7
# Wed, 22 Mar 2017 15:06:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 22 Mar 2017 15:08:44 GMT
ENV REDIS_VERSION=3.0.7
# Wed, 22 Mar 2017 15:08:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Wed, 22 Mar 2017 15:08:44 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Wed, 22 Mar 2017 15:09:34 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 15:10:25 GMT
RUN buildDeps='gcc gcc-multilib libc6-dev-i386 make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 15:10:26 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 22 Mar 2017 15:10:27 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 15:10:27 GMT
WORKDIR /data
# Wed, 22 Mar 2017 15:10:28 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 22 Mar 2017 15:10:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 22 Mar 2017 15:10:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Mar 2017 15:10:29 GMT
EXPOSE 6379/tcp
# Wed, 22 Mar 2017 15:10:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787f13ab8ea910bcc271068eab4c454ed8c5ba45156dd3e393a742a4826ebfad`  
		Last Modified: Fri, 24 Mar 2017 00:29:12 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14faf2bdac07deb52fa72e15675bbef90c4da9fb5c6ac5d52f7ad568fb5719bb`  
		Last Modified: Fri, 24 Mar 2017 00:29:17 GMT  
		Size: 16.7 MB (16689642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52905ba81f398b8d62f1a7f7d30f40aa08f0984955fa240256eb909f8a84cdd`  
		Last Modified: Fri, 24 Mar 2017 00:29:11 GMT  
		Size: 807.9 KB (807927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3dd7b1d8e8ccd12b9b05213f39e77dd0b0d7d73740c2b23c45690194eb82d38`  
		Last Modified: Fri, 24 Mar 2017 00:30:02 GMT  
		Size: 4.2 MB (4224420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3163241e74d107cc951c0040933f0e1a5b60657b5dea2a5dfdbea788cf10057d`  
		Last Modified: Fri, 24 Mar 2017 00:30:01 GMT  
		Size: 2.7 MB (2669750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3120d85a8ba2693e98e1c1b5fa6f7672f697959c96de0e45869f11ad218a4e`  
		Last Modified: Fri, 24 Mar 2017 00:30:01 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c327a0c4f16cc953c25642a9aac0cc222cb91a594ac371db655de30bb0e63bfb`  
		Last Modified: Fri, 24 Mar 2017 00:30:00 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:835403dc5b2381d8973b3873f2bc26e84f0d7b75eff0187cda2297a22a86e462`  
		Last Modified: Fri, 24 Mar 2017 00:30:00 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0.7-alpine`

```console
$ docker pull redis@sha256:60f734501858d8d33955322d512399a4f2226553c0123155e68c847e7146ff2b
```

-	Platforms:
	-	linux; amd64

### `redis:3.0.7-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4823138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa32e3dcfcdfd6b60682717a4ad7121e6cc0ecf0b2c53225c9c8feab3dd66c06`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:32:20 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 03 Mar 2017 23:32:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 03 Mar 2017 23:33:09 GMT
ENV REDIS_VERSION=3.0.7
# Fri, 03 Mar 2017 23:33:09 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Fri, 03 Mar 2017 23:33:09 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Fri, 03 Mar 2017 23:33:46 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apk del .build-deps
# Fri, 03 Mar 2017 23:33:46 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 03 Mar 2017 23:33:47 GMT
VOLUME [/data]
# Fri, 03 Mar 2017 23:33:47 GMT
WORKDIR /data
# Fri, 03 Mar 2017 23:33:48 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:33:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 03 Mar 2017 23:33:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 23:33:49 GMT
EXPOSE 6379/tcp
# Fri, 03 Mar 2017 23:33:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a503a4771a4acb18e74ce194540e8b8d89cc782c16d991536729aa1b0a8dbd47`  
		Last Modified: Sat, 04 Mar 2017 05:47:23 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c5d910c68324fec337bf61e7baeda6b221665281fb37b8a23c4a1ea6cc390d`  
		Last Modified: Sat, 04 Mar 2017 05:47:21 GMT  
		Size: 7.7 KB (7686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49926550433ab6812abc83fa87ea4d0399c24453875c7339c77e8abe34502e78`  
		Last Modified: Sat, 04 Mar 2017 05:47:22 GMT  
		Size: 2.9 MB (2908328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08665481fcf4a86526edd16a379b3b0013fa2721e031044949ce7f1718464e8d`  
		Last Modified: Sat, 04 Mar 2017 05:47:21 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b79976b883310cee05335be1058794a34bb5d4ee41eaae23512a32c27ec296`  
		Last Modified: Sat, 04 Mar 2017 05:47:20 GMT  
		Size: 386.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bd7024c7c48cf820ccc129672ba223c80d890064a709d3aff542b4095c7c94b`  
		Last Modified: Sat, 04 Mar 2017 05:47:21 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0-alpine`

```console
$ docker pull redis@sha256:60f734501858d8d33955322d512399a4f2226553c0123155e68c847e7146ff2b
```

-	Platforms:
	-	linux; amd64

### `redis:3.0-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4823138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa32e3dcfcdfd6b60682717a4ad7121e6cc0ecf0b2c53225c9c8feab3dd66c06`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:32:20 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 03 Mar 2017 23:32:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 03 Mar 2017 23:33:09 GMT
ENV REDIS_VERSION=3.0.7
# Fri, 03 Mar 2017 23:33:09 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.0.7.tar.gz
# Fri, 03 Mar 2017 23:33:09 GMT
ENV REDIS_DOWNLOAD_SHA1=e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c
# Fri, 03 Mar 2017 23:33:46 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 	&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 	&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 	&& rm -r /usr/src/redis 	&& apk del .build-deps
# Fri, 03 Mar 2017 23:33:46 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 03 Mar 2017 23:33:47 GMT
VOLUME [/data]
# Fri, 03 Mar 2017 23:33:47 GMT
WORKDIR /data
# Fri, 03 Mar 2017 23:33:48 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:33:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 03 Mar 2017 23:33:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 23:33:49 GMT
EXPOSE 6379/tcp
# Fri, 03 Mar 2017 23:33:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a503a4771a4acb18e74ce194540e8b8d89cc782c16d991536729aa1b0a8dbd47`  
		Last Modified: Sat, 04 Mar 2017 05:47:23 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c5d910c68324fec337bf61e7baeda6b221665281fb37b8a23c4a1ea6cc390d`  
		Last Modified: Sat, 04 Mar 2017 05:47:21 GMT  
		Size: 7.7 KB (7686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49926550433ab6812abc83fa87ea4d0399c24453875c7339c77e8abe34502e78`  
		Last Modified: Sat, 04 Mar 2017 05:47:22 GMT  
		Size: 2.9 MB (2908328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08665481fcf4a86526edd16a379b3b0013fa2721e031044949ce7f1718464e8d`  
		Last Modified: Sat, 04 Mar 2017 05:47:21 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b79976b883310cee05335be1058794a34bb5d4ee41eaae23512a32c27ec296`  
		Last Modified: Sat, 04 Mar 2017 05:47:20 GMT  
		Size: 386.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bd7024c7c48cf820ccc129672ba223c80d890064a709d3aff542b4095c7c94b`  
		Last Modified: Sat, 04 Mar 2017 05:47:21 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0.504-windowsservercore`

```console
$ docker pull redis@sha256:665e2b80dbbf7e54ea5c26c2839d3c0a9cdbdfc4b84c6fa18dfec56ed147d2b3
```

-	Platforms:
	-	windows; amd64

### `redis:3.0.504-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 GB (5002746656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31003113b44ac73dd6049498ccd9fdd95d74de9040ff6e6932aa579908ef248b`
-	Default Command: `["redis-server.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Wed, 18 Jan 2017 00:22:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 18 Jan 2017 22:49:45 GMT
RUN $newPath = ('C:\Redis;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 18 Jan 2017 22:49:52 GMT
ENV REDIS_VERSION=3.0.504
# Wed, 18 Jan 2017 22:49:55 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/MSOpenTech/redis/releases/download/win-3.0.504/Redis-x64-3.0.504.zip
# Wed, 18 Jan 2017 22:50:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:REDIS_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:REDIS_DOWNLOAD_URL -OutFile 'redis.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive redis.zip -DestinationPath C:\Redis; 		Write-Host 'Verifying install ("redis-server --version") ...'; 	redis-server --version; 		Write-Host 'Removing ...'; 	Remove-Item redis.zip -Force
# Wed, 18 Jan 2017 22:50:59 GMT
VOLUME [C:\data]
# Wed, 18 Jan 2017 22:51:04 GMT
WORKDIR C:\data
# Wed, 18 Jan 2017 22:51:10 GMT
EXPOSE 6379/tcp
# Wed, 18 Jan 2017 22:51:19 GMT
CMD ["redis-server.exe"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3430754e4d171ead00cf6766797a28abf3caf236f6c92c5c346ea2ad3955a129`  
		Size: 913.1 MB (913145061 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2090e83c9aacacb2da7d0836cf297e9927a3137c208e2f631e39e181e31ceb90`  
		Last Modified: Wed, 18 Jan 2017 22:56:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da44b0086252f4702e3a56302c8f8b41465bed5f455838bf271fced6fc93a0c`  
		Last Modified: Wed, 18 Jan 2017 22:56:57 GMT  
		Size: 9.1 MB (9118824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05debd25f02d505fcd5a68db4988714dc0cd9754892cf3aedb4ebdcf2ff71638`  
		Last Modified: Wed, 18 Jan 2017 22:56:55 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d705e50e17a22b40631136aee6fab031337263e3cf3264c2ce4f6a188ce4d250`  
		Last Modified: Wed, 18 Jan 2017 22:56:54 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074305b37ed17d8d277c347854d8b02a82b0fcc18399fe609c53409ae5d14f97`  
		Last Modified: Wed, 18 Jan 2017 22:56:54 GMT  
		Size: 10.5 MB (10488303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40de2940e744d0afa24d6af318d3acea7c2089c69065dee2e1c79c32f44699f9`  
		Last Modified: Wed, 18 Jan 2017 22:56:50 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa3c7fbb50da26797dc9abe65cda02e4296e9a105f1b79c35e4f319e2f97ea6`  
		Last Modified: Wed, 18 Jan 2017 22:56:50 GMT  
		Size: 1.2 KB (1235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9810fd3c4e4e81239d58573f71fb3dfffab17b20a0ca86a84e5e026a82da74`  
		Last Modified: Wed, 18 Jan 2017 22:56:50 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01b2ae1e81bf8e47caabe58ac881e7addaa9c8fd0e7d482854ade96b95977d`  
		Last Modified: Wed, 18 Jan 2017 22:56:50 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0-windowsservercore`

```console
$ docker pull redis@sha256:665e2b80dbbf7e54ea5c26c2839d3c0a9cdbdfc4b84c6fa18dfec56ed147d2b3
```

-	Platforms:
	-	windows; amd64

### `redis:3.0-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 GB (5002746656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31003113b44ac73dd6049498ccd9fdd95d74de9040ff6e6932aa579908ef248b`
-	Default Command: `["redis-server.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Wed, 18 Jan 2017 00:22:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 18 Jan 2017 22:49:45 GMT
RUN $newPath = ('C:\Redis;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 18 Jan 2017 22:49:52 GMT
ENV REDIS_VERSION=3.0.504
# Wed, 18 Jan 2017 22:49:55 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/MSOpenTech/redis/releases/download/win-3.0.504/Redis-x64-3.0.504.zip
# Wed, 18 Jan 2017 22:50:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:REDIS_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:REDIS_DOWNLOAD_URL -OutFile 'redis.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive redis.zip -DestinationPath C:\Redis; 		Write-Host 'Verifying install ("redis-server --version") ...'; 	redis-server --version; 		Write-Host 'Removing ...'; 	Remove-Item redis.zip -Force
# Wed, 18 Jan 2017 22:50:59 GMT
VOLUME [C:\data]
# Wed, 18 Jan 2017 22:51:04 GMT
WORKDIR C:\data
# Wed, 18 Jan 2017 22:51:10 GMT
EXPOSE 6379/tcp
# Wed, 18 Jan 2017 22:51:19 GMT
CMD ["redis-server.exe"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3430754e4d171ead00cf6766797a28abf3caf236f6c92c5c346ea2ad3955a129`  
		Size: 913.1 MB (913145061 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2090e83c9aacacb2da7d0836cf297e9927a3137c208e2f631e39e181e31ceb90`  
		Last Modified: Wed, 18 Jan 2017 22:56:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da44b0086252f4702e3a56302c8f8b41465bed5f455838bf271fced6fc93a0c`  
		Last Modified: Wed, 18 Jan 2017 22:56:57 GMT  
		Size: 9.1 MB (9118824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05debd25f02d505fcd5a68db4988714dc0cd9754892cf3aedb4ebdcf2ff71638`  
		Last Modified: Wed, 18 Jan 2017 22:56:55 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d705e50e17a22b40631136aee6fab031337263e3cf3264c2ce4f6a188ce4d250`  
		Last Modified: Wed, 18 Jan 2017 22:56:54 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074305b37ed17d8d277c347854d8b02a82b0fcc18399fe609c53409ae5d14f97`  
		Last Modified: Wed, 18 Jan 2017 22:56:54 GMT  
		Size: 10.5 MB (10488303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40de2940e744d0afa24d6af318d3acea7c2089c69065dee2e1c79c32f44699f9`  
		Last Modified: Wed, 18 Jan 2017 22:56:50 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa3c7fbb50da26797dc9abe65cda02e4296e9a105f1b79c35e4f319e2f97ea6`  
		Last Modified: Wed, 18 Jan 2017 22:56:50 GMT  
		Size: 1.2 KB (1235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9810fd3c4e4e81239d58573f71fb3dfffab17b20a0ca86a84e5e026a82da74`  
		Last Modified: Wed, 18 Jan 2017 22:56:50 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01b2ae1e81bf8e47caabe58ac881e7addaa9c8fd0e7d482854ade96b95977d`  
		Last Modified: Wed, 18 Jan 2017 22:56:50 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0.504-nanoserver`

```console
$ docker pull redis@sha256:9b3a1d41752327ad7a8e6038b706d46f0c291ca59b7eb99c9ce3aece167736ba
```

-	Platforms:
	-	windows; amd64

### `redis:3.0.504-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.9 MB (340944053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64716473eb329e6f572d5eecfda9de417b5787ae036f6f8c66d00af53f9ac955`
-	Default Command: `["redis-server.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 18 Jan 2017 22:52:13 GMT
RUN $newPath = ('C:\Redis;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 18 Jan 2017 22:52:16 GMT
ENV REDIS_VERSION=3.0.504
# Wed, 18 Jan 2017 22:52:22 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/MSOpenTech/redis/releases/download/win-3.0.504/Redis-x64-3.0.504.zip
# Wed, 18 Jan 2017 22:53:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:REDIS_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:REDIS_DOWNLOAD_URL -OutFile 'redis.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive redis.zip -DestinationPath C:\Redis; 		Write-Host 'Verifying install ("redis-server --version") ...'; 	redis-server --version; 		Write-Host 'Removing ...'; 	Remove-Item redis.zip -Force
# Wed, 18 Jan 2017 22:53:05 GMT
VOLUME [C:\data]
# Wed, 18 Jan 2017 22:53:12 GMT
WORKDIR C:\data
# Wed, 18 Jan 2017 22:53:15 GMT
EXPOSE 6379/tcp
# Wed, 18 Jan 2017 22:53:18 GMT
CMD ["redis-server.exe"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3ac17e2e6106d09a44642a437c318092eddd284afea0b4e707e89f6cec7a18ef`  
		Size: 80.6 MB (80617684 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e75762e22d922ed4bb69ae4e673c912389d9d70fd91eaa33cd0732f0a8e28a4e`  
		Last Modified: Fri, 13 Jan 2017 18:00:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de31e43b05dd874f8ca7edfb3aac6545866c500853b7e509ba14e9ae38ad2097`  
		Last Modified: Wed, 18 Jan 2017 22:57:11 GMT  
		Size: 872.2 KB (872241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc42d6aa048346ecb0ffbbe7d7de7113cf044664ace34bf3b8808bfba9c2d1e0`  
		Last Modified: Wed, 18 Jan 2017 22:57:10 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4f5f2aea20ab72b0318db79b248da0413e78b81892b8b00570fd35740c1608`  
		Last Modified: Wed, 18 Jan 2017 22:57:10 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c544bd7a66689165d89e0e9586e7b4bb8623372f57a2b236913e5e651e7aad`  
		Last Modified: Wed, 18 Jan 2017 22:57:09 GMT  
		Size: 6.8 MB (6756400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd44c0ae3b6b24a1e4cabfb6da514db05da87d277f3e416bbd0ab8ee93a31c7`  
		Last Modified: Wed, 18 Jan 2017 22:57:07 GMT  
		Size: 969.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848cd6a30bd1810e53e8fe0ed08f060890d141b591bb70bc916b25064ab00ac7`  
		Last Modified: Wed, 18 Jan 2017 22:57:07 GMT  
		Size: 969.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2516602aeba60687d4da473e7a48cbe63a4091325d8bfeb74379d5fe67a0f8ea`  
		Last Modified: Wed, 18 Jan 2017 22:57:08 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0273255796b68e51b9b7d82ea2fb7f215981da61f73f51f74988ab9e982cf1`  
		Last Modified: Wed, 18 Jan 2017 22:57:07 GMT  
		Size: 966.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.0-nanoserver`

```console
$ docker pull redis@sha256:9b3a1d41752327ad7a8e6038b706d46f0c291ca59b7eb99c9ce3aece167736ba
```

-	Platforms:
	-	windows; amd64

### `redis:3.0-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.9 MB (340944053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64716473eb329e6f572d5eecfda9de417b5787ae036f6f8c66d00af53f9ac955`
-	Default Command: `["redis-server.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 18 Jan 2017 22:52:13 GMT
RUN $newPath = ('C:\Redis;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 18 Jan 2017 22:52:16 GMT
ENV REDIS_VERSION=3.0.504
# Wed, 18 Jan 2017 22:52:22 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/MSOpenTech/redis/releases/download/win-3.0.504/Redis-x64-3.0.504.zip
# Wed, 18 Jan 2017 22:53:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:REDIS_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:REDIS_DOWNLOAD_URL -OutFile 'redis.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive redis.zip -DestinationPath C:\Redis; 		Write-Host 'Verifying install ("redis-server --version") ...'; 	redis-server --version; 		Write-Host 'Removing ...'; 	Remove-Item redis.zip -Force
# Wed, 18 Jan 2017 22:53:05 GMT
VOLUME [C:\data]
# Wed, 18 Jan 2017 22:53:12 GMT
WORKDIR C:\data
# Wed, 18 Jan 2017 22:53:15 GMT
EXPOSE 6379/tcp
# Wed, 18 Jan 2017 22:53:18 GMT
CMD ["redis-server.exe"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3ac17e2e6106d09a44642a437c318092eddd284afea0b4e707e89f6cec7a18ef`  
		Size: 80.6 MB (80617684 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e75762e22d922ed4bb69ae4e673c912389d9d70fd91eaa33cd0732f0a8e28a4e`  
		Last Modified: Fri, 13 Jan 2017 18:00:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de31e43b05dd874f8ca7edfb3aac6545866c500853b7e509ba14e9ae38ad2097`  
		Last Modified: Wed, 18 Jan 2017 22:57:11 GMT  
		Size: 872.2 KB (872241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc42d6aa048346ecb0ffbbe7d7de7113cf044664ace34bf3b8808bfba9c2d1e0`  
		Last Modified: Wed, 18 Jan 2017 22:57:10 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4f5f2aea20ab72b0318db79b248da0413e78b81892b8b00570fd35740c1608`  
		Last Modified: Wed, 18 Jan 2017 22:57:10 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c544bd7a66689165d89e0e9586e7b4bb8623372f57a2b236913e5e651e7aad`  
		Last Modified: Wed, 18 Jan 2017 22:57:09 GMT  
		Size: 6.8 MB (6756400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd44c0ae3b6b24a1e4cabfb6da514db05da87d277f3e416bbd0ab8ee93a31c7`  
		Last Modified: Wed, 18 Jan 2017 22:57:07 GMT  
		Size: 969.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848cd6a30bd1810e53e8fe0ed08f060890d141b591bb70bc916b25064ab00ac7`  
		Last Modified: Wed, 18 Jan 2017 22:57:07 GMT  
		Size: 969.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2516602aeba60687d4da473e7a48cbe63a4091325d8bfeb74379d5fe67a0f8ea`  
		Last Modified: Wed, 18 Jan 2017 22:57:08 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0273255796b68e51b9b7d82ea2fb7f215981da61f73f51f74988ab9e982cf1`  
		Last Modified: Wed, 18 Jan 2017 22:57:07 GMT  
		Size: 966.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.8`

```console
$ docker pull redis@sha256:1b358a2b0dc2629af3ed75737e2f07e5b3408eabf76a8fa99606ec0c276a93f8
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.4 MB (74409376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83d6014ac5c8193fa43dd16b161f0e524141800f10cff44d7bad3b637991cf16`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 00:04:29 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 22 Mar 2017 15:06:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 15:06:51 GMT
ENV GOSU_VERSION=1.7
# Wed, 22 Mar 2017 15:06:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 22 Mar 2017 15:06:56 GMT
ENV REDIS_VERSION=3.2.8
# Wed, 22 Mar 2017 15:06:56 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Wed, 22 Mar 2017 15:06:57 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Wed, 22 Mar 2017 15:07:41 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 15:07:42 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 22 Mar 2017 15:07:43 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 15:07:43 GMT
WORKDIR /data
# Wed, 22 Mar 2017 15:07:44 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 22 Mar 2017 15:07:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Mar 2017 15:07:44 GMT
EXPOSE 6379/tcp
# Wed, 22 Mar 2017 15:07:45 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787f13ab8ea910bcc271068eab4c454ed8c5ba45156dd3e393a742a4826ebfad`  
		Last Modified: Fri, 24 Mar 2017 00:29:12 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14faf2bdac07deb52fa72e15675bbef90c4da9fb5c6ac5d52f7ad568fb5719bb`  
		Last Modified: Fri, 24 Mar 2017 00:29:17 GMT  
		Size: 16.7 MB (16689642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52905ba81f398b8d62f1a7f7d30f40aa08f0984955fa240256eb909f8a84cdd`  
		Last Modified: Fri, 24 Mar 2017 00:29:11 GMT  
		Size: 807.9 KB (807927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de079db59e0eb783f8c44a1b94733cb5b32916297a558a019c2e8522a2996bd5`  
		Last Modified: Fri, 24 Mar 2017 00:30:48 GMT  
		Size: 5.5 MB (5470795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34450ffcb858c9f4a1ca4f15df048b93ab28a70e199d65bddd8242d22c699ddd`  
		Last Modified: Fri, 24 Mar 2017 00:30:46 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a08f1c245e8ae4ddc5d652cf82a8fc6be2c4d68f54254be5cd496c89fe47667`  
		Last Modified: Fri, 24 Mar 2017 00:30:47 GMT  
		Size: 393.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2`

```console
$ docker pull redis@sha256:1b358a2b0dc2629af3ed75737e2f07e5b3408eabf76a8fa99606ec0c276a93f8
```

-	Platforms:
	-	linux; amd64

### `redis:3.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.4 MB (74409376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83d6014ac5c8193fa43dd16b161f0e524141800f10cff44d7bad3b637991cf16`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 00:04:29 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 22 Mar 2017 15:06:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 15:06:51 GMT
ENV GOSU_VERSION=1.7
# Wed, 22 Mar 2017 15:06:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 22 Mar 2017 15:06:56 GMT
ENV REDIS_VERSION=3.2.8
# Wed, 22 Mar 2017 15:06:56 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Wed, 22 Mar 2017 15:06:57 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Wed, 22 Mar 2017 15:07:41 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 15:07:42 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 22 Mar 2017 15:07:43 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 15:07:43 GMT
WORKDIR /data
# Wed, 22 Mar 2017 15:07:44 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 22 Mar 2017 15:07:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Mar 2017 15:07:44 GMT
EXPOSE 6379/tcp
# Wed, 22 Mar 2017 15:07:45 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787f13ab8ea910bcc271068eab4c454ed8c5ba45156dd3e393a742a4826ebfad`  
		Last Modified: Fri, 24 Mar 2017 00:29:12 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14faf2bdac07deb52fa72e15675bbef90c4da9fb5c6ac5d52f7ad568fb5719bb`  
		Last Modified: Fri, 24 Mar 2017 00:29:17 GMT  
		Size: 16.7 MB (16689642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52905ba81f398b8d62f1a7f7d30f40aa08f0984955fa240256eb909f8a84cdd`  
		Last Modified: Fri, 24 Mar 2017 00:29:11 GMT  
		Size: 807.9 KB (807927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de079db59e0eb783f8c44a1b94733cb5b32916297a558a019c2e8522a2996bd5`  
		Last Modified: Fri, 24 Mar 2017 00:30:48 GMT  
		Size: 5.5 MB (5470795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34450ffcb858c9f4a1ca4f15df048b93ab28a70e199d65bddd8242d22c699ddd`  
		Last Modified: Fri, 24 Mar 2017 00:30:46 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a08f1c245e8ae4ddc5d652cf82a8fc6be2c4d68f54254be5cd496c89fe47667`  
		Last Modified: Fri, 24 Mar 2017 00:30:47 GMT  
		Size: 393.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3`

```console
$ docker pull redis@sha256:1b358a2b0dc2629af3ed75737e2f07e5b3408eabf76a8fa99606ec0c276a93f8
```

-	Platforms:
	-	linux; amd64

### `redis:3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.4 MB (74409376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83d6014ac5c8193fa43dd16b161f0e524141800f10cff44d7bad3b637991cf16`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 00:04:29 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 22 Mar 2017 15:06:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 15:06:51 GMT
ENV GOSU_VERSION=1.7
# Wed, 22 Mar 2017 15:06:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 22 Mar 2017 15:06:56 GMT
ENV REDIS_VERSION=3.2.8
# Wed, 22 Mar 2017 15:06:56 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Wed, 22 Mar 2017 15:06:57 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Wed, 22 Mar 2017 15:07:41 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 15:07:42 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 22 Mar 2017 15:07:43 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 15:07:43 GMT
WORKDIR /data
# Wed, 22 Mar 2017 15:07:44 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 22 Mar 2017 15:07:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Mar 2017 15:07:44 GMT
EXPOSE 6379/tcp
# Wed, 22 Mar 2017 15:07:45 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787f13ab8ea910bcc271068eab4c454ed8c5ba45156dd3e393a742a4826ebfad`  
		Last Modified: Fri, 24 Mar 2017 00:29:12 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14faf2bdac07deb52fa72e15675bbef90c4da9fb5c6ac5d52f7ad568fb5719bb`  
		Last Modified: Fri, 24 Mar 2017 00:29:17 GMT  
		Size: 16.7 MB (16689642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52905ba81f398b8d62f1a7f7d30f40aa08f0984955fa240256eb909f8a84cdd`  
		Last Modified: Fri, 24 Mar 2017 00:29:11 GMT  
		Size: 807.9 KB (807927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de079db59e0eb783f8c44a1b94733cb5b32916297a558a019c2e8522a2996bd5`  
		Last Modified: Fri, 24 Mar 2017 00:30:48 GMT  
		Size: 5.5 MB (5470795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34450ffcb858c9f4a1ca4f15df048b93ab28a70e199d65bddd8242d22c699ddd`  
		Last Modified: Fri, 24 Mar 2017 00:30:46 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a08f1c245e8ae4ddc5d652cf82a8fc6be2c4d68f54254be5cd496c89fe47667`  
		Last Modified: Fri, 24 Mar 2017 00:30:47 GMT  
		Size: 393.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:latest`

```console
$ docker pull redis@sha256:1b358a2b0dc2629af3ed75737e2f07e5b3408eabf76a8fa99606ec0c276a93f8
```

-	Platforms:
	-	linux; amd64

### `redis:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.4 MB (74409376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83d6014ac5c8193fa43dd16b161f0e524141800f10cff44d7bad3b637991cf16`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 00:04:29 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 22 Mar 2017 15:06:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 15:06:51 GMT
ENV GOSU_VERSION=1.7
# Wed, 22 Mar 2017 15:06:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 22 Mar 2017 15:06:56 GMT
ENV REDIS_VERSION=3.2.8
# Wed, 22 Mar 2017 15:06:56 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Wed, 22 Mar 2017 15:06:57 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Wed, 22 Mar 2017 15:07:41 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 15:07:42 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 22 Mar 2017 15:07:43 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 15:07:43 GMT
WORKDIR /data
# Wed, 22 Mar 2017 15:07:44 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 22 Mar 2017 15:07:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Mar 2017 15:07:44 GMT
EXPOSE 6379/tcp
# Wed, 22 Mar 2017 15:07:45 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787f13ab8ea910bcc271068eab4c454ed8c5ba45156dd3e393a742a4826ebfad`  
		Last Modified: Fri, 24 Mar 2017 00:29:12 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14faf2bdac07deb52fa72e15675bbef90c4da9fb5c6ac5d52f7ad568fb5719bb`  
		Last Modified: Fri, 24 Mar 2017 00:29:17 GMT  
		Size: 16.7 MB (16689642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52905ba81f398b8d62f1a7f7d30f40aa08f0984955fa240256eb909f8a84cdd`  
		Last Modified: Fri, 24 Mar 2017 00:29:11 GMT  
		Size: 807.9 KB (807927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de079db59e0eb783f8c44a1b94733cb5b32916297a558a019c2e8522a2996bd5`  
		Last Modified: Fri, 24 Mar 2017 00:30:48 GMT  
		Size: 5.5 MB (5470795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34450ffcb858c9f4a1ca4f15df048b93ab28a70e199d65bddd8242d22c699ddd`  
		Last Modified: Fri, 24 Mar 2017 00:30:46 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a08f1c245e8ae4ddc5d652cf82a8fc6be2c4d68f54254be5cd496c89fe47667`  
		Last Modified: Fri, 24 Mar 2017 00:30:47 GMT  
		Size: 393.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.8-32bit`

```console
$ docker pull redis@sha256:0e1394f06e8c4f60ce8d3be2146bf0f6917f88072ff03ff7ee804ccbdeb6379b
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.8-32bit` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.1 MB (78056036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c228f4b97cfc09f1f8e13a875d2d5337b1c4853d627b1f344f527d7c1b8f23a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 00:04:29 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 22 Mar 2017 15:06:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 15:06:51 GMT
ENV GOSU_VERSION=1.7
# Wed, 22 Mar 2017 15:06:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 22 Mar 2017 15:06:56 GMT
ENV REDIS_VERSION=3.2.8
# Wed, 22 Mar 2017 15:06:56 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Wed, 22 Mar 2017 15:06:57 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Wed, 22 Mar 2017 15:07:50 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 15:08:39 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 15:08:40 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 22 Mar 2017 15:08:41 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 15:08:41 GMT
WORKDIR /data
# Wed, 22 Mar 2017 15:08:42 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 22 Mar 2017 15:08:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Mar 2017 15:08:42 GMT
EXPOSE 6379/tcp
# Wed, 22 Mar 2017 15:08:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787f13ab8ea910bcc271068eab4c454ed8c5ba45156dd3e393a742a4826ebfad`  
		Last Modified: Fri, 24 Mar 2017 00:29:12 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14faf2bdac07deb52fa72e15675bbef90c4da9fb5c6ac5d52f7ad568fb5719bb`  
		Last Modified: Fri, 24 Mar 2017 00:29:17 GMT  
		Size: 16.7 MB (16689642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52905ba81f398b8d62f1a7f7d30f40aa08f0984955fa240256eb909f8a84cdd`  
		Last Modified: Fri, 24 Mar 2017 00:29:11 GMT  
		Size: 807.9 KB (807927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0529285d37ee36d56b2439403cd772c7c5dd9d9678c478dd94aab184d1619b5b`  
		Last Modified: Fri, 24 Mar 2017 00:32:12 GMT  
		Size: 4.2 MB (4224460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036c3bedbe98058dc15c7545f8050b4d6a9b00b2c5d73bfa4dff1b81c1dcb6e2`  
		Last Modified: Fri, 24 Mar 2017 00:32:12 GMT  
		Size: 4.9 MB (4892996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5455f1f9e4a638a7d36def19417d1ab5c254dc84744410d9f1acdd860abcd800`  
		Last Modified: Fri, 24 Mar 2017 00:32:10 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2c2a06a51ac2c7ad9442d6abd2fc52fcdf896e85fa75b85aa47f60ace43042`  
		Last Modified: Fri, 24 Mar 2017 00:32:09 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-32bit`

```console
$ docker pull redis@sha256:0e1394f06e8c4f60ce8d3be2146bf0f6917f88072ff03ff7ee804ccbdeb6379b
```

-	Platforms:
	-	linux; amd64

### `redis:3.2-32bit` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.1 MB (78056036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c228f4b97cfc09f1f8e13a875d2d5337b1c4853d627b1f344f527d7c1b8f23a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 00:04:29 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 22 Mar 2017 15:06:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 15:06:51 GMT
ENV GOSU_VERSION=1.7
# Wed, 22 Mar 2017 15:06:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 22 Mar 2017 15:06:56 GMT
ENV REDIS_VERSION=3.2.8
# Wed, 22 Mar 2017 15:06:56 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Wed, 22 Mar 2017 15:06:57 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Wed, 22 Mar 2017 15:07:50 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 15:08:39 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 15:08:40 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 22 Mar 2017 15:08:41 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 15:08:41 GMT
WORKDIR /data
# Wed, 22 Mar 2017 15:08:42 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 22 Mar 2017 15:08:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Mar 2017 15:08:42 GMT
EXPOSE 6379/tcp
# Wed, 22 Mar 2017 15:08:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787f13ab8ea910bcc271068eab4c454ed8c5ba45156dd3e393a742a4826ebfad`  
		Last Modified: Fri, 24 Mar 2017 00:29:12 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14faf2bdac07deb52fa72e15675bbef90c4da9fb5c6ac5d52f7ad568fb5719bb`  
		Last Modified: Fri, 24 Mar 2017 00:29:17 GMT  
		Size: 16.7 MB (16689642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52905ba81f398b8d62f1a7f7d30f40aa08f0984955fa240256eb909f8a84cdd`  
		Last Modified: Fri, 24 Mar 2017 00:29:11 GMT  
		Size: 807.9 KB (807927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0529285d37ee36d56b2439403cd772c7c5dd9d9678c478dd94aab184d1619b5b`  
		Last Modified: Fri, 24 Mar 2017 00:32:12 GMT  
		Size: 4.2 MB (4224460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036c3bedbe98058dc15c7545f8050b4d6a9b00b2c5d73bfa4dff1b81c1dcb6e2`  
		Last Modified: Fri, 24 Mar 2017 00:32:12 GMT  
		Size: 4.9 MB (4892996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5455f1f9e4a638a7d36def19417d1ab5c254dc84744410d9f1acdd860abcd800`  
		Last Modified: Fri, 24 Mar 2017 00:32:10 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2c2a06a51ac2c7ad9442d6abd2fc52fcdf896e85fa75b85aa47f60ace43042`  
		Last Modified: Fri, 24 Mar 2017 00:32:09 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-32bit`

```console
$ docker pull redis@sha256:0e1394f06e8c4f60ce8d3be2146bf0f6917f88072ff03ff7ee804ccbdeb6379b
```

-	Platforms:
	-	linux; amd64

### `redis:3-32bit` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.1 MB (78056036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c228f4b97cfc09f1f8e13a875d2d5337b1c4853d627b1f344f527d7c1b8f23a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 00:04:29 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 22 Mar 2017 15:06:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 15:06:51 GMT
ENV GOSU_VERSION=1.7
# Wed, 22 Mar 2017 15:06:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 22 Mar 2017 15:06:56 GMT
ENV REDIS_VERSION=3.2.8
# Wed, 22 Mar 2017 15:06:56 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Wed, 22 Mar 2017 15:06:57 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Wed, 22 Mar 2017 15:07:50 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 15:08:39 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 15:08:40 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 22 Mar 2017 15:08:41 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 15:08:41 GMT
WORKDIR /data
# Wed, 22 Mar 2017 15:08:42 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 22 Mar 2017 15:08:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Mar 2017 15:08:42 GMT
EXPOSE 6379/tcp
# Wed, 22 Mar 2017 15:08:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787f13ab8ea910bcc271068eab4c454ed8c5ba45156dd3e393a742a4826ebfad`  
		Last Modified: Fri, 24 Mar 2017 00:29:12 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14faf2bdac07deb52fa72e15675bbef90c4da9fb5c6ac5d52f7ad568fb5719bb`  
		Last Modified: Fri, 24 Mar 2017 00:29:17 GMT  
		Size: 16.7 MB (16689642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52905ba81f398b8d62f1a7f7d30f40aa08f0984955fa240256eb909f8a84cdd`  
		Last Modified: Fri, 24 Mar 2017 00:29:11 GMT  
		Size: 807.9 KB (807927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0529285d37ee36d56b2439403cd772c7c5dd9d9678c478dd94aab184d1619b5b`  
		Last Modified: Fri, 24 Mar 2017 00:32:12 GMT  
		Size: 4.2 MB (4224460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036c3bedbe98058dc15c7545f8050b4d6a9b00b2c5d73bfa4dff1b81c1dcb6e2`  
		Last Modified: Fri, 24 Mar 2017 00:32:12 GMT  
		Size: 4.9 MB (4892996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5455f1f9e4a638a7d36def19417d1ab5c254dc84744410d9f1acdd860abcd800`  
		Last Modified: Fri, 24 Mar 2017 00:32:10 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2c2a06a51ac2c7ad9442d6abd2fc52fcdf896e85fa75b85aa47f60ace43042`  
		Last Modified: Fri, 24 Mar 2017 00:32:09 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:32bit`

```console
$ docker pull redis@sha256:0e1394f06e8c4f60ce8d3be2146bf0f6917f88072ff03ff7ee804ccbdeb6379b
```

-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.1 MB (78056036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c228f4b97cfc09f1f8e13a875d2d5337b1c4853d627b1f344f527d7c1b8f23a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 00:04:29 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 22 Mar 2017 15:06:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 15:06:51 GMT
ENV GOSU_VERSION=1.7
# Wed, 22 Mar 2017 15:06:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 22 Mar 2017 15:06:56 GMT
ENV REDIS_VERSION=3.2.8
# Wed, 22 Mar 2017 15:06:56 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Wed, 22 Mar 2017 15:06:57 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Wed, 22 Mar 2017 15:07:50 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 15:08:39 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 15:08:40 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 22 Mar 2017 15:08:41 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 15:08:41 GMT
WORKDIR /data
# Wed, 22 Mar 2017 15:08:42 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 22 Mar 2017 15:08:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Mar 2017 15:08:42 GMT
EXPOSE 6379/tcp
# Wed, 22 Mar 2017 15:08:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787f13ab8ea910bcc271068eab4c454ed8c5ba45156dd3e393a742a4826ebfad`  
		Last Modified: Fri, 24 Mar 2017 00:29:12 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14faf2bdac07deb52fa72e15675bbef90c4da9fb5c6ac5d52f7ad568fb5719bb`  
		Last Modified: Fri, 24 Mar 2017 00:29:17 GMT  
		Size: 16.7 MB (16689642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52905ba81f398b8d62f1a7f7d30f40aa08f0984955fa240256eb909f8a84cdd`  
		Last Modified: Fri, 24 Mar 2017 00:29:11 GMT  
		Size: 807.9 KB (807927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0529285d37ee36d56b2439403cd772c7c5dd9d9678c478dd94aab184d1619b5b`  
		Last Modified: Fri, 24 Mar 2017 00:32:12 GMT  
		Size: 4.2 MB (4224460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036c3bedbe98058dc15c7545f8050b4d6a9b00b2c5d73bfa4dff1b81c1dcb6e2`  
		Last Modified: Fri, 24 Mar 2017 00:32:12 GMT  
		Size: 4.9 MB (4892996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5455f1f9e4a638a7d36def19417d1ab5c254dc84744410d9f1acdd860abcd800`  
		Last Modified: Fri, 24 Mar 2017 00:32:10 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2c2a06a51ac2c7ad9442d6abd2fc52fcdf896e85fa75b85aa47f60ace43042`  
		Last Modified: Fri, 24 Mar 2017 00:32:09 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.8-alpine`

```console
$ docker pull redis@sha256:9cd405cd1ec1410eaab064a1383d0d8854d1eef74a54e1e4a92fb4ec7bdc3ee7
```

-	Platforms:
	-	linux; amd64

### `redis:3.2.8-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7311600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83638a6d3af20698d5e207febe714ac46a23a98e1d86ba36fe502fadc788daa3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:32:20 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 03 Mar 2017 23:32:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 03 Mar 2017 23:32:21 GMT
ENV REDIS_VERSION=3.2.8
# Fri, 03 Mar 2017 23:32:21 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Fri, 03 Mar 2017 23:32:22 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Fri, 03 Mar 2017 23:33:05 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Fri, 03 Mar 2017 23:33:06 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 03 Mar 2017 23:33:06 GMT
VOLUME [/data]
# Fri, 03 Mar 2017 23:33:06 GMT
WORKDIR /data
# Fri, 03 Mar 2017 23:33:07 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:33:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 23:33:08 GMT
EXPOSE 6379/tcp
# Fri, 03 Mar 2017 23:33:08 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a503a4771a4acb18e74ce194540e8b8d89cc782c16d991536729aa1b0a8dbd47`  
		Last Modified: Sat, 04 Mar 2017 05:47:23 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c5d910c68324fec337bf61e7baeda6b221665281fb37b8a23c4a1ea6cc390d`  
		Last Modified: Sat, 04 Mar 2017 05:47:21 GMT  
		Size: 7.7 KB (7686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aadd3a49c304078c7122e703aff73d9d481ce1b0beba04eceabd3abb18051ee`  
		Last Modified: Sat, 04 Mar 2017 05:48:08 GMT  
		Size: 5.4 MB (5396912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf925aa1ad1ff13ac026cc6b2426e28549740de01ccc607a677a815e94a8524`  
		Last Modified: Sat, 04 Mar 2017 05:48:05 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0565da0f872e734aa432a1ec7b391f961e37ad33ed0d842a2319600c7d6b4952`  
		Last Modified: Sat, 04 Mar 2017 05:48:05 GMT  
		Size: 384.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-alpine`

```console
$ docker pull redis@sha256:9cd405cd1ec1410eaab064a1383d0d8854d1eef74a54e1e4a92fb4ec7bdc3ee7
```

-	Platforms:
	-	linux; amd64

### `redis:3.2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7311600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83638a6d3af20698d5e207febe714ac46a23a98e1d86ba36fe502fadc788daa3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:32:20 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 03 Mar 2017 23:32:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 03 Mar 2017 23:32:21 GMT
ENV REDIS_VERSION=3.2.8
# Fri, 03 Mar 2017 23:32:21 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Fri, 03 Mar 2017 23:32:22 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Fri, 03 Mar 2017 23:33:05 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Fri, 03 Mar 2017 23:33:06 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 03 Mar 2017 23:33:06 GMT
VOLUME [/data]
# Fri, 03 Mar 2017 23:33:06 GMT
WORKDIR /data
# Fri, 03 Mar 2017 23:33:07 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:33:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 23:33:08 GMT
EXPOSE 6379/tcp
# Fri, 03 Mar 2017 23:33:08 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a503a4771a4acb18e74ce194540e8b8d89cc782c16d991536729aa1b0a8dbd47`  
		Last Modified: Sat, 04 Mar 2017 05:47:23 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c5d910c68324fec337bf61e7baeda6b221665281fb37b8a23c4a1ea6cc390d`  
		Last Modified: Sat, 04 Mar 2017 05:47:21 GMT  
		Size: 7.7 KB (7686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aadd3a49c304078c7122e703aff73d9d481ce1b0beba04eceabd3abb18051ee`  
		Last Modified: Sat, 04 Mar 2017 05:48:08 GMT  
		Size: 5.4 MB (5396912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf925aa1ad1ff13ac026cc6b2426e28549740de01ccc607a677a815e94a8524`  
		Last Modified: Sat, 04 Mar 2017 05:48:05 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0565da0f872e734aa432a1ec7b391f961e37ad33ed0d842a2319600c7d6b4952`  
		Last Modified: Sat, 04 Mar 2017 05:48:05 GMT  
		Size: 384.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-alpine`

```console
$ docker pull redis@sha256:9cd405cd1ec1410eaab064a1383d0d8854d1eef74a54e1e4a92fb4ec7bdc3ee7
```

-	Platforms:
	-	linux; amd64

### `redis:3-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7311600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83638a6d3af20698d5e207febe714ac46a23a98e1d86ba36fe502fadc788daa3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:32:20 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 03 Mar 2017 23:32:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 03 Mar 2017 23:32:21 GMT
ENV REDIS_VERSION=3.2.8
# Fri, 03 Mar 2017 23:32:21 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Fri, 03 Mar 2017 23:32:22 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Fri, 03 Mar 2017 23:33:05 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Fri, 03 Mar 2017 23:33:06 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 03 Mar 2017 23:33:06 GMT
VOLUME [/data]
# Fri, 03 Mar 2017 23:33:06 GMT
WORKDIR /data
# Fri, 03 Mar 2017 23:33:07 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:33:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 23:33:08 GMT
EXPOSE 6379/tcp
# Fri, 03 Mar 2017 23:33:08 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a503a4771a4acb18e74ce194540e8b8d89cc782c16d991536729aa1b0a8dbd47`  
		Last Modified: Sat, 04 Mar 2017 05:47:23 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c5d910c68324fec337bf61e7baeda6b221665281fb37b8a23c4a1ea6cc390d`  
		Last Modified: Sat, 04 Mar 2017 05:47:21 GMT  
		Size: 7.7 KB (7686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aadd3a49c304078c7122e703aff73d9d481ce1b0beba04eceabd3abb18051ee`  
		Last Modified: Sat, 04 Mar 2017 05:48:08 GMT  
		Size: 5.4 MB (5396912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf925aa1ad1ff13ac026cc6b2426e28549740de01ccc607a677a815e94a8524`  
		Last Modified: Sat, 04 Mar 2017 05:48:05 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0565da0f872e734aa432a1ec7b391f961e37ad33ed0d842a2319600c7d6b4952`  
		Last Modified: Sat, 04 Mar 2017 05:48:05 GMT  
		Size: 384.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine`

```console
$ docker pull redis@sha256:9cd405cd1ec1410eaab064a1383d0d8854d1eef74a54e1e4a92fb4ec7bdc3ee7
```

-	Platforms:
	-	linux; amd64

### `redis:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7311600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83638a6d3af20698d5e207febe714ac46a23a98e1d86ba36fe502fadc788daa3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:32:20 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 03 Mar 2017 23:32:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 03 Mar 2017 23:32:21 GMT
ENV REDIS_VERSION=3.2.8
# Fri, 03 Mar 2017 23:32:21 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Fri, 03 Mar 2017 23:32:22 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Fri, 03 Mar 2017 23:33:05 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Fri, 03 Mar 2017 23:33:06 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 03 Mar 2017 23:33:06 GMT
VOLUME [/data]
# Fri, 03 Mar 2017 23:33:06 GMT
WORKDIR /data
# Fri, 03 Mar 2017 23:33:07 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:33:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 23:33:08 GMT
EXPOSE 6379/tcp
# Fri, 03 Mar 2017 23:33:08 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a503a4771a4acb18e74ce194540e8b8d89cc782c16d991536729aa1b0a8dbd47`  
		Last Modified: Sat, 04 Mar 2017 05:47:23 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c5d910c68324fec337bf61e7baeda6b221665281fb37b8a23c4a1ea6cc390d`  
		Last Modified: Sat, 04 Mar 2017 05:47:21 GMT  
		Size: 7.7 KB (7686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aadd3a49c304078c7122e703aff73d9d481ce1b0beba04eceabd3abb18051ee`  
		Last Modified: Sat, 04 Mar 2017 05:48:08 GMT  
		Size: 5.4 MB (5396912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf925aa1ad1ff13ac026cc6b2426e28549740de01ccc607a677a815e94a8524`  
		Last Modified: Sat, 04 Mar 2017 05:48:05 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0565da0f872e734aa432a1ec7b391f961e37ad33ed0d842a2319600c7d6b4952`  
		Last Modified: Sat, 04 Mar 2017 05:48:05 GMT  
		Size: 384.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.100-windowsservercore`

```console
$ docker pull redis@sha256:60e2f0698630df1df2091372a143f39ebe1fa39a6b1f89fd7d0f566700046ac7
```

-	Platforms:
	-	windows; amd64

### `redis:3.2.100-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 GB (5011103673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e19f818176bbd1aeb3f95daea3bd4513cf35e00801199b4f8c03fff6db79c07`
-	Default Command: `["redis-server.exe","C:\\Redis\\redis.docker.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Wed, 18 Jan 2017 00:22:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 18 Jan 2017 22:49:45 GMT
RUN $newPath = ('C:\Redis;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 18 Jan 2017 22:53:25 GMT
ENV REDIS_VERSION=3.2.100
# Wed, 18 Jan 2017 22:53:33 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/MSOpenTech/redis/releases/download/win-3.2.100/Redis-x64-3.2.100.zip
# Wed, 18 Jan 2017 22:54:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:REDIS_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:REDIS_DOWNLOAD_URL -OutFile 'redis.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive redis.zip -DestinationPath C:\Redis; 		Write-Host 'Verifying install ("redis-server --version") ...'; 	redis-server --version; 		Write-Host 'Removing ...'; 	Remove-Item redis.zip -Force
# Wed, 18 Jan 2017 22:55:24 GMT
RUN (Get-Content C:\Redis\redis.windows.conf) 	-Replace '^(bind)\s+.*$', '$1 0.0.0.0' 	-Replace '^(protected-mode)\s+.*$', '$1 no' 	| Set-Content C:\Redis\redis.docker.conf
# Wed, 18 Jan 2017 22:55:29 GMT
VOLUME [C:\data]
# Wed, 18 Jan 2017 22:55:32 GMT
WORKDIR C:\data
# Wed, 18 Jan 2017 22:55:37 GMT
EXPOSE 6379/tcp
# Wed, 18 Jan 2017 22:55:41 GMT
CMD ["redis-server.exe" "C:\\Redis\\redis.docker.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3430754e4d171ead00cf6766797a28abf3caf236f6c92c5c346ea2ad3955a129`  
		Size: 913.1 MB (913145061 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2090e83c9aacacb2da7d0836cf297e9927a3137c208e2f631e39e181e31ceb90`  
		Last Modified: Wed, 18 Jan 2017 22:56:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da44b0086252f4702e3a56302c8f8b41465bed5f455838bf271fced6fc93a0c`  
		Last Modified: Wed, 18 Jan 2017 22:56:57 GMT  
		Size: 9.1 MB (9118824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384b378de0002282c7b070dee79c606a44d9fbb8fa7e9dfd07e41a72d18f935f`  
		Last Modified: Wed, 18 Jan 2017 22:57:26 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90e71dc0a25426b16deb2e33f62fc9f58105e7bfbcf8c3160c9c21ae39b0cf86`  
		Last Modified: Wed, 18 Jan 2017 22:57:25 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc4ffe232243d863a27a6fe85e1bd3f3fab3a6161921dc38f472031fcb4c7303`  
		Last Modified: Wed, 18 Jan 2017 22:57:30 GMT  
		Size: 14.3 MB (14310413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0188853bfa921906bf823bcffe4249ebad6294e84d7bcc806e251e36ca259ad5`  
		Last Modified: Wed, 18 Jan 2017 22:57:22 GMT  
		Size: 4.5 MB (4534905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec86ffa3d1d0c5fa801f6fd03736ab2d6b4d546db71bb6e634d4ce5006e1c5c7`  
		Last Modified: Wed, 18 Jan 2017 22:57:20 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07eda4f36764030981f1274d0cf9d991012ebc5b336c479b6db4d3c61a4f7ed6`  
		Last Modified: Wed, 18 Jan 2017 22:57:20 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb1b5f4cf90fb05950e298d1aa9d1dc2874e497fef0f5329c5ce55251d7cf7d9`  
		Last Modified: Wed, 18 Jan 2017 22:57:20 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc54094d7877932bd12d15a50fa999e0d90132b29b9734831226c0002e4c909a`  
		Last Modified: Wed, 18 Jan 2017 22:57:20 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-windowsservercore`

```console
$ docker pull redis@sha256:60e2f0698630df1df2091372a143f39ebe1fa39a6b1f89fd7d0f566700046ac7
```

-	Platforms:
	-	windows; amd64

### `redis:3.2-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 GB (5011103673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e19f818176bbd1aeb3f95daea3bd4513cf35e00801199b4f8c03fff6db79c07`
-	Default Command: `["redis-server.exe","C:\\Redis\\redis.docker.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Wed, 18 Jan 2017 00:22:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 18 Jan 2017 22:49:45 GMT
RUN $newPath = ('C:\Redis;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 18 Jan 2017 22:53:25 GMT
ENV REDIS_VERSION=3.2.100
# Wed, 18 Jan 2017 22:53:33 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/MSOpenTech/redis/releases/download/win-3.2.100/Redis-x64-3.2.100.zip
# Wed, 18 Jan 2017 22:54:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:REDIS_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:REDIS_DOWNLOAD_URL -OutFile 'redis.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive redis.zip -DestinationPath C:\Redis; 		Write-Host 'Verifying install ("redis-server --version") ...'; 	redis-server --version; 		Write-Host 'Removing ...'; 	Remove-Item redis.zip -Force
# Wed, 18 Jan 2017 22:55:24 GMT
RUN (Get-Content C:\Redis\redis.windows.conf) 	-Replace '^(bind)\s+.*$', '$1 0.0.0.0' 	-Replace '^(protected-mode)\s+.*$', '$1 no' 	| Set-Content C:\Redis\redis.docker.conf
# Wed, 18 Jan 2017 22:55:29 GMT
VOLUME [C:\data]
# Wed, 18 Jan 2017 22:55:32 GMT
WORKDIR C:\data
# Wed, 18 Jan 2017 22:55:37 GMT
EXPOSE 6379/tcp
# Wed, 18 Jan 2017 22:55:41 GMT
CMD ["redis-server.exe" "C:\\Redis\\redis.docker.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3430754e4d171ead00cf6766797a28abf3caf236f6c92c5c346ea2ad3955a129`  
		Size: 913.1 MB (913145061 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2090e83c9aacacb2da7d0836cf297e9927a3137c208e2f631e39e181e31ceb90`  
		Last Modified: Wed, 18 Jan 2017 22:56:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da44b0086252f4702e3a56302c8f8b41465bed5f455838bf271fced6fc93a0c`  
		Last Modified: Wed, 18 Jan 2017 22:56:57 GMT  
		Size: 9.1 MB (9118824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384b378de0002282c7b070dee79c606a44d9fbb8fa7e9dfd07e41a72d18f935f`  
		Last Modified: Wed, 18 Jan 2017 22:57:26 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90e71dc0a25426b16deb2e33f62fc9f58105e7bfbcf8c3160c9c21ae39b0cf86`  
		Last Modified: Wed, 18 Jan 2017 22:57:25 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc4ffe232243d863a27a6fe85e1bd3f3fab3a6161921dc38f472031fcb4c7303`  
		Last Modified: Wed, 18 Jan 2017 22:57:30 GMT  
		Size: 14.3 MB (14310413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0188853bfa921906bf823bcffe4249ebad6294e84d7bcc806e251e36ca259ad5`  
		Last Modified: Wed, 18 Jan 2017 22:57:22 GMT  
		Size: 4.5 MB (4534905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec86ffa3d1d0c5fa801f6fd03736ab2d6b4d546db71bb6e634d4ce5006e1c5c7`  
		Last Modified: Wed, 18 Jan 2017 22:57:20 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07eda4f36764030981f1274d0cf9d991012ebc5b336c479b6db4d3c61a4f7ed6`  
		Last Modified: Wed, 18 Jan 2017 22:57:20 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb1b5f4cf90fb05950e298d1aa9d1dc2874e497fef0f5329c5ce55251d7cf7d9`  
		Last Modified: Wed, 18 Jan 2017 22:57:20 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc54094d7877932bd12d15a50fa999e0d90132b29b9734831226c0002e4c909a`  
		Last Modified: Wed, 18 Jan 2017 22:57:20 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-windowsservercore`

```console
$ docker pull redis@sha256:60e2f0698630df1df2091372a143f39ebe1fa39a6b1f89fd7d0f566700046ac7
```

-	Platforms:
	-	windows; amd64

### `redis:3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 GB (5011103673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e19f818176bbd1aeb3f95daea3bd4513cf35e00801199b4f8c03fff6db79c07`
-	Default Command: `["redis-server.exe","C:\\Redis\\redis.docker.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Wed, 18 Jan 2017 00:22:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 18 Jan 2017 22:49:45 GMT
RUN $newPath = ('C:\Redis;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 18 Jan 2017 22:53:25 GMT
ENV REDIS_VERSION=3.2.100
# Wed, 18 Jan 2017 22:53:33 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/MSOpenTech/redis/releases/download/win-3.2.100/Redis-x64-3.2.100.zip
# Wed, 18 Jan 2017 22:54:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:REDIS_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:REDIS_DOWNLOAD_URL -OutFile 'redis.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive redis.zip -DestinationPath C:\Redis; 		Write-Host 'Verifying install ("redis-server --version") ...'; 	redis-server --version; 		Write-Host 'Removing ...'; 	Remove-Item redis.zip -Force
# Wed, 18 Jan 2017 22:55:24 GMT
RUN (Get-Content C:\Redis\redis.windows.conf) 	-Replace '^(bind)\s+.*$', '$1 0.0.0.0' 	-Replace '^(protected-mode)\s+.*$', '$1 no' 	| Set-Content C:\Redis\redis.docker.conf
# Wed, 18 Jan 2017 22:55:29 GMT
VOLUME [C:\data]
# Wed, 18 Jan 2017 22:55:32 GMT
WORKDIR C:\data
# Wed, 18 Jan 2017 22:55:37 GMT
EXPOSE 6379/tcp
# Wed, 18 Jan 2017 22:55:41 GMT
CMD ["redis-server.exe" "C:\\Redis\\redis.docker.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3430754e4d171ead00cf6766797a28abf3caf236f6c92c5c346ea2ad3955a129`  
		Size: 913.1 MB (913145061 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2090e83c9aacacb2da7d0836cf297e9927a3137c208e2f631e39e181e31ceb90`  
		Last Modified: Wed, 18 Jan 2017 22:56:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da44b0086252f4702e3a56302c8f8b41465bed5f455838bf271fced6fc93a0c`  
		Last Modified: Wed, 18 Jan 2017 22:56:57 GMT  
		Size: 9.1 MB (9118824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384b378de0002282c7b070dee79c606a44d9fbb8fa7e9dfd07e41a72d18f935f`  
		Last Modified: Wed, 18 Jan 2017 22:57:26 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90e71dc0a25426b16deb2e33f62fc9f58105e7bfbcf8c3160c9c21ae39b0cf86`  
		Last Modified: Wed, 18 Jan 2017 22:57:25 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc4ffe232243d863a27a6fe85e1bd3f3fab3a6161921dc38f472031fcb4c7303`  
		Last Modified: Wed, 18 Jan 2017 22:57:30 GMT  
		Size: 14.3 MB (14310413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0188853bfa921906bf823bcffe4249ebad6294e84d7bcc806e251e36ca259ad5`  
		Last Modified: Wed, 18 Jan 2017 22:57:22 GMT  
		Size: 4.5 MB (4534905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec86ffa3d1d0c5fa801f6fd03736ab2d6b4d546db71bb6e634d4ce5006e1c5c7`  
		Last Modified: Wed, 18 Jan 2017 22:57:20 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07eda4f36764030981f1274d0cf9d991012ebc5b336c479b6db4d3c61a4f7ed6`  
		Last Modified: Wed, 18 Jan 2017 22:57:20 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb1b5f4cf90fb05950e298d1aa9d1dc2874e497fef0f5329c5ce55251d7cf7d9`  
		Last Modified: Wed, 18 Jan 2017 22:57:20 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc54094d7877932bd12d15a50fa999e0d90132b29b9734831226c0002e4c909a`  
		Last Modified: Wed, 18 Jan 2017 22:57:20 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:windowsservercore`

```console
$ docker pull redis@sha256:60e2f0698630df1df2091372a143f39ebe1fa39a6b1f89fd7d0f566700046ac7
```

-	Platforms:
	-	windows; amd64

### `redis:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 GB (5011103673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e19f818176bbd1aeb3f95daea3bd4513cf35e00801199b4f8c03fff6db79c07`
-	Default Command: `["redis-server.exe","C:\\Redis\\redis.docker.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Wed, 18 Jan 2017 00:22:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 18 Jan 2017 22:49:45 GMT
RUN $newPath = ('C:\Redis;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 18 Jan 2017 22:53:25 GMT
ENV REDIS_VERSION=3.2.100
# Wed, 18 Jan 2017 22:53:33 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/MSOpenTech/redis/releases/download/win-3.2.100/Redis-x64-3.2.100.zip
# Wed, 18 Jan 2017 22:54:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:REDIS_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:REDIS_DOWNLOAD_URL -OutFile 'redis.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive redis.zip -DestinationPath C:\Redis; 		Write-Host 'Verifying install ("redis-server --version") ...'; 	redis-server --version; 		Write-Host 'Removing ...'; 	Remove-Item redis.zip -Force
# Wed, 18 Jan 2017 22:55:24 GMT
RUN (Get-Content C:\Redis\redis.windows.conf) 	-Replace '^(bind)\s+.*$', '$1 0.0.0.0' 	-Replace '^(protected-mode)\s+.*$', '$1 no' 	| Set-Content C:\Redis\redis.docker.conf
# Wed, 18 Jan 2017 22:55:29 GMT
VOLUME [C:\data]
# Wed, 18 Jan 2017 22:55:32 GMT
WORKDIR C:\data
# Wed, 18 Jan 2017 22:55:37 GMT
EXPOSE 6379/tcp
# Wed, 18 Jan 2017 22:55:41 GMT
CMD ["redis-server.exe" "C:\\Redis\\redis.docker.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3430754e4d171ead00cf6766797a28abf3caf236f6c92c5c346ea2ad3955a129`  
		Size: 913.1 MB (913145061 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2090e83c9aacacb2da7d0836cf297e9927a3137c208e2f631e39e181e31ceb90`  
		Last Modified: Wed, 18 Jan 2017 22:56:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da44b0086252f4702e3a56302c8f8b41465bed5f455838bf271fced6fc93a0c`  
		Last Modified: Wed, 18 Jan 2017 22:56:57 GMT  
		Size: 9.1 MB (9118824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384b378de0002282c7b070dee79c606a44d9fbb8fa7e9dfd07e41a72d18f935f`  
		Last Modified: Wed, 18 Jan 2017 22:57:26 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90e71dc0a25426b16deb2e33f62fc9f58105e7bfbcf8c3160c9c21ae39b0cf86`  
		Last Modified: Wed, 18 Jan 2017 22:57:25 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc4ffe232243d863a27a6fe85e1bd3f3fab3a6161921dc38f472031fcb4c7303`  
		Last Modified: Wed, 18 Jan 2017 22:57:30 GMT  
		Size: 14.3 MB (14310413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0188853bfa921906bf823bcffe4249ebad6294e84d7bcc806e251e36ca259ad5`  
		Last Modified: Wed, 18 Jan 2017 22:57:22 GMT  
		Size: 4.5 MB (4534905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec86ffa3d1d0c5fa801f6fd03736ab2d6b4d546db71bb6e634d4ce5006e1c5c7`  
		Last Modified: Wed, 18 Jan 2017 22:57:20 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07eda4f36764030981f1274d0cf9d991012ebc5b336c479b6db4d3c61a4f7ed6`  
		Last Modified: Wed, 18 Jan 2017 22:57:20 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb1b5f4cf90fb05950e298d1aa9d1dc2874e497fef0f5329c5ce55251d7cf7d9`  
		Last Modified: Wed, 18 Jan 2017 22:57:20 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc54094d7877932bd12d15a50fa999e0d90132b29b9734831226c0002e4c909a`  
		Last Modified: Wed, 18 Jan 2017 22:57:20 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.100-nanoserver`

```console
$ docker pull redis@sha256:0504a89bfa3ed423a4537e20579434e08058043537822c8578c98ac71ef971bf
```

-	Platforms:
	-	windows; amd64

### `redis:3.2.100-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.1 MB (341087300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:106a932a5a0e1b1844607261579c8c86b36ec749801667c75ce01c3f6f8d9d20`
-	Default Command: `["redis-server.exe","C:\\Redis\\redis.docker.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 18 Jan 2017 22:52:13 GMT
RUN $newPath = ('C:\Redis;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 18 Jan 2017 22:55:44 GMT
ENV REDIS_VERSION=3.2.100
# Wed, 18 Jan 2017 22:55:46 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/MSOpenTech/redis/releases/download/win-3.2.100/Redis-x64-3.2.100.zip
# Wed, 18 Jan 2017 22:56:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:REDIS_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:REDIS_DOWNLOAD_URL -OutFile 'redis.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive redis.zip -DestinationPath C:\Redis; 		Write-Host 'Verifying install ("redis-server --version") ...'; 	redis-server --version; 		Write-Host 'Removing ...'; 	Remove-Item redis.zip -Force
# Wed, 18 Jan 2017 22:56:25 GMT
RUN (Get-Content C:\Redis\redis.windows.conf) 	-Replace '^(bind)\s+.*$', '$1 0.0.0.0' 	-Replace '^(protected-mode)\s+.*$', '$1 no' 	| Set-Content C:\Redis\redis.docker.conf
# Wed, 18 Jan 2017 22:56:27 GMT
VOLUME [C:\data]
# Wed, 18 Jan 2017 22:56:30 GMT
WORKDIR C:\data
# Wed, 18 Jan 2017 22:56:32 GMT
EXPOSE 6379/tcp
# Wed, 18 Jan 2017 22:56:37 GMT
CMD ["redis-server.exe" "C:\\Redis\\redis.docker.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3ac17e2e6106d09a44642a437c318092eddd284afea0b4e707e89f6cec7a18ef`  
		Size: 80.6 MB (80617684 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e75762e22d922ed4bb69ae4e673c912389d9d70fd91eaa33cd0732f0a8e28a4e`  
		Last Modified: Fri, 13 Jan 2017 18:00:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de31e43b05dd874f8ca7edfb3aac6545866c500853b7e509ba14e9ae38ad2097`  
		Last Modified: Wed, 18 Jan 2017 22:57:11 GMT  
		Size: 872.2 KB (872241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72304c71b91dd5750a5ee9c76380796d7587a7d5608045ab531f7e9d02a44af9`  
		Last Modified: Wed, 18 Jan 2017 22:57:50 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e40118728bb9a486a422adbd3c08f4a6c99e42edff5811101172555dcfa0da`  
		Last Modified: Wed, 18 Jan 2017 22:57:50 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60cf65c021c8b3c522be96e91e91074e57d7777b1d624e88ae265759a2abe39`  
		Last Modified: Wed, 18 Jan 2017 22:57:53 GMT  
		Size: 6.1 MB (6097510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246384c0dbd7566af07c7d33998ec09438cd9029e8332605e06b37e8fdaa876f`  
		Last Modified: Wed, 18 Jan 2017 22:57:48 GMT  
		Size: 802.2 KB (802163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae3741b92c1d47abe9a132f443036ca118cf13362af4131a1fb37792df5b016`  
		Last Modified: Wed, 18 Jan 2017 22:57:48 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8794db4ffca9168374e650806acb6ee47018b2d553df142cc3ad6540a6c9a51a`  
		Last Modified: Wed, 18 Jan 2017 22:57:47 GMT  
		Size: 962.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4641bd817ce69e3fde2b4f0f6b6a8e97a7da04be80cd4867daff6365d4a15d40`  
		Last Modified: Wed, 18 Jan 2017 22:57:47 GMT  
		Size: 961.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c893421dc79a258d86db45ec19879d16ec43ffc2b462ffcfa5069878dc644ee0`  
		Last Modified: Wed, 18 Jan 2017 22:57:47 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-nanoserver`

```console
$ docker pull redis@sha256:0504a89bfa3ed423a4537e20579434e08058043537822c8578c98ac71ef971bf
```

-	Platforms:
	-	windows; amd64

### `redis:3.2-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.1 MB (341087300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:106a932a5a0e1b1844607261579c8c86b36ec749801667c75ce01c3f6f8d9d20`
-	Default Command: `["redis-server.exe","C:\\Redis\\redis.docker.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 18 Jan 2017 22:52:13 GMT
RUN $newPath = ('C:\Redis;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 18 Jan 2017 22:55:44 GMT
ENV REDIS_VERSION=3.2.100
# Wed, 18 Jan 2017 22:55:46 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/MSOpenTech/redis/releases/download/win-3.2.100/Redis-x64-3.2.100.zip
# Wed, 18 Jan 2017 22:56:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:REDIS_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:REDIS_DOWNLOAD_URL -OutFile 'redis.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive redis.zip -DestinationPath C:\Redis; 		Write-Host 'Verifying install ("redis-server --version") ...'; 	redis-server --version; 		Write-Host 'Removing ...'; 	Remove-Item redis.zip -Force
# Wed, 18 Jan 2017 22:56:25 GMT
RUN (Get-Content C:\Redis\redis.windows.conf) 	-Replace '^(bind)\s+.*$', '$1 0.0.0.0' 	-Replace '^(protected-mode)\s+.*$', '$1 no' 	| Set-Content C:\Redis\redis.docker.conf
# Wed, 18 Jan 2017 22:56:27 GMT
VOLUME [C:\data]
# Wed, 18 Jan 2017 22:56:30 GMT
WORKDIR C:\data
# Wed, 18 Jan 2017 22:56:32 GMT
EXPOSE 6379/tcp
# Wed, 18 Jan 2017 22:56:37 GMT
CMD ["redis-server.exe" "C:\\Redis\\redis.docker.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3ac17e2e6106d09a44642a437c318092eddd284afea0b4e707e89f6cec7a18ef`  
		Size: 80.6 MB (80617684 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e75762e22d922ed4bb69ae4e673c912389d9d70fd91eaa33cd0732f0a8e28a4e`  
		Last Modified: Fri, 13 Jan 2017 18:00:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de31e43b05dd874f8ca7edfb3aac6545866c500853b7e509ba14e9ae38ad2097`  
		Last Modified: Wed, 18 Jan 2017 22:57:11 GMT  
		Size: 872.2 KB (872241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72304c71b91dd5750a5ee9c76380796d7587a7d5608045ab531f7e9d02a44af9`  
		Last Modified: Wed, 18 Jan 2017 22:57:50 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e40118728bb9a486a422adbd3c08f4a6c99e42edff5811101172555dcfa0da`  
		Last Modified: Wed, 18 Jan 2017 22:57:50 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60cf65c021c8b3c522be96e91e91074e57d7777b1d624e88ae265759a2abe39`  
		Last Modified: Wed, 18 Jan 2017 22:57:53 GMT  
		Size: 6.1 MB (6097510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246384c0dbd7566af07c7d33998ec09438cd9029e8332605e06b37e8fdaa876f`  
		Last Modified: Wed, 18 Jan 2017 22:57:48 GMT  
		Size: 802.2 KB (802163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae3741b92c1d47abe9a132f443036ca118cf13362af4131a1fb37792df5b016`  
		Last Modified: Wed, 18 Jan 2017 22:57:48 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8794db4ffca9168374e650806acb6ee47018b2d553df142cc3ad6540a6c9a51a`  
		Last Modified: Wed, 18 Jan 2017 22:57:47 GMT  
		Size: 962.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4641bd817ce69e3fde2b4f0f6b6a8e97a7da04be80cd4867daff6365d4a15d40`  
		Last Modified: Wed, 18 Jan 2017 22:57:47 GMT  
		Size: 961.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c893421dc79a258d86db45ec19879d16ec43ffc2b462ffcfa5069878dc644ee0`  
		Last Modified: Wed, 18 Jan 2017 22:57:47 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-nanoserver`

```console
$ docker pull redis@sha256:0504a89bfa3ed423a4537e20579434e08058043537822c8578c98ac71ef971bf
```

-	Platforms:
	-	windows; amd64

### `redis:3-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.1 MB (341087300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:106a932a5a0e1b1844607261579c8c86b36ec749801667c75ce01c3f6f8d9d20`
-	Default Command: `["redis-server.exe","C:\\Redis\\redis.docker.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 18 Jan 2017 22:52:13 GMT
RUN $newPath = ('C:\Redis;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 18 Jan 2017 22:55:44 GMT
ENV REDIS_VERSION=3.2.100
# Wed, 18 Jan 2017 22:55:46 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/MSOpenTech/redis/releases/download/win-3.2.100/Redis-x64-3.2.100.zip
# Wed, 18 Jan 2017 22:56:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:REDIS_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:REDIS_DOWNLOAD_URL -OutFile 'redis.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive redis.zip -DestinationPath C:\Redis; 		Write-Host 'Verifying install ("redis-server --version") ...'; 	redis-server --version; 		Write-Host 'Removing ...'; 	Remove-Item redis.zip -Force
# Wed, 18 Jan 2017 22:56:25 GMT
RUN (Get-Content C:\Redis\redis.windows.conf) 	-Replace '^(bind)\s+.*$', '$1 0.0.0.0' 	-Replace '^(protected-mode)\s+.*$', '$1 no' 	| Set-Content C:\Redis\redis.docker.conf
# Wed, 18 Jan 2017 22:56:27 GMT
VOLUME [C:\data]
# Wed, 18 Jan 2017 22:56:30 GMT
WORKDIR C:\data
# Wed, 18 Jan 2017 22:56:32 GMT
EXPOSE 6379/tcp
# Wed, 18 Jan 2017 22:56:37 GMT
CMD ["redis-server.exe" "C:\\Redis\\redis.docker.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3ac17e2e6106d09a44642a437c318092eddd284afea0b4e707e89f6cec7a18ef`  
		Size: 80.6 MB (80617684 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e75762e22d922ed4bb69ae4e673c912389d9d70fd91eaa33cd0732f0a8e28a4e`  
		Last Modified: Fri, 13 Jan 2017 18:00:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de31e43b05dd874f8ca7edfb3aac6545866c500853b7e509ba14e9ae38ad2097`  
		Last Modified: Wed, 18 Jan 2017 22:57:11 GMT  
		Size: 872.2 KB (872241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72304c71b91dd5750a5ee9c76380796d7587a7d5608045ab531f7e9d02a44af9`  
		Last Modified: Wed, 18 Jan 2017 22:57:50 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e40118728bb9a486a422adbd3c08f4a6c99e42edff5811101172555dcfa0da`  
		Last Modified: Wed, 18 Jan 2017 22:57:50 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60cf65c021c8b3c522be96e91e91074e57d7777b1d624e88ae265759a2abe39`  
		Last Modified: Wed, 18 Jan 2017 22:57:53 GMT  
		Size: 6.1 MB (6097510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246384c0dbd7566af07c7d33998ec09438cd9029e8332605e06b37e8fdaa876f`  
		Last Modified: Wed, 18 Jan 2017 22:57:48 GMT  
		Size: 802.2 KB (802163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae3741b92c1d47abe9a132f443036ca118cf13362af4131a1fb37792df5b016`  
		Last Modified: Wed, 18 Jan 2017 22:57:48 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8794db4ffca9168374e650806acb6ee47018b2d553df142cc3ad6540a6c9a51a`  
		Last Modified: Wed, 18 Jan 2017 22:57:47 GMT  
		Size: 962.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4641bd817ce69e3fde2b4f0f6b6a8e97a7da04be80cd4867daff6365d4a15d40`  
		Last Modified: Wed, 18 Jan 2017 22:57:47 GMT  
		Size: 961.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c893421dc79a258d86db45ec19879d16ec43ffc2b462ffcfa5069878dc644ee0`  
		Last Modified: Wed, 18 Jan 2017 22:57:47 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:nanoserver`

```console
$ docker pull redis@sha256:0504a89bfa3ed423a4537e20579434e08058043537822c8578c98ac71ef971bf
```

-	Platforms:
	-	windows; amd64

### `redis:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.1 MB (341087300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:106a932a5a0e1b1844607261579c8c86b36ec749801667c75ce01c3f6f8d9d20`
-	Default Command: `["redis-server.exe","C:\\Redis\\redis.docker.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 18 Jan 2017 22:52:13 GMT
RUN $newPath = ('C:\Redis;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 18 Jan 2017 22:55:44 GMT
ENV REDIS_VERSION=3.2.100
# Wed, 18 Jan 2017 22:55:46 GMT
ENV REDIS_DOWNLOAD_URL=https://github.com/MSOpenTech/redis/releases/download/win-3.2.100/Redis-x64-3.2.100.zip
# Wed, 18 Jan 2017 22:56:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:REDIS_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:REDIS_DOWNLOAD_URL -OutFile 'redis.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive redis.zip -DestinationPath C:\Redis; 		Write-Host 'Verifying install ("redis-server --version") ...'; 	redis-server --version; 		Write-Host 'Removing ...'; 	Remove-Item redis.zip -Force
# Wed, 18 Jan 2017 22:56:25 GMT
RUN (Get-Content C:\Redis\redis.windows.conf) 	-Replace '^(bind)\s+.*$', '$1 0.0.0.0' 	-Replace '^(protected-mode)\s+.*$', '$1 no' 	| Set-Content C:\Redis\redis.docker.conf
# Wed, 18 Jan 2017 22:56:27 GMT
VOLUME [C:\data]
# Wed, 18 Jan 2017 22:56:30 GMT
WORKDIR C:\data
# Wed, 18 Jan 2017 22:56:32 GMT
EXPOSE 6379/tcp
# Wed, 18 Jan 2017 22:56:37 GMT
CMD ["redis-server.exe" "C:\\Redis\\redis.docker.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3ac17e2e6106d09a44642a437c318092eddd284afea0b4e707e89f6cec7a18ef`  
		Size: 80.6 MB (80617684 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e75762e22d922ed4bb69ae4e673c912389d9d70fd91eaa33cd0732f0a8e28a4e`  
		Last Modified: Fri, 13 Jan 2017 18:00:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de31e43b05dd874f8ca7edfb3aac6545866c500853b7e509ba14e9ae38ad2097`  
		Last Modified: Wed, 18 Jan 2017 22:57:11 GMT  
		Size: 872.2 KB (872241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72304c71b91dd5750a5ee9c76380796d7587a7d5608045ab531f7e9d02a44af9`  
		Last Modified: Wed, 18 Jan 2017 22:57:50 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e40118728bb9a486a422adbd3c08f4a6c99e42edff5811101172555dcfa0da`  
		Last Modified: Wed, 18 Jan 2017 22:57:50 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60cf65c021c8b3c522be96e91e91074e57d7777b1d624e88ae265759a2abe39`  
		Last Modified: Wed, 18 Jan 2017 22:57:53 GMT  
		Size: 6.1 MB (6097510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246384c0dbd7566af07c7d33998ec09438cd9029e8332605e06b37e8fdaa876f`  
		Last Modified: Wed, 18 Jan 2017 22:57:48 GMT  
		Size: 802.2 KB (802163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae3741b92c1d47abe9a132f443036ca118cf13362af4131a1fb37792df5b016`  
		Last Modified: Wed, 18 Jan 2017 22:57:48 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8794db4ffca9168374e650806acb6ee47018b2d553df142cc3ad6540a6c9a51a`  
		Last Modified: Wed, 18 Jan 2017 22:57:47 GMT  
		Size: 962.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4641bd817ce69e3fde2b4f0f6b6a8e97a7da04be80cd4867daff6365d4a15d40`  
		Last Modified: Wed, 18 Jan 2017 22:57:47 GMT  
		Size: 961.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c893421dc79a258d86db45ec19879d16ec43ffc2b462ffcfa5069878dc644ee0`  
		Last Modified: Wed, 18 Jan 2017 22:57:47 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
