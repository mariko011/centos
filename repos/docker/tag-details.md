<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:17.05.0-ce`](#docker17050-ce)
-	[`docker:17.05.0`](#docker17050)
-	[`docker:17.05`](#docker1705)
-	[`docker:17`](#docker17)
-	[`docker:latest`](#dockerlatest)
-	[`docker:edge`](#dockeredge)
-	[`docker:17.05.0-ce-dind`](#docker17050-ce-dind)
-	[`docker:17.05.0-dind`](#docker17050-dind)
-	[`docker:17.05-dind`](#docker1705-dind)
-	[`docker:17-dind`](#docker17-dind)
-	[`docker:dind`](#dockerdind)
-	[`docker:edge-dind`](#dockeredge-dind)
-	[`docker:17.05.0-ce-git`](#docker17050-ce-git)
-	[`docker:17.05.0-git`](#docker17050-git)
-	[`docker:17.05-git`](#docker1705-git)
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

## `docker:17.05.0-ce`

```console
$ docker pull docker@sha256:0e73f94581d16cf01abb9d663b6bb74b4f8a13faedd45a520a87f2637f5a892a
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32857528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:311647fa6df81190cc97e1354000d18e549023699e0fe491134079e3f95501ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 05 May 2017 22:04:41 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 05 May 2017 22:04:41 GMT
ENV DOCKER_SHA256_x86_64=340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9
# Fri, 05 May 2017 22:04:42 GMT
ENV DOCKER_SHA256_armel=59bf474090b4b095d19e70bb76305ebfbdb0f18f33aed2fccd16003e500ed1b7
# Fri, 05 May 2017 22:04:47 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Fri, 05 May 2017 22:04:48 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 05 May 2017 22:04:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 May 2017 22:04:50 GMT
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
	-	`sha256:976e1784e995506a76786af9b1aa1dcb978780afcbf12d859a0dcedbde7b2967`  
		Last Modified: Fri, 05 May 2017 22:06:34 GMT  
		Size: 28.8 MB (28784056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62a34c1b0abe1ee70dd1a91395433c2b157aeaf4dc79b254b9c73f998102497`  
		Last Modified: Fri, 05 May 2017 22:06:27 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0`

```console
$ docker pull docker@sha256:0e73f94581d16cf01abb9d663b6bb74b4f8a13faedd45a520a87f2637f5a892a
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32857528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:311647fa6df81190cc97e1354000d18e549023699e0fe491134079e3f95501ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 05 May 2017 22:04:41 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 05 May 2017 22:04:41 GMT
ENV DOCKER_SHA256_x86_64=340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9
# Fri, 05 May 2017 22:04:42 GMT
ENV DOCKER_SHA256_armel=59bf474090b4b095d19e70bb76305ebfbdb0f18f33aed2fccd16003e500ed1b7
# Fri, 05 May 2017 22:04:47 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Fri, 05 May 2017 22:04:48 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 05 May 2017 22:04:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 May 2017 22:04:50 GMT
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
	-	`sha256:976e1784e995506a76786af9b1aa1dcb978780afcbf12d859a0dcedbde7b2967`  
		Last Modified: Fri, 05 May 2017 22:06:34 GMT  
		Size: 28.8 MB (28784056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62a34c1b0abe1ee70dd1a91395433c2b157aeaf4dc79b254b9c73f998102497`  
		Last Modified: Fri, 05 May 2017 22:06:27 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05`

```console
$ docker pull docker@sha256:0e73f94581d16cf01abb9d663b6bb74b4f8a13faedd45a520a87f2637f5a892a
```

-	Platforms:
	-	linux; amd64

### `docker:17.05` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32857528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:311647fa6df81190cc97e1354000d18e549023699e0fe491134079e3f95501ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 05 May 2017 22:04:41 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 05 May 2017 22:04:41 GMT
ENV DOCKER_SHA256_x86_64=340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9
# Fri, 05 May 2017 22:04:42 GMT
ENV DOCKER_SHA256_armel=59bf474090b4b095d19e70bb76305ebfbdb0f18f33aed2fccd16003e500ed1b7
# Fri, 05 May 2017 22:04:47 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Fri, 05 May 2017 22:04:48 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 05 May 2017 22:04:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 May 2017 22:04:50 GMT
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
	-	`sha256:976e1784e995506a76786af9b1aa1dcb978780afcbf12d859a0dcedbde7b2967`  
		Last Modified: Fri, 05 May 2017 22:06:34 GMT  
		Size: 28.8 MB (28784056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62a34c1b0abe1ee70dd1a91395433c2b157aeaf4dc79b254b9c73f998102497`  
		Last Modified: Fri, 05 May 2017 22:06:27 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17`

```console
$ docker pull docker@sha256:0e73f94581d16cf01abb9d663b6bb74b4f8a13faedd45a520a87f2637f5a892a
```

-	Platforms:
	-	linux; amd64

### `docker:17` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32857528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:311647fa6df81190cc97e1354000d18e549023699e0fe491134079e3f95501ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 05 May 2017 22:04:41 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 05 May 2017 22:04:41 GMT
ENV DOCKER_SHA256_x86_64=340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9
# Fri, 05 May 2017 22:04:42 GMT
ENV DOCKER_SHA256_armel=59bf474090b4b095d19e70bb76305ebfbdb0f18f33aed2fccd16003e500ed1b7
# Fri, 05 May 2017 22:04:47 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Fri, 05 May 2017 22:04:48 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 05 May 2017 22:04:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 May 2017 22:04:50 GMT
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
	-	`sha256:976e1784e995506a76786af9b1aa1dcb978780afcbf12d859a0dcedbde7b2967`  
		Last Modified: Fri, 05 May 2017 22:06:34 GMT  
		Size: 28.8 MB (28784056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62a34c1b0abe1ee70dd1a91395433c2b157aeaf4dc79b254b9c73f998102497`  
		Last Modified: Fri, 05 May 2017 22:06:27 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:0e73f94581d16cf01abb9d663b6bb74b4f8a13faedd45a520a87f2637f5a892a
```

-	Platforms:
	-	linux; amd64

### `docker:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32857528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:311647fa6df81190cc97e1354000d18e549023699e0fe491134079e3f95501ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 05 May 2017 22:04:41 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 05 May 2017 22:04:41 GMT
ENV DOCKER_SHA256_x86_64=340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9
# Fri, 05 May 2017 22:04:42 GMT
ENV DOCKER_SHA256_armel=59bf474090b4b095d19e70bb76305ebfbdb0f18f33aed2fccd16003e500ed1b7
# Fri, 05 May 2017 22:04:47 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Fri, 05 May 2017 22:04:48 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 05 May 2017 22:04:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 May 2017 22:04:50 GMT
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
	-	`sha256:976e1784e995506a76786af9b1aa1dcb978780afcbf12d859a0dcedbde7b2967`  
		Last Modified: Fri, 05 May 2017 22:06:34 GMT  
		Size: 28.8 MB (28784056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62a34c1b0abe1ee70dd1a91395433c2b157aeaf4dc79b254b9c73f998102497`  
		Last Modified: Fri, 05 May 2017 22:06:27 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge`

```console
$ docker pull docker@sha256:0e73f94581d16cf01abb9d663b6bb74b4f8a13faedd45a520a87f2637f5a892a
```

-	Platforms:
	-	linux; amd64

### `docker:edge` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32857528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:311647fa6df81190cc97e1354000d18e549023699e0fe491134079e3f95501ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 05 May 2017 22:04:41 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 05 May 2017 22:04:41 GMT
ENV DOCKER_SHA256_x86_64=340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9
# Fri, 05 May 2017 22:04:42 GMT
ENV DOCKER_SHA256_armel=59bf474090b4b095d19e70bb76305ebfbdb0f18f33aed2fccd16003e500ed1b7
# Fri, 05 May 2017 22:04:47 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Fri, 05 May 2017 22:04:48 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 05 May 2017 22:04:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 May 2017 22:04:50 GMT
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
	-	`sha256:976e1784e995506a76786af9b1aa1dcb978780afcbf12d859a0dcedbde7b2967`  
		Last Modified: Fri, 05 May 2017 22:06:34 GMT  
		Size: 28.8 MB (28784056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62a34c1b0abe1ee70dd1a91395433c2b157aeaf4dc79b254b9c73f998102497`  
		Last Modified: Fri, 05 May 2017 22:06:27 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-ce-dind`

```console
$ docker pull docker@sha256:893bc3999d8e229d61b0cef027ec405797d64b7d6dcfe282d31068456ef942d6
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35027178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:559dd16b4e0a64d9de2447d3de234743046443f770bf5226f45f9b7f9c68887b`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 05 May 2017 22:04:41 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 05 May 2017 22:04:41 GMT
ENV DOCKER_SHA256_x86_64=340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9
# Fri, 05 May 2017 22:04:42 GMT
ENV DOCKER_SHA256_armel=59bf474090b4b095d19e70bb76305ebfbdb0f18f33aed2fccd16003e500ed1b7
# Fri, 05 May 2017 22:04:47 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Fri, 05 May 2017 22:04:48 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 05 May 2017 22:04:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 May 2017 22:04:50 GMT
CMD ["sh"]
# Fri, 05 May 2017 22:05:12 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 05 May 2017 22:05:14 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 05 May 2017 22:05:15 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 05 May 2017 22:05:17 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 05 May 2017 22:05:18 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 05 May 2017 22:05:19 GMT
VOLUME [/var/lib/docker]
# Fri, 05 May 2017 22:05:20 GMT
EXPOSE 2375/tcp
# Fri, 05 May 2017 22:05:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 05 May 2017 22:05:39 GMT
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
	-	`sha256:976e1784e995506a76786af9b1aa1dcb978780afcbf12d859a0dcedbde7b2967`  
		Last Modified: Fri, 05 May 2017 22:06:34 GMT  
		Size: 28.8 MB (28784056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62a34c1b0abe1ee70dd1a91395433c2b157aeaf4dc79b254b9c73f998102497`  
		Last Modified: Fri, 05 May 2017 22:06:27 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc0206b45d2968d9536be34f05b255d360f283e15ec82e351509a937745077c`  
		Last Modified: Fri, 05 May 2017 22:10:07 GMT  
		Size: 2.2 MB (2166046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db24bc925bab44fa5d1d08109a33da02bf4f4252a8512eafba125b46d0fd7deb`  
		Last Modified: Fri, 05 May 2017 22:10:06 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:501ab1bf0933130f1f854bffbbb09b90ca90fbb38c9d24dce92cd6525170d283`  
		Last Modified: Fri, 05 May 2017 22:10:06 GMT  
		Size: 1.8 KB (1814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e6819b5f681084581e5642da3686732d0c5e816b97a85c47ff71d058c27af2`  
		Last Modified: Fri, 05 May 2017 22:10:06 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-dind`

```console
$ docker pull docker@sha256:893bc3999d8e229d61b0cef027ec405797d64b7d6dcfe282d31068456ef942d6
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35027178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:559dd16b4e0a64d9de2447d3de234743046443f770bf5226f45f9b7f9c68887b`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 05 May 2017 22:04:41 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 05 May 2017 22:04:41 GMT
ENV DOCKER_SHA256_x86_64=340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9
# Fri, 05 May 2017 22:04:42 GMT
ENV DOCKER_SHA256_armel=59bf474090b4b095d19e70bb76305ebfbdb0f18f33aed2fccd16003e500ed1b7
# Fri, 05 May 2017 22:04:47 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Fri, 05 May 2017 22:04:48 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 05 May 2017 22:04:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 May 2017 22:04:50 GMT
CMD ["sh"]
# Fri, 05 May 2017 22:05:12 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 05 May 2017 22:05:14 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 05 May 2017 22:05:15 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 05 May 2017 22:05:17 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 05 May 2017 22:05:18 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 05 May 2017 22:05:19 GMT
VOLUME [/var/lib/docker]
# Fri, 05 May 2017 22:05:20 GMT
EXPOSE 2375/tcp
# Fri, 05 May 2017 22:05:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 05 May 2017 22:05:39 GMT
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
	-	`sha256:976e1784e995506a76786af9b1aa1dcb978780afcbf12d859a0dcedbde7b2967`  
		Last Modified: Fri, 05 May 2017 22:06:34 GMT  
		Size: 28.8 MB (28784056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62a34c1b0abe1ee70dd1a91395433c2b157aeaf4dc79b254b9c73f998102497`  
		Last Modified: Fri, 05 May 2017 22:06:27 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc0206b45d2968d9536be34f05b255d360f283e15ec82e351509a937745077c`  
		Last Modified: Fri, 05 May 2017 22:10:07 GMT  
		Size: 2.2 MB (2166046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db24bc925bab44fa5d1d08109a33da02bf4f4252a8512eafba125b46d0fd7deb`  
		Last Modified: Fri, 05 May 2017 22:10:06 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:501ab1bf0933130f1f854bffbbb09b90ca90fbb38c9d24dce92cd6525170d283`  
		Last Modified: Fri, 05 May 2017 22:10:06 GMT  
		Size: 1.8 KB (1814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e6819b5f681084581e5642da3686732d0c5e816b97a85c47ff71d058c27af2`  
		Last Modified: Fri, 05 May 2017 22:10:06 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05-dind`

```console
$ docker pull docker@sha256:893bc3999d8e229d61b0cef027ec405797d64b7d6dcfe282d31068456ef942d6
```

-	Platforms:
	-	linux; amd64

### `docker:17.05-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35027178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:559dd16b4e0a64d9de2447d3de234743046443f770bf5226f45f9b7f9c68887b`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 05 May 2017 22:04:41 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 05 May 2017 22:04:41 GMT
ENV DOCKER_SHA256_x86_64=340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9
# Fri, 05 May 2017 22:04:42 GMT
ENV DOCKER_SHA256_armel=59bf474090b4b095d19e70bb76305ebfbdb0f18f33aed2fccd16003e500ed1b7
# Fri, 05 May 2017 22:04:47 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Fri, 05 May 2017 22:04:48 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 05 May 2017 22:04:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 May 2017 22:04:50 GMT
CMD ["sh"]
# Fri, 05 May 2017 22:05:12 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 05 May 2017 22:05:14 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 05 May 2017 22:05:15 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 05 May 2017 22:05:17 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 05 May 2017 22:05:18 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 05 May 2017 22:05:19 GMT
VOLUME [/var/lib/docker]
# Fri, 05 May 2017 22:05:20 GMT
EXPOSE 2375/tcp
# Fri, 05 May 2017 22:05:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 05 May 2017 22:05:39 GMT
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
	-	`sha256:976e1784e995506a76786af9b1aa1dcb978780afcbf12d859a0dcedbde7b2967`  
		Last Modified: Fri, 05 May 2017 22:06:34 GMT  
		Size: 28.8 MB (28784056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62a34c1b0abe1ee70dd1a91395433c2b157aeaf4dc79b254b9c73f998102497`  
		Last Modified: Fri, 05 May 2017 22:06:27 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc0206b45d2968d9536be34f05b255d360f283e15ec82e351509a937745077c`  
		Last Modified: Fri, 05 May 2017 22:10:07 GMT  
		Size: 2.2 MB (2166046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db24bc925bab44fa5d1d08109a33da02bf4f4252a8512eafba125b46d0fd7deb`  
		Last Modified: Fri, 05 May 2017 22:10:06 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:501ab1bf0933130f1f854bffbbb09b90ca90fbb38c9d24dce92cd6525170d283`  
		Last Modified: Fri, 05 May 2017 22:10:06 GMT  
		Size: 1.8 KB (1814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e6819b5f681084581e5642da3686732d0c5e816b97a85c47ff71d058c27af2`  
		Last Modified: Fri, 05 May 2017 22:10:06 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-dind`

```console
$ docker pull docker@sha256:893bc3999d8e229d61b0cef027ec405797d64b7d6dcfe282d31068456ef942d6
```

-	Platforms:
	-	linux; amd64

### `docker:17-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35027178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:559dd16b4e0a64d9de2447d3de234743046443f770bf5226f45f9b7f9c68887b`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 05 May 2017 22:04:41 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 05 May 2017 22:04:41 GMT
ENV DOCKER_SHA256_x86_64=340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9
# Fri, 05 May 2017 22:04:42 GMT
ENV DOCKER_SHA256_armel=59bf474090b4b095d19e70bb76305ebfbdb0f18f33aed2fccd16003e500ed1b7
# Fri, 05 May 2017 22:04:47 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Fri, 05 May 2017 22:04:48 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 05 May 2017 22:04:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 May 2017 22:04:50 GMT
CMD ["sh"]
# Fri, 05 May 2017 22:05:12 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 05 May 2017 22:05:14 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 05 May 2017 22:05:15 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 05 May 2017 22:05:17 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 05 May 2017 22:05:18 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 05 May 2017 22:05:19 GMT
VOLUME [/var/lib/docker]
# Fri, 05 May 2017 22:05:20 GMT
EXPOSE 2375/tcp
# Fri, 05 May 2017 22:05:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 05 May 2017 22:05:39 GMT
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
	-	`sha256:976e1784e995506a76786af9b1aa1dcb978780afcbf12d859a0dcedbde7b2967`  
		Last Modified: Fri, 05 May 2017 22:06:34 GMT  
		Size: 28.8 MB (28784056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62a34c1b0abe1ee70dd1a91395433c2b157aeaf4dc79b254b9c73f998102497`  
		Last Modified: Fri, 05 May 2017 22:06:27 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc0206b45d2968d9536be34f05b255d360f283e15ec82e351509a937745077c`  
		Last Modified: Fri, 05 May 2017 22:10:07 GMT  
		Size: 2.2 MB (2166046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db24bc925bab44fa5d1d08109a33da02bf4f4252a8512eafba125b46d0fd7deb`  
		Last Modified: Fri, 05 May 2017 22:10:06 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:501ab1bf0933130f1f854bffbbb09b90ca90fbb38c9d24dce92cd6525170d283`  
		Last Modified: Fri, 05 May 2017 22:10:06 GMT  
		Size: 1.8 KB (1814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e6819b5f681084581e5642da3686732d0c5e816b97a85c47ff71d058c27af2`  
		Last Modified: Fri, 05 May 2017 22:10:06 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:893bc3999d8e229d61b0cef027ec405797d64b7d6dcfe282d31068456ef942d6
```

-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35027178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:559dd16b4e0a64d9de2447d3de234743046443f770bf5226f45f9b7f9c68887b`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 05 May 2017 22:04:41 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 05 May 2017 22:04:41 GMT
ENV DOCKER_SHA256_x86_64=340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9
# Fri, 05 May 2017 22:04:42 GMT
ENV DOCKER_SHA256_armel=59bf474090b4b095d19e70bb76305ebfbdb0f18f33aed2fccd16003e500ed1b7
# Fri, 05 May 2017 22:04:47 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Fri, 05 May 2017 22:04:48 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 05 May 2017 22:04:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 May 2017 22:04:50 GMT
CMD ["sh"]
# Fri, 05 May 2017 22:05:12 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 05 May 2017 22:05:14 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 05 May 2017 22:05:15 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 05 May 2017 22:05:17 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 05 May 2017 22:05:18 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 05 May 2017 22:05:19 GMT
VOLUME [/var/lib/docker]
# Fri, 05 May 2017 22:05:20 GMT
EXPOSE 2375/tcp
# Fri, 05 May 2017 22:05:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 05 May 2017 22:05:39 GMT
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
	-	`sha256:976e1784e995506a76786af9b1aa1dcb978780afcbf12d859a0dcedbde7b2967`  
		Last Modified: Fri, 05 May 2017 22:06:34 GMT  
		Size: 28.8 MB (28784056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62a34c1b0abe1ee70dd1a91395433c2b157aeaf4dc79b254b9c73f998102497`  
		Last Modified: Fri, 05 May 2017 22:06:27 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc0206b45d2968d9536be34f05b255d360f283e15ec82e351509a937745077c`  
		Last Modified: Fri, 05 May 2017 22:10:07 GMT  
		Size: 2.2 MB (2166046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db24bc925bab44fa5d1d08109a33da02bf4f4252a8512eafba125b46d0fd7deb`  
		Last Modified: Fri, 05 May 2017 22:10:06 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:501ab1bf0933130f1f854bffbbb09b90ca90fbb38c9d24dce92cd6525170d283`  
		Last Modified: Fri, 05 May 2017 22:10:06 GMT  
		Size: 1.8 KB (1814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e6819b5f681084581e5642da3686732d0c5e816b97a85c47ff71d058c27af2`  
		Last Modified: Fri, 05 May 2017 22:10:06 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-dind`

```console
$ docker pull docker@sha256:893bc3999d8e229d61b0cef027ec405797d64b7d6dcfe282d31068456ef942d6
```

-	Platforms:
	-	linux; amd64

### `docker:edge-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35027178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:559dd16b4e0a64d9de2447d3de234743046443f770bf5226f45f9b7f9c68887b`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 05 May 2017 22:04:41 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 05 May 2017 22:04:41 GMT
ENV DOCKER_SHA256_x86_64=340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9
# Fri, 05 May 2017 22:04:42 GMT
ENV DOCKER_SHA256_armel=59bf474090b4b095d19e70bb76305ebfbdb0f18f33aed2fccd16003e500ed1b7
# Fri, 05 May 2017 22:04:47 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Fri, 05 May 2017 22:04:48 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 05 May 2017 22:04:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 May 2017 22:04:50 GMT
CMD ["sh"]
# Fri, 05 May 2017 22:05:12 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 05 May 2017 22:05:14 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 05 May 2017 22:05:15 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 05 May 2017 22:05:17 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 05 May 2017 22:05:18 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 05 May 2017 22:05:19 GMT
VOLUME [/var/lib/docker]
# Fri, 05 May 2017 22:05:20 GMT
EXPOSE 2375/tcp
# Fri, 05 May 2017 22:05:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 05 May 2017 22:05:39 GMT
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
	-	`sha256:976e1784e995506a76786af9b1aa1dcb978780afcbf12d859a0dcedbde7b2967`  
		Last Modified: Fri, 05 May 2017 22:06:34 GMT  
		Size: 28.8 MB (28784056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62a34c1b0abe1ee70dd1a91395433c2b157aeaf4dc79b254b9c73f998102497`  
		Last Modified: Fri, 05 May 2017 22:06:27 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc0206b45d2968d9536be34f05b255d360f283e15ec82e351509a937745077c`  
		Last Modified: Fri, 05 May 2017 22:10:07 GMT  
		Size: 2.2 MB (2166046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db24bc925bab44fa5d1d08109a33da02bf4f4252a8512eafba125b46d0fd7deb`  
		Last Modified: Fri, 05 May 2017 22:10:06 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:501ab1bf0933130f1f854bffbbb09b90ca90fbb38c9d24dce92cd6525170d283`  
		Last Modified: Fri, 05 May 2017 22:10:06 GMT  
		Size: 1.8 KB (1814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e6819b5f681084581e5642da3686732d0c5e816b97a85c47ff71d058c27af2`  
		Last Modified: Fri, 05 May 2017 22:10:06 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-ce-git`

```console
$ docker pull docker@sha256:4fd048cf86ed3348e40fbdc7650421442d426d8deefb6c491b7e555db2a5b19a
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43579912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3a9de4dd220138c3314f918b6c2e3238e44fe1923ee636351f3e7e06d53d5f8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 05 May 2017 22:04:41 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 05 May 2017 22:04:41 GMT
ENV DOCKER_SHA256_x86_64=340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9
# Fri, 05 May 2017 22:04:42 GMT
ENV DOCKER_SHA256_armel=59bf474090b4b095d19e70bb76305ebfbdb0f18f33aed2fccd16003e500ed1b7
# Fri, 05 May 2017 22:04:47 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Fri, 05 May 2017 22:04:48 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 05 May 2017 22:04:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 May 2017 22:04:50 GMT
CMD ["sh"]
# Fri, 05 May 2017 22:06:00 GMT
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
	-	`sha256:976e1784e995506a76786af9b1aa1dcb978780afcbf12d859a0dcedbde7b2967`  
		Last Modified: Fri, 05 May 2017 22:06:34 GMT  
		Size: 28.8 MB (28784056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62a34c1b0abe1ee70dd1a91395433c2b157aeaf4dc79b254b9c73f998102497`  
		Last Modified: Fri, 05 May 2017 22:06:27 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae9966c03c1873ca540ddc604a9f610fbcff85808dce2e9a488a1ce9312efc1`  
		Last Modified: Fri, 05 May 2017 22:13:37 GMT  
		Size: 10.7 MB (10722384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-git`

```console
$ docker pull docker@sha256:4fd048cf86ed3348e40fbdc7650421442d426d8deefb6c491b7e555db2a5b19a
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43579912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3a9de4dd220138c3314f918b6c2e3238e44fe1923ee636351f3e7e06d53d5f8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 05 May 2017 22:04:41 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 05 May 2017 22:04:41 GMT
ENV DOCKER_SHA256_x86_64=340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9
# Fri, 05 May 2017 22:04:42 GMT
ENV DOCKER_SHA256_armel=59bf474090b4b095d19e70bb76305ebfbdb0f18f33aed2fccd16003e500ed1b7
# Fri, 05 May 2017 22:04:47 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Fri, 05 May 2017 22:04:48 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 05 May 2017 22:04:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 May 2017 22:04:50 GMT
CMD ["sh"]
# Fri, 05 May 2017 22:06:00 GMT
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
	-	`sha256:976e1784e995506a76786af9b1aa1dcb978780afcbf12d859a0dcedbde7b2967`  
		Last Modified: Fri, 05 May 2017 22:06:34 GMT  
		Size: 28.8 MB (28784056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62a34c1b0abe1ee70dd1a91395433c2b157aeaf4dc79b254b9c73f998102497`  
		Last Modified: Fri, 05 May 2017 22:06:27 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae9966c03c1873ca540ddc604a9f610fbcff85808dce2e9a488a1ce9312efc1`  
		Last Modified: Fri, 05 May 2017 22:13:37 GMT  
		Size: 10.7 MB (10722384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05-git`

```console
$ docker pull docker@sha256:4fd048cf86ed3348e40fbdc7650421442d426d8deefb6c491b7e555db2a5b19a
```

-	Platforms:
	-	linux; amd64

### `docker:17.05-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43579912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3a9de4dd220138c3314f918b6c2e3238e44fe1923ee636351f3e7e06d53d5f8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 05 May 2017 22:04:41 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 05 May 2017 22:04:41 GMT
ENV DOCKER_SHA256_x86_64=340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9
# Fri, 05 May 2017 22:04:42 GMT
ENV DOCKER_SHA256_armel=59bf474090b4b095d19e70bb76305ebfbdb0f18f33aed2fccd16003e500ed1b7
# Fri, 05 May 2017 22:04:47 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Fri, 05 May 2017 22:04:48 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 05 May 2017 22:04:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 May 2017 22:04:50 GMT
CMD ["sh"]
# Fri, 05 May 2017 22:06:00 GMT
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
	-	`sha256:976e1784e995506a76786af9b1aa1dcb978780afcbf12d859a0dcedbde7b2967`  
		Last Modified: Fri, 05 May 2017 22:06:34 GMT  
		Size: 28.8 MB (28784056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62a34c1b0abe1ee70dd1a91395433c2b157aeaf4dc79b254b9c73f998102497`  
		Last Modified: Fri, 05 May 2017 22:06:27 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae9966c03c1873ca540ddc604a9f610fbcff85808dce2e9a488a1ce9312efc1`  
		Last Modified: Fri, 05 May 2017 22:13:37 GMT  
		Size: 10.7 MB (10722384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-git`

```console
$ docker pull docker@sha256:4fd048cf86ed3348e40fbdc7650421442d426d8deefb6c491b7e555db2a5b19a
```

-	Platforms:
	-	linux; amd64

### `docker:17-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43579912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3a9de4dd220138c3314f918b6c2e3238e44fe1923ee636351f3e7e06d53d5f8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 05 May 2017 22:04:41 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 05 May 2017 22:04:41 GMT
ENV DOCKER_SHA256_x86_64=340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9
# Fri, 05 May 2017 22:04:42 GMT
ENV DOCKER_SHA256_armel=59bf474090b4b095d19e70bb76305ebfbdb0f18f33aed2fccd16003e500ed1b7
# Fri, 05 May 2017 22:04:47 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Fri, 05 May 2017 22:04:48 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 05 May 2017 22:04:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 May 2017 22:04:50 GMT
CMD ["sh"]
# Fri, 05 May 2017 22:06:00 GMT
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
	-	`sha256:976e1784e995506a76786af9b1aa1dcb978780afcbf12d859a0dcedbde7b2967`  
		Last Modified: Fri, 05 May 2017 22:06:34 GMT  
		Size: 28.8 MB (28784056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62a34c1b0abe1ee70dd1a91395433c2b157aeaf4dc79b254b9c73f998102497`  
		Last Modified: Fri, 05 May 2017 22:06:27 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae9966c03c1873ca540ddc604a9f610fbcff85808dce2e9a488a1ce9312efc1`  
		Last Modified: Fri, 05 May 2017 22:13:37 GMT  
		Size: 10.7 MB (10722384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:4fd048cf86ed3348e40fbdc7650421442d426d8deefb6c491b7e555db2a5b19a
```

-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43579912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3a9de4dd220138c3314f918b6c2e3238e44fe1923ee636351f3e7e06d53d5f8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 05 May 2017 22:04:41 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 05 May 2017 22:04:41 GMT
ENV DOCKER_SHA256_x86_64=340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9
# Fri, 05 May 2017 22:04:42 GMT
ENV DOCKER_SHA256_armel=59bf474090b4b095d19e70bb76305ebfbdb0f18f33aed2fccd16003e500ed1b7
# Fri, 05 May 2017 22:04:47 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Fri, 05 May 2017 22:04:48 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 05 May 2017 22:04:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 May 2017 22:04:50 GMT
CMD ["sh"]
# Fri, 05 May 2017 22:06:00 GMT
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
	-	`sha256:976e1784e995506a76786af9b1aa1dcb978780afcbf12d859a0dcedbde7b2967`  
		Last Modified: Fri, 05 May 2017 22:06:34 GMT  
		Size: 28.8 MB (28784056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62a34c1b0abe1ee70dd1a91395433c2b157aeaf4dc79b254b9c73f998102497`  
		Last Modified: Fri, 05 May 2017 22:06:27 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae9966c03c1873ca540ddc604a9f610fbcff85808dce2e9a488a1ce9312efc1`  
		Last Modified: Fri, 05 May 2017 22:13:37 GMT  
		Size: 10.7 MB (10722384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-git`

```console
$ docker pull docker@sha256:4fd048cf86ed3348e40fbdc7650421442d426d8deefb6c491b7e555db2a5b19a
```

-	Platforms:
	-	linux; amd64

### `docker:edge-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43579912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3a9de4dd220138c3314f918b6c2e3238e44fe1923ee636351f3e7e06d53d5f8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 05 May 2017 22:04:41 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 05 May 2017 22:04:41 GMT
ENV DOCKER_SHA256_x86_64=340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9
# Fri, 05 May 2017 22:04:42 GMT
ENV DOCKER_SHA256_armel=59bf474090b4b095d19e70bb76305ebfbdb0f18f33aed2fccd16003e500ed1b7
# Fri, 05 May 2017 22:04:47 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Fri, 05 May 2017 22:04:48 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 05 May 2017 22:04:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 May 2017 22:04:50 GMT
CMD ["sh"]
# Fri, 05 May 2017 22:06:00 GMT
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
	-	`sha256:976e1784e995506a76786af9b1aa1dcb978780afcbf12d859a0dcedbde7b2967`  
		Last Modified: Fri, 05 May 2017 22:06:34 GMT  
		Size: 28.8 MB (28784056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62a34c1b0abe1ee70dd1a91395433c2b157aeaf4dc79b254b9c73f998102497`  
		Last Modified: Fri, 05 May 2017 22:06:27 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae9966c03c1873ca540ddc604a9f610fbcff85808dce2e9a488a1ce9312efc1`  
		Last Modified: Fri, 05 May 2017 22:13:37 GMT  
		Size: 10.7 MB (10722384 bytes)  
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
