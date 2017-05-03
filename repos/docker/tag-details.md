<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:17.05.0-ce-rc3`](#docker17050-ce-rc3)
-	[`docker:17.05.0-ce`](#docker17050-ce)
-	[`docker:17.05.0`](#docker17050)
-	[`docker:17.05-rc`](#docker1705-rc)
-	[`docker:rc`](#dockerrc)
-	[`docker:17.05.0-ce-rc3-dind`](#docker17050-ce-rc3-dind)
-	[`docker:17.05.0-ce-dind`](#docker17050-ce-dind)
-	[`docker:17.05.0-dind`](#docker17050-dind)
-	[`docker:17.05-rc-dind`](#docker1705-rc-dind)
-	[`docker:rc-dind`](#dockerrc-dind)
-	[`docker:17.05.0-ce-rc3-git`](#docker17050-ce-rc3-git)
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

## `docker:17.05.0-ce-rc3`

**does not exist** (yet?)

## `docker:17.05.0-ce`

```console
$ docker pull docker@sha256:1f47d6a1650bbd9ac04097095f046f17b4952280bb2e135ad55de464df38bf85
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32858208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1cd8ef5b5570cdda104e688c8d368ecb3bb77a7f0a65b9cb549fe73318c7c2f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 01 May 2017 17:56:57 GMT
ENV DOCKER_VERSION=17.05.0-ce-rc2
# Mon, 01 May 2017 17:56:58 GMT
ENV DOCKER_SHA256_x86_64=fc2521a30797212410f46faece24204b9528990dac823c145b530c05acd50e9d
# Mon, 01 May 2017 17:56:58 GMT
ENV DOCKER_SHA256_armel=c4427822445e5f8c970ded1c106780a32641a7344c92a8dc57a9be4e0ea9cba0
# Mon, 01 May 2017 17:57:02 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Mon, 01 May 2017 17:57:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 01 May 2017 17:57:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 01 May 2017 17:57:04 GMT
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
	-	`sha256:a14aeeb194eef384c4fb0730e6e25080a88956a0056da3fdae337acc9e2105d0`  
		Last Modified: Mon, 01 May 2017 17:58:23 GMT  
		Size: 28.8 MB (28784736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3fdf74f7db0f537d81a3722da6d71bfb62bdfb239e7cefd45252a613845ed47`  
		Last Modified: Mon, 01 May 2017 17:58:17 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0`

```console
$ docker pull docker@sha256:1f47d6a1650bbd9ac04097095f046f17b4952280bb2e135ad55de464df38bf85
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32858208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1cd8ef5b5570cdda104e688c8d368ecb3bb77a7f0a65b9cb549fe73318c7c2f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 01 May 2017 17:56:57 GMT
ENV DOCKER_VERSION=17.05.0-ce-rc2
# Mon, 01 May 2017 17:56:58 GMT
ENV DOCKER_SHA256_x86_64=fc2521a30797212410f46faece24204b9528990dac823c145b530c05acd50e9d
# Mon, 01 May 2017 17:56:58 GMT
ENV DOCKER_SHA256_armel=c4427822445e5f8c970ded1c106780a32641a7344c92a8dc57a9be4e0ea9cba0
# Mon, 01 May 2017 17:57:02 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Mon, 01 May 2017 17:57:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 01 May 2017 17:57:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 01 May 2017 17:57:04 GMT
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
	-	`sha256:a14aeeb194eef384c4fb0730e6e25080a88956a0056da3fdae337acc9e2105d0`  
		Last Modified: Mon, 01 May 2017 17:58:23 GMT  
		Size: 28.8 MB (28784736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3fdf74f7db0f537d81a3722da6d71bfb62bdfb239e7cefd45252a613845ed47`  
		Last Modified: Mon, 01 May 2017 17:58:17 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05-rc`

```console
$ docker pull docker@sha256:1f47d6a1650bbd9ac04097095f046f17b4952280bb2e135ad55de464df38bf85
```

-	Platforms:
	-	linux; amd64

### `docker:17.05-rc` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32858208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1cd8ef5b5570cdda104e688c8d368ecb3bb77a7f0a65b9cb549fe73318c7c2f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 01 May 2017 17:56:57 GMT
ENV DOCKER_VERSION=17.05.0-ce-rc2
# Mon, 01 May 2017 17:56:58 GMT
ENV DOCKER_SHA256_x86_64=fc2521a30797212410f46faece24204b9528990dac823c145b530c05acd50e9d
# Mon, 01 May 2017 17:56:58 GMT
ENV DOCKER_SHA256_armel=c4427822445e5f8c970ded1c106780a32641a7344c92a8dc57a9be4e0ea9cba0
# Mon, 01 May 2017 17:57:02 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Mon, 01 May 2017 17:57:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 01 May 2017 17:57:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 01 May 2017 17:57:04 GMT
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
	-	`sha256:a14aeeb194eef384c4fb0730e6e25080a88956a0056da3fdae337acc9e2105d0`  
		Last Modified: Mon, 01 May 2017 17:58:23 GMT  
		Size: 28.8 MB (28784736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3fdf74f7db0f537d81a3722da6d71bfb62bdfb239e7cefd45252a613845ed47`  
		Last Modified: Mon, 01 May 2017 17:58:17 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc`

```console
$ docker pull docker@sha256:1f47d6a1650bbd9ac04097095f046f17b4952280bb2e135ad55de464df38bf85
```

-	Platforms:
	-	linux; amd64

### `docker:rc` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32858208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1cd8ef5b5570cdda104e688c8d368ecb3bb77a7f0a65b9cb549fe73318c7c2f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 01 May 2017 17:56:57 GMT
ENV DOCKER_VERSION=17.05.0-ce-rc2
# Mon, 01 May 2017 17:56:58 GMT
ENV DOCKER_SHA256_x86_64=fc2521a30797212410f46faece24204b9528990dac823c145b530c05acd50e9d
# Mon, 01 May 2017 17:56:58 GMT
ENV DOCKER_SHA256_armel=c4427822445e5f8c970ded1c106780a32641a7344c92a8dc57a9be4e0ea9cba0
# Mon, 01 May 2017 17:57:02 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Mon, 01 May 2017 17:57:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 01 May 2017 17:57:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 01 May 2017 17:57:04 GMT
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
	-	`sha256:a14aeeb194eef384c4fb0730e6e25080a88956a0056da3fdae337acc9e2105d0`  
		Last Modified: Mon, 01 May 2017 17:58:23 GMT  
		Size: 28.8 MB (28784736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3fdf74f7db0f537d81a3722da6d71bfb62bdfb239e7cefd45252a613845ed47`  
		Last Modified: Mon, 01 May 2017 17:58:17 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-ce-rc3-dind`

**does not exist** (yet?)

## `docker:17.05.0-ce-dind`

```console
$ docker pull docker@sha256:966a9cb46b2648c71263a631d2717ff83acf7a293641b033ed18ddc6bfbad3ad
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35027852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98ed3b7744341b35ce13b6456024adf53e6b4e3f9faf1ac31545b79b57c26427`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 01 May 2017 17:56:57 GMT
ENV DOCKER_VERSION=17.05.0-ce-rc2
# Mon, 01 May 2017 17:56:58 GMT
ENV DOCKER_SHA256_x86_64=fc2521a30797212410f46faece24204b9528990dac823c145b530c05acd50e9d
# Mon, 01 May 2017 17:56:58 GMT
ENV DOCKER_SHA256_armel=c4427822445e5f8c970ded1c106780a32641a7344c92a8dc57a9be4e0ea9cba0
# Mon, 01 May 2017 17:57:02 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Mon, 01 May 2017 17:57:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 01 May 2017 17:57:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 01 May 2017 17:57:04 GMT
CMD ["sh"]
# Mon, 01 May 2017 17:57:24 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 01 May 2017 17:57:26 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 01 May 2017 17:57:26 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 01 May 2017 17:57:28 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 01 May 2017 17:57:29 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 01 May 2017 17:57:30 GMT
VOLUME [/var/lib/docker]
# Mon, 01 May 2017 17:57:30 GMT
EXPOSE 2375/tcp
# Mon, 01 May 2017 17:57:31 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 01 May 2017 17:57:32 GMT
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
	-	`sha256:a14aeeb194eef384c4fb0730e6e25080a88956a0056da3fdae337acc9e2105d0`  
		Last Modified: Mon, 01 May 2017 17:58:23 GMT  
		Size: 28.8 MB (28784736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3fdf74f7db0f537d81a3722da6d71bfb62bdfb239e7cefd45252a613845ed47`  
		Last Modified: Mon, 01 May 2017 17:58:17 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8adac02f77d649022b439f50929be44cda354b029757977e55f394f867123354`  
		Last Modified: Mon, 01 May 2017 18:00:06 GMT  
		Size: 2.2 MB (2166042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548e27bbf75280e9d66c1b5d4e959132b65d462928dc2c9fc411abc86f1492aa`  
		Last Modified: Mon, 01 May 2017 18:00:06 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71724cb4ddaf0cffb13c394df901adabdd70e23c8bab99e7a6ce4841774a9ce4`  
		Last Modified: Mon, 01 May 2017 18:00:05 GMT  
		Size: 1.8 KB (1814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d36e2a65749805944765ba70baab19b37eeca54007a4b464e7a5b327bc7d64f8`  
		Last Modified: Mon, 01 May 2017 18:00:11 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-dind`

```console
$ docker pull docker@sha256:966a9cb46b2648c71263a631d2717ff83acf7a293641b033ed18ddc6bfbad3ad
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35027852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98ed3b7744341b35ce13b6456024adf53e6b4e3f9faf1ac31545b79b57c26427`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 01 May 2017 17:56:57 GMT
ENV DOCKER_VERSION=17.05.0-ce-rc2
# Mon, 01 May 2017 17:56:58 GMT
ENV DOCKER_SHA256_x86_64=fc2521a30797212410f46faece24204b9528990dac823c145b530c05acd50e9d
# Mon, 01 May 2017 17:56:58 GMT
ENV DOCKER_SHA256_armel=c4427822445e5f8c970ded1c106780a32641a7344c92a8dc57a9be4e0ea9cba0
# Mon, 01 May 2017 17:57:02 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Mon, 01 May 2017 17:57:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 01 May 2017 17:57:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 01 May 2017 17:57:04 GMT
CMD ["sh"]
# Mon, 01 May 2017 17:57:24 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 01 May 2017 17:57:26 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 01 May 2017 17:57:26 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 01 May 2017 17:57:28 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 01 May 2017 17:57:29 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 01 May 2017 17:57:30 GMT
VOLUME [/var/lib/docker]
# Mon, 01 May 2017 17:57:30 GMT
EXPOSE 2375/tcp
# Mon, 01 May 2017 17:57:31 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 01 May 2017 17:57:32 GMT
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
	-	`sha256:a14aeeb194eef384c4fb0730e6e25080a88956a0056da3fdae337acc9e2105d0`  
		Last Modified: Mon, 01 May 2017 17:58:23 GMT  
		Size: 28.8 MB (28784736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3fdf74f7db0f537d81a3722da6d71bfb62bdfb239e7cefd45252a613845ed47`  
		Last Modified: Mon, 01 May 2017 17:58:17 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8adac02f77d649022b439f50929be44cda354b029757977e55f394f867123354`  
		Last Modified: Mon, 01 May 2017 18:00:06 GMT  
		Size: 2.2 MB (2166042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548e27bbf75280e9d66c1b5d4e959132b65d462928dc2c9fc411abc86f1492aa`  
		Last Modified: Mon, 01 May 2017 18:00:06 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71724cb4ddaf0cffb13c394df901adabdd70e23c8bab99e7a6ce4841774a9ce4`  
		Last Modified: Mon, 01 May 2017 18:00:05 GMT  
		Size: 1.8 KB (1814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d36e2a65749805944765ba70baab19b37eeca54007a4b464e7a5b327bc7d64f8`  
		Last Modified: Mon, 01 May 2017 18:00:11 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05-rc-dind`

```console
$ docker pull docker@sha256:966a9cb46b2648c71263a631d2717ff83acf7a293641b033ed18ddc6bfbad3ad
```

-	Platforms:
	-	linux; amd64

### `docker:17.05-rc-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35027852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98ed3b7744341b35ce13b6456024adf53e6b4e3f9faf1ac31545b79b57c26427`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 01 May 2017 17:56:57 GMT
ENV DOCKER_VERSION=17.05.0-ce-rc2
# Mon, 01 May 2017 17:56:58 GMT
ENV DOCKER_SHA256_x86_64=fc2521a30797212410f46faece24204b9528990dac823c145b530c05acd50e9d
# Mon, 01 May 2017 17:56:58 GMT
ENV DOCKER_SHA256_armel=c4427822445e5f8c970ded1c106780a32641a7344c92a8dc57a9be4e0ea9cba0
# Mon, 01 May 2017 17:57:02 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Mon, 01 May 2017 17:57:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 01 May 2017 17:57:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 01 May 2017 17:57:04 GMT
CMD ["sh"]
# Mon, 01 May 2017 17:57:24 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 01 May 2017 17:57:26 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 01 May 2017 17:57:26 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 01 May 2017 17:57:28 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 01 May 2017 17:57:29 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 01 May 2017 17:57:30 GMT
VOLUME [/var/lib/docker]
# Mon, 01 May 2017 17:57:30 GMT
EXPOSE 2375/tcp
# Mon, 01 May 2017 17:57:31 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 01 May 2017 17:57:32 GMT
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
	-	`sha256:a14aeeb194eef384c4fb0730e6e25080a88956a0056da3fdae337acc9e2105d0`  
		Last Modified: Mon, 01 May 2017 17:58:23 GMT  
		Size: 28.8 MB (28784736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3fdf74f7db0f537d81a3722da6d71bfb62bdfb239e7cefd45252a613845ed47`  
		Last Modified: Mon, 01 May 2017 17:58:17 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8adac02f77d649022b439f50929be44cda354b029757977e55f394f867123354`  
		Last Modified: Mon, 01 May 2017 18:00:06 GMT  
		Size: 2.2 MB (2166042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548e27bbf75280e9d66c1b5d4e959132b65d462928dc2c9fc411abc86f1492aa`  
		Last Modified: Mon, 01 May 2017 18:00:06 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71724cb4ddaf0cffb13c394df901adabdd70e23c8bab99e7a6ce4841774a9ce4`  
		Last Modified: Mon, 01 May 2017 18:00:05 GMT  
		Size: 1.8 KB (1814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d36e2a65749805944765ba70baab19b37eeca54007a4b464e7a5b327bc7d64f8`  
		Last Modified: Mon, 01 May 2017 18:00:11 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-dind`

```console
$ docker pull docker@sha256:966a9cb46b2648c71263a631d2717ff83acf7a293641b033ed18ddc6bfbad3ad
```

-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35027852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98ed3b7744341b35ce13b6456024adf53e6b4e3f9faf1ac31545b79b57c26427`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 01 May 2017 17:56:57 GMT
ENV DOCKER_VERSION=17.05.0-ce-rc2
# Mon, 01 May 2017 17:56:58 GMT
ENV DOCKER_SHA256_x86_64=fc2521a30797212410f46faece24204b9528990dac823c145b530c05acd50e9d
# Mon, 01 May 2017 17:56:58 GMT
ENV DOCKER_SHA256_armel=c4427822445e5f8c970ded1c106780a32641a7344c92a8dc57a9be4e0ea9cba0
# Mon, 01 May 2017 17:57:02 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Mon, 01 May 2017 17:57:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 01 May 2017 17:57:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 01 May 2017 17:57:04 GMT
CMD ["sh"]
# Mon, 01 May 2017 17:57:24 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 01 May 2017 17:57:26 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 01 May 2017 17:57:26 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 01 May 2017 17:57:28 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 01 May 2017 17:57:29 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 01 May 2017 17:57:30 GMT
VOLUME [/var/lib/docker]
# Mon, 01 May 2017 17:57:30 GMT
EXPOSE 2375/tcp
# Mon, 01 May 2017 17:57:31 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 01 May 2017 17:57:32 GMT
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
	-	`sha256:a14aeeb194eef384c4fb0730e6e25080a88956a0056da3fdae337acc9e2105d0`  
		Last Modified: Mon, 01 May 2017 17:58:23 GMT  
		Size: 28.8 MB (28784736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3fdf74f7db0f537d81a3722da6d71bfb62bdfb239e7cefd45252a613845ed47`  
		Last Modified: Mon, 01 May 2017 17:58:17 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8adac02f77d649022b439f50929be44cda354b029757977e55f394f867123354`  
		Last Modified: Mon, 01 May 2017 18:00:06 GMT  
		Size: 2.2 MB (2166042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548e27bbf75280e9d66c1b5d4e959132b65d462928dc2c9fc411abc86f1492aa`  
		Last Modified: Mon, 01 May 2017 18:00:06 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71724cb4ddaf0cffb13c394df901adabdd70e23c8bab99e7a6ce4841774a9ce4`  
		Last Modified: Mon, 01 May 2017 18:00:05 GMT  
		Size: 1.8 KB (1814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d36e2a65749805944765ba70baab19b37eeca54007a4b464e7a5b327bc7d64f8`  
		Last Modified: Mon, 01 May 2017 18:00:11 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-ce-rc3-git`

**does not exist** (yet?)

## `docker:17.05.0-ce-git`

```console
$ docker pull docker@sha256:6384479734ee497134b0d82fe9ff72c3904fc58acf37e19d3fd8f28e689bb78f
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43580599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16c3c76a24c4eaa1eb8dc1e467873422b3b87f12a43d27691ec4a9a813db02a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 01 May 2017 17:56:57 GMT
ENV DOCKER_VERSION=17.05.0-ce-rc2
# Mon, 01 May 2017 17:56:58 GMT
ENV DOCKER_SHA256_x86_64=fc2521a30797212410f46faece24204b9528990dac823c145b530c05acd50e9d
# Mon, 01 May 2017 17:56:58 GMT
ENV DOCKER_SHA256_armel=c4427822445e5f8c970ded1c106780a32641a7344c92a8dc57a9be4e0ea9cba0
# Mon, 01 May 2017 17:57:02 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Mon, 01 May 2017 17:57:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 01 May 2017 17:57:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 01 May 2017 17:57:04 GMT
CMD ["sh"]
# Mon, 01 May 2017 17:57:52 GMT
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
	-	`sha256:a14aeeb194eef384c4fb0730e6e25080a88956a0056da3fdae337acc9e2105d0`  
		Last Modified: Mon, 01 May 2017 17:58:23 GMT  
		Size: 28.8 MB (28784736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3fdf74f7db0f537d81a3722da6d71bfb62bdfb239e7cefd45252a613845ed47`  
		Last Modified: Mon, 01 May 2017 17:58:17 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec5b15bfe2094c32a8608f8e81f5e39754bf08720b7f9304afea975c60f10bf`  
		Last Modified: Mon, 01 May 2017 18:01:52 GMT  
		Size: 10.7 MB (10722391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-git`

```console
$ docker pull docker@sha256:6384479734ee497134b0d82fe9ff72c3904fc58acf37e19d3fd8f28e689bb78f
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43580599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16c3c76a24c4eaa1eb8dc1e467873422b3b87f12a43d27691ec4a9a813db02a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 01 May 2017 17:56:57 GMT
ENV DOCKER_VERSION=17.05.0-ce-rc2
# Mon, 01 May 2017 17:56:58 GMT
ENV DOCKER_SHA256_x86_64=fc2521a30797212410f46faece24204b9528990dac823c145b530c05acd50e9d
# Mon, 01 May 2017 17:56:58 GMT
ENV DOCKER_SHA256_armel=c4427822445e5f8c970ded1c106780a32641a7344c92a8dc57a9be4e0ea9cba0
# Mon, 01 May 2017 17:57:02 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Mon, 01 May 2017 17:57:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 01 May 2017 17:57:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 01 May 2017 17:57:04 GMT
CMD ["sh"]
# Mon, 01 May 2017 17:57:52 GMT
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
	-	`sha256:a14aeeb194eef384c4fb0730e6e25080a88956a0056da3fdae337acc9e2105d0`  
		Last Modified: Mon, 01 May 2017 17:58:23 GMT  
		Size: 28.8 MB (28784736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3fdf74f7db0f537d81a3722da6d71bfb62bdfb239e7cefd45252a613845ed47`  
		Last Modified: Mon, 01 May 2017 17:58:17 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec5b15bfe2094c32a8608f8e81f5e39754bf08720b7f9304afea975c60f10bf`  
		Last Modified: Mon, 01 May 2017 18:01:52 GMT  
		Size: 10.7 MB (10722391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05-rc-git`

```console
$ docker pull docker@sha256:6384479734ee497134b0d82fe9ff72c3904fc58acf37e19d3fd8f28e689bb78f
```

-	Platforms:
	-	linux; amd64

### `docker:17.05-rc-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43580599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16c3c76a24c4eaa1eb8dc1e467873422b3b87f12a43d27691ec4a9a813db02a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 01 May 2017 17:56:57 GMT
ENV DOCKER_VERSION=17.05.0-ce-rc2
# Mon, 01 May 2017 17:56:58 GMT
ENV DOCKER_SHA256_x86_64=fc2521a30797212410f46faece24204b9528990dac823c145b530c05acd50e9d
# Mon, 01 May 2017 17:56:58 GMT
ENV DOCKER_SHA256_armel=c4427822445e5f8c970ded1c106780a32641a7344c92a8dc57a9be4e0ea9cba0
# Mon, 01 May 2017 17:57:02 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Mon, 01 May 2017 17:57:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 01 May 2017 17:57:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 01 May 2017 17:57:04 GMT
CMD ["sh"]
# Mon, 01 May 2017 17:57:52 GMT
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
	-	`sha256:a14aeeb194eef384c4fb0730e6e25080a88956a0056da3fdae337acc9e2105d0`  
		Last Modified: Mon, 01 May 2017 17:58:23 GMT  
		Size: 28.8 MB (28784736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3fdf74f7db0f537d81a3722da6d71bfb62bdfb239e7cefd45252a613845ed47`  
		Last Modified: Mon, 01 May 2017 17:58:17 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec5b15bfe2094c32a8608f8e81f5e39754bf08720b7f9304afea975c60f10bf`  
		Last Modified: Mon, 01 May 2017 18:01:52 GMT  
		Size: 10.7 MB (10722391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-git`

```console
$ docker pull docker@sha256:6384479734ee497134b0d82fe9ff72c3904fc58acf37e19d3fd8f28e689bb78f
```

-	Platforms:
	-	linux; amd64

### `docker:rc-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43580599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16c3c76a24c4eaa1eb8dc1e467873422b3b87f12a43d27691ec4a9a813db02a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 01 May 2017 17:56:57 GMT
ENV DOCKER_VERSION=17.05.0-ce-rc2
# Mon, 01 May 2017 17:56:58 GMT
ENV DOCKER_SHA256_x86_64=fc2521a30797212410f46faece24204b9528990dac823c145b530c05acd50e9d
# Mon, 01 May 2017 17:56:58 GMT
ENV DOCKER_SHA256_armel=c4427822445e5f8c970ded1c106780a32641a7344c92a8dc57a9be4e0ea9cba0
# Mon, 01 May 2017 17:57:02 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Mon, 01 May 2017 17:57:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 01 May 2017 17:57:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 01 May 2017 17:57:04 GMT
CMD ["sh"]
# Mon, 01 May 2017 17:57:52 GMT
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
	-	`sha256:a14aeeb194eef384c4fb0730e6e25080a88956a0056da3fdae337acc9e2105d0`  
		Last Modified: Mon, 01 May 2017 17:58:23 GMT  
		Size: 28.8 MB (28784736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3fdf74f7db0f537d81a3722da6d71bfb62bdfb239e7cefd45252a613845ed47`  
		Last Modified: Mon, 01 May 2017 17:58:17 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec5b15bfe2094c32a8608f8e81f5e39754bf08720b7f9304afea975c60f10bf`  
		Last Modified: Mon, 01 May 2017 18:01:52 GMT  
		Size: 10.7 MB (10722391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.04.0-ce`

```console
$ docker pull docker@sha256:d22f19807acf09f2c9e6ee0452aecd34f6ec8081b0d4a8b86d51131b231883a4
```

-	Platforms:
	-	linux; amd64

### `docker:17.04.0-ce` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30842976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:774c3d99c5d5742167cf72c03cb933643b6f27803e50d185c6ff6abb94036a4f`
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
# Wed, 26 Apr 2017 19:33:14 GMT
ENV DOCKER_SHA256_x86_64=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Wed, 26 Apr 2017 19:33:15 GMT
ENV DOCKER_SHA256_armel=9b7df7dc02f620748657d3f599a9701c35f7b0b3d0acbc7fd324126ba5f6c4e9
# Wed, 26 Apr 2017 19:33:19 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:33:20 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:33:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:33:21 GMT
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
	-	`sha256:bd930174e3cac4f258d72dad96b9dcf31634e16722082968659a89ff679bf65c`  
		Last Modified: Wed, 26 Apr 2017 19:42:11 GMT  
		Size: 26.8 MB (26769504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b655df83ee711a0a8f8dc131795180e1a295441874c28f4c3cb779b06f3145`  
		Last Modified: Wed, 26 Apr 2017 19:42:06 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.04.0`

```console
$ docker pull docker@sha256:d22f19807acf09f2c9e6ee0452aecd34f6ec8081b0d4a8b86d51131b231883a4
```

-	Platforms:
	-	linux; amd64

### `docker:17.04.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30842976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:774c3d99c5d5742167cf72c03cb933643b6f27803e50d185c6ff6abb94036a4f`
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
# Wed, 26 Apr 2017 19:33:14 GMT
ENV DOCKER_SHA256_x86_64=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Wed, 26 Apr 2017 19:33:15 GMT
ENV DOCKER_SHA256_armel=9b7df7dc02f620748657d3f599a9701c35f7b0b3d0acbc7fd324126ba5f6c4e9
# Wed, 26 Apr 2017 19:33:19 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:33:20 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:33:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:33:21 GMT
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
	-	`sha256:bd930174e3cac4f258d72dad96b9dcf31634e16722082968659a89ff679bf65c`  
		Last Modified: Wed, 26 Apr 2017 19:42:11 GMT  
		Size: 26.8 MB (26769504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b655df83ee711a0a8f8dc131795180e1a295441874c28f4c3cb779b06f3145`  
		Last Modified: Wed, 26 Apr 2017 19:42:06 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.04`

```console
$ docker pull docker@sha256:d22f19807acf09f2c9e6ee0452aecd34f6ec8081b0d4a8b86d51131b231883a4
```

-	Platforms:
	-	linux; amd64

### `docker:17.04` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30842976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:774c3d99c5d5742167cf72c03cb933643b6f27803e50d185c6ff6abb94036a4f`
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
# Wed, 26 Apr 2017 19:33:14 GMT
ENV DOCKER_SHA256_x86_64=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Wed, 26 Apr 2017 19:33:15 GMT
ENV DOCKER_SHA256_armel=9b7df7dc02f620748657d3f599a9701c35f7b0b3d0acbc7fd324126ba5f6c4e9
# Wed, 26 Apr 2017 19:33:19 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:33:20 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:33:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:33:21 GMT
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
	-	`sha256:bd930174e3cac4f258d72dad96b9dcf31634e16722082968659a89ff679bf65c`  
		Last Modified: Wed, 26 Apr 2017 19:42:11 GMT  
		Size: 26.8 MB (26769504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b655df83ee711a0a8f8dc131795180e1a295441874c28f4c3cb779b06f3145`  
		Last Modified: Wed, 26 Apr 2017 19:42:06 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17`

```console
$ docker pull docker@sha256:d22f19807acf09f2c9e6ee0452aecd34f6ec8081b0d4a8b86d51131b231883a4
```

-	Platforms:
	-	linux; amd64

### `docker:17` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30842976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:774c3d99c5d5742167cf72c03cb933643b6f27803e50d185c6ff6abb94036a4f`
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
# Wed, 26 Apr 2017 19:33:14 GMT
ENV DOCKER_SHA256_x86_64=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Wed, 26 Apr 2017 19:33:15 GMT
ENV DOCKER_SHA256_armel=9b7df7dc02f620748657d3f599a9701c35f7b0b3d0acbc7fd324126ba5f6c4e9
# Wed, 26 Apr 2017 19:33:19 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:33:20 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:33:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:33:21 GMT
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
	-	`sha256:bd930174e3cac4f258d72dad96b9dcf31634e16722082968659a89ff679bf65c`  
		Last Modified: Wed, 26 Apr 2017 19:42:11 GMT  
		Size: 26.8 MB (26769504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b655df83ee711a0a8f8dc131795180e1a295441874c28f4c3cb779b06f3145`  
		Last Modified: Wed, 26 Apr 2017 19:42:06 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:d22f19807acf09f2c9e6ee0452aecd34f6ec8081b0d4a8b86d51131b231883a4
```

-	Platforms:
	-	linux; amd64

### `docker:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30842976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:774c3d99c5d5742167cf72c03cb933643b6f27803e50d185c6ff6abb94036a4f`
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
# Wed, 26 Apr 2017 19:33:14 GMT
ENV DOCKER_SHA256_x86_64=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Wed, 26 Apr 2017 19:33:15 GMT
ENV DOCKER_SHA256_armel=9b7df7dc02f620748657d3f599a9701c35f7b0b3d0acbc7fd324126ba5f6c4e9
# Wed, 26 Apr 2017 19:33:19 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:33:20 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:33:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:33:21 GMT
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
	-	`sha256:bd930174e3cac4f258d72dad96b9dcf31634e16722082968659a89ff679bf65c`  
		Last Modified: Wed, 26 Apr 2017 19:42:11 GMT  
		Size: 26.8 MB (26769504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b655df83ee711a0a8f8dc131795180e1a295441874c28f4c3cb779b06f3145`  
		Last Modified: Wed, 26 Apr 2017 19:42:06 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge`

```console
$ docker pull docker@sha256:d22f19807acf09f2c9e6ee0452aecd34f6ec8081b0d4a8b86d51131b231883a4
```

-	Platforms:
	-	linux; amd64

### `docker:edge` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30842976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:774c3d99c5d5742167cf72c03cb933643b6f27803e50d185c6ff6abb94036a4f`
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
# Wed, 26 Apr 2017 19:33:14 GMT
ENV DOCKER_SHA256_x86_64=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Wed, 26 Apr 2017 19:33:15 GMT
ENV DOCKER_SHA256_armel=9b7df7dc02f620748657d3f599a9701c35f7b0b3d0acbc7fd324126ba5f6c4e9
# Wed, 26 Apr 2017 19:33:19 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:33:20 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:33:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:33:21 GMT
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
	-	`sha256:bd930174e3cac4f258d72dad96b9dcf31634e16722082968659a89ff679bf65c`  
		Last Modified: Wed, 26 Apr 2017 19:42:11 GMT  
		Size: 26.8 MB (26769504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b655df83ee711a0a8f8dc131795180e1a295441874c28f4c3cb779b06f3145`  
		Last Modified: Wed, 26 Apr 2017 19:42:06 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.04.0-ce-dind`

```console
$ docker pull docker@sha256:6f4a1fed3473a3f95e04fd7ff88fb9b26b191a462125a5b700a82039fe97c467
```

-	Platforms:
	-	linux; amd64

### `docker:17.04.0-ce-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33012610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:655b73a35438f0fd5c69c769279c068395068add252d63b7b81c3e8e93dbaa40`
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
# Wed, 26 Apr 2017 19:33:14 GMT
ENV DOCKER_SHA256_x86_64=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Wed, 26 Apr 2017 19:33:15 GMT
ENV DOCKER_SHA256_armel=9b7df7dc02f620748657d3f599a9701c35f7b0b3d0acbc7fd324126ba5f6c4e9
# Wed, 26 Apr 2017 19:33:19 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:33:20 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:33:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:33:21 GMT
CMD ["sh"]
# Wed, 26 Apr 2017 19:33:42 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 26 Apr 2017 19:33:44 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 26 Apr 2017 19:33:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 26 Apr 2017 19:33:46 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 26 Apr 2017 19:33:47 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:33:47 GMT
VOLUME [/var/lib/docker]
# Wed, 26 Apr 2017 19:33:48 GMT
EXPOSE 2375/tcp
# Wed, 26 Apr 2017 19:33:49 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 26 Apr 2017 19:33:50 GMT
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
	-	`sha256:bd930174e3cac4f258d72dad96b9dcf31634e16722082968659a89ff679bf65c`  
		Last Modified: Wed, 26 Apr 2017 19:42:11 GMT  
		Size: 26.8 MB (26769504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b655df83ee711a0a8f8dc131795180e1a295441874c28f4c3cb779b06f3145`  
		Last Modified: Wed, 26 Apr 2017 19:42:06 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2c3bf57216b50ec81507733281c7743942a377bbbd923b007128b177e6f02ee`  
		Last Modified: Wed, 26 Apr 2017 19:44:30 GMT  
		Size: 2.2 MB (2166035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6cbf73d7b12081d6b8816138b142ce9c40cd9d4d847cf0b12668aca52eeabb`  
		Last Modified: Wed, 26 Apr 2017 19:44:30 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8815fbb789e8da4dca0d282758f0ce8b920b4c1a43596381a0bb034466c55b7e`  
		Last Modified: Wed, 26 Apr 2017 19:44:29 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa5046f8a931bc142b1bdb29e9a320927707276a77366c650d1b33024716b3ab`  
		Last Modified: Wed, 26 Apr 2017 19:44:30 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.04.0-dind`

```console
$ docker pull docker@sha256:6f4a1fed3473a3f95e04fd7ff88fb9b26b191a462125a5b700a82039fe97c467
```

-	Platforms:
	-	linux; amd64

### `docker:17.04.0-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33012610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:655b73a35438f0fd5c69c769279c068395068add252d63b7b81c3e8e93dbaa40`
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
# Wed, 26 Apr 2017 19:33:14 GMT
ENV DOCKER_SHA256_x86_64=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Wed, 26 Apr 2017 19:33:15 GMT
ENV DOCKER_SHA256_armel=9b7df7dc02f620748657d3f599a9701c35f7b0b3d0acbc7fd324126ba5f6c4e9
# Wed, 26 Apr 2017 19:33:19 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:33:20 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:33:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:33:21 GMT
CMD ["sh"]
# Wed, 26 Apr 2017 19:33:42 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 26 Apr 2017 19:33:44 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 26 Apr 2017 19:33:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 26 Apr 2017 19:33:46 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 26 Apr 2017 19:33:47 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:33:47 GMT
VOLUME [/var/lib/docker]
# Wed, 26 Apr 2017 19:33:48 GMT
EXPOSE 2375/tcp
# Wed, 26 Apr 2017 19:33:49 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 26 Apr 2017 19:33:50 GMT
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
	-	`sha256:bd930174e3cac4f258d72dad96b9dcf31634e16722082968659a89ff679bf65c`  
		Last Modified: Wed, 26 Apr 2017 19:42:11 GMT  
		Size: 26.8 MB (26769504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b655df83ee711a0a8f8dc131795180e1a295441874c28f4c3cb779b06f3145`  
		Last Modified: Wed, 26 Apr 2017 19:42:06 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2c3bf57216b50ec81507733281c7743942a377bbbd923b007128b177e6f02ee`  
		Last Modified: Wed, 26 Apr 2017 19:44:30 GMT  
		Size: 2.2 MB (2166035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6cbf73d7b12081d6b8816138b142ce9c40cd9d4d847cf0b12668aca52eeabb`  
		Last Modified: Wed, 26 Apr 2017 19:44:30 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8815fbb789e8da4dca0d282758f0ce8b920b4c1a43596381a0bb034466c55b7e`  
		Last Modified: Wed, 26 Apr 2017 19:44:29 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa5046f8a931bc142b1bdb29e9a320927707276a77366c650d1b33024716b3ab`  
		Last Modified: Wed, 26 Apr 2017 19:44:30 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.04-dind`

```console
$ docker pull docker@sha256:6f4a1fed3473a3f95e04fd7ff88fb9b26b191a462125a5b700a82039fe97c467
```

-	Platforms:
	-	linux; amd64

### `docker:17.04-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33012610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:655b73a35438f0fd5c69c769279c068395068add252d63b7b81c3e8e93dbaa40`
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
# Wed, 26 Apr 2017 19:33:14 GMT
ENV DOCKER_SHA256_x86_64=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Wed, 26 Apr 2017 19:33:15 GMT
ENV DOCKER_SHA256_armel=9b7df7dc02f620748657d3f599a9701c35f7b0b3d0acbc7fd324126ba5f6c4e9
# Wed, 26 Apr 2017 19:33:19 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:33:20 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:33:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:33:21 GMT
CMD ["sh"]
# Wed, 26 Apr 2017 19:33:42 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 26 Apr 2017 19:33:44 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 26 Apr 2017 19:33:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 26 Apr 2017 19:33:46 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 26 Apr 2017 19:33:47 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:33:47 GMT
VOLUME [/var/lib/docker]
# Wed, 26 Apr 2017 19:33:48 GMT
EXPOSE 2375/tcp
# Wed, 26 Apr 2017 19:33:49 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 26 Apr 2017 19:33:50 GMT
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
	-	`sha256:bd930174e3cac4f258d72dad96b9dcf31634e16722082968659a89ff679bf65c`  
		Last Modified: Wed, 26 Apr 2017 19:42:11 GMT  
		Size: 26.8 MB (26769504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b655df83ee711a0a8f8dc131795180e1a295441874c28f4c3cb779b06f3145`  
		Last Modified: Wed, 26 Apr 2017 19:42:06 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2c3bf57216b50ec81507733281c7743942a377bbbd923b007128b177e6f02ee`  
		Last Modified: Wed, 26 Apr 2017 19:44:30 GMT  
		Size: 2.2 MB (2166035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6cbf73d7b12081d6b8816138b142ce9c40cd9d4d847cf0b12668aca52eeabb`  
		Last Modified: Wed, 26 Apr 2017 19:44:30 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8815fbb789e8da4dca0d282758f0ce8b920b4c1a43596381a0bb034466c55b7e`  
		Last Modified: Wed, 26 Apr 2017 19:44:29 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa5046f8a931bc142b1bdb29e9a320927707276a77366c650d1b33024716b3ab`  
		Last Modified: Wed, 26 Apr 2017 19:44:30 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-dind`

```console
$ docker pull docker@sha256:6f4a1fed3473a3f95e04fd7ff88fb9b26b191a462125a5b700a82039fe97c467
```

-	Platforms:
	-	linux; amd64

### `docker:17-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33012610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:655b73a35438f0fd5c69c769279c068395068add252d63b7b81c3e8e93dbaa40`
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
# Wed, 26 Apr 2017 19:33:14 GMT
ENV DOCKER_SHA256_x86_64=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Wed, 26 Apr 2017 19:33:15 GMT
ENV DOCKER_SHA256_armel=9b7df7dc02f620748657d3f599a9701c35f7b0b3d0acbc7fd324126ba5f6c4e9
# Wed, 26 Apr 2017 19:33:19 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:33:20 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:33:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:33:21 GMT
CMD ["sh"]
# Wed, 26 Apr 2017 19:33:42 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 26 Apr 2017 19:33:44 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 26 Apr 2017 19:33:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 26 Apr 2017 19:33:46 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 26 Apr 2017 19:33:47 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:33:47 GMT
VOLUME [/var/lib/docker]
# Wed, 26 Apr 2017 19:33:48 GMT
EXPOSE 2375/tcp
# Wed, 26 Apr 2017 19:33:49 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 26 Apr 2017 19:33:50 GMT
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
	-	`sha256:bd930174e3cac4f258d72dad96b9dcf31634e16722082968659a89ff679bf65c`  
		Last Modified: Wed, 26 Apr 2017 19:42:11 GMT  
		Size: 26.8 MB (26769504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b655df83ee711a0a8f8dc131795180e1a295441874c28f4c3cb779b06f3145`  
		Last Modified: Wed, 26 Apr 2017 19:42:06 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2c3bf57216b50ec81507733281c7743942a377bbbd923b007128b177e6f02ee`  
		Last Modified: Wed, 26 Apr 2017 19:44:30 GMT  
		Size: 2.2 MB (2166035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6cbf73d7b12081d6b8816138b142ce9c40cd9d4d847cf0b12668aca52eeabb`  
		Last Modified: Wed, 26 Apr 2017 19:44:30 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8815fbb789e8da4dca0d282758f0ce8b920b4c1a43596381a0bb034466c55b7e`  
		Last Modified: Wed, 26 Apr 2017 19:44:29 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa5046f8a931bc142b1bdb29e9a320927707276a77366c650d1b33024716b3ab`  
		Last Modified: Wed, 26 Apr 2017 19:44:30 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:6f4a1fed3473a3f95e04fd7ff88fb9b26b191a462125a5b700a82039fe97c467
```

-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33012610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:655b73a35438f0fd5c69c769279c068395068add252d63b7b81c3e8e93dbaa40`
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
# Wed, 26 Apr 2017 19:33:14 GMT
ENV DOCKER_SHA256_x86_64=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Wed, 26 Apr 2017 19:33:15 GMT
ENV DOCKER_SHA256_armel=9b7df7dc02f620748657d3f599a9701c35f7b0b3d0acbc7fd324126ba5f6c4e9
# Wed, 26 Apr 2017 19:33:19 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:33:20 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:33:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:33:21 GMT
CMD ["sh"]
# Wed, 26 Apr 2017 19:33:42 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 26 Apr 2017 19:33:44 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 26 Apr 2017 19:33:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 26 Apr 2017 19:33:46 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 26 Apr 2017 19:33:47 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:33:47 GMT
VOLUME [/var/lib/docker]
# Wed, 26 Apr 2017 19:33:48 GMT
EXPOSE 2375/tcp
# Wed, 26 Apr 2017 19:33:49 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 26 Apr 2017 19:33:50 GMT
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
	-	`sha256:bd930174e3cac4f258d72dad96b9dcf31634e16722082968659a89ff679bf65c`  
		Last Modified: Wed, 26 Apr 2017 19:42:11 GMT  
		Size: 26.8 MB (26769504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b655df83ee711a0a8f8dc131795180e1a295441874c28f4c3cb779b06f3145`  
		Last Modified: Wed, 26 Apr 2017 19:42:06 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2c3bf57216b50ec81507733281c7743942a377bbbd923b007128b177e6f02ee`  
		Last Modified: Wed, 26 Apr 2017 19:44:30 GMT  
		Size: 2.2 MB (2166035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6cbf73d7b12081d6b8816138b142ce9c40cd9d4d847cf0b12668aca52eeabb`  
		Last Modified: Wed, 26 Apr 2017 19:44:30 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8815fbb789e8da4dca0d282758f0ce8b920b4c1a43596381a0bb034466c55b7e`  
		Last Modified: Wed, 26 Apr 2017 19:44:29 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa5046f8a931bc142b1bdb29e9a320927707276a77366c650d1b33024716b3ab`  
		Last Modified: Wed, 26 Apr 2017 19:44:30 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-dind`

```console
$ docker pull docker@sha256:6f4a1fed3473a3f95e04fd7ff88fb9b26b191a462125a5b700a82039fe97c467
```

-	Platforms:
	-	linux; amd64

### `docker:edge-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33012610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:655b73a35438f0fd5c69c769279c068395068add252d63b7b81c3e8e93dbaa40`
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
# Wed, 26 Apr 2017 19:33:14 GMT
ENV DOCKER_SHA256_x86_64=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Wed, 26 Apr 2017 19:33:15 GMT
ENV DOCKER_SHA256_armel=9b7df7dc02f620748657d3f599a9701c35f7b0b3d0acbc7fd324126ba5f6c4e9
# Wed, 26 Apr 2017 19:33:19 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:33:20 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:33:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:33:21 GMT
CMD ["sh"]
# Wed, 26 Apr 2017 19:33:42 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 26 Apr 2017 19:33:44 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 26 Apr 2017 19:33:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 26 Apr 2017 19:33:46 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 26 Apr 2017 19:33:47 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:33:47 GMT
VOLUME [/var/lib/docker]
# Wed, 26 Apr 2017 19:33:48 GMT
EXPOSE 2375/tcp
# Wed, 26 Apr 2017 19:33:49 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 26 Apr 2017 19:33:50 GMT
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
	-	`sha256:bd930174e3cac4f258d72dad96b9dcf31634e16722082968659a89ff679bf65c`  
		Last Modified: Wed, 26 Apr 2017 19:42:11 GMT  
		Size: 26.8 MB (26769504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b655df83ee711a0a8f8dc131795180e1a295441874c28f4c3cb779b06f3145`  
		Last Modified: Wed, 26 Apr 2017 19:42:06 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2c3bf57216b50ec81507733281c7743942a377bbbd923b007128b177e6f02ee`  
		Last Modified: Wed, 26 Apr 2017 19:44:30 GMT  
		Size: 2.2 MB (2166035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6cbf73d7b12081d6b8816138b142ce9c40cd9d4d847cf0b12668aca52eeabb`  
		Last Modified: Wed, 26 Apr 2017 19:44:30 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8815fbb789e8da4dca0d282758f0ce8b920b4c1a43596381a0bb034466c55b7e`  
		Last Modified: Wed, 26 Apr 2017 19:44:29 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa5046f8a931bc142b1bdb29e9a320927707276a77366c650d1b33024716b3ab`  
		Last Modified: Wed, 26 Apr 2017 19:44:30 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.04.0-ce-git`

```console
$ docker pull docker@sha256:270fa3ee98465beaeb1107d537a6b44937d6f4673f10d9cf88f5a3178ff52dd2
```

-	Platforms:
	-	linux; amd64

### `docker:17.04.0-ce-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41565363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fb7ae00fce6442d1f6debba68b590c67741234af73328668ff5019d2e9472ec`
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
# Wed, 26 Apr 2017 19:33:14 GMT
ENV DOCKER_SHA256_x86_64=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Wed, 26 Apr 2017 19:33:15 GMT
ENV DOCKER_SHA256_armel=9b7df7dc02f620748657d3f599a9701c35f7b0b3d0acbc7fd324126ba5f6c4e9
# Wed, 26 Apr 2017 19:33:19 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:33:20 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:33:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:33:21 GMT
CMD ["sh"]
# Wed, 26 Apr 2017 19:34:11 GMT
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
	-	`sha256:bd930174e3cac4f258d72dad96b9dcf31634e16722082968659a89ff679bf65c`  
		Last Modified: Wed, 26 Apr 2017 19:42:11 GMT  
		Size: 26.8 MB (26769504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b655df83ee711a0a8f8dc131795180e1a295441874c28f4c3cb779b06f3145`  
		Last Modified: Wed, 26 Apr 2017 19:42:06 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b707e4ab6c177a0e6dc2428ff3bce0991998170b35cc4b0265bb10605ea0dd31`  
		Last Modified: Wed, 26 Apr 2017 19:46:49 GMT  
		Size: 10.7 MB (10722387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.04.0-git`

```console
$ docker pull docker@sha256:270fa3ee98465beaeb1107d537a6b44937d6f4673f10d9cf88f5a3178ff52dd2
```

-	Platforms:
	-	linux; amd64

### `docker:17.04.0-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41565363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fb7ae00fce6442d1f6debba68b590c67741234af73328668ff5019d2e9472ec`
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
# Wed, 26 Apr 2017 19:33:14 GMT
ENV DOCKER_SHA256_x86_64=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Wed, 26 Apr 2017 19:33:15 GMT
ENV DOCKER_SHA256_armel=9b7df7dc02f620748657d3f599a9701c35f7b0b3d0acbc7fd324126ba5f6c4e9
# Wed, 26 Apr 2017 19:33:19 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:33:20 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:33:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:33:21 GMT
CMD ["sh"]
# Wed, 26 Apr 2017 19:34:11 GMT
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
	-	`sha256:bd930174e3cac4f258d72dad96b9dcf31634e16722082968659a89ff679bf65c`  
		Last Modified: Wed, 26 Apr 2017 19:42:11 GMT  
		Size: 26.8 MB (26769504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b655df83ee711a0a8f8dc131795180e1a295441874c28f4c3cb779b06f3145`  
		Last Modified: Wed, 26 Apr 2017 19:42:06 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b707e4ab6c177a0e6dc2428ff3bce0991998170b35cc4b0265bb10605ea0dd31`  
		Last Modified: Wed, 26 Apr 2017 19:46:49 GMT  
		Size: 10.7 MB (10722387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.04-git`

```console
$ docker pull docker@sha256:270fa3ee98465beaeb1107d537a6b44937d6f4673f10d9cf88f5a3178ff52dd2
```

-	Platforms:
	-	linux; amd64

### `docker:17.04-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41565363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fb7ae00fce6442d1f6debba68b590c67741234af73328668ff5019d2e9472ec`
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
# Wed, 26 Apr 2017 19:33:14 GMT
ENV DOCKER_SHA256_x86_64=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Wed, 26 Apr 2017 19:33:15 GMT
ENV DOCKER_SHA256_armel=9b7df7dc02f620748657d3f599a9701c35f7b0b3d0acbc7fd324126ba5f6c4e9
# Wed, 26 Apr 2017 19:33:19 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:33:20 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:33:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:33:21 GMT
CMD ["sh"]
# Wed, 26 Apr 2017 19:34:11 GMT
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
	-	`sha256:bd930174e3cac4f258d72dad96b9dcf31634e16722082968659a89ff679bf65c`  
		Last Modified: Wed, 26 Apr 2017 19:42:11 GMT  
		Size: 26.8 MB (26769504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b655df83ee711a0a8f8dc131795180e1a295441874c28f4c3cb779b06f3145`  
		Last Modified: Wed, 26 Apr 2017 19:42:06 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b707e4ab6c177a0e6dc2428ff3bce0991998170b35cc4b0265bb10605ea0dd31`  
		Last Modified: Wed, 26 Apr 2017 19:46:49 GMT  
		Size: 10.7 MB (10722387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-git`

```console
$ docker pull docker@sha256:270fa3ee98465beaeb1107d537a6b44937d6f4673f10d9cf88f5a3178ff52dd2
```

-	Platforms:
	-	linux; amd64

### `docker:17-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41565363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fb7ae00fce6442d1f6debba68b590c67741234af73328668ff5019d2e9472ec`
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
# Wed, 26 Apr 2017 19:33:14 GMT
ENV DOCKER_SHA256_x86_64=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Wed, 26 Apr 2017 19:33:15 GMT
ENV DOCKER_SHA256_armel=9b7df7dc02f620748657d3f599a9701c35f7b0b3d0acbc7fd324126ba5f6c4e9
# Wed, 26 Apr 2017 19:33:19 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:33:20 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:33:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:33:21 GMT
CMD ["sh"]
# Wed, 26 Apr 2017 19:34:11 GMT
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
	-	`sha256:bd930174e3cac4f258d72dad96b9dcf31634e16722082968659a89ff679bf65c`  
		Last Modified: Wed, 26 Apr 2017 19:42:11 GMT  
		Size: 26.8 MB (26769504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b655df83ee711a0a8f8dc131795180e1a295441874c28f4c3cb779b06f3145`  
		Last Modified: Wed, 26 Apr 2017 19:42:06 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b707e4ab6c177a0e6dc2428ff3bce0991998170b35cc4b0265bb10605ea0dd31`  
		Last Modified: Wed, 26 Apr 2017 19:46:49 GMT  
		Size: 10.7 MB (10722387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:270fa3ee98465beaeb1107d537a6b44937d6f4673f10d9cf88f5a3178ff52dd2
```

-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41565363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fb7ae00fce6442d1f6debba68b590c67741234af73328668ff5019d2e9472ec`
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
# Wed, 26 Apr 2017 19:33:14 GMT
ENV DOCKER_SHA256_x86_64=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Wed, 26 Apr 2017 19:33:15 GMT
ENV DOCKER_SHA256_armel=9b7df7dc02f620748657d3f599a9701c35f7b0b3d0acbc7fd324126ba5f6c4e9
# Wed, 26 Apr 2017 19:33:19 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:33:20 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:33:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:33:21 GMT
CMD ["sh"]
# Wed, 26 Apr 2017 19:34:11 GMT
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
	-	`sha256:bd930174e3cac4f258d72dad96b9dcf31634e16722082968659a89ff679bf65c`  
		Last Modified: Wed, 26 Apr 2017 19:42:11 GMT  
		Size: 26.8 MB (26769504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b655df83ee711a0a8f8dc131795180e1a295441874c28f4c3cb779b06f3145`  
		Last Modified: Wed, 26 Apr 2017 19:42:06 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b707e4ab6c177a0e6dc2428ff3bce0991998170b35cc4b0265bb10605ea0dd31`  
		Last Modified: Wed, 26 Apr 2017 19:46:49 GMT  
		Size: 10.7 MB (10722387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-git`

```console
$ docker pull docker@sha256:270fa3ee98465beaeb1107d537a6b44937d6f4673f10d9cf88f5a3178ff52dd2
```

-	Platforms:
	-	linux; amd64

### `docker:edge-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41565363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fb7ae00fce6442d1f6debba68b590c67741234af73328668ff5019d2e9472ec`
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
# Wed, 26 Apr 2017 19:33:14 GMT
ENV DOCKER_SHA256_x86_64=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Wed, 26 Apr 2017 19:33:15 GMT
ENV DOCKER_SHA256_armel=9b7df7dc02f620748657d3f599a9701c35f7b0b3d0acbc7fd324126ba5f6c4e9
# Wed, 26 Apr 2017 19:33:19 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:33:20 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:33:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:33:21 GMT
CMD ["sh"]
# Wed, 26 Apr 2017 19:34:11 GMT
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
	-	`sha256:bd930174e3cac4f258d72dad96b9dcf31634e16722082968659a89ff679bf65c`  
		Last Modified: Wed, 26 Apr 2017 19:42:11 GMT  
		Size: 26.8 MB (26769504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b655df83ee711a0a8f8dc131795180e1a295441874c28f4c3cb779b06f3145`  
		Last Modified: Wed, 26 Apr 2017 19:42:06 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b707e4ab6c177a0e6dc2428ff3bce0991998170b35cc4b0265bb10605ea0dd31`  
		Last Modified: Wed, 26 Apr 2017 19:46:49 GMT  
		Size: 10.7 MB (10722387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-ce`

```console
$ docker pull docker@sha256:d5e6d86ec751d6cfdc8c3b6640ea39759a60fea650c4480779cde0bad0229819
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-ce` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32209753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dd1e3ca49b767c5d66ce6209a99053adb8ae76119cba3f00a541cc4769f3581`
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
# Wed, 26 Apr 2017 19:34:46 GMT
ENV DOCKER_SHA256_x86_64=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Wed, 26 Apr 2017 19:34:47 GMT
ENV DOCKER_SHA256_armel=f05c733c22915b0c26d8b0390b26a026b33aaf7593d15475a6f86e1bbe1ddbe2
# Wed, 26 Apr 2017 19:34:52 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:34:53 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:34:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:34:54 GMT
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
	-	`sha256:73dd265956cf80955031aaaa42dc482d13efe34ed4940e8e36cee90b00810912`  
		Last Modified: Wed, 26 Apr 2017 19:49:10 GMT  
		Size: 28.1 MB (28136282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef34c0a32faf81289165e54368dcd5e4d5cda8c575bc0c59d8cdf0e5097869d`  
		Last Modified: Wed, 26 Apr 2017 19:49:04 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1`

```console
$ docker pull docker@sha256:d5e6d86ec751d6cfdc8c3b6640ea39759a60fea650c4480779cde0bad0229819
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32209753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dd1e3ca49b767c5d66ce6209a99053adb8ae76119cba3f00a541cc4769f3581`
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
# Wed, 26 Apr 2017 19:34:46 GMT
ENV DOCKER_SHA256_x86_64=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Wed, 26 Apr 2017 19:34:47 GMT
ENV DOCKER_SHA256_armel=f05c733c22915b0c26d8b0390b26a026b33aaf7593d15475a6f86e1bbe1ddbe2
# Wed, 26 Apr 2017 19:34:52 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:34:53 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:34:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:34:54 GMT
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
	-	`sha256:73dd265956cf80955031aaaa42dc482d13efe34ed4940e8e36cee90b00810912`  
		Last Modified: Wed, 26 Apr 2017 19:49:10 GMT  
		Size: 28.1 MB (28136282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef34c0a32faf81289165e54368dcd5e4d5cda8c575bc0c59d8cdf0e5097869d`  
		Last Modified: Wed, 26 Apr 2017 19:49:04 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03`

```console
$ docker pull docker@sha256:d5e6d86ec751d6cfdc8c3b6640ea39759a60fea650c4480779cde0bad0229819
```

-	Platforms:
	-	linux; amd64

### `docker:17.03` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32209753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dd1e3ca49b767c5d66ce6209a99053adb8ae76119cba3f00a541cc4769f3581`
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
# Wed, 26 Apr 2017 19:34:46 GMT
ENV DOCKER_SHA256_x86_64=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Wed, 26 Apr 2017 19:34:47 GMT
ENV DOCKER_SHA256_armel=f05c733c22915b0c26d8b0390b26a026b33aaf7593d15475a6f86e1bbe1ddbe2
# Wed, 26 Apr 2017 19:34:52 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:34:53 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:34:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:34:54 GMT
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
	-	`sha256:73dd265956cf80955031aaaa42dc482d13efe34ed4940e8e36cee90b00810912`  
		Last Modified: Wed, 26 Apr 2017 19:49:10 GMT  
		Size: 28.1 MB (28136282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef34c0a32faf81289165e54368dcd5e4d5cda8c575bc0c59d8cdf0e5097869d`  
		Last Modified: Wed, 26 Apr 2017 19:49:04 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable`

```console
$ docker pull docker@sha256:d5e6d86ec751d6cfdc8c3b6640ea39759a60fea650c4480779cde0bad0229819
```

-	Platforms:
	-	linux; amd64

### `docker:stable` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32209753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dd1e3ca49b767c5d66ce6209a99053adb8ae76119cba3f00a541cc4769f3581`
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
# Wed, 26 Apr 2017 19:34:46 GMT
ENV DOCKER_SHA256_x86_64=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Wed, 26 Apr 2017 19:34:47 GMT
ENV DOCKER_SHA256_armel=f05c733c22915b0c26d8b0390b26a026b33aaf7593d15475a6f86e1bbe1ddbe2
# Wed, 26 Apr 2017 19:34:52 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:34:53 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:34:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:34:54 GMT
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
	-	`sha256:73dd265956cf80955031aaaa42dc482d13efe34ed4940e8e36cee90b00810912`  
		Last Modified: Wed, 26 Apr 2017 19:49:10 GMT  
		Size: 28.1 MB (28136282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef34c0a32faf81289165e54368dcd5e4d5cda8c575bc0c59d8cdf0e5097869d`  
		Last Modified: Wed, 26 Apr 2017 19:49:04 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-ce-dind`

```console
$ docker pull docker@sha256:2e57e0242ea8e5e139f19386f44417bb8de8b07f4f2cc1a76caa285ecd1c5b16
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-ce-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 MB (34379393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f13dbff810b1091e613155de347a687c6e6617270dad5a054c32a6953a7090aa`
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
# Wed, 26 Apr 2017 19:34:46 GMT
ENV DOCKER_SHA256_x86_64=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Wed, 26 Apr 2017 19:34:47 GMT
ENV DOCKER_SHA256_armel=f05c733c22915b0c26d8b0390b26a026b33aaf7593d15475a6f86e1bbe1ddbe2
# Wed, 26 Apr 2017 19:34:52 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:34:53 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:34:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:34:54 GMT
CMD ["sh"]
# Wed, 26 Apr 2017 19:35:15 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 26 Apr 2017 19:35:16 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 26 Apr 2017 19:35:17 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 26 Apr 2017 19:35:19 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 26 Apr 2017 19:35:20 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:35:20 GMT
VOLUME [/var/lib/docker]
# Wed, 26 Apr 2017 19:35:21 GMT
EXPOSE 2375/tcp
# Wed, 26 Apr 2017 19:35:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 26 Apr 2017 19:35:22 GMT
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
	-	`sha256:73dd265956cf80955031aaaa42dc482d13efe34ed4940e8e36cee90b00810912`  
		Last Modified: Wed, 26 Apr 2017 19:49:10 GMT  
		Size: 28.1 MB (28136282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef34c0a32faf81289165e54368dcd5e4d5cda8c575bc0c59d8cdf0e5097869d`  
		Last Modified: Wed, 26 Apr 2017 19:49:04 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a381eadb7a37d94e4a9245bc04769ef6cd29e063dc5ac719ea10f245e683e72`  
		Last Modified: Wed, 26 Apr 2017 19:50:39 GMT  
		Size: 2.2 MB (2166042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4fe36c93e830f34c1d145e9ff130d0085c837a17e9fe5ec0f14a8c037d3051d`  
		Last Modified: Wed, 26 Apr 2017 19:50:37 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fe3207a8ae934aaa40c9064ad22f4b8afaee1c1782cfbed58964d3122e50431`  
		Last Modified: Wed, 26 Apr 2017 19:50:37 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c6996f627edb5d627d4e7670769ca5db92a67f229d18e87410b740beb562289`  
		Last Modified: Wed, 26 Apr 2017 19:50:37 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-dind`

```console
$ docker pull docker@sha256:2e57e0242ea8e5e139f19386f44417bb8de8b07f4f2cc1a76caa285ecd1c5b16
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 MB (34379393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f13dbff810b1091e613155de347a687c6e6617270dad5a054c32a6953a7090aa`
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
# Wed, 26 Apr 2017 19:34:46 GMT
ENV DOCKER_SHA256_x86_64=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Wed, 26 Apr 2017 19:34:47 GMT
ENV DOCKER_SHA256_armel=f05c733c22915b0c26d8b0390b26a026b33aaf7593d15475a6f86e1bbe1ddbe2
# Wed, 26 Apr 2017 19:34:52 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:34:53 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:34:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:34:54 GMT
CMD ["sh"]
# Wed, 26 Apr 2017 19:35:15 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 26 Apr 2017 19:35:16 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 26 Apr 2017 19:35:17 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 26 Apr 2017 19:35:19 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 26 Apr 2017 19:35:20 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:35:20 GMT
VOLUME [/var/lib/docker]
# Wed, 26 Apr 2017 19:35:21 GMT
EXPOSE 2375/tcp
# Wed, 26 Apr 2017 19:35:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 26 Apr 2017 19:35:22 GMT
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
	-	`sha256:73dd265956cf80955031aaaa42dc482d13efe34ed4940e8e36cee90b00810912`  
		Last Modified: Wed, 26 Apr 2017 19:49:10 GMT  
		Size: 28.1 MB (28136282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef34c0a32faf81289165e54368dcd5e4d5cda8c575bc0c59d8cdf0e5097869d`  
		Last Modified: Wed, 26 Apr 2017 19:49:04 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a381eadb7a37d94e4a9245bc04769ef6cd29e063dc5ac719ea10f245e683e72`  
		Last Modified: Wed, 26 Apr 2017 19:50:39 GMT  
		Size: 2.2 MB (2166042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4fe36c93e830f34c1d145e9ff130d0085c837a17e9fe5ec0f14a8c037d3051d`  
		Last Modified: Wed, 26 Apr 2017 19:50:37 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fe3207a8ae934aaa40c9064ad22f4b8afaee1c1782cfbed58964d3122e50431`  
		Last Modified: Wed, 26 Apr 2017 19:50:37 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c6996f627edb5d627d4e7670769ca5db92a67f229d18e87410b740beb562289`  
		Last Modified: Wed, 26 Apr 2017 19:50:37 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03-dind`

```console
$ docker pull docker@sha256:2e57e0242ea8e5e139f19386f44417bb8de8b07f4f2cc1a76caa285ecd1c5b16
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 MB (34379393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f13dbff810b1091e613155de347a687c6e6617270dad5a054c32a6953a7090aa`
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
# Wed, 26 Apr 2017 19:34:46 GMT
ENV DOCKER_SHA256_x86_64=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Wed, 26 Apr 2017 19:34:47 GMT
ENV DOCKER_SHA256_armel=f05c733c22915b0c26d8b0390b26a026b33aaf7593d15475a6f86e1bbe1ddbe2
# Wed, 26 Apr 2017 19:34:52 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:34:53 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:34:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:34:54 GMT
CMD ["sh"]
# Wed, 26 Apr 2017 19:35:15 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 26 Apr 2017 19:35:16 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 26 Apr 2017 19:35:17 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 26 Apr 2017 19:35:19 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 26 Apr 2017 19:35:20 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:35:20 GMT
VOLUME [/var/lib/docker]
# Wed, 26 Apr 2017 19:35:21 GMT
EXPOSE 2375/tcp
# Wed, 26 Apr 2017 19:35:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 26 Apr 2017 19:35:22 GMT
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
	-	`sha256:73dd265956cf80955031aaaa42dc482d13efe34ed4940e8e36cee90b00810912`  
		Last Modified: Wed, 26 Apr 2017 19:49:10 GMT  
		Size: 28.1 MB (28136282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef34c0a32faf81289165e54368dcd5e4d5cda8c575bc0c59d8cdf0e5097869d`  
		Last Modified: Wed, 26 Apr 2017 19:49:04 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a381eadb7a37d94e4a9245bc04769ef6cd29e063dc5ac719ea10f245e683e72`  
		Last Modified: Wed, 26 Apr 2017 19:50:39 GMT  
		Size: 2.2 MB (2166042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4fe36c93e830f34c1d145e9ff130d0085c837a17e9fe5ec0f14a8c037d3051d`  
		Last Modified: Wed, 26 Apr 2017 19:50:37 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fe3207a8ae934aaa40c9064ad22f4b8afaee1c1782cfbed58964d3122e50431`  
		Last Modified: Wed, 26 Apr 2017 19:50:37 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c6996f627edb5d627d4e7670769ca5db92a67f229d18e87410b740beb562289`  
		Last Modified: Wed, 26 Apr 2017 19:50:37 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-dind`

```console
$ docker pull docker@sha256:2e57e0242ea8e5e139f19386f44417bb8de8b07f4f2cc1a76caa285ecd1c5b16
```

-	Platforms:
	-	linux; amd64

### `docker:stable-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 MB (34379393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f13dbff810b1091e613155de347a687c6e6617270dad5a054c32a6953a7090aa`
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
# Wed, 26 Apr 2017 19:34:46 GMT
ENV DOCKER_SHA256_x86_64=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Wed, 26 Apr 2017 19:34:47 GMT
ENV DOCKER_SHA256_armel=f05c733c22915b0c26d8b0390b26a026b33aaf7593d15475a6f86e1bbe1ddbe2
# Wed, 26 Apr 2017 19:34:52 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:34:53 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:34:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:34:54 GMT
CMD ["sh"]
# Wed, 26 Apr 2017 19:35:15 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 26 Apr 2017 19:35:16 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 26 Apr 2017 19:35:17 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 26 Apr 2017 19:35:19 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 26 Apr 2017 19:35:20 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:35:20 GMT
VOLUME [/var/lib/docker]
# Wed, 26 Apr 2017 19:35:21 GMT
EXPOSE 2375/tcp
# Wed, 26 Apr 2017 19:35:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 26 Apr 2017 19:35:22 GMT
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
	-	`sha256:73dd265956cf80955031aaaa42dc482d13efe34ed4940e8e36cee90b00810912`  
		Last Modified: Wed, 26 Apr 2017 19:49:10 GMT  
		Size: 28.1 MB (28136282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef34c0a32faf81289165e54368dcd5e4d5cda8c575bc0c59d8cdf0e5097869d`  
		Last Modified: Wed, 26 Apr 2017 19:49:04 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a381eadb7a37d94e4a9245bc04769ef6cd29e063dc5ac719ea10f245e683e72`  
		Last Modified: Wed, 26 Apr 2017 19:50:39 GMT  
		Size: 2.2 MB (2166042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4fe36c93e830f34c1d145e9ff130d0085c837a17e9fe5ec0f14a8c037d3051d`  
		Last Modified: Wed, 26 Apr 2017 19:50:37 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fe3207a8ae934aaa40c9064ad22f4b8afaee1c1782cfbed58964d3122e50431`  
		Last Modified: Wed, 26 Apr 2017 19:50:37 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c6996f627edb5d627d4e7670769ca5db92a67f229d18e87410b740beb562289`  
		Last Modified: Wed, 26 Apr 2017 19:50:37 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-ce-git`

```console
$ docker pull docker@sha256:c9a8a9795e21a379731fdbd8979e09952c47f74467db85fef4eeed5b6915b611
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-ce-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.9 MB (42932113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c43c60997f8816ed4f34922de1972c31ecec33543b777e37e6b51b0e657578`
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
# Wed, 26 Apr 2017 19:34:46 GMT
ENV DOCKER_SHA256_x86_64=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Wed, 26 Apr 2017 19:34:47 GMT
ENV DOCKER_SHA256_armel=f05c733c22915b0c26d8b0390b26a026b33aaf7593d15475a6f86e1bbe1ddbe2
# Wed, 26 Apr 2017 19:34:52 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:34:53 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:34:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:34:54 GMT
CMD ["sh"]
# Wed, 26 Apr 2017 19:35:43 GMT
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
	-	`sha256:73dd265956cf80955031aaaa42dc482d13efe34ed4940e8e36cee90b00810912`  
		Last Modified: Wed, 26 Apr 2017 19:49:10 GMT  
		Size: 28.1 MB (28136282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef34c0a32faf81289165e54368dcd5e4d5cda8c575bc0c59d8cdf0e5097869d`  
		Last Modified: Wed, 26 Apr 2017 19:49:04 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7176ece1ab1489d316693d14b48ce3e4e088c773d455527243e494d54b40a0f4`  
		Last Modified: Wed, 26 Apr 2017 19:52:17 GMT  
		Size: 10.7 MB (10722360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-git`

```console
$ docker pull docker@sha256:c9a8a9795e21a379731fdbd8979e09952c47f74467db85fef4eeed5b6915b611
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.9 MB (42932113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c43c60997f8816ed4f34922de1972c31ecec33543b777e37e6b51b0e657578`
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
# Wed, 26 Apr 2017 19:34:46 GMT
ENV DOCKER_SHA256_x86_64=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Wed, 26 Apr 2017 19:34:47 GMT
ENV DOCKER_SHA256_armel=f05c733c22915b0c26d8b0390b26a026b33aaf7593d15475a6f86e1bbe1ddbe2
# Wed, 26 Apr 2017 19:34:52 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:34:53 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:34:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:34:54 GMT
CMD ["sh"]
# Wed, 26 Apr 2017 19:35:43 GMT
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
	-	`sha256:73dd265956cf80955031aaaa42dc482d13efe34ed4940e8e36cee90b00810912`  
		Last Modified: Wed, 26 Apr 2017 19:49:10 GMT  
		Size: 28.1 MB (28136282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef34c0a32faf81289165e54368dcd5e4d5cda8c575bc0c59d8cdf0e5097869d`  
		Last Modified: Wed, 26 Apr 2017 19:49:04 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7176ece1ab1489d316693d14b48ce3e4e088c773d455527243e494d54b40a0f4`  
		Last Modified: Wed, 26 Apr 2017 19:52:17 GMT  
		Size: 10.7 MB (10722360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03-git`

```console
$ docker pull docker@sha256:c9a8a9795e21a379731fdbd8979e09952c47f74467db85fef4eeed5b6915b611
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.9 MB (42932113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c43c60997f8816ed4f34922de1972c31ecec33543b777e37e6b51b0e657578`
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
# Wed, 26 Apr 2017 19:34:46 GMT
ENV DOCKER_SHA256_x86_64=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Wed, 26 Apr 2017 19:34:47 GMT
ENV DOCKER_SHA256_armel=f05c733c22915b0c26d8b0390b26a026b33aaf7593d15475a6f86e1bbe1ddbe2
# Wed, 26 Apr 2017 19:34:52 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:34:53 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:34:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:34:54 GMT
CMD ["sh"]
# Wed, 26 Apr 2017 19:35:43 GMT
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
	-	`sha256:73dd265956cf80955031aaaa42dc482d13efe34ed4940e8e36cee90b00810912`  
		Last Modified: Wed, 26 Apr 2017 19:49:10 GMT  
		Size: 28.1 MB (28136282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef34c0a32faf81289165e54368dcd5e4d5cda8c575bc0c59d8cdf0e5097869d`  
		Last Modified: Wed, 26 Apr 2017 19:49:04 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7176ece1ab1489d316693d14b48ce3e4e088c773d455527243e494d54b40a0f4`  
		Last Modified: Wed, 26 Apr 2017 19:52:17 GMT  
		Size: 10.7 MB (10722360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-git`

```console
$ docker pull docker@sha256:c9a8a9795e21a379731fdbd8979e09952c47f74467db85fef4eeed5b6915b611
```

-	Platforms:
	-	linux; amd64

### `docker:stable-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.9 MB (42932113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c43c60997f8816ed4f34922de1972c31ecec33543b777e37e6b51b0e657578`
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
# Wed, 26 Apr 2017 19:34:46 GMT
ENV DOCKER_SHA256_x86_64=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Wed, 26 Apr 2017 19:34:47 GMT
ENV DOCKER_SHA256_armel=f05c733c22915b0c26d8b0390b26a026b33aaf7593d15475a6f86e1bbe1ddbe2
# Wed, 26 Apr 2017 19:34:52 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:34:53 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:34:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:34:54 GMT
CMD ["sh"]
# Wed, 26 Apr 2017 19:35:43 GMT
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
	-	`sha256:73dd265956cf80955031aaaa42dc482d13efe34ed4940e8e36cee90b00810912`  
		Last Modified: Wed, 26 Apr 2017 19:49:10 GMT  
		Size: 28.1 MB (28136282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef34c0a32faf81289165e54368dcd5e4d5cda8c575bc0c59d8cdf0e5097869d`  
		Last Modified: Wed, 26 Apr 2017 19:49:04 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7176ece1ab1489d316693d14b48ce3e4e088c773d455527243e494d54b40a0f4`  
		Last Modified: Wed, 26 Apr 2017 19:52:17 GMT  
		Size: 10.7 MB (10722360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
