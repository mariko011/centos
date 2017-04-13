<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:17.05.0-ce-rc1`](#docker17050-ce-rc1)
-	[`docker:17.05.0-ce`](#docker17050-ce)
-	[`docker:17.05.0`](#docker17050)
-	[`docker:17.05-rc`](#docker1705-rc)
-	[`docker:rc`](#dockerrc)
-	[`docker:17.05.0-ce-rc1-dind`](#docker17050-ce-rc1-dind)
-	[`docker:17.05.0-ce-dind`](#docker17050-ce-dind)
-	[`docker:17.05.0-dind`](#docker17050-dind)
-	[`docker:17.05-rc-dind`](#docker1705-rc-dind)
-	[`docker:rc-dind`](#dockerrc-dind)
-	[`docker:17.05.0-ce-rc1-git`](#docker17050-ce-rc1-git)
-	[`docker:17.05.0-ce-git`](#docker17050-ce-git)
-	[`docker:17.05.0-git`](#docker17050-git)
-	[`docker:17.05-rc-git`](#docker1705-rc-git)
-	[`docker:rc-git`](#dockerrc-git)
-	[`docker:17.04.0-ce`](#docker17040-ce)
-	[`docker:17.04.0`](#docker17040)
-	[`docker:17.04`](#docker1704)
-	[`docker:17`](#docker17)
-	[`docker:latest`](#dockerlatest)
-	[`docker:edge`](#dockeredge)
-	[`docker:17.04.0-ce-dind`](#docker17040-ce-dind)
-	[`docker:17.04.0-dind`](#docker17040-dind)
-	[`docker:17.04-dind`](#docker1704-dind)
-	[`docker:17-dind`](#docker17-dind)
-	[`docker:dind`](#dockerdind)
-	[`docker:edge-dind`](#dockeredge-dind)
-	[`docker:17.04.0-ce-git`](#docker17040-ce-git)
-	[`docker:17.04.0-git`](#docker17040-git)
-	[`docker:17.04-git`](#docker1704-git)
-	[`docker:17-git`](#docker17-git)
-	[`docker:git`](#dockergit)
-	[`docker:edge-git`](#dockeredge-git)
-	[`docker:17.03.1-ce`](#docker17031-ce)
-	[`docker:17.03.1`](#docker17031)
-	[`docker:17.03`](#docker1703)
-	[`docker:stable`](#dockerstable)
-	[`docker:17.03.1-ce-dind`](#docker17031-ce-dind)
-	[`docker:17.03.1-dind`](#docker17031-dind)
-	[`docker:17.03-dind`](#docker1703-dind)
-	[`docker:stable-dind`](#dockerstable-dind)
-	[`docker:17.03.1-ce-git`](#docker17031-ce-git)
-	[`docker:17.03.1-git`](#docker17031-git)
-	[`docker:17.03-git`](#docker1703-git)
-	[`docker:stable-git`](#dockerstable-git)

## `docker:17.05.0-ce-rc1`

```console
$ docker pull docker@sha256:ff98ac58f27c07c5772a7cc8a01fa4e3c25e2c3beda62f7542561c326fb7467a
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce-rc1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32856630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c25d1a51a1dcf024ed10d7f48659cee8f5b2ea810cbb18c6333a18ab6ee71535`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Thu, 13 Apr 2017 19:00:18 GMT
ENV DOCKER_VERSION=17.05.0-ce-rc1
# Thu, 13 Apr 2017 19:00:19 GMT
ENV DOCKER_SHA256=4561742c2174c01ffd0679621b66d29f8a504240d79aa714f6c58348979d02c6
# Thu, 13 Apr 2017 19:00:25 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 13 Apr 2017 19:00:38 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 13 Apr 2017 19:00:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Apr 2017 19:00:40 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e23620b67df2cab8f5d89e308d3446df5223edd3d19042dd135cc18298dac8`  
		Last Modified: Thu, 13 Apr 2017 19:02:30 GMT  
		Size: 28.8 MB (28783157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c43de99df3228bf3d40ee6e72b05d9dab4feabe55380f1a773b0d67800a1ab`  
		Last Modified: Thu, 13 Apr 2017 19:02:24 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-ce`

```console
$ docker pull docker@sha256:ff98ac58f27c07c5772a7cc8a01fa4e3c25e2c3beda62f7542561c326fb7467a
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32856630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c25d1a51a1dcf024ed10d7f48659cee8f5b2ea810cbb18c6333a18ab6ee71535`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Thu, 13 Apr 2017 19:00:18 GMT
ENV DOCKER_VERSION=17.05.0-ce-rc1
# Thu, 13 Apr 2017 19:00:19 GMT
ENV DOCKER_SHA256=4561742c2174c01ffd0679621b66d29f8a504240d79aa714f6c58348979d02c6
# Thu, 13 Apr 2017 19:00:25 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 13 Apr 2017 19:00:38 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 13 Apr 2017 19:00:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Apr 2017 19:00:40 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e23620b67df2cab8f5d89e308d3446df5223edd3d19042dd135cc18298dac8`  
		Last Modified: Thu, 13 Apr 2017 19:02:30 GMT  
		Size: 28.8 MB (28783157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c43de99df3228bf3d40ee6e72b05d9dab4feabe55380f1a773b0d67800a1ab`  
		Last Modified: Thu, 13 Apr 2017 19:02:24 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0`

```console
$ docker pull docker@sha256:ff98ac58f27c07c5772a7cc8a01fa4e3c25e2c3beda62f7542561c326fb7467a
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32856630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c25d1a51a1dcf024ed10d7f48659cee8f5b2ea810cbb18c6333a18ab6ee71535`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Thu, 13 Apr 2017 19:00:18 GMT
ENV DOCKER_VERSION=17.05.0-ce-rc1
# Thu, 13 Apr 2017 19:00:19 GMT
ENV DOCKER_SHA256=4561742c2174c01ffd0679621b66d29f8a504240d79aa714f6c58348979d02c6
# Thu, 13 Apr 2017 19:00:25 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 13 Apr 2017 19:00:38 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 13 Apr 2017 19:00:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Apr 2017 19:00:40 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e23620b67df2cab8f5d89e308d3446df5223edd3d19042dd135cc18298dac8`  
		Last Modified: Thu, 13 Apr 2017 19:02:30 GMT  
		Size: 28.8 MB (28783157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c43de99df3228bf3d40ee6e72b05d9dab4feabe55380f1a773b0d67800a1ab`  
		Last Modified: Thu, 13 Apr 2017 19:02:24 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05-rc`

```console
$ docker pull docker@sha256:ff98ac58f27c07c5772a7cc8a01fa4e3c25e2c3beda62f7542561c326fb7467a
```

-	Platforms:
	-	linux; amd64

### `docker:17.05-rc` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32856630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c25d1a51a1dcf024ed10d7f48659cee8f5b2ea810cbb18c6333a18ab6ee71535`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Thu, 13 Apr 2017 19:00:18 GMT
ENV DOCKER_VERSION=17.05.0-ce-rc1
# Thu, 13 Apr 2017 19:00:19 GMT
ENV DOCKER_SHA256=4561742c2174c01ffd0679621b66d29f8a504240d79aa714f6c58348979d02c6
# Thu, 13 Apr 2017 19:00:25 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 13 Apr 2017 19:00:38 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 13 Apr 2017 19:00:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Apr 2017 19:00:40 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e23620b67df2cab8f5d89e308d3446df5223edd3d19042dd135cc18298dac8`  
		Last Modified: Thu, 13 Apr 2017 19:02:30 GMT  
		Size: 28.8 MB (28783157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c43de99df3228bf3d40ee6e72b05d9dab4feabe55380f1a773b0d67800a1ab`  
		Last Modified: Thu, 13 Apr 2017 19:02:24 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc`

```console
$ docker pull docker@sha256:ff98ac58f27c07c5772a7cc8a01fa4e3c25e2c3beda62f7542561c326fb7467a
```

-	Platforms:
	-	linux; amd64

### `docker:rc` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32856630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c25d1a51a1dcf024ed10d7f48659cee8f5b2ea810cbb18c6333a18ab6ee71535`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Thu, 13 Apr 2017 19:00:18 GMT
ENV DOCKER_VERSION=17.05.0-ce-rc1
# Thu, 13 Apr 2017 19:00:19 GMT
ENV DOCKER_SHA256=4561742c2174c01ffd0679621b66d29f8a504240d79aa714f6c58348979d02c6
# Thu, 13 Apr 2017 19:00:25 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 13 Apr 2017 19:00:38 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 13 Apr 2017 19:00:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Apr 2017 19:00:40 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e23620b67df2cab8f5d89e308d3446df5223edd3d19042dd135cc18298dac8`  
		Last Modified: Thu, 13 Apr 2017 19:02:30 GMT  
		Size: 28.8 MB (28783157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c43de99df3228bf3d40ee6e72b05d9dab4feabe55380f1a773b0d67800a1ab`  
		Last Modified: Thu, 13 Apr 2017 19:02:24 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-ce-rc1-dind`

```console
$ docker pull docker@sha256:b1f1b3e3d6e3aa9e52231d9dd916dc8867d64aaf5ff6f8fdc7fec0305ab7c95b
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce-rc1-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35026265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68133536a81d49aaff0d54eeee9c97ad335dc69a474a948957b2fd8fcec03f31`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Thu, 13 Apr 2017 19:00:18 GMT
ENV DOCKER_VERSION=17.05.0-ce-rc1
# Thu, 13 Apr 2017 19:00:19 GMT
ENV DOCKER_SHA256=4561742c2174c01ffd0679621b66d29f8a504240d79aa714f6c58348979d02c6
# Thu, 13 Apr 2017 19:00:25 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 13 Apr 2017 19:00:38 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 13 Apr 2017 19:00:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Apr 2017 19:00:40 GMT
CMD ["sh"]
# Thu, 13 Apr 2017 19:01:14 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 13 Apr 2017 19:01:15 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 13 Apr 2017 19:01:32 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 13 Apr 2017 19:01:34 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 13 Apr 2017 19:01:35 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 13 Apr 2017 19:01:36 GMT
VOLUME [/var/lib/docker]
# Thu, 13 Apr 2017 19:01:36 GMT
EXPOSE 2375/tcp
# Thu, 13 Apr 2017 19:01:37 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 13 Apr 2017 19:01:38 GMT
CMD []
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e23620b67df2cab8f5d89e308d3446df5223edd3d19042dd135cc18298dac8`  
		Last Modified: Thu, 13 Apr 2017 19:02:30 GMT  
		Size: 28.8 MB (28783157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c43de99df3228bf3d40ee6e72b05d9dab4feabe55380f1a773b0d67800a1ab`  
		Last Modified: Thu, 13 Apr 2017 19:02:24 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7c91daf85a0bfac4538e826110179b9ce2876e8da64ca66599210fc197ba8b`  
		Last Modified: Thu, 13 Apr 2017 19:04:30 GMT  
		Size: 2.2 MB (2166029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3457b81321bf8a77ec94657f41b6bae9c9a972498aac5c5628add632ed116aa`  
		Last Modified: Thu, 13 Apr 2017 19:04:28 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd54d08e535b2f750d9294a8f23cb771659b50a4057564c1c0e6103214d2f06`  
		Last Modified: Thu, 13 Apr 2017 19:04:28 GMT  
		Size: 1.8 KB (1814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a082f960a417a071953b59479bfb1dded2e37ad2d84ea6e27f725a4123de0abd`  
		Last Modified: Thu, 13 Apr 2017 19:04:29 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-ce-dind`

```console
$ docker pull docker@sha256:b1f1b3e3d6e3aa9e52231d9dd916dc8867d64aaf5ff6f8fdc7fec0305ab7c95b
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35026265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68133536a81d49aaff0d54eeee9c97ad335dc69a474a948957b2fd8fcec03f31`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Thu, 13 Apr 2017 19:00:18 GMT
ENV DOCKER_VERSION=17.05.0-ce-rc1
# Thu, 13 Apr 2017 19:00:19 GMT
ENV DOCKER_SHA256=4561742c2174c01ffd0679621b66d29f8a504240d79aa714f6c58348979d02c6
# Thu, 13 Apr 2017 19:00:25 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 13 Apr 2017 19:00:38 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 13 Apr 2017 19:00:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Apr 2017 19:00:40 GMT
CMD ["sh"]
# Thu, 13 Apr 2017 19:01:14 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 13 Apr 2017 19:01:15 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 13 Apr 2017 19:01:32 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 13 Apr 2017 19:01:34 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 13 Apr 2017 19:01:35 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 13 Apr 2017 19:01:36 GMT
VOLUME [/var/lib/docker]
# Thu, 13 Apr 2017 19:01:36 GMT
EXPOSE 2375/tcp
# Thu, 13 Apr 2017 19:01:37 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 13 Apr 2017 19:01:38 GMT
CMD []
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e23620b67df2cab8f5d89e308d3446df5223edd3d19042dd135cc18298dac8`  
		Last Modified: Thu, 13 Apr 2017 19:02:30 GMT  
		Size: 28.8 MB (28783157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c43de99df3228bf3d40ee6e72b05d9dab4feabe55380f1a773b0d67800a1ab`  
		Last Modified: Thu, 13 Apr 2017 19:02:24 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7c91daf85a0bfac4538e826110179b9ce2876e8da64ca66599210fc197ba8b`  
		Last Modified: Thu, 13 Apr 2017 19:04:30 GMT  
		Size: 2.2 MB (2166029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3457b81321bf8a77ec94657f41b6bae9c9a972498aac5c5628add632ed116aa`  
		Last Modified: Thu, 13 Apr 2017 19:04:28 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd54d08e535b2f750d9294a8f23cb771659b50a4057564c1c0e6103214d2f06`  
		Last Modified: Thu, 13 Apr 2017 19:04:28 GMT  
		Size: 1.8 KB (1814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a082f960a417a071953b59479bfb1dded2e37ad2d84ea6e27f725a4123de0abd`  
		Last Modified: Thu, 13 Apr 2017 19:04:29 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-dind`

```console
$ docker pull docker@sha256:b1f1b3e3d6e3aa9e52231d9dd916dc8867d64aaf5ff6f8fdc7fec0305ab7c95b
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35026265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68133536a81d49aaff0d54eeee9c97ad335dc69a474a948957b2fd8fcec03f31`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Thu, 13 Apr 2017 19:00:18 GMT
ENV DOCKER_VERSION=17.05.0-ce-rc1
# Thu, 13 Apr 2017 19:00:19 GMT
ENV DOCKER_SHA256=4561742c2174c01ffd0679621b66d29f8a504240d79aa714f6c58348979d02c6
# Thu, 13 Apr 2017 19:00:25 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 13 Apr 2017 19:00:38 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 13 Apr 2017 19:00:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Apr 2017 19:00:40 GMT
CMD ["sh"]
# Thu, 13 Apr 2017 19:01:14 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 13 Apr 2017 19:01:15 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 13 Apr 2017 19:01:32 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 13 Apr 2017 19:01:34 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 13 Apr 2017 19:01:35 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 13 Apr 2017 19:01:36 GMT
VOLUME [/var/lib/docker]
# Thu, 13 Apr 2017 19:01:36 GMT
EXPOSE 2375/tcp
# Thu, 13 Apr 2017 19:01:37 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 13 Apr 2017 19:01:38 GMT
CMD []
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e23620b67df2cab8f5d89e308d3446df5223edd3d19042dd135cc18298dac8`  
		Last Modified: Thu, 13 Apr 2017 19:02:30 GMT  
		Size: 28.8 MB (28783157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c43de99df3228bf3d40ee6e72b05d9dab4feabe55380f1a773b0d67800a1ab`  
		Last Modified: Thu, 13 Apr 2017 19:02:24 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7c91daf85a0bfac4538e826110179b9ce2876e8da64ca66599210fc197ba8b`  
		Last Modified: Thu, 13 Apr 2017 19:04:30 GMT  
		Size: 2.2 MB (2166029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3457b81321bf8a77ec94657f41b6bae9c9a972498aac5c5628add632ed116aa`  
		Last Modified: Thu, 13 Apr 2017 19:04:28 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd54d08e535b2f750d9294a8f23cb771659b50a4057564c1c0e6103214d2f06`  
		Last Modified: Thu, 13 Apr 2017 19:04:28 GMT  
		Size: 1.8 KB (1814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a082f960a417a071953b59479bfb1dded2e37ad2d84ea6e27f725a4123de0abd`  
		Last Modified: Thu, 13 Apr 2017 19:04:29 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05-rc-dind`

```console
$ docker pull docker@sha256:b1f1b3e3d6e3aa9e52231d9dd916dc8867d64aaf5ff6f8fdc7fec0305ab7c95b
```

-	Platforms:
	-	linux; amd64

### `docker:17.05-rc-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35026265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68133536a81d49aaff0d54eeee9c97ad335dc69a474a948957b2fd8fcec03f31`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Thu, 13 Apr 2017 19:00:18 GMT
ENV DOCKER_VERSION=17.05.0-ce-rc1
# Thu, 13 Apr 2017 19:00:19 GMT
ENV DOCKER_SHA256=4561742c2174c01ffd0679621b66d29f8a504240d79aa714f6c58348979d02c6
# Thu, 13 Apr 2017 19:00:25 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 13 Apr 2017 19:00:38 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 13 Apr 2017 19:00:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Apr 2017 19:00:40 GMT
CMD ["sh"]
# Thu, 13 Apr 2017 19:01:14 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 13 Apr 2017 19:01:15 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 13 Apr 2017 19:01:32 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 13 Apr 2017 19:01:34 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 13 Apr 2017 19:01:35 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 13 Apr 2017 19:01:36 GMT
VOLUME [/var/lib/docker]
# Thu, 13 Apr 2017 19:01:36 GMT
EXPOSE 2375/tcp
# Thu, 13 Apr 2017 19:01:37 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 13 Apr 2017 19:01:38 GMT
CMD []
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e23620b67df2cab8f5d89e308d3446df5223edd3d19042dd135cc18298dac8`  
		Last Modified: Thu, 13 Apr 2017 19:02:30 GMT  
		Size: 28.8 MB (28783157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c43de99df3228bf3d40ee6e72b05d9dab4feabe55380f1a773b0d67800a1ab`  
		Last Modified: Thu, 13 Apr 2017 19:02:24 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7c91daf85a0bfac4538e826110179b9ce2876e8da64ca66599210fc197ba8b`  
		Last Modified: Thu, 13 Apr 2017 19:04:30 GMT  
		Size: 2.2 MB (2166029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3457b81321bf8a77ec94657f41b6bae9c9a972498aac5c5628add632ed116aa`  
		Last Modified: Thu, 13 Apr 2017 19:04:28 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd54d08e535b2f750d9294a8f23cb771659b50a4057564c1c0e6103214d2f06`  
		Last Modified: Thu, 13 Apr 2017 19:04:28 GMT  
		Size: 1.8 KB (1814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a082f960a417a071953b59479bfb1dded2e37ad2d84ea6e27f725a4123de0abd`  
		Last Modified: Thu, 13 Apr 2017 19:04:29 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-dind`

```console
$ docker pull docker@sha256:b1f1b3e3d6e3aa9e52231d9dd916dc8867d64aaf5ff6f8fdc7fec0305ab7c95b
```

-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35026265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68133536a81d49aaff0d54eeee9c97ad335dc69a474a948957b2fd8fcec03f31`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Thu, 13 Apr 2017 19:00:18 GMT
ENV DOCKER_VERSION=17.05.0-ce-rc1
# Thu, 13 Apr 2017 19:00:19 GMT
ENV DOCKER_SHA256=4561742c2174c01ffd0679621b66d29f8a504240d79aa714f6c58348979d02c6
# Thu, 13 Apr 2017 19:00:25 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 13 Apr 2017 19:00:38 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 13 Apr 2017 19:00:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Apr 2017 19:00:40 GMT
CMD ["sh"]
# Thu, 13 Apr 2017 19:01:14 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 13 Apr 2017 19:01:15 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 13 Apr 2017 19:01:32 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 13 Apr 2017 19:01:34 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 13 Apr 2017 19:01:35 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 13 Apr 2017 19:01:36 GMT
VOLUME [/var/lib/docker]
# Thu, 13 Apr 2017 19:01:36 GMT
EXPOSE 2375/tcp
# Thu, 13 Apr 2017 19:01:37 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 13 Apr 2017 19:01:38 GMT
CMD []
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e23620b67df2cab8f5d89e308d3446df5223edd3d19042dd135cc18298dac8`  
		Last Modified: Thu, 13 Apr 2017 19:02:30 GMT  
		Size: 28.8 MB (28783157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c43de99df3228bf3d40ee6e72b05d9dab4feabe55380f1a773b0d67800a1ab`  
		Last Modified: Thu, 13 Apr 2017 19:02:24 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7c91daf85a0bfac4538e826110179b9ce2876e8da64ca66599210fc197ba8b`  
		Last Modified: Thu, 13 Apr 2017 19:04:30 GMT  
		Size: 2.2 MB (2166029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3457b81321bf8a77ec94657f41b6bae9c9a972498aac5c5628add632ed116aa`  
		Last Modified: Thu, 13 Apr 2017 19:04:28 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd54d08e535b2f750d9294a8f23cb771659b50a4057564c1c0e6103214d2f06`  
		Last Modified: Thu, 13 Apr 2017 19:04:28 GMT  
		Size: 1.8 KB (1814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a082f960a417a071953b59479bfb1dded2e37ad2d84ea6e27f725a4123de0abd`  
		Last Modified: Thu, 13 Apr 2017 19:04:29 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-ce-rc1-git`

```console
$ docker pull docker@sha256:71d52b8c3f1eeec9749002ee63ffe244423fc9189b43573460117aace5ad8ada
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce-rc1-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43578996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81ac6a7b90ff7fe93a294d992efc4e76011df06eb26047e71eeeead17bbd50be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Thu, 13 Apr 2017 19:00:18 GMT
ENV DOCKER_VERSION=17.05.0-ce-rc1
# Thu, 13 Apr 2017 19:00:19 GMT
ENV DOCKER_SHA256=4561742c2174c01ffd0679621b66d29f8a504240d79aa714f6c58348979d02c6
# Thu, 13 Apr 2017 19:00:25 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 13 Apr 2017 19:00:38 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 13 Apr 2017 19:00:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Apr 2017 19:00:40 GMT
CMD ["sh"]
# Thu, 13 Apr 2017 19:01:57 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e23620b67df2cab8f5d89e308d3446df5223edd3d19042dd135cc18298dac8`  
		Last Modified: Thu, 13 Apr 2017 19:02:30 GMT  
		Size: 28.8 MB (28783157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c43de99df3228bf3d40ee6e72b05d9dab4feabe55380f1a773b0d67800a1ab`  
		Last Modified: Thu, 13 Apr 2017 19:02:24 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eaa361ad1be2a10f4ea74e849520f4ae7851d376f8d11f160ed777338ec5266`  
		Last Modified: Thu, 13 Apr 2017 19:06:19 GMT  
		Size: 10.7 MB (10722366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-ce-git`

```console
$ docker pull docker@sha256:71d52b8c3f1eeec9749002ee63ffe244423fc9189b43573460117aace5ad8ada
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43578996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81ac6a7b90ff7fe93a294d992efc4e76011df06eb26047e71eeeead17bbd50be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Thu, 13 Apr 2017 19:00:18 GMT
ENV DOCKER_VERSION=17.05.0-ce-rc1
# Thu, 13 Apr 2017 19:00:19 GMT
ENV DOCKER_SHA256=4561742c2174c01ffd0679621b66d29f8a504240d79aa714f6c58348979d02c6
# Thu, 13 Apr 2017 19:00:25 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 13 Apr 2017 19:00:38 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 13 Apr 2017 19:00:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Apr 2017 19:00:40 GMT
CMD ["sh"]
# Thu, 13 Apr 2017 19:01:57 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e23620b67df2cab8f5d89e308d3446df5223edd3d19042dd135cc18298dac8`  
		Last Modified: Thu, 13 Apr 2017 19:02:30 GMT  
		Size: 28.8 MB (28783157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c43de99df3228bf3d40ee6e72b05d9dab4feabe55380f1a773b0d67800a1ab`  
		Last Modified: Thu, 13 Apr 2017 19:02:24 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eaa361ad1be2a10f4ea74e849520f4ae7851d376f8d11f160ed777338ec5266`  
		Last Modified: Thu, 13 Apr 2017 19:06:19 GMT  
		Size: 10.7 MB (10722366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-git`

```console
$ docker pull docker@sha256:71d52b8c3f1eeec9749002ee63ffe244423fc9189b43573460117aace5ad8ada
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43578996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81ac6a7b90ff7fe93a294d992efc4e76011df06eb26047e71eeeead17bbd50be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Thu, 13 Apr 2017 19:00:18 GMT
ENV DOCKER_VERSION=17.05.0-ce-rc1
# Thu, 13 Apr 2017 19:00:19 GMT
ENV DOCKER_SHA256=4561742c2174c01ffd0679621b66d29f8a504240d79aa714f6c58348979d02c6
# Thu, 13 Apr 2017 19:00:25 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 13 Apr 2017 19:00:38 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 13 Apr 2017 19:00:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Apr 2017 19:00:40 GMT
CMD ["sh"]
# Thu, 13 Apr 2017 19:01:57 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e23620b67df2cab8f5d89e308d3446df5223edd3d19042dd135cc18298dac8`  
		Last Modified: Thu, 13 Apr 2017 19:02:30 GMT  
		Size: 28.8 MB (28783157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c43de99df3228bf3d40ee6e72b05d9dab4feabe55380f1a773b0d67800a1ab`  
		Last Modified: Thu, 13 Apr 2017 19:02:24 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eaa361ad1be2a10f4ea74e849520f4ae7851d376f8d11f160ed777338ec5266`  
		Last Modified: Thu, 13 Apr 2017 19:06:19 GMT  
		Size: 10.7 MB (10722366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05-rc-git`

```console
$ docker pull docker@sha256:71d52b8c3f1eeec9749002ee63ffe244423fc9189b43573460117aace5ad8ada
```

-	Platforms:
	-	linux; amd64

### `docker:17.05-rc-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43578996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81ac6a7b90ff7fe93a294d992efc4e76011df06eb26047e71eeeead17bbd50be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Thu, 13 Apr 2017 19:00:18 GMT
ENV DOCKER_VERSION=17.05.0-ce-rc1
# Thu, 13 Apr 2017 19:00:19 GMT
ENV DOCKER_SHA256=4561742c2174c01ffd0679621b66d29f8a504240d79aa714f6c58348979d02c6
# Thu, 13 Apr 2017 19:00:25 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 13 Apr 2017 19:00:38 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 13 Apr 2017 19:00:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Apr 2017 19:00:40 GMT
CMD ["sh"]
# Thu, 13 Apr 2017 19:01:57 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e23620b67df2cab8f5d89e308d3446df5223edd3d19042dd135cc18298dac8`  
		Last Modified: Thu, 13 Apr 2017 19:02:30 GMT  
		Size: 28.8 MB (28783157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c43de99df3228bf3d40ee6e72b05d9dab4feabe55380f1a773b0d67800a1ab`  
		Last Modified: Thu, 13 Apr 2017 19:02:24 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eaa361ad1be2a10f4ea74e849520f4ae7851d376f8d11f160ed777338ec5266`  
		Last Modified: Thu, 13 Apr 2017 19:06:19 GMT  
		Size: 10.7 MB (10722366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-git`

```console
$ docker pull docker@sha256:71d52b8c3f1eeec9749002ee63ffe244423fc9189b43573460117aace5ad8ada
```

-	Platforms:
	-	linux; amd64

### `docker:rc-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43578996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81ac6a7b90ff7fe93a294d992efc4e76011df06eb26047e71eeeead17bbd50be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Thu, 13 Apr 2017 19:00:18 GMT
ENV DOCKER_VERSION=17.05.0-ce-rc1
# Thu, 13 Apr 2017 19:00:19 GMT
ENV DOCKER_SHA256=4561742c2174c01ffd0679621b66d29f8a504240d79aa714f6c58348979d02c6
# Thu, 13 Apr 2017 19:00:25 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 13 Apr 2017 19:00:38 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 13 Apr 2017 19:00:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Apr 2017 19:00:40 GMT
CMD ["sh"]
# Thu, 13 Apr 2017 19:01:57 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e23620b67df2cab8f5d89e308d3446df5223edd3d19042dd135cc18298dac8`  
		Last Modified: Thu, 13 Apr 2017 19:02:30 GMT  
		Size: 28.8 MB (28783157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c43de99df3228bf3d40ee6e72b05d9dab4feabe55380f1a773b0d67800a1ab`  
		Last Modified: Thu, 13 Apr 2017 19:02:24 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eaa361ad1be2a10f4ea74e849520f4ae7851d376f8d11f160ed777338ec5266`  
		Last Modified: Thu, 13 Apr 2017 19:06:19 GMT  
		Size: 10.7 MB (10722366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.04.0-ce`

```console
$ docker pull docker@sha256:ba19fd3d949bba6c94f5768fc0ddfafb4b9a40b3f35bdd3942b0e20f70b17e28
```

-	Platforms:
	-	linux; amd64

### `docker:17.04.0-ce` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30461127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38b4b64ebde60db987be01b9544e2667167850c61ec184e2389201052d14f26b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_VERSION=17.04.0-ce
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_SHA256=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Thu, 06 Apr 2017 18:11:21 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 06 Apr 2017 18:11:21 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 06 Apr 2017 18:11:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Apr 2017 18:11:22 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ec00e5df6cf47a9f3847375b5eac7f570fdfffa7b7214499ab110327d90d7d`  
		Last Modified: Thu, 06 Apr 2017 18:12:07 GMT  
		Size: 26.4 MB (26387656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abed63dc911f7b91f9eae8ff937eca0f0eb17d4624ab89f08e870cdd8720e60`  
		Last Modified: Thu, 06 Apr 2017 18:11:57 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.04.0`

```console
$ docker pull docker@sha256:ba19fd3d949bba6c94f5768fc0ddfafb4b9a40b3f35bdd3942b0e20f70b17e28
```

-	Platforms:
	-	linux; amd64

### `docker:17.04.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30461127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38b4b64ebde60db987be01b9544e2667167850c61ec184e2389201052d14f26b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_VERSION=17.04.0-ce
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_SHA256=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Thu, 06 Apr 2017 18:11:21 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 06 Apr 2017 18:11:21 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 06 Apr 2017 18:11:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Apr 2017 18:11:22 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ec00e5df6cf47a9f3847375b5eac7f570fdfffa7b7214499ab110327d90d7d`  
		Last Modified: Thu, 06 Apr 2017 18:12:07 GMT  
		Size: 26.4 MB (26387656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abed63dc911f7b91f9eae8ff937eca0f0eb17d4624ab89f08e870cdd8720e60`  
		Last Modified: Thu, 06 Apr 2017 18:11:57 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.04`

```console
$ docker pull docker@sha256:ba19fd3d949bba6c94f5768fc0ddfafb4b9a40b3f35bdd3942b0e20f70b17e28
```

-	Platforms:
	-	linux; amd64

### `docker:17.04` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30461127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38b4b64ebde60db987be01b9544e2667167850c61ec184e2389201052d14f26b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_VERSION=17.04.0-ce
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_SHA256=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Thu, 06 Apr 2017 18:11:21 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 06 Apr 2017 18:11:21 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 06 Apr 2017 18:11:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Apr 2017 18:11:22 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ec00e5df6cf47a9f3847375b5eac7f570fdfffa7b7214499ab110327d90d7d`  
		Last Modified: Thu, 06 Apr 2017 18:12:07 GMT  
		Size: 26.4 MB (26387656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abed63dc911f7b91f9eae8ff937eca0f0eb17d4624ab89f08e870cdd8720e60`  
		Last Modified: Thu, 06 Apr 2017 18:11:57 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17`

```console
$ docker pull docker@sha256:ba19fd3d949bba6c94f5768fc0ddfafb4b9a40b3f35bdd3942b0e20f70b17e28
```

-	Platforms:
	-	linux; amd64

### `docker:17` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30461127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38b4b64ebde60db987be01b9544e2667167850c61ec184e2389201052d14f26b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_VERSION=17.04.0-ce
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_SHA256=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Thu, 06 Apr 2017 18:11:21 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 06 Apr 2017 18:11:21 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 06 Apr 2017 18:11:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Apr 2017 18:11:22 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ec00e5df6cf47a9f3847375b5eac7f570fdfffa7b7214499ab110327d90d7d`  
		Last Modified: Thu, 06 Apr 2017 18:12:07 GMT  
		Size: 26.4 MB (26387656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abed63dc911f7b91f9eae8ff937eca0f0eb17d4624ab89f08e870cdd8720e60`  
		Last Modified: Thu, 06 Apr 2017 18:11:57 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:ba19fd3d949bba6c94f5768fc0ddfafb4b9a40b3f35bdd3942b0e20f70b17e28
```

-	Platforms:
	-	linux; amd64

### `docker:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30461127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38b4b64ebde60db987be01b9544e2667167850c61ec184e2389201052d14f26b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_VERSION=17.04.0-ce
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_SHA256=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Thu, 06 Apr 2017 18:11:21 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 06 Apr 2017 18:11:21 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 06 Apr 2017 18:11:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Apr 2017 18:11:22 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ec00e5df6cf47a9f3847375b5eac7f570fdfffa7b7214499ab110327d90d7d`  
		Last Modified: Thu, 06 Apr 2017 18:12:07 GMT  
		Size: 26.4 MB (26387656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abed63dc911f7b91f9eae8ff937eca0f0eb17d4624ab89f08e870cdd8720e60`  
		Last Modified: Thu, 06 Apr 2017 18:11:57 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge`

```console
$ docker pull docker@sha256:ba19fd3d949bba6c94f5768fc0ddfafb4b9a40b3f35bdd3942b0e20f70b17e28
```

-	Platforms:
	-	linux; amd64

### `docker:edge` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30461127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38b4b64ebde60db987be01b9544e2667167850c61ec184e2389201052d14f26b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_VERSION=17.04.0-ce
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_SHA256=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Thu, 06 Apr 2017 18:11:21 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 06 Apr 2017 18:11:21 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 06 Apr 2017 18:11:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Apr 2017 18:11:22 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ec00e5df6cf47a9f3847375b5eac7f570fdfffa7b7214499ab110327d90d7d`  
		Last Modified: Thu, 06 Apr 2017 18:12:07 GMT  
		Size: 26.4 MB (26387656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abed63dc911f7b91f9eae8ff937eca0f0eb17d4624ab89f08e870cdd8720e60`  
		Last Modified: Thu, 06 Apr 2017 18:11:57 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.04.0-ce-dind`

```console
$ docker pull docker@sha256:90dc3842005c1a08b94fa80123de3d8504f15980232f464b4929aeb1f435860a
```

-	Platforms:
	-	linux; amd64

### `docker:17.04.0-ce-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32568514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10168f3d1b55e0c894b2626cae8ed752d58b20bc6d5bcf316af7773e772edf84`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_VERSION=17.04.0-ce
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_SHA256=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Thu, 06 Apr 2017 18:11:21 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 06 Apr 2017 18:11:21 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 06 Apr 2017 18:11:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Apr 2017 18:11:22 GMT
CMD ["sh"]
# Thu, 06 Apr 2017 18:11:25 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 06 Apr 2017 18:11:26 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 06 Apr 2017 18:11:26 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 06 Apr 2017 18:11:28 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 06 Apr 2017 18:11:28 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 06 Apr 2017 18:11:29 GMT
VOLUME [/var/lib/docker]
# Thu, 06 Apr 2017 18:11:29 GMT
EXPOSE 2375/tcp
# Thu, 06 Apr 2017 18:11:29 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 06 Apr 2017 18:11:30 GMT
CMD []
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ec00e5df6cf47a9f3847375b5eac7f570fdfffa7b7214499ab110327d90d7d`  
		Last Modified: Thu, 06 Apr 2017 18:12:07 GMT  
		Size: 26.4 MB (26387656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abed63dc911f7b91f9eae8ff937eca0f0eb17d4624ab89f08e870cdd8720e60`  
		Last Modified: Thu, 06 Apr 2017 18:11:57 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de787445e43b7e1eca44ab2456606adab2e15ab8fd4d9d8c89e045357be7571e`  
		Last Modified: Thu, 06 Apr 2017 18:14:13 GMT  
		Size: 2.1 MB (2103785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65c638029b953b799c5dfaa640b9192e56e025dfe069d4f1f1b4591b26bb551`  
		Last Modified: Thu, 06 Apr 2017 18:14:12 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33412a76240d320ae0ea36eef8cf6ec7f84f1006810811d74f3e29c8b4f1ba3`  
		Last Modified: Thu, 06 Apr 2017 18:14:13 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459320c40040b465e5e45fb61663e060d521d27a4cc0e8bcc33fa01f43684a60`  
		Last Modified: Thu, 06 Apr 2017 18:14:13 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.04.0-dind`

```console
$ docker pull docker@sha256:90dc3842005c1a08b94fa80123de3d8504f15980232f464b4929aeb1f435860a
```

-	Platforms:
	-	linux; amd64

### `docker:17.04.0-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32568514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10168f3d1b55e0c894b2626cae8ed752d58b20bc6d5bcf316af7773e772edf84`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_VERSION=17.04.0-ce
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_SHA256=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Thu, 06 Apr 2017 18:11:21 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 06 Apr 2017 18:11:21 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 06 Apr 2017 18:11:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Apr 2017 18:11:22 GMT
CMD ["sh"]
# Thu, 06 Apr 2017 18:11:25 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 06 Apr 2017 18:11:26 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 06 Apr 2017 18:11:26 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 06 Apr 2017 18:11:28 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 06 Apr 2017 18:11:28 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 06 Apr 2017 18:11:29 GMT
VOLUME [/var/lib/docker]
# Thu, 06 Apr 2017 18:11:29 GMT
EXPOSE 2375/tcp
# Thu, 06 Apr 2017 18:11:29 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 06 Apr 2017 18:11:30 GMT
CMD []
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ec00e5df6cf47a9f3847375b5eac7f570fdfffa7b7214499ab110327d90d7d`  
		Last Modified: Thu, 06 Apr 2017 18:12:07 GMT  
		Size: 26.4 MB (26387656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abed63dc911f7b91f9eae8ff937eca0f0eb17d4624ab89f08e870cdd8720e60`  
		Last Modified: Thu, 06 Apr 2017 18:11:57 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de787445e43b7e1eca44ab2456606adab2e15ab8fd4d9d8c89e045357be7571e`  
		Last Modified: Thu, 06 Apr 2017 18:14:13 GMT  
		Size: 2.1 MB (2103785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65c638029b953b799c5dfaa640b9192e56e025dfe069d4f1f1b4591b26bb551`  
		Last Modified: Thu, 06 Apr 2017 18:14:12 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33412a76240d320ae0ea36eef8cf6ec7f84f1006810811d74f3e29c8b4f1ba3`  
		Last Modified: Thu, 06 Apr 2017 18:14:13 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459320c40040b465e5e45fb61663e060d521d27a4cc0e8bcc33fa01f43684a60`  
		Last Modified: Thu, 06 Apr 2017 18:14:13 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.04-dind`

```console
$ docker pull docker@sha256:90dc3842005c1a08b94fa80123de3d8504f15980232f464b4929aeb1f435860a
```

-	Platforms:
	-	linux; amd64

### `docker:17.04-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32568514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10168f3d1b55e0c894b2626cae8ed752d58b20bc6d5bcf316af7773e772edf84`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_VERSION=17.04.0-ce
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_SHA256=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Thu, 06 Apr 2017 18:11:21 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 06 Apr 2017 18:11:21 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 06 Apr 2017 18:11:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Apr 2017 18:11:22 GMT
CMD ["sh"]
# Thu, 06 Apr 2017 18:11:25 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 06 Apr 2017 18:11:26 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 06 Apr 2017 18:11:26 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 06 Apr 2017 18:11:28 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 06 Apr 2017 18:11:28 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 06 Apr 2017 18:11:29 GMT
VOLUME [/var/lib/docker]
# Thu, 06 Apr 2017 18:11:29 GMT
EXPOSE 2375/tcp
# Thu, 06 Apr 2017 18:11:29 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 06 Apr 2017 18:11:30 GMT
CMD []
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ec00e5df6cf47a9f3847375b5eac7f570fdfffa7b7214499ab110327d90d7d`  
		Last Modified: Thu, 06 Apr 2017 18:12:07 GMT  
		Size: 26.4 MB (26387656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abed63dc911f7b91f9eae8ff937eca0f0eb17d4624ab89f08e870cdd8720e60`  
		Last Modified: Thu, 06 Apr 2017 18:11:57 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de787445e43b7e1eca44ab2456606adab2e15ab8fd4d9d8c89e045357be7571e`  
		Last Modified: Thu, 06 Apr 2017 18:14:13 GMT  
		Size: 2.1 MB (2103785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65c638029b953b799c5dfaa640b9192e56e025dfe069d4f1f1b4591b26bb551`  
		Last Modified: Thu, 06 Apr 2017 18:14:12 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33412a76240d320ae0ea36eef8cf6ec7f84f1006810811d74f3e29c8b4f1ba3`  
		Last Modified: Thu, 06 Apr 2017 18:14:13 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459320c40040b465e5e45fb61663e060d521d27a4cc0e8bcc33fa01f43684a60`  
		Last Modified: Thu, 06 Apr 2017 18:14:13 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-dind`

```console
$ docker pull docker@sha256:90dc3842005c1a08b94fa80123de3d8504f15980232f464b4929aeb1f435860a
```

-	Platforms:
	-	linux; amd64

### `docker:17-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32568514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10168f3d1b55e0c894b2626cae8ed752d58b20bc6d5bcf316af7773e772edf84`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_VERSION=17.04.0-ce
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_SHA256=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Thu, 06 Apr 2017 18:11:21 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 06 Apr 2017 18:11:21 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 06 Apr 2017 18:11:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Apr 2017 18:11:22 GMT
CMD ["sh"]
# Thu, 06 Apr 2017 18:11:25 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 06 Apr 2017 18:11:26 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 06 Apr 2017 18:11:26 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 06 Apr 2017 18:11:28 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 06 Apr 2017 18:11:28 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 06 Apr 2017 18:11:29 GMT
VOLUME [/var/lib/docker]
# Thu, 06 Apr 2017 18:11:29 GMT
EXPOSE 2375/tcp
# Thu, 06 Apr 2017 18:11:29 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 06 Apr 2017 18:11:30 GMT
CMD []
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ec00e5df6cf47a9f3847375b5eac7f570fdfffa7b7214499ab110327d90d7d`  
		Last Modified: Thu, 06 Apr 2017 18:12:07 GMT  
		Size: 26.4 MB (26387656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abed63dc911f7b91f9eae8ff937eca0f0eb17d4624ab89f08e870cdd8720e60`  
		Last Modified: Thu, 06 Apr 2017 18:11:57 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de787445e43b7e1eca44ab2456606adab2e15ab8fd4d9d8c89e045357be7571e`  
		Last Modified: Thu, 06 Apr 2017 18:14:13 GMT  
		Size: 2.1 MB (2103785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65c638029b953b799c5dfaa640b9192e56e025dfe069d4f1f1b4591b26bb551`  
		Last Modified: Thu, 06 Apr 2017 18:14:12 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33412a76240d320ae0ea36eef8cf6ec7f84f1006810811d74f3e29c8b4f1ba3`  
		Last Modified: Thu, 06 Apr 2017 18:14:13 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459320c40040b465e5e45fb61663e060d521d27a4cc0e8bcc33fa01f43684a60`  
		Last Modified: Thu, 06 Apr 2017 18:14:13 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:90dc3842005c1a08b94fa80123de3d8504f15980232f464b4929aeb1f435860a
```

-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32568514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10168f3d1b55e0c894b2626cae8ed752d58b20bc6d5bcf316af7773e772edf84`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_VERSION=17.04.0-ce
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_SHA256=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Thu, 06 Apr 2017 18:11:21 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 06 Apr 2017 18:11:21 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 06 Apr 2017 18:11:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Apr 2017 18:11:22 GMT
CMD ["sh"]
# Thu, 06 Apr 2017 18:11:25 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 06 Apr 2017 18:11:26 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 06 Apr 2017 18:11:26 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 06 Apr 2017 18:11:28 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 06 Apr 2017 18:11:28 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 06 Apr 2017 18:11:29 GMT
VOLUME [/var/lib/docker]
# Thu, 06 Apr 2017 18:11:29 GMT
EXPOSE 2375/tcp
# Thu, 06 Apr 2017 18:11:29 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 06 Apr 2017 18:11:30 GMT
CMD []
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ec00e5df6cf47a9f3847375b5eac7f570fdfffa7b7214499ab110327d90d7d`  
		Last Modified: Thu, 06 Apr 2017 18:12:07 GMT  
		Size: 26.4 MB (26387656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abed63dc911f7b91f9eae8ff937eca0f0eb17d4624ab89f08e870cdd8720e60`  
		Last Modified: Thu, 06 Apr 2017 18:11:57 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de787445e43b7e1eca44ab2456606adab2e15ab8fd4d9d8c89e045357be7571e`  
		Last Modified: Thu, 06 Apr 2017 18:14:13 GMT  
		Size: 2.1 MB (2103785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65c638029b953b799c5dfaa640b9192e56e025dfe069d4f1f1b4591b26bb551`  
		Last Modified: Thu, 06 Apr 2017 18:14:12 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33412a76240d320ae0ea36eef8cf6ec7f84f1006810811d74f3e29c8b4f1ba3`  
		Last Modified: Thu, 06 Apr 2017 18:14:13 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459320c40040b465e5e45fb61663e060d521d27a4cc0e8bcc33fa01f43684a60`  
		Last Modified: Thu, 06 Apr 2017 18:14:13 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-dind`

```console
$ docker pull docker@sha256:90dc3842005c1a08b94fa80123de3d8504f15980232f464b4929aeb1f435860a
```

-	Platforms:
	-	linux; amd64

### `docker:edge-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32568514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10168f3d1b55e0c894b2626cae8ed752d58b20bc6d5bcf316af7773e772edf84`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_VERSION=17.04.0-ce
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_SHA256=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Thu, 06 Apr 2017 18:11:21 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 06 Apr 2017 18:11:21 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 06 Apr 2017 18:11:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Apr 2017 18:11:22 GMT
CMD ["sh"]
# Thu, 06 Apr 2017 18:11:25 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 06 Apr 2017 18:11:26 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 06 Apr 2017 18:11:26 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 06 Apr 2017 18:11:28 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 06 Apr 2017 18:11:28 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 06 Apr 2017 18:11:29 GMT
VOLUME [/var/lib/docker]
# Thu, 06 Apr 2017 18:11:29 GMT
EXPOSE 2375/tcp
# Thu, 06 Apr 2017 18:11:29 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 06 Apr 2017 18:11:30 GMT
CMD []
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ec00e5df6cf47a9f3847375b5eac7f570fdfffa7b7214499ab110327d90d7d`  
		Last Modified: Thu, 06 Apr 2017 18:12:07 GMT  
		Size: 26.4 MB (26387656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abed63dc911f7b91f9eae8ff937eca0f0eb17d4624ab89f08e870cdd8720e60`  
		Last Modified: Thu, 06 Apr 2017 18:11:57 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de787445e43b7e1eca44ab2456606adab2e15ab8fd4d9d8c89e045357be7571e`  
		Last Modified: Thu, 06 Apr 2017 18:14:13 GMT  
		Size: 2.1 MB (2103785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65c638029b953b799c5dfaa640b9192e56e025dfe069d4f1f1b4591b26bb551`  
		Last Modified: Thu, 06 Apr 2017 18:14:12 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33412a76240d320ae0ea36eef8cf6ec7f84f1006810811d74f3e29c8b4f1ba3`  
		Last Modified: Thu, 06 Apr 2017 18:14:13 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459320c40040b465e5e45fb61663e060d521d27a4cc0e8bcc33fa01f43684a60`  
		Last Modified: Thu, 06 Apr 2017 18:14:13 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.04.0-ce-git`

```console
$ docker pull docker@sha256:4309fd2665bd7cb40483a743710052fa46d442c800a7823275db8a9cf3717923
```

-	Platforms:
	-	linux; amd64

### `docker:17.04.0-ce-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40833657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6c31ae3dfaebd9a4d6f80ea6d6fbdd6f2b6a4945d11c6f367e15f3ae97af07e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_VERSION=17.04.0-ce
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_SHA256=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Thu, 06 Apr 2017 18:11:21 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 06 Apr 2017 18:11:21 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 06 Apr 2017 18:11:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Apr 2017 18:11:22 GMT
CMD ["sh"]
# Thu, 06 Apr 2017 18:11:32 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ec00e5df6cf47a9f3847375b5eac7f570fdfffa7b7214499ab110327d90d7d`  
		Last Modified: Thu, 06 Apr 2017 18:12:07 GMT  
		Size: 26.4 MB (26387656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abed63dc911f7b91f9eae8ff937eca0f0eb17d4624ab89f08e870cdd8720e60`  
		Last Modified: Thu, 06 Apr 2017 18:11:57 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d0cd4caa31385ae43fd455f639367313d8d94b91769ab71dbccfdd4a979da6`  
		Last Modified: Thu, 06 Apr 2017 18:16:20 GMT  
		Size: 10.4 MB (10372530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.04.0-git`

```console
$ docker pull docker@sha256:4309fd2665bd7cb40483a743710052fa46d442c800a7823275db8a9cf3717923
```

-	Platforms:
	-	linux; amd64

### `docker:17.04.0-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40833657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6c31ae3dfaebd9a4d6f80ea6d6fbdd6f2b6a4945d11c6f367e15f3ae97af07e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_VERSION=17.04.0-ce
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_SHA256=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Thu, 06 Apr 2017 18:11:21 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 06 Apr 2017 18:11:21 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 06 Apr 2017 18:11:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Apr 2017 18:11:22 GMT
CMD ["sh"]
# Thu, 06 Apr 2017 18:11:32 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ec00e5df6cf47a9f3847375b5eac7f570fdfffa7b7214499ab110327d90d7d`  
		Last Modified: Thu, 06 Apr 2017 18:12:07 GMT  
		Size: 26.4 MB (26387656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abed63dc911f7b91f9eae8ff937eca0f0eb17d4624ab89f08e870cdd8720e60`  
		Last Modified: Thu, 06 Apr 2017 18:11:57 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d0cd4caa31385ae43fd455f639367313d8d94b91769ab71dbccfdd4a979da6`  
		Last Modified: Thu, 06 Apr 2017 18:16:20 GMT  
		Size: 10.4 MB (10372530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.04-git`

```console
$ docker pull docker@sha256:4309fd2665bd7cb40483a743710052fa46d442c800a7823275db8a9cf3717923
```

-	Platforms:
	-	linux; amd64

### `docker:17.04-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40833657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6c31ae3dfaebd9a4d6f80ea6d6fbdd6f2b6a4945d11c6f367e15f3ae97af07e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_VERSION=17.04.0-ce
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_SHA256=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Thu, 06 Apr 2017 18:11:21 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 06 Apr 2017 18:11:21 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 06 Apr 2017 18:11:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Apr 2017 18:11:22 GMT
CMD ["sh"]
# Thu, 06 Apr 2017 18:11:32 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ec00e5df6cf47a9f3847375b5eac7f570fdfffa7b7214499ab110327d90d7d`  
		Last Modified: Thu, 06 Apr 2017 18:12:07 GMT  
		Size: 26.4 MB (26387656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abed63dc911f7b91f9eae8ff937eca0f0eb17d4624ab89f08e870cdd8720e60`  
		Last Modified: Thu, 06 Apr 2017 18:11:57 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d0cd4caa31385ae43fd455f639367313d8d94b91769ab71dbccfdd4a979da6`  
		Last Modified: Thu, 06 Apr 2017 18:16:20 GMT  
		Size: 10.4 MB (10372530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-git`

```console
$ docker pull docker@sha256:4309fd2665bd7cb40483a743710052fa46d442c800a7823275db8a9cf3717923
```

-	Platforms:
	-	linux; amd64

### `docker:17-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40833657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6c31ae3dfaebd9a4d6f80ea6d6fbdd6f2b6a4945d11c6f367e15f3ae97af07e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_VERSION=17.04.0-ce
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_SHA256=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Thu, 06 Apr 2017 18:11:21 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 06 Apr 2017 18:11:21 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 06 Apr 2017 18:11:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Apr 2017 18:11:22 GMT
CMD ["sh"]
# Thu, 06 Apr 2017 18:11:32 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ec00e5df6cf47a9f3847375b5eac7f570fdfffa7b7214499ab110327d90d7d`  
		Last Modified: Thu, 06 Apr 2017 18:12:07 GMT  
		Size: 26.4 MB (26387656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abed63dc911f7b91f9eae8ff937eca0f0eb17d4624ab89f08e870cdd8720e60`  
		Last Modified: Thu, 06 Apr 2017 18:11:57 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d0cd4caa31385ae43fd455f639367313d8d94b91769ab71dbccfdd4a979da6`  
		Last Modified: Thu, 06 Apr 2017 18:16:20 GMT  
		Size: 10.4 MB (10372530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:4309fd2665bd7cb40483a743710052fa46d442c800a7823275db8a9cf3717923
```

-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40833657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6c31ae3dfaebd9a4d6f80ea6d6fbdd6f2b6a4945d11c6f367e15f3ae97af07e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_VERSION=17.04.0-ce
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_SHA256=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Thu, 06 Apr 2017 18:11:21 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 06 Apr 2017 18:11:21 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 06 Apr 2017 18:11:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Apr 2017 18:11:22 GMT
CMD ["sh"]
# Thu, 06 Apr 2017 18:11:32 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ec00e5df6cf47a9f3847375b5eac7f570fdfffa7b7214499ab110327d90d7d`  
		Last Modified: Thu, 06 Apr 2017 18:12:07 GMT  
		Size: 26.4 MB (26387656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abed63dc911f7b91f9eae8ff937eca0f0eb17d4624ab89f08e870cdd8720e60`  
		Last Modified: Thu, 06 Apr 2017 18:11:57 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d0cd4caa31385ae43fd455f639367313d8d94b91769ab71dbccfdd4a979da6`  
		Last Modified: Thu, 06 Apr 2017 18:16:20 GMT  
		Size: 10.4 MB (10372530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-git`

```console
$ docker pull docker@sha256:4309fd2665bd7cb40483a743710052fa46d442c800a7823275db8a9cf3717923
```

-	Platforms:
	-	linux; amd64

### `docker:edge-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40833657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6c31ae3dfaebd9a4d6f80ea6d6fbdd6f2b6a4945d11c6f367e15f3ae97af07e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_VERSION=17.04.0-ce
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_SHA256=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Thu, 06 Apr 2017 18:11:21 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 06 Apr 2017 18:11:21 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 06 Apr 2017 18:11:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Apr 2017 18:11:22 GMT
CMD ["sh"]
# Thu, 06 Apr 2017 18:11:32 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ec00e5df6cf47a9f3847375b5eac7f570fdfffa7b7214499ab110327d90d7d`  
		Last Modified: Thu, 06 Apr 2017 18:12:07 GMT  
		Size: 26.4 MB (26387656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abed63dc911f7b91f9eae8ff937eca0f0eb17d4624ab89f08e870cdd8720e60`  
		Last Modified: Thu, 06 Apr 2017 18:11:57 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d0cd4caa31385ae43fd455f639367313d8d94b91769ab71dbccfdd4a979da6`  
		Last Modified: Thu, 06 Apr 2017 18:16:20 GMT  
		Size: 10.4 MB (10372530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-ce`

```console
$ docker pull docker@sha256:ae2445d228b79d2cdb420a07874e69be69319ba3f9c00b022d6a36e59f5a14c4
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-ce` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31815814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d953a76892ac0c90e9d075f0434e4031c9abde979051cb5247462a673148add7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_SHA256=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Thu, 30 Mar 2017 21:13:43 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 30 Mar 2017 21:13:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:13:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:00 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300833aad80597066e9279e265c856484bbaeedffe75fc64829014785d27908a`  
		Last Modified: Thu, 30 Mar 2017 21:21:15 GMT  
		Size: 27.7 MB (27742342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335af79f7977f9e6202b0a9e18ad0e807b186744d414c9197b836ca8290b8488`  
		Last Modified: Thu, 30 Mar 2017 21:21:00 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1`

```console
$ docker pull docker@sha256:ae2445d228b79d2cdb420a07874e69be69319ba3f9c00b022d6a36e59f5a14c4
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31815814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d953a76892ac0c90e9d075f0434e4031c9abde979051cb5247462a673148add7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_SHA256=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Thu, 30 Mar 2017 21:13:43 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 30 Mar 2017 21:13:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:13:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:00 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300833aad80597066e9279e265c856484bbaeedffe75fc64829014785d27908a`  
		Last Modified: Thu, 30 Mar 2017 21:21:15 GMT  
		Size: 27.7 MB (27742342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335af79f7977f9e6202b0a9e18ad0e807b186744d414c9197b836ca8290b8488`  
		Last Modified: Thu, 30 Mar 2017 21:21:00 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03`

```console
$ docker pull docker@sha256:ae2445d228b79d2cdb420a07874e69be69319ba3f9c00b022d6a36e59f5a14c4
```

-	Platforms:
	-	linux; amd64

### `docker:17.03` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31815814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d953a76892ac0c90e9d075f0434e4031c9abde979051cb5247462a673148add7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_SHA256=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Thu, 30 Mar 2017 21:13:43 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 30 Mar 2017 21:13:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:13:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:00 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300833aad80597066e9279e265c856484bbaeedffe75fc64829014785d27908a`  
		Last Modified: Thu, 30 Mar 2017 21:21:15 GMT  
		Size: 27.7 MB (27742342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335af79f7977f9e6202b0a9e18ad0e807b186744d414c9197b836ca8290b8488`  
		Last Modified: Thu, 30 Mar 2017 21:21:00 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable`

```console
$ docker pull docker@sha256:ae2445d228b79d2cdb420a07874e69be69319ba3f9c00b022d6a36e59f5a14c4
```

-	Platforms:
	-	linux; amd64

### `docker:stable` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31815814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d953a76892ac0c90e9d075f0434e4031c9abde979051cb5247462a673148add7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_SHA256=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Thu, 30 Mar 2017 21:13:43 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 30 Mar 2017 21:13:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:13:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:00 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300833aad80597066e9279e265c856484bbaeedffe75fc64829014785d27908a`  
		Last Modified: Thu, 30 Mar 2017 21:21:15 GMT  
		Size: 27.7 MB (27742342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335af79f7977f9e6202b0a9e18ad0e807b186744d414c9197b836ca8290b8488`  
		Last Modified: Thu, 30 Mar 2017 21:21:00 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-ce-dind`

```console
$ docker pull docker@sha256:3b29d240c7bdb2967b5c4fb304d6849e5cd888821ef229a36b1f9c96648fb014
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-ce-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33923207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20ee9831c01300cdd5a9ddca7c2ecc7fe68699189ec527beb827587aeae5db6c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_SHA256=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Thu, 30 Mar 2017 21:13:43 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 30 Mar 2017 21:13:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:13:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:00 GMT
CMD ["sh"]
# Thu, 30 Mar 2017 21:14:03 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 30 Mar 2017 21:14:20 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 30 Mar 2017 21:14:20 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 30 Mar 2017 21:14:22 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 30 Mar 2017 21:14:23 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:14:24 GMT
VOLUME [/var/lib/docker]
# Thu, 30 Mar 2017 21:14:25 GMT
EXPOSE 2375/tcp
# Thu, 30 Mar 2017 21:14:25 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:26 GMT
CMD []
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300833aad80597066e9279e265c856484bbaeedffe75fc64829014785d27908a`  
		Last Modified: Thu, 30 Mar 2017 21:21:15 GMT  
		Size: 27.7 MB (27742342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335af79f7977f9e6202b0a9e18ad0e807b186744d414c9197b836ca8290b8488`  
		Last Modified: Thu, 30 Mar 2017 21:21:00 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d1ee13afdfdad7ee597347b27ae21112aa96d936f26d0951a17415b4c54dac`  
		Last Modified: Thu, 30 Mar 2017 21:23:17 GMT  
		Size: 2.1 MB (2103793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8fac4b914c3679eec5425ab8d34d6ac388a9543243ef7b9a285ac9f683b74f`  
		Last Modified: Thu, 30 Mar 2017 21:23:15 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25860337c30dc5bc25a1db9b4213891e3519bee62ce9b047470e2a075bf7398f`  
		Last Modified: Thu, 30 Mar 2017 21:23:15 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2864a3f5d437f1f4e59d1a792a9d60de652a393b0ce04c103325a91f0484ee`  
		Last Modified: Thu, 30 Mar 2017 21:23:15 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-dind`

```console
$ docker pull docker@sha256:3b29d240c7bdb2967b5c4fb304d6849e5cd888821ef229a36b1f9c96648fb014
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33923207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20ee9831c01300cdd5a9ddca7c2ecc7fe68699189ec527beb827587aeae5db6c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_SHA256=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Thu, 30 Mar 2017 21:13:43 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 30 Mar 2017 21:13:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:13:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:00 GMT
CMD ["sh"]
# Thu, 30 Mar 2017 21:14:03 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 30 Mar 2017 21:14:20 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 30 Mar 2017 21:14:20 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 30 Mar 2017 21:14:22 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 30 Mar 2017 21:14:23 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:14:24 GMT
VOLUME [/var/lib/docker]
# Thu, 30 Mar 2017 21:14:25 GMT
EXPOSE 2375/tcp
# Thu, 30 Mar 2017 21:14:25 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:26 GMT
CMD []
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300833aad80597066e9279e265c856484bbaeedffe75fc64829014785d27908a`  
		Last Modified: Thu, 30 Mar 2017 21:21:15 GMT  
		Size: 27.7 MB (27742342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335af79f7977f9e6202b0a9e18ad0e807b186744d414c9197b836ca8290b8488`  
		Last Modified: Thu, 30 Mar 2017 21:21:00 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d1ee13afdfdad7ee597347b27ae21112aa96d936f26d0951a17415b4c54dac`  
		Last Modified: Thu, 30 Mar 2017 21:23:17 GMT  
		Size: 2.1 MB (2103793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8fac4b914c3679eec5425ab8d34d6ac388a9543243ef7b9a285ac9f683b74f`  
		Last Modified: Thu, 30 Mar 2017 21:23:15 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25860337c30dc5bc25a1db9b4213891e3519bee62ce9b047470e2a075bf7398f`  
		Last Modified: Thu, 30 Mar 2017 21:23:15 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2864a3f5d437f1f4e59d1a792a9d60de652a393b0ce04c103325a91f0484ee`  
		Last Modified: Thu, 30 Mar 2017 21:23:15 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03-dind`

```console
$ docker pull docker@sha256:3b29d240c7bdb2967b5c4fb304d6849e5cd888821ef229a36b1f9c96648fb014
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33923207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20ee9831c01300cdd5a9ddca7c2ecc7fe68699189ec527beb827587aeae5db6c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_SHA256=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Thu, 30 Mar 2017 21:13:43 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 30 Mar 2017 21:13:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:13:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:00 GMT
CMD ["sh"]
# Thu, 30 Mar 2017 21:14:03 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 30 Mar 2017 21:14:20 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 30 Mar 2017 21:14:20 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 30 Mar 2017 21:14:22 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 30 Mar 2017 21:14:23 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:14:24 GMT
VOLUME [/var/lib/docker]
# Thu, 30 Mar 2017 21:14:25 GMT
EXPOSE 2375/tcp
# Thu, 30 Mar 2017 21:14:25 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:26 GMT
CMD []
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300833aad80597066e9279e265c856484bbaeedffe75fc64829014785d27908a`  
		Last Modified: Thu, 30 Mar 2017 21:21:15 GMT  
		Size: 27.7 MB (27742342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335af79f7977f9e6202b0a9e18ad0e807b186744d414c9197b836ca8290b8488`  
		Last Modified: Thu, 30 Mar 2017 21:21:00 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d1ee13afdfdad7ee597347b27ae21112aa96d936f26d0951a17415b4c54dac`  
		Last Modified: Thu, 30 Mar 2017 21:23:17 GMT  
		Size: 2.1 MB (2103793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8fac4b914c3679eec5425ab8d34d6ac388a9543243ef7b9a285ac9f683b74f`  
		Last Modified: Thu, 30 Mar 2017 21:23:15 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25860337c30dc5bc25a1db9b4213891e3519bee62ce9b047470e2a075bf7398f`  
		Last Modified: Thu, 30 Mar 2017 21:23:15 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2864a3f5d437f1f4e59d1a792a9d60de652a393b0ce04c103325a91f0484ee`  
		Last Modified: Thu, 30 Mar 2017 21:23:15 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-dind`

```console
$ docker pull docker@sha256:3b29d240c7bdb2967b5c4fb304d6849e5cd888821ef229a36b1f9c96648fb014
```

-	Platforms:
	-	linux; amd64

### `docker:stable-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33923207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20ee9831c01300cdd5a9ddca7c2ecc7fe68699189ec527beb827587aeae5db6c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_SHA256=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Thu, 30 Mar 2017 21:13:43 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 30 Mar 2017 21:13:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:13:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:00 GMT
CMD ["sh"]
# Thu, 30 Mar 2017 21:14:03 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 30 Mar 2017 21:14:20 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 30 Mar 2017 21:14:20 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 30 Mar 2017 21:14:22 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 30 Mar 2017 21:14:23 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:14:24 GMT
VOLUME [/var/lib/docker]
# Thu, 30 Mar 2017 21:14:25 GMT
EXPOSE 2375/tcp
# Thu, 30 Mar 2017 21:14:25 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:26 GMT
CMD []
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300833aad80597066e9279e265c856484bbaeedffe75fc64829014785d27908a`  
		Last Modified: Thu, 30 Mar 2017 21:21:15 GMT  
		Size: 27.7 MB (27742342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335af79f7977f9e6202b0a9e18ad0e807b186744d414c9197b836ca8290b8488`  
		Last Modified: Thu, 30 Mar 2017 21:21:00 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d1ee13afdfdad7ee597347b27ae21112aa96d936f26d0951a17415b4c54dac`  
		Last Modified: Thu, 30 Mar 2017 21:23:17 GMT  
		Size: 2.1 MB (2103793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8fac4b914c3679eec5425ab8d34d6ac388a9543243ef7b9a285ac9f683b74f`  
		Last Modified: Thu, 30 Mar 2017 21:23:15 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25860337c30dc5bc25a1db9b4213891e3519bee62ce9b047470e2a075bf7398f`  
		Last Modified: Thu, 30 Mar 2017 21:23:15 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2864a3f5d437f1f4e59d1a792a9d60de652a393b0ce04c103325a91f0484ee`  
		Last Modified: Thu, 30 Mar 2017 21:23:15 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-ce-git`

```console
$ docker pull docker@sha256:0bf85ff24e546cdd532b73f7f818d734cb000dbd048883db9477286f4f551ee6
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-ce-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42188343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f00e04ea2d6e7e76df76b83adb44ca6974960b0026096deaab4ead8c79be7e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_SHA256=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Thu, 30 Mar 2017 21:13:43 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 30 Mar 2017 21:13:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:13:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:00 GMT
CMD ["sh"]
# Thu, 30 Mar 2017 21:14:29 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300833aad80597066e9279e265c856484bbaeedffe75fc64829014785d27908a`  
		Last Modified: Thu, 30 Mar 2017 21:21:15 GMT  
		Size: 27.7 MB (27742342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335af79f7977f9e6202b0a9e18ad0e807b186744d414c9197b836ca8290b8488`  
		Last Modified: Thu, 30 Mar 2017 21:21:00 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0d0d1043837b6c170c685257fabfda306c08828b06bac1a9cfd50f98f4a616`  
		Last Modified: Thu, 30 Mar 2017 21:25:20 GMT  
		Size: 10.4 MB (10372529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-git`

```console
$ docker pull docker@sha256:0bf85ff24e546cdd532b73f7f818d734cb000dbd048883db9477286f4f551ee6
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42188343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f00e04ea2d6e7e76df76b83adb44ca6974960b0026096deaab4ead8c79be7e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_SHA256=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Thu, 30 Mar 2017 21:13:43 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 30 Mar 2017 21:13:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:13:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:00 GMT
CMD ["sh"]
# Thu, 30 Mar 2017 21:14:29 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300833aad80597066e9279e265c856484bbaeedffe75fc64829014785d27908a`  
		Last Modified: Thu, 30 Mar 2017 21:21:15 GMT  
		Size: 27.7 MB (27742342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335af79f7977f9e6202b0a9e18ad0e807b186744d414c9197b836ca8290b8488`  
		Last Modified: Thu, 30 Mar 2017 21:21:00 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0d0d1043837b6c170c685257fabfda306c08828b06bac1a9cfd50f98f4a616`  
		Last Modified: Thu, 30 Mar 2017 21:25:20 GMT  
		Size: 10.4 MB (10372529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03-git`

```console
$ docker pull docker@sha256:0bf85ff24e546cdd532b73f7f818d734cb000dbd048883db9477286f4f551ee6
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42188343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f00e04ea2d6e7e76df76b83adb44ca6974960b0026096deaab4ead8c79be7e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_SHA256=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Thu, 30 Mar 2017 21:13:43 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 30 Mar 2017 21:13:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:13:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:00 GMT
CMD ["sh"]
# Thu, 30 Mar 2017 21:14:29 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300833aad80597066e9279e265c856484bbaeedffe75fc64829014785d27908a`  
		Last Modified: Thu, 30 Mar 2017 21:21:15 GMT  
		Size: 27.7 MB (27742342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335af79f7977f9e6202b0a9e18ad0e807b186744d414c9197b836ca8290b8488`  
		Last Modified: Thu, 30 Mar 2017 21:21:00 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0d0d1043837b6c170c685257fabfda306c08828b06bac1a9cfd50f98f4a616`  
		Last Modified: Thu, 30 Mar 2017 21:25:20 GMT  
		Size: 10.4 MB (10372529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-git`

```console
$ docker pull docker@sha256:0bf85ff24e546cdd532b73f7f818d734cb000dbd048883db9477286f4f551ee6
```

-	Platforms:
	-	linux; amd64

### `docker:stable-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42188343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f00e04ea2d6e7e76df76b83adb44ca6974960b0026096deaab4ead8c79be7e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_SHA256=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Thu, 30 Mar 2017 21:13:43 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 30 Mar 2017 21:13:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:13:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:00 GMT
CMD ["sh"]
# Thu, 30 Mar 2017 21:14:29 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300833aad80597066e9279e265c856484bbaeedffe75fc64829014785d27908a`  
		Last Modified: Thu, 30 Mar 2017 21:21:15 GMT  
		Size: 27.7 MB (27742342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335af79f7977f9e6202b0a9e18ad0e807b186744d414c9197b836ca8290b8488`  
		Last Modified: Thu, 30 Mar 2017 21:21:00 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0d0d1043837b6c170c685257fabfda306c08828b06bac1a9cfd50f98f4a616`  
		Last Modified: Thu, 30 Mar 2017 21:25:20 GMT  
		Size: 10.4 MB (10372529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
