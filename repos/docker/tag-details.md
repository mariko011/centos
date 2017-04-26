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
$ docker pull docker@sha256:6ff25ca05210b4b70efafcf99f2ca4f3c66f0a0f3d8e7fa6db8f93c28c8321a1
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce-rc1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32856587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:997501ad59c0cd4f3fa9addee49efb9b4474ed8cfc85de514285eb794e7b2499`
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
# Wed, 26 Apr 2017 19:31:50 GMT
ENV DOCKER_SHA256_x86_64=4561742c2174c01ffd0679621b66d29f8a504240d79aa714f6c58348979d02c6
# Wed, 26 Apr 2017 19:31:51 GMT
ENV DOCKER_SHA256_armel=55da582c59e2f2ccebf74c661290ecdc4d503b53acff1644a85f1c1d60dfd661
# Wed, 26 Apr 2017 19:31:57 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:31:58 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:31:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:31:59 GMT
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
	-	`sha256:6682bdad0dcc695161a6dbdcf7ef69732cc5c4767cf51229475ecf1ffaccd53b`  
		Last Modified: Wed, 26 Apr 2017 19:36:20 GMT  
		Size: 28.8 MB (28783116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c79472955c138117fc0bde3b7ac3ebbc66502ee090730451af57b7bffba6178`  
		Last Modified: Wed, 26 Apr 2017 19:36:14 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-ce`

```console
$ docker pull docker@sha256:6ff25ca05210b4b70efafcf99f2ca4f3c66f0a0f3d8e7fa6db8f93c28c8321a1
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32856587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:997501ad59c0cd4f3fa9addee49efb9b4474ed8cfc85de514285eb794e7b2499`
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
# Wed, 26 Apr 2017 19:31:50 GMT
ENV DOCKER_SHA256_x86_64=4561742c2174c01ffd0679621b66d29f8a504240d79aa714f6c58348979d02c6
# Wed, 26 Apr 2017 19:31:51 GMT
ENV DOCKER_SHA256_armel=55da582c59e2f2ccebf74c661290ecdc4d503b53acff1644a85f1c1d60dfd661
# Wed, 26 Apr 2017 19:31:57 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:31:58 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:31:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:31:59 GMT
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
	-	`sha256:6682bdad0dcc695161a6dbdcf7ef69732cc5c4767cf51229475ecf1ffaccd53b`  
		Last Modified: Wed, 26 Apr 2017 19:36:20 GMT  
		Size: 28.8 MB (28783116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c79472955c138117fc0bde3b7ac3ebbc66502ee090730451af57b7bffba6178`  
		Last Modified: Wed, 26 Apr 2017 19:36:14 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0`

```console
$ docker pull docker@sha256:6ff25ca05210b4b70efafcf99f2ca4f3c66f0a0f3d8e7fa6db8f93c28c8321a1
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32856587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:997501ad59c0cd4f3fa9addee49efb9b4474ed8cfc85de514285eb794e7b2499`
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
# Wed, 26 Apr 2017 19:31:50 GMT
ENV DOCKER_SHA256_x86_64=4561742c2174c01ffd0679621b66d29f8a504240d79aa714f6c58348979d02c6
# Wed, 26 Apr 2017 19:31:51 GMT
ENV DOCKER_SHA256_armel=55da582c59e2f2ccebf74c661290ecdc4d503b53acff1644a85f1c1d60dfd661
# Wed, 26 Apr 2017 19:31:57 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:31:58 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:31:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:31:59 GMT
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
	-	`sha256:6682bdad0dcc695161a6dbdcf7ef69732cc5c4767cf51229475ecf1ffaccd53b`  
		Last Modified: Wed, 26 Apr 2017 19:36:20 GMT  
		Size: 28.8 MB (28783116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c79472955c138117fc0bde3b7ac3ebbc66502ee090730451af57b7bffba6178`  
		Last Modified: Wed, 26 Apr 2017 19:36:14 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05-rc`

```console
$ docker pull docker@sha256:6ff25ca05210b4b70efafcf99f2ca4f3c66f0a0f3d8e7fa6db8f93c28c8321a1
```

-	Platforms:
	-	linux; amd64

### `docker:17.05-rc` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32856587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:997501ad59c0cd4f3fa9addee49efb9b4474ed8cfc85de514285eb794e7b2499`
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
# Wed, 26 Apr 2017 19:31:50 GMT
ENV DOCKER_SHA256_x86_64=4561742c2174c01ffd0679621b66d29f8a504240d79aa714f6c58348979d02c6
# Wed, 26 Apr 2017 19:31:51 GMT
ENV DOCKER_SHA256_armel=55da582c59e2f2ccebf74c661290ecdc4d503b53acff1644a85f1c1d60dfd661
# Wed, 26 Apr 2017 19:31:57 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:31:58 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:31:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:31:59 GMT
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
	-	`sha256:6682bdad0dcc695161a6dbdcf7ef69732cc5c4767cf51229475ecf1ffaccd53b`  
		Last Modified: Wed, 26 Apr 2017 19:36:20 GMT  
		Size: 28.8 MB (28783116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c79472955c138117fc0bde3b7ac3ebbc66502ee090730451af57b7bffba6178`  
		Last Modified: Wed, 26 Apr 2017 19:36:14 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc`

```console
$ docker pull docker@sha256:6ff25ca05210b4b70efafcf99f2ca4f3c66f0a0f3d8e7fa6db8f93c28c8321a1
```

-	Platforms:
	-	linux; amd64

### `docker:rc` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32856587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:997501ad59c0cd4f3fa9addee49efb9b4474ed8cfc85de514285eb794e7b2499`
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
# Wed, 26 Apr 2017 19:31:50 GMT
ENV DOCKER_SHA256_x86_64=4561742c2174c01ffd0679621b66d29f8a504240d79aa714f6c58348979d02c6
# Wed, 26 Apr 2017 19:31:51 GMT
ENV DOCKER_SHA256_armel=55da582c59e2f2ccebf74c661290ecdc4d503b53acff1644a85f1c1d60dfd661
# Wed, 26 Apr 2017 19:31:57 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:31:58 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:31:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:31:59 GMT
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
	-	`sha256:6682bdad0dcc695161a6dbdcf7ef69732cc5c4767cf51229475ecf1ffaccd53b`  
		Last Modified: Wed, 26 Apr 2017 19:36:20 GMT  
		Size: 28.8 MB (28783116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c79472955c138117fc0bde3b7ac3ebbc66502ee090730451af57b7bffba6178`  
		Last Modified: Wed, 26 Apr 2017 19:36:14 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-ce-rc1-dind`

```console
$ docker pull docker@sha256:afd6172b682c03329efb18392cf30b676d876a811099c471d47d4f6c8556dd32
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce-rc1-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35026233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:645ec5b53d85b68cdbc73091775bbe41f48f591c835f5bc466ead1fdaad19426`
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
# Wed, 26 Apr 2017 19:31:50 GMT
ENV DOCKER_SHA256_x86_64=4561742c2174c01ffd0679621b66d29f8a504240d79aa714f6c58348979d02c6
# Wed, 26 Apr 2017 19:31:51 GMT
ENV DOCKER_SHA256_armel=55da582c59e2f2ccebf74c661290ecdc4d503b53acff1644a85f1c1d60dfd661
# Wed, 26 Apr 2017 19:31:57 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:31:58 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:31:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:31:59 GMT
CMD ["sh"]
# Wed, 26 Apr 2017 19:32:19 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 26 Apr 2017 19:32:21 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 26 Apr 2017 19:32:21 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 26 Apr 2017 19:32:23 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 26 Apr 2017 19:32:24 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:32:25 GMT
VOLUME [/var/lib/docker]
# Wed, 26 Apr 2017 19:32:26 GMT
EXPOSE 2375/tcp
# Wed, 26 Apr 2017 19:32:26 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 26 Apr 2017 19:32:27 GMT
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
	-	`sha256:6682bdad0dcc695161a6dbdcf7ef69732cc5c4767cf51229475ecf1ffaccd53b`  
		Last Modified: Wed, 26 Apr 2017 19:36:20 GMT  
		Size: 28.8 MB (28783116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c79472955c138117fc0bde3b7ac3ebbc66502ee090730451af57b7bffba6178`  
		Last Modified: Wed, 26 Apr 2017 19:36:14 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849f57b6552ee522ddc9a5b218c960796c0c7e407cca3d03716bb0790fe456bc`  
		Last Modified: Wed, 26 Apr 2017 19:38:19 GMT  
		Size: 2.2 MB (2166047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1fdabf99ae206603c7b2f6a586036be748ff0719504b9c6802cca38363b264`  
		Last Modified: Wed, 26 Apr 2017 19:38:19 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae5019ac7570c21682dea810172c59574ee46ce1c8df3912b26d9fd165dcd38`  
		Last Modified: Wed, 26 Apr 2017 19:38:18 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9789f8f82ffe648d47bd0825305de1f9571d48bdef4d30aa3ecb4adb07a50449`  
		Last Modified: Wed, 26 Apr 2017 19:38:19 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-ce-dind`

```console
$ docker pull docker@sha256:afd6172b682c03329efb18392cf30b676d876a811099c471d47d4f6c8556dd32
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35026233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:645ec5b53d85b68cdbc73091775bbe41f48f591c835f5bc466ead1fdaad19426`
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
# Wed, 26 Apr 2017 19:31:50 GMT
ENV DOCKER_SHA256_x86_64=4561742c2174c01ffd0679621b66d29f8a504240d79aa714f6c58348979d02c6
# Wed, 26 Apr 2017 19:31:51 GMT
ENV DOCKER_SHA256_armel=55da582c59e2f2ccebf74c661290ecdc4d503b53acff1644a85f1c1d60dfd661
# Wed, 26 Apr 2017 19:31:57 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:31:58 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:31:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:31:59 GMT
CMD ["sh"]
# Wed, 26 Apr 2017 19:32:19 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 26 Apr 2017 19:32:21 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 26 Apr 2017 19:32:21 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 26 Apr 2017 19:32:23 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 26 Apr 2017 19:32:24 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:32:25 GMT
VOLUME [/var/lib/docker]
# Wed, 26 Apr 2017 19:32:26 GMT
EXPOSE 2375/tcp
# Wed, 26 Apr 2017 19:32:26 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 26 Apr 2017 19:32:27 GMT
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
	-	`sha256:6682bdad0dcc695161a6dbdcf7ef69732cc5c4767cf51229475ecf1ffaccd53b`  
		Last Modified: Wed, 26 Apr 2017 19:36:20 GMT  
		Size: 28.8 MB (28783116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c79472955c138117fc0bde3b7ac3ebbc66502ee090730451af57b7bffba6178`  
		Last Modified: Wed, 26 Apr 2017 19:36:14 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849f57b6552ee522ddc9a5b218c960796c0c7e407cca3d03716bb0790fe456bc`  
		Last Modified: Wed, 26 Apr 2017 19:38:19 GMT  
		Size: 2.2 MB (2166047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1fdabf99ae206603c7b2f6a586036be748ff0719504b9c6802cca38363b264`  
		Last Modified: Wed, 26 Apr 2017 19:38:19 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae5019ac7570c21682dea810172c59574ee46ce1c8df3912b26d9fd165dcd38`  
		Last Modified: Wed, 26 Apr 2017 19:38:18 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9789f8f82ffe648d47bd0825305de1f9571d48bdef4d30aa3ecb4adb07a50449`  
		Last Modified: Wed, 26 Apr 2017 19:38:19 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-dind`

```console
$ docker pull docker@sha256:afd6172b682c03329efb18392cf30b676d876a811099c471d47d4f6c8556dd32
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35026233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:645ec5b53d85b68cdbc73091775bbe41f48f591c835f5bc466ead1fdaad19426`
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
# Wed, 26 Apr 2017 19:31:50 GMT
ENV DOCKER_SHA256_x86_64=4561742c2174c01ffd0679621b66d29f8a504240d79aa714f6c58348979d02c6
# Wed, 26 Apr 2017 19:31:51 GMT
ENV DOCKER_SHA256_armel=55da582c59e2f2ccebf74c661290ecdc4d503b53acff1644a85f1c1d60dfd661
# Wed, 26 Apr 2017 19:31:57 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:31:58 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:31:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:31:59 GMT
CMD ["sh"]
# Wed, 26 Apr 2017 19:32:19 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 26 Apr 2017 19:32:21 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 26 Apr 2017 19:32:21 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 26 Apr 2017 19:32:23 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 26 Apr 2017 19:32:24 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:32:25 GMT
VOLUME [/var/lib/docker]
# Wed, 26 Apr 2017 19:32:26 GMT
EXPOSE 2375/tcp
# Wed, 26 Apr 2017 19:32:26 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 26 Apr 2017 19:32:27 GMT
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
	-	`sha256:6682bdad0dcc695161a6dbdcf7ef69732cc5c4767cf51229475ecf1ffaccd53b`  
		Last Modified: Wed, 26 Apr 2017 19:36:20 GMT  
		Size: 28.8 MB (28783116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c79472955c138117fc0bde3b7ac3ebbc66502ee090730451af57b7bffba6178`  
		Last Modified: Wed, 26 Apr 2017 19:36:14 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849f57b6552ee522ddc9a5b218c960796c0c7e407cca3d03716bb0790fe456bc`  
		Last Modified: Wed, 26 Apr 2017 19:38:19 GMT  
		Size: 2.2 MB (2166047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1fdabf99ae206603c7b2f6a586036be748ff0719504b9c6802cca38363b264`  
		Last Modified: Wed, 26 Apr 2017 19:38:19 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae5019ac7570c21682dea810172c59574ee46ce1c8df3912b26d9fd165dcd38`  
		Last Modified: Wed, 26 Apr 2017 19:38:18 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9789f8f82ffe648d47bd0825305de1f9571d48bdef4d30aa3ecb4adb07a50449`  
		Last Modified: Wed, 26 Apr 2017 19:38:19 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05-rc-dind`

```console
$ docker pull docker@sha256:afd6172b682c03329efb18392cf30b676d876a811099c471d47d4f6c8556dd32
```

-	Platforms:
	-	linux; amd64

### `docker:17.05-rc-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35026233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:645ec5b53d85b68cdbc73091775bbe41f48f591c835f5bc466ead1fdaad19426`
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
# Wed, 26 Apr 2017 19:31:50 GMT
ENV DOCKER_SHA256_x86_64=4561742c2174c01ffd0679621b66d29f8a504240d79aa714f6c58348979d02c6
# Wed, 26 Apr 2017 19:31:51 GMT
ENV DOCKER_SHA256_armel=55da582c59e2f2ccebf74c661290ecdc4d503b53acff1644a85f1c1d60dfd661
# Wed, 26 Apr 2017 19:31:57 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:31:58 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:31:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:31:59 GMT
CMD ["sh"]
# Wed, 26 Apr 2017 19:32:19 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 26 Apr 2017 19:32:21 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 26 Apr 2017 19:32:21 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 26 Apr 2017 19:32:23 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 26 Apr 2017 19:32:24 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:32:25 GMT
VOLUME [/var/lib/docker]
# Wed, 26 Apr 2017 19:32:26 GMT
EXPOSE 2375/tcp
# Wed, 26 Apr 2017 19:32:26 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 26 Apr 2017 19:32:27 GMT
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
	-	`sha256:6682bdad0dcc695161a6dbdcf7ef69732cc5c4767cf51229475ecf1ffaccd53b`  
		Last Modified: Wed, 26 Apr 2017 19:36:20 GMT  
		Size: 28.8 MB (28783116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c79472955c138117fc0bde3b7ac3ebbc66502ee090730451af57b7bffba6178`  
		Last Modified: Wed, 26 Apr 2017 19:36:14 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849f57b6552ee522ddc9a5b218c960796c0c7e407cca3d03716bb0790fe456bc`  
		Last Modified: Wed, 26 Apr 2017 19:38:19 GMT  
		Size: 2.2 MB (2166047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1fdabf99ae206603c7b2f6a586036be748ff0719504b9c6802cca38363b264`  
		Last Modified: Wed, 26 Apr 2017 19:38:19 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae5019ac7570c21682dea810172c59574ee46ce1c8df3912b26d9fd165dcd38`  
		Last Modified: Wed, 26 Apr 2017 19:38:18 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9789f8f82ffe648d47bd0825305de1f9571d48bdef4d30aa3ecb4adb07a50449`  
		Last Modified: Wed, 26 Apr 2017 19:38:19 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-dind`

```console
$ docker pull docker@sha256:afd6172b682c03329efb18392cf30b676d876a811099c471d47d4f6c8556dd32
```

-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35026233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:645ec5b53d85b68cdbc73091775bbe41f48f591c835f5bc466ead1fdaad19426`
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
# Wed, 26 Apr 2017 19:31:50 GMT
ENV DOCKER_SHA256_x86_64=4561742c2174c01ffd0679621b66d29f8a504240d79aa714f6c58348979d02c6
# Wed, 26 Apr 2017 19:31:51 GMT
ENV DOCKER_SHA256_armel=55da582c59e2f2ccebf74c661290ecdc4d503b53acff1644a85f1c1d60dfd661
# Wed, 26 Apr 2017 19:31:57 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:31:58 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:31:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:31:59 GMT
CMD ["sh"]
# Wed, 26 Apr 2017 19:32:19 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 26 Apr 2017 19:32:21 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 26 Apr 2017 19:32:21 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 26 Apr 2017 19:32:23 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 26 Apr 2017 19:32:24 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:32:25 GMT
VOLUME [/var/lib/docker]
# Wed, 26 Apr 2017 19:32:26 GMT
EXPOSE 2375/tcp
# Wed, 26 Apr 2017 19:32:26 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 26 Apr 2017 19:32:27 GMT
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
	-	`sha256:6682bdad0dcc695161a6dbdcf7ef69732cc5c4767cf51229475ecf1ffaccd53b`  
		Last Modified: Wed, 26 Apr 2017 19:36:20 GMT  
		Size: 28.8 MB (28783116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c79472955c138117fc0bde3b7ac3ebbc66502ee090730451af57b7bffba6178`  
		Last Modified: Wed, 26 Apr 2017 19:36:14 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849f57b6552ee522ddc9a5b218c960796c0c7e407cca3d03716bb0790fe456bc`  
		Last Modified: Wed, 26 Apr 2017 19:38:19 GMT  
		Size: 2.2 MB (2166047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1fdabf99ae206603c7b2f6a586036be748ff0719504b9c6802cca38363b264`  
		Last Modified: Wed, 26 Apr 2017 19:38:19 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae5019ac7570c21682dea810172c59574ee46ce1c8df3912b26d9fd165dcd38`  
		Last Modified: Wed, 26 Apr 2017 19:38:18 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9789f8f82ffe648d47bd0825305de1f9571d48bdef4d30aa3ecb4adb07a50449`  
		Last Modified: Wed, 26 Apr 2017 19:38:19 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-ce-rc1-git`

```console
$ docker pull docker@sha256:9bc1821deeca5250f86d2d982b2e2583020bd6cc3ca530f093435416e8975c06
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce-rc1-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43578977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c189ec00a0a7a74077949bcc73eee6655b681db8900e0c1cf2f0ed2ccdd93231`
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
# Wed, 26 Apr 2017 19:31:50 GMT
ENV DOCKER_SHA256_x86_64=4561742c2174c01ffd0679621b66d29f8a504240d79aa714f6c58348979d02c6
# Wed, 26 Apr 2017 19:31:51 GMT
ENV DOCKER_SHA256_armel=55da582c59e2f2ccebf74c661290ecdc4d503b53acff1644a85f1c1d60dfd661
# Wed, 26 Apr 2017 19:31:57 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:31:58 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:31:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:31:59 GMT
CMD ["sh"]
# Wed, 26 Apr 2017 19:32:56 GMT
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
	-	`sha256:6682bdad0dcc695161a6dbdcf7ef69732cc5c4767cf51229475ecf1ffaccd53b`  
		Last Modified: Wed, 26 Apr 2017 19:36:20 GMT  
		Size: 28.8 MB (28783116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c79472955c138117fc0bde3b7ac3ebbc66502ee090730451af57b7bffba6178`  
		Last Modified: Wed, 26 Apr 2017 19:36:14 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463165b8bdaaf7ed3adde0557ce74d3a2365726260b86b00fd704a1129e3142c`  
		Last Modified: Wed, 26 Apr 2017 19:40:12 GMT  
		Size: 10.7 MB (10722390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-ce-git`

```console
$ docker pull docker@sha256:9bc1821deeca5250f86d2d982b2e2583020bd6cc3ca530f093435416e8975c06
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43578977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c189ec00a0a7a74077949bcc73eee6655b681db8900e0c1cf2f0ed2ccdd93231`
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
# Wed, 26 Apr 2017 19:31:50 GMT
ENV DOCKER_SHA256_x86_64=4561742c2174c01ffd0679621b66d29f8a504240d79aa714f6c58348979d02c6
# Wed, 26 Apr 2017 19:31:51 GMT
ENV DOCKER_SHA256_armel=55da582c59e2f2ccebf74c661290ecdc4d503b53acff1644a85f1c1d60dfd661
# Wed, 26 Apr 2017 19:31:57 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:31:58 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:31:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:31:59 GMT
CMD ["sh"]
# Wed, 26 Apr 2017 19:32:56 GMT
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
	-	`sha256:6682bdad0dcc695161a6dbdcf7ef69732cc5c4767cf51229475ecf1ffaccd53b`  
		Last Modified: Wed, 26 Apr 2017 19:36:20 GMT  
		Size: 28.8 MB (28783116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c79472955c138117fc0bde3b7ac3ebbc66502ee090730451af57b7bffba6178`  
		Last Modified: Wed, 26 Apr 2017 19:36:14 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463165b8bdaaf7ed3adde0557ce74d3a2365726260b86b00fd704a1129e3142c`  
		Last Modified: Wed, 26 Apr 2017 19:40:12 GMT  
		Size: 10.7 MB (10722390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-git`

```console
$ docker pull docker@sha256:9bc1821deeca5250f86d2d982b2e2583020bd6cc3ca530f093435416e8975c06
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43578977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c189ec00a0a7a74077949bcc73eee6655b681db8900e0c1cf2f0ed2ccdd93231`
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
# Wed, 26 Apr 2017 19:31:50 GMT
ENV DOCKER_SHA256_x86_64=4561742c2174c01ffd0679621b66d29f8a504240d79aa714f6c58348979d02c6
# Wed, 26 Apr 2017 19:31:51 GMT
ENV DOCKER_SHA256_armel=55da582c59e2f2ccebf74c661290ecdc4d503b53acff1644a85f1c1d60dfd661
# Wed, 26 Apr 2017 19:31:57 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:31:58 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:31:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:31:59 GMT
CMD ["sh"]
# Wed, 26 Apr 2017 19:32:56 GMT
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
	-	`sha256:6682bdad0dcc695161a6dbdcf7ef69732cc5c4767cf51229475ecf1ffaccd53b`  
		Last Modified: Wed, 26 Apr 2017 19:36:20 GMT  
		Size: 28.8 MB (28783116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c79472955c138117fc0bde3b7ac3ebbc66502ee090730451af57b7bffba6178`  
		Last Modified: Wed, 26 Apr 2017 19:36:14 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463165b8bdaaf7ed3adde0557ce74d3a2365726260b86b00fd704a1129e3142c`  
		Last Modified: Wed, 26 Apr 2017 19:40:12 GMT  
		Size: 10.7 MB (10722390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05-rc-git`

```console
$ docker pull docker@sha256:9bc1821deeca5250f86d2d982b2e2583020bd6cc3ca530f093435416e8975c06
```

-	Platforms:
	-	linux; amd64

### `docker:17.05-rc-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43578977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c189ec00a0a7a74077949bcc73eee6655b681db8900e0c1cf2f0ed2ccdd93231`
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
# Wed, 26 Apr 2017 19:31:50 GMT
ENV DOCKER_SHA256_x86_64=4561742c2174c01ffd0679621b66d29f8a504240d79aa714f6c58348979d02c6
# Wed, 26 Apr 2017 19:31:51 GMT
ENV DOCKER_SHA256_armel=55da582c59e2f2ccebf74c661290ecdc4d503b53acff1644a85f1c1d60dfd661
# Wed, 26 Apr 2017 19:31:57 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:31:58 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:31:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:31:59 GMT
CMD ["sh"]
# Wed, 26 Apr 2017 19:32:56 GMT
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
	-	`sha256:6682bdad0dcc695161a6dbdcf7ef69732cc5c4767cf51229475ecf1ffaccd53b`  
		Last Modified: Wed, 26 Apr 2017 19:36:20 GMT  
		Size: 28.8 MB (28783116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c79472955c138117fc0bde3b7ac3ebbc66502ee090730451af57b7bffba6178`  
		Last Modified: Wed, 26 Apr 2017 19:36:14 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463165b8bdaaf7ed3adde0557ce74d3a2365726260b86b00fd704a1129e3142c`  
		Last Modified: Wed, 26 Apr 2017 19:40:12 GMT  
		Size: 10.7 MB (10722390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-git`

```console
$ docker pull docker@sha256:9bc1821deeca5250f86d2d982b2e2583020bd6cc3ca530f093435416e8975c06
```

-	Platforms:
	-	linux; amd64

### `docker:rc-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43578977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c189ec00a0a7a74077949bcc73eee6655b681db8900e0c1cf2f0ed2ccdd93231`
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
# Wed, 26 Apr 2017 19:31:50 GMT
ENV DOCKER_SHA256_x86_64=4561742c2174c01ffd0679621b66d29f8a504240d79aa714f6c58348979d02c6
# Wed, 26 Apr 2017 19:31:51 GMT
ENV DOCKER_SHA256_armel=55da582c59e2f2ccebf74c661290ecdc4d503b53acff1644a85f1c1d60dfd661
# Wed, 26 Apr 2017 19:31:57 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:31:58 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:31:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:31:59 GMT
CMD ["sh"]
# Wed, 26 Apr 2017 19:32:56 GMT
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
	-	`sha256:6682bdad0dcc695161a6dbdcf7ef69732cc5c4767cf51229475ecf1ffaccd53b`  
		Last Modified: Wed, 26 Apr 2017 19:36:20 GMT  
		Size: 28.8 MB (28783116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c79472955c138117fc0bde3b7ac3ebbc66502ee090730451af57b7bffba6178`  
		Last Modified: Wed, 26 Apr 2017 19:36:14 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463165b8bdaaf7ed3adde0557ce74d3a2365726260b86b00fd704a1129e3142c`  
		Last Modified: Wed, 26 Apr 2017 19:40:12 GMT  
		Size: 10.7 MB (10722390 bytes)  
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
